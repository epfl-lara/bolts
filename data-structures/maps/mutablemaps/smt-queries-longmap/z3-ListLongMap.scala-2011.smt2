; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35078 () Bool)

(assert start!35078)

(declare-fun b_free!7737 () Bool)

(declare-fun b_next!7737 () Bool)

(assert (=> start!35078 (= b_free!7737 (not b_next!7737))))

(declare-fun tp!26793 () Bool)

(declare-fun b_and!14987 () Bool)

(assert (=> start!35078 (= tp!26793 b_and!14987)))

(declare-fun b!351345 () Bool)

(declare-fun e!215173 () Bool)

(declare-fun tp_is_empty!7689 () Bool)

(assert (=> b!351345 (= e!215173 tp_is_empty!7689)))

(declare-fun b!351346 () Bool)

(declare-fun e!215176 () Bool)

(assert (=> b!351346 (= e!215176 tp_is_empty!7689)))

(declare-fun mapNonEmpty!13008 () Bool)

(declare-fun mapRes!13008 () Bool)

(declare-fun tp!26792 () Bool)

(assert (=> mapNonEmpty!13008 (= mapRes!13008 (and tp!26792 e!215173))))

(declare-datatypes ((V!11229 0))(
  ( (V!11230 (val!3889 Int)) )
))
(declare-datatypes ((ValueCell!3501 0))(
  ( (ValueCellFull!3501 (v!6073 V!11229)) (EmptyCell!3501) )
))
(declare-fun mapValue!13008 () ValueCell!3501)

(declare-fun mapKey!13008 () (_ BitVec 32))

(declare-fun mapRest!13008 () (Array (_ BitVec 32) ValueCell!3501))

(declare-datatypes ((array!18921 0))(
  ( (array!18922 (arr!8962 (Array (_ BitVec 32) ValueCell!3501)) (size!9314 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18921)

(assert (=> mapNonEmpty!13008 (= (arr!8962 _values!1525) (store mapRest!13008 mapKey!13008 mapValue!13008))))

(declare-fun b!351347 () Bool)

(declare-fun res!194912 () Bool)

(declare-fun e!215172 () Bool)

(assert (=> b!351347 (=> (not res!194912) (not e!215172))))

(declare-datatypes ((array!18923 0))(
  ( (array!18924 (arr!8963 (Array (_ BitVec 32) (_ BitVec 64))) (size!9315 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18923)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351347 (= res!194912 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351348 () Bool)

(declare-fun e!215175 () Bool)

(assert (=> b!351348 (= e!215172 e!215175)))

(declare-fun res!194911 () Bool)

(assert (=> b!351348 (=> (not res!194911) (not e!215175))))

(declare-fun lt!164816 () (_ BitVec 32))

(assert (=> b!351348 (= res!194911 (and (bvsge lt!164816 #b00000000000000000000000000000000) (bvslt lt!164816 (size!9315 _keys!1895))))))

(declare-fun arrayScanForKey!0 (array!18923 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351348 (= lt!164816 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351349 () Bool)

(declare-fun res!194916 () Bool)

(declare-fun e!215170 () Bool)

(assert (=> b!351349 (=> (not res!194916) (not e!215170))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18923 (_ BitVec 32)) Bool)

(assert (=> b!351349 (= res!194916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13008 () Bool)

(assert (=> mapIsEmpty!13008 mapRes!13008))

(declare-fun b!351350 () Bool)

(assert (=> b!351350 (= e!215170 e!215172)))

(declare-fun res!194910 () Bool)

(assert (=> b!351350 (=> (not res!194910) (not e!215172))))

(declare-datatypes ((SeekEntryResult!3446 0))(
  ( (MissingZero!3446 (index!15963 (_ BitVec 32))) (Found!3446 (index!15964 (_ BitVec 32))) (Intermediate!3446 (undefined!4258 Bool) (index!15965 (_ BitVec 32)) (x!34971 (_ BitVec 32))) (Undefined!3446) (MissingVacant!3446 (index!15966 (_ BitVec 32))) )
))
(declare-fun lt!164817 () SeekEntryResult!3446)

(get-info :version)

(assert (=> b!351350 (= res!194910 (and (not ((_ is Found!3446) lt!164817)) (not ((_ is MissingZero!3446) lt!164817)) ((_ is MissingVacant!3446) lt!164817)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18923 (_ BitVec 32)) SeekEntryResult!3446)

(assert (=> b!351350 (= lt!164817 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351351 () Bool)

(declare-fun res!194915 () Bool)

(assert (=> b!351351 (=> (not res!194915) (not e!215170))))

(declare-datatypes ((List!5240 0))(
  ( (Nil!5237) (Cons!5236 (h!6092 (_ BitVec 64)) (t!10388 List!5240)) )
))
(declare-fun arrayNoDuplicates!0 (array!18923 (_ BitVec 32) List!5240) Bool)

(assert (=> b!351351 (= res!194915 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5237))))

(declare-fun b!351352 () Bool)

(declare-fun e!215174 () Bool)

(assert (=> b!351352 (= e!215174 (and e!215176 mapRes!13008))))

(declare-fun condMapEmpty!13008 () Bool)

(declare-fun mapDefault!13008 () ValueCell!3501)

(assert (=> b!351352 (= condMapEmpty!13008 (= (arr!8962 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3501)) mapDefault!13008)))))

(declare-fun res!194908 () Bool)

(assert (=> start!35078 (=> (not res!194908) (not e!215170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35078 (= res!194908 (validMask!0 mask!2385))))

(assert (=> start!35078 e!215170))

(assert (=> start!35078 true))

(assert (=> start!35078 tp_is_empty!7689))

(assert (=> start!35078 tp!26793))

(declare-fun array_inv!6604 (array!18921) Bool)

(assert (=> start!35078 (and (array_inv!6604 _values!1525) e!215174)))

(declare-fun array_inv!6605 (array!18923) Bool)

(assert (=> start!35078 (array_inv!6605 _keys!1895)))

(declare-fun b!351353 () Bool)

(declare-fun res!194909 () Bool)

(assert (=> b!351353 (=> (not res!194909) (not e!215170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351353 (= res!194909 (validKeyInArray!0 k0!1348))))

(declare-fun b!351354 () Bool)

(assert (=> b!351354 (= e!215175 (not (arrayContainsKey!0 _keys!1895 k0!1348 lt!164816)))))

(declare-fun b!351355 () Bool)

(declare-fun res!194914 () Bool)

(assert (=> b!351355 (=> (not res!194914) (not e!215170))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351355 (= res!194914 (and (= (size!9314 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9315 _keys!1895) (size!9314 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351356 () Bool)

(declare-fun res!194913 () Bool)

(assert (=> b!351356 (=> (not res!194913) (not e!215170))))

(declare-fun zeroValue!1467 () V!11229)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11229)

(declare-datatypes ((tuple2!5602 0))(
  ( (tuple2!5603 (_1!2811 (_ BitVec 64)) (_2!2811 V!11229)) )
))
(declare-datatypes ((List!5241 0))(
  ( (Nil!5238) (Cons!5237 (h!6093 tuple2!5602) (t!10389 List!5241)) )
))
(declare-datatypes ((ListLongMap!4529 0))(
  ( (ListLongMap!4530 (toList!2280 List!5241)) )
))
(declare-fun contains!2346 (ListLongMap!4529 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1797 (array!18923 array!18921 (_ BitVec 32) (_ BitVec 32) V!11229 V!11229 (_ BitVec 32) Int) ListLongMap!4529)

(assert (=> b!351356 (= res!194913 (not (contains!2346 (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!35078 res!194908) b!351355))

(assert (= (and b!351355 res!194914) b!351349))

(assert (= (and b!351349 res!194916) b!351351))

(assert (= (and b!351351 res!194915) b!351353))

(assert (= (and b!351353 res!194909) b!351356))

(assert (= (and b!351356 res!194913) b!351350))

(assert (= (and b!351350 res!194910) b!351347))

(assert (= (and b!351347 res!194912) b!351348))

(assert (= (and b!351348 res!194911) b!351354))

(assert (= (and b!351352 condMapEmpty!13008) mapIsEmpty!13008))

(assert (= (and b!351352 (not condMapEmpty!13008)) mapNonEmpty!13008))

(assert (= (and mapNonEmpty!13008 ((_ is ValueCellFull!3501) mapValue!13008)) b!351345))

(assert (= (and b!351352 ((_ is ValueCellFull!3501) mapDefault!13008)) b!351346))

(assert (= start!35078 b!351352))

(declare-fun m!351279 () Bool)

(assert (=> b!351356 m!351279))

(assert (=> b!351356 m!351279))

(declare-fun m!351281 () Bool)

(assert (=> b!351356 m!351281))

(declare-fun m!351283 () Bool)

(assert (=> b!351353 m!351283))

(declare-fun m!351285 () Bool)

(assert (=> b!351347 m!351285))

(declare-fun m!351287 () Bool)

(assert (=> b!351349 m!351287))

(declare-fun m!351289 () Bool)

(assert (=> b!351354 m!351289))

(declare-fun m!351291 () Bool)

(assert (=> b!351351 m!351291))

(declare-fun m!351293 () Bool)

(assert (=> b!351348 m!351293))

(declare-fun m!351295 () Bool)

(assert (=> b!351350 m!351295))

(declare-fun m!351297 () Bool)

(assert (=> start!35078 m!351297))

(declare-fun m!351299 () Bool)

(assert (=> start!35078 m!351299))

(declare-fun m!351301 () Bool)

(assert (=> start!35078 m!351301))

(declare-fun m!351303 () Bool)

(assert (=> mapNonEmpty!13008 m!351303))

(check-sat tp_is_empty!7689 (not b!351354) (not b!351348) (not b!351356) (not b!351353) (not b!351349) (not mapNonEmpty!13008) (not b!351350) (not b!351351) (not start!35078) b_and!14987 (not b_next!7737) (not b!351347))
(check-sat b_and!14987 (not b_next!7737))
(get-model)

(declare-fun d!71341 () Bool)

(declare-fun lt!164826 () (_ BitVec 32))

(assert (=> d!71341 (and (or (bvslt lt!164826 #b00000000000000000000000000000000) (bvsge lt!164826 (size!9315 _keys!1895)) (and (bvsge lt!164826 #b00000000000000000000000000000000) (bvslt lt!164826 (size!9315 _keys!1895)))) (bvsge lt!164826 #b00000000000000000000000000000000) (bvslt lt!164826 (size!9315 _keys!1895)) (= (select (arr!8963 _keys!1895) lt!164826) k0!1348))))

(declare-fun e!215200 () (_ BitVec 32))

(assert (=> d!71341 (= lt!164826 e!215200)))

(declare-fun c!53381 () Bool)

(assert (=> d!71341 (= c!53381 (= (select (arr!8963 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71341 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9315 _keys!1895)) (bvslt (size!9315 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71341 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!164826)))

(declare-fun b!351397 () Bool)

(assert (=> b!351397 (= e!215200 #b00000000000000000000000000000000)))

(declare-fun b!351398 () Bool)

(assert (=> b!351398 (= e!215200 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71341 c!53381) b!351397))

(assert (= (and d!71341 (not c!53381)) b!351398))

(declare-fun m!351331 () Bool)

(assert (=> d!71341 m!351331))

(declare-fun m!351333 () Bool)

(assert (=> d!71341 m!351333))

(declare-fun m!351335 () Bool)

(assert (=> b!351398 m!351335))

(assert (=> b!351348 d!71341))

(declare-fun d!71343 () Bool)

(declare-fun e!215205 () Bool)

(assert (=> d!71343 e!215205))

(declare-fun res!194946 () Bool)

(assert (=> d!71343 (=> res!194946 e!215205)))

(declare-fun lt!164836 () Bool)

(assert (=> d!71343 (= res!194946 (not lt!164836))))

(declare-fun lt!164837 () Bool)

(assert (=> d!71343 (= lt!164836 lt!164837)))

(declare-datatypes ((Unit!10855 0))(
  ( (Unit!10856) )
))
(declare-fun lt!164838 () Unit!10855)

(declare-fun e!215206 () Unit!10855)

(assert (=> d!71343 (= lt!164838 e!215206)))

(declare-fun c!53384 () Bool)

(assert (=> d!71343 (= c!53384 lt!164837)))

(declare-fun containsKey!341 (List!5241 (_ BitVec 64)) Bool)

(assert (=> d!71343 (= lt!164837 (containsKey!341 (toList!2280 (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71343 (= (contains!2346 (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!164836)))

(declare-fun b!351405 () Bool)

(declare-fun lt!164835 () Unit!10855)

(assert (=> b!351405 (= e!215206 lt!164835)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!290 (List!5241 (_ BitVec 64)) Unit!10855)

(assert (=> b!351405 (= lt!164835 (lemmaContainsKeyImpliesGetValueByKeyDefined!290 (toList!2280 (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!355 0))(
  ( (Some!354 (v!6075 V!11229)) (None!353) )
))
(declare-fun isDefined!291 (Option!355) Bool)

(declare-fun getValueByKey!349 (List!5241 (_ BitVec 64)) Option!355)

(assert (=> b!351405 (isDefined!291 (getValueByKey!349 (toList!2280 (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!351406 () Bool)

(declare-fun Unit!10857 () Unit!10855)

(assert (=> b!351406 (= e!215206 Unit!10857)))

(declare-fun b!351407 () Bool)

(assert (=> b!351407 (= e!215205 (isDefined!291 (getValueByKey!349 (toList!2280 (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71343 c!53384) b!351405))

(assert (= (and d!71343 (not c!53384)) b!351406))

(assert (= (and d!71343 (not res!194946)) b!351407))

(declare-fun m!351337 () Bool)

(assert (=> d!71343 m!351337))

(declare-fun m!351339 () Bool)

(assert (=> b!351405 m!351339))

(declare-fun m!351341 () Bool)

(assert (=> b!351405 m!351341))

(assert (=> b!351405 m!351341))

(declare-fun m!351343 () Bool)

(assert (=> b!351405 m!351343))

(assert (=> b!351407 m!351341))

(assert (=> b!351407 m!351341))

(assert (=> b!351407 m!351343))

(assert (=> b!351356 d!71343))

(declare-fun b!351450 () Bool)

(declare-fun c!53399 () Bool)

(assert (=> b!351450 (= c!53399 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!215233 () ListLongMap!4529)

(declare-fun e!215234 () ListLongMap!4529)

(assert (=> b!351450 (= e!215233 e!215234)))

(declare-fun b!351451 () Bool)

(declare-fun res!194967 () Bool)

(declare-fun e!215240 () Bool)

(assert (=> b!351451 (=> (not res!194967) (not e!215240))))

(declare-fun e!215241 () Bool)

(assert (=> b!351451 (= res!194967 e!215241)))

(declare-fun c!53397 () Bool)

(assert (=> b!351451 (= c!53397 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!27014 () Bool)

(declare-fun call!27020 () Bool)

(declare-fun lt!164902 () ListLongMap!4529)

(assert (=> bm!27014 (= call!27020 (contains!2346 lt!164902 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!351452 () Bool)

(declare-fun e!215242 () Unit!10855)

(declare-fun Unit!10858 () Unit!10855)

(assert (=> b!351452 (= e!215242 Unit!10858)))

(declare-fun b!351453 () Bool)

(declare-fun e!215239 () Bool)

(declare-fun apply!292 (ListLongMap!4529 (_ BitVec 64)) V!11229)

(assert (=> b!351453 (= e!215239 (= (apply!292 lt!164902 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!351454 () Bool)

(declare-fun res!194968 () Bool)

(assert (=> b!351454 (=> (not res!194968) (not e!215240))))

(declare-fun e!215245 () Bool)

(assert (=> b!351454 (= res!194968 e!215245)))

(declare-fun res!194971 () Bool)

(assert (=> b!351454 (=> res!194971 e!215245)))

(declare-fun e!215243 () Bool)

(assert (=> b!351454 (= res!194971 (not e!215243))))

(declare-fun res!194972 () Bool)

(assert (=> b!351454 (=> (not res!194972) (not e!215243))))

(assert (=> b!351454 (= res!194972 (bvslt #b00000000000000000000000000000000 (size!9315 _keys!1895)))))

(declare-fun b!351455 () Bool)

(declare-fun call!27022 () Bool)

(assert (=> b!351455 (= e!215241 (not call!27022))))

(declare-fun b!351456 () Bool)

(declare-fun e!215244 () ListLongMap!4529)

(assert (=> b!351456 (= e!215244 e!215233)))

(declare-fun c!53401 () Bool)

(assert (=> b!351456 (= c!53401 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!27021 () ListLongMap!4529)

(declare-fun call!27018 () ListLongMap!4529)

(declare-fun bm!27015 () Bool)

(declare-fun c!53402 () Bool)

(declare-fun call!27023 () ListLongMap!4529)

(declare-fun call!27019 () ListLongMap!4529)

(declare-fun +!736 (ListLongMap!4529 tuple2!5602) ListLongMap!4529)

(assert (=> bm!27015 (= call!27023 (+!736 (ite c!53402 call!27018 (ite c!53401 call!27021 call!27019)) (ite (or c!53402 c!53401) (tuple2!5603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!27016 () Bool)

(declare-fun call!27017 () ListLongMap!4529)

(assert (=> bm!27016 (= call!27017 call!27023)))

(declare-fun b!351457 () Bool)

(declare-fun e!215235 () Bool)

(assert (=> b!351457 (= e!215235 (= (apply!292 lt!164902 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!351458 () Bool)

(declare-fun e!215238 () Bool)

(declare-fun get!4801 (ValueCell!3501 V!11229) V!11229)

(declare-fun dynLambda!630 (Int (_ BitVec 64)) V!11229)

(assert (=> b!351458 (= e!215238 (= (apply!292 lt!164902 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)) (get!4801 (select (arr!8962 _values!1525) #b00000000000000000000000000000000) (dynLambda!630 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!351458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9314 _values!1525)))))

(assert (=> b!351458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9315 _keys!1895)))))

(declare-fun b!351460 () Bool)

(assert (=> b!351460 (= e!215244 (+!736 call!27023 (tuple2!5603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!351461 () Bool)

(declare-fun e!215236 () Bool)

(assert (=> b!351461 (= e!215236 e!215235)))

(declare-fun res!194965 () Bool)

(assert (=> b!351461 (= res!194965 call!27020)))

(assert (=> b!351461 (=> (not res!194965) (not e!215235))))

(declare-fun b!351462 () Bool)

(assert (=> b!351462 (= e!215234 call!27019)))

(declare-fun bm!27017 () Bool)

(assert (=> bm!27017 (= call!27021 call!27018)))

(declare-fun b!351463 () Bool)

(assert (=> b!351463 (= e!215243 (validKeyInArray!0 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!351464 () Bool)

(assert (=> b!351464 (= e!215233 call!27017)))

(declare-fun bm!27018 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!611 (array!18923 array!18921 (_ BitVec 32) (_ BitVec 32) V!11229 V!11229 (_ BitVec 32) Int) ListLongMap!4529)

(assert (=> bm!27018 (= call!27018 (getCurrentListMapNoExtraKeys!611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!351465 () Bool)

(assert (=> b!351465 (= e!215234 call!27017)))

(declare-fun b!351466 () Bool)

(declare-fun e!215237 () Bool)

(assert (=> b!351466 (= e!215237 (validKeyInArray!0 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!351467 () Bool)

(assert (=> b!351467 (= e!215240 e!215236)))

(declare-fun c!53400 () Bool)

(assert (=> b!351467 (= c!53400 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!351468 () Bool)

(assert (=> b!351468 (= e!215236 (not call!27020))))

(declare-fun b!351469 () Bool)

(assert (=> b!351469 (= e!215241 e!215239)))

(declare-fun res!194970 () Bool)

(assert (=> b!351469 (= res!194970 call!27022)))

(assert (=> b!351469 (=> (not res!194970) (not e!215239))))

(declare-fun bm!27019 () Bool)

(assert (=> bm!27019 (= call!27022 (contains!2346 lt!164902 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!71345 () Bool)

(assert (=> d!71345 e!215240))

(declare-fun res!194966 () Bool)

(assert (=> d!71345 (=> (not res!194966) (not e!215240))))

(assert (=> d!71345 (= res!194966 (or (bvsge #b00000000000000000000000000000000 (size!9315 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9315 _keys!1895)))))))

(declare-fun lt!164894 () ListLongMap!4529)

(assert (=> d!71345 (= lt!164902 lt!164894)))

(declare-fun lt!164895 () Unit!10855)

(assert (=> d!71345 (= lt!164895 e!215242)))

(declare-fun c!53398 () Bool)

(assert (=> d!71345 (= c!53398 e!215237)))

(declare-fun res!194969 () Bool)

(assert (=> d!71345 (=> (not res!194969) (not e!215237))))

(assert (=> d!71345 (= res!194969 (bvslt #b00000000000000000000000000000000 (size!9315 _keys!1895)))))

(assert (=> d!71345 (= lt!164894 e!215244)))

(assert (=> d!71345 (= c!53402 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71345 (validMask!0 mask!2385)))

(assert (=> d!71345 (= (getCurrentListMap!1797 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!164902)))

(declare-fun b!351459 () Bool)

(assert (=> b!351459 (= e!215245 e!215238)))

(declare-fun res!194973 () Bool)

(assert (=> b!351459 (=> (not res!194973) (not e!215238))))

(assert (=> b!351459 (= res!194973 (contains!2346 lt!164902 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!351459 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9315 _keys!1895)))))

(declare-fun b!351470 () Bool)

(declare-fun lt!164897 () Unit!10855)

(assert (=> b!351470 (= e!215242 lt!164897)))

(declare-fun lt!164888 () ListLongMap!4529)

(assert (=> b!351470 (= lt!164888 (getCurrentListMapNoExtraKeys!611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164900 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164900 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164884 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164884 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164896 () Unit!10855)

(declare-fun addStillContains!268 (ListLongMap!4529 (_ BitVec 64) V!11229 (_ BitVec 64)) Unit!10855)

(assert (=> b!351470 (= lt!164896 (addStillContains!268 lt!164888 lt!164900 zeroValue!1467 lt!164884))))

(assert (=> b!351470 (contains!2346 (+!736 lt!164888 (tuple2!5603 lt!164900 zeroValue!1467)) lt!164884)))

(declare-fun lt!164883 () Unit!10855)

(assert (=> b!351470 (= lt!164883 lt!164896)))

(declare-fun lt!164899 () ListLongMap!4529)

(assert (=> b!351470 (= lt!164899 (getCurrentListMapNoExtraKeys!611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164886 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164886 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164901 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164901 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164892 () Unit!10855)

(declare-fun addApplyDifferent!268 (ListLongMap!4529 (_ BitVec 64) V!11229 (_ BitVec 64)) Unit!10855)

(assert (=> b!351470 (= lt!164892 (addApplyDifferent!268 lt!164899 lt!164886 minValue!1467 lt!164901))))

(assert (=> b!351470 (= (apply!292 (+!736 lt!164899 (tuple2!5603 lt!164886 minValue!1467)) lt!164901) (apply!292 lt!164899 lt!164901))))

(declare-fun lt!164904 () Unit!10855)

(assert (=> b!351470 (= lt!164904 lt!164892)))

(declare-fun lt!164889 () ListLongMap!4529)

(assert (=> b!351470 (= lt!164889 (getCurrentListMapNoExtraKeys!611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164885 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164885 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164891 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164891 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164887 () Unit!10855)

(assert (=> b!351470 (= lt!164887 (addApplyDifferent!268 lt!164889 lt!164885 zeroValue!1467 lt!164891))))

(assert (=> b!351470 (= (apply!292 (+!736 lt!164889 (tuple2!5603 lt!164885 zeroValue!1467)) lt!164891) (apply!292 lt!164889 lt!164891))))

(declare-fun lt!164890 () Unit!10855)

(assert (=> b!351470 (= lt!164890 lt!164887)))

(declare-fun lt!164893 () ListLongMap!4529)

(assert (=> b!351470 (= lt!164893 (getCurrentListMapNoExtraKeys!611 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164903 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164903 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164898 () (_ BitVec 64))

(assert (=> b!351470 (= lt!164898 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!351470 (= lt!164897 (addApplyDifferent!268 lt!164893 lt!164903 minValue!1467 lt!164898))))

(assert (=> b!351470 (= (apply!292 (+!736 lt!164893 (tuple2!5603 lt!164903 minValue!1467)) lt!164898) (apply!292 lt!164893 lt!164898))))

(declare-fun bm!27020 () Bool)

(assert (=> bm!27020 (= call!27019 call!27021)))

(assert (= (and d!71345 c!53402) b!351460))

(assert (= (and d!71345 (not c!53402)) b!351456))

(assert (= (and b!351456 c!53401) b!351464))

(assert (= (and b!351456 (not c!53401)) b!351450))

(assert (= (and b!351450 c!53399) b!351465))

(assert (= (and b!351450 (not c!53399)) b!351462))

(assert (= (or b!351465 b!351462) bm!27020))

(assert (= (or b!351464 bm!27020) bm!27017))

(assert (= (or b!351464 b!351465) bm!27016))

(assert (= (or b!351460 bm!27017) bm!27018))

(assert (= (or b!351460 bm!27016) bm!27015))

(assert (= (and d!71345 res!194969) b!351466))

(assert (= (and d!71345 c!53398) b!351470))

(assert (= (and d!71345 (not c!53398)) b!351452))

(assert (= (and d!71345 res!194966) b!351454))

(assert (= (and b!351454 res!194972) b!351463))

(assert (= (and b!351454 (not res!194971)) b!351459))

(assert (= (and b!351459 res!194973) b!351458))

(assert (= (and b!351454 res!194968) b!351451))

(assert (= (and b!351451 c!53397) b!351469))

(assert (= (and b!351451 (not c!53397)) b!351455))

(assert (= (and b!351469 res!194970) b!351453))

(assert (= (or b!351469 b!351455) bm!27019))

(assert (= (and b!351451 res!194967) b!351467))

(assert (= (and b!351467 c!53400) b!351461))

(assert (= (and b!351467 (not c!53400)) b!351468))

(assert (= (and b!351461 res!194965) b!351457))

(assert (= (or b!351461 b!351468) bm!27014))

(declare-fun b_lambda!8537 () Bool)

(assert (=> (not b_lambda!8537) (not b!351458)))

(declare-fun t!10392 () Bool)

(declare-fun tb!3107 () Bool)

(assert (=> (and start!35078 (= defaultEntry!1528 defaultEntry!1528) t!10392) tb!3107))

(declare-fun result!5635 () Bool)

(assert (=> tb!3107 (= result!5635 tp_is_empty!7689)))

(assert (=> b!351458 t!10392))

(declare-fun b_and!14991 () Bool)

(assert (= b_and!14987 (and (=> t!10392 result!5635) b_and!14991)))

(declare-fun m!351345 () Bool)

(assert (=> bm!27018 m!351345))

(declare-fun m!351347 () Bool)

(assert (=> b!351453 m!351347))

(declare-fun m!351349 () Bool)

(assert (=> b!351460 m!351349))

(declare-fun m!351351 () Bool)

(assert (=> bm!27019 m!351351))

(assert (=> d!71345 m!351297))

(assert (=> b!351463 m!351333))

(assert (=> b!351463 m!351333))

(declare-fun m!351353 () Bool)

(assert (=> b!351463 m!351353))

(declare-fun m!351355 () Bool)

(assert (=> bm!27015 m!351355))

(assert (=> b!351459 m!351333))

(assert (=> b!351459 m!351333))

(declare-fun m!351357 () Bool)

(assert (=> b!351459 m!351357))

(assert (=> b!351458 m!351333))

(declare-fun m!351359 () Bool)

(assert (=> b!351458 m!351359))

(assert (=> b!351458 m!351333))

(declare-fun m!351361 () Bool)

(assert (=> b!351458 m!351361))

(assert (=> b!351458 m!351361))

(declare-fun m!351363 () Bool)

(assert (=> b!351458 m!351363))

(declare-fun m!351365 () Bool)

(assert (=> b!351458 m!351365))

(assert (=> b!351458 m!351363))

(declare-fun m!351367 () Bool)

(assert (=> b!351470 m!351367))

(declare-fun m!351369 () Bool)

(assert (=> b!351470 m!351369))

(declare-fun m!351371 () Bool)

(assert (=> b!351470 m!351371))

(declare-fun m!351373 () Bool)

(assert (=> b!351470 m!351373))

(declare-fun m!351375 () Bool)

(assert (=> b!351470 m!351375))

(declare-fun m!351377 () Bool)

(assert (=> b!351470 m!351377))

(declare-fun m!351379 () Bool)

(assert (=> b!351470 m!351379))

(assert (=> b!351470 m!351345))

(assert (=> b!351470 m!351371))

(declare-fun m!351381 () Bool)

(assert (=> b!351470 m!351381))

(declare-fun m!351383 () Bool)

(assert (=> b!351470 m!351383))

(assert (=> b!351470 m!351333))

(assert (=> b!351470 m!351379))

(declare-fun m!351385 () Bool)

(assert (=> b!351470 m!351385))

(declare-fun m!351387 () Bool)

(assert (=> b!351470 m!351387))

(assert (=> b!351470 m!351373))

(declare-fun m!351389 () Bool)

(assert (=> b!351470 m!351389))

(declare-fun m!351391 () Bool)

(assert (=> b!351470 m!351391))

(assert (=> b!351470 m!351389))

(declare-fun m!351393 () Bool)

(assert (=> b!351470 m!351393))

(declare-fun m!351395 () Bool)

(assert (=> b!351470 m!351395))

(declare-fun m!351397 () Bool)

(assert (=> bm!27014 m!351397))

(declare-fun m!351399 () Bool)

(assert (=> b!351457 m!351399))

(assert (=> b!351466 m!351333))

(assert (=> b!351466 m!351333))

(assert (=> b!351466 m!351353))

(assert (=> b!351356 d!71345))

(declare-fun d!71347 () Bool)

(declare-fun res!194978 () Bool)

(declare-fun e!215250 () Bool)

(assert (=> d!71347 (=> res!194978 e!215250)))

(assert (=> d!71347 (= res!194978 (= (select (arr!8963 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71347 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!215250)))

(declare-fun b!351477 () Bool)

(declare-fun e!215251 () Bool)

(assert (=> b!351477 (= e!215250 e!215251)))

(declare-fun res!194979 () Bool)

(assert (=> b!351477 (=> (not res!194979) (not e!215251))))

(assert (=> b!351477 (= res!194979 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9315 _keys!1895)))))

(declare-fun b!351478 () Bool)

(assert (=> b!351478 (= e!215251 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71347 (not res!194978)) b!351477))

(assert (= (and b!351477 res!194979) b!351478))

(assert (=> d!71347 m!351333))

(declare-fun m!351401 () Bool)

(assert (=> b!351478 m!351401))

(assert (=> b!351347 d!71347))

(declare-fun d!71349 () Bool)

(assert (=> d!71349 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!35078 d!71349))

(declare-fun d!71351 () Bool)

(assert (=> d!71351 (= (array_inv!6604 _values!1525) (bvsge (size!9314 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!35078 d!71351))

(declare-fun d!71353 () Bool)

(assert (=> d!71353 (= (array_inv!6605 _keys!1895) (bvsge (size!9315 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!35078 d!71353))

(declare-fun b!351489 () Bool)

(declare-fun e!215262 () Bool)

(declare-fun call!27026 () Bool)

(assert (=> b!351489 (= e!215262 call!27026)))

(declare-fun d!71355 () Bool)

(declare-fun res!194987 () Bool)

(declare-fun e!215263 () Bool)

(assert (=> d!71355 (=> res!194987 e!215263)))

(assert (=> d!71355 (= res!194987 (bvsge #b00000000000000000000000000000000 (size!9315 _keys!1895)))))

(assert (=> d!71355 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5237) e!215263)))

(declare-fun b!351490 () Bool)

(declare-fun e!215260 () Bool)

(declare-fun contains!2348 (List!5240 (_ BitVec 64)) Bool)

(assert (=> b!351490 (= e!215260 (contains!2348 Nil!5237 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!351491 () Bool)

(assert (=> b!351491 (= e!215262 call!27026)))

(declare-fun b!351492 () Bool)

(declare-fun e!215261 () Bool)

(assert (=> b!351492 (= e!215263 e!215261)))

(declare-fun res!194988 () Bool)

(assert (=> b!351492 (=> (not res!194988) (not e!215261))))

(assert (=> b!351492 (= res!194988 (not e!215260))))

(declare-fun res!194986 () Bool)

(assert (=> b!351492 (=> (not res!194986) (not e!215260))))

(assert (=> b!351492 (= res!194986 (validKeyInArray!0 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27023 () Bool)

(declare-fun c!53405 () Bool)

(assert (=> bm!27023 (= call!27026 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53405 (Cons!5236 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000) Nil!5237) Nil!5237)))))

(declare-fun b!351493 () Bool)

(assert (=> b!351493 (= e!215261 e!215262)))

(assert (=> b!351493 (= c!53405 (validKeyInArray!0 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71355 (not res!194987)) b!351492))

(assert (= (and b!351492 res!194986) b!351490))

(assert (= (and b!351492 res!194988) b!351493))

(assert (= (and b!351493 c!53405) b!351489))

(assert (= (and b!351493 (not c!53405)) b!351491))

(assert (= (or b!351489 b!351491) bm!27023))

(assert (=> b!351490 m!351333))

(assert (=> b!351490 m!351333))

(declare-fun m!351403 () Bool)

(assert (=> b!351490 m!351403))

(assert (=> b!351492 m!351333))

(assert (=> b!351492 m!351333))

(assert (=> b!351492 m!351353))

(assert (=> bm!27023 m!351333))

(declare-fun m!351405 () Bool)

(assert (=> bm!27023 m!351405))

(assert (=> b!351493 m!351333))

(assert (=> b!351493 m!351333))

(assert (=> b!351493 m!351353))

(assert (=> b!351351 d!71355))

(declare-fun b!351506 () Bool)

(declare-fun c!53414 () Bool)

(declare-fun lt!164912 () (_ BitVec 64))

(assert (=> b!351506 (= c!53414 (= lt!164912 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!215272 () SeekEntryResult!3446)

(declare-fun e!215270 () SeekEntryResult!3446)

(assert (=> b!351506 (= e!215272 e!215270)))

(declare-fun b!351507 () Bool)

(declare-fun lt!164913 () SeekEntryResult!3446)

(assert (=> b!351507 (= e!215272 (Found!3446 (index!15965 lt!164913)))))

(declare-fun b!351508 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18923 (_ BitVec 32)) SeekEntryResult!3446)

(assert (=> b!351508 (= e!215270 (seekKeyOrZeroReturnVacant!0 (x!34971 lt!164913) (index!15965 lt!164913) (index!15965 lt!164913) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351509 () Bool)

(declare-fun e!215271 () SeekEntryResult!3446)

(assert (=> b!351509 (= e!215271 Undefined!3446)))

(declare-fun d!71357 () Bool)

(declare-fun lt!164911 () SeekEntryResult!3446)

(assert (=> d!71357 (and (or ((_ is Undefined!3446) lt!164911) (not ((_ is Found!3446) lt!164911)) (and (bvsge (index!15964 lt!164911) #b00000000000000000000000000000000) (bvslt (index!15964 lt!164911) (size!9315 _keys!1895)))) (or ((_ is Undefined!3446) lt!164911) ((_ is Found!3446) lt!164911) (not ((_ is MissingZero!3446) lt!164911)) (and (bvsge (index!15963 lt!164911) #b00000000000000000000000000000000) (bvslt (index!15963 lt!164911) (size!9315 _keys!1895)))) (or ((_ is Undefined!3446) lt!164911) ((_ is Found!3446) lt!164911) ((_ is MissingZero!3446) lt!164911) (not ((_ is MissingVacant!3446) lt!164911)) (and (bvsge (index!15966 lt!164911) #b00000000000000000000000000000000) (bvslt (index!15966 lt!164911) (size!9315 _keys!1895)))) (or ((_ is Undefined!3446) lt!164911) (ite ((_ is Found!3446) lt!164911) (= (select (arr!8963 _keys!1895) (index!15964 lt!164911)) k0!1348) (ite ((_ is MissingZero!3446) lt!164911) (= (select (arr!8963 _keys!1895) (index!15963 lt!164911)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3446) lt!164911) (= (select (arr!8963 _keys!1895) (index!15966 lt!164911)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71357 (= lt!164911 e!215271)))

(declare-fun c!53412 () Bool)

(assert (=> d!71357 (= c!53412 (and ((_ is Intermediate!3446) lt!164913) (undefined!4258 lt!164913)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18923 (_ BitVec 32)) SeekEntryResult!3446)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71357 (= lt!164913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71357 (validMask!0 mask!2385)))

(assert (=> d!71357 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!164911)))

(declare-fun b!351510 () Bool)

(assert (=> b!351510 (= e!215270 (MissingZero!3446 (index!15965 lt!164913)))))

(declare-fun b!351511 () Bool)

(assert (=> b!351511 (= e!215271 e!215272)))

(assert (=> b!351511 (= lt!164912 (select (arr!8963 _keys!1895) (index!15965 lt!164913)))))

(declare-fun c!53413 () Bool)

(assert (=> b!351511 (= c!53413 (= lt!164912 k0!1348))))

(assert (= (and d!71357 c!53412) b!351509))

(assert (= (and d!71357 (not c!53412)) b!351511))

(assert (= (and b!351511 c!53413) b!351507))

(assert (= (and b!351511 (not c!53413)) b!351506))

(assert (= (and b!351506 c!53414) b!351510))

(assert (= (and b!351506 (not c!53414)) b!351508))

(declare-fun m!351407 () Bool)

(assert (=> b!351508 m!351407))

(declare-fun m!351409 () Bool)

(assert (=> d!71357 m!351409))

(declare-fun m!351411 () Bool)

(assert (=> d!71357 m!351411))

(declare-fun m!351413 () Bool)

(assert (=> d!71357 m!351413))

(assert (=> d!71357 m!351413))

(declare-fun m!351415 () Bool)

(assert (=> d!71357 m!351415))

(assert (=> d!71357 m!351297))

(declare-fun m!351417 () Bool)

(assert (=> d!71357 m!351417))

(declare-fun m!351419 () Bool)

(assert (=> b!351511 m!351419))

(assert (=> b!351350 d!71357))

(declare-fun b!351520 () Bool)

(declare-fun e!215279 () Bool)

(declare-fun call!27029 () Bool)

(assert (=> b!351520 (= e!215279 call!27029)))

(declare-fun d!71359 () Bool)

(declare-fun res!194994 () Bool)

(declare-fun e!215281 () Bool)

(assert (=> d!71359 (=> res!194994 e!215281)))

(assert (=> d!71359 (= res!194994 (bvsge #b00000000000000000000000000000000 (size!9315 _keys!1895)))))

(assert (=> d!71359 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!215281)))

(declare-fun b!351521 () Bool)

(declare-fun e!215280 () Bool)

(assert (=> b!351521 (= e!215280 e!215279)))

(declare-fun lt!164921 () (_ BitVec 64))

(assert (=> b!351521 (= lt!164921 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164920 () Unit!10855)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18923 (_ BitVec 64) (_ BitVec 32)) Unit!10855)

(assert (=> b!351521 (= lt!164920 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!164921 #b00000000000000000000000000000000))))

(assert (=> b!351521 (arrayContainsKey!0 _keys!1895 lt!164921 #b00000000000000000000000000000000)))

(declare-fun lt!164922 () Unit!10855)

(assert (=> b!351521 (= lt!164922 lt!164920)))

(declare-fun res!194993 () Bool)

(assert (=> b!351521 (= res!194993 (= (seekEntryOrOpen!0 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3446 #b00000000000000000000000000000000)))))

(assert (=> b!351521 (=> (not res!194993) (not e!215279))))

(declare-fun b!351522 () Bool)

(assert (=> b!351522 (= e!215281 e!215280)))

(declare-fun c!53417 () Bool)

(assert (=> b!351522 (= c!53417 (validKeyInArray!0 (select (arr!8963 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27026 () Bool)

(assert (=> bm!27026 (= call!27029 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!351523 () Bool)

(assert (=> b!351523 (= e!215280 call!27029)))

(assert (= (and d!71359 (not res!194994)) b!351522))

(assert (= (and b!351522 c!53417) b!351521))

(assert (= (and b!351522 (not c!53417)) b!351523))

(assert (= (and b!351521 res!194993) b!351520))

(assert (= (or b!351520 b!351523) bm!27026))

(assert (=> b!351521 m!351333))

(declare-fun m!351421 () Bool)

(assert (=> b!351521 m!351421))

(declare-fun m!351423 () Bool)

(assert (=> b!351521 m!351423))

(assert (=> b!351521 m!351333))

(declare-fun m!351425 () Bool)

(assert (=> b!351521 m!351425))

(assert (=> b!351522 m!351333))

(assert (=> b!351522 m!351333))

(assert (=> b!351522 m!351353))

(declare-fun m!351427 () Bool)

(assert (=> bm!27026 m!351427))

(assert (=> b!351349 d!71359))

(declare-fun d!71361 () Bool)

(assert (=> d!71361 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!351353 d!71361))

(declare-fun d!71363 () Bool)

(declare-fun res!194995 () Bool)

(declare-fun e!215282 () Bool)

(assert (=> d!71363 (=> res!194995 e!215282)))

(assert (=> d!71363 (= res!194995 (= (select (arr!8963 _keys!1895) lt!164816) k0!1348))))

(assert (=> d!71363 (= (arrayContainsKey!0 _keys!1895 k0!1348 lt!164816) e!215282)))

(declare-fun b!351524 () Bool)

(declare-fun e!215283 () Bool)

(assert (=> b!351524 (= e!215282 e!215283)))

(declare-fun res!194996 () Bool)

(assert (=> b!351524 (=> (not res!194996) (not e!215283))))

(assert (=> b!351524 (= res!194996 (bvslt (bvadd lt!164816 #b00000000000000000000000000000001) (size!9315 _keys!1895)))))

(declare-fun b!351525 () Bool)

(assert (=> b!351525 (= e!215283 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd lt!164816 #b00000000000000000000000000000001)))))

(assert (= (and d!71363 (not res!194995)) b!351524))

(assert (= (and b!351524 res!194996) b!351525))

(declare-fun m!351429 () Bool)

(assert (=> d!71363 m!351429))

(declare-fun m!351431 () Bool)

(assert (=> b!351525 m!351431))

(assert (=> b!351354 d!71363))

(declare-fun b!351533 () Bool)

(declare-fun e!215288 () Bool)

(assert (=> b!351533 (= e!215288 tp_is_empty!7689)))

(declare-fun mapIsEmpty!13014 () Bool)

(declare-fun mapRes!13014 () Bool)

(assert (=> mapIsEmpty!13014 mapRes!13014))

(declare-fun mapNonEmpty!13014 () Bool)

(declare-fun tp!26802 () Bool)

(declare-fun e!215289 () Bool)

(assert (=> mapNonEmpty!13014 (= mapRes!13014 (and tp!26802 e!215289))))

(declare-fun mapValue!13014 () ValueCell!3501)

(declare-fun mapRest!13014 () (Array (_ BitVec 32) ValueCell!3501))

(declare-fun mapKey!13014 () (_ BitVec 32))

(assert (=> mapNonEmpty!13014 (= mapRest!13008 (store mapRest!13014 mapKey!13014 mapValue!13014))))

(declare-fun condMapEmpty!13014 () Bool)

(declare-fun mapDefault!13014 () ValueCell!3501)

(assert (=> mapNonEmpty!13008 (= condMapEmpty!13014 (= mapRest!13008 ((as const (Array (_ BitVec 32) ValueCell!3501)) mapDefault!13014)))))

(assert (=> mapNonEmpty!13008 (= tp!26792 (and e!215288 mapRes!13014))))

(declare-fun b!351532 () Bool)

(assert (=> b!351532 (= e!215289 tp_is_empty!7689)))

(assert (= (and mapNonEmpty!13008 condMapEmpty!13014) mapIsEmpty!13014))

(assert (= (and mapNonEmpty!13008 (not condMapEmpty!13014)) mapNonEmpty!13014))

(assert (= (and mapNonEmpty!13014 ((_ is ValueCellFull!3501) mapValue!13014)) b!351532))

(assert (= (and mapNonEmpty!13008 ((_ is ValueCellFull!3501) mapDefault!13014)) b!351533))

(declare-fun m!351433 () Bool)

(assert (=> mapNonEmpty!13014 m!351433))

(declare-fun b_lambda!8539 () Bool)

(assert (= b_lambda!8537 (or (and start!35078 b_free!7737) b_lambda!8539)))

(check-sat (not b!351407) tp_is_empty!7689 (not bm!27026) (not b!351453) (not bm!27018) (not b!351492) (not mapNonEmpty!13014) (not b!351457) (not bm!27023) (not b!351478) (not b!351521) (not bm!27019) (not b_lambda!8539) (not b!351522) b_and!14991 (not b!351460) (not d!71345) (not b!351463) (not b!351405) (not b!351525) (not b!351466) (not b!351493) (not b!351459) (not b!351470) (not b!351490) (not bm!27014) (not b_next!7737) (not b!351458) (not b!351508) (not d!71357) (not bm!27015) (not b!351398) (not d!71343))
(check-sat b_and!14991 (not b_next!7737))
