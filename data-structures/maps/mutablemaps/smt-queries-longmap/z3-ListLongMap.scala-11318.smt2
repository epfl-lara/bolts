; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131846 () Bool)

(assert start!131846)

(declare-fun res!1058927 () Bool)

(declare-fun e!858786 () Bool)

(assert (=> start!131846 (=> (not res!1058927) (not e!858786))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131846 (= res!1058927 (validMask!0 mask!926))))

(assert (=> start!131846 e!858786))

(assert (=> start!131846 true))

(declare-datatypes ((V!58847 0))(
  ( (V!58848 (val!18979 Int)) )
))
(declare-datatypes ((ValueCell!17991 0))(
  ( (ValueCellFull!17991 (v!21777 V!58847)) (EmptyCell!17991) )
))
(declare-datatypes ((array!102787 0))(
  ( (array!102788 (arr!49591 (Array (_ BitVec 32) ValueCell!17991)) (size!50142 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102787)

(declare-fun e!858783 () Bool)

(declare-fun array_inv!38505 (array!102787) Bool)

(assert (=> start!131846 (and (array_inv!38505 _values!470) e!858783)))

(declare-datatypes ((array!102789 0))(
  ( (array!102790 (arr!49592 (Array (_ BitVec 32) (_ BitVec 64))) (size!50143 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102789)

(declare-fun array_inv!38506 (array!102789) Bool)

(assert (=> start!131846 (array_inv!38506 _keys!618)))

(declare-fun mapNonEmpty!58408 () Bool)

(declare-fun mapRes!58408 () Bool)

(declare-fun tp!110936 () Bool)

(declare-fun e!858785 () Bool)

(assert (=> mapNonEmpty!58408 (= mapRes!58408 (and tp!110936 e!858785))))

(declare-fun mapRest!58408 () (Array (_ BitVec 32) ValueCell!17991))

(declare-fun mapValue!58408 () ValueCell!17991)

(declare-fun mapKey!58408 () (_ BitVec 32))

(assert (=> mapNonEmpty!58408 (= (arr!49591 _values!470) (store mapRest!58408 mapKey!58408 mapValue!58408))))

(declare-fun b!1543154 () Bool)

(declare-fun e!858787 () Bool)

(assert (=> b!1543154 (= e!858783 (and e!858787 mapRes!58408))))

(declare-fun condMapEmpty!58408 () Bool)

(declare-fun mapDefault!58408 () ValueCell!17991)

(assert (=> b!1543154 (= condMapEmpty!58408 (= (arr!49591 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17991)) mapDefault!58408)))))

(declare-fun b!1543155 () Bool)

(declare-fun res!1058926 () Bool)

(assert (=> b!1543155 (=> (not res!1058926) (not e!858786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102789 (_ BitVec 32)) Bool)

(assert (=> b!1543155 (= res!1058926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543156 () Bool)

(declare-fun tp_is_empty!37803 () Bool)

(assert (=> b!1543156 (= e!858785 tp_is_empty!37803)))

(declare-fun b!1543157 () Bool)

(declare-fun res!1058925 () Bool)

(assert (=> b!1543157 (=> (not res!1058925) (not e!858786))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543157 (= res!1058925 (and (= (size!50142 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50143 _keys!618) (size!50142 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58408 () Bool)

(assert (=> mapIsEmpty!58408 mapRes!58408))

(declare-fun b!1543158 () Bool)

(assert (=> b!1543158 (= e!858787 tp_is_empty!37803)))

(declare-fun b!1543159 () Bool)

(assert (=> b!1543159 (= e!858786 false)))

(declare-fun lt!665879 () Bool)

(declare-datatypes ((List!36060 0))(
  ( (Nil!36057) (Cons!36056 (h!37502 (_ BitVec 64)) (t!50761 List!36060)) )
))
(declare-fun arrayNoDuplicates!0 (array!102789 (_ BitVec 32) List!36060) Bool)

(assert (=> b!1543159 (= lt!665879 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36057))))

(assert (= (and start!131846 res!1058927) b!1543157))

(assert (= (and b!1543157 res!1058925) b!1543155))

(assert (= (and b!1543155 res!1058926) b!1543159))

(assert (= (and b!1543154 condMapEmpty!58408) mapIsEmpty!58408))

(assert (= (and b!1543154 (not condMapEmpty!58408)) mapNonEmpty!58408))

(get-info :version)

(assert (= (and mapNonEmpty!58408 ((_ is ValueCellFull!17991) mapValue!58408)) b!1543156))

(assert (= (and b!1543154 ((_ is ValueCellFull!17991) mapDefault!58408)) b!1543158))

(assert (= start!131846 b!1543154))

(declare-fun m!1424563 () Bool)

(assert (=> start!131846 m!1424563))

(declare-fun m!1424565 () Bool)

(assert (=> start!131846 m!1424565))

(declare-fun m!1424567 () Bool)

(assert (=> start!131846 m!1424567))

(declare-fun m!1424569 () Bool)

(assert (=> mapNonEmpty!58408 m!1424569))

(declare-fun m!1424571 () Bool)

(assert (=> b!1543155 m!1424571))

(declare-fun m!1424573 () Bool)

(assert (=> b!1543159 m!1424573))

(check-sat (not start!131846) (not b!1543159) (not b!1543155) (not mapNonEmpty!58408) tp_is_empty!37803)
(check-sat)
