; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!656 () Bool)

(assert start!656)

(declare-fun b_free!129 () Bool)

(declare-fun b_next!129 () Bool)

(assert (=> start!656 (= b_free!129 (not b_next!129))))

(declare-fun tp!604 () Bool)

(declare-fun b_and!267 () Bool)

(assert (=> start!656 (= tp!604 b_and!267)))

(declare-fun b!4344 () Bool)

(declare-fun e!2282 () Bool)

(declare-datatypes ((array!343 0))(
  ( (array!344 (arr!164 (Array (_ BitVec 32) (_ BitVec 64))) (size!226 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!343)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4344 (= e!2282 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!4346 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4346 (= e!2282 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!269 () Bool)

(declare-fun mapRes!269 () Bool)

(declare-fun tp!605 () Bool)

(declare-fun e!2283 () Bool)

(assert (=> mapNonEmpty!269 (= mapRes!269 (and tp!605 e!2283))))

(declare-datatypes ((V!453 0))(
  ( (V!454 (val!109 Int)) )
))
(declare-datatypes ((ValueCell!87 0))(
  ( (ValueCellFull!87 (v!1196 V!453)) (EmptyCell!87) )
))
(declare-fun mapValue!269 () ValueCell!87)

(declare-fun mapKey!269 () (_ BitVec 32))

(declare-fun mapRest!269 () (Array (_ BitVec 32) ValueCell!87))

(declare-datatypes ((array!345 0))(
  ( (array!346 (arr!165 (Array (_ BitVec 32) ValueCell!87)) (size!227 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!345)

(assert (=> mapNonEmpty!269 (= (arr!165 _values!1492) (store mapRest!269 mapKey!269 mapValue!269))))

(declare-fun b!4347 () Bool)

(declare-fun res!5681 () Bool)

(declare-fun e!2284 () Bool)

(assert (=> b!4347 (=> (not res!5681) (not e!2284))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!453)

(declare-fun zeroValue!1434 () V!453)

(declare-datatypes ((tuple2!98 0))(
  ( (tuple2!99 (_1!49 (_ BitVec 64)) (_2!49 V!453)) )
))
(declare-datatypes ((List!103 0))(
  ( (Nil!100) (Cons!99 (h!665 tuple2!98) (t!2230 List!103)) )
))
(declare-datatypes ((ListLongMap!103 0))(
  ( (ListLongMap!104 (toList!67 List!103)) )
))
(declare-fun contains!37 (ListLongMap!103 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!26 (array!343 array!345 (_ BitVec 32) (_ BitVec 32) V!453 V!453 (_ BitVec 32) Int) ListLongMap!103)

(assert (=> b!4347 (= res!5681 (contains!37 (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!4348 () Bool)

(declare-fun tp_is_empty!207 () Bool)

(assert (=> b!4348 (= e!2283 tp_is_empty!207)))

(declare-fun b!4349 () Bool)

(declare-fun res!5686 () Bool)

(assert (=> b!4349 (=> (not res!5686) (not e!2284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4349 (= res!5686 (validKeyInArray!0 k0!1278))))

(declare-fun b!4350 () Bool)

(declare-fun res!5685 () Bool)

(assert (=> b!4350 (=> (not res!5685) (not e!2284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!343 (_ BitVec 32)) Bool)

(assert (=> b!4350 (= res!5685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4351 () Bool)

(assert (=> b!4351 (= e!2284 (not (bvslt #b00000000000000000000000000000000 (size!226 _keys!1806))))))

(assert (=> b!4351 e!2282))

(declare-fun c!206 () Bool)

(assert (=> b!4351 (= c!206 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31 0))(
  ( (Unit!32) )
))
(declare-fun lt!594 () Unit!31)

(declare-fun lemmaKeyInListMapIsInArray!5 (array!343 array!345 (_ BitVec 32) (_ BitVec 32) V!453 V!453 (_ BitVec 64) Int) Unit!31)

(assert (=> b!4351 (= lt!594 (lemmaKeyInListMapIsInArray!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!4345 () Bool)

(declare-fun res!5682 () Bool)

(assert (=> b!4345 (=> (not res!5682) (not e!2284))))

(assert (=> b!4345 (= res!5682 (and (= (size!227 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!226 _keys!1806) (size!227 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun res!5684 () Bool)

(assert (=> start!656 (=> (not res!5684) (not e!2284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!656 (= res!5684 (validMask!0 mask!2250))))

(assert (=> start!656 e!2284))

(assert (=> start!656 tp!604))

(assert (=> start!656 true))

(declare-fun e!2281 () Bool)

(declare-fun array_inv!113 (array!345) Bool)

(assert (=> start!656 (and (array_inv!113 _values!1492) e!2281)))

(assert (=> start!656 tp_is_empty!207))

(declare-fun array_inv!114 (array!343) Bool)

(assert (=> start!656 (array_inv!114 _keys!1806)))

(declare-fun mapIsEmpty!269 () Bool)

(assert (=> mapIsEmpty!269 mapRes!269))

(declare-fun b!4352 () Bool)

(declare-fun e!2280 () Bool)

(assert (=> b!4352 (= e!2281 (and e!2280 mapRes!269))))

(declare-fun condMapEmpty!269 () Bool)

(declare-fun mapDefault!269 () ValueCell!87)

(assert (=> b!4352 (= condMapEmpty!269 (= (arr!165 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!87)) mapDefault!269)))))

(declare-fun b!4353 () Bool)

(assert (=> b!4353 (= e!2280 tp_is_empty!207)))

(declare-fun b!4354 () Bool)

(declare-fun res!5683 () Bool)

(assert (=> b!4354 (=> (not res!5683) (not e!2284))))

(declare-datatypes ((List!104 0))(
  ( (Nil!101) (Cons!100 (h!666 (_ BitVec 64)) (t!2231 List!104)) )
))
(declare-fun arrayNoDuplicates!0 (array!343 (_ BitVec 32) List!104) Bool)

(assert (=> b!4354 (= res!5683 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!101))))

(assert (= (and start!656 res!5684) b!4345))

(assert (= (and b!4345 res!5682) b!4350))

(assert (= (and b!4350 res!5685) b!4354))

(assert (= (and b!4354 res!5683) b!4347))

(assert (= (and b!4347 res!5681) b!4349))

(assert (= (and b!4349 res!5686) b!4351))

(assert (= (and b!4351 c!206) b!4344))

(assert (= (and b!4351 (not c!206)) b!4346))

(assert (= (and b!4352 condMapEmpty!269) mapIsEmpty!269))

(assert (= (and b!4352 (not condMapEmpty!269)) mapNonEmpty!269))

(get-info :version)

(assert (= (and mapNonEmpty!269 ((_ is ValueCellFull!87) mapValue!269)) b!4348))

(assert (= (and b!4352 ((_ is ValueCellFull!87) mapDefault!269)) b!4353))

(assert (= start!656 b!4352))

(declare-fun m!2295 () Bool)

(assert (=> b!4349 m!2295))

(declare-fun m!2297 () Bool)

(assert (=> b!4347 m!2297))

(assert (=> b!4347 m!2297))

(declare-fun m!2299 () Bool)

(assert (=> b!4347 m!2299))

(declare-fun m!2301 () Bool)

(assert (=> b!4344 m!2301))

(declare-fun m!2303 () Bool)

(assert (=> mapNonEmpty!269 m!2303))

(declare-fun m!2305 () Bool)

(assert (=> b!4350 m!2305))

(declare-fun m!2307 () Bool)

(assert (=> b!4354 m!2307))

(declare-fun m!2309 () Bool)

(assert (=> b!4351 m!2309))

(declare-fun m!2311 () Bool)

(assert (=> start!656 m!2311))

(declare-fun m!2313 () Bool)

(assert (=> start!656 m!2313))

(declare-fun m!2315 () Bool)

(assert (=> start!656 m!2315))

(check-sat (not b!4350) (not mapNonEmpty!269) (not b!4351) (not b!4349) (not b_next!129) (not start!656) tp_is_empty!207 b_and!267 (not b!4344) (not b!4347) (not b!4354))
(check-sat b_and!267 (not b_next!129))
(get-model)

(declare-fun d!669 () Bool)

(declare-fun e!2306 () Bool)

(assert (=> d!669 e!2306))

(declare-fun c!212 () Bool)

(assert (=> d!669 (= c!212 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!600 () Unit!31)

(declare-fun choose!135 (array!343 array!345 (_ BitVec 32) (_ BitVec 32) V!453 V!453 (_ BitVec 64) Int) Unit!31)

(assert (=> d!669 (= lt!600 (choose!135 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!669 (validMask!0 mask!2250)))

(assert (=> d!669 (= (lemmaKeyInListMapIsInArray!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!600)))

(declare-fun b!4392 () Bool)

(assert (=> b!4392 (= e!2306 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!4393 () Bool)

(assert (=> b!4393 (= e!2306 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!669 c!212) b!4392))

(assert (= (and d!669 (not c!212)) b!4393))

(declare-fun m!2339 () Bool)

(assert (=> d!669 m!2339))

(assert (=> d!669 m!2311))

(assert (=> b!4392 m!2301))

(assert (=> b!4351 d!669))

(declare-fun d!671 () Bool)

(declare-fun e!2312 () Bool)

(assert (=> d!671 e!2312))

(declare-fun res!5707 () Bool)

(assert (=> d!671 (=> res!5707 e!2312)))

(declare-fun lt!611 () Bool)

(assert (=> d!671 (= res!5707 (not lt!611))))

(declare-fun lt!609 () Bool)

(assert (=> d!671 (= lt!611 lt!609)))

(declare-fun lt!612 () Unit!31)

(declare-fun e!2311 () Unit!31)

(assert (=> d!671 (= lt!612 e!2311)))

(declare-fun c!215 () Bool)

(assert (=> d!671 (= c!215 lt!609)))

(declare-fun containsKey!1 (List!103 (_ BitVec 64)) Bool)

(assert (=> d!671 (= lt!609 (containsKey!1 (toList!67 (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!671 (= (contains!37 (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!611)))

(declare-fun b!4400 () Bool)

(declare-fun lt!610 () Unit!31)

(assert (=> b!4400 (= e!2311 lt!610)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1 (List!103 (_ BitVec 64)) Unit!31)

(assert (=> b!4400 (= lt!610 (lemmaContainsKeyImpliesGetValueByKeyDefined!1 (toList!67 (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!13 0))(
  ( (Some!12 (v!1198 V!453)) (None!11) )
))
(declare-fun isDefined!2 (Option!13) Bool)

(declare-fun getValueByKey!7 (List!103 (_ BitVec 64)) Option!13)

(assert (=> b!4400 (isDefined!2 (getValueByKey!7 (toList!67 (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!4401 () Bool)

(declare-fun Unit!35 () Unit!31)

(assert (=> b!4401 (= e!2311 Unit!35)))

(declare-fun b!4402 () Bool)

(assert (=> b!4402 (= e!2312 (isDefined!2 (getValueByKey!7 (toList!67 (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!671 c!215) b!4400))

(assert (= (and d!671 (not c!215)) b!4401))

(assert (= (and d!671 (not res!5707)) b!4402))

(declare-fun m!2341 () Bool)

(assert (=> d!671 m!2341))

(declare-fun m!2343 () Bool)

(assert (=> b!4400 m!2343))

(declare-fun m!2345 () Bool)

(assert (=> b!4400 m!2345))

(assert (=> b!4400 m!2345))

(declare-fun m!2347 () Bool)

(assert (=> b!4400 m!2347))

(assert (=> b!4402 m!2345))

(assert (=> b!4402 m!2345))

(assert (=> b!4402 m!2347))

(assert (=> b!4347 d!671))

(declare-fun b!4445 () Bool)

(declare-fun e!2350 () Bool)

(declare-fun lt!664 () ListLongMap!103)

(declare-fun apply!17 (ListLongMap!103 (_ BitVec 64)) V!453)

(assert (=> b!4445 (= e!2350 (= (apply!17 lt!664 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun bm!59 () Bool)

(declare-fun call!68 () Bool)

(assert (=> bm!59 (= call!68 (contains!37 lt!664 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4446 () Bool)

(declare-fun e!2349 () ListLongMap!103)

(declare-fun call!63 () ListLongMap!103)

(assert (=> b!4446 (= e!2349 call!63)))

(declare-fun b!4447 () Bool)

(declare-fun e!2346 () Bool)

(assert (=> b!4447 (= e!2346 (validKeyInArray!0 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun call!64 () ListLongMap!103)

(declare-fun bm!60 () Bool)

(declare-fun call!65 () ListLongMap!103)

(declare-fun call!66 () ListLongMap!103)

(declare-fun call!67 () ListLongMap!103)

(declare-fun c!229 () Bool)

(declare-fun c!233 () Bool)

(declare-fun +!4 (ListLongMap!103 tuple2!98) ListLongMap!103)

(assert (=> bm!60 (= call!65 (+!4 (ite c!233 call!66 (ite c!229 call!67 call!64)) (ite (or c!233 c!229) (tuple2!99 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!99 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!4449 () Bool)

(declare-fun c!231 () Bool)

(assert (=> b!4449 (= c!231 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2341 () ListLongMap!103)

(assert (=> b!4449 (= e!2349 e!2341)))

(declare-fun b!4450 () Bool)

(assert (=> b!4450 (= e!2341 call!64)))

(declare-fun bm!61 () Bool)

(assert (=> bm!61 (= call!63 call!65)))

(declare-fun b!4451 () Bool)

(declare-fun e!2344 () Bool)

(assert (=> b!4451 (= e!2344 (not call!68))))

(declare-fun b!4452 () Bool)

(declare-fun e!2347 () Bool)

(assert (=> b!4452 (= e!2347 (= (apply!17 lt!664 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun b!4453 () Bool)

(declare-fun res!5733 () Bool)

(declare-fun e!2348 () Bool)

(assert (=> b!4453 (=> (not res!5733) (not e!2348))))

(declare-fun e!2351 () Bool)

(assert (=> b!4453 (= res!5733 e!2351)))

(declare-fun res!5734 () Bool)

(assert (=> b!4453 (=> res!5734 e!2351)))

(assert (=> b!4453 (= res!5734 (not e!2346))))

(declare-fun res!5727 () Bool)

(assert (=> b!4453 (=> (not res!5727) (not e!2346))))

(assert (=> b!4453 (= res!5727 (bvslt #b00000000000000000000000000000000 (size!226 _keys!1806)))))

(declare-fun b!4454 () Bool)

(declare-fun e!2340 () Unit!31)

(declare-fun lt!673 () Unit!31)

(assert (=> b!4454 (= e!2340 lt!673)))

(declare-fun lt!669 () ListLongMap!103)

(declare-fun getCurrentListMapNoExtraKeys!1 (array!343 array!345 (_ BitVec 32) (_ BitVec 32) V!453 V!453 (_ BitVec 32) Int) ListLongMap!103)

(assert (=> b!4454 (= lt!669 (getCurrentListMapNoExtraKeys!1 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!672 () (_ BitVec 64))

(assert (=> b!4454 (= lt!672 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!665 () (_ BitVec 64))

(assert (=> b!4454 (= lt!665 (select (arr!164 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!668 () Unit!31)

(declare-fun addStillContains!2 (ListLongMap!103 (_ BitVec 64) V!453 (_ BitVec 64)) Unit!31)

(assert (=> b!4454 (= lt!668 (addStillContains!2 lt!669 lt!672 zeroValue!1434 lt!665))))

(assert (=> b!4454 (contains!37 (+!4 lt!669 (tuple2!99 lt!672 zeroValue!1434)) lt!665)))

(declare-fun lt!674 () Unit!31)

(assert (=> b!4454 (= lt!674 lt!668)))

(declare-fun lt!659 () ListLongMap!103)

(assert (=> b!4454 (= lt!659 (getCurrentListMapNoExtraKeys!1 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!677 () (_ BitVec 64))

(assert (=> b!4454 (= lt!677 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!663 () (_ BitVec 64))

(assert (=> b!4454 (= lt!663 (select (arr!164 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!670 () Unit!31)

(declare-fun addApplyDifferent!2 (ListLongMap!103 (_ BitVec 64) V!453 (_ BitVec 64)) Unit!31)

(assert (=> b!4454 (= lt!670 (addApplyDifferent!2 lt!659 lt!677 minValue!1434 lt!663))))

(assert (=> b!4454 (= (apply!17 (+!4 lt!659 (tuple2!99 lt!677 minValue!1434)) lt!663) (apply!17 lt!659 lt!663))))

(declare-fun lt!657 () Unit!31)

(assert (=> b!4454 (= lt!657 lt!670)))

(declare-fun lt!667 () ListLongMap!103)

(assert (=> b!4454 (= lt!667 (getCurrentListMapNoExtraKeys!1 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!661 () (_ BitVec 64))

(assert (=> b!4454 (= lt!661 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!678 () (_ BitVec 64))

(assert (=> b!4454 (= lt!678 (select (arr!164 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!660 () Unit!31)

(assert (=> b!4454 (= lt!660 (addApplyDifferent!2 lt!667 lt!661 zeroValue!1434 lt!678))))

(assert (=> b!4454 (= (apply!17 (+!4 lt!667 (tuple2!99 lt!661 zeroValue!1434)) lt!678) (apply!17 lt!667 lt!678))))

(declare-fun lt!666 () Unit!31)

(assert (=> b!4454 (= lt!666 lt!660)))

(declare-fun lt!662 () ListLongMap!103)

(assert (=> b!4454 (= lt!662 (getCurrentListMapNoExtraKeys!1 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!671 () (_ BitVec 64))

(assert (=> b!4454 (= lt!671 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!675 () (_ BitVec 64))

(assert (=> b!4454 (= lt!675 (select (arr!164 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!4454 (= lt!673 (addApplyDifferent!2 lt!662 lt!671 minValue!1434 lt!675))))

(assert (=> b!4454 (= (apply!17 (+!4 lt!662 (tuple2!99 lt!671 minValue!1434)) lt!675) (apply!17 lt!662 lt!675))))

(declare-fun b!4455 () Bool)

(declare-fun res!5728 () Bool)

(assert (=> b!4455 (=> (not res!5728) (not e!2348))))

(declare-fun e!2339 () Bool)

(assert (=> b!4455 (= res!5728 e!2339)))

(declare-fun c!230 () Bool)

(assert (=> b!4455 (= c!230 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4456 () Bool)

(declare-fun Unit!36 () Unit!31)

(assert (=> b!4456 (= e!2340 Unit!36)))

(declare-fun b!4457 () Bool)

(declare-fun call!62 () Bool)

(assert (=> b!4457 (= e!2339 (not call!62))))

(declare-fun bm!62 () Bool)

(assert (=> bm!62 (= call!64 call!67)))

(declare-fun b!4458 () Bool)

(declare-fun e!2342 () Bool)

(declare-fun get!87 (ValueCell!87 V!453) V!453)

(declare-fun dynLambda!39 (Int (_ BitVec 64)) V!453)

(assert (=> b!4458 (= e!2342 (= (apply!17 lt!664 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)) (get!87 (select (arr!165 _values!1492) #b00000000000000000000000000000000) (dynLambda!39 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!227 _values!1492)))))

(assert (=> b!4458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!226 _keys!1806)))))

(declare-fun b!4459 () Bool)

(declare-fun e!2345 () Bool)

(assert (=> b!4459 (= e!2345 (validKeyInArray!0 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!4448 () Bool)

(assert (=> b!4448 (= e!2348 e!2344)))

(declare-fun c!232 () Bool)

(assert (=> b!4448 (= c!232 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!673 () Bool)

(assert (=> d!673 e!2348))

(declare-fun res!5730 () Bool)

(assert (=> d!673 (=> (not res!5730) (not e!2348))))

(assert (=> d!673 (= res!5730 (or (bvsge #b00000000000000000000000000000000 (size!226 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!226 _keys!1806)))))))

(declare-fun lt!676 () ListLongMap!103)

(assert (=> d!673 (= lt!664 lt!676)))

(declare-fun lt!658 () Unit!31)

(assert (=> d!673 (= lt!658 e!2340)))

(declare-fun c!228 () Bool)

(assert (=> d!673 (= c!228 e!2345)))

(declare-fun res!5726 () Bool)

(assert (=> d!673 (=> (not res!5726) (not e!2345))))

(assert (=> d!673 (= res!5726 (bvslt #b00000000000000000000000000000000 (size!226 _keys!1806)))))

(declare-fun e!2343 () ListLongMap!103)

(assert (=> d!673 (= lt!676 e!2343)))

(assert (=> d!673 (= c!233 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!673 (validMask!0 mask!2250)))

(assert (=> d!673 (= (getCurrentListMap!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!664)))

(declare-fun bm!63 () Bool)

(assert (=> bm!63 (= call!67 call!66)))

(declare-fun b!4460 () Bool)

(assert (=> b!4460 (= e!2341 call!63)))

(declare-fun b!4461 () Bool)

(assert (=> b!4461 (= e!2339 e!2350)))

(declare-fun res!5729 () Bool)

(assert (=> b!4461 (= res!5729 call!62)))

(assert (=> b!4461 (=> (not res!5729) (not e!2350))))

(declare-fun b!4462 () Bool)

(assert (=> b!4462 (= e!2351 e!2342)))

(declare-fun res!5731 () Bool)

(assert (=> b!4462 (=> (not res!5731) (not e!2342))))

(assert (=> b!4462 (= res!5731 (contains!37 lt!664 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!4462 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!226 _keys!1806)))))

(declare-fun b!4463 () Bool)

(assert (=> b!4463 (= e!2344 e!2347)))

(declare-fun res!5732 () Bool)

(assert (=> b!4463 (= res!5732 call!68)))

(assert (=> b!4463 (=> (not res!5732) (not e!2347))))

(declare-fun bm!64 () Bool)

(assert (=> bm!64 (= call!66 (getCurrentListMapNoExtraKeys!1 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!4464 () Bool)

(assert (=> b!4464 (= e!2343 e!2349)))

(assert (=> b!4464 (= c!229 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4465 () Bool)

(assert (=> b!4465 (= e!2343 (+!4 call!65 (tuple2!99 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun bm!65 () Bool)

(assert (=> bm!65 (= call!62 (contains!37 lt!664 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!673 c!233) b!4465))

(assert (= (and d!673 (not c!233)) b!4464))

(assert (= (and b!4464 c!229) b!4446))

(assert (= (and b!4464 (not c!229)) b!4449))

(assert (= (and b!4449 c!231) b!4460))

(assert (= (and b!4449 (not c!231)) b!4450))

(assert (= (or b!4460 b!4450) bm!62))

(assert (= (or b!4446 bm!62) bm!63))

(assert (= (or b!4446 b!4460) bm!61))

(assert (= (or b!4465 bm!63) bm!64))

(assert (= (or b!4465 bm!61) bm!60))

(assert (= (and d!673 res!5726) b!4459))

(assert (= (and d!673 c!228) b!4454))

(assert (= (and d!673 (not c!228)) b!4456))

(assert (= (and d!673 res!5730) b!4453))

(assert (= (and b!4453 res!5727) b!4447))

(assert (= (and b!4453 (not res!5734)) b!4462))

(assert (= (and b!4462 res!5731) b!4458))

(assert (= (and b!4453 res!5733) b!4455))

(assert (= (and b!4455 c!230) b!4461))

(assert (= (and b!4455 (not c!230)) b!4457))

(assert (= (and b!4461 res!5729) b!4445))

(assert (= (or b!4461 b!4457) bm!65))

(assert (= (and b!4455 res!5728) b!4448))

(assert (= (and b!4448 c!232) b!4463))

(assert (= (and b!4448 (not c!232)) b!4451))

(assert (= (and b!4463 res!5732) b!4452))

(assert (= (or b!4463 b!4451) bm!59))

(declare-fun b_lambda!319 () Bool)

(assert (=> (not b_lambda!319) (not b!4458)))

(declare-fun t!2234 () Bool)

(declare-fun tb!127 () Bool)

(assert (=> (and start!656 (= defaultEntry!1495 defaultEntry!1495) t!2234) tb!127))

(declare-fun result!183 () Bool)

(assert (=> tb!127 (= result!183 tp_is_empty!207)))

(assert (=> b!4458 t!2234))

(declare-fun b_and!271 () Bool)

(assert (= b_and!267 (and (=> t!2234 result!183) b_and!271)))

(declare-fun m!2349 () Bool)

(assert (=> b!4445 m!2349))

(declare-fun m!2351 () Bool)

(assert (=> b!4459 m!2351))

(assert (=> b!4459 m!2351))

(declare-fun m!2353 () Bool)

(assert (=> b!4459 m!2353))

(declare-fun m!2355 () Bool)

(assert (=> b!4465 m!2355))

(assert (=> b!4454 m!2351))

(declare-fun m!2357 () Bool)

(assert (=> b!4454 m!2357))

(declare-fun m!2359 () Bool)

(assert (=> b!4454 m!2359))

(declare-fun m!2361 () Bool)

(assert (=> b!4454 m!2361))

(declare-fun m!2363 () Bool)

(assert (=> b!4454 m!2363))

(declare-fun m!2365 () Bool)

(assert (=> b!4454 m!2365))

(declare-fun m!2367 () Bool)

(assert (=> b!4454 m!2367))

(declare-fun m!2369 () Bool)

(assert (=> b!4454 m!2369))

(declare-fun m!2371 () Bool)

(assert (=> b!4454 m!2371))

(declare-fun m!2373 () Bool)

(assert (=> b!4454 m!2373))

(declare-fun m!2375 () Bool)

(assert (=> b!4454 m!2375))

(assert (=> b!4454 m!2363))

(declare-fun m!2377 () Bool)

(assert (=> b!4454 m!2377))

(declare-fun m!2379 () Bool)

(assert (=> b!4454 m!2379))

(assert (=> b!4454 m!2359))

(declare-fun m!2381 () Bool)

(assert (=> b!4454 m!2381))

(assert (=> b!4454 m!2367))

(assert (=> b!4454 m!2375))

(declare-fun m!2383 () Bool)

(assert (=> b!4454 m!2383))

(declare-fun m!2385 () Bool)

(assert (=> b!4454 m!2385))

(declare-fun m!2387 () Bool)

(assert (=> b!4454 m!2387))

(assert (=> b!4447 m!2351))

(assert (=> b!4447 m!2351))

(assert (=> b!4447 m!2353))

(declare-fun m!2389 () Bool)

(assert (=> bm!59 m!2389))

(declare-fun m!2391 () Bool)

(assert (=> bm!65 m!2391))

(assert (=> bm!64 m!2357))

(assert (=> b!4458 m!2351))

(declare-fun m!2393 () Bool)

(assert (=> b!4458 m!2393))

(declare-fun m!2395 () Bool)

(assert (=> b!4458 m!2395))

(assert (=> b!4458 m!2393))

(declare-fun m!2397 () Bool)

(assert (=> b!4458 m!2397))

(assert (=> b!4458 m!2351))

(declare-fun m!2399 () Bool)

(assert (=> b!4458 m!2399))

(assert (=> b!4458 m!2395))

(declare-fun m!2401 () Bool)

(assert (=> b!4452 m!2401))

(assert (=> b!4462 m!2351))

(assert (=> b!4462 m!2351))

(declare-fun m!2403 () Bool)

(assert (=> b!4462 m!2403))

(declare-fun m!2405 () Bool)

(assert (=> bm!60 m!2405))

(assert (=> d!673 m!2311))

(assert (=> b!4347 d!673))

(declare-fun d!675 () Bool)

(assert (=> d!675 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!656 d!675))

(declare-fun d!677 () Bool)

(assert (=> d!677 (= (array_inv!113 _values!1492) (bvsge (size!227 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!656 d!677))

(declare-fun d!679 () Bool)

(assert (=> d!679 (= (array_inv!114 _keys!1806) (bvsge (size!226 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!656 d!679))

(declare-fun d!681 () Bool)

(assert (=> d!681 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4349 d!681))

(declare-fun d!683 () Bool)

(declare-fun res!5739 () Bool)

(declare-fun e!2356 () Bool)

(assert (=> d!683 (=> res!5739 e!2356)))

(assert (=> d!683 (= res!5739 (= (select (arr!164 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!683 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!2356)))

(declare-fun b!4472 () Bool)

(declare-fun e!2357 () Bool)

(assert (=> b!4472 (= e!2356 e!2357)))

(declare-fun res!5740 () Bool)

(assert (=> b!4472 (=> (not res!5740) (not e!2357))))

(assert (=> b!4472 (= res!5740 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!226 _keys!1806)))))

(declare-fun b!4473 () Bool)

(assert (=> b!4473 (= e!2357 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!683 (not res!5739)) b!4472))

(assert (= (and b!4472 res!5740) b!4473))

(assert (=> d!683 m!2351))

(declare-fun m!2407 () Bool)

(assert (=> b!4473 m!2407))

(assert (=> b!4344 d!683))

(declare-fun b!4482 () Bool)

(declare-fun e!2366 () Bool)

(declare-fun e!2364 () Bool)

(assert (=> b!4482 (= e!2366 e!2364)))

(declare-fun lt!687 () (_ BitVec 64))

(assert (=> b!4482 (= lt!687 (select (arr!164 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!685 () Unit!31)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!343 (_ BitVec 64) (_ BitVec 32)) Unit!31)

(assert (=> b!4482 (= lt!685 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!687 #b00000000000000000000000000000000))))

(assert (=> b!4482 (arrayContainsKey!0 _keys!1806 lt!687 #b00000000000000000000000000000000)))

(declare-fun lt!686 () Unit!31)

(assert (=> b!4482 (= lt!686 lt!685)))

(declare-fun res!5746 () Bool)

(declare-datatypes ((SeekEntryResult!10 0))(
  ( (MissingZero!10 (index!2159 (_ BitVec 32))) (Found!10 (index!2160 (_ BitVec 32))) (Intermediate!10 (undefined!822 Bool) (index!2161 (_ BitVec 32)) (x!2366 (_ BitVec 32))) (Undefined!10) (MissingVacant!10 (index!2162 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!343 (_ BitVec 32)) SeekEntryResult!10)

(assert (=> b!4482 (= res!5746 (= (seekEntryOrOpen!0 (select (arr!164 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!10 #b00000000000000000000000000000000)))))

(assert (=> b!4482 (=> (not res!5746) (not e!2364))))

(declare-fun b!4483 () Bool)

(declare-fun call!71 () Bool)

(assert (=> b!4483 (= e!2366 call!71)))

(declare-fun d!685 () Bool)

(declare-fun res!5745 () Bool)

(declare-fun e!2365 () Bool)

(assert (=> d!685 (=> res!5745 e!2365)))

(assert (=> d!685 (= res!5745 (bvsge #b00000000000000000000000000000000 (size!226 _keys!1806)))))

(assert (=> d!685 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!2365)))

(declare-fun b!4484 () Bool)

(assert (=> b!4484 (= e!2364 call!71)))

(declare-fun b!4485 () Bool)

(assert (=> b!4485 (= e!2365 e!2366)))

(declare-fun c!236 () Bool)

(assert (=> b!4485 (= c!236 (validKeyInArray!0 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!68 () Bool)

(assert (=> bm!68 (= call!71 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(assert (= (and d!685 (not res!5745)) b!4485))

(assert (= (and b!4485 c!236) b!4482))

(assert (= (and b!4485 (not c!236)) b!4483))

(assert (= (and b!4482 res!5746) b!4484))

(assert (= (or b!4484 b!4483) bm!68))

(assert (=> b!4482 m!2351))

(declare-fun m!2409 () Bool)

(assert (=> b!4482 m!2409))

(declare-fun m!2411 () Bool)

(assert (=> b!4482 m!2411))

(assert (=> b!4482 m!2351))

(declare-fun m!2413 () Bool)

(assert (=> b!4482 m!2413))

(assert (=> b!4485 m!2351))

(assert (=> b!4485 m!2351))

(assert (=> b!4485 m!2353))

(declare-fun m!2415 () Bool)

(assert (=> bm!68 m!2415))

(assert (=> b!4350 d!685))

(declare-fun b!4496 () Bool)

(declare-fun e!2378 () Bool)

(declare-fun call!74 () Bool)

(assert (=> b!4496 (= e!2378 call!74)))

(declare-fun b!4497 () Bool)

(declare-fun e!2376 () Bool)

(declare-fun contains!38 (List!104 (_ BitVec 64)) Bool)

(assert (=> b!4497 (= e!2376 (contains!38 Nil!101 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun d!687 () Bool)

(declare-fun res!5753 () Bool)

(declare-fun e!2375 () Bool)

(assert (=> d!687 (=> res!5753 e!2375)))

(assert (=> d!687 (= res!5753 (bvsge #b00000000000000000000000000000000 (size!226 _keys!1806)))))

(assert (=> d!687 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!101) e!2375)))

(declare-fun b!4498 () Bool)

(assert (=> b!4498 (= e!2378 call!74)))

(declare-fun bm!71 () Bool)

(declare-fun c!239 () Bool)

(assert (=> bm!71 (= call!74 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!239 (Cons!100 (select (arr!164 _keys!1806) #b00000000000000000000000000000000) Nil!101) Nil!101)))))

(declare-fun b!4499 () Bool)

(declare-fun e!2377 () Bool)

(assert (=> b!4499 (= e!2375 e!2377)))

(declare-fun res!5754 () Bool)

(assert (=> b!4499 (=> (not res!5754) (not e!2377))))

(assert (=> b!4499 (= res!5754 (not e!2376))))

(declare-fun res!5755 () Bool)

(assert (=> b!4499 (=> (not res!5755) (not e!2376))))

(assert (=> b!4499 (= res!5755 (validKeyInArray!0 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!4500 () Bool)

(assert (=> b!4500 (= e!2377 e!2378)))

(assert (=> b!4500 (= c!239 (validKeyInArray!0 (select (arr!164 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!687 (not res!5753)) b!4499))

(assert (= (and b!4499 res!5755) b!4497))

(assert (= (and b!4499 res!5754) b!4500))

(assert (= (and b!4500 c!239) b!4496))

(assert (= (and b!4500 (not c!239)) b!4498))

(assert (= (or b!4496 b!4498) bm!71))

(assert (=> b!4497 m!2351))

(assert (=> b!4497 m!2351))

(declare-fun m!2417 () Bool)

(assert (=> b!4497 m!2417))

(assert (=> bm!71 m!2351))

(declare-fun m!2419 () Bool)

(assert (=> bm!71 m!2419))

(assert (=> b!4499 m!2351))

(assert (=> b!4499 m!2351))

(assert (=> b!4499 m!2353))

(assert (=> b!4500 m!2351))

(assert (=> b!4500 m!2351))

(assert (=> b!4500 m!2353))

(assert (=> b!4354 d!687))

(declare-fun mapNonEmpty!275 () Bool)

(declare-fun mapRes!275 () Bool)

(declare-fun tp!614 () Bool)

(declare-fun e!2384 () Bool)

(assert (=> mapNonEmpty!275 (= mapRes!275 (and tp!614 e!2384))))

(declare-fun mapKey!275 () (_ BitVec 32))

(declare-fun mapValue!275 () ValueCell!87)

(declare-fun mapRest!275 () (Array (_ BitVec 32) ValueCell!87))

(assert (=> mapNonEmpty!275 (= mapRest!269 (store mapRest!275 mapKey!275 mapValue!275))))

(declare-fun condMapEmpty!275 () Bool)

(declare-fun mapDefault!275 () ValueCell!87)

(assert (=> mapNonEmpty!269 (= condMapEmpty!275 (= mapRest!269 ((as const (Array (_ BitVec 32) ValueCell!87)) mapDefault!275)))))

(declare-fun e!2383 () Bool)

(assert (=> mapNonEmpty!269 (= tp!605 (and e!2383 mapRes!275))))

(declare-fun mapIsEmpty!275 () Bool)

(assert (=> mapIsEmpty!275 mapRes!275))

(declare-fun b!4508 () Bool)

(assert (=> b!4508 (= e!2383 tp_is_empty!207)))

(declare-fun b!4507 () Bool)

(assert (=> b!4507 (= e!2384 tp_is_empty!207)))

(assert (= (and mapNonEmpty!269 condMapEmpty!275) mapIsEmpty!275))

(assert (= (and mapNonEmpty!269 (not condMapEmpty!275)) mapNonEmpty!275))

(assert (= (and mapNonEmpty!275 ((_ is ValueCellFull!87) mapValue!275)) b!4507))

(assert (= (and mapNonEmpty!269 ((_ is ValueCellFull!87) mapDefault!275)) b!4508))

(declare-fun m!2421 () Bool)

(assert (=> mapNonEmpty!275 m!2421))

(declare-fun b_lambda!321 () Bool)

(assert (= b_lambda!319 (or (and start!656 b_free!129) b_lambda!321)))

(check-sat (not bm!60) (not b!4485) (not b!4462) (not b!4452) (not bm!64) (not b!4497) (not b!4499) (not b!4445) (not bm!65) (not b!4402) (not bm!71) (not d!671) (not b_lambda!321) (not b!4392) (not bm!68) (not d!669) (not b!4447) (not d!673) (not b!4465) (not b!4400) (not b!4500) (not b_next!129) tp_is_empty!207 (not b!4454) (not b!4459) (not b!4473) (not b!4482) (not mapNonEmpty!275) b_and!271 (not b!4458) (not bm!59))
(check-sat b_and!271 (not b_next!129))
