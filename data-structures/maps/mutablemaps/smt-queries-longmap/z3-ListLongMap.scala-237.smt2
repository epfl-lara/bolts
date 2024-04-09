; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4104 () Bool)

(assert start!4104)

(declare-fun b_free!1011 () Bool)

(declare-fun b_next!1011 () Bool)

(assert (=> start!4104 (= b_free!1011 (not b_next!1011))))

(declare-fun tp!4453 () Bool)

(declare-fun b_and!1823 () Bool)

(assert (=> start!4104 (= tp!4453 b_and!1823)))

(declare-fun b!30584 () Bool)

(declare-fun res!18426 () Bool)

(declare-fun e!19610 () Bool)

(assert (=> b!30584 (=> (not res!18426) (not e!19610))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30584 (= res!18426 (validKeyInArray!0 k0!1304))))

(declare-fun b!30585 () Bool)

(declare-fun res!18427 () Bool)

(assert (=> b!30585 (=> (not res!18427) (not e!19610))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1645 0))(
  ( (V!1646 (val!709 Int)) )
))
(declare-datatypes ((ValueCell!483 0))(
  ( (ValueCellFull!483 (v!1798 V!1645)) (EmptyCell!483) )
))
(declare-datatypes ((array!1945 0))(
  ( (array!1946 (arr!926 (Array (_ BitVec 32) ValueCell!483)) (size!1027 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1945)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1947 0))(
  ( (array!1948 (arr!927 (Array (_ BitVec 32) (_ BitVec 64))) (size!1028 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1947)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1645)

(declare-fun minValue!1443 () V!1645)

(declare-datatypes ((tuple2!1156 0))(
  ( (tuple2!1157 (_1!588 (_ BitVec 64)) (_2!588 V!1645)) )
))
(declare-datatypes ((List!759 0))(
  ( (Nil!756) (Cons!755 (h!1322 tuple2!1156) (t!3454 List!759)) )
))
(declare-datatypes ((ListLongMap!737 0))(
  ( (ListLongMap!738 (toList!384 List!759)) )
))
(declare-fun contains!321 (ListLongMap!737 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!211 (array!1947 array!1945 (_ BitVec 32) (_ BitVec 32) V!1645 V!1645 (_ BitVec 32) Int) ListLongMap!737)

(assert (=> b!30585 (= res!18427 (not (contains!321 (getCurrentListMap!211 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!30587 () Bool)

(declare-fun e!19612 () Bool)

(declare-fun e!19611 () Bool)

(declare-fun mapRes!1576 () Bool)

(assert (=> b!30587 (= e!19612 (and e!19611 mapRes!1576))))

(declare-fun condMapEmpty!1576 () Bool)

(declare-fun mapDefault!1576 () ValueCell!483)

(assert (=> b!30587 (= condMapEmpty!1576 (= (arr!926 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!483)) mapDefault!1576)))))

(declare-fun mapNonEmpty!1576 () Bool)

(declare-fun tp!4452 () Bool)

(declare-fun e!19609 () Bool)

(assert (=> mapNonEmpty!1576 (= mapRes!1576 (and tp!4452 e!19609))))

(declare-fun mapValue!1576 () ValueCell!483)

(declare-fun mapKey!1576 () (_ BitVec 32))

(declare-fun mapRest!1576 () (Array (_ BitVec 32) ValueCell!483))

(assert (=> mapNonEmpty!1576 (= (arr!926 _values!1501) (store mapRest!1576 mapKey!1576 mapValue!1576))))

(declare-fun b!30588 () Bool)

(declare-fun tp_is_empty!1365 () Bool)

(assert (=> b!30588 (= e!19611 tp_is_empty!1365)))

(declare-fun b!30589 () Bool)

(declare-fun res!18425 () Bool)

(assert (=> b!30589 (=> (not res!18425) (not e!19610))))

(assert (=> b!30589 (= res!18425 (and (= (size!1027 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1028 _keys!1833) (size!1027 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30590 () Bool)

(assert (=> b!30590 (= e!19609 tp_is_empty!1365)))

(declare-fun b!30591 () Bool)

(declare-fun res!18430 () Bool)

(assert (=> b!30591 (=> (not res!18430) (not e!19610))))

(declare-fun arrayContainsKey!0 (array!1947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30591 (= res!18430 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30592 () Bool)

(declare-fun res!18424 () Bool)

(assert (=> b!30592 (=> (not res!18424) (not e!19610))))

(declare-datatypes ((List!760 0))(
  ( (Nil!757) (Cons!756 (h!1323 (_ BitVec 64)) (t!3455 List!760)) )
))
(declare-fun arrayNoDuplicates!0 (array!1947 (_ BitVec 32) List!760) Bool)

(assert (=> b!30592 (= res!18424 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!757))))

(declare-fun res!18429 () Bool)

(assert (=> start!4104 (=> (not res!18429) (not e!19610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4104 (= res!18429 (validMask!0 mask!2294))))

(assert (=> start!4104 e!19610))

(assert (=> start!4104 true))

(assert (=> start!4104 tp!4453))

(declare-fun array_inv!623 (array!1945) Bool)

(assert (=> start!4104 (and (array_inv!623 _values!1501) e!19612)))

(declare-fun array_inv!624 (array!1947) Bool)

(assert (=> start!4104 (array_inv!624 _keys!1833)))

(assert (=> start!4104 tp_is_empty!1365))

(declare-fun b!30586 () Bool)

(declare-fun res!18428 () Bool)

(assert (=> b!30586 (=> (not res!18428) (not e!19610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1947 (_ BitVec 32)) Bool)

(assert (=> b!30586 (= res!18428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30593 () Bool)

(assert (=> b!30593 (= e!19610 false)))

(declare-datatypes ((SeekEntryResult!112 0))(
  ( (MissingZero!112 (index!2570 (_ BitVec 32))) (Found!112 (index!2571 (_ BitVec 32))) (Intermediate!112 (undefined!924 Bool) (index!2572 (_ BitVec 32)) (x!6550 (_ BitVec 32))) (Undefined!112) (MissingVacant!112 (index!2573 (_ BitVec 32))) )
))
(declare-fun lt!11442 () SeekEntryResult!112)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1947 (_ BitVec 32)) SeekEntryResult!112)

(assert (=> b!30593 (= lt!11442 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1576 () Bool)

(assert (=> mapIsEmpty!1576 mapRes!1576))

(assert (= (and start!4104 res!18429) b!30589))

(assert (= (and b!30589 res!18425) b!30586))

(assert (= (and b!30586 res!18428) b!30592))

(assert (= (and b!30592 res!18424) b!30584))

(assert (= (and b!30584 res!18426) b!30585))

(assert (= (and b!30585 res!18427) b!30591))

(assert (= (and b!30591 res!18430) b!30593))

(assert (= (and b!30587 condMapEmpty!1576) mapIsEmpty!1576))

(assert (= (and b!30587 (not condMapEmpty!1576)) mapNonEmpty!1576))

(get-info :version)

(assert (= (and mapNonEmpty!1576 ((_ is ValueCellFull!483) mapValue!1576)) b!30590))

(assert (= (and b!30587 ((_ is ValueCellFull!483) mapDefault!1576)) b!30588))

(assert (= start!4104 b!30587))

(declare-fun m!24571 () Bool)

(assert (=> b!30584 m!24571))

(declare-fun m!24573 () Bool)

(assert (=> start!4104 m!24573))

(declare-fun m!24575 () Bool)

(assert (=> start!4104 m!24575))

(declare-fun m!24577 () Bool)

(assert (=> start!4104 m!24577))

(declare-fun m!24579 () Bool)

(assert (=> b!30586 m!24579))

(declare-fun m!24581 () Bool)

(assert (=> mapNonEmpty!1576 m!24581))

(declare-fun m!24583 () Bool)

(assert (=> b!30591 m!24583))

(declare-fun m!24585 () Bool)

(assert (=> b!30592 m!24585))

(declare-fun m!24587 () Bool)

(assert (=> b!30593 m!24587))

(declare-fun m!24589 () Bool)

(assert (=> b!30585 m!24589))

(assert (=> b!30585 m!24589))

(declare-fun m!24591 () Bool)

(assert (=> b!30585 m!24591))

(check-sat b_and!1823 (not b!30591) (not b_next!1011) (not b!30586) (not start!4104) (not b!30593) (not b!30592) tp_is_empty!1365 (not b!30585) (not b!30584) (not mapNonEmpty!1576))
(check-sat b_and!1823 (not b_next!1011))
