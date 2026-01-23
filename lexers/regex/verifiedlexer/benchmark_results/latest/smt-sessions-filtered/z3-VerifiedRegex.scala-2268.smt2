; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110868 () Bool)

(assert start!110868)

(declare-fun b!1257239 () Bool)

(declare-fun b_free!29755 () Bool)

(declare-fun b_next!30459 () Bool)

(assert (=> b!1257239 (= b_free!29755 (not b_next!30459))))

(declare-fun tp!370616 () Bool)

(declare-fun b_and!84899 () Bool)

(assert (=> b!1257239 (= tp!370616 b_and!84899)))

(declare-fun b!1257233 () Bool)

(declare-fun e!800240 () Bool)

(declare-fun e!800247 () Bool)

(assert (=> b!1257233 (= e!800240 e!800247)))

(declare-datatypes ((V!2963 0))(
  ( (V!2964 (val!4190 Int)) )
))
(declare-datatypes ((tuple2!12492 0))(
  ( (tuple2!12493 (_1!7094 (_ BitVec 64)) (_2!7094 V!2963)) )
))
(declare-datatypes ((List!12633 0))(
  ( (Nil!12569) (Cons!12569 (h!17970 tuple2!12492) (t!115765 List!12633)) )
))
(declare-datatypes ((ListLongMap!149 0))(
  ( (ListLongMap!150 (toList!706 List!12633)) )
))
(declare-fun lt!420834 () ListLongMap!149)

(declare-fun call!88237 () ListLongMap!149)

(assert (=> b!1257233 (= lt!420834 call!88237)))

(declare-fun res!556637 () Bool)

(declare-fun key!7089 () (_ BitVec 64))

(declare-fun contains!2126 (ListLongMap!149 (_ BitVec 64)) Bool)

(assert (=> b!1257233 (= res!556637 (contains!2126 lt!420834 key!7089))))

(assert (=> b!1257233 (=> (not res!556637) (not e!800247))))

(declare-fun mapIsEmpty!6295 () Bool)

(declare-fun mapRes!6295 () Bool)

(assert (=> mapIsEmpty!6295 mapRes!6295))

(declare-fun b!1257234 () Bool)

(declare-fun e!800245 () Bool)

(assert (=> b!1257234 (= e!800245 e!800240)))

(declare-fun c!208725 () Bool)

(declare-datatypes ((array!4658 0))(
  ( (array!4659 (arr!2077 (Array (_ BitVec 32) V!2963)) (size!9968 (_ BitVec 32))) )
))
(declare-datatypes ((array!4660 0))(
  ( (array!4661 (arr!2078 (Array (_ BitVec 32) (_ BitVec 64))) (size!9969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2624 0))(
  ( (LongMapFixedSize!2625 (defaultEntry!1672 Int) (mask!4124 (_ BitVec 32)) (extraKeys!1559 (_ BitVec 32)) (zeroValue!1569 V!2963) (minValue!1569 V!2963) (_size!2706 (_ BitVec 32)) (_keys!1606 array!4660) (_values!1591 array!4658) (_vacant!1373 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5135 0))(
  ( (Cell!5136 (v!20784 LongMapFixedSize!2624)) )
))
(declare-datatypes ((MutLongMap!1312 0))(
  ( (LongMap!1312 (underlying!2830 Cell!5135)) (MutLongMapExt!1311 (__x!8206 Int)) )
))
(declare-datatypes ((tuple2!12494 0))(
  ( (tuple2!12495 (_1!7095 Bool) (_2!7095 MutLongMap!1312)) )
))
(declare-fun lt!420833 () tuple2!12494)

(assert (=> b!1257234 (= c!208725 (_1!7095 lt!420833))))

(declare-fun b!1257235 () Bool)

(declare-fun call!88238 () ListLongMap!149)

(declare-fun v!11771 () V!2963)

(declare-fun +!36 (ListLongMap!149 tuple2!12492) ListLongMap!149)

(assert (=> b!1257235 (= e!800247 (= lt!420834 (+!36 call!88238 (tuple2!12493 key!7089 v!11771))))))

(declare-fun bm!88232 () Bool)

(declare-fun abstractMap!57 (MutLongMap!1312) ListLongMap!149)

(assert (=> bm!88232 (= call!88237 (abstractMap!57 (_2!7095 lt!420833)))))

(declare-fun mapNonEmpty!6295 () Bool)

(declare-fun tp!370615 () Bool)

(declare-fun tp_is_empty!6519 () Bool)

(assert (=> mapNonEmpty!6295 (= mapRes!6295 (and tp!370615 tp_is_empty!6519))))

(declare-fun thiss!47507 () MutLongMap!1312)

(declare-fun mapValue!6295 () V!2963)

(declare-fun mapKey!6295 () (_ BitVec 32))

(declare-fun mapRest!6295 () (Array (_ BitVec 32) V!2963))

(assert (=> mapNonEmpty!6295 (= (arr!2077 (_values!1591 (v!20784 (underlying!2830 thiss!47507)))) (store mapRest!6295 mapKey!6295 mapValue!6295))))

(declare-fun b!1257236 () Bool)

(declare-fun e!800244 () Bool)

(assert (=> b!1257236 (= e!800244 (not e!800245))))

(declare-fun res!556638 () Bool)

(assert (=> b!1257236 (=> (not res!556638) (not e!800245))))

(declare-fun valid!1051 (MutLongMap!1312) Bool)

(assert (=> b!1257236 (= res!556638 (valid!1051 (_2!7095 lt!420833)))))

(get-info :version)

(assert (=> b!1257236 ((_ is MutLongMapExt!1311) (_2!7095 lt!420833))))

(declare-fun choose!7875 (MutLongMap!1312 (_ BitVec 64) V!2963) tuple2!12494)

(assert (=> b!1257236 (= lt!420833 (choose!7875 thiss!47507 key!7089 v!11771))))

(declare-fun b!1257237 () Bool)

(declare-fun e!800241 () Bool)

(declare-fun e!800248 () Bool)

(assert (=> b!1257237 (= e!800241 e!800248)))

(declare-fun res!556639 () Bool)

(assert (=> start!110868 (=> (not res!556639) (not e!800244))))

(assert (=> start!110868 (= res!556639 ((_ is MutLongMapExt!1311) thiss!47507))))

(assert (=> start!110868 e!800244))

(assert (=> start!110868 e!800241))

(assert (=> start!110868 true))

(assert (=> start!110868 tp_is_empty!6519))

(declare-fun b!1257232 () Bool)

(declare-fun res!556640 () Bool)

(assert (=> b!1257232 (=> (not res!556640) (not e!800244))))

(assert (=> b!1257232 (= res!556640 (valid!1051 thiss!47507))))

(declare-fun b!1257238 () Bool)

(assert (=> b!1257238 (= e!800240 (= call!88237 call!88238))))

(declare-fun e!800243 () Bool)

(declare-fun e!800242 () Bool)

(declare-fun array_inv!1509 (array!4660) Bool)

(declare-fun array_inv!1510 (array!4658) Bool)

(assert (=> b!1257239 (= e!800243 (and tp!370616 tp_is_empty!6519 (array_inv!1509 (_keys!1606 (v!20784 (underlying!2830 thiss!47507)))) (array_inv!1510 (_values!1591 (v!20784 (underlying!2830 thiss!47507)))) e!800242))))

(declare-fun bm!88233 () Bool)

(assert (=> bm!88233 (= call!88238 (abstractMap!57 thiss!47507))))

(declare-fun b!1257240 () Bool)

(assert (=> b!1257240 (= e!800242 (and tp_is_empty!6519 mapRes!6295))))

(declare-fun condMapEmpty!6295 () Bool)

(declare-fun mapDefault!6295 () V!2963)

(assert (=> b!1257240 (= condMapEmpty!6295 (= (arr!2077 (_values!1591 (v!20784 (underlying!2830 thiss!47507)))) ((as const (Array (_ BitVec 32) V!2963)) mapDefault!6295)))))

(declare-fun b!1257241 () Bool)

(assert (=> b!1257241 (= e!800248 e!800243)))

(assert (= (and start!110868 res!556639) b!1257232))

(assert (= (and b!1257232 res!556640) b!1257236))

(assert (= (and b!1257236 res!556638) b!1257234))

(assert (= (and b!1257234 c!208725) b!1257233))

(assert (= (and b!1257234 (not c!208725)) b!1257238))

(assert (= (and b!1257233 res!556637) b!1257235))

(assert (= (or b!1257235 b!1257238) bm!88233))

(assert (= (or b!1257233 b!1257238) bm!88232))

(assert (= (and b!1257240 condMapEmpty!6295) mapIsEmpty!6295))

(assert (= (and b!1257240 (not condMapEmpty!6295)) mapNonEmpty!6295))

(assert (= b!1257239 b!1257240))

(assert (= b!1257241 b!1257239))

(assert (= b!1257237 b!1257241))

(assert (= (and start!110868 ((_ is LongMap!1312) thiss!47507)) b!1257237))

(declare-fun m!1415365 () Bool)

(assert (=> b!1257233 m!1415365))

(declare-fun m!1415367 () Bool)

(assert (=> bm!88233 m!1415367))

(declare-fun m!1415369 () Bool)

(assert (=> bm!88232 m!1415369))

(declare-fun m!1415371 () Bool)

(assert (=> b!1257236 m!1415371))

(declare-fun m!1415373 () Bool)

(assert (=> b!1257236 m!1415373))

(declare-fun m!1415375 () Bool)

(assert (=> b!1257239 m!1415375))

(declare-fun m!1415377 () Bool)

(assert (=> b!1257239 m!1415377))

(declare-fun m!1415379 () Bool)

(assert (=> mapNonEmpty!6295 m!1415379))

(declare-fun m!1415381 () Bool)

(assert (=> b!1257232 m!1415381))

(declare-fun m!1415383 () Bool)

(assert (=> b!1257235 m!1415383))

(check-sat (not b!1257233) (not b_next!30459) (not b!1257232) b_and!84899 (not bm!88233) (not b!1257239) tp_is_empty!6519 (not bm!88232) (not b!1257235) (not mapNonEmpty!6295) (not b!1257236))
(check-sat b_and!84899 (not b_next!30459))
(get-model)

(declare-fun d!355251 () Bool)

(declare-fun e!800251 () Bool)

(assert (=> d!355251 e!800251))

(declare-fun res!556645 () Bool)

(assert (=> d!355251 (=> (not res!556645) (not e!800251))))

(declare-fun lt!420845 () ListLongMap!149)

(assert (=> d!355251 (= res!556645 (contains!2126 lt!420845 (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun lt!420843 () List!12633)

(assert (=> d!355251 (= lt!420845 (ListLongMap!150 lt!420843))))

(declare-datatypes ((Unit!18852 0))(
  ( (Unit!18853) )
))
(declare-fun lt!420846 () Unit!18852)

(declare-fun lt!420844 () Unit!18852)

(assert (=> d!355251 (= lt!420846 lt!420844)))

(declare-datatypes ((Option!2528 0))(
  ( (None!2527) (Some!2527 (v!20786 V!2963)) )
))
(declare-fun getValueByKey!26 (List!12633 (_ BitVec 64)) Option!2528)

(assert (=> d!355251 (= (getValueByKey!26 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771))) (Some!2527 (_2!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun lemmaContainsTupThenGetReturnValue!12 (List!12633 (_ BitVec 64) V!2963) Unit!18852)

(assert (=> d!355251 (= lt!420844 (lemmaContainsTupThenGetReturnValue!12 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun insertStrictlySorted!8 (List!12633 (_ BitVec 64) V!2963) List!12633)

(assert (=> d!355251 (= lt!420843 (insertStrictlySorted!8 (toList!706 call!88238) (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))))))

(assert (=> d!355251 (= (+!36 call!88238 (tuple2!12493 key!7089 v!11771)) lt!420845)))

(declare-fun b!1257246 () Bool)

(declare-fun res!556646 () Bool)

(assert (=> b!1257246 (=> (not res!556646) (not e!800251))))

(assert (=> b!1257246 (= res!556646 (= (getValueByKey!26 (toList!706 lt!420845) (_1!7094 (tuple2!12493 key!7089 v!11771))) (Some!2527 (_2!7094 (tuple2!12493 key!7089 v!11771)))))))

(declare-fun b!1257247 () Bool)

(declare-fun contains!2127 (List!12633 tuple2!12492) Bool)

(assert (=> b!1257247 (= e!800251 (contains!2127 (toList!706 lt!420845) (tuple2!12493 key!7089 v!11771)))))

(assert (= (and d!355251 res!556645) b!1257246))

(assert (= (and b!1257246 res!556646) b!1257247))

(declare-fun m!1415385 () Bool)

(assert (=> d!355251 m!1415385))

(declare-fun m!1415387 () Bool)

(assert (=> d!355251 m!1415387))

(declare-fun m!1415389 () Bool)

(assert (=> d!355251 m!1415389))

(declare-fun m!1415391 () Bool)

(assert (=> d!355251 m!1415391))

(declare-fun m!1415393 () Bool)

(assert (=> b!1257246 m!1415393))

(declare-fun m!1415395 () Bool)

(assert (=> b!1257247 m!1415395))

(assert (=> b!1257235 d!355251))

(declare-fun d!355253 () Bool)

(assert (=> d!355253 (= (array_inv!1509 (_keys!1606 (v!20784 (underlying!2830 thiss!47507)))) (bvsge (size!9969 (_keys!1606 (v!20784 (underlying!2830 thiss!47507)))) #b00000000000000000000000000000000))))

(assert (=> b!1257239 d!355253))

(declare-fun d!355255 () Bool)

(assert (=> d!355255 (= (array_inv!1510 (_values!1591 (v!20784 (underlying!2830 thiss!47507)))) (bvsge (size!9968 (_values!1591 (v!20784 (underlying!2830 thiss!47507)))) #b00000000000000000000000000000000))))

(assert (=> b!1257239 d!355255))

(declare-fun d!355257 () Bool)

(declare-fun c!208728 () Bool)

(assert (=> d!355257 (= c!208728 ((_ is LongMap!1312) (_2!7095 lt!420833)))))

(declare-fun e!800254 () ListLongMap!149)

(assert (=> d!355257 (= (abstractMap!57 (_2!7095 lt!420833)) e!800254)))

(declare-fun b!1257252 () Bool)

(declare-fun abstractMap!58 (MutLongMap!1312) ListLongMap!149)

(assert (=> b!1257252 (= e!800254 (abstractMap!58 (_2!7095 lt!420833)))))

(declare-fun b!1257253 () Bool)

(declare-fun abstractMap!59 (MutLongMap!1312) ListLongMap!149)

(assert (=> b!1257253 (= e!800254 (abstractMap!59 (_2!7095 lt!420833)))))

(assert (= (and d!355257 c!208728) b!1257252))

(assert (= (and d!355257 (not c!208728)) b!1257253))

(declare-fun m!1415397 () Bool)

(assert (=> b!1257252 m!1415397))

(declare-fun m!1415399 () Bool)

(assert (=> b!1257253 m!1415399))

(assert (=> bm!88232 d!355257))

(declare-fun d!355259 () Bool)

(declare-fun c!208731 () Bool)

(assert (=> d!355259 (= c!208731 ((_ is LongMap!1312) thiss!47507))))

(declare-fun e!800257 () Bool)

(assert (=> d!355259 (= (valid!1051 thiss!47507) e!800257)))

(declare-fun b!1257258 () Bool)

(declare-fun valid!1052 (MutLongMap!1312) Bool)

(assert (=> b!1257258 (= e!800257 (valid!1052 thiss!47507))))

(declare-fun b!1257259 () Bool)

(declare-fun valid!1053 (MutLongMap!1312) Bool)

(assert (=> b!1257259 (= e!800257 (valid!1053 thiss!47507))))

(assert (= (and d!355259 c!208731) b!1257258))

(assert (= (and d!355259 (not c!208731)) b!1257259))

(declare-fun m!1415401 () Bool)

(assert (=> b!1257258 m!1415401))

(declare-fun m!1415403 () Bool)

(assert (=> b!1257259 m!1415403))

(assert (=> b!1257232 d!355259))

(declare-fun d!355261 () Bool)

(declare-fun c!208732 () Bool)

(assert (=> d!355261 (= c!208732 ((_ is LongMap!1312) thiss!47507))))

(declare-fun e!800258 () ListLongMap!149)

(assert (=> d!355261 (= (abstractMap!57 thiss!47507) e!800258)))

(declare-fun b!1257260 () Bool)

(assert (=> b!1257260 (= e!800258 (abstractMap!58 thiss!47507))))

(declare-fun b!1257261 () Bool)

(assert (=> b!1257261 (= e!800258 (abstractMap!59 thiss!47507))))

(assert (= (and d!355261 c!208732) b!1257260))

(assert (= (and d!355261 (not c!208732)) b!1257261))

(declare-fun m!1415405 () Bool)

(assert (=> b!1257260 m!1415405))

(declare-fun m!1415407 () Bool)

(assert (=> b!1257261 m!1415407))

(assert (=> bm!88233 d!355261))

(declare-fun d!355263 () Bool)

(declare-fun e!800263 () Bool)

(assert (=> d!355263 e!800263))

(declare-fun res!556649 () Bool)

(assert (=> d!355263 (=> res!556649 e!800263)))

(declare-fun lt!420857 () Bool)

(assert (=> d!355263 (= res!556649 (not lt!420857))))

(declare-fun lt!420855 () Bool)

(assert (=> d!355263 (= lt!420857 lt!420855)))

(declare-fun lt!420856 () Unit!18852)

(declare-fun e!800264 () Unit!18852)

(assert (=> d!355263 (= lt!420856 e!800264)))

(declare-fun c!208735 () Bool)

(assert (=> d!355263 (= c!208735 lt!420855)))

(declare-fun containsKey!35 (List!12633 (_ BitVec 64)) Bool)

(assert (=> d!355263 (= lt!420855 (containsKey!35 (toList!706 lt!420834) key!7089))))

(assert (=> d!355263 (= (contains!2126 lt!420834 key!7089) lt!420857)))

(declare-fun b!1257268 () Bool)

(declare-fun lt!420858 () Unit!18852)

(assert (=> b!1257268 (= e!800264 lt!420858)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!18 (List!12633 (_ BitVec 64)) Unit!18852)

(assert (=> b!1257268 (= lt!420858 (lemmaContainsKeyImpliesGetValueByKeyDefined!18 (toList!706 lt!420834) key!7089))))

(declare-fun isDefined!2164 (Option!2528) Bool)

(assert (=> b!1257268 (isDefined!2164 (getValueByKey!26 (toList!706 lt!420834) key!7089))))

(declare-fun b!1257269 () Bool)

(declare-fun Unit!18854 () Unit!18852)

(assert (=> b!1257269 (= e!800264 Unit!18854)))

(declare-fun b!1257270 () Bool)

(assert (=> b!1257270 (= e!800263 (isDefined!2164 (getValueByKey!26 (toList!706 lt!420834) key!7089)))))

(assert (= (and d!355263 c!208735) b!1257268))

(assert (= (and d!355263 (not c!208735)) b!1257269))

(assert (= (and d!355263 (not res!556649)) b!1257270))

(declare-fun m!1415409 () Bool)

(assert (=> d!355263 m!1415409))

(declare-fun m!1415411 () Bool)

(assert (=> b!1257268 m!1415411))

(declare-fun m!1415413 () Bool)

(assert (=> b!1257268 m!1415413))

(assert (=> b!1257268 m!1415413))

(declare-fun m!1415415 () Bool)

(assert (=> b!1257268 m!1415415))

(assert (=> b!1257270 m!1415413))

(assert (=> b!1257270 m!1415413))

(assert (=> b!1257270 m!1415415))

(assert (=> b!1257233 d!355263))

(declare-fun d!355265 () Bool)

(declare-fun c!208736 () Bool)

(assert (=> d!355265 (= c!208736 ((_ is LongMap!1312) (_2!7095 lt!420833)))))

(declare-fun e!800265 () Bool)

(assert (=> d!355265 (= (valid!1051 (_2!7095 lt!420833)) e!800265)))

(declare-fun b!1257271 () Bool)

(assert (=> b!1257271 (= e!800265 (valid!1052 (_2!7095 lt!420833)))))

(declare-fun b!1257272 () Bool)

(assert (=> b!1257272 (= e!800265 (valid!1053 (_2!7095 lt!420833)))))

(assert (= (and d!355265 c!208736) b!1257271))

(assert (= (and d!355265 (not c!208736)) b!1257272))

(declare-fun m!1415417 () Bool)

(assert (=> b!1257271 m!1415417))

(declare-fun m!1415419 () Bool)

(assert (=> b!1257272 m!1415419))

(assert (=> b!1257236 d!355265))

(declare-fun d!355267 () Bool)

(declare-fun choose!7876 (MutLongMap!1312 (_ BitVec 64) V!2963) tuple2!12494)

(assert (=> d!355267 (= (choose!7875 thiss!47507 key!7089 v!11771) (choose!7876 thiss!47507 key!7089 v!11771))))

(declare-fun bs!290381 () Bool)

(assert (= bs!290381 d!355267))

(declare-fun m!1415421 () Bool)

(assert (=> bs!290381 m!1415421))

(assert (=> b!1257236 d!355267))

(declare-fun condMapEmpty!6298 () Bool)

(declare-fun mapDefault!6298 () V!2963)

(assert (=> mapNonEmpty!6295 (= condMapEmpty!6298 (= mapRest!6295 ((as const (Array (_ BitVec 32) V!2963)) mapDefault!6298)))))

(declare-fun mapRes!6298 () Bool)

(assert (=> mapNonEmpty!6295 (= tp!370615 (and tp_is_empty!6519 mapRes!6298))))

(declare-fun mapIsEmpty!6298 () Bool)

(assert (=> mapIsEmpty!6298 mapRes!6298))

(declare-fun mapNonEmpty!6298 () Bool)

(declare-fun tp!370619 () Bool)

(assert (=> mapNonEmpty!6298 (= mapRes!6298 (and tp!370619 tp_is_empty!6519))))

(declare-fun mapRest!6298 () (Array (_ BitVec 32) V!2963))

(declare-fun mapValue!6298 () V!2963)

(declare-fun mapKey!6298 () (_ BitVec 32))

(assert (=> mapNonEmpty!6298 (= mapRest!6295 (store mapRest!6298 mapKey!6298 mapValue!6298))))

(assert (= (and mapNonEmpty!6295 condMapEmpty!6298) mapIsEmpty!6298))

(assert (= (and mapNonEmpty!6295 (not condMapEmpty!6298)) mapNonEmpty!6298))

(declare-fun m!1415423 () Bool)

(assert (=> mapNonEmpty!6298 m!1415423))

(check-sat (not b!1257268) (not b!1257270) (not d!355251) (not d!355263) (not b!1257261) (not b!1257259) (not b!1257253) (not b!1257246) (not b!1257260) (not b!1257252) (not b!1257271) (not b!1257272) tp_is_empty!6519 (not b!1257258) (not b_next!30459) b_and!84899 (not mapNonEmpty!6298) (not b!1257247) (not d!355267))
(check-sat b_and!84899 (not b_next!30459))
(get-model)

(declare-fun lt!420861 () Bool)

(declare-fun d!355269 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1801 (List!12633) (InoxSet tuple2!12492))

(assert (=> d!355269 (= lt!420861 (select (content!1801 (toList!706 lt!420845)) (tuple2!12493 key!7089 v!11771)))))

(declare-fun e!800271 () Bool)

(assert (=> d!355269 (= lt!420861 e!800271)))

(declare-fun res!556654 () Bool)

(assert (=> d!355269 (=> (not res!556654) (not e!800271))))

(assert (=> d!355269 (= res!556654 ((_ is Cons!12569) (toList!706 lt!420845)))))

(assert (=> d!355269 (= (contains!2127 (toList!706 lt!420845) (tuple2!12493 key!7089 v!11771)) lt!420861)))

(declare-fun b!1257279 () Bool)

(declare-fun e!800270 () Bool)

(assert (=> b!1257279 (= e!800271 e!800270)))

(declare-fun res!556655 () Bool)

(assert (=> b!1257279 (=> res!556655 e!800270)))

(assert (=> b!1257279 (= res!556655 (= (h!17970 (toList!706 lt!420845)) (tuple2!12493 key!7089 v!11771)))))

(declare-fun b!1257280 () Bool)

(assert (=> b!1257280 (= e!800270 (contains!2127 (t!115765 (toList!706 lt!420845)) (tuple2!12493 key!7089 v!11771)))))

(assert (= (and d!355269 res!556654) b!1257279))

(assert (= (and b!1257279 (not res!556655)) b!1257280))

(declare-fun m!1415425 () Bool)

(assert (=> d!355269 m!1415425))

(declare-fun m!1415427 () Bool)

(assert (=> d!355269 m!1415427))

(declare-fun m!1415429 () Bool)

(assert (=> b!1257280 m!1415429))

(assert (=> b!1257247 d!355269))

(declare-fun b!1257291 () Bool)

(declare-fun e!800277 () Option!2528)

(assert (=> b!1257291 (= e!800277 (getValueByKey!26 (t!115765 (toList!706 lt!420845)) (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun b!1257289 () Bool)

(declare-fun e!800276 () Option!2528)

(assert (=> b!1257289 (= e!800276 (Some!2527 (_2!7094 (h!17970 (toList!706 lt!420845)))))))

(declare-fun b!1257290 () Bool)

(assert (=> b!1257290 (= e!800276 e!800277)))

(declare-fun c!208742 () Bool)

(assert (=> b!1257290 (= c!208742 (and ((_ is Cons!12569) (toList!706 lt!420845)) (not (= (_1!7094 (h!17970 (toList!706 lt!420845))) (_1!7094 (tuple2!12493 key!7089 v!11771))))))))

(declare-fun b!1257292 () Bool)

(assert (=> b!1257292 (= e!800277 None!2527)))

(declare-fun d!355271 () Bool)

(declare-fun c!208741 () Bool)

(assert (=> d!355271 (= c!208741 (and ((_ is Cons!12569) (toList!706 lt!420845)) (= (_1!7094 (h!17970 (toList!706 lt!420845))) (_1!7094 (tuple2!12493 key!7089 v!11771)))))))

(assert (=> d!355271 (= (getValueByKey!26 (toList!706 lt!420845) (_1!7094 (tuple2!12493 key!7089 v!11771))) e!800276)))

(assert (= (and d!355271 c!208741) b!1257289))

(assert (= (and d!355271 (not c!208741)) b!1257290))

(assert (= (and b!1257290 c!208742) b!1257291))

(assert (= (and b!1257290 (not c!208742)) b!1257292))

(declare-fun m!1415431 () Bool)

(assert (=> b!1257291 m!1415431))

(assert (=> b!1257246 d!355271))

(declare-fun d!355273 () Bool)

(declare-fun choose!7877 (MutLongMap!1312) Bool)

(assert (=> d!355273 (= (valid!1053 (_2!7095 lt!420833)) (choose!7877 (_2!7095 lt!420833)))))

(declare-fun bs!290382 () Bool)

(assert (= bs!290382 d!355273))

(declare-fun m!1415433 () Bool)

(assert (=> bs!290382 m!1415433))

(assert (=> b!1257272 d!355273))

(declare-fun d!355275 () Bool)

(declare-fun valid!1054 (LongMapFixedSize!2624) Bool)

(assert (=> d!355275 (= (valid!1052 (_2!7095 lt!420833)) (valid!1054 (v!20784 (underlying!2830 (_2!7095 lt!420833)))))))

(declare-fun bs!290383 () Bool)

(assert (= bs!290383 d!355275))

(declare-fun m!1415435 () Bool)

(assert (=> bs!290383 m!1415435))

(assert (=> b!1257271 d!355275))

(declare-fun d!355277 () Bool)

(declare-fun choose!7878 (MutLongMap!1312) ListLongMap!149)

(assert (=> d!355277 (= (abstractMap!59 (_2!7095 lt!420833)) (choose!7878 (_2!7095 lt!420833)))))

(declare-fun bs!290384 () Bool)

(assert (= bs!290384 d!355277))

(declare-fun m!1415437 () Bool)

(assert (=> bs!290384 m!1415437))

(assert (=> b!1257253 d!355277))

(declare-fun d!355279 () Bool)

(assert (=> d!355279 (= (valid!1053 thiss!47507) (choose!7877 thiss!47507))))

(declare-fun bs!290385 () Bool)

(assert (= bs!290385 d!355279))

(declare-fun m!1415439 () Bool)

(assert (=> bs!290385 m!1415439))

(assert (=> b!1257259 d!355279))

(declare-fun d!355281 () Bool)

(declare-fun isEmpty!7500 (Option!2528) Bool)

(assert (=> d!355281 (= (isDefined!2164 (getValueByKey!26 (toList!706 lt!420834) key!7089)) (not (isEmpty!7500 (getValueByKey!26 (toList!706 lt!420834) key!7089))))))

(declare-fun bs!290386 () Bool)

(assert (= bs!290386 d!355281))

(assert (=> bs!290386 m!1415413))

(declare-fun m!1415441 () Bool)

(assert (=> bs!290386 m!1415441))

(assert (=> b!1257270 d!355281))

(declare-fun b!1257295 () Bool)

(declare-fun e!800279 () Option!2528)

(assert (=> b!1257295 (= e!800279 (getValueByKey!26 (t!115765 (toList!706 lt!420834)) key!7089))))

(declare-fun b!1257293 () Bool)

(declare-fun e!800278 () Option!2528)

(assert (=> b!1257293 (= e!800278 (Some!2527 (_2!7094 (h!17970 (toList!706 lt!420834)))))))

(declare-fun b!1257294 () Bool)

(assert (=> b!1257294 (= e!800278 e!800279)))

(declare-fun c!208744 () Bool)

(assert (=> b!1257294 (= c!208744 (and ((_ is Cons!12569) (toList!706 lt!420834)) (not (= (_1!7094 (h!17970 (toList!706 lt!420834))) key!7089))))))

(declare-fun b!1257296 () Bool)

(assert (=> b!1257296 (= e!800279 None!2527)))

(declare-fun d!355283 () Bool)

(declare-fun c!208743 () Bool)

(assert (=> d!355283 (= c!208743 (and ((_ is Cons!12569) (toList!706 lt!420834)) (= (_1!7094 (h!17970 (toList!706 lt!420834))) key!7089)))))

(assert (=> d!355283 (= (getValueByKey!26 (toList!706 lt!420834) key!7089) e!800278)))

(assert (= (and d!355283 c!208743) b!1257293))

(assert (= (and d!355283 (not c!208743)) b!1257294))

(assert (= (and b!1257294 c!208744) b!1257295))

(assert (= (and b!1257294 (not c!208744)) b!1257296))

(declare-fun m!1415443 () Bool)

(assert (=> b!1257295 m!1415443))

(assert (=> b!1257270 d!355283))

(declare-fun d!355285 () Bool)

(declare-fun map!2750 (MutLongMap!1312) ListLongMap!149)

(assert (=> d!355285 (= (abstractMap!58 (_2!7095 lt!420833)) (map!2750 (_2!7095 lt!420833)))))

(declare-fun bs!290387 () Bool)

(assert (= bs!290387 d!355285))

(declare-fun m!1415445 () Bool)

(assert (=> bs!290387 m!1415445))

(assert (=> b!1257252 d!355285))

(declare-fun d!355287 () Bool)

(assert (=> d!355287 (= (abstractMap!59 thiss!47507) (choose!7878 thiss!47507))))

(declare-fun bs!290388 () Bool)

(assert (= bs!290388 d!355287))

(declare-fun m!1415447 () Bool)

(assert (=> bs!290388 m!1415447))

(assert (=> b!1257261 d!355287))

(declare-fun d!355289 () Bool)

(assert (=> d!355289 (= (valid!1052 thiss!47507) (valid!1054 (v!20784 (underlying!2830 thiss!47507))))))

(declare-fun bs!290389 () Bool)

(assert (= bs!290389 d!355289))

(declare-fun m!1415449 () Bool)

(assert (=> bs!290389 m!1415449))

(assert (=> b!1257258 d!355289))

(declare-fun d!355291 () Bool)

(assert (=> d!355291 (= (abstractMap!58 thiss!47507) (map!2750 thiss!47507))))

(declare-fun bs!290390 () Bool)

(assert (= bs!290390 d!355291))

(declare-fun m!1415451 () Bool)

(assert (=> bs!290390 m!1415451))

(assert (=> b!1257260 d!355291))

(declare-fun b!1257316 () Bool)

(declare-fun b_free!29757 () Bool)

(declare-fun b_next!30461 () Bool)

(assert (=> b!1257316 (= b_free!29757 (not b_next!30461))))

(declare-fun tp!370625 () Bool)

(declare-fun b_and!84901 () Bool)

(assert (=> b!1257316 (= tp!370625 b_and!84901)))

(declare-fun b!1257313 () Bool)

(declare-fun e!800299 () Bool)

(declare-fun e!800297 () Bool)

(assert (=> b!1257313 (= e!800299 e!800297)))

(declare-fun bm!88238 () Bool)

(declare-fun call!88244 () ListLongMap!149)

(declare-fun res!556663 () tuple2!12494)

(assert (=> bm!88238 (= call!88244 (abstractMap!57 (_2!7095 res!556663)))))

(declare-fun b!1257314 () Bool)

(declare-fun e!800301 () Bool)

(declare-fun e!800300 () Bool)

(assert (=> b!1257314 (= e!800301 e!800300)))

(declare-fun c!208747 () Bool)

(assert (=> b!1257314 (= c!208747 (_1!7095 res!556663))))

(declare-fun b!1257315 () Bool)

(declare-fun call!88243 () ListLongMap!149)

(assert (=> b!1257315 (= e!800300 (= call!88244 call!88243))))

(declare-fun e!800303 () Bool)

(assert (=> b!1257316 (= e!800297 (and tp!370625 tp_is_empty!6519 (array_inv!1509 (_keys!1606 (v!20784 (underlying!2830 (_2!7095 res!556663))))) (array_inv!1510 (_values!1591 (v!20784 (underlying!2830 (_2!7095 res!556663))))) e!800303))))

(declare-fun b!1257317 () Bool)

(declare-fun e!800302 () Bool)

(assert (=> b!1257317 (= e!800300 e!800302)))

(declare-fun res!556662 () Bool)

(assert (=> b!1257317 (= res!556662 (contains!2126 call!88244 key!7089))))

(assert (=> b!1257317 (=> (not res!556662) (not e!800302))))

(declare-fun b!1257318 () Bool)

(declare-fun e!800296 () Bool)

(assert (=> b!1257318 (= e!800296 e!800299)))

(declare-fun mapIsEmpty!6301 () Bool)

(declare-fun mapRes!6301 () Bool)

(assert (=> mapIsEmpty!6301 mapRes!6301))

(declare-fun bm!88239 () Bool)

(assert (=> bm!88239 (= call!88243 (abstractMap!57 thiss!47507))))

(declare-fun mapNonEmpty!6301 () Bool)

(declare-fun tp!370624 () Bool)

(assert (=> mapNonEmpty!6301 (= mapRes!6301 (and tp!370624 tp_is_empty!6519))))

(declare-fun mapValue!6301 () V!2963)

(declare-fun mapRest!6301 () (Array (_ BitVec 32) V!2963))

(declare-fun mapKey!6301 () (_ BitVec 32))

(assert (=> mapNonEmpty!6301 (= (arr!2077 (_values!1591 (v!20784 (underlying!2830 (_2!7095 res!556663))))) (store mapRest!6301 mapKey!6301 mapValue!6301))))

(declare-fun d!355293 () Bool)

(assert (=> d!355293 e!800301))

(declare-fun res!556664 () Bool)

(assert (=> d!355293 (=> (not res!556664) (not e!800301))))

(assert (=> d!355293 (= res!556664 (valid!1051 (_2!7095 res!556663)))))

(assert (=> d!355293 ((_ is MutLongMapExt!1311) (_2!7095 res!556663))))

(declare-fun lt!420864 () tuple2!12494)

(assert (=> d!355293 (and e!800296 ((_ is MutLongMapExt!1311) (_2!7095 lt!420864)))))

(assert (=> d!355293 (= lt!420864 res!556663)))

(assert (=> d!355293 (= (choose!7876 thiss!47507 key!7089 v!11771) res!556663)))

(declare-fun b!1257319 () Bool)

(assert (=> b!1257319 (= e!800302 (= call!88244 (+!36 call!88243 (tuple2!12493 key!7089 v!11771))))))

(declare-fun b!1257320 () Bool)

(assert (=> b!1257320 (= e!800303 (and tp_is_empty!6519 mapRes!6301))))

(declare-fun condMapEmpty!6301 () Bool)

(declare-fun mapDefault!6301 () V!2963)

(assert (=> b!1257320 (= condMapEmpty!6301 (= (arr!2077 (_values!1591 (v!20784 (underlying!2830 (_2!7095 res!556663))))) ((as const (Array (_ BitVec 32) V!2963)) mapDefault!6301)))))

(assert (= (and b!1257320 condMapEmpty!6301) mapIsEmpty!6301))

(assert (= (and b!1257320 (not condMapEmpty!6301)) mapNonEmpty!6301))

(assert (= b!1257316 b!1257320))

(assert (= b!1257313 b!1257316))

(assert (= b!1257318 b!1257313))

(assert (= (and d!355293 ((_ is LongMap!1312) (_2!7095 res!556663))) b!1257318))

(assert (= (and d!355293 res!556664) b!1257314))

(assert (= (and b!1257314 c!208747) b!1257317))

(assert (= (and b!1257314 (not c!208747)) b!1257315))

(assert (= (and b!1257317 res!556662) b!1257319))

(assert (= (or b!1257317 b!1257319 b!1257315) bm!88238))

(assert (= (or b!1257319 b!1257315) bm!88239))

(declare-fun m!1415453 () Bool)

(assert (=> b!1257319 m!1415453))

(declare-fun m!1415455 () Bool)

(assert (=> d!355293 m!1415455))

(declare-fun m!1415457 () Bool)

(assert (=> b!1257316 m!1415457))

(declare-fun m!1415459 () Bool)

(assert (=> b!1257316 m!1415459))

(declare-fun m!1415461 () Bool)

(assert (=> b!1257317 m!1415461))

(assert (=> bm!88239 m!1415367))

(declare-fun m!1415463 () Bool)

(assert (=> mapNonEmpty!6301 m!1415463))

(declare-fun m!1415465 () Bool)

(assert (=> bm!88238 m!1415465))

(assert (=> d!355267 d!355293))

(declare-fun d!355295 () Bool)

(assert (=> d!355295 (isDefined!2164 (getValueByKey!26 (toList!706 lt!420834) key!7089))))

(declare-fun lt!420867 () Unit!18852)

(declare-fun choose!7879 (List!12633 (_ BitVec 64)) Unit!18852)

(assert (=> d!355295 (= lt!420867 (choose!7879 (toList!706 lt!420834) key!7089))))

(declare-fun e!800306 () Bool)

(assert (=> d!355295 e!800306))

(declare-fun res!556667 () Bool)

(assert (=> d!355295 (=> (not res!556667) (not e!800306))))

(declare-fun isStrictlySorted!2 (List!12633) Bool)

(assert (=> d!355295 (= res!556667 (isStrictlySorted!2 (toList!706 lt!420834)))))

(assert (=> d!355295 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!18 (toList!706 lt!420834) key!7089) lt!420867)))

(declare-fun b!1257323 () Bool)

(assert (=> b!1257323 (= e!800306 (containsKey!35 (toList!706 lt!420834) key!7089))))

(assert (= (and d!355295 res!556667) b!1257323))

(assert (=> d!355295 m!1415413))

(assert (=> d!355295 m!1415413))

(assert (=> d!355295 m!1415415))

(declare-fun m!1415467 () Bool)

(assert (=> d!355295 m!1415467))

(declare-fun m!1415469 () Bool)

(assert (=> d!355295 m!1415469))

(assert (=> b!1257323 m!1415409))

(assert (=> b!1257268 d!355295))

(assert (=> b!1257268 d!355281))

(assert (=> b!1257268 d!355283))

(declare-fun d!355297 () Bool)

(declare-fun res!556672 () Bool)

(declare-fun e!800311 () Bool)

(assert (=> d!355297 (=> res!556672 e!800311)))

(assert (=> d!355297 (= res!556672 (and ((_ is Cons!12569) (toList!706 lt!420834)) (= (_1!7094 (h!17970 (toList!706 lt!420834))) key!7089)))))

(assert (=> d!355297 (= (containsKey!35 (toList!706 lt!420834) key!7089) e!800311)))

(declare-fun b!1257328 () Bool)

(declare-fun e!800312 () Bool)

(assert (=> b!1257328 (= e!800311 e!800312)))

(declare-fun res!556673 () Bool)

(assert (=> b!1257328 (=> (not res!556673) (not e!800312))))

(assert (=> b!1257328 (= res!556673 (and (or (not ((_ is Cons!12569) (toList!706 lt!420834))) (bvsle (_1!7094 (h!17970 (toList!706 lt!420834))) key!7089)) ((_ is Cons!12569) (toList!706 lt!420834)) (bvslt (_1!7094 (h!17970 (toList!706 lt!420834))) key!7089)))))

(declare-fun b!1257329 () Bool)

(assert (=> b!1257329 (= e!800312 (containsKey!35 (t!115765 (toList!706 lt!420834)) key!7089))))

(assert (= (and d!355297 (not res!556672)) b!1257328))

(assert (= (and b!1257328 res!556673) b!1257329))

(declare-fun m!1415471 () Bool)

(assert (=> b!1257329 m!1415471))

(assert (=> d!355263 d!355297))

(declare-fun d!355299 () Bool)

(declare-fun e!800313 () Bool)

(assert (=> d!355299 e!800313))

(declare-fun res!556674 () Bool)

(assert (=> d!355299 (=> res!556674 e!800313)))

(declare-fun lt!420870 () Bool)

(assert (=> d!355299 (= res!556674 (not lt!420870))))

(declare-fun lt!420868 () Bool)

(assert (=> d!355299 (= lt!420870 lt!420868)))

(declare-fun lt!420869 () Unit!18852)

(declare-fun e!800314 () Unit!18852)

(assert (=> d!355299 (= lt!420869 e!800314)))

(declare-fun c!208748 () Bool)

(assert (=> d!355299 (= c!208748 lt!420868)))

(assert (=> d!355299 (= lt!420868 (containsKey!35 (toList!706 lt!420845) (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(assert (=> d!355299 (= (contains!2126 lt!420845 (_1!7094 (tuple2!12493 key!7089 v!11771))) lt!420870)))

(declare-fun b!1257330 () Bool)

(declare-fun lt!420871 () Unit!18852)

(assert (=> b!1257330 (= e!800314 lt!420871)))

(assert (=> b!1257330 (= lt!420871 (lemmaContainsKeyImpliesGetValueByKeyDefined!18 (toList!706 lt!420845) (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(assert (=> b!1257330 (isDefined!2164 (getValueByKey!26 (toList!706 lt!420845) (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun b!1257331 () Bool)

(declare-fun Unit!18855 () Unit!18852)

(assert (=> b!1257331 (= e!800314 Unit!18855)))

(declare-fun b!1257332 () Bool)

(assert (=> b!1257332 (= e!800313 (isDefined!2164 (getValueByKey!26 (toList!706 lt!420845) (_1!7094 (tuple2!12493 key!7089 v!11771)))))))

(assert (= (and d!355299 c!208748) b!1257330))

(assert (= (and d!355299 (not c!208748)) b!1257331))

(assert (= (and d!355299 (not res!556674)) b!1257332))

(declare-fun m!1415473 () Bool)

(assert (=> d!355299 m!1415473))

(declare-fun m!1415475 () Bool)

(assert (=> b!1257330 m!1415475))

(assert (=> b!1257330 m!1415393))

(assert (=> b!1257330 m!1415393))

(declare-fun m!1415477 () Bool)

(assert (=> b!1257330 m!1415477))

(assert (=> b!1257332 m!1415393))

(assert (=> b!1257332 m!1415393))

(assert (=> b!1257332 m!1415477))

(assert (=> d!355251 d!355299))

(declare-fun e!800316 () Option!2528)

(declare-fun b!1257335 () Bool)

(assert (=> b!1257335 (= e!800316 (getValueByKey!26 (t!115765 lt!420843) (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun b!1257333 () Bool)

(declare-fun e!800315 () Option!2528)

(assert (=> b!1257333 (= e!800315 (Some!2527 (_2!7094 (h!17970 lt!420843))))))

(declare-fun b!1257334 () Bool)

(assert (=> b!1257334 (= e!800315 e!800316)))

(declare-fun c!208750 () Bool)

(assert (=> b!1257334 (= c!208750 (and ((_ is Cons!12569) lt!420843) (not (= (_1!7094 (h!17970 lt!420843)) (_1!7094 (tuple2!12493 key!7089 v!11771))))))))

(declare-fun b!1257336 () Bool)

(assert (=> b!1257336 (= e!800316 None!2527)))

(declare-fun c!208749 () Bool)

(declare-fun d!355301 () Bool)

(assert (=> d!355301 (= c!208749 (and ((_ is Cons!12569) lt!420843) (= (_1!7094 (h!17970 lt!420843)) (_1!7094 (tuple2!12493 key!7089 v!11771)))))))

(assert (=> d!355301 (= (getValueByKey!26 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771))) e!800315)))

(assert (= (and d!355301 c!208749) b!1257333))

(assert (= (and d!355301 (not c!208749)) b!1257334))

(assert (= (and b!1257334 c!208750) b!1257335))

(assert (= (and b!1257334 (not c!208750)) b!1257336))

(declare-fun m!1415479 () Bool)

(assert (=> b!1257335 m!1415479))

(assert (=> d!355251 d!355301))

(declare-fun d!355303 () Bool)

(assert (=> d!355303 (= (getValueByKey!26 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771))) (Some!2527 (_2!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun lt!420874 () Unit!18852)

(declare-fun choose!7880 (List!12633 (_ BitVec 64) V!2963) Unit!18852)

(assert (=> d!355303 (= lt!420874 (choose!7880 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun e!800319 () Bool)

(assert (=> d!355303 e!800319))

(declare-fun res!556679 () Bool)

(assert (=> d!355303 (=> (not res!556679) (not e!800319))))

(assert (=> d!355303 (= res!556679 (isStrictlySorted!2 lt!420843))))

(assert (=> d!355303 (= (lemmaContainsTupThenGetReturnValue!12 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))) lt!420874)))

(declare-fun b!1257341 () Bool)

(declare-fun res!556680 () Bool)

(assert (=> b!1257341 (=> (not res!556680) (not e!800319))))

(assert (=> b!1257341 (= res!556680 (containsKey!35 lt!420843 (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun b!1257342 () Bool)

(assert (=> b!1257342 (= e!800319 (contains!2127 lt!420843 (tuple2!12493 (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771)))))))

(assert (= (and d!355303 res!556679) b!1257341))

(assert (= (and b!1257341 res!556680) b!1257342))

(assert (=> d!355303 m!1415387))

(declare-fun m!1415481 () Bool)

(assert (=> d!355303 m!1415481))

(declare-fun m!1415483 () Bool)

(assert (=> d!355303 m!1415483))

(declare-fun m!1415485 () Bool)

(assert (=> b!1257341 m!1415485))

(declare-fun m!1415487 () Bool)

(assert (=> b!1257342 m!1415487))

(assert (=> d!355251 d!355303))

(declare-fun b!1257363 () Bool)

(declare-fun res!556685 () Bool)

(declare-fun e!800332 () Bool)

(assert (=> b!1257363 (=> (not res!556685) (not e!800332))))

(declare-fun lt!420877 () List!12633)

(assert (=> b!1257363 (= res!556685 (containsKey!35 lt!420877 (_1!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun b!1257364 () Bool)

(declare-fun e!800331 () List!12633)

(declare-fun call!88252 () List!12633)

(assert (=> b!1257364 (= e!800331 call!88252)))

(declare-fun b!1257365 () Bool)

(declare-fun e!800333 () List!12633)

(declare-fun call!88253 () List!12633)

(assert (=> b!1257365 (= e!800333 call!88253)))

(declare-fun bm!88246 () Bool)

(declare-fun call!88251 () List!12633)

(assert (=> bm!88246 (= call!88251 call!88253)))

(declare-fun b!1257366 () Bool)

(assert (=> b!1257366 (= e!800332 (contains!2127 lt!420877 (tuple2!12493 (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771)))))))

(declare-fun bm!88247 () Bool)

(assert (=> bm!88247 (= call!88252 call!88251)))

(declare-fun b!1257367 () Bool)

(assert (=> b!1257367 (= e!800331 call!88252)))

(declare-fun c!208760 () Bool)

(declare-fun c!208759 () Bool)

(declare-fun e!800334 () List!12633)

(declare-fun b!1257368 () Bool)

(assert (=> b!1257368 (= e!800334 (ite c!208759 (t!115765 (toList!706 call!88238)) (ite c!208760 (Cons!12569 (h!17970 (toList!706 call!88238)) (t!115765 (toList!706 call!88238))) Nil!12569)))))

(declare-fun b!1257369 () Bool)

(assert (=> b!1257369 (= c!208760 (and ((_ is Cons!12569) (toList!706 call!88238)) (bvsgt (_1!7094 (h!17970 (toList!706 call!88238))) (_1!7094 (tuple2!12493 key!7089 v!11771)))))))

(declare-fun e!800330 () List!12633)

(assert (=> b!1257369 (= e!800330 e!800331)))

(declare-fun b!1257370 () Bool)

(assert (=> b!1257370 (= e!800333 e!800330)))

(assert (=> b!1257370 (= c!208759 (and ((_ is Cons!12569) (toList!706 call!88238)) (= (_1!7094 (h!17970 (toList!706 call!88238))) (_1!7094 (tuple2!12493 key!7089 v!11771)))))))

(declare-fun b!1257371 () Bool)

(assert (=> b!1257371 (= e!800334 (insertStrictlySorted!8 (t!115765 (toList!706 call!88238)) (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))))))

(declare-fun d!355305 () Bool)

(assert (=> d!355305 e!800332))

(declare-fun res!556686 () Bool)

(assert (=> d!355305 (=> (not res!556686) (not e!800332))))

(assert (=> d!355305 (= res!556686 (isStrictlySorted!2 lt!420877))))

(assert (=> d!355305 (= lt!420877 e!800333)))

(declare-fun c!208761 () Bool)

(assert (=> d!355305 (= c!208761 (and ((_ is Cons!12569) (toList!706 call!88238)) (bvslt (_1!7094 (h!17970 (toList!706 call!88238))) (_1!7094 (tuple2!12493 key!7089 v!11771)))))))

(assert (=> d!355305 (isStrictlySorted!2 (toList!706 call!88238))))

(assert (=> d!355305 (= (insertStrictlySorted!8 (toList!706 call!88238) (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))) lt!420877)))

(declare-fun bm!88248 () Bool)

(declare-fun $colon$colon!123 (List!12633 tuple2!12492) List!12633)

(assert (=> bm!88248 (= call!88253 ($colon$colon!123 e!800334 (ite c!208761 (h!17970 (toList!706 call!88238)) (tuple2!12493 (_1!7094 (tuple2!12493 key!7089 v!11771)) (_2!7094 (tuple2!12493 key!7089 v!11771))))))))

(declare-fun c!208762 () Bool)

(assert (=> bm!88248 (= c!208762 c!208761)))

(declare-fun b!1257372 () Bool)

(assert (=> b!1257372 (= e!800330 call!88251)))

(assert (= (and d!355305 c!208761) b!1257365))

(assert (= (and d!355305 (not c!208761)) b!1257370))

(assert (= (and b!1257370 c!208759) b!1257372))

(assert (= (and b!1257370 (not c!208759)) b!1257369))

(assert (= (and b!1257369 c!208760) b!1257364))

(assert (= (and b!1257369 (not c!208760)) b!1257367))

(assert (= (or b!1257364 b!1257367) bm!88247))

(assert (= (or b!1257372 bm!88247) bm!88246))

(assert (= (or b!1257365 bm!88246) bm!88248))

(assert (= (and bm!88248 c!208762) b!1257371))

(assert (= (and bm!88248 (not c!208762)) b!1257368))

(assert (= (and d!355305 res!556686) b!1257363))

(assert (= (and b!1257363 res!556685) b!1257366))

(declare-fun m!1415489 () Bool)

(assert (=> bm!88248 m!1415489))

(declare-fun m!1415491 () Bool)

(assert (=> b!1257366 m!1415491))

(declare-fun m!1415493 () Bool)

(assert (=> d!355305 m!1415493))

(declare-fun m!1415495 () Bool)

(assert (=> d!355305 m!1415495))

(declare-fun m!1415497 () Bool)

(assert (=> b!1257363 m!1415497))

(declare-fun m!1415499 () Bool)

(assert (=> b!1257371 m!1415499))

(assert (=> d!355251 d!355305))

(declare-fun lt!420880 () tuple2!12494)

(assert (=> d!355267 (= lt!420880 (choose!7875 thiss!47507 key!7089 v!11771))))

(assert (=> d!355267 (= true ((_ is MutLongMapExt!1311) (_2!7095 lt!420880)))))

(declare-fun condMapEmpty!6302 () Bool)

(declare-fun mapDefault!6302 () V!2963)

(assert (=> mapNonEmpty!6298 (= condMapEmpty!6302 (= mapRest!6298 ((as const (Array (_ BitVec 32) V!2963)) mapDefault!6302)))))

(declare-fun mapRes!6302 () Bool)

(assert (=> mapNonEmpty!6298 (= tp!370619 (and tp_is_empty!6519 mapRes!6302))))

(declare-fun mapIsEmpty!6302 () Bool)

(assert (=> mapIsEmpty!6302 mapRes!6302))

(declare-fun mapNonEmpty!6302 () Bool)

(declare-fun tp!370626 () Bool)

(assert (=> mapNonEmpty!6302 (= mapRes!6302 (and tp!370626 tp_is_empty!6519))))

(declare-fun mapValue!6302 () V!2963)

(declare-fun mapKey!6302 () (_ BitVec 32))

(declare-fun mapRest!6302 () (Array (_ BitVec 32) V!2963))

(assert (=> mapNonEmpty!6302 (= mapRest!6298 (store mapRest!6302 mapKey!6302 mapValue!6302))))

(assert (= (and mapNonEmpty!6298 condMapEmpty!6302) mapIsEmpty!6302))

(assert (= (and mapNonEmpty!6298 (not condMapEmpty!6302)) mapNonEmpty!6302))

(declare-fun m!1415501 () Bool)

(assert (=> mapNonEmpty!6302 m!1415501))

(check-sat (not bm!88238) (not b!1257335) (not b!1257363) (not d!355275) (not d!355281) (not b!1257280) (not d!355277) (not d!355293) (not d!355295) (not d!355273) (not d!355299) (not b_next!30461) (not b!1257291) (not d!355287) (not b!1257342) (not d!355289) (not b!1257329) (not b!1257330) (not b_next!30459) (not b!1257295) (not d!355285) b_and!84901 (not bm!88248) (not b!1257332) (not mapNonEmpty!6302) (not b!1257371) (not b!1257366) (not d!355279) (not b!1257341) (not d!355303) b_and!84899 (not d!355305) (not d!355291) (not d!355269) (not bm!88239) tp_is_empty!6519 (not mapNonEmpty!6301) (not b!1257317) (not b!1257323) (not b!1257316) (not b!1257319))
(check-sat b_and!84899 b_and!84901 (not b_next!30459) (not b_next!30461))
