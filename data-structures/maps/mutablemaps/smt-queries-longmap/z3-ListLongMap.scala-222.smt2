; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4014 () Bool)

(assert start!4014)

(declare-fun b_free!921 () Bool)

(declare-fun b_next!921 () Bool)

(assert (=> start!4014 (= b_free!921 (not b_next!921))))

(declare-fun tp!4182 () Bool)

(declare-fun b_and!1733 () Bool)

(assert (=> start!4014 (= tp!4182 b_and!1733)))

(declare-fun mapIsEmpty!1441 () Bool)

(declare-fun mapRes!1441 () Bool)

(assert (=> mapIsEmpty!1441 mapRes!1441))

(declare-fun b!29270 () Bool)

(declare-fun res!17519 () Bool)

(declare-fun e!18907 () Bool)

(assert (=> b!29270 (=> (not res!17519) (not e!18907))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29270 (= res!17519 (validKeyInArray!0 k0!1304))))

(declare-fun b!29271 () Bool)

(declare-fun res!17520 () Bool)

(assert (=> b!29271 (=> (not res!17520) (not e!18907))))

(declare-datatypes ((array!1771 0))(
  ( (array!1772 (arr!839 (Array (_ BitVec 32) (_ BitVec 64))) (size!940 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1771)

(declare-datatypes ((List!697 0))(
  ( (Nil!694) (Cons!693 (h!1260 (_ BitVec 64)) (t!3392 List!697)) )
))
(declare-fun arrayNoDuplicates!0 (array!1771 (_ BitVec 32) List!697) Bool)

(assert (=> b!29271 (= res!17520 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!694))))

(declare-fun b!29272 () Bool)

(declare-fun res!17515 () Bool)

(assert (=> b!29272 (=> (not res!17515) (not e!18907))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1771 (_ BitVec 32)) Bool)

(assert (=> b!29272 (= res!17515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29273 () Bool)

(declare-fun e!18902 () Bool)

(declare-fun tp_is_empty!1275 () Bool)

(assert (=> b!29273 (= e!18902 tp_is_empty!1275)))

(declare-fun b!29274 () Bool)

(declare-fun res!17518 () Bool)

(declare-fun e!18903 () Bool)

(assert (=> b!29274 (=> (not res!17518) (not e!18903))))

(declare-fun arrayContainsKey!0 (array!1771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29274 (= res!17518 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!17516 () Bool)

(assert (=> start!4014 (=> (not res!17516) (not e!18907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4014 (= res!17516 (validMask!0 mask!2294))))

(assert (=> start!4014 e!18907))

(assert (=> start!4014 true))

(assert (=> start!4014 tp!4182))

(declare-datatypes ((V!1525 0))(
  ( (V!1526 (val!664 Int)) )
))
(declare-datatypes ((ValueCell!438 0))(
  ( (ValueCellFull!438 (v!1753 V!1525)) (EmptyCell!438) )
))
(declare-datatypes ((array!1773 0))(
  ( (array!1774 (arr!840 (Array (_ BitVec 32) ValueCell!438)) (size!941 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1773)

(declare-fun e!18905 () Bool)

(declare-fun array_inv!569 (array!1773) Bool)

(assert (=> start!4014 (and (array_inv!569 _values!1501) e!18905)))

(declare-fun array_inv!570 (array!1771) Bool)

(assert (=> start!4014 (array_inv!570 _keys!1833)))

(assert (=> start!4014 tp_is_empty!1275))

(declare-fun b!29275 () Bool)

(assert (=> b!29275 (= e!18903 (not true))))

(declare-datatypes ((SeekEntryResult!88 0))(
  ( (MissingZero!88 (index!2474 (_ BitVec 32))) (Found!88 (index!2475 (_ BitVec 32))) (Intermediate!88 (undefined!900 Bool) (index!2476 (_ BitVec 32)) (x!6406 (_ BitVec 32))) (Undefined!88) (MissingVacant!88 (index!2477 (_ BitVec 32))) )
))
(declare-fun lt!11168 () SeekEntryResult!88)

(declare-fun lt!11167 () (_ BitVec 32))

(get-info :version)

(assert (=> b!29275 (and ((_ is Found!88) lt!11168) (= (index!2475 lt!11168) lt!11167))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1771 (_ BitVec 32)) SeekEntryResult!88)

(assert (=> b!29275 (= lt!11168 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!677 0))(
  ( (Unit!678) )
))
(declare-fun lt!11166 () Unit!677)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1771 (_ BitVec 32)) Unit!677)

(assert (=> b!29275 (= lt!11166 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11167 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1088 0))(
  ( (tuple2!1089 (_1!554 (_ BitVec 64)) (_2!554 V!1525)) )
))
(declare-datatypes ((List!698 0))(
  ( (Nil!695) (Cons!694 (h!1261 tuple2!1088) (t!3393 List!698)) )
))
(declare-datatypes ((ListLongMap!669 0))(
  ( (ListLongMap!670 (toList!350 List!698)) )
))
(declare-fun lt!11165 () ListLongMap!669)

(declare-fun contains!287 (ListLongMap!669 (_ BitVec 64)) Bool)

(assert (=> b!29275 (contains!287 lt!11165 (select (arr!839 _keys!1833) lt!11167))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11169 () Unit!677)

(declare-fun zeroValue!1443 () V!1525)

(declare-fun minValue!1443 () V!1525)

(declare-fun lemmaValidKeyInArrayIsInListMap!30 (array!1771 array!1773 (_ BitVec 32) (_ BitVec 32) V!1525 V!1525 (_ BitVec 32) Int) Unit!677)

(assert (=> b!29275 (= lt!11169 (lemmaValidKeyInArrayIsInListMap!30 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11167 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1771 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29275 (= lt!11167 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29276 () Bool)

(declare-fun e!18906 () Bool)

(assert (=> b!29276 (= e!18905 (and e!18906 mapRes!1441))))

(declare-fun condMapEmpty!1441 () Bool)

(declare-fun mapDefault!1441 () ValueCell!438)

(assert (=> b!29276 (= condMapEmpty!1441 (= (arr!840 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!438)) mapDefault!1441)))))

(declare-fun b!29277 () Bool)

(declare-fun res!17517 () Bool)

(assert (=> b!29277 (=> (not res!17517) (not e!18907))))

(assert (=> b!29277 (= res!17517 (and (= (size!941 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!940 _keys!1833) (size!941 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1441 () Bool)

(declare-fun tp!4183 () Bool)

(assert (=> mapNonEmpty!1441 (= mapRes!1441 (and tp!4183 e!18902))))

(declare-fun mapRest!1441 () (Array (_ BitVec 32) ValueCell!438))

(declare-fun mapValue!1441 () ValueCell!438)

(declare-fun mapKey!1441 () (_ BitVec 32))

(assert (=> mapNonEmpty!1441 (= (arr!840 _values!1501) (store mapRest!1441 mapKey!1441 mapValue!1441))))

(declare-fun b!29278 () Bool)

(assert (=> b!29278 (= e!18906 tp_is_empty!1275)))

(declare-fun b!29279 () Bool)

(assert (=> b!29279 (= e!18907 e!18903)))

(declare-fun res!17521 () Bool)

(assert (=> b!29279 (=> (not res!17521) (not e!18903))))

(assert (=> b!29279 (= res!17521 (not (contains!287 lt!11165 k0!1304)))))

(declare-fun getCurrentListMap!177 (array!1771 array!1773 (_ BitVec 32) (_ BitVec 32) V!1525 V!1525 (_ BitVec 32) Int) ListLongMap!669)

(assert (=> b!29279 (= lt!11165 (getCurrentListMap!177 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(assert (= (and start!4014 res!17516) b!29277))

(assert (= (and b!29277 res!17517) b!29272))

(assert (= (and b!29272 res!17515) b!29271))

(assert (= (and b!29271 res!17520) b!29270))

(assert (= (and b!29270 res!17519) b!29279))

(assert (= (and b!29279 res!17521) b!29274))

(assert (= (and b!29274 res!17518) b!29275))

(assert (= (and b!29276 condMapEmpty!1441) mapIsEmpty!1441))

(assert (= (and b!29276 (not condMapEmpty!1441)) mapNonEmpty!1441))

(assert (= (and mapNonEmpty!1441 ((_ is ValueCellFull!438) mapValue!1441)) b!29273))

(assert (= (and b!29276 ((_ is ValueCellFull!438) mapDefault!1441)) b!29278))

(assert (= start!4014 b!29276))

(declare-fun m!23465 () Bool)

(assert (=> b!29275 m!23465))

(declare-fun m!23467 () Bool)

(assert (=> b!29275 m!23467))

(assert (=> b!29275 m!23467))

(declare-fun m!23469 () Bool)

(assert (=> b!29275 m!23469))

(declare-fun m!23471 () Bool)

(assert (=> b!29275 m!23471))

(declare-fun m!23473 () Bool)

(assert (=> b!29275 m!23473))

(declare-fun m!23475 () Bool)

(assert (=> b!29275 m!23475))

(declare-fun m!23477 () Bool)

(assert (=> b!29279 m!23477))

(declare-fun m!23479 () Bool)

(assert (=> b!29279 m!23479))

(declare-fun m!23481 () Bool)

(assert (=> b!29271 m!23481))

(declare-fun m!23483 () Bool)

(assert (=> b!29270 m!23483))

(declare-fun m!23485 () Bool)

(assert (=> b!29272 m!23485))

(declare-fun m!23487 () Bool)

(assert (=> mapNonEmpty!1441 m!23487))

(declare-fun m!23489 () Bool)

(assert (=> start!4014 m!23489))

(declare-fun m!23491 () Bool)

(assert (=> start!4014 m!23491))

(declare-fun m!23493 () Bool)

(assert (=> start!4014 m!23493))

(declare-fun m!23495 () Bool)

(assert (=> b!29274 m!23495))

(check-sat (not b!29272) (not b!29275) (not b!29279) tp_is_empty!1275 (not b_next!921) (not b!29270) (not start!4014) (not b!29271) b_and!1733 (not mapNonEmpty!1441) (not b!29274))
(check-sat b_and!1733 (not b_next!921))
