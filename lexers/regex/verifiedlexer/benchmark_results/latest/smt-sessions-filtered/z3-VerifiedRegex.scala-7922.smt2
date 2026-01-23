; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412906 () Bool)

(assert start!412906)

(declare-fun b!4300279 () Bool)

(declare-fun b_free!128049 () Bool)

(declare-fun b_next!128753 () Bool)

(assert (=> b!4300279 (= b_free!128049 (not b_next!128753))))

(declare-fun tp!1321201 () Bool)

(declare-fun b_and!339391 () Bool)

(assert (=> b!4300279 (= tp!1321201 b_and!339391)))

(declare-fun b!4300284 () Bool)

(declare-fun b_free!128051 () Bool)

(declare-fun b_next!128755 () Bool)

(assert (=> b!4300284 (= b_free!128051 (not b_next!128755))))

(declare-fun tp!1321207 () Bool)

(declare-fun b_and!339393 () Bool)

(assert (=> b!4300284 (= tp!1321207 b_and!339393)))

(declare-fun b_free!128053 () Bool)

(declare-fun b_next!128757 () Bool)

(assert (=> start!412906 (= b_free!128053 (not b_next!128757))))

(declare-fun tp!1321205 () Bool)

(declare-fun b_and!339395 () Bool)

(assert (=> start!412906 (= tp!1321205 b_and!339395)))

(declare-fun b!4300274 () Bool)

(declare-fun e!2673002 () Bool)

(declare-datatypes ((K!9059 0))(
  ( (K!9060 (val!15505 Int)) )
))
(declare-datatypes ((V!9261 0))(
  ( (V!9262 (val!15506 Int)) )
))
(declare-datatypes ((tuple2!45920 0))(
  ( (tuple2!45921 (_1!26239 K!9059) (_2!26239 V!9261)) )
))
(declare-datatypes ((List!48069 0))(
  ( (Nil!47945) (Cons!47945 (h!53365 tuple2!45920) (t!354804 List!48069)) )
))
(declare-datatypes ((ListMap!1485 0))(
  ( (ListMap!1486 (toList!2200 List!48069)) )
))
(declare-fun lt!1522366 () ListMap!1485)

(declare-fun invariantList!544 (List!48069) Bool)

(assert (=> b!4300274 (= e!2673002 (invariantList!544 (toList!2200 lt!1522366)))))

(declare-fun b!4300275 () Bool)

(declare-fun e!2673004 () Bool)

(declare-fun e!2673001 () Bool)

(assert (=> b!4300275 (= e!2673004 e!2673001)))

(declare-fun b!4300276 () Bool)

(declare-fun e!2673005 () Bool)

(declare-fun e!2672998 () Bool)

(declare-datatypes ((array!16208 0))(
  ( (array!16209 (arr!7235 (Array (_ BitVec 32) (_ BitVec 64))) (size!35274 (_ BitVec 32))) )
))
(declare-datatypes ((array!16210 0))(
  ( (array!16211 (arr!7236 (Array (_ BitVec 32) List!48069)) (size!35275 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9050 0))(
  ( (LongMapFixedSize!9051 (defaultEntry!4910 Int) (mask!13016 (_ BitVec 32)) (extraKeys!4774 (_ BitVec 32)) (zeroValue!4784 List!48069) (minValue!4784 List!48069) (_size!9093 (_ BitVec 32)) (_keys!4825 array!16208) (_values!4806 array!16210) (_vacant!4586 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17909 0))(
  ( (Cell!17910 (v!41917 LongMapFixedSize!9050)) )
))
(declare-datatypes ((MutLongMap!4525 0))(
  ( (LongMap!4525 (underlying!9279 Cell!17909)) (MutLongMapExt!4524 (__x!29600 Int)) )
))
(declare-fun lt!1522368 () MutLongMap!4525)

(get-info :version)

(assert (=> b!4300276 (= e!2673005 (and e!2672998 ((_ is LongMap!4525) lt!1522368)))))

(declare-datatypes ((Hashable!4441 0))(
  ( (HashableExt!4440 (__x!29601 Int)) )
))
(declare-datatypes ((Cell!17911 0))(
  ( (Cell!17912 (v!41918 MutLongMap!4525)) )
))
(declare-datatypes ((MutableMap!4431 0))(
  ( (MutableMapExt!4430 (__x!29602 Int)) (HashMap!4431 (underlying!9280 Cell!17911) (hashF!6473 Hashable!4441) (_size!9094 (_ BitVec 32)) (defaultValue!4602 Int)) )
))
(declare-fun hm!64 () MutableMap!4431)

(assert (=> b!4300276 (= lt!1522368 (v!41918 (underlying!9280 hm!64)))))

(declare-fun mapNonEmpty!20325 () Bool)

(declare-fun mapRes!20325 () Bool)

(declare-fun tp!1321200 () Bool)

(declare-fun tp!1321204 () Bool)

(assert (=> mapNonEmpty!20325 (= mapRes!20325 (and tp!1321200 tp!1321204))))

(declare-fun mapRest!20325 () (Array (_ BitVec 32) List!48069))

(declare-fun mapValue!20325 () List!48069)

(declare-fun mapKey!20325 () (_ BitVec 32))

(assert (=> mapNonEmpty!20325 (= (arr!7236 (_values!4806 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) (store mapRest!20325 mapKey!20325 mapValue!20325))))

(declare-fun b!4300277 () Bool)

(declare-fun res!1762494 () Bool)

(declare-fun e!2672994 () Bool)

(assert (=> b!4300277 (=> (not res!1762494) (not e!2672994))))

(declare-fun valid!3507 (MutableMap!4431) Bool)

(assert (=> b!4300277 (= res!1762494 (valid!3507 hm!64))))

(declare-fun b!4300278 () Bool)

(declare-fun e!2673003 () Bool)

(assert (=> b!4300278 (= e!2672994 e!2673003)))

(declare-fun res!1762489 () Bool)

(assert (=> b!4300278 (=> (not res!1762489) (not e!2673003))))

(declare-fun lt!1522367 () ListMap!1485)

(declare-fun p!6034 () Int)

(declare-fun forall!8635 (List!48069 Int) Bool)

(assert (=> b!4300278 (= res!1762489 (forall!8635 (toList!2200 lt!1522367) p!6034))))

(declare-fun map!9904 (MutableMap!4431) ListMap!1485)

(assert (=> b!4300278 (= lt!1522367 (map!9904 hm!64))))

(declare-fun mapIsEmpty!20325 () Bool)

(assert (=> mapIsEmpty!20325 mapRes!20325))

(declare-fun res!1762496 () Bool)

(assert (=> start!412906 (=> (not res!1762496) (not e!2672994))))

(assert (=> start!412906 (= res!1762496 ((_ is HashMap!4431) hm!64))))

(assert (=> start!412906 e!2672994))

(declare-fun e!2672993 () Bool)

(assert (=> start!412906 e!2672993))

(declare-fun tp_is_empty!23273 () Bool)

(assert (=> start!412906 tp_is_empty!23273))

(declare-fun tp_is_empty!23275 () Bool)

(assert (=> start!412906 tp_is_empty!23275))

(assert (=> start!412906 tp!1321205))

(declare-fun e!2672997 () Bool)

(declare-fun tp!1321203 () Bool)

(declare-fun tp!1321206 () Bool)

(declare-fun array_inv!5183 (array!16208) Bool)

(declare-fun array_inv!5184 (array!16210) Bool)

(assert (=> b!4300279 (= e!2673001 (and tp!1321201 tp!1321206 tp!1321203 (array_inv!5183 (_keys!4825 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) (array_inv!5184 (_values!4806 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) e!2672997))))

(declare-fun b!4300280 () Bool)

(assert (=> b!4300280 (= e!2672998 e!2673004)))

(declare-fun b!4300281 () Bool)

(declare-fun e!2673000 () Bool)

(declare-fun e!2672996 () Bool)

(assert (=> b!4300281 (= e!2673000 e!2672996)))

(declare-fun res!1762495 () Bool)

(assert (=> b!4300281 (=> (not res!1762495) (not e!2672996))))

(declare-fun lt!1522365 () ListMap!1485)

(declare-fun eq!104 (ListMap!1485 ListMap!1485) Bool)

(assert (=> b!4300281 (= res!1762495 (eq!104 lt!1522365 lt!1522366))))

(declare-datatypes ((tuple2!45922 0))(
  ( (tuple2!45923 (_1!26240 Bool) (_2!26240 MutableMap!4431)) )
))
(declare-fun lt!1522362 () tuple2!45922)

(assert (=> b!4300281 (= lt!1522365 (map!9904 (_2!26240 lt!1522362)))))

(declare-fun b!4300282 () Bool)

(assert (=> b!4300282 (= e!2672996 (not e!2673002))))

(declare-fun res!1762492 () Bool)

(assert (=> b!4300282 (=> res!1762492 e!2673002)))

(assert (=> b!4300282 (= res!1762492 (not (forall!8635 (toList!2200 lt!1522366) p!6034)))))

(declare-fun k0!1716 () K!9059)

(declare-fun v!9471 () V!9261)

(declare-fun insertNoDuplicatedKeys!27 (List!48069 K!9059 V!9261) List!48069)

(assert (=> b!4300282 (forall!8635 (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66865 0))(
  ( (Unit!66866) )
))
(declare-fun lt!1522364 () Unit!66865)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!14 (List!48069 K!9059 V!9261 Int) Unit!66865)

(assert (=> b!4300282 (= lt!1522364 (lemmaInsertNoDuplicatedKeysPreservesForall!14 (toList!2200 lt!1522367) k0!1716 v!9471 p!6034))))

(declare-fun b!4300283 () Bool)

(declare-fun e!2672995 () Bool)

(assert (=> b!4300283 (= e!2673003 e!2672995)))

(declare-fun res!1762490 () Bool)

(assert (=> b!4300283 (=> (not res!1762490) (not e!2672995))))

(declare-fun lt!1522363 () tuple2!45920)

(declare-fun dynLambda!20362 (Int tuple2!45920) Bool)

(assert (=> b!4300283 (= res!1762490 (dynLambda!20362 p!6034 lt!1522363))))

(assert (=> b!4300283 (= lt!1522363 (tuple2!45921 k0!1716 v!9471))))

(assert (=> b!4300284 (= e!2672993 (and e!2673005 tp!1321207))))

(declare-fun b!4300285 () Bool)

(declare-fun tp!1321202 () Bool)

(assert (=> b!4300285 (= e!2672997 (and tp!1321202 mapRes!20325))))

(declare-fun condMapEmpty!20325 () Bool)

(declare-fun mapDefault!20325 () List!48069)

(assert (=> b!4300285 (= condMapEmpty!20325 (= (arr!7236 (_values!4806 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) ((as const (Array (_ BitVec 32) List!48069)) mapDefault!20325)))))

(declare-fun b!4300286 () Bool)

(assert (=> b!4300286 (= e!2672995 e!2673000)))

(declare-fun res!1762493 () Bool)

(assert (=> b!4300286 (=> (not res!1762493) (not e!2673000))))

(assert (=> b!4300286 (= res!1762493 (_1!26240 lt!1522362))))

(declare-fun update!337 (MutableMap!4431 K!9059 V!9261) tuple2!45922)

(assert (=> b!4300286 (= lt!1522362 (update!337 hm!64 k0!1716 v!9471))))

(declare-fun +!179 (ListMap!1485 tuple2!45920) ListMap!1485)

(assert (=> b!4300286 (= lt!1522366 (+!179 lt!1522367 lt!1522363))))

(declare-fun b!4300287 () Bool)

(declare-fun res!1762491 () Bool)

(assert (=> b!4300287 (=> res!1762491 e!2673002)))

(assert (=> b!4300287 (= res!1762491 (not (invariantList!544 (toList!2200 lt!1522365))))))

(assert (= (and start!412906 res!1762496) b!4300277))

(assert (= (and b!4300277 res!1762494) b!4300278))

(assert (= (and b!4300278 res!1762489) b!4300283))

(assert (= (and b!4300283 res!1762490) b!4300286))

(assert (= (and b!4300286 res!1762493) b!4300281))

(assert (= (and b!4300281 res!1762495) b!4300282))

(assert (= (and b!4300282 (not res!1762492)) b!4300287))

(assert (= (and b!4300287 (not res!1762491)) b!4300274))

(assert (= (and b!4300285 condMapEmpty!20325) mapIsEmpty!20325))

(assert (= (and b!4300285 (not condMapEmpty!20325)) mapNonEmpty!20325))

(assert (= b!4300279 b!4300285))

(assert (= b!4300275 b!4300279))

(assert (= b!4300280 b!4300275))

(assert (= (and b!4300276 ((_ is LongMap!4525) (v!41918 (underlying!9280 hm!64)))) b!4300280))

(assert (= b!4300284 b!4300276))

(assert (= (and start!412906 ((_ is HashMap!4431) hm!64)) b!4300284))

(declare-fun b_lambda!126351 () Bool)

(assert (=> (not b_lambda!126351) (not b!4300283)))

(declare-fun t!354803 () Bool)

(declare-fun tb!257219 () Bool)

(assert (=> (and start!412906 (= p!6034 p!6034) t!354803) tb!257219))

(declare-fun result!314508 () Bool)

(assert (=> tb!257219 (= result!314508 true)))

(assert (=> b!4300283 t!354803))

(declare-fun b_and!339397 () Bool)

(assert (= b_and!339395 (and (=> t!354803 result!314508) b_and!339397)))

(declare-fun m!4892505 () Bool)

(assert (=> b!4300278 m!4892505))

(declare-fun m!4892507 () Bool)

(assert (=> b!4300278 m!4892507))

(declare-fun m!4892509 () Bool)

(assert (=> b!4300286 m!4892509))

(declare-fun m!4892511 () Bool)

(assert (=> b!4300286 m!4892511))

(declare-fun m!4892513 () Bool)

(assert (=> b!4300283 m!4892513))

(declare-fun m!4892515 () Bool)

(assert (=> b!4300282 m!4892515))

(declare-fun m!4892517 () Bool)

(assert (=> b!4300282 m!4892517))

(assert (=> b!4300282 m!4892517))

(declare-fun m!4892519 () Bool)

(assert (=> b!4300282 m!4892519))

(declare-fun m!4892521 () Bool)

(assert (=> b!4300282 m!4892521))

(declare-fun m!4892523 () Bool)

(assert (=> b!4300277 m!4892523))

(declare-fun m!4892525 () Bool)

(assert (=> b!4300274 m!4892525))

(declare-fun m!4892527 () Bool)

(assert (=> b!4300287 m!4892527))

(declare-fun m!4892529 () Bool)

(assert (=> b!4300281 m!4892529))

(declare-fun m!4892531 () Bool)

(assert (=> b!4300281 m!4892531))

(declare-fun m!4892533 () Bool)

(assert (=> b!4300279 m!4892533))

(declare-fun m!4892535 () Bool)

(assert (=> b!4300279 m!4892535))

(declare-fun m!4892537 () Bool)

(assert (=> mapNonEmpty!20325 m!4892537))

(check-sat (not b_lambda!126351) (not b_next!128755) (not b!4300277) (not b!4300285) (not b!4300287) (not b!4300274) tp_is_empty!23273 (not b_next!128753) (not b!4300282) b_and!339397 tp_is_empty!23275 (not b!4300279) b_and!339393 (not b!4300281) (not mapNonEmpty!20325) b_and!339391 (not b!4300278) (not b_next!128757) (not b!4300286))
(check-sat b_and!339393 (not b_next!128755) b_and!339391 (not b_next!128757) (not b_next!128753) b_and!339397)
(get-model)

(declare-fun b_lambda!126353 () Bool)

(assert (= b_lambda!126351 (or (and start!412906 b_free!128053) b_lambda!126353)))

(check-sat (not b_next!128755) (not b!4300277) (not b!4300285) (not b!4300287) (not b!4300274) tp_is_empty!23273 (not b_next!128753) (not b!4300282) b_and!339397 tp_is_empty!23275 (not b_lambda!126353) (not b!4300279) b_and!339393 (not b!4300281) (not mapNonEmpty!20325) b_and!339391 (not b!4300278) (not b_next!128757) (not b!4300286))
(check-sat b_and!339393 (not b_next!128755) b_and!339391 (not b_next!128757) (not b_next!128753) b_and!339397)
(get-model)

(declare-fun d!1266631 () Bool)

(assert (=> d!1266631 (= (array_inv!5183 (_keys!4825 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) (bvsge (size!35274 (_keys!4825 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300279 d!1266631))

(declare-fun d!1266633 () Bool)

(assert (=> d!1266633 (= (array_inv!5184 (_values!4806 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) (bvsge (size!35275 (_values!4806 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300279 d!1266633))

(declare-fun bs!603981 () Bool)

(declare-fun b!4300341 () Bool)

(declare-fun b!4300340 () Bool)

(assert (= bs!603981 (and b!4300341 b!4300340)))

(declare-fun lambda!131999 () Int)

(declare-fun lambda!131998 () Int)

(assert (=> bs!603981 (= lambda!131999 lambda!131998)))

(declare-fun b!4300326 () Bool)

(declare-fun e!2673033 () List!48069)

(declare-fun call!296369 () List!48069)

(assert (=> b!4300326 (= e!2673033 call!296369)))

(declare-fun bm!296335 () Bool)

(declare-fun call!296353 () ListMap!1485)

(declare-fun call!296340 () ListMap!1485)

(assert (=> bm!296335 (= call!296353 call!296340)))

(declare-datatypes ((tuple2!45924 0))(
  ( (tuple2!45925 (_1!26241 (_ BitVec 64)) (_2!26241 List!48069)) )
))
(declare-datatypes ((List!48070 0))(
  ( (Nil!47946) (Cons!47946 (h!53366 tuple2!45924) (t!354811 List!48070)) )
))
(declare-datatypes ((ListLongMap!809 0))(
  ( (ListLongMap!810 (toList!2201 List!48070)) )
))
(declare-fun call!296345 () ListLongMap!809)

(declare-fun bm!296336 () Bool)

(declare-datatypes ((tuple2!45926 0))(
  ( (tuple2!45927 (_1!26242 Bool) (_2!26242 MutLongMap!4525)) )
))
(declare-fun lt!1522489 () tuple2!45926)

(declare-fun c!731488 () Bool)

(declare-fun lt!1522507 () tuple2!45926)

(declare-fun map!9905 (MutLongMap!4525) ListLongMap!809)

(assert (=> bm!296336 (= call!296345 (map!9905 (ite c!731488 (_2!26242 lt!1522489) (_2!26242 lt!1522507))))))

(declare-fun lt!1522484 () List!48069)

(declare-fun lt!1522519 () List!48069)

(declare-fun lt!1522481 () (_ BitVec 64))

(declare-fun bm!296337 () Bool)

(declare-fun call!296357 () Unit!66865)

(declare-fun lt!1522528 () (_ BitVec 64))

(declare-fun lemmaRemovePairForKeyPreservesHash!112 (List!48069 K!9059 (_ BitVec 64) Hashable!4441) Unit!66865)

(assert (=> bm!296337 (= call!296357 (lemmaRemovePairForKeyPreservesHash!112 (ite c!731488 lt!1522519 lt!1522484) k0!1716 (ite c!731488 lt!1522481 lt!1522528) (hashF!6473 hm!64)))))

(declare-fun b!4300328 () Bool)

(declare-fun e!2673031 () ListMap!1485)

(declare-fun call!296360 () ListMap!1485)

(assert (=> b!4300328 (= e!2673031 call!296360)))

(declare-fun bm!296338 () Bool)

(declare-fun call!296341 () ListLongMap!809)

(declare-fun lt!1522503 () List!48069)

(declare-fun lt!1522533 () ListLongMap!809)

(declare-fun lt!1522493 () List!48069)

(declare-fun +!180 (ListLongMap!809 tuple2!45924) ListLongMap!809)

(assert (=> bm!296338 (= call!296341 (+!180 lt!1522533 (ite c!731488 (tuple2!45925 lt!1522481 lt!1522503) (tuple2!45925 lt!1522528 lt!1522493))))))

(declare-fun b!4300329 () Bool)

(assert (=> b!4300329 (= e!2673031 (+!179 call!296360 (tuple2!45921 k0!1716 v!9471)))))

(declare-fun bm!296339 () Bool)

(declare-fun call!296370 () ListMap!1485)

(declare-fun extractMap!273 (List!48070) ListMap!1485)

(assert (=> bm!296339 (= call!296370 (extractMap!273 (toList!2201 lt!1522533)))))

(declare-fun bm!296340 () Bool)

(declare-fun call!296352 () ListMap!1485)

(declare-fun lt!1522511 () tuple2!45922)

(assert (=> bm!296340 (= call!296352 (map!9904 (_2!26240 lt!1522511)))))

(declare-fun bm!296341 () Bool)

(declare-fun lt!1522531 () ListMap!1485)

(declare-fun lt!1522495 () ListMap!1485)

(declare-fun call!296347 () Unit!66865)

(declare-fun lt!1522522 () ListMap!1485)

(declare-fun lt!1522496 () ListMap!1485)

(declare-fun lemmaEquivalentThenSameContains!37 (ListMap!1485 ListMap!1485 K!9059) Unit!66865)

(assert (=> bm!296341 (= call!296347 (lemmaEquivalentThenSameContains!37 (ite c!731488 lt!1522531 lt!1522495) (ite c!731488 lt!1522496 lt!1522522) k0!1716))))

(declare-fun bm!296342 () Bool)

(declare-fun call!296344 () Bool)

(declare-fun contains!9870 (ListMap!1485 K!9059) Bool)

(assert (=> bm!296342 (= call!296344 (contains!9870 (ite c!731488 lt!1522496 lt!1522495) k0!1716))))

(declare-fun bm!296343 () Bool)

(assert (=> bm!296343 (= call!296360 (map!9904 hm!64))))

(declare-fun bm!296344 () Bool)

(declare-fun call!296364 () Unit!66865)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!103 (ListLongMap!809 (_ BitVec 64) List!48069 Hashable!4441) Unit!66865)

(assert (=> bm!296344 (= call!296364 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!103 lt!1522533 (ite c!731488 lt!1522481 lt!1522528) (ite c!731488 lt!1522503 lt!1522493) (hashF!6473 hm!64)))))

(declare-fun b!4300330 () Bool)

(declare-fun e!2673034 () Unit!66865)

(declare-fun lt!1522494 () Unit!66865)

(assert (=> b!4300330 (= e!2673034 lt!1522494)))

(declare-fun lt!1522498 () Unit!66865)

(declare-fun call!296367 () Unit!66865)

(assert (=> b!4300330 (= lt!1522498 call!296367)))

(declare-fun call!296361 () Bool)

(assert (=> b!4300330 call!296361))

(declare-fun lt!1522490 () Unit!66865)

(assert (=> b!4300330 (= lt!1522490 lt!1522498)))

(assert (=> b!4300330 (= lt!1522494 call!296357)))

(declare-fun call!296363 () Bool)

(assert (=> b!4300330 call!296363))

(declare-fun bm!296345 () Bool)

(declare-fun call!296354 () Bool)

(declare-fun forall!8636 (List!48070 Int) Bool)

(assert (=> bm!296345 (= call!296354 (forall!8636 (toList!2201 call!296345) (ite c!731488 lambda!131998 lambda!131999)))))

(declare-fun lt!1522488 () MutableMap!4431)

(declare-fun bm!296346 () Bool)

(declare-fun call!296359 () Bool)

(declare-fun lt!1522512 () MutableMap!4431)

(assert (=> bm!296346 (= call!296359 (valid!3507 (ite c!731488 lt!1522488 lt!1522512)))))

(declare-fun bm!296347 () Bool)

(declare-fun call!296349 () ListMap!1485)

(declare-fun lt!1522499 () ListMap!1485)

(assert (=> bm!296347 (= call!296349 (+!179 lt!1522499 (tuple2!45921 k0!1716 v!9471)))))

(declare-fun b!4300331 () Bool)

(declare-fun e!2673035 () Bool)

(declare-fun call!296368 () Bool)

(assert (=> b!4300331 (= e!2673035 call!296368)))

(declare-fun bm!296348 () Bool)

(declare-fun call!296358 () List!48069)

(declare-fun removePairForKey!142 (List!48069 K!9059) List!48069)

(assert (=> bm!296348 (= call!296358 (removePairForKey!142 (ite c!731488 lt!1522519 lt!1522484) k0!1716))))

(declare-fun b!4300332 () Bool)

(declare-fun Unit!66867 () Unit!66865)

(assert (=> b!4300332 (= e!2673034 Unit!66867)))

(declare-fun bm!296349 () Bool)

(declare-fun call!296348 () Bool)

(declare-fun call!296346 () ListMap!1485)

(declare-fun call!296355 () ListMap!1485)

(assert (=> bm!296349 (= call!296348 (eq!104 call!296346 call!296355))))

(declare-fun bm!296350 () Bool)

(declare-fun call!296350 () Bool)

(assert (=> bm!296350 (= call!296350 (eq!104 call!296352 e!2673031))))

(declare-fun c!731482 () Bool)

(declare-fun c!731486 () Bool)

(assert (=> bm!296350 (= c!731482 c!731486)))

(declare-fun b!4300333 () Bool)

(declare-fun call!296362 () ListMap!1485)

(assert (=> b!4300333 (= call!296362 lt!1522499)))

(declare-fun lt!1522517 () Unit!66865)

(declare-fun Unit!66868 () Unit!66865)

(assert (=> b!4300333 (= lt!1522517 Unit!66868)))

(assert (=> b!4300333 call!296359))

(declare-fun e!2673029 () Unit!66865)

(declare-fun Unit!66869 () Unit!66865)

(assert (=> b!4300333 (= e!2673029 Unit!66869)))

(declare-fun b!4300334 () Bool)

(assert (=> b!4300334 (= call!296353 lt!1522499)))

(declare-fun lt!1522521 () Unit!66865)

(declare-fun Unit!66870 () Unit!66865)

(assert (=> b!4300334 (= lt!1522521 Unit!66870)))

(assert (=> b!4300334 call!296359))

(declare-fun e!2673032 () Unit!66865)

(declare-fun Unit!66871 () Unit!66865)

(assert (=> b!4300334 (= e!2673032 Unit!66871)))

(declare-fun bm!296351 () Bool)

(declare-fun apply!10878 (MutLongMap!4525 (_ BitVec 64)) List!48069)

(assert (=> bm!296351 (= call!296369 (apply!10878 (v!41918 (underlying!9280 hm!64)) (ite c!731488 lt!1522481 lt!1522528)))))

(declare-fun bm!296352 () Bool)

(declare-fun allKeysSameHash!125 (List!48069 (_ BitVec 64) Hashable!4441) Bool)

(assert (=> bm!296352 (= call!296361 (allKeysSameHash!125 (ite c!731488 lt!1522519 lt!1522484) (ite c!731488 lt!1522481 lt!1522528) (hashF!6473 hm!64)))))

(declare-fun d!1266635 () Bool)

(declare-fun e!2673028 () Bool)

(assert (=> d!1266635 e!2673028))

(declare-fun res!1762508 () Bool)

(assert (=> d!1266635 (=> (not res!1762508) (not e!2673028))))

(assert (=> d!1266635 (= res!1762508 ((_ is HashMap!4431) (_2!26240 lt!1522511)))))

(declare-fun lt!1522513 () tuple2!45922)

(assert (=> d!1266635 (= lt!1522511 (tuple2!45923 (_1!26240 lt!1522513) (_2!26240 lt!1522513)))))

(declare-fun e!2673030 () tuple2!45922)

(assert (=> d!1266635 (= lt!1522513 e!2673030)))

(declare-fun contains!9871 (MutableMap!4431 K!9059) Bool)

(assert (=> d!1266635 (= c!731488 (contains!9871 hm!64 k0!1716))))

(assert (=> d!1266635 (= lt!1522533 (map!9905 (v!41918 (underlying!9280 hm!64))))))

(assert (=> d!1266635 (= lt!1522499 (map!9904 hm!64))))

(assert (=> d!1266635 (valid!3507 hm!64)))

(assert (=> d!1266635 (= (update!337 hm!64 k0!1716 v!9471) lt!1522511)))

(declare-fun b!4300327 () Bool)

(declare-fun e!2673036 () Bool)

(assert (=> b!4300327 (= e!2673036 call!296350)))

(declare-fun bm!296353 () Bool)

(declare-fun call!296365 () (_ BitVec 64))

(declare-fun hash!841 (Hashable!4441 K!9059) (_ BitVec 64))

(assert (=> bm!296353 (= call!296365 (hash!841 (hashF!6473 hm!64) k0!1716))))

(declare-fun call!296356 () tuple2!45926)

(declare-fun bm!296354 () Bool)

(declare-fun update!338 (MutLongMap!4525 (_ BitVec 64) List!48069) tuple2!45926)

(assert (=> bm!296354 (= call!296356 (update!338 (v!41918 (underlying!9280 hm!64)) (ite c!731488 lt!1522481 lt!1522528) (ite c!731488 lt!1522503 lt!1522493)))))

(declare-fun bm!296355 () Bool)

(assert (=> bm!296355 (= call!296355 (+!179 call!296370 (tuple2!45921 k0!1716 v!9471)))))

(declare-fun b!4300335 () Bool)

(declare-datatypes ((tuple2!45928 0))(
  ( (tuple2!45929 (_1!26243 Unit!66865) (_2!26243 MutableMap!4431)) )
))
(declare-fun Unit!66872 () Unit!66865)

(declare-fun Unit!66873 () Unit!66865)

(assert (=> b!4300335 (= e!2673030 (tuple2!45923 (_1!26242 lt!1522489) (_2!26243 (ite false (tuple2!45929 Unit!66872 (HashMap!4431 (Cell!17912 (_2!26242 lt!1522489)) (hashF!6473 hm!64) (bvadd (_size!9094 hm!64) #b00000000000000000000000000000001) (defaultValue!4602 hm!64))) (tuple2!45929 Unit!66873 lt!1522488)))))))

(assert (=> b!4300335 (= lt!1522481 call!296365)))

(assert (=> b!4300335 (= lt!1522519 call!296369)))

(assert (=> b!4300335 (= lt!1522503 (Cons!47945 (tuple2!45921 k0!1716 v!9471) call!296358))))

(assert (=> b!4300335 (= lt!1522489 call!296356)))

(assert (=> b!4300335 (= lt!1522488 (HashMap!4431 (Cell!17912 (_2!26242 lt!1522489)) (hashF!6473 hm!64) (_size!9094 hm!64) (defaultValue!4602 hm!64)))))

(declare-fun c!731483 () Bool)

(assert (=> b!4300335 (= c!731483 (_1!26242 lt!1522489))))

(declare-fun lt!1522502 () Unit!66865)

(assert (=> b!4300335 (= lt!1522502 e!2673029)))

(declare-fun call!296342 () Bool)

(declare-fun lt!1522530 () ListLongMap!809)

(declare-fun lt!1522508 () ListLongMap!809)

(declare-fun bm!296356 () Bool)

(assert (=> bm!296356 (= call!296342 (forall!8636 (ite c!731488 (toList!2201 lt!1522508) (toList!2201 lt!1522530)) (ite c!731488 lambda!131998 lambda!131999)))))

(declare-fun b!4300336 () Bool)

(declare-fun e!2673037 () Bool)

(assert (=> b!4300336 (= e!2673037 call!296350)))

(declare-fun call!296343 () Bool)

(declare-fun bm!296357 () Bool)

(assert (=> bm!296357 (= call!296343 (eq!104 (ite c!731488 call!296362 call!296353) call!296349))))

(declare-fun call!296351 () Bool)

(declare-fun bm!296358 () Bool)

(assert (=> bm!296358 (= call!296351 (contains!9870 (ite c!731488 lt!1522531 call!296353) k0!1716))))

(declare-fun b!4300337 () Bool)

(assert (=> b!4300337 (= e!2673033 Nil!47945)))

(declare-fun b!4300338 () Bool)

(assert (=> b!4300338 (= e!2673036 e!2673037)))

(declare-fun res!1762507 () Bool)

(assert (=> b!4300338 (= res!1762507 (contains!9870 call!296352 k0!1716))))

(assert (=> b!4300338 (=> (not res!1762507) (not e!2673037))))

(declare-fun bm!296359 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!116 (List!48070 (_ BitVec 64) List!48069 Hashable!4441) Unit!66865)

(assert (=> bm!296359 (= call!296367 (lemmaInLongMapAllKeySameHashThenForTuple!116 (toList!2201 lt!1522533) (ite c!731488 lt!1522481 lt!1522528) (ite c!731488 lt!1522519 lt!1522484) (hashF!6473 hm!64)))))

(declare-fun bm!296360 () Bool)

(assert (=> bm!296360 (= call!296363 (allKeysSameHash!125 call!296358 (ite c!731488 lt!1522481 lt!1522528) (hashF!6473 hm!64)))))

(declare-fun bm!296361 () Bool)

(declare-fun call!296366 () Bool)

(declare-fun allKeysSameHashInMap!273 (ListLongMap!809 Hashable!4441) Bool)

(assert (=> bm!296361 (= call!296366 (allKeysSameHashInMap!273 call!296345 (hashF!6473 hm!64)))))

(declare-fun b!4300339 () Bool)

(assert (=> b!4300339 (= e!2673028 e!2673036)))

(assert (=> b!4300339 (= c!731486 (_1!26240 lt!1522511))))

(assert (=> b!4300340 call!296343))

(declare-fun lt!1522505 () Unit!66865)

(declare-fun Unit!66874 () Unit!66865)

(assert (=> b!4300340 (= lt!1522505 Unit!66874)))

(assert (=> b!4300340 call!296366))

(declare-fun lt!1522483 () Unit!66865)

(declare-fun Unit!66875 () Unit!66865)

(assert (=> b!4300340 (= lt!1522483 Unit!66875)))

(assert (=> b!4300340 call!296354))

(declare-fun lt!1522492 () Unit!66865)

(declare-fun lt!1522514 () Unit!66865)

(assert (=> b!4300340 (= lt!1522492 lt!1522514)))

(assert (=> b!4300340 (= call!296351 call!296344)))

(assert (=> b!4300340 (= lt!1522514 call!296347)))

(assert (=> b!4300340 (= lt!1522496 call!296349)))

(assert (=> b!4300340 (= lt!1522531 call!296362)))

(declare-fun lt!1522524 () Unit!66865)

(declare-fun lt!1522518 () Unit!66865)

(assert (=> b!4300340 (= lt!1522524 lt!1522518)))

(assert (=> b!4300340 call!296348))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!37 (ListLongMap!809 (_ BitVec 64) List!48069 K!9059 V!9261 Hashable!4441) Unit!66865)

(assert (=> b!4300340 (= lt!1522518 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!37 lt!1522533 lt!1522481 lt!1522503 k0!1716 v!9471 (hashF!6473 hm!64)))))

(declare-fun lt!1522500 () Unit!66865)

(declare-fun lt!1522529 () Unit!66865)

(assert (=> b!4300340 (= lt!1522500 lt!1522529)))

(declare-fun e!2673038 () Bool)

(assert (=> b!4300340 e!2673038))

(declare-fun res!1762510 () Bool)

(assert (=> b!4300340 (=> (not res!1762510) (not e!2673038))))

(assert (=> b!4300340 (= res!1762510 call!296342)))

(assert (=> b!4300340 (= lt!1522508 call!296341)))

(assert (=> b!4300340 (= lt!1522529 call!296364)))

(declare-fun lt!1522480 () Unit!66865)

(declare-fun Unit!66876 () Unit!66865)

(assert (=> b!4300340 (= lt!1522480 Unit!66876)))

(declare-fun noDuplicateKeys!153 (List!48069) Bool)

(assert (=> b!4300340 (noDuplicateKeys!153 lt!1522503)))

(declare-fun lt!1522504 () Unit!66865)

(declare-fun Unit!66877 () Unit!66865)

(assert (=> b!4300340 (= lt!1522504 Unit!66877)))

(declare-fun containsKey!236 (List!48069 K!9059) Bool)

(assert (=> b!4300340 (not (containsKey!236 call!296358 k0!1716))))

(declare-fun lt!1522486 () Unit!66865)

(declare-fun Unit!66878 () Unit!66865)

(assert (=> b!4300340 (= lt!1522486 Unit!66878)))

(declare-fun lt!1522487 () Unit!66865)

(declare-fun lt!1522520 () Unit!66865)

(assert (=> b!4300340 (= lt!1522487 lt!1522520)))

(assert (=> b!4300340 (noDuplicateKeys!153 call!296358)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!130 (List!48069 K!9059) Unit!66865)

(assert (=> b!4300340 (= lt!1522520 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!130 lt!1522519 k0!1716))))

(declare-fun lt!1522479 () Unit!66865)

(declare-fun lt!1522515 () Unit!66865)

(assert (=> b!4300340 (= lt!1522479 lt!1522515)))

(assert (=> b!4300340 call!296363))

(assert (=> b!4300340 (= lt!1522515 call!296357)))

(declare-fun lt!1522506 () Unit!66865)

(declare-fun lt!1522509 () Unit!66865)

(assert (=> b!4300340 (= lt!1522506 lt!1522509)))

(assert (=> b!4300340 call!296361))

(assert (=> b!4300340 (= lt!1522509 call!296367)))

(declare-fun Unit!66879 () Unit!66865)

(assert (=> b!4300340 (= e!2673029 Unit!66879)))

(declare-fun bm!296362 () Bool)

(assert (=> bm!296362 (= call!296340 (map!9904 (ite c!731488 lt!1522488 lt!1522512)))))

(declare-fun bm!296363 () Bool)

(assert (=> bm!296363 (= call!296346 (extractMap!273 (toList!2201 call!296341)))))

(assert (=> b!4300341 call!296351))

(declare-fun lt!1522532 () Unit!66865)

(declare-fun Unit!66880 () Unit!66865)

(assert (=> b!4300341 (= lt!1522532 Unit!66880)))

(assert (=> b!4300341 (contains!9870 call!296349 k0!1716)))

(declare-fun lt!1522482 () Unit!66865)

(declare-fun lt!1522526 () Unit!66865)

(assert (=> b!4300341 (= lt!1522482 lt!1522526)))

(assert (=> b!4300341 (= call!296344 (contains!9870 lt!1522522 k0!1716))))

(assert (=> b!4300341 (= lt!1522526 call!296347)))

(assert (=> b!4300341 (= lt!1522522 call!296349)))

(assert (=> b!4300341 (= lt!1522495 call!296353)))

(declare-fun lt!1522525 () Unit!66865)

(declare-fun Unit!66881 () Unit!66865)

(assert (=> b!4300341 (= lt!1522525 Unit!66881)))

(assert (=> b!4300341 call!296343))

(declare-fun lt!1522497 () Unit!66865)

(declare-fun Unit!66882 () Unit!66865)

(assert (=> b!4300341 (= lt!1522497 Unit!66882)))

(assert (=> b!4300341 call!296366))

(declare-fun lt!1522510 () Unit!66865)

(declare-fun Unit!66883 () Unit!66865)

(assert (=> b!4300341 (= lt!1522510 Unit!66883)))

(assert (=> b!4300341 call!296354))

(declare-fun lt!1522485 () Unit!66865)

(declare-fun lt!1522516 () Unit!66865)

(assert (=> b!4300341 (= lt!1522485 lt!1522516)))

(assert (=> b!4300341 call!296348))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!37 (ListLongMap!809 (_ BitVec 64) List!48069 K!9059 V!9261 Hashable!4441) Unit!66865)

(assert (=> b!4300341 (= lt!1522516 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!37 lt!1522533 lt!1522528 lt!1522493 k0!1716 v!9471 (hashF!6473 hm!64)))))

(declare-fun lt!1522501 () Unit!66865)

(declare-fun lt!1522527 () Unit!66865)

(assert (=> b!4300341 (= lt!1522501 lt!1522527)))

(assert (=> b!4300341 e!2673035))

(declare-fun res!1762509 () Bool)

(assert (=> b!4300341 (=> (not res!1762509) (not e!2673035))))

(assert (=> b!4300341 (= res!1762509 call!296342)))

(assert (=> b!4300341 (= lt!1522530 call!296341)))

(assert (=> b!4300341 (= lt!1522527 call!296364)))

(declare-fun lt!1522491 () Unit!66865)

(assert (=> b!4300341 (= lt!1522491 e!2673034)))

(declare-fun c!731487 () Bool)

(declare-fun isEmpty!28049 (List!48069) Bool)

(assert (=> b!4300341 (= c!731487 (not (isEmpty!28049 lt!1522484)))))

(declare-fun Unit!66884 () Unit!66865)

(assert (=> b!4300341 (= e!2673032 Unit!66884)))

(declare-fun b!4300342 () Bool)

(assert (=> b!4300342 (= e!2673038 call!296368)))

(declare-fun bm!296364 () Bool)

(assert (=> bm!296364 (= call!296368 (allKeysSameHashInMap!273 (ite c!731488 lt!1522508 lt!1522530) (hashF!6473 hm!64)))))

(declare-fun b!4300343 () Bool)

(declare-fun res!1762511 () Bool)

(assert (=> b!4300343 (=> (not res!1762511) (not e!2673028))))

(assert (=> b!4300343 (= res!1762511 (valid!3507 (_2!26240 lt!1522511)))))

(declare-fun bm!296365 () Bool)

(assert (=> bm!296365 (= call!296362 call!296340)))

(declare-fun b!4300344 () Bool)

(declare-fun Unit!66885 () Unit!66865)

(declare-fun Unit!66886 () Unit!66865)

(assert (=> b!4300344 (= e!2673030 (tuple2!45923 (_1!26242 lt!1522507) (_2!26243 (ite (_1!26242 lt!1522507) (tuple2!45929 Unit!66885 (HashMap!4431 (Cell!17912 (_2!26242 lt!1522507)) (hashF!6473 hm!64) (bvadd (_size!9094 hm!64) #b00000000000000000000000000000001) (defaultValue!4602 hm!64))) (tuple2!45929 Unit!66886 lt!1522512)))))))

(assert (=> b!4300344 (= lt!1522528 call!296365)))

(declare-fun c!731485 () Bool)

(declare-fun contains!9872 (MutLongMap!4525 (_ BitVec 64)) Bool)

(assert (=> b!4300344 (= c!731485 (contains!9872 (v!41918 (underlying!9280 hm!64)) lt!1522528))))

(assert (=> b!4300344 (= lt!1522484 e!2673033)))

(assert (=> b!4300344 (= lt!1522493 (Cons!47945 (tuple2!45921 k0!1716 v!9471) lt!1522484))))

(assert (=> b!4300344 (= lt!1522507 call!296356)))

(assert (=> b!4300344 (= lt!1522512 (HashMap!4431 (Cell!17912 (_2!26242 lt!1522507)) (hashF!6473 hm!64) (_size!9094 hm!64) (defaultValue!4602 hm!64)))))

(declare-fun c!731484 () Bool)

(assert (=> b!4300344 (= c!731484 (_1!26242 lt!1522507))))

(declare-fun lt!1522523 () Unit!66865)

(assert (=> b!4300344 (= lt!1522523 e!2673032)))

(assert (= (and d!1266635 c!731488) b!4300335))

(assert (= (and d!1266635 (not c!731488)) b!4300344))

(assert (= (and b!4300335 c!731483) b!4300340))

(assert (= (and b!4300335 (not c!731483)) b!4300333))

(assert (= (and b!4300340 res!1762510) b!4300342))

(assert (= (or b!4300340 b!4300333) bm!296365))

(assert (= (and b!4300344 c!731485) b!4300326))

(assert (= (and b!4300344 (not c!731485)) b!4300337))

(assert (= (and b!4300344 c!731484) b!4300341))

(assert (= (and b!4300344 (not c!731484)) b!4300334))

(assert (= (and b!4300341 c!731487) b!4300330))

(assert (= (and b!4300341 (not c!731487)) b!4300332))

(assert (= (and b!4300341 res!1762509) b!4300331))

(assert (= (or b!4300341 b!4300334) bm!296335))

(assert (= (or b!4300340 b!4300341) bm!296347))

(assert (= (or b!4300342 b!4300331) bm!296364))

(assert (= (or b!4300340 b!4300341) bm!296344))

(assert (= (or b!4300340 b!4300341) bm!296336))

(assert (= (or b!4300335 b!4300344) bm!296353))

(assert (= (or b!4300340 b!4300330) bm!296337))

(assert (= (or b!4300340 b!4300330) bm!296352))

(assert (= (or b!4300333 b!4300334) bm!296346))

(assert (= (or b!4300335 b!4300326) bm!296351))

(assert (= (or bm!296365 bm!296335) bm!296362))

(assert (= (or b!4300340 b!4300341) bm!296342))

(assert (= (or b!4300335 b!4300340 b!4300330) bm!296348))

(assert (= (or b!4300335 b!4300344) bm!296354))

(assert (= (or b!4300340 b!4300341) bm!296356))

(assert (= (or b!4300340 b!4300341) bm!296358))

(assert (= (or b!4300340 b!4300341) bm!296339))

(assert (= (or b!4300340 b!4300330) bm!296359))

(assert (= (or b!4300340 b!4300341) bm!296338))

(assert (= (or b!4300340 b!4300341) bm!296341))

(assert (= (or b!4300340 b!4300341) bm!296363))

(assert (= (or b!4300340 b!4300330) bm!296360))

(assert (= (or b!4300340 b!4300341) bm!296355))

(assert (= (or b!4300340 b!4300341) bm!296361))

(assert (= (or b!4300340 b!4300341) bm!296357))

(assert (= (or b!4300340 b!4300341) bm!296345))

(assert (= (or b!4300340 b!4300341) bm!296349))

(assert (= (and d!1266635 res!1762508) b!4300343))

(assert (= (and b!4300343 res!1762511) b!4300339))

(assert (= (and b!4300339 c!731486) b!4300338))

(assert (= (and b!4300339 (not c!731486)) b!4300327))

(assert (= (and b!4300338 res!1762507) b!4300336))

(assert (= (or b!4300336 b!4300327) bm!296343))

(assert (= (or b!4300338 b!4300336 b!4300327) bm!296340))

(assert (= (or b!4300336 b!4300327) bm!296350))

(assert (= (and bm!296350 c!731482) b!4300329))

(assert (= (and bm!296350 (not c!731482)) b!4300328))

(declare-fun m!4892539 () Bool)

(assert (=> bm!296355 m!4892539))

(declare-fun m!4892541 () Bool)

(assert (=> bm!296357 m!4892541))

(declare-fun m!4892543 () Bool)

(assert (=> bm!296364 m!4892543))

(declare-fun m!4892545 () Bool)

(assert (=> bm!296353 m!4892545))

(declare-fun m!4892547 () Bool)

(assert (=> bm!296359 m!4892547))

(declare-fun m!4892549 () Bool)

(assert (=> bm!296362 m!4892549))

(declare-fun m!4892551 () Bool)

(assert (=> d!1266635 m!4892551))

(declare-fun m!4892553 () Bool)

(assert (=> d!1266635 m!4892553))

(assert (=> d!1266635 m!4892507))

(assert (=> d!1266635 m!4892523))

(declare-fun m!4892555 () Bool)

(assert (=> bm!296358 m!4892555))

(declare-fun m!4892557 () Bool)

(assert (=> bm!296340 m!4892557))

(declare-fun m!4892559 () Bool)

(assert (=> bm!296360 m!4892559))

(declare-fun m!4892561 () Bool)

(assert (=> bm!296356 m!4892561))

(declare-fun m!4892563 () Bool)

(assert (=> bm!296363 m!4892563))

(declare-fun m!4892565 () Bool)

(assert (=> bm!296345 m!4892565))

(declare-fun m!4892567 () Bool)

(assert (=> b!4300343 m!4892567))

(declare-fun m!4892569 () Bool)

(assert (=> bm!296337 m!4892569))

(declare-fun m!4892571 () Bool)

(assert (=> b!4300344 m!4892571))

(declare-fun m!4892573 () Bool)

(assert (=> b!4300341 m!4892573))

(declare-fun m!4892575 () Bool)

(assert (=> b!4300341 m!4892575))

(declare-fun m!4892577 () Bool)

(assert (=> b!4300341 m!4892577))

(declare-fun m!4892579 () Bool)

(assert (=> b!4300341 m!4892579))

(declare-fun m!4892581 () Bool)

(assert (=> b!4300329 m!4892581))

(declare-fun m!4892583 () Bool)

(assert (=> b!4300338 m!4892583))

(declare-fun m!4892585 () Bool)

(assert (=> bm!296342 m!4892585))

(declare-fun m!4892587 () Bool)

(assert (=> bm!296336 m!4892587))

(declare-fun m!4892589 () Bool)

(assert (=> bm!296346 m!4892589))

(assert (=> bm!296343 m!4892507))

(declare-fun m!4892591 () Bool)

(assert (=> bm!296348 m!4892591))

(declare-fun m!4892593 () Bool)

(assert (=> bm!296339 m!4892593))

(declare-fun m!4892595 () Bool)

(assert (=> bm!296350 m!4892595))

(declare-fun m!4892597 () Bool)

(assert (=> bm!296351 m!4892597))

(declare-fun m!4892599 () Bool)

(assert (=> bm!296354 m!4892599))

(declare-fun m!4892601 () Bool)

(assert (=> bm!296349 m!4892601))

(declare-fun m!4892603 () Bool)

(assert (=> bm!296341 m!4892603))

(declare-fun m!4892605 () Bool)

(assert (=> bm!296347 m!4892605))

(declare-fun m!4892607 () Bool)

(assert (=> bm!296352 m!4892607))

(declare-fun m!4892609 () Bool)

(assert (=> bm!296361 m!4892609))

(declare-fun m!4892611 () Bool)

(assert (=> bm!296344 m!4892611))

(declare-fun m!4892613 () Bool)

(assert (=> bm!296338 m!4892613))

(declare-fun m!4892615 () Bool)

(assert (=> b!4300340 m!4892615))

(declare-fun m!4892617 () Bool)

(assert (=> b!4300340 m!4892617))

(declare-fun m!4892619 () Bool)

(assert (=> b!4300340 m!4892619))

(declare-fun m!4892621 () Bool)

(assert (=> b!4300340 m!4892621))

(declare-fun m!4892623 () Bool)

(assert (=> b!4300340 m!4892623))

(assert (=> b!4300286 d!1266635))

(declare-fun d!1266637 () Bool)

(declare-fun e!2673041 () Bool)

(assert (=> d!1266637 e!2673041))

(declare-fun res!1762516 () Bool)

(assert (=> d!1266637 (=> (not res!1762516) (not e!2673041))))

(declare-fun lt!1522545 () ListMap!1485)

(assert (=> d!1266637 (= res!1762516 (contains!9870 lt!1522545 (_1!26239 lt!1522363)))))

(declare-fun lt!1522543 () List!48069)

(assert (=> d!1266637 (= lt!1522545 (ListMap!1486 lt!1522543))))

(declare-fun lt!1522544 () Unit!66865)

(declare-fun lt!1522542 () Unit!66865)

(assert (=> d!1266637 (= lt!1522544 lt!1522542)))

(declare-datatypes ((Option!10165 0))(
  ( (None!10164) (Some!10164 (v!41920 V!9261)) )
))
(declare-fun getValueByKey!214 (List!48069 K!9059) Option!10165)

(assert (=> d!1266637 (= (getValueByKey!214 lt!1522543 (_1!26239 lt!1522363)) (Some!10164 (_2!26239 lt!1522363)))))

(declare-fun lemmaContainsTupThenGetReturnValue!45 (List!48069 K!9059 V!9261) Unit!66865)

(assert (=> d!1266637 (= lt!1522542 (lemmaContainsTupThenGetReturnValue!45 lt!1522543 (_1!26239 lt!1522363) (_2!26239 lt!1522363)))))

(assert (=> d!1266637 (= lt!1522543 (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) (_1!26239 lt!1522363) (_2!26239 lt!1522363)))))

(assert (=> d!1266637 (= (+!179 lt!1522367 lt!1522363) lt!1522545)))

(declare-fun b!4300349 () Bool)

(declare-fun res!1762517 () Bool)

(assert (=> b!4300349 (=> (not res!1762517) (not e!2673041))))

(assert (=> b!4300349 (= res!1762517 (= (getValueByKey!214 (toList!2200 lt!1522545) (_1!26239 lt!1522363)) (Some!10164 (_2!26239 lt!1522363))))))

(declare-fun b!4300350 () Bool)

(declare-fun contains!9873 (List!48069 tuple2!45920) Bool)

(assert (=> b!4300350 (= e!2673041 (contains!9873 (toList!2200 lt!1522545) lt!1522363))))

(assert (= (and d!1266637 res!1762516) b!4300349))

(assert (= (and b!4300349 res!1762517) b!4300350))

(declare-fun m!4892625 () Bool)

(assert (=> d!1266637 m!4892625))

(declare-fun m!4892627 () Bool)

(assert (=> d!1266637 m!4892627))

(declare-fun m!4892629 () Bool)

(assert (=> d!1266637 m!4892629))

(declare-fun m!4892631 () Bool)

(assert (=> d!1266637 m!4892631))

(declare-fun m!4892633 () Bool)

(assert (=> b!4300349 m!4892633))

(declare-fun m!4892635 () Bool)

(assert (=> b!4300350 m!4892635))

(assert (=> b!4300286 d!1266637))

(declare-fun d!1266639 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7534 (List!48069) (InoxSet tuple2!45920))

(assert (=> d!1266639 (= (eq!104 lt!1522365 lt!1522366) (= (content!7534 (toList!2200 lt!1522365)) (content!7534 (toList!2200 lt!1522366))))))

(declare-fun bs!603982 () Bool)

(assert (= bs!603982 d!1266639))

(declare-fun m!4892637 () Bool)

(assert (=> bs!603982 m!4892637))

(declare-fun m!4892639 () Bool)

(assert (=> bs!603982 m!4892639))

(assert (=> b!4300281 d!1266639))

(declare-fun d!1266641 () Bool)

(declare-fun lt!1522548 () ListMap!1485)

(assert (=> d!1266641 (invariantList!544 (toList!2200 lt!1522548))))

(assert (=> d!1266641 (= lt!1522548 (extractMap!273 (toList!2201 (map!9905 (v!41918 (underlying!9280 (_2!26240 lt!1522362)))))))))

(assert (=> d!1266641 (valid!3507 (_2!26240 lt!1522362))))

(assert (=> d!1266641 (= (map!9904 (_2!26240 lt!1522362)) lt!1522548)))

(declare-fun bs!603983 () Bool)

(assert (= bs!603983 d!1266641))

(declare-fun m!4892641 () Bool)

(assert (=> bs!603983 m!4892641))

(declare-fun m!4892643 () Bool)

(assert (=> bs!603983 m!4892643))

(declare-fun m!4892645 () Bool)

(assert (=> bs!603983 m!4892645))

(declare-fun m!4892647 () Bool)

(assert (=> bs!603983 m!4892647))

(assert (=> b!4300281 d!1266641))

(declare-fun bs!603984 () Bool)

(declare-fun b!4300355 () Bool)

(assert (= bs!603984 (and b!4300355 b!4300340)))

(declare-fun lambda!132002 () Int)

(assert (=> bs!603984 (= lambda!132002 lambda!131998)))

(declare-fun bs!603985 () Bool)

(assert (= bs!603985 (and b!4300355 b!4300341)))

(assert (=> bs!603985 (= lambda!132002 lambda!131999)))

(declare-fun d!1266643 () Bool)

(declare-fun res!1762522 () Bool)

(declare-fun e!2673044 () Bool)

(assert (=> d!1266643 (=> (not res!1762522) (not e!2673044))))

(declare-fun valid!3508 (MutLongMap!4525) Bool)

(assert (=> d!1266643 (= res!1762522 (valid!3508 (v!41918 (underlying!9280 hm!64))))))

(assert (=> d!1266643 (= (valid!3507 hm!64) e!2673044)))

(declare-fun res!1762523 () Bool)

(assert (=> b!4300355 (=> (not res!1762523) (not e!2673044))))

(assert (=> b!4300355 (= res!1762523 (forall!8636 (toList!2201 (map!9905 (v!41918 (underlying!9280 hm!64)))) lambda!132002))))

(declare-fun b!4300356 () Bool)

(assert (=> b!4300356 (= e!2673044 (allKeysSameHashInMap!273 (map!9905 (v!41918 (underlying!9280 hm!64))) (hashF!6473 hm!64)))))

(assert (= (and d!1266643 res!1762522) b!4300355))

(assert (= (and b!4300355 res!1762523) b!4300356))

(declare-fun m!4892649 () Bool)

(assert (=> d!1266643 m!4892649))

(assert (=> b!4300355 m!4892553))

(declare-fun m!4892651 () Bool)

(assert (=> b!4300355 m!4892651))

(assert (=> b!4300356 m!4892553))

(assert (=> b!4300356 m!4892553))

(declare-fun m!4892653 () Bool)

(assert (=> b!4300356 m!4892653))

(assert (=> b!4300277 d!1266643))

(declare-fun d!1266645 () Bool)

(declare-fun noDuplicatedKeys!93 (List!48069) Bool)

(assert (=> d!1266645 (= (invariantList!544 (toList!2200 lt!1522365)) (noDuplicatedKeys!93 (toList!2200 lt!1522365)))))

(declare-fun bs!603986 () Bool)

(assert (= bs!603986 d!1266645))

(declare-fun m!4892655 () Bool)

(assert (=> bs!603986 m!4892655))

(assert (=> b!4300287 d!1266645))

(declare-fun d!1266647 () Bool)

(declare-fun res!1762528 () Bool)

(declare-fun e!2673049 () Bool)

(assert (=> d!1266647 (=> res!1762528 e!2673049)))

(assert (=> d!1266647 (= res!1762528 ((_ is Nil!47945) (toList!2200 lt!1522366)))))

(assert (=> d!1266647 (= (forall!8635 (toList!2200 lt!1522366) p!6034) e!2673049)))

(declare-fun b!4300361 () Bool)

(declare-fun e!2673050 () Bool)

(assert (=> b!4300361 (= e!2673049 e!2673050)))

(declare-fun res!1762529 () Bool)

(assert (=> b!4300361 (=> (not res!1762529) (not e!2673050))))

(assert (=> b!4300361 (= res!1762529 (dynLambda!20362 p!6034 (h!53365 (toList!2200 lt!1522366))))))

(declare-fun b!4300362 () Bool)

(assert (=> b!4300362 (= e!2673050 (forall!8635 (t!354804 (toList!2200 lt!1522366)) p!6034))))

(assert (= (and d!1266647 (not res!1762528)) b!4300361))

(assert (= (and b!4300361 res!1762529) b!4300362))

(declare-fun b_lambda!126355 () Bool)

(assert (=> (not b_lambda!126355) (not b!4300361)))

(declare-fun t!354806 () Bool)

(declare-fun tb!257221 () Bool)

(assert (=> (and start!412906 (= p!6034 p!6034) t!354806) tb!257221))

(declare-fun result!314510 () Bool)

(assert (=> tb!257221 (= result!314510 true)))

(assert (=> b!4300361 t!354806))

(declare-fun b_and!339399 () Bool)

(assert (= b_and!339397 (and (=> t!354806 result!314510) b_and!339399)))

(declare-fun m!4892657 () Bool)

(assert (=> b!4300361 m!4892657))

(declare-fun m!4892659 () Bool)

(assert (=> b!4300362 m!4892659))

(assert (=> b!4300282 d!1266647))

(declare-fun d!1266649 () Bool)

(declare-fun res!1762530 () Bool)

(declare-fun e!2673051 () Bool)

(assert (=> d!1266649 (=> res!1762530 e!2673051)))

(assert (=> d!1266649 (= res!1762530 ((_ is Nil!47945) (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471)))))

(assert (=> d!1266649 (= (forall!8635 (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471) p!6034) e!2673051)))

(declare-fun b!4300363 () Bool)

(declare-fun e!2673052 () Bool)

(assert (=> b!4300363 (= e!2673051 e!2673052)))

(declare-fun res!1762531 () Bool)

(assert (=> b!4300363 (=> (not res!1762531) (not e!2673052))))

(assert (=> b!4300363 (= res!1762531 (dynLambda!20362 p!6034 (h!53365 (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471))))))

(declare-fun b!4300364 () Bool)

(assert (=> b!4300364 (= e!2673052 (forall!8635 (t!354804 (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266649 (not res!1762530)) b!4300363))

(assert (= (and b!4300363 res!1762531) b!4300364))

(declare-fun b_lambda!126357 () Bool)

(assert (=> (not b_lambda!126357) (not b!4300363)))

(declare-fun t!354808 () Bool)

(declare-fun tb!257223 () Bool)

(assert (=> (and start!412906 (= p!6034 p!6034) t!354808) tb!257223))

(declare-fun result!314512 () Bool)

(assert (=> tb!257223 (= result!314512 true)))

(assert (=> b!4300363 t!354808))

(declare-fun b_and!339401 () Bool)

(assert (= b_and!339399 (and (=> t!354808 result!314512) b_and!339401)))

(declare-fun m!4892661 () Bool)

(assert (=> b!4300363 m!4892661))

(declare-fun m!4892663 () Bool)

(assert (=> b!4300364 m!4892663))

(assert (=> b!4300282 d!1266649))

(declare-fun c!731503 () Bool)

(declare-fun c!731500 () Bool)

(declare-fun c!731502 () Bool)

(declare-fun call!296381 () List!48069)

(declare-fun bm!296374 () Bool)

(declare-fun e!2673068 () List!48069)

(declare-fun $colon$colon!656 (List!48069 tuple2!45920) List!48069)

(assert (=> bm!296374 (= call!296381 ($colon$colon!656 (ite c!731500 (t!354804 (toList!2200 lt!1522367)) (ite c!731503 (toList!2200 lt!1522367) e!2673068)) (ite (or c!731500 c!731503) (tuple2!45921 k0!1716 v!9471) (ite c!731502 (h!53365 (toList!2200 lt!1522367)) (tuple2!45921 k0!1716 v!9471)))))))

(declare-fun b!4300393 () Bool)

(declare-fun lt!1522574 () List!48069)

(declare-fun e!2673070 () Bool)

(declare-datatypes ((List!48071 0))(
  ( (Nil!47947) (Cons!47947 (h!53367 K!9059) (t!354812 List!48071)) )
))
(declare-fun content!7535 (List!48071) (InoxSet K!9059))

(declare-fun getKeysList!33 (List!48069) List!48071)

(assert (=> b!4300393 (= e!2673070 (= (content!7535 (getKeysList!33 lt!1522574)) ((_ map or) (content!7535 (getKeysList!33 (toList!2200 lt!1522367))) (store ((as const (Array K!9059 Bool)) false) k0!1716 true))))))

(declare-fun b!4300394 () Bool)

(declare-fun e!2673071 () Unit!66865)

(declare-fun Unit!66887 () Unit!66865)

(assert (=> b!4300394 (= e!2673071 Unit!66887)))

(declare-fun b!4300395 () Bool)

(declare-fun e!2673072 () List!48069)

(declare-fun call!296380 () List!48069)

(assert (=> b!4300395 (= e!2673072 call!296380)))

(declare-fun b!4300396 () Bool)

(declare-fun e!2673069 () List!48069)

(declare-fun lt!1522577 () List!48069)

(assert (=> b!4300396 (= e!2673069 lt!1522577)))

(declare-fun call!296379 () List!48069)

(assert (=> b!4300396 (= lt!1522577 call!296379)))

(declare-fun c!731501 () Bool)

(declare-fun containsKey!237 (List!48069 K!9059) Bool)

(assert (=> b!4300396 (= c!731501 (containsKey!237 (insertNoDuplicatedKeys!27 (t!354804 (toList!2200 lt!1522367)) k0!1716 v!9471) (_1!26239 (h!53365 (toList!2200 lt!1522367)))))))

(declare-fun lt!1522575 () Unit!66865)

(assert (=> b!4300396 (= lt!1522575 e!2673071)))

(declare-fun b!4300397 () Bool)

(declare-fun res!1762540 () Bool)

(assert (=> b!4300397 (=> (not res!1762540) (not e!2673070))))

(assert (=> b!4300397 (= res!1762540 (containsKey!237 lt!1522574 k0!1716))))

(declare-fun b!4300398 () Bool)

(declare-fun e!2673073 () List!48069)

(assert (=> b!4300398 (= e!2673073 e!2673072)))

(declare-fun res!1762543 () Bool)

(assert (=> b!4300398 (= res!1762543 ((_ is Cons!47945) (toList!2200 lt!1522367)))))

(declare-fun e!2673067 () Bool)

(assert (=> b!4300398 (=> (not res!1762543) (not e!2673067))))

(assert (=> b!4300398 (= c!731503 e!2673067)))

(declare-fun d!1266651 () Bool)

(assert (=> d!1266651 e!2673070))

(declare-fun res!1762541 () Bool)

(assert (=> d!1266651 (=> (not res!1762541) (not e!2673070))))

(assert (=> d!1266651 (= res!1762541 (invariantList!544 lt!1522574))))

(assert (=> d!1266651 (= lt!1522574 e!2673073)))

(assert (=> d!1266651 (= c!731500 (and ((_ is Cons!47945) (toList!2200 lt!1522367)) (= (_1!26239 (h!53365 (toList!2200 lt!1522367))) k0!1716)))))

(assert (=> d!1266651 (invariantList!544 (toList!2200 lt!1522367))))

(assert (=> d!1266651 (= (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471) lt!1522574)))

(declare-fun b!4300399 () Bool)

(declare-fun res!1762542 () Bool)

(assert (=> b!4300399 (=> (not res!1762542) (not e!2673070))))

(assert (=> b!4300399 (= res!1762542 (contains!9873 lt!1522574 (tuple2!45921 k0!1716 v!9471)))))

(declare-fun b!4300400 () Bool)

(assert (=> b!4300400 (= c!731502 ((_ is Cons!47945) (toList!2200 lt!1522367)))))

(assert (=> b!4300400 (= e!2673072 e!2673069)))

(declare-fun bm!296375 () Bool)

(assert (=> bm!296375 (= call!296379 call!296380)))

(declare-fun c!731499 () Bool)

(assert (=> bm!296375 (= c!731499 c!731502)))

(declare-fun b!4300401 () Bool)

(assert (=> b!4300401 (= e!2673068 Nil!47945)))

(declare-fun b!4300402 () Bool)

(assert (=> b!4300402 (= e!2673073 call!296381)))

(declare-fun lt!1522580 () List!48071)

(declare-fun call!296382 () List!48071)

(assert (=> b!4300402 (= lt!1522580 call!296382)))

(declare-fun lt!1522573 () Unit!66865)

(declare-fun lemmaSubseqRefl!60 (List!48071) Unit!66865)

(assert (=> b!4300402 (= lt!1522573 (lemmaSubseqRefl!60 lt!1522580))))

(declare-fun subseq!576 (List!48071 List!48071) Bool)

(assert (=> b!4300402 (subseq!576 lt!1522580 lt!1522580)))

(declare-fun lt!1522581 () Unit!66865)

(assert (=> b!4300402 (= lt!1522581 lt!1522573)))

(declare-fun b!4300403 () Bool)

(assert (=> b!4300403 (= e!2673068 (insertNoDuplicatedKeys!27 (t!354804 (toList!2200 lt!1522367)) k0!1716 v!9471))))

(declare-fun b!4300404 () Bool)

(assert (=> b!4300404 (= e!2673067 (not (containsKey!237 (toList!2200 lt!1522367) k0!1716)))))

(declare-fun b!4300405 () Bool)

(assert (=> b!4300405 false))

(declare-fun lt!1522571 () Unit!66865)

(declare-fun lt!1522579 () Unit!66865)

(assert (=> b!4300405 (= lt!1522571 lt!1522579)))

(assert (=> b!4300405 (containsKey!237 (t!354804 (toList!2200 lt!1522367)) (_1!26239 (h!53365 (toList!2200 lt!1522367))))))

(declare-fun lemmaInGetKeysListThenContainsKey!30 (List!48069 K!9059) Unit!66865)

(assert (=> b!4300405 (= lt!1522579 (lemmaInGetKeysListThenContainsKey!30 (t!354804 (toList!2200 lt!1522367)) (_1!26239 (h!53365 (toList!2200 lt!1522367)))))))

(declare-fun lt!1522572 () Unit!66865)

(declare-fun lt!1522576 () Unit!66865)

(assert (=> b!4300405 (= lt!1522572 lt!1522576)))

(declare-fun contains!9874 (List!48071 K!9059) Bool)

(assert (=> b!4300405 (contains!9874 call!296382 (_1!26239 (h!53365 (toList!2200 lt!1522367))))))

(declare-fun lt!1522578 () List!48069)

(declare-fun lemmaInListThenGetKeysListContains!30 (List!48069 K!9059) Unit!66865)

(assert (=> b!4300405 (= lt!1522576 (lemmaInListThenGetKeysListContains!30 lt!1522578 (_1!26239 (h!53365 (toList!2200 lt!1522367)))))))

(assert (=> b!4300405 (= lt!1522578 (insertNoDuplicatedKeys!27 (t!354804 (toList!2200 lt!1522367)) k0!1716 v!9471))))

(declare-fun Unit!66888 () Unit!66865)

(assert (=> b!4300405 (= e!2673071 Unit!66888)))

(declare-fun b!4300406 () Bool)

(assert (=> b!4300406 (= e!2673069 call!296379)))

(declare-fun bm!296376 () Bool)

(assert (=> bm!296376 (= call!296382 (getKeysList!33 (ite c!731500 (toList!2200 lt!1522367) lt!1522578)))))

(declare-fun bm!296377 () Bool)

(assert (=> bm!296377 (= call!296380 call!296381)))

(assert (= (and d!1266651 c!731500) b!4300402))

(assert (= (and d!1266651 (not c!731500)) b!4300398))

(assert (= (and b!4300398 res!1762543) b!4300404))

(assert (= (and b!4300398 c!731503) b!4300395))

(assert (= (and b!4300398 (not c!731503)) b!4300400))

(assert (= (and b!4300400 c!731502) b!4300396))

(assert (= (and b!4300400 (not c!731502)) b!4300406))

(assert (= (and b!4300396 c!731501) b!4300405))

(assert (= (and b!4300396 (not c!731501)) b!4300394))

(assert (= (or b!4300396 b!4300406) bm!296375))

(assert (= (and bm!296375 c!731499) b!4300403))

(assert (= (and bm!296375 (not c!731499)) b!4300401))

(assert (= (or b!4300395 bm!296375) bm!296377))

(assert (= (or b!4300402 b!4300405) bm!296376))

(assert (= (or b!4300402 bm!296377) bm!296374))

(assert (= (and d!1266651 res!1762541) b!4300397))

(assert (= (and b!4300397 res!1762540) b!4300399))

(assert (= (and b!4300399 res!1762542) b!4300393))

(declare-fun m!4892665 () Bool)

(assert (=> b!4300405 m!4892665))

(declare-fun m!4892667 () Bool)

(assert (=> b!4300405 m!4892667))

(declare-fun m!4892669 () Bool)

(assert (=> b!4300405 m!4892669))

(declare-fun m!4892671 () Bool)

(assert (=> b!4300405 m!4892671))

(declare-fun m!4892673 () Bool)

(assert (=> b!4300405 m!4892673))

(declare-fun m!4892675 () Bool)

(assert (=> b!4300402 m!4892675))

(declare-fun m!4892677 () Bool)

(assert (=> b!4300402 m!4892677))

(declare-fun m!4892679 () Bool)

(assert (=> b!4300399 m!4892679))

(declare-fun m!4892681 () Bool)

(assert (=> bm!296376 m!4892681))

(declare-fun m!4892683 () Bool)

(assert (=> b!4300393 m!4892683))

(declare-fun m!4892685 () Bool)

(assert (=> b!4300393 m!4892685))

(declare-fun m!4892687 () Bool)

(assert (=> b!4300393 m!4892687))

(declare-fun m!4892689 () Bool)

(assert (=> b!4300393 m!4892689))

(assert (=> b!4300393 m!4892685))

(assert (=> b!4300393 m!4892683))

(declare-fun m!4892691 () Bool)

(assert (=> b!4300393 m!4892691))

(declare-fun m!4892693 () Bool)

(assert (=> b!4300397 m!4892693))

(assert (=> b!4300396 m!4892665))

(assert (=> b!4300396 m!4892665))

(declare-fun m!4892695 () Bool)

(assert (=> b!4300396 m!4892695))

(declare-fun m!4892697 () Bool)

(assert (=> bm!296374 m!4892697))

(declare-fun m!4892699 () Bool)

(assert (=> b!4300404 m!4892699))

(assert (=> b!4300403 m!4892665))

(declare-fun m!4892701 () Bool)

(assert (=> d!1266651 m!4892701))

(declare-fun m!4892703 () Bool)

(assert (=> d!1266651 m!4892703))

(assert (=> b!4300282 d!1266651))

(declare-fun d!1266653 () Bool)

(assert (=> d!1266653 (forall!8635 (insertNoDuplicatedKeys!27 (toList!2200 lt!1522367) k0!1716 v!9471) p!6034)))

(declare-fun lt!1522584 () Unit!66865)

(declare-fun choose!26170 (List!48069 K!9059 V!9261 Int) Unit!66865)

(assert (=> d!1266653 (= lt!1522584 (choose!26170 (toList!2200 lt!1522367) k0!1716 v!9471 p!6034))))

(assert (=> d!1266653 (invariantList!544 (toList!2200 lt!1522367))))

(assert (=> d!1266653 (= (lemmaInsertNoDuplicatedKeysPreservesForall!14 (toList!2200 lt!1522367) k0!1716 v!9471 p!6034) lt!1522584)))

(declare-fun bs!603987 () Bool)

(assert (= bs!603987 d!1266653))

(assert (=> bs!603987 m!4892517))

(assert (=> bs!603987 m!4892517))

(assert (=> bs!603987 m!4892519))

(declare-fun m!4892705 () Bool)

(assert (=> bs!603987 m!4892705))

(assert (=> bs!603987 m!4892703))

(assert (=> b!4300282 d!1266653))

(declare-fun d!1266655 () Bool)

(declare-fun res!1762544 () Bool)

(declare-fun e!2673074 () Bool)

(assert (=> d!1266655 (=> res!1762544 e!2673074)))

(assert (=> d!1266655 (= res!1762544 ((_ is Nil!47945) (toList!2200 lt!1522367)))))

(assert (=> d!1266655 (= (forall!8635 (toList!2200 lt!1522367) p!6034) e!2673074)))

(declare-fun b!4300407 () Bool)

(declare-fun e!2673075 () Bool)

(assert (=> b!4300407 (= e!2673074 e!2673075)))

(declare-fun res!1762545 () Bool)

(assert (=> b!4300407 (=> (not res!1762545) (not e!2673075))))

(assert (=> b!4300407 (= res!1762545 (dynLambda!20362 p!6034 (h!53365 (toList!2200 lt!1522367))))))

(declare-fun b!4300408 () Bool)

(assert (=> b!4300408 (= e!2673075 (forall!8635 (t!354804 (toList!2200 lt!1522367)) p!6034))))

(assert (= (and d!1266655 (not res!1762544)) b!4300407))

(assert (= (and b!4300407 res!1762545) b!4300408))

(declare-fun b_lambda!126359 () Bool)

(assert (=> (not b_lambda!126359) (not b!4300407)))

(declare-fun t!354810 () Bool)

(declare-fun tb!257225 () Bool)

(assert (=> (and start!412906 (= p!6034 p!6034) t!354810) tb!257225))

(declare-fun result!314514 () Bool)

(assert (=> tb!257225 (= result!314514 true)))

(assert (=> b!4300407 t!354810))

(declare-fun b_and!339403 () Bool)

(assert (= b_and!339401 (and (=> t!354810 result!314514) b_and!339403)))

(declare-fun m!4892707 () Bool)

(assert (=> b!4300407 m!4892707))

(declare-fun m!4892709 () Bool)

(assert (=> b!4300408 m!4892709))

(assert (=> b!4300278 d!1266655))

(declare-fun d!1266657 () Bool)

(declare-fun lt!1522585 () ListMap!1485)

(assert (=> d!1266657 (invariantList!544 (toList!2200 lt!1522585))))

(assert (=> d!1266657 (= lt!1522585 (extractMap!273 (toList!2201 (map!9905 (v!41918 (underlying!9280 hm!64))))))))

(assert (=> d!1266657 (valid!3507 hm!64)))

(assert (=> d!1266657 (= (map!9904 hm!64) lt!1522585)))

(declare-fun bs!603988 () Bool)

(assert (= bs!603988 d!1266657))

(declare-fun m!4892711 () Bool)

(assert (=> bs!603988 m!4892711))

(assert (=> bs!603988 m!4892553))

(declare-fun m!4892713 () Bool)

(assert (=> bs!603988 m!4892713))

(assert (=> bs!603988 m!4892523))

(assert (=> b!4300278 d!1266657))

(declare-fun d!1266659 () Bool)

(assert (=> d!1266659 (= (invariantList!544 (toList!2200 lt!1522366)) (noDuplicatedKeys!93 (toList!2200 lt!1522366)))))

(declare-fun bs!603989 () Bool)

(assert (= bs!603989 d!1266659))

(declare-fun m!4892715 () Bool)

(assert (=> bs!603989 m!4892715))

(assert (=> b!4300274 d!1266659))

(declare-fun b!4300413 () Bool)

(declare-fun e!2673078 () Bool)

(declare-fun tp!1321210 () Bool)

(assert (=> b!4300413 (= e!2673078 (and tp_is_empty!23273 tp_is_empty!23275 tp!1321210))))

(assert (=> b!4300279 (= tp!1321206 e!2673078)))

(assert (= (and b!4300279 ((_ is Cons!47945) (zeroValue!4784 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64))))))) b!4300413))

(declare-fun b!4300414 () Bool)

(declare-fun tp!1321211 () Bool)

(declare-fun e!2673079 () Bool)

(assert (=> b!4300414 (= e!2673079 (and tp_is_empty!23273 tp_is_empty!23275 tp!1321211))))

(assert (=> b!4300279 (= tp!1321203 e!2673079)))

(assert (= (and b!4300279 ((_ is Cons!47945) (minValue!4784 (v!41917 (underlying!9279 (v!41918 (underlying!9280 hm!64))))))) b!4300414))

(declare-fun e!2673080 () Bool)

(declare-fun tp!1321212 () Bool)

(declare-fun b!4300415 () Bool)

(assert (=> b!4300415 (= e!2673080 (and tp_is_empty!23273 tp_is_empty!23275 tp!1321212))))

(assert (=> b!4300285 (= tp!1321202 e!2673080)))

(assert (= (and b!4300285 ((_ is Cons!47945) mapDefault!20325)) b!4300415))

(declare-fun mapNonEmpty!20328 () Bool)

(declare-fun mapRes!20328 () Bool)

(declare-fun tp!1321219 () Bool)

(declare-fun e!2673086 () Bool)

(assert (=> mapNonEmpty!20328 (= mapRes!20328 (and tp!1321219 e!2673086))))

(declare-fun mapValue!20328 () List!48069)

(declare-fun mapKey!20328 () (_ BitVec 32))

(declare-fun mapRest!20328 () (Array (_ BitVec 32) List!48069))

(assert (=> mapNonEmpty!20328 (= mapRest!20325 (store mapRest!20328 mapKey!20328 mapValue!20328))))

(declare-fun condMapEmpty!20328 () Bool)

(declare-fun mapDefault!20328 () List!48069)

(assert (=> mapNonEmpty!20325 (= condMapEmpty!20328 (= mapRest!20325 ((as const (Array (_ BitVec 32) List!48069)) mapDefault!20328)))))

(declare-fun e!2673085 () Bool)

(assert (=> mapNonEmpty!20325 (= tp!1321200 (and e!2673085 mapRes!20328))))

(declare-fun mapIsEmpty!20328 () Bool)

(assert (=> mapIsEmpty!20328 mapRes!20328))

(declare-fun b!4300423 () Bool)

(declare-fun tp!1321220 () Bool)

(assert (=> b!4300423 (= e!2673085 (and tp_is_empty!23273 tp_is_empty!23275 tp!1321220))))

(declare-fun b!4300422 () Bool)

(declare-fun tp!1321221 () Bool)

(assert (=> b!4300422 (= e!2673086 (and tp_is_empty!23273 tp_is_empty!23275 tp!1321221))))

(assert (= (and mapNonEmpty!20325 condMapEmpty!20328) mapIsEmpty!20328))

(assert (= (and mapNonEmpty!20325 (not condMapEmpty!20328)) mapNonEmpty!20328))

(assert (= (and mapNonEmpty!20328 ((_ is Cons!47945) mapValue!20328)) b!4300422))

(assert (= (and mapNonEmpty!20325 ((_ is Cons!47945) mapDefault!20328)) b!4300423))

(declare-fun m!4892717 () Bool)

(assert (=> mapNonEmpty!20328 m!4892717))

(declare-fun e!2673087 () Bool)

(declare-fun tp!1321222 () Bool)

(declare-fun b!4300424 () Bool)

(assert (=> b!4300424 (= e!2673087 (and tp_is_empty!23273 tp_is_empty!23275 tp!1321222))))

(assert (=> mapNonEmpty!20325 (= tp!1321204 e!2673087)))

(assert (= (and mapNonEmpty!20325 ((_ is Cons!47945) mapValue!20325)) b!4300424))

(declare-fun b_lambda!126361 () Bool)

(assert (= b_lambda!126359 (or (and start!412906 b_free!128053) b_lambda!126361)))

(declare-fun b_lambda!126363 () Bool)

(assert (= b_lambda!126355 (or (and start!412906 b_free!128053) b_lambda!126363)))

(declare-fun b_lambda!126365 () Bool)

(assert (= b_lambda!126357 (or (and start!412906 b_free!128053) b_lambda!126365)))

(check-sat (not bm!296340) tp_is_empty!23275 (not b_lambda!126353) (not d!1266645) b_and!339393 b_and!339403 (not b!4300424) (not b!4300414) (not b_lambda!126365) (not bm!296362) (not b_next!128755) (not b!4300396) (not b!4300415) (not bm!296348) (not bm!296351) (not b!4300399) (not d!1266643) (not b!4300422) (not bm!296347) (not bm!296357) (not bm!296344) (not bm!296355) (not b!4300423) (not bm!296361) (not b!4300403) (not b!4300364) (not d!1266651) (not bm!296337) (not bm!296336) (not b_lambda!126363) (not b!4300393) (not b!4300356) (not b!4300349) (not b!4300341) (not d!1266659) (not bm!296356) b_and!339391 (not b!4300405) (not bm!296354) (not b!4300404) (not bm!296374) (not b!4300355) (not b!4300362) (not b!4300402) (not bm!296346) (not bm!296343) (not bm!296376) (not d!1266639) (not b!4300350) (not d!1266637) (not b!4300329) (not bm!296350) (not d!1266653) (not b!4300344) (not b!4300340) (not b_next!128757) (not b!4300408) (not bm!296339) (not b!4300397) tp_is_empty!23273 (not bm!296364) (not b!4300338) (not bm!296345) (not b_next!128753) (not mapNonEmpty!20328) (not b_lambda!126361) (not bm!296358) (not bm!296338) (not bm!296352) (not bm!296359) (not bm!296360) (not bm!296349) (not d!1266657) (not bm!296341) (not bm!296363) (not bm!296342) (not b!4300413) (not d!1266641) (not bm!296353) (not b!4300343) (not d!1266635))
(check-sat b_and!339393 b_and!339403 (not b_next!128755) b_and!339391 (not b_next!128757) (not b_next!128753))
