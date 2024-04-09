; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4020 () Bool)

(assert start!4020)

(declare-fun b_free!927 () Bool)

(declare-fun b_next!927 () Bool)

(assert (=> start!4020 (= b_free!927 (not b_next!927))))

(declare-fun tp!4200 () Bool)

(declare-fun b_and!1739 () Bool)

(assert (=> start!4020 (= tp!4200 b_and!1739)))

(declare-fun res!17581 () Bool)

(declare-fun e!18958 () Bool)

(assert (=> start!4020 (=> (not res!17581) (not e!18958))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4020 (= res!17581 (validMask!0 mask!2294))))

(assert (=> start!4020 e!18958))

(assert (=> start!4020 true))

(assert (=> start!4020 tp!4200))

(declare-datatypes ((V!1533 0))(
  ( (V!1534 (val!667 Int)) )
))
(declare-datatypes ((ValueCell!441 0))(
  ( (ValueCellFull!441 (v!1756 V!1533)) (EmptyCell!441) )
))
(declare-datatypes ((array!1783 0))(
  ( (array!1784 (arr!845 (Array (_ BitVec 32) ValueCell!441)) (size!946 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1783)

(declare-fun e!18960 () Bool)

(declare-fun array_inv!573 (array!1783) Bool)

(assert (=> start!4020 (and (array_inv!573 _values!1501) e!18960)))

(declare-datatypes ((array!1785 0))(
  ( (array!1786 (arr!846 (Array (_ BitVec 32) (_ BitVec 64))) (size!947 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1785)

(declare-fun array_inv!574 (array!1785) Bool)

(assert (=> start!4020 (array_inv!574 _keys!1833)))

(declare-fun tp_is_empty!1281 () Bool)

(assert (=> start!4020 tp_is_empty!1281))

(declare-fun b!29360 () Bool)

(declare-fun e!18959 () Bool)

(assert (=> b!29360 (= e!18959 tp_is_empty!1281)))

(declare-fun b!29361 () Bool)

(declare-fun e!18957 () Bool)

(assert (=> b!29361 (= e!18958 e!18957)))

(declare-fun res!17579 () Bool)

(assert (=> b!29361 (=> (not res!17579) (not e!18957))))

(declare-datatypes ((tuple2!1094 0))(
  ( (tuple2!1095 (_1!557 (_ BitVec 64)) (_2!557 V!1533)) )
))
(declare-datatypes ((List!702 0))(
  ( (Nil!699) (Cons!698 (h!1265 tuple2!1094) (t!3397 List!702)) )
))
(declare-datatypes ((ListLongMap!675 0))(
  ( (ListLongMap!676 (toList!353 List!702)) )
))
(declare-fun lt!11219 () ListLongMap!675)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!290 (ListLongMap!675 (_ BitVec 64)) Bool)

(assert (=> b!29361 (= res!17579 (not (contains!290 lt!11219 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1533)

(declare-fun minValue!1443 () V!1533)

(declare-fun getCurrentListMap!180 (array!1785 array!1783 (_ BitVec 32) (_ BitVec 32) V!1533 V!1533 (_ BitVec 32) Int) ListLongMap!675)

(assert (=> b!29361 (= lt!11219 (getCurrentListMap!180 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29362 () Bool)

(assert (=> b!29362 (= e!18957 (not true))))

(declare-fun lt!11216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1785 (_ BitVec 32)) Bool)

(assert (=> b!29362 (arrayForallSeekEntryOrOpenFound!0 lt!11216 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!681 0))(
  ( (Unit!682) )
))
(declare-fun lt!11218 () Unit!681)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!1785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!681)

(assert (=> b!29362 (= lt!11218 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!11216))))

(declare-datatypes ((SeekEntryResult!90 0))(
  ( (MissingZero!90 (index!2482 (_ BitVec 32))) (Found!90 (index!2483 (_ BitVec 32))) (Intermediate!90 (undefined!902 Bool) (index!2484 (_ BitVec 32)) (x!6416 (_ BitVec 32))) (Undefined!90) (MissingVacant!90 (index!2485 (_ BitVec 32))) )
))
(declare-fun lt!11217 () SeekEntryResult!90)

(get-info :version)

(assert (=> b!29362 (and ((_ is Found!90) lt!11217) (= (index!2483 lt!11217) lt!11216))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1785 (_ BitVec 32)) SeekEntryResult!90)

(assert (=> b!29362 (= lt!11217 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!11220 () Unit!681)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1785 (_ BitVec 32)) Unit!681)

(assert (=> b!29362 (= lt!11220 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11216 _keys!1833 mask!2294))))

(assert (=> b!29362 (contains!290 lt!11219 (select (arr!846 _keys!1833) lt!11216))))

(declare-fun lt!11215 () Unit!681)

(declare-fun lemmaValidKeyInArrayIsInListMap!32 (array!1785 array!1783 (_ BitVec 32) (_ BitVec 32) V!1533 V!1533 (_ BitVec 32) Int) Unit!681)

(assert (=> b!29362 (= lt!11215 (lemmaValidKeyInArrayIsInListMap!32 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11216 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1785 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29362 (= lt!11216 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1450 () Bool)

(declare-fun mapRes!1450 () Bool)

(declare-fun tp!4201 () Bool)

(assert (=> mapNonEmpty!1450 (= mapRes!1450 (and tp!4201 e!18959))))

(declare-fun mapRest!1450 () (Array (_ BitVec 32) ValueCell!441))

(declare-fun mapValue!1450 () ValueCell!441)

(declare-fun mapKey!1450 () (_ BitVec 32))

(assert (=> mapNonEmpty!1450 (= (arr!845 _values!1501) (store mapRest!1450 mapKey!1450 mapValue!1450))))

(declare-fun b!29363 () Bool)

(declare-fun e!18956 () Bool)

(assert (=> b!29363 (= e!18956 tp_is_empty!1281)))

(declare-fun b!29364 () Bool)

(declare-fun res!17584 () Bool)

(assert (=> b!29364 (=> (not res!17584) (not e!18958))))

(assert (=> b!29364 (= res!17584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29365 () Bool)

(declare-fun res!17578 () Bool)

(assert (=> b!29365 (=> (not res!17578) (not e!18957))))

(declare-fun arrayContainsKey!0 (array!1785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29365 (= res!17578 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29366 () Bool)

(declare-fun res!17582 () Bool)

(assert (=> b!29366 (=> (not res!17582) (not e!18958))))

(declare-datatypes ((List!703 0))(
  ( (Nil!700) (Cons!699 (h!1266 (_ BitVec 64)) (t!3398 List!703)) )
))
(declare-fun arrayNoDuplicates!0 (array!1785 (_ BitVec 32) List!703) Bool)

(assert (=> b!29366 (= res!17582 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!700))))

(declare-fun mapIsEmpty!1450 () Bool)

(assert (=> mapIsEmpty!1450 mapRes!1450))

(declare-fun b!29367 () Bool)

(declare-fun res!17580 () Bool)

(assert (=> b!29367 (=> (not res!17580) (not e!18958))))

(assert (=> b!29367 (= res!17580 (and (= (size!946 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!947 _keys!1833) (size!946 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29368 () Bool)

(declare-fun res!17583 () Bool)

(assert (=> b!29368 (=> (not res!17583) (not e!18958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29368 (= res!17583 (validKeyInArray!0 k0!1304))))

(declare-fun b!29369 () Bool)

(assert (=> b!29369 (= e!18960 (and e!18956 mapRes!1450))))

(declare-fun condMapEmpty!1450 () Bool)

(declare-fun mapDefault!1450 () ValueCell!441)

(assert (=> b!29369 (= condMapEmpty!1450 (= (arr!845 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!441)) mapDefault!1450)))))

(assert (= (and start!4020 res!17581) b!29367))

(assert (= (and b!29367 res!17580) b!29364))

(assert (= (and b!29364 res!17584) b!29366))

(assert (= (and b!29366 res!17582) b!29368))

(assert (= (and b!29368 res!17583) b!29361))

(assert (= (and b!29361 res!17579) b!29365))

(assert (= (and b!29365 res!17578) b!29362))

(assert (= (and b!29369 condMapEmpty!1450) mapIsEmpty!1450))

(assert (= (and b!29369 (not condMapEmpty!1450)) mapNonEmpty!1450))

(assert (= (and mapNonEmpty!1450 ((_ is ValueCellFull!441) mapValue!1450)) b!29360))

(assert (= (and b!29369 ((_ is ValueCellFull!441) mapDefault!1450)) b!29363))

(assert (= start!4020 b!29369))

(declare-fun m!23565 () Bool)

(assert (=> b!29364 m!23565))

(declare-fun m!23567 () Bool)

(assert (=> b!29366 m!23567))

(declare-fun m!23569 () Bool)

(assert (=> b!29368 m!23569))

(declare-fun m!23571 () Bool)

(assert (=> b!29361 m!23571))

(declare-fun m!23573 () Bool)

(assert (=> b!29361 m!23573))

(declare-fun m!23575 () Bool)

(assert (=> b!29362 m!23575))

(declare-fun m!23577 () Bool)

(assert (=> b!29362 m!23577))

(declare-fun m!23579 () Bool)

(assert (=> b!29362 m!23579))

(declare-fun m!23581 () Bool)

(assert (=> b!29362 m!23581))

(assert (=> b!29362 m!23577))

(declare-fun m!23583 () Bool)

(assert (=> b!29362 m!23583))

(declare-fun m!23585 () Bool)

(assert (=> b!29362 m!23585))

(declare-fun m!23587 () Bool)

(assert (=> b!29362 m!23587))

(declare-fun m!23589 () Bool)

(assert (=> b!29362 m!23589))

(declare-fun m!23591 () Bool)

(assert (=> mapNonEmpty!1450 m!23591))

(declare-fun m!23593 () Bool)

(assert (=> b!29365 m!23593))

(declare-fun m!23595 () Bool)

(assert (=> start!4020 m!23595))

(declare-fun m!23597 () Bool)

(assert (=> start!4020 m!23597))

(declare-fun m!23599 () Bool)

(assert (=> start!4020 m!23599))

(check-sat (not b!29368) (not b!29366) b_and!1739 (not mapNonEmpty!1450) (not b_next!927) (not b!29361) (not b!29362) (not b!29364) (not start!4020) tp_is_empty!1281 (not b!29365))
(check-sat b_and!1739 (not b_next!927))
