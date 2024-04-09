; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131858 () Bool)

(assert start!131858)

(declare-fun b!1543262 () Bool)

(declare-fun e!858876 () Bool)

(declare-fun e!858877 () Bool)

(declare-fun mapRes!58426 () Bool)

(assert (=> b!1543262 (= e!858876 (and e!858877 mapRes!58426))))

(declare-fun condMapEmpty!58426 () Bool)

(declare-datatypes ((V!58863 0))(
  ( (V!58864 (val!18985 Int)) )
))
(declare-datatypes ((ValueCell!17997 0))(
  ( (ValueCellFull!17997 (v!21783 V!58863)) (EmptyCell!17997) )
))
(declare-datatypes ((array!102809 0))(
  ( (array!102810 (arr!49602 (Array (_ BitVec 32) ValueCell!17997)) (size!50153 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102809)

(declare-fun mapDefault!58426 () ValueCell!17997)

(assert (=> b!1543262 (= condMapEmpty!58426 (= (arr!49602 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17997)) mapDefault!58426)))))

(declare-fun b!1543263 () Bool)

(declare-fun e!858875 () Bool)

(declare-fun tp_is_empty!37815 () Bool)

(assert (=> b!1543263 (= e!858875 tp_is_empty!37815)))

(declare-fun b!1543264 () Bool)

(assert (=> b!1543264 (= e!858877 tp_is_empty!37815)))

(declare-fun b!1543265 () Bool)

(declare-fun res!1058980 () Bool)

(declare-fun e!858873 () Bool)

(assert (=> b!1543265 (=> (not res!1058980) (not e!858873))))

(declare-datatypes ((array!102811 0))(
  ( (array!102812 (arr!49603 (Array (_ BitVec 32) (_ BitVec 64))) (size!50154 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102811)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102811 (_ BitVec 32)) Bool)

(assert (=> b!1543265 (= res!1058980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058979 () Bool)

(assert (=> start!131858 (=> (not res!1058979) (not e!858873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131858 (= res!1058979 (validMask!0 mask!926))))

(assert (=> start!131858 e!858873))

(assert (=> start!131858 true))

(declare-fun array_inv!38515 (array!102809) Bool)

(assert (=> start!131858 (and (array_inv!38515 _values!470) e!858876)))

(declare-fun array_inv!38516 (array!102811) Bool)

(assert (=> start!131858 (array_inv!38516 _keys!618)))

(declare-fun mapIsEmpty!58426 () Bool)

(assert (=> mapIsEmpty!58426 mapRes!58426))

(declare-fun b!1543266 () Bool)

(declare-fun res!1058981 () Bool)

(assert (=> b!1543266 (=> (not res!1058981) (not e!858873))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543266 (= res!1058981 (and (= (size!50153 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50154 _keys!618) (size!50153 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58426 () Bool)

(declare-fun tp!110954 () Bool)

(assert (=> mapNonEmpty!58426 (= mapRes!58426 (and tp!110954 e!858875))))

(declare-fun mapKey!58426 () (_ BitVec 32))

(declare-fun mapValue!58426 () ValueCell!17997)

(declare-fun mapRest!58426 () (Array (_ BitVec 32) ValueCell!17997))

(assert (=> mapNonEmpty!58426 (= (arr!49602 _values!470) (store mapRest!58426 mapKey!58426 mapValue!58426))))

(declare-fun b!1543267 () Bool)

(assert (=> b!1543267 (= e!858873 false)))

(declare-fun lt!665897 () Bool)

(declare-datatypes ((List!36064 0))(
  ( (Nil!36061) (Cons!36060 (h!37506 (_ BitVec 64)) (t!50765 List!36064)) )
))
(declare-fun arrayNoDuplicates!0 (array!102811 (_ BitVec 32) List!36064) Bool)

(assert (=> b!1543267 (= lt!665897 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36061))))

(assert (= (and start!131858 res!1058979) b!1543266))

(assert (= (and b!1543266 res!1058981) b!1543265))

(assert (= (and b!1543265 res!1058980) b!1543267))

(assert (= (and b!1543262 condMapEmpty!58426) mapIsEmpty!58426))

(assert (= (and b!1543262 (not condMapEmpty!58426)) mapNonEmpty!58426))

(get-info :version)

(assert (= (and mapNonEmpty!58426 ((_ is ValueCellFull!17997) mapValue!58426)) b!1543263))

(assert (= (and b!1543262 ((_ is ValueCellFull!17997) mapDefault!58426)) b!1543264))

(assert (= start!131858 b!1543262))

(declare-fun m!1424635 () Bool)

(assert (=> b!1543265 m!1424635))

(declare-fun m!1424637 () Bool)

(assert (=> start!131858 m!1424637))

(declare-fun m!1424639 () Bool)

(assert (=> start!131858 m!1424639))

(declare-fun m!1424641 () Bool)

(assert (=> start!131858 m!1424641))

(declare-fun m!1424643 () Bool)

(assert (=> mapNonEmpty!58426 m!1424643))

(declare-fun m!1424645 () Bool)

(assert (=> b!1543267 m!1424645))

(check-sat (not b!1543267) (not b!1543265) tp_is_empty!37815 (not start!131858) (not mapNonEmpty!58426))
(check-sat)
