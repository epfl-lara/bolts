; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1078 () Bool)

(assert start!1078)

(declare-fun b_free!381 () Bool)

(declare-fun b_next!381 () Bool)

(assert (=> start!1078 (= b_free!381 (not b_next!381))))

(declare-fun tp!1384 () Bool)

(declare-fun b_and!535 () Bool)

(assert (=> start!1078 (= tp!1384 b_and!535)))

(declare-fun mapIsEmpty!671 () Bool)

(declare-fun mapRes!671 () Bool)

(assert (=> mapIsEmpty!671 mapRes!671))

(declare-fun b!9554 () Bool)

(declare-fun res!8569 () Bool)

(declare-fun e!5467 () Bool)

(assert (=> b!9554 (=> (not res!8569) (not e!5467))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9554 (= res!8569 (validKeyInArray!0 k0!1278))))

(declare-fun b!9555 () Bool)

(declare-fun e!5471 () Bool)

(assert (=> b!9555 (= e!5467 (not e!5471))))

(declare-fun res!8573 () Bool)

(assert (=> b!9555 (=> res!8573 e!5471)))

(declare-datatypes ((array!843 0))(
  ( (array!844 (arr!406 (Array (_ BitVec 32) (_ BitVec 64))) (size!468 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!843)

(declare-fun arrayContainsKey!0 (array!843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9555 (= res!8573 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!5473 () Bool)

(assert (=> b!9555 e!5473))

(declare-fun c!762 () Bool)

(assert (=> b!9555 (= c!762 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!789 0))(
  ( (V!790 (val!235 Int)) )
))
(declare-datatypes ((ValueCell!213 0))(
  ( (ValueCellFull!213 (v!1330 V!789)) (EmptyCell!213) )
))
(declare-datatypes ((array!845 0))(
  ( (array!846 (arr!407 (Array (_ BitVec 32) ValueCell!213)) (size!469 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!845)

(declare-fun minValue!1434 () V!789)

(declare-datatypes ((Unit!197 0))(
  ( (Unit!198) )
))
(declare-fun lt!2163 () Unit!197)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!789)

(declare-fun lemmaKeyInListMapIsInArray!74 (array!843 array!845 (_ BitVec 32) (_ BitVec 32) V!789 V!789 (_ BitVec 64) Int) Unit!197)

(assert (=> b!9555 (= lt!2163 (lemmaKeyInListMapIsInArray!74 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!9556 () Bool)

(declare-fun res!8574 () Bool)

(assert (=> b!9556 (=> (not res!8574) (not e!5467))))

(declare-datatypes ((List!279 0))(
  ( (Nil!276) (Cons!275 (h!841 (_ BitVec 64)) (t!2422 List!279)) )
))
(declare-fun arrayNoDuplicates!0 (array!843 (_ BitVec 32) List!279) Bool)

(assert (=> b!9556 (= res!8574 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!276))))

(declare-fun b!9557 () Bool)

(declare-fun res!8568 () Bool)

(assert (=> b!9557 (=> (not res!8568) (not e!5467))))

(assert (=> b!9557 (= res!8568 (and (= (size!469 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!468 _keys!1806) (size!469 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9558 () Bool)

(declare-fun res!8564 () Bool)

(assert (=> b!9558 (=> (not res!8564) (not e!5467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!843 (_ BitVec 32)) Bool)

(assert (=> b!9558 (= res!8564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9559 () Bool)

(declare-fun e!5466 () Bool)

(assert (=> b!9559 (= e!5471 e!5466)))

(declare-fun res!8572 () Bool)

(assert (=> b!9559 (=> res!8572 e!5466)))

(assert (=> b!9559 (= res!8572 (not (= (size!468 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!2160 () (_ BitVec 32))

(assert (=> b!9559 (arrayForallSeekEntryOrOpenFound!0 lt!2160 _keys!1806 mask!2250)))

(declare-fun lt!2159 () Unit!197)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!197)

(assert (=> b!9559 (= lt!2159 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2160))))

(declare-fun arrayScanForKey!0 (array!843 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9559 (= lt!2160 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9560 () Bool)

(declare-fun e!5468 () Bool)

(assert (=> b!9560 (= e!5466 e!5468)))

(declare-fun res!8566 () Bool)

(assert (=> b!9560 (=> res!8566 e!5468)))

(declare-datatypes ((SeekEntryResult!41 0))(
  ( (MissingZero!41 (index!2283 (_ BitVec 32))) (Found!41 (index!2284 (_ BitVec 32))) (Intermediate!41 (undefined!853 Bool) (index!2285 (_ BitVec 32)) (x!2803 (_ BitVec 32))) (Undefined!41) (MissingVacant!41 (index!2286 (_ BitVec 32))) )
))
(declare-fun lt!2161 () SeekEntryResult!41)

(get-info :version)

(assert (=> b!9560 (= res!8566 (not ((_ is Found!41) lt!2161)))))

(assert (=> b!9560 (and ((_ is Found!41) lt!2161) (= (index!2284 lt!2161) lt!2160))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!843 (_ BitVec 32)) SeekEntryResult!41)

(assert (=> b!9560 (= lt!2161 (seekEntry!0 k0!1278 _keys!1806 mask!2250))))

(declare-fun lt!2162 () Unit!197)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!843 (_ BitVec 32)) Unit!197)

(assert (=> b!9560 (= lt!2162 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1278 lt!2160 _keys!1806 mask!2250))))

(declare-fun b!9561 () Bool)

(declare-fun e!5472 () Bool)

(declare-fun e!5474 () Bool)

(assert (=> b!9561 (= e!5472 (and e!5474 mapRes!671))))

(declare-fun condMapEmpty!671 () Bool)

(declare-fun mapDefault!671 () ValueCell!213)

(assert (=> b!9561 (= condMapEmpty!671 (= (arr!407 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!213)) mapDefault!671)))))

(declare-fun res!8571 () Bool)

(assert (=> start!1078 (=> (not res!8571) (not e!5467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1078 (= res!8571 (validMask!0 mask!2250))))

(assert (=> start!1078 e!5467))

(assert (=> start!1078 tp!1384))

(assert (=> start!1078 true))

(declare-fun array_inv!293 (array!845) Bool)

(assert (=> start!1078 (and (array_inv!293 _values!1492) e!5472)))

(declare-fun tp_is_empty!459 () Bool)

(assert (=> start!1078 tp_is_empty!459))

(declare-fun array_inv!294 (array!843) Bool)

(assert (=> start!1078 (array_inv!294 _keys!1806)))

(declare-fun b!9553 () Bool)

(assert (=> b!9553 (= e!5474 tp_is_empty!459)))

(declare-fun b!9562 () Bool)

(assert (=> b!9562 (= e!5473 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9563 () Bool)

(assert (=> b!9563 (= e!5468 (and (bvsge (index!2284 lt!2161) #b00000000000000000000000000000000) (bvslt (index!2284 lt!2161) (size!468 _keys!1806))))))

(declare-fun b!9564 () Bool)

(assert (=> b!9564 (= e!5473 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!671 () Bool)

(declare-fun tp!1385 () Bool)

(declare-fun e!5470 () Bool)

(assert (=> mapNonEmpty!671 (= mapRes!671 (and tp!1385 e!5470))))

(declare-fun mapKey!671 () (_ BitVec 32))

(declare-fun mapValue!671 () ValueCell!213)

(declare-fun mapRest!671 () (Array (_ BitVec 32) ValueCell!213))

(assert (=> mapNonEmpty!671 (= (arr!407 _values!1492) (store mapRest!671 mapKey!671 mapValue!671))))

(declare-fun b!9565 () Bool)

(assert (=> b!9565 (= e!5470 tp_is_empty!459)))

(declare-fun b!9566 () Bool)

(declare-fun res!8567 () Bool)

(assert (=> b!9566 (=> res!8567 e!5466)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!843 (_ BitVec 32)) SeekEntryResult!41)

(assert (=> b!9566 (= res!8567 (not (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) (Found!41 lt!2160))))))

(declare-fun b!9567 () Bool)

(declare-fun res!8570 () Bool)

(assert (=> b!9567 (=> res!8570 e!5468)))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!9567 (= res!8570 (not (inRange!0 (index!2284 lt!2161) mask!2250)))))

(declare-fun b!9568 () Bool)

(declare-fun res!8565 () Bool)

(assert (=> b!9568 (=> (not res!8565) (not e!5467))))

(declare-datatypes ((tuple2!254 0))(
  ( (tuple2!255 (_1!127 (_ BitVec 64)) (_2!127 V!789)) )
))
(declare-datatypes ((List!280 0))(
  ( (Nil!277) (Cons!276 (h!842 tuple2!254) (t!2423 List!280)) )
))
(declare-datatypes ((ListLongMap!259 0))(
  ( (ListLongMap!260 (toList!145 List!280)) )
))
(declare-fun contains!123 (ListLongMap!259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!104 (array!843 array!845 (_ BitVec 32) (_ BitVec 32) V!789 V!789 (_ BitVec 32) Int) ListLongMap!259)

(assert (=> b!9568 (= res!8565 (contains!123 (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(assert (= (and start!1078 res!8571) b!9557))

(assert (= (and b!9557 res!8568) b!9558))

(assert (= (and b!9558 res!8564) b!9556))

(assert (= (and b!9556 res!8574) b!9568))

(assert (= (and b!9568 res!8565) b!9554))

(assert (= (and b!9554 res!8569) b!9555))

(assert (= (and b!9555 c!762) b!9564))

(assert (= (and b!9555 (not c!762)) b!9562))

(assert (= (and b!9555 (not res!8573)) b!9559))

(assert (= (and b!9559 (not res!8572)) b!9566))

(assert (= (and b!9566 (not res!8567)) b!9560))

(assert (= (and b!9560 (not res!8566)) b!9567))

(assert (= (and b!9567 (not res!8570)) b!9563))

(assert (= (and b!9561 condMapEmpty!671) mapIsEmpty!671))

(assert (= (and b!9561 (not condMapEmpty!671)) mapNonEmpty!671))

(assert (= (and mapNonEmpty!671 ((_ is ValueCellFull!213) mapValue!671)) b!9565))

(assert (= (and b!9561 ((_ is ValueCellFull!213) mapDefault!671)) b!9553))

(assert (= start!1078 b!9561))

(declare-fun m!6015 () Bool)

(assert (=> b!9558 m!6015))

(declare-fun m!6017 () Bool)

(assert (=> b!9567 m!6017))

(declare-fun m!6019 () Bool)

(assert (=> b!9555 m!6019))

(declare-fun m!6021 () Bool)

(assert (=> b!9555 m!6021))

(declare-fun m!6023 () Bool)

(assert (=> b!9556 m!6023))

(declare-fun m!6025 () Bool)

(assert (=> start!1078 m!6025))

(declare-fun m!6027 () Bool)

(assert (=> start!1078 m!6027))

(declare-fun m!6029 () Bool)

(assert (=> start!1078 m!6029))

(declare-fun m!6031 () Bool)

(assert (=> b!9554 m!6031))

(declare-fun m!6033 () Bool)

(assert (=> mapNonEmpty!671 m!6033))

(declare-fun m!6035 () Bool)

(assert (=> b!9568 m!6035))

(assert (=> b!9568 m!6035))

(declare-fun m!6037 () Bool)

(assert (=> b!9568 m!6037))

(declare-fun m!6039 () Bool)

(assert (=> b!9566 m!6039))

(assert (=> b!9564 m!6019))

(declare-fun m!6041 () Bool)

(assert (=> b!9560 m!6041))

(declare-fun m!6043 () Bool)

(assert (=> b!9560 m!6043))

(declare-fun m!6045 () Bool)

(assert (=> b!9559 m!6045))

(declare-fun m!6047 () Bool)

(assert (=> b!9559 m!6047))

(declare-fun m!6049 () Bool)

(assert (=> b!9559 m!6049))

(check-sat (not start!1078) (not b!9555) (not b!9568) (not b!9566) (not b!9564) (not b_next!381) (not b!9567) b_and!535 (not b!9560) (not b!9556) (not b!9554) tp_is_empty!459 (not b!9558) (not b!9559) (not mapNonEmpty!671))
(check-sat b_and!535 (not b_next!381))
(get-model)

(declare-fun d!925 () Bool)

(assert (=> d!925 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9554 d!925))

(declare-fun d!927 () Bool)

(declare-fun res!8612 () Bool)

(declare-fun e!5510 () Bool)

(assert (=> d!927 (=> res!8612 e!5510)))

(assert (=> d!927 (= res!8612 (bvsge lt!2160 (size!468 _keys!1806)))))

(assert (=> d!927 (= (arrayForallSeekEntryOrOpenFound!0 lt!2160 _keys!1806 mask!2250) e!5510)))

(declare-fun bm!264 () Bool)

(declare-fun call!267 () Bool)

(assert (=> bm!264 (= call!267 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!2160 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!9625 () Bool)

(declare-fun e!5508 () Bool)

(assert (=> b!9625 (= e!5508 call!267)))

(declare-fun b!9626 () Bool)

(declare-fun e!5509 () Bool)

(assert (=> b!9626 (= e!5509 call!267)))

(declare-fun b!9627 () Bool)

(assert (=> b!9627 (= e!5510 e!5509)))

(declare-fun c!768 () Bool)

(assert (=> b!9627 (= c!768 (validKeyInArray!0 (select (arr!406 _keys!1806) lt!2160)))))

(declare-fun b!9628 () Bool)

(assert (=> b!9628 (= e!5509 e!5508)))

(declare-fun lt!2187 () (_ BitVec 64))

(assert (=> b!9628 (= lt!2187 (select (arr!406 _keys!1806) lt!2160))))

(declare-fun lt!2185 () Unit!197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!843 (_ BitVec 64) (_ BitVec 32)) Unit!197)

(assert (=> b!9628 (= lt!2185 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!2187 lt!2160))))

(assert (=> b!9628 (arrayContainsKey!0 _keys!1806 lt!2187 #b00000000000000000000000000000000)))

(declare-fun lt!2186 () Unit!197)

(assert (=> b!9628 (= lt!2186 lt!2185)))

(declare-fun res!8613 () Bool)

(assert (=> b!9628 (= res!8613 (= (seekEntryOrOpen!0 (select (arr!406 _keys!1806) lt!2160) _keys!1806 mask!2250) (Found!41 lt!2160)))))

(assert (=> b!9628 (=> (not res!8613) (not e!5508))))

(assert (= (and d!927 (not res!8612)) b!9627))

(assert (= (and b!9627 c!768) b!9628))

(assert (= (and b!9627 (not c!768)) b!9626))

(assert (= (and b!9628 res!8613) b!9625))

(assert (= (or b!9625 b!9626) bm!264))

(declare-fun m!6087 () Bool)

(assert (=> bm!264 m!6087))

(declare-fun m!6089 () Bool)

(assert (=> b!9627 m!6089))

(assert (=> b!9627 m!6089))

(declare-fun m!6091 () Bool)

(assert (=> b!9627 m!6091))

(assert (=> b!9628 m!6089))

(declare-fun m!6093 () Bool)

(assert (=> b!9628 m!6093))

(declare-fun m!6095 () Bool)

(assert (=> b!9628 m!6095))

(assert (=> b!9628 m!6089))

(declare-fun m!6097 () Bool)

(assert (=> b!9628 m!6097))

(assert (=> b!9559 d!927))

(declare-fun d!929 () Bool)

(assert (=> d!929 (arrayForallSeekEntryOrOpenFound!0 lt!2160 _keys!1806 mask!2250)))

(declare-fun lt!2190 () Unit!197)

(declare-fun choose!38 (array!843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!197)

(assert (=> d!929 (= lt!2190 (choose!38 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2160))))

(assert (=> d!929 (validMask!0 mask!2250)))

(assert (=> d!929 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2160) lt!2190)))

(declare-fun bs!332 () Bool)

(assert (= bs!332 d!929))

(assert (=> bs!332 m!6045))

(declare-fun m!6099 () Bool)

(assert (=> bs!332 m!6099))

(assert (=> bs!332 m!6025))

(assert (=> b!9559 d!929))

(declare-fun d!931 () Bool)

(declare-fun lt!2193 () (_ BitVec 32))

(assert (=> d!931 (and (or (bvslt lt!2193 #b00000000000000000000000000000000) (bvsge lt!2193 (size!468 _keys!1806)) (and (bvsge lt!2193 #b00000000000000000000000000000000) (bvslt lt!2193 (size!468 _keys!1806)))) (bvsge lt!2193 #b00000000000000000000000000000000) (bvslt lt!2193 (size!468 _keys!1806)) (= (select (arr!406 _keys!1806) lt!2193) k0!1278))))

(declare-fun e!5513 () (_ BitVec 32))

(assert (=> d!931 (= lt!2193 e!5513)))

(declare-fun c!771 () Bool)

(assert (=> d!931 (= c!771 (= (select (arr!406 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!931 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!468 _keys!1806)) (bvslt (size!468 _keys!1806) #b01111111111111111111111111111111))))

(assert (=> d!931 (= (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) lt!2193)))

(declare-fun b!9633 () Bool)

(assert (=> b!9633 (= e!5513 #b00000000000000000000000000000000)))

(declare-fun b!9634 () Bool)

(assert (=> b!9634 (= e!5513 (arrayScanForKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!931 c!771) b!9633))

(assert (= (and d!931 (not c!771)) b!9634))

(declare-fun m!6101 () Bool)

(assert (=> d!931 m!6101))

(declare-fun m!6103 () Bool)

(assert (=> d!931 m!6103))

(declare-fun m!6105 () Bool)

(assert (=> b!9634 m!6105))

(assert (=> b!9559 d!931))

(declare-fun d!933 () Bool)

(declare-fun res!8618 () Bool)

(declare-fun e!5518 () Bool)

(assert (=> d!933 (=> res!8618 e!5518)))

(assert (=> d!933 (= res!8618 (= (select (arr!406 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!933 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!5518)))

(declare-fun b!9639 () Bool)

(declare-fun e!5519 () Bool)

(assert (=> b!9639 (= e!5518 e!5519)))

(declare-fun res!8619 () Bool)

(assert (=> b!9639 (=> (not res!8619) (not e!5519))))

(assert (=> b!9639 (= res!8619 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!468 _keys!1806)))))

(declare-fun b!9640 () Bool)

(assert (=> b!9640 (= e!5519 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!933 (not res!8618)) b!9639))

(assert (= (and b!9639 res!8619) b!9640))

(assert (=> d!933 m!6103))

(declare-fun m!6107 () Bool)

(assert (=> b!9640 m!6107))

(assert (=> b!9564 d!933))

(declare-fun d!935 () Bool)

(declare-fun e!5525 () Bool)

(assert (=> d!935 e!5525))

(declare-fun res!8622 () Bool)

(assert (=> d!935 (=> res!8622 e!5525)))

(declare-fun lt!2203 () Bool)

(assert (=> d!935 (= res!8622 (not lt!2203))))

(declare-fun lt!2204 () Bool)

(assert (=> d!935 (= lt!2203 lt!2204)))

(declare-fun lt!2202 () Unit!197)

(declare-fun e!5524 () Unit!197)

(assert (=> d!935 (= lt!2202 e!5524)))

(declare-fun c!774 () Bool)

(assert (=> d!935 (= c!774 lt!2204)))

(declare-fun containsKey!9 (List!280 (_ BitVec 64)) Bool)

(assert (=> d!935 (= lt!2204 (containsKey!9 (toList!145 (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!935 (= (contains!123 (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!2203)))

(declare-fun b!9647 () Bool)

(declare-fun lt!2205 () Unit!197)

(assert (=> b!9647 (= e!5524 lt!2205)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!9 (List!280 (_ BitVec 64)) Unit!197)

(assert (=> b!9647 (= lt!2205 (lemmaContainsKeyImpliesGetValueByKeyDefined!9 (toList!145 (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!21 0))(
  ( (Some!20 (v!1332 V!789)) (None!19) )
))
(declare-fun isDefined!10 (Option!21) Bool)

(declare-fun getValueByKey!15 (List!280 (_ BitVec 64)) Option!21)

(assert (=> b!9647 (isDefined!10 (getValueByKey!15 (toList!145 (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!9648 () Bool)

(declare-fun Unit!201 () Unit!197)

(assert (=> b!9648 (= e!5524 Unit!201)))

(declare-fun b!9649 () Bool)

(assert (=> b!9649 (= e!5525 (isDefined!10 (getValueByKey!15 (toList!145 (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!935 c!774) b!9647))

(assert (= (and d!935 (not c!774)) b!9648))

(assert (= (and d!935 (not res!8622)) b!9649))

(declare-fun m!6109 () Bool)

(assert (=> d!935 m!6109))

(declare-fun m!6111 () Bool)

(assert (=> b!9647 m!6111))

(declare-fun m!6113 () Bool)

(assert (=> b!9647 m!6113))

(assert (=> b!9647 m!6113))

(declare-fun m!6115 () Bool)

(assert (=> b!9647 m!6115))

(assert (=> b!9649 m!6113))

(assert (=> b!9649 m!6113))

(assert (=> b!9649 m!6115))

(assert (=> b!9568 d!935))

(declare-fun b!9692 () Bool)

(declare-fun e!5561 () Bool)

(declare-fun e!5558 () Bool)

(assert (=> b!9692 (= e!5561 e!5558)))

(declare-fun res!8646 () Bool)

(declare-fun call!286 () Bool)

(assert (=> b!9692 (= res!8646 call!286)))

(assert (=> b!9692 (=> (not res!8646) (not e!5558))))

(declare-fun b!9694 () Bool)

(declare-fun e!5553 () ListLongMap!259)

(declare-fun call!284 () ListLongMap!259)

(assert (=> b!9694 (= e!5553 call!284)))

(declare-fun bm!279 () Bool)

(declare-fun call!287 () Bool)

(declare-fun lt!2265 () ListLongMap!259)

(assert (=> bm!279 (= call!287 (contains!123 lt!2265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!9695 () Bool)

(assert (=> b!9695 (= e!5561 (not call!286))))

(declare-fun bm!280 () Bool)

(assert (=> bm!280 (= call!286 (contains!123 lt!2265 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!9696 () Bool)

(declare-fun e!5560 () Bool)

(assert (=> b!9696 (= e!5560 (validKeyInArray!0 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9697 () Bool)

(declare-fun e!5552 () Bool)

(declare-fun apply!25 (ListLongMap!259 (_ BitVec 64)) V!789)

(assert (=> b!9697 (= e!5552 (= (apply!25 lt!2265 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun b!9698 () Bool)

(declare-fun e!5562 () Bool)

(declare-fun get!179 (ValueCell!213 V!789) V!789)

(declare-fun dynLambda!47 (Int (_ BitVec 64)) V!789)

(assert (=> b!9698 (= e!5562 (= (apply!25 lt!2265 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)) (get!179 (select (arr!407 _values!1492) #b00000000000000000000000000000000) (dynLambda!47 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9698 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!469 _values!1492)))))

(assert (=> b!9698 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!468 _keys!1806)))))

(declare-fun b!9699 () Bool)

(declare-fun e!5556 () ListLongMap!259)

(assert (=> b!9699 (= e!5556 call!284)))

(declare-fun b!9700 () Bool)

(declare-fun res!8649 () Bool)

(declare-fun e!5563 () Bool)

(assert (=> b!9700 (=> (not res!8649) (not e!5563))))

(declare-fun e!5564 () Bool)

(assert (=> b!9700 (= res!8649 e!5564)))

(declare-fun res!8648 () Bool)

(assert (=> b!9700 (=> res!8648 e!5564)))

(declare-fun e!5555 () Bool)

(assert (=> b!9700 (= res!8648 (not e!5555))))

(declare-fun res!8644 () Bool)

(assert (=> b!9700 (=> (not res!8644) (not e!5555))))

(assert (=> b!9700 (= res!8644 (bvslt #b00000000000000000000000000000000 (size!468 _keys!1806)))))

(declare-fun b!9701 () Bool)

(declare-fun e!5557 () Unit!197)

(declare-fun lt!2268 () Unit!197)

(assert (=> b!9701 (= e!5557 lt!2268)))

(declare-fun lt!2254 () ListLongMap!259)

(declare-fun getCurrentListMapNoExtraKeys!9 (array!843 array!845 (_ BitVec 32) (_ BitVec 32) V!789 V!789 (_ BitVec 32) Int) ListLongMap!259)

(assert (=> b!9701 (= lt!2254 (getCurrentListMapNoExtraKeys!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2261 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2261 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2260 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2260 (select (arr!406 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2267 () Unit!197)

(declare-fun addStillContains!10 (ListLongMap!259 (_ BitVec 64) V!789 (_ BitVec 64)) Unit!197)

(assert (=> b!9701 (= lt!2267 (addStillContains!10 lt!2254 lt!2261 zeroValue!1434 lt!2260))))

(declare-fun +!12 (ListLongMap!259 tuple2!254) ListLongMap!259)

(assert (=> b!9701 (contains!123 (+!12 lt!2254 (tuple2!255 lt!2261 zeroValue!1434)) lt!2260)))

(declare-fun lt!2270 () Unit!197)

(assert (=> b!9701 (= lt!2270 lt!2267)))

(declare-fun lt!2257 () ListLongMap!259)

(assert (=> b!9701 (= lt!2257 (getCurrentListMapNoExtraKeys!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2250 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2250 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2253 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2253 (select (arr!406 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2262 () Unit!197)

(declare-fun addApplyDifferent!10 (ListLongMap!259 (_ BitVec 64) V!789 (_ BitVec 64)) Unit!197)

(assert (=> b!9701 (= lt!2262 (addApplyDifferent!10 lt!2257 lt!2250 minValue!1434 lt!2253))))

(assert (=> b!9701 (= (apply!25 (+!12 lt!2257 (tuple2!255 lt!2250 minValue!1434)) lt!2253) (apply!25 lt!2257 lt!2253))))

(declare-fun lt!2271 () Unit!197)

(assert (=> b!9701 (= lt!2271 lt!2262)))

(declare-fun lt!2255 () ListLongMap!259)

(assert (=> b!9701 (= lt!2255 (getCurrentListMapNoExtraKeys!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2269 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2269 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2252 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2252 (select (arr!406 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2263 () Unit!197)

(assert (=> b!9701 (= lt!2263 (addApplyDifferent!10 lt!2255 lt!2269 zeroValue!1434 lt!2252))))

(assert (=> b!9701 (= (apply!25 (+!12 lt!2255 (tuple2!255 lt!2269 zeroValue!1434)) lt!2252) (apply!25 lt!2255 lt!2252))))

(declare-fun lt!2258 () Unit!197)

(assert (=> b!9701 (= lt!2258 lt!2263)))

(declare-fun lt!2264 () ListLongMap!259)

(assert (=> b!9701 (= lt!2264 (getCurrentListMapNoExtraKeys!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2251 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2251 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2256 () (_ BitVec 64))

(assert (=> b!9701 (= lt!2256 (select (arr!406 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!9701 (= lt!2268 (addApplyDifferent!10 lt!2264 lt!2251 minValue!1434 lt!2256))))

(assert (=> b!9701 (= (apply!25 (+!12 lt!2264 (tuple2!255 lt!2251 minValue!1434)) lt!2256) (apply!25 lt!2264 lt!2256))))

(declare-fun b!9702 () Bool)

(declare-fun Unit!202 () Unit!197)

(assert (=> b!9702 (= e!5557 Unit!202)))

(declare-fun b!9703 () Bool)

(assert (=> b!9703 (= e!5564 e!5562)))

(declare-fun res!8647 () Bool)

(assert (=> b!9703 (=> (not res!8647) (not e!5562))))

(assert (=> b!9703 (= res!8647 (contains!123 lt!2265 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!9703 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!468 _keys!1806)))))

(declare-fun d!937 () Bool)

(assert (=> d!937 e!5563))

(declare-fun res!8643 () Bool)

(assert (=> d!937 (=> (not res!8643) (not e!5563))))

(assert (=> d!937 (= res!8643 (or (bvsge #b00000000000000000000000000000000 (size!468 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!468 _keys!1806)))))))

(declare-fun lt!2266 () ListLongMap!259)

(assert (=> d!937 (= lt!2265 lt!2266)))

(declare-fun lt!2259 () Unit!197)

(assert (=> d!937 (= lt!2259 e!5557)))

(declare-fun c!791 () Bool)

(assert (=> d!937 (= c!791 e!5560)))

(declare-fun res!8641 () Bool)

(assert (=> d!937 (=> (not res!8641) (not e!5560))))

(assert (=> d!937 (= res!8641 (bvslt #b00000000000000000000000000000000 (size!468 _keys!1806)))))

(declare-fun e!5554 () ListLongMap!259)

(assert (=> d!937 (= lt!2266 e!5554)))

(declare-fun c!789 () Bool)

(assert (=> d!937 (= c!789 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!937 (validMask!0 mask!2250)))

(assert (=> d!937 (= (getCurrentListMap!104 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!2265)))

(declare-fun b!9693 () Bool)

(declare-fun call!288 () ListLongMap!259)

(assert (=> b!9693 (= e!5556 call!288)))

(declare-fun b!9704 () Bool)

(declare-fun e!5559 () Bool)

(assert (=> b!9704 (= e!5559 e!5552)))

(declare-fun res!8645 () Bool)

(assert (=> b!9704 (= res!8645 call!287)))

(assert (=> b!9704 (=> (not res!8645) (not e!5552))))

(declare-fun b!9705 () Bool)

(assert (=> b!9705 (= e!5554 e!5553)))

(declare-fun c!787 () Bool)

(assert (=> b!9705 (= c!787 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!9706 () Bool)

(assert (=> b!9706 (= e!5559 (not call!287))))

(declare-fun b!9707 () Bool)

(assert (=> b!9707 (= e!5555 (validKeyInArray!0 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!281 () Bool)

(declare-fun call!282 () ListLongMap!259)

(assert (=> bm!281 (= call!288 call!282)))

(declare-fun call!285 () ListLongMap!259)

(declare-fun bm!282 () Bool)

(declare-fun call!283 () ListLongMap!259)

(assert (=> bm!282 (= call!285 (+!12 (ite c!789 call!283 (ite c!787 call!282 call!288)) (ite (or c!789 c!787) (tuple2!255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!255 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!9708 () Bool)

(declare-fun res!8642 () Bool)

(assert (=> b!9708 (=> (not res!8642) (not e!5563))))

(assert (=> b!9708 (= res!8642 e!5559)))

(declare-fun c!790 () Bool)

(assert (=> b!9708 (= c!790 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!283 () Bool)

(assert (=> bm!283 (= call!283 (getCurrentListMapNoExtraKeys!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!9709 () Bool)

(declare-fun c!788 () Bool)

(assert (=> b!9709 (= c!788 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!9709 (= e!5553 e!5556)))

(declare-fun bm!284 () Bool)

(assert (=> bm!284 (= call!284 call!285)))

(declare-fun bm!285 () Bool)

(assert (=> bm!285 (= call!282 call!283)))

(declare-fun b!9710 () Bool)

(assert (=> b!9710 (= e!5554 (+!12 call!285 (tuple2!255 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun b!9711 () Bool)

(assert (=> b!9711 (= e!5558 (= (apply!25 lt!2265 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun b!9712 () Bool)

(assert (=> b!9712 (= e!5563 e!5561)))

(declare-fun c!792 () Bool)

(assert (=> b!9712 (= c!792 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!937 c!789) b!9710))

(assert (= (and d!937 (not c!789)) b!9705))

(assert (= (and b!9705 c!787) b!9694))

(assert (= (and b!9705 (not c!787)) b!9709))

(assert (= (and b!9709 c!788) b!9699))

(assert (= (and b!9709 (not c!788)) b!9693))

(assert (= (or b!9699 b!9693) bm!281))

(assert (= (or b!9694 bm!281) bm!285))

(assert (= (or b!9694 b!9699) bm!284))

(assert (= (or b!9710 bm!285) bm!283))

(assert (= (or b!9710 bm!284) bm!282))

(assert (= (and d!937 res!8641) b!9696))

(assert (= (and d!937 c!791) b!9701))

(assert (= (and d!937 (not c!791)) b!9702))

(assert (= (and d!937 res!8643) b!9700))

(assert (= (and b!9700 res!8644) b!9707))

(assert (= (and b!9700 (not res!8648)) b!9703))

(assert (= (and b!9703 res!8647) b!9698))

(assert (= (and b!9700 res!8649) b!9708))

(assert (= (and b!9708 c!790) b!9704))

(assert (= (and b!9708 (not c!790)) b!9706))

(assert (= (and b!9704 res!8645) b!9697))

(assert (= (or b!9704 b!9706) bm!279))

(assert (= (and b!9708 res!8642) b!9712))

(assert (= (and b!9712 c!792) b!9692))

(assert (= (and b!9712 (not c!792)) b!9695))

(assert (= (and b!9692 res!8646) b!9711))

(assert (= (or b!9692 b!9695) bm!280))

(declare-fun b_lambda!351 () Bool)

(assert (=> (not b_lambda!351) (not b!9698)))

(declare-fun t!2427 () Bool)

(declare-fun tb!143 () Bool)

(assert (=> (and start!1078 (= defaultEntry!1495 defaultEntry!1495) t!2427) tb!143))

(declare-fun result!231 () Bool)

(assert (=> tb!143 (= result!231 tp_is_empty!459)))

(assert (=> b!9698 t!2427))

(declare-fun b_and!539 () Bool)

(assert (= b_and!535 (and (=> t!2427 result!231) b_and!539)))

(declare-fun m!6117 () Bool)

(assert (=> bm!283 m!6117))

(declare-fun m!6119 () Bool)

(assert (=> b!9711 m!6119))

(assert (=> b!9707 m!6103))

(assert (=> b!9707 m!6103))

(declare-fun m!6121 () Bool)

(assert (=> b!9707 m!6121))

(declare-fun m!6123 () Bool)

(assert (=> bm!279 m!6123))

(assert (=> b!9698 m!6103))

(declare-fun m!6125 () Bool)

(assert (=> b!9698 m!6125))

(assert (=> b!9698 m!6103))

(declare-fun m!6127 () Bool)

(assert (=> b!9698 m!6127))

(declare-fun m!6129 () Bool)

(assert (=> b!9698 m!6129))

(assert (=> b!9698 m!6129))

(assert (=> b!9698 m!6125))

(declare-fun m!6131 () Bool)

(assert (=> b!9698 m!6131))

(declare-fun m!6133 () Bool)

(assert (=> b!9710 m!6133))

(declare-fun m!6135 () Bool)

(assert (=> bm!280 m!6135))

(declare-fun m!6137 () Bool)

(assert (=> b!9697 m!6137))

(assert (=> b!9696 m!6103))

(assert (=> b!9696 m!6103))

(assert (=> b!9696 m!6121))

(assert (=> b!9703 m!6103))

(assert (=> b!9703 m!6103))

(declare-fun m!6139 () Bool)

(assert (=> b!9703 m!6139))

(assert (=> d!937 m!6025))

(declare-fun m!6141 () Bool)

(assert (=> bm!282 m!6141))

(declare-fun m!6143 () Bool)

(assert (=> b!9701 m!6143))

(declare-fun m!6145 () Bool)

(assert (=> b!9701 m!6145))

(assert (=> b!9701 m!6143))

(declare-fun m!6147 () Bool)

(assert (=> b!9701 m!6147))

(declare-fun m!6149 () Bool)

(assert (=> b!9701 m!6149))

(assert (=> b!9701 m!6103))

(declare-fun m!6151 () Bool)

(assert (=> b!9701 m!6151))

(declare-fun m!6153 () Bool)

(assert (=> b!9701 m!6153))

(assert (=> b!9701 m!6151))

(declare-fun m!6155 () Bool)

(assert (=> b!9701 m!6155))

(declare-fun m!6157 () Bool)

(assert (=> b!9701 m!6157))

(declare-fun m!6159 () Bool)

(assert (=> b!9701 m!6159))

(declare-fun m!6161 () Bool)

(assert (=> b!9701 m!6161))

(declare-fun m!6163 () Bool)

(assert (=> b!9701 m!6163))

(declare-fun m!6165 () Bool)

(assert (=> b!9701 m!6165))

(declare-fun m!6167 () Bool)

(assert (=> b!9701 m!6167))

(assert (=> b!9701 m!6165))

(assert (=> b!9701 m!6159))

(declare-fun m!6169 () Bool)

(assert (=> b!9701 m!6169))

(assert (=> b!9701 m!6117))

(declare-fun m!6171 () Bool)

(assert (=> b!9701 m!6171))

(assert (=> b!9568 d!937))

(assert (=> b!9555 d!933))

(declare-fun d!939 () Bool)

(declare-fun e!5567 () Bool)

(assert (=> d!939 e!5567))

(declare-fun c!795 () Bool)

(assert (=> d!939 (= c!795 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2274 () Unit!197)

(declare-fun choose!143 (array!843 array!845 (_ BitVec 32) (_ BitVec 32) V!789 V!789 (_ BitVec 64) Int) Unit!197)

(assert (=> d!939 (= lt!2274 (choose!143 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!939 (validMask!0 mask!2250)))

(assert (=> d!939 (= (lemmaKeyInListMapIsInArray!74 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!2274)))

(declare-fun b!9719 () Bool)

(assert (=> b!9719 (= e!5567 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9720 () Bool)

(assert (=> b!9720 (= e!5567 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!939 c!795) b!9719))

(assert (= (and d!939 (not c!795)) b!9720))

(declare-fun m!6173 () Bool)

(assert (=> d!939 m!6173))

(assert (=> d!939 m!6025))

(assert (=> b!9719 m!6019))

(assert (=> b!9555 d!939))

(declare-fun d!941 () Bool)

(assert (=> d!941 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!1078 d!941))

(declare-fun d!943 () Bool)

(assert (=> d!943 (= (array_inv!293 _values!1492) (bvsge (size!469 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!1078 d!943))

(declare-fun d!945 () Bool)

(assert (=> d!945 (= (array_inv!294 _keys!1806) (bvsge (size!468 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!1078 d!945))

(declare-fun d!947 () Bool)

(declare-fun lt!2283 () SeekEntryResult!41)

(assert (=> d!947 (and (or ((_ is MissingVacant!41) lt!2283) (not ((_ is Found!41) lt!2283)) (and (bvsge (index!2284 lt!2283) #b00000000000000000000000000000000) (bvslt (index!2284 lt!2283) (size!468 _keys!1806)))) (not ((_ is MissingVacant!41) lt!2283)) (or (not ((_ is Found!41) lt!2283)) (= (select (arr!406 _keys!1806) (index!2284 lt!2283)) k0!1278)))))

(declare-fun e!5574 () SeekEntryResult!41)

(assert (=> d!947 (= lt!2283 e!5574)))

(declare-fun c!804 () Bool)

(declare-fun lt!2286 () SeekEntryResult!41)

(assert (=> d!947 (= c!804 (and ((_ is Intermediate!41) lt!2286) (undefined!853 lt!2286)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!843 (_ BitVec 32)) SeekEntryResult!41)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!947 (= lt!2286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1278 mask!2250) k0!1278 _keys!1806 mask!2250))))

(assert (=> d!947 (validMask!0 mask!2250)))

(assert (=> d!947 (= (seekEntry!0 k0!1278 _keys!1806 mask!2250) lt!2283)))

(declare-fun b!9733 () Bool)

(declare-fun e!5575 () SeekEntryResult!41)

(assert (=> b!9733 (= e!5575 (MissingZero!41 (index!2285 lt!2286)))))

(declare-fun b!9734 () Bool)

(declare-fun lt!2285 () SeekEntryResult!41)

(assert (=> b!9734 (= e!5575 (ite ((_ is MissingVacant!41) lt!2285) (MissingZero!41 (index!2286 lt!2285)) lt!2285))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!843 (_ BitVec 32)) SeekEntryResult!41)

(assert (=> b!9734 (= lt!2285 (seekKeyOrZeroReturnVacant!0 (x!2803 lt!2286) (index!2285 lt!2286) (index!2285 lt!2286) k0!1278 _keys!1806 mask!2250))))

(declare-fun b!9735 () Bool)

(declare-fun e!5576 () SeekEntryResult!41)

(assert (=> b!9735 (= e!5574 e!5576)))

(declare-fun lt!2284 () (_ BitVec 64))

(assert (=> b!9735 (= lt!2284 (select (arr!406 _keys!1806) (index!2285 lt!2286)))))

(declare-fun c!803 () Bool)

(assert (=> b!9735 (= c!803 (= lt!2284 k0!1278))))

(declare-fun b!9736 () Bool)

(assert (=> b!9736 (= e!5576 (Found!41 (index!2285 lt!2286)))))

(declare-fun b!9737 () Bool)

(declare-fun c!802 () Bool)

(assert (=> b!9737 (= c!802 (= lt!2284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!9737 (= e!5576 e!5575)))

(declare-fun b!9738 () Bool)

(assert (=> b!9738 (= e!5574 Undefined!41)))

(assert (= (and d!947 c!804) b!9738))

(assert (= (and d!947 (not c!804)) b!9735))

(assert (= (and b!9735 c!803) b!9736))

(assert (= (and b!9735 (not c!803)) b!9737))

(assert (= (and b!9737 c!802) b!9733))

(assert (= (and b!9737 (not c!802)) b!9734))

(declare-fun m!6175 () Bool)

(assert (=> d!947 m!6175))

(declare-fun m!6177 () Bool)

(assert (=> d!947 m!6177))

(assert (=> d!947 m!6177))

(declare-fun m!6179 () Bool)

(assert (=> d!947 m!6179))

(assert (=> d!947 m!6025))

(declare-fun m!6181 () Bool)

(assert (=> b!9734 m!6181))

(declare-fun m!6183 () Bool)

(assert (=> b!9735 m!6183))

(assert (=> b!9560 d!947))

(declare-fun d!949 () Bool)

(declare-fun lt!2292 () SeekEntryResult!41)

(assert (=> d!949 (and ((_ is Found!41) lt!2292) (= (index!2284 lt!2292) lt!2160))))

(assert (=> d!949 (= lt!2292 (seekEntry!0 k0!1278 _keys!1806 mask!2250))))

(declare-fun lt!2291 () Unit!197)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!843 (_ BitVec 32)) Unit!197)

(assert (=> d!949 (= lt!2291 (choose!0 k0!1278 lt!2160 _keys!1806 mask!2250))))

(assert (=> d!949 (validMask!0 mask!2250)))

(assert (=> d!949 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1278 lt!2160 _keys!1806 mask!2250) lt!2291)))

(declare-fun bs!333 () Bool)

(assert (= bs!333 d!949))

(assert (=> bs!333 m!6041))

(declare-fun m!6185 () Bool)

(assert (=> bs!333 m!6185))

(assert (=> bs!333 m!6025))

(assert (=> b!9560 d!949))

(declare-fun b!9751 () Bool)

(declare-fun e!5585 () SeekEntryResult!41)

(assert (=> b!9751 (= e!5585 Undefined!41)))

(declare-fun d!951 () Bool)

(declare-fun lt!2301 () SeekEntryResult!41)

(assert (=> d!951 (and (or ((_ is Undefined!41) lt!2301) (not ((_ is Found!41) lt!2301)) (and (bvsge (index!2284 lt!2301) #b00000000000000000000000000000000) (bvslt (index!2284 lt!2301) (size!468 _keys!1806)))) (or ((_ is Undefined!41) lt!2301) ((_ is Found!41) lt!2301) (not ((_ is MissingZero!41) lt!2301)) (and (bvsge (index!2283 lt!2301) #b00000000000000000000000000000000) (bvslt (index!2283 lt!2301) (size!468 _keys!1806)))) (or ((_ is Undefined!41) lt!2301) ((_ is Found!41) lt!2301) ((_ is MissingZero!41) lt!2301) (not ((_ is MissingVacant!41) lt!2301)) (and (bvsge (index!2286 lt!2301) #b00000000000000000000000000000000) (bvslt (index!2286 lt!2301) (size!468 _keys!1806)))) (or ((_ is Undefined!41) lt!2301) (ite ((_ is Found!41) lt!2301) (= (select (arr!406 _keys!1806) (index!2284 lt!2301)) k0!1278) (ite ((_ is MissingZero!41) lt!2301) (= (select (arr!406 _keys!1806) (index!2283 lt!2301)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!41) lt!2301) (= (select (arr!406 _keys!1806) (index!2286 lt!2301)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!951 (= lt!2301 e!5585)))

(declare-fun c!813 () Bool)

(declare-fun lt!2299 () SeekEntryResult!41)

(assert (=> d!951 (= c!813 (and ((_ is Intermediate!41) lt!2299) (undefined!853 lt!2299)))))

(assert (=> d!951 (= lt!2299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1278 mask!2250) k0!1278 _keys!1806 mask!2250))))

(assert (=> d!951 (validMask!0 mask!2250)))

(assert (=> d!951 (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) lt!2301)))

(declare-fun e!5583 () SeekEntryResult!41)

(declare-fun b!9752 () Bool)

(assert (=> b!9752 (= e!5583 (seekKeyOrZeroReturnVacant!0 (x!2803 lt!2299) (index!2285 lt!2299) (index!2285 lt!2299) k0!1278 _keys!1806 mask!2250))))

(declare-fun b!9753 () Bool)

(declare-fun e!5584 () SeekEntryResult!41)

(assert (=> b!9753 (= e!5584 (Found!41 (index!2285 lt!2299)))))

(declare-fun b!9754 () Bool)

(declare-fun c!812 () Bool)

(declare-fun lt!2300 () (_ BitVec 64))

(assert (=> b!9754 (= c!812 (= lt!2300 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!9754 (= e!5584 e!5583)))

(declare-fun b!9755 () Bool)

(assert (=> b!9755 (= e!5585 e!5584)))

(assert (=> b!9755 (= lt!2300 (select (arr!406 _keys!1806) (index!2285 lt!2299)))))

(declare-fun c!811 () Bool)

(assert (=> b!9755 (= c!811 (= lt!2300 k0!1278))))

(declare-fun b!9756 () Bool)

(assert (=> b!9756 (= e!5583 (MissingZero!41 (index!2285 lt!2299)))))

(assert (= (and d!951 c!813) b!9751))

(assert (= (and d!951 (not c!813)) b!9755))

(assert (= (and b!9755 c!811) b!9753))

(assert (= (and b!9755 (not c!811)) b!9754))

(assert (= (and b!9754 c!812) b!9756))

(assert (= (and b!9754 (not c!812)) b!9752))

(assert (=> d!951 m!6177))

(assert (=> d!951 m!6179))

(declare-fun m!6187 () Bool)

(assert (=> d!951 m!6187))

(declare-fun m!6189 () Bool)

(assert (=> d!951 m!6189))

(assert (=> d!951 m!6177))

(assert (=> d!951 m!6025))

(declare-fun m!6191 () Bool)

(assert (=> d!951 m!6191))

(declare-fun m!6193 () Bool)

(assert (=> b!9752 m!6193))

(declare-fun m!6195 () Bool)

(assert (=> b!9755 m!6195))

(assert (=> b!9566 d!951))

(declare-fun d!953 () Bool)

(declare-fun res!8656 () Bool)

(declare-fun e!5595 () Bool)

(assert (=> d!953 (=> res!8656 e!5595)))

(assert (=> d!953 (= res!8656 (bvsge #b00000000000000000000000000000000 (size!468 _keys!1806)))))

(assert (=> d!953 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!276) e!5595)))

(declare-fun b!9767 () Bool)

(declare-fun e!5594 () Bool)

(assert (=> b!9767 (= e!5595 e!5594)))

(declare-fun res!8658 () Bool)

(assert (=> b!9767 (=> (not res!8658) (not e!5594))))

(declare-fun e!5596 () Bool)

(assert (=> b!9767 (= res!8658 (not e!5596))))

(declare-fun res!8657 () Bool)

(assert (=> b!9767 (=> (not res!8657) (not e!5596))))

(assert (=> b!9767 (= res!8657 (validKeyInArray!0 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!288 () Bool)

(declare-fun call!291 () Bool)

(declare-fun c!816 () Bool)

(assert (=> bm!288 (= call!291 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!816 (Cons!275 (select (arr!406 _keys!1806) #b00000000000000000000000000000000) Nil!276) Nil!276)))))

(declare-fun b!9768 () Bool)

(declare-fun contains!125 (List!279 (_ BitVec 64)) Bool)

(assert (=> b!9768 (= e!5596 (contains!125 Nil!276 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9769 () Bool)

(declare-fun e!5597 () Bool)

(assert (=> b!9769 (= e!5597 call!291)))

(declare-fun b!9770 () Bool)

(assert (=> b!9770 (= e!5597 call!291)))

(declare-fun b!9771 () Bool)

(assert (=> b!9771 (= e!5594 e!5597)))

(assert (=> b!9771 (= c!816 (validKeyInArray!0 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!953 (not res!8656)) b!9767))

(assert (= (and b!9767 res!8657) b!9768))

(assert (= (and b!9767 res!8658) b!9771))

(assert (= (and b!9771 c!816) b!9769))

(assert (= (and b!9771 (not c!816)) b!9770))

(assert (= (or b!9769 b!9770) bm!288))

(assert (=> b!9767 m!6103))

(assert (=> b!9767 m!6103))

(assert (=> b!9767 m!6121))

(assert (=> bm!288 m!6103))

(declare-fun m!6197 () Bool)

(assert (=> bm!288 m!6197))

(assert (=> b!9768 m!6103))

(assert (=> b!9768 m!6103))

(declare-fun m!6199 () Bool)

(assert (=> b!9768 m!6199))

(assert (=> b!9771 m!6103))

(assert (=> b!9771 m!6103))

(assert (=> b!9771 m!6121))

(assert (=> b!9556 d!953))

(declare-fun d!955 () Bool)

(declare-fun res!8659 () Bool)

(declare-fun e!5600 () Bool)

(assert (=> d!955 (=> res!8659 e!5600)))

(assert (=> d!955 (= res!8659 (bvsge #b00000000000000000000000000000000 (size!468 _keys!1806)))))

(assert (=> d!955 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!5600)))

(declare-fun bm!289 () Bool)

(declare-fun call!292 () Bool)

(assert (=> bm!289 (= call!292 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!9772 () Bool)

(declare-fun e!5598 () Bool)

(assert (=> b!9772 (= e!5598 call!292)))

(declare-fun b!9773 () Bool)

(declare-fun e!5599 () Bool)

(assert (=> b!9773 (= e!5599 call!292)))

(declare-fun b!9774 () Bool)

(assert (=> b!9774 (= e!5600 e!5599)))

(declare-fun c!817 () Bool)

(assert (=> b!9774 (= c!817 (validKeyInArray!0 (select (arr!406 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9775 () Bool)

(assert (=> b!9775 (= e!5599 e!5598)))

(declare-fun lt!2304 () (_ BitVec 64))

(assert (=> b!9775 (= lt!2304 (select (arr!406 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2302 () Unit!197)

(assert (=> b!9775 (= lt!2302 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!2304 #b00000000000000000000000000000000))))

(assert (=> b!9775 (arrayContainsKey!0 _keys!1806 lt!2304 #b00000000000000000000000000000000)))

(declare-fun lt!2303 () Unit!197)

(assert (=> b!9775 (= lt!2303 lt!2302)))

(declare-fun res!8660 () Bool)

(assert (=> b!9775 (= res!8660 (= (seekEntryOrOpen!0 (select (arr!406 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!41 #b00000000000000000000000000000000)))))

(assert (=> b!9775 (=> (not res!8660) (not e!5598))))

(assert (= (and d!955 (not res!8659)) b!9774))

(assert (= (and b!9774 c!817) b!9775))

(assert (= (and b!9774 (not c!817)) b!9773))

(assert (= (and b!9775 res!8660) b!9772))

(assert (= (or b!9772 b!9773) bm!289))

(declare-fun m!6201 () Bool)

(assert (=> bm!289 m!6201))

(assert (=> b!9774 m!6103))

(assert (=> b!9774 m!6103))

(assert (=> b!9774 m!6121))

(assert (=> b!9775 m!6103))

(declare-fun m!6203 () Bool)

(assert (=> b!9775 m!6203))

(declare-fun m!6205 () Bool)

(assert (=> b!9775 m!6205))

(assert (=> b!9775 m!6103))

(declare-fun m!6207 () Bool)

(assert (=> b!9775 m!6207))

(assert (=> b!9558 d!955))

(declare-fun d!957 () Bool)

(assert (=> d!957 (= (inRange!0 (index!2284 lt!2161) mask!2250) (and (bvsge (index!2284 lt!2161) #b00000000000000000000000000000000) (bvslt (index!2284 lt!2161) (bvadd mask!2250 #b00000000000000000000000000000001))))))

(assert (=> b!9567 d!957))

(declare-fun mapNonEmpty!677 () Bool)

(declare-fun mapRes!677 () Bool)

(declare-fun tp!1394 () Bool)

(declare-fun e!5606 () Bool)

(assert (=> mapNonEmpty!677 (= mapRes!677 (and tp!1394 e!5606))))

(declare-fun mapRest!677 () (Array (_ BitVec 32) ValueCell!213))

(declare-fun mapKey!677 () (_ BitVec 32))

(declare-fun mapValue!677 () ValueCell!213)

(assert (=> mapNonEmpty!677 (= mapRest!671 (store mapRest!677 mapKey!677 mapValue!677))))

(declare-fun b!9783 () Bool)

(declare-fun e!5605 () Bool)

(assert (=> b!9783 (= e!5605 tp_is_empty!459)))

(declare-fun mapIsEmpty!677 () Bool)

(assert (=> mapIsEmpty!677 mapRes!677))

(declare-fun b!9782 () Bool)

(assert (=> b!9782 (= e!5606 tp_is_empty!459)))

(declare-fun condMapEmpty!677 () Bool)

(declare-fun mapDefault!677 () ValueCell!213)

(assert (=> mapNonEmpty!671 (= condMapEmpty!677 (= mapRest!671 ((as const (Array (_ BitVec 32) ValueCell!213)) mapDefault!677)))))

(assert (=> mapNonEmpty!671 (= tp!1385 (and e!5605 mapRes!677))))

(assert (= (and mapNonEmpty!671 condMapEmpty!677) mapIsEmpty!677))

(assert (= (and mapNonEmpty!671 (not condMapEmpty!677)) mapNonEmpty!677))

(assert (= (and mapNonEmpty!677 ((_ is ValueCellFull!213) mapValue!677)) b!9782))

(assert (= (and mapNonEmpty!671 ((_ is ValueCellFull!213) mapDefault!677)) b!9783))

(declare-fun m!6209 () Bool)

(assert (=> mapNonEmpty!677 m!6209))

(declare-fun b_lambda!353 () Bool)

(assert (= b_lambda!351 (or (and start!1078 b_free!381) b_lambda!353)))

(check-sat (not b!9707) (not bm!283) (not b!9771) (not bm!280) (not d!937) (not b!9634) (not b_next!381) (not b!9767) (not b!9698) (not b_lambda!353) (not b!9697) (not bm!264) (not b!9647) (not b!9703) (not b!9719) (not d!947) (not b!9701) (not d!939) tp_is_empty!459 (not b!9775) b_and!539 (not b!9711) (not mapNonEmpty!677) (not bm!288) (not bm!282) (not b!9734) (not b!9768) (not d!949) (not bm!279) (not b!9696) (not d!951) (not b!9710) (not d!935) (not bm!289) (not b!9628) (not b!9640) (not b!9774) (not b!9752) (not d!929) (not b!9627) (not b!9649))
(check-sat b_and!539 (not b_next!381))
