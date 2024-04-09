; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131834 () Bool)

(assert start!131834)

(declare-fun b!1543046 () Bool)

(declare-fun e!858697 () Bool)

(declare-fun tp_is_empty!37791 () Bool)

(assert (=> b!1543046 (= e!858697 tp_is_empty!37791)))

(declare-fun res!1058872 () Bool)

(declare-fun e!858693 () Bool)

(assert (=> start!131834 (=> (not res!1058872) (not e!858693))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131834 (= res!1058872 (validMask!0 mask!926))))

(assert (=> start!131834 e!858693))

(assert (=> start!131834 true))

(declare-datatypes ((V!58831 0))(
  ( (V!58832 (val!18973 Int)) )
))
(declare-datatypes ((ValueCell!17985 0))(
  ( (ValueCellFull!17985 (v!21771 V!58831)) (EmptyCell!17985) )
))
(declare-datatypes ((array!102767 0))(
  ( (array!102768 (arr!49581 (Array (_ BitVec 32) ValueCell!17985)) (size!50132 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102767)

(declare-fun e!858694 () Bool)

(declare-fun array_inv!38499 (array!102767) Bool)

(assert (=> start!131834 (and (array_inv!38499 _values!470) e!858694)))

(declare-datatypes ((array!102769 0))(
  ( (array!102770 (arr!49582 (Array (_ BitVec 32) (_ BitVec 64))) (size!50133 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102769)

(declare-fun array_inv!38500 (array!102769) Bool)

(assert (=> start!131834 (array_inv!38500 _keys!618)))

(declare-fun b!1543047 () Bool)

(declare-fun res!1058873 () Bool)

(assert (=> b!1543047 (=> (not res!1058873) (not e!858693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102769 (_ BitVec 32)) Bool)

(assert (=> b!1543047 (= res!1058873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543048 () Bool)

(declare-fun e!858696 () Bool)

(declare-fun mapRes!58390 () Bool)

(assert (=> b!1543048 (= e!858694 (and e!858696 mapRes!58390))))

(declare-fun condMapEmpty!58390 () Bool)

(declare-fun mapDefault!58390 () ValueCell!17985)

(assert (=> b!1543048 (= condMapEmpty!58390 (= (arr!49581 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17985)) mapDefault!58390)))))

(declare-fun b!1543049 () Bool)

(assert (=> b!1543049 (= e!858693 false)))

(declare-fun lt!665861 () Bool)

(declare-datatypes ((List!36058 0))(
  ( (Nil!36055) (Cons!36054 (h!37500 (_ BitVec 64)) (t!50759 List!36058)) )
))
(declare-fun arrayNoDuplicates!0 (array!102769 (_ BitVec 32) List!36058) Bool)

(assert (=> b!1543049 (= lt!665861 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36055))))

(declare-fun b!1543050 () Bool)

(assert (=> b!1543050 (= e!858696 tp_is_empty!37791)))

(declare-fun mapIsEmpty!58390 () Bool)

(assert (=> mapIsEmpty!58390 mapRes!58390))

(declare-fun mapNonEmpty!58390 () Bool)

(declare-fun tp!110918 () Bool)

(assert (=> mapNonEmpty!58390 (= mapRes!58390 (and tp!110918 e!858697))))

(declare-fun mapValue!58390 () ValueCell!17985)

(declare-fun mapKey!58390 () (_ BitVec 32))

(declare-fun mapRest!58390 () (Array (_ BitVec 32) ValueCell!17985))

(assert (=> mapNonEmpty!58390 (= (arr!49581 _values!470) (store mapRest!58390 mapKey!58390 mapValue!58390))))

(declare-fun b!1543051 () Bool)

(declare-fun res!1058871 () Bool)

(assert (=> b!1543051 (=> (not res!1058871) (not e!858693))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543051 (= res!1058871 (and (= (size!50132 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50133 _keys!618) (size!50132 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(assert (= (and start!131834 res!1058872) b!1543051))

(assert (= (and b!1543051 res!1058871) b!1543047))

(assert (= (and b!1543047 res!1058873) b!1543049))

(assert (= (and b!1543048 condMapEmpty!58390) mapIsEmpty!58390))

(assert (= (and b!1543048 (not condMapEmpty!58390)) mapNonEmpty!58390))

(get-info :version)

(assert (= (and mapNonEmpty!58390 ((_ is ValueCellFull!17985) mapValue!58390)) b!1543046))

(assert (= (and b!1543048 ((_ is ValueCellFull!17985) mapDefault!58390)) b!1543050))

(assert (= start!131834 b!1543048))

(declare-fun m!1424491 () Bool)

(assert (=> start!131834 m!1424491))

(declare-fun m!1424493 () Bool)

(assert (=> start!131834 m!1424493))

(declare-fun m!1424495 () Bool)

(assert (=> start!131834 m!1424495))

(declare-fun m!1424497 () Bool)

(assert (=> b!1543047 m!1424497))

(declare-fun m!1424499 () Bool)

(assert (=> b!1543049 m!1424499))

(declare-fun m!1424501 () Bool)

(assert (=> mapNonEmpty!58390 m!1424501))

(check-sat (not start!131834) (not b!1543047) tp_is_empty!37791 (not b!1543049) (not mapNonEmpty!58390))
(check-sat)
