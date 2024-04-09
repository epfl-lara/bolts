; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131768 () Bool)

(assert start!131768)

(declare-fun mapIsEmpty!58291 () Bool)

(declare-fun mapRes!58291 () Bool)

(assert (=> mapIsEmpty!58291 mapRes!58291))

(declare-fun mapNonEmpty!58291 () Bool)

(declare-fun tp!110819 () Bool)

(declare-fun e!858199 () Bool)

(assert (=> mapNonEmpty!58291 (= mapRes!58291 (and tp!110819 e!858199))))

(declare-datatypes ((V!58743 0))(
  ( (V!58744 (val!18940 Int)) )
))
(declare-datatypes ((ValueCell!17952 0))(
  ( (ValueCellFull!17952 (v!21738 V!58743)) (EmptyCell!17952) )
))
(declare-fun mapValue!58291 () ValueCell!17952)

(declare-fun mapKey!58291 () (_ BitVec 32))

(declare-datatypes ((array!102645 0))(
  ( (array!102646 (arr!49520 (Array (_ BitVec 32) ValueCell!17952)) (size!50071 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102645)

(declare-fun mapRest!58291 () (Array (_ BitVec 32) ValueCell!17952))

(assert (=> mapNonEmpty!58291 (= (arr!49520 _values!470) (store mapRest!58291 mapKey!58291 mapValue!58291))))

(declare-fun b!1542452 () Bool)

(declare-fun res!1058574 () Bool)

(declare-fun e!858201 () Bool)

(assert (=> b!1542452 (=> (not res!1058574) (not e!858201))))

(declare-datatypes ((array!102647 0))(
  ( (array!102648 (arr!49521 (Array (_ BitVec 32) (_ BitVec 64))) (size!50072 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102647)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1542452 (= res!1058574 (and (= (size!50071 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50072 _keys!618) (size!50071 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058576 () Bool)

(assert (=> start!131768 (=> (not res!1058576) (not e!858201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131768 (= res!1058576 (validMask!0 mask!926))))

(assert (=> start!131768 e!858201))

(assert (=> start!131768 true))

(declare-fun e!858198 () Bool)

(declare-fun array_inv!38453 (array!102645) Bool)

(assert (=> start!131768 (and (array_inv!38453 _values!470) e!858198)))

(declare-fun array_inv!38454 (array!102647) Bool)

(assert (=> start!131768 (array_inv!38454 _keys!618)))

(declare-fun b!1542453 () Bool)

(declare-fun e!858200 () Bool)

(assert (=> b!1542453 (= e!858198 (and e!858200 mapRes!58291))))

(declare-fun condMapEmpty!58291 () Bool)

(declare-fun mapDefault!58291 () ValueCell!17952)

(assert (=> b!1542453 (= condMapEmpty!58291 (= (arr!49520 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17952)) mapDefault!58291)))))

(declare-fun b!1542454 () Bool)

(declare-fun tp_is_empty!37725 () Bool)

(assert (=> b!1542454 (= e!858200 tp_is_empty!37725)))

(declare-fun b!1542455 () Bool)

(assert (=> b!1542455 (= e!858201 false)))

(declare-fun lt!665762 () Bool)

(declare-datatypes ((List!36034 0))(
  ( (Nil!36031) (Cons!36030 (h!37476 (_ BitVec 64)) (t!50735 List!36034)) )
))
(declare-fun arrayNoDuplicates!0 (array!102647 (_ BitVec 32) List!36034) Bool)

(assert (=> b!1542455 (= lt!665762 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36031))))

(declare-fun b!1542456 () Bool)

(declare-fun res!1058575 () Bool)

(assert (=> b!1542456 (=> (not res!1058575) (not e!858201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102647 (_ BitVec 32)) Bool)

(assert (=> b!1542456 (= res!1058575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542457 () Bool)

(assert (=> b!1542457 (= e!858199 tp_is_empty!37725)))

(assert (= (and start!131768 res!1058576) b!1542452))

(assert (= (and b!1542452 res!1058574) b!1542456))

(assert (= (and b!1542456 res!1058575) b!1542455))

(assert (= (and b!1542453 condMapEmpty!58291) mapIsEmpty!58291))

(assert (= (and b!1542453 (not condMapEmpty!58291)) mapNonEmpty!58291))

(get-info :version)

(assert (= (and mapNonEmpty!58291 ((_ is ValueCellFull!17952) mapValue!58291)) b!1542457))

(assert (= (and b!1542453 ((_ is ValueCellFull!17952) mapDefault!58291)) b!1542454))

(assert (= start!131768 b!1542453))

(declare-fun m!1424095 () Bool)

(assert (=> mapNonEmpty!58291 m!1424095))

(declare-fun m!1424097 () Bool)

(assert (=> start!131768 m!1424097))

(declare-fun m!1424099 () Bool)

(assert (=> start!131768 m!1424099))

(declare-fun m!1424101 () Bool)

(assert (=> start!131768 m!1424101))

(declare-fun m!1424103 () Bool)

(assert (=> b!1542455 m!1424103))

(declare-fun m!1424105 () Bool)

(assert (=> b!1542456 m!1424105))

(check-sat (not b!1542456) (not b!1542455) tp_is_empty!37725 (not mapNonEmpty!58291) (not start!131768))
(check-sat)
