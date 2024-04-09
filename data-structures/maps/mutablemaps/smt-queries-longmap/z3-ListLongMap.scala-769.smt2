; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18112 () Bool)

(assert start!18112)

(declare-fun b!180222 () Bool)

(declare-fun b_free!4455 () Bool)

(declare-fun b_next!4455 () Bool)

(assert (=> b!180222 (= b_free!4455 (not b_next!4455))))

(declare-fun tp!16098 () Bool)

(declare-fun b_and!11007 () Bool)

(assert (=> b!180222 (= tp!16098 b_and!11007)))

(declare-fun b!180215 () Bool)

(declare-fun e!118729 () Bool)

(declare-fun tp_is_empty!4227 () Bool)

(assert (=> b!180215 (= e!118729 tp_is_empty!4227)))

(declare-fun b!180216 () Bool)

(declare-fun res!85380 () Bool)

(declare-fun e!118725 () Bool)

(assert (=> b!180216 (=> (not res!85380) (not e!118725))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!180216 (= res!85380 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180217 () Bool)

(declare-fun e!118731 () Bool)

(declare-fun e!118730 () Bool)

(declare-fun mapRes!7237 () Bool)

(assert (=> b!180217 (= e!118731 (and e!118730 mapRes!7237))))

(declare-fun condMapEmpty!7237 () Bool)

(declare-datatypes ((V!5283 0))(
  ( (V!5284 (val!2158 Int)) )
))
(declare-datatypes ((ValueCell!1770 0))(
  ( (ValueCellFull!1770 (v!4045 V!5283)) (EmptyCell!1770) )
))
(declare-datatypes ((array!7624 0))(
  ( (array!7625 (arr!3610 (Array (_ BitVec 32) (_ BitVec 64))) (size!3918 (_ BitVec 32))) )
))
(declare-datatypes ((array!7626 0))(
  ( (array!7627 (arr!3611 (Array (_ BitVec 32) ValueCell!1770)) (size!3919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2448 0))(
  ( (LongMapFixedSize!2449 (defaultEntry!3700 Int) (mask!8698 (_ BitVec 32)) (extraKeys!3437 (_ BitVec 32)) (zeroValue!3541 V!5283) (minValue!3541 V!5283) (_size!1273 (_ BitVec 32)) (_keys!5592 array!7624) (_values!3683 array!7626) (_vacant!1273 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2448)

(declare-fun mapDefault!7237 () ValueCell!1770)

(assert (=> b!180217 (= condMapEmpty!7237 (= (arr!3611 (_values!3683 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1770)) mapDefault!7237)))))

(declare-fun e!118726 () Bool)

(declare-datatypes ((tuple2!3358 0))(
  ( (tuple2!3359 (_1!1689 (_ BitVec 64)) (_2!1689 V!5283)) )
))
(declare-datatypes ((List!2313 0))(
  ( (Nil!2310) (Cons!2309 (h!2934 tuple2!3358) (t!7169 List!2313)) )
))
(declare-datatypes ((ListLongMap!2293 0))(
  ( (ListLongMap!2294 (toList!1162 List!2313)) )
))
(declare-fun call!18214 () ListLongMap!2293)

(declare-fun lt!89061 () ListLongMap!2293)

(declare-fun v!309 () V!5283)

(declare-fun b!180218 () Bool)

(declare-fun +!262 (ListLongMap!2293 tuple2!3358) ListLongMap!2293)

(assert (=> b!180218 (= e!118726 (not (= lt!89061 (+!262 call!18214 (tuple2!3359 key!828 v!309)))))))

(declare-fun b!180220 () Bool)

(declare-fun e!118724 () Bool)

(declare-fun e!118732 () Bool)

(assert (=> b!180220 (= e!118724 e!118732)))

(declare-fun c!32266 () Bool)

(declare-datatypes ((tuple2!3360 0))(
  ( (tuple2!3361 (_1!1690 Bool) (_2!1690 LongMapFixedSize!2448)) )
))
(declare-fun lt!89060 () tuple2!3360)

(assert (=> b!180220 (= c!32266 (_1!1690 lt!89060))))

(declare-fun b!180221 () Bool)

(declare-fun call!18215 () ListLongMap!2293)

(assert (=> b!180221 (= e!118732 (not (= call!18215 call!18214)))))

(declare-fun mapIsEmpty!7237 () Bool)

(assert (=> mapIsEmpty!7237 mapRes!7237))

(declare-fun e!118723 () Bool)

(declare-fun array_inv!2315 (array!7624) Bool)

(declare-fun array_inv!2316 (array!7626) Bool)

(assert (=> b!180222 (= e!118723 (and tp!16098 tp_is_empty!4227 (array_inv!2315 (_keys!5592 thiss!1248)) (array_inv!2316 (_values!3683 thiss!1248)) e!118731))))

(declare-fun b!180223 () Bool)

(declare-fun e!118728 () Bool)

(assert (=> b!180223 (= e!118725 e!118728)))

(declare-fun res!85379 () Bool)

(assert (=> b!180223 (=> (not res!85379) (not e!118728))))

(declare-datatypes ((SeekEntryResult!601 0))(
  ( (MissingZero!601 (index!4573 (_ BitVec 32))) (Found!601 (index!4574 (_ BitVec 32))) (Intermediate!601 (undefined!1413 Bool) (index!4575 (_ BitVec 32)) (x!19713 (_ BitVec 32))) (Undefined!601) (MissingVacant!601 (index!4576 (_ BitVec 32))) )
))
(declare-fun lt!89059 () SeekEntryResult!601)

(get-info :version)

(assert (=> b!180223 (= res!85379 (and (not ((_ is Undefined!601) lt!89059)) (not ((_ is MissingVacant!601) lt!89059)) ((_ is MissingZero!601) lt!89059)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7624 (_ BitVec 32)) SeekEntryResult!601)

(assert (=> b!180223 (= lt!89059 (seekEntryOrOpen!0 key!828 (_keys!5592 thiss!1248) (mask!8698 thiss!1248)))))

(declare-fun b!180224 () Bool)

(assert (=> b!180224 (= e!118730 tp_is_empty!4227)))

(declare-fun mapNonEmpty!7237 () Bool)

(declare-fun tp!16099 () Bool)

(assert (=> mapNonEmpty!7237 (= mapRes!7237 (and tp!16099 e!118729))))

(declare-fun mapValue!7237 () ValueCell!1770)

(declare-fun mapRest!7237 () (Array (_ BitVec 32) ValueCell!1770))

(declare-fun mapKey!7237 () (_ BitVec 32))

(assert (=> mapNonEmpty!7237 (= (arr!3611 (_values!3683 thiss!1248)) (store mapRest!7237 mapKey!7237 mapValue!7237))))

(declare-fun b!180225 () Bool)

(assert (=> b!180225 (= e!118732 e!118726)))

(assert (=> b!180225 (= lt!89061 call!18215)))

(declare-fun res!85381 () Bool)

(declare-fun contains!1231 (ListLongMap!2293 (_ BitVec 64)) Bool)

(assert (=> b!180225 (= res!85381 (not (contains!1231 lt!89061 key!828)))))

(assert (=> b!180225 (=> res!85381 e!118726)))

(declare-fun b!180219 () Bool)

(assert (=> b!180219 (= e!118728 e!118724)))

(declare-fun res!85377 () Bool)

(assert (=> b!180219 (=> res!85377 e!118724)))

(declare-fun valid!1009 (LongMapFixedSize!2448) Bool)

(assert (=> b!180219 (= res!85377 (not (valid!1009 (_2!1690 lt!89060))))))

(declare-fun updateHelperNewKey!91 (LongMapFixedSize!2448 (_ BitVec 64) V!5283 (_ BitVec 32)) tuple2!3360)

(assert (=> b!180219 (= lt!89060 (updateHelperNewKey!91 thiss!1248 key!828 v!309 (index!4573 lt!89059)))))

(declare-fun res!85378 () Bool)

(assert (=> start!18112 (=> (not res!85378) (not e!118725))))

(assert (=> start!18112 (= res!85378 (valid!1009 thiss!1248))))

(assert (=> start!18112 e!118725))

(assert (=> start!18112 e!118723))

(assert (=> start!18112 true))

(assert (=> start!18112 tp_is_empty!4227))

(declare-fun bm!18211 () Bool)

(declare-fun map!1937 (LongMapFixedSize!2448) ListLongMap!2293)

(assert (=> bm!18211 (= call!18215 (map!1937 (_2!1690 lt!89060)))))

(declare-fun bm!18212 () Bool)

(assert (=> bm!18212 (= call!18214 (map!1937 thiss!1248))))

(assert (= (and start!18112 res!85378) b!180216))

(assert (= (and b!180216 res!85380) b!180223))

(assert (= (and b!180223 res!85379) b!180219))

(assert (= (and b!180219 (not res!85377)) b!180220))

(assert (= (and b!180220 c!32266) b!180225))

(assert (= (and b!180220 (not c!32266)) b!180221))

(assert (= (and b!180225 (not res!85381)) b!180218))

(assert (= (or b!180218 b!180221) bm!18212))

(assert (= (or b!180225 b!180221) bm!18211))

(assert (= (and b!180217 condMapEmpty!7237) mapIsEmpty!7237))

(assert (= (and b!180217 (not condMapEmpty!7237)) mapNonEmpty!7237))

(assert (= (and mapNonEmpty!7237 ((_ is ValueCellFull!1770) mapValue!7237)) b!180215))

(assert (= (and b!180217 ((_ is ValueCellFull!1770) mapDefault!7237)) b!180224))

(assert (= b!180222 b!180217))

(assert (= start!18112 b!180222))

(declare-fun m!208273 () Bool)

(assert (=> b!180218 m!208273))

(declare-fun m!208275 () Bool)

(assert (=> start!18112 m!208275))

(declare-fun m!208277 () Bool)

(assert (=> bm!18211 m!208277))

(declare-fun m!208279 () Bool)

(assert (=> b!180222 m!208279))

(declare-fun m!208281 () Bool)

(assert (=> b!180222 m!208281))

(declare-fun m!208283 () Bool)

(assert (=> b!180225 m!208283))

(declare-fun m!208285 () Bool)

(assert (=> b!180223 m!208285))

(declare-fun m!208287 () Bool)

(assert (=> b!180219 m!208287))

(declare-fun m!208289 () Bool)

(assert (=> b!180219 m!208289))

(declare-fun m!208291 () Bool)

(assert (=> mapNonEmpty!7237 m!208291))

(declare-fun m!208293 () Bool)

(assert (=> bm!18212 m!208293))

(check-sat (not b!180218) (not mapNonEmpty!7237) (not start!18112) (not b!180219) (not b!180225) b_and!11007 (not b!180222) (not b!180223) tp_is_empty!4227 (not bm!18212) (not bm!18211) (not b_next!4455))
(check-sat b_and!11007 (not b_next!4455))
(get-model)

(declare-fun d!54127 () Bool)

(declare-fun e!118767 () Bool)

(assert (=> d!54127 e!118767))

(declare-fun res!85399 () Bool)

(assert (=> d!54127 (=> res!85399 e!118767)))

(declare-fun lt!89081 () Bool)

(assert (=> d!54127 (= res!85399 (not lt!89081))))

(declare-fun lt!89082 () Bool)

(assert (=> d!54127 (= lt!89081 lt!89082)))

(declare-datatypes ((Unit!5483 0))(
  ( (Unit!5484) )
))
(declare-fun lt!89080 () Unit!5483)

(declare-fun e!118768 () Unit!5483)

(assert (=> d!54127 (= lt!89080 e!118768)))

(declare-fun c!32272 () Bool)

(assert (=> d!54127 (= c!32272 lt!89082)))

(declare-fun containsKey!208 (List!2313 (_ BitVec 64)) Bool)

(assert (=> d!54127 (= lt!89082 (containsKey!208 (toList!1162 lt!89061) key!828))))

(assert (=> d!54127 (= (contains!1231 lt!89061 key!828) lt!89081)))

(declare-fun b!180265 () Bool)

(declare-fun lt!89079 () Unit!5483)

(assert (=> b!180265 (= e!118768 lt!89079)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!157 (List!2313 (_ BitVec 64)) Unit!5483)

(assert (=> b!180265 (= lt!89079 (lemmaContainsKeyImpliesGetValueByKeyDefined!157 (toList!1162 lt!89061) key!828))))

(declare-datatypes ((Option!210 0))(
  ( (Some!209 (v!4048 V!5283)) (None!208) )
))
(declare-fun isDefined!158 (Option!210) Bool)

(declare-fun getValueByKey!204 (List!2313 (_ BitVec 64)) Option!210)

(assert (=> b!180265 (isDefined!158 (getValueByKey!204 (toList!1162 lt!89061) key!828))))

(declare-fun b!180266 () Bool)

(declare-fun Unit!5485 () Unit!5483)

(assert (=> b!180266 (= e!118768 Unit!5485)))

(declare-fun b!180267 () Bool)

(assert (=> b!180267 (= e!118767 (isDefined!158 (getValueByKey!204 (toList!1162 lt!89061) key!828)))))

(assert (= (and d!54127 c!32272) b!180265))

(assert (= (and d!54127 (not c!32272)) b!180266))

(assert (= (and d!54127 (not res!85399)) b!180267))

(declare-fun m!208317 () Bool)

(assert (=> d!54127 m!208317))

(declare-fun m!208319 () Bool)

(assert (=> b!180265 m!208319))

(declare-fun m!208321 () Bool)

(assert (=> b!180265 m!208321))

(assert (=> b!180265 m!208321))

(declare-fun m!208323 () Bool)

(assert (=> b!180265 m!208323))

(assert (=> b!180267 m!208321))

(assert (=> b!180267 m!208321))

(assert (=> b!180267 m!208323))

(assert (=> b!180225 d!54127))

(declare-fun d!54129 () Bool)

(declare-fun res!85406 () Bool)

(declare-fun e!118771 () Bool)

(assert (=> d!54129 (=> (not res!85406) (not e!118771))))

(declare-fun simpleValid!163 (LongMapFixedSize!2448) Bool)

(assert (=> d!54129 (= res!85406 (simpleValid!163 thiss!1248))))

(assert (=> d!54129 (= (valid!1009 thiss!1248) e!118771)))

(declare-fun b!180274 () Bool)

(declare-fun res!85407 () Bool)

(assert (=> b!180274 (=> (not res!85407) (not e!118771))))

(declare-fun arrayCountValidKeys!0 (array!7624 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!180274 (= res!85407 (= (arrayCountValidKeys!0 (_keys!5592 thiss!1248) #b00000000000000000000000000000000 (size!3918 (_keys!5592 thiss!1248))) (_size!1273 thiss!1248)))))

(declare-fun b!180275 () Bool)

(declare-fun res!85408 () Bool)

(assert (=> b!180275 (=> (not res!85408) (not e!118771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7624 (_ BitVec 32)) Bool)

(assert (=> b!180275 (= res!85408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5592 thiss!1248) (mask!8698 thiss!1248)))))

(declare-fun b!180276 () Bool)

(declare-datatypes ((List!2315 0))(
  ( (Nil!2312) (Cons!2311 (h!2936 (_ BitVec 64)) (t!7171 List!2315)) )
))
(declare-fun arrayNoDuplicates!0 (array!7624 (_ BitVec 32) List!2315) Bool)

(assert (=> b!180276 (= e!118771 (arrayNoDuplicates!0 (_keys!5592 thiss!1248) #b00000000000000000000000000000000 Nil!2312))))

(assert (= (and d!54129 res!85406) b!180274))

(assert (= (and b!180274 res!85407) b!180275))

(assert (= (and b!180275 res!85408) b!180276))

(declare-fun m!208325 () Bool)

(assert (=> d!54129 m!208325))

(declare-fun m!208327 () Bool)

(assert (=> b!180274 m!208327))

(declare-fun m!208329 () Bool)

(assert (=> b!180275 m!208329))

(declare-fun m!208331 () Bool)

(assert (=> b!180276 m!208331))

(assert (=> start!18112 d!54129))

(declare-fun d!54131 () Bool)

(declare-fun getCurrentListMap!806 (array!7624 array!7626 (_ BitVec 32) (_ BitVec 32) V!5283 V!5283 (_ BitVec 32) Int) ListLongMap!2293)

(assert (=> d!54131 (= (map!1937 (_2!1690 lt!89060)) (getCurrentListMap!806 (_keys!5592 (_2!1690 lt!89060)) (_values!3683 (_2!1690 lt!89060)) (mask!8698 (_2!1690 lt!89060)) (extraKeys!3437 (_2!1690 lt!89060)) (zeroValue!3541 (_2!1690 lt!89060)) (minValue!3541 (_2!1690 lt!89060)) #b00000000000000000000000000000000 (defaultEntry!3700 (_2!1690 lt!89060))))))

(declare-fun bs!7373 () Bool)

(assert (= bs!7373 d!54131))

(declare-fun m!208333 () Bool)

(assert (=> bs!7373 m!208333))

(assert (=> bm!18211 d!54131))

(declare-fun d!54133 () Bool)

(declare-fun e!118774 () Bool)

(assert (=> d!54133 e!118774))

(declare-fun res!85413 () Bool)

(assert (=> d!54133 (=> (not res!85413) (not e!118774))))

(declare-fun lt!89091 () ListLongMap!2293)

(assert (=> d!54133 (= res!85413 (contains!1231 lt!89091 (_1!1689 (tuple2!3359 key!828 v!309))))))

(declare-fun lt!89092 () List!2313)

(assert (=> d!54133 (= lt!89091 (ListLongMap!2294 lt!89092))))

(declare-fun lt!89094 () Unit!5483)

(declare-fun lt!89093 () Unit!5483)

(assert (=> d!54133 (= lt!89094 lt!89093)))

(assert (=> d!54133 (= (getValueByKey!204 lt!89092 (_1!1689 (tuple2!3359 key!828 v!309))) (Some!209 (_2!1689 (tuple2!3359 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!109 (List!2313 (_ BitVec 64) V!5283) Unit!5483)

(assert (=> d!54133 (= lt!89093 (lemmaContainsTupThenGetReturnValue!109 lt!89092 (_1!1689 (tuple2!3359 key!828 v!309)) (_2!1689 (tuple2!3359 key!828 v!309))))))

(declare-fun insertStrictlySorted!111 (List!2313 (_ BitVec 64) V!5283) List!2313)

(assert (=> d!54133 (= lt!89092 (insertStrictlySorted!111 (toList!1162 call!18214) (_1!1689 (tuple2!3359 key!828 v!309)) (_2!1689 (tuple2!3359 key!828 v!309))))))

(assert (=> d!54133 (= (+!262 call!18214 (tuple2!3359 key!828 v!309)) lt!89091)))

(declare-fun b!180281 () Bool)

(declare-fun res!85414 () Bool)

(assert (=> b!180281 (=> (not res!85414) (not e!118774))))

(assert (=> b!180281 (= res!85414 (= (getValueByKey!204 (toList!1162 lt!89091) (_1!1689 (tuple2!3359 key!828 v!309))) (Some!209 (_2!1689 (tuple2!3359 key!828 v!309)))))))

(declare-fun b!180282 () Bool)

(declare-fun contains!1233 (List!2313 tuple2!3358) Bool)

(assert (=> b!180282 (= e!118774 (contains!1233 (toList!1162 lt!89091) (tuple2!3359 key!828 v!309)))))

(assert (= (and d!54133 res!85413) b!180281))

(assert (= (and b!180281 res!85414) b!180282))

(declare-fun m!208335 () Bool)

(assert (=> d!54133 m!208335))

(declare-fun m!208337 () Bool)

(assert (=> d!54133 m!208337))

(declare-fun m!208339 () Bool)

(assert (=> d!54133 m!208339))

(declare-fun m!208341 () Bool)

(assert (=> d!54133 m!208341))

(declare-fun m!208343 () Bool)

(assert (=> b!180281 m!208343))

(declare-fun m!208345 () Bool)

(assert (=> b!180282 m!208345))

(assert (=> b!180218 d!54133))

(declare-fun d!54135 () Bool)

(assert (=> d!54135 (= (array_inv!2315 (_keys!5592 thiss!1248)) (bvsge (size!3918 (_keys!5592 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180222 d!54135))

(declare-fun d!54137 () Bool)

(assert (=> d!54137 (= (array_inv!2316 (_values!3683 thiss!1248)) (bvsge (size!3919 (_values!3683 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180222 d!54137))

(declare-fun e!118781 () SeekEntryResult!601)

(declare-fun lt!89103 () SeekEntryResult!601)

(declare-fun b!180295 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7624 (_ BitVec 32)) SeekEntryResult!601)

(assert (=> b!180295 (= e!118781 (seekKeyOrZeroReturnVacant!0 (x!19713 lt!89103) (index!4575 lt!89103) (index!4575 lt!89103) key!828 (_keys!5592 thiss!1248) (mask!8698 thiss!1248)))))

(declare-fun b!180296 () Bool)

(declare-fun e!118782 () SeekEntryResult!601)

(assert (=> b!180296 (= e!118782 (Found!601 (index!4575 lt!89103)))))

(declare-fun b!180297 () Bool)

(declare-fun e!118783 () SeekEntryResult!601)

(assert (=> b!180297 (= e!118783 e!118782)))

(declare-fun lt!89101 () (_ BitVec 64))

(assert (=> b!180297 (= lt!89101 (select (arr!3610 (_keys!5592 thiss!1248)) (index!4575 lt!89103)))))

(declare-fun c!32280 () Bool)

(assert (=> b!180297 (= c!32280 (= lt!89101 key!828))))

(declare-fun b!180298 () Bool)

(assert (=> b!180298 (= e!118783 Undefined!601)))

(declare-fun d!54139 () Bool)

(declare-fun lt!89102 () SeekEntryResult!601)

(assert (=> d!54139 (and (or ((_ is Undefined!601) lt!89102) (not ((_ is Found!601) lt!89102)) (and (bvsge (index!4574 lt!89102) #b00000000000000000000000000000000) (bvslt (index!4574 lt!89102) (size!3918 (_keys!5592 thiss!1248))))) (or ((_ is Undefined!601) lt!89102) ((_ is Found!601) lt!89102) (not ((_ is MissingZero!601) lt!89102)) (and (bvsge (index!4573 lt!89102) #b00000000000000000000000000000000) (bvslt (index!4573 lt!89102) (size!3918 (_keys!5592 thiss!1248))))) (or ((_ is Undefined!601) lt!89102) ((_ is Found!601) lt!89102) ((_ is MissingZero!601) lt!89102) (not ((_ is MissingVacant!601) lt!89102)) (and (bvsge (index!4576 lt!89102) #b00000000000000000000000000000000) (bvslt (index!4576 lt!89102) (size!3918 (_keys!5592 thiss!1248))))) (or ((_ is Undefined!601) lt!89102) (ite ((_ is Found!601) lt!89102) (= (select (arr!3610 (_keys!5592 thiss!1248)) (index!4574 lt!89102)) key!828) (ite ((_ is MissingZero!601) lt!89102) (= (select (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89102)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!601) lt!89102) (= (select (arr!3610 (_keys!5592 thiss!1248)) (index!4576 lt!89102)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54139 (= lt!89102 e!118783)))

(declare-fun c!32281 () Bool)

(assert (=> d!54139 (= c!32281 (and ((_ is Intermediate!601) lt!89103) (undefined!1413 lt!89103)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7624 (_ BitVec 32)) SeekEntryResult!601)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54139 (= lt!89103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8698 thiss!1248)) key!828 (_keys!5592 thiss!1248) (mask!8698 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!54139 (validMask!0 (mask!8698 thiss!1248))))

(assert (=> d!54139 (= (seekEntryOrOpen!0 key!828 (_keys!5592 thiss!1248) (mask!8698 thiss!1248)) lt!89102)))

(declare-fun b!180299 () Bool)

(assert (=> b!180299 (= e!118781 (MissingZero!601 (index!4575 lt!89103)))))

(declare-fun b!180300 () Bool)

(declare-fun c!32279 () Bool)

(assert (=> b!180300 (= c!32279 (= lt!89101 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!180300 (= e!118782 e!118781)))

(assert (= (and d!54139 c!32281) b!180298))

(assert (= (and d!54139 (not c!32281)) b!180297))

(assert (= (and b!180297 c!32280) b!180296))

(assert (= (and b!180297 (not c!32280)) b!180300))

(assert (= (and b!180300 c!32279) b!180299))

(assert (= (and b!180300 (not c!32279)) b!180295))

(declare-fun m!208347 () Bool)

(assert (=> b!180295 m!208347))

(declare-fun m!208349 () Bool)

(assert (=> b!180297 m!208349))

(declare-fun m!208351 () Bool)

(assert (=> d!54139 m!208351))

(declare-fun m!208353 () Bool)

(assert (=> d!54139 m!208353))

(declare-fun m!208355 () Bool)

(assert (=> d!54139 m!208355))

(declare-fun m!208357 () Bool)

(assert (=> d!54139 m!208357))

(declare-fun m!208359 () Bool)

(assert (=> d!54139 m!208359))

(assert (=> d!54139 m!208351))

(declare-fun m!208361 () Bool)

(assert (=> d!54139 m!208361))

(assert (=> b!180223 d!54139))

(declare-fun d!54141 () Bool)

(assert (=> d!54141 (= (map!1937 thiss!1248) (getCurrentListMap!806 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)))))

(declare-fun bs!7374 () Bool)

(assert (= bs!7374 d!54141))

(declare-fun m!208363 () Bool)

(assert (=> bs!7374 m!208363))

(assert (=> bm!18212 d!54141))

(declare-fun d!54143 () Bool)

(declare-fun res!85415 () Bool)

(declare-fun e!118784 () Bool)

(assert (=> d!54143 (=> (not res!85415) (not e!118784))))

(assert (=> d!54143 (= res!85415 (simpleValid!163 (_2!1690 lt!89060)))))

(assert (=> d!54143 (= (valid!1009 (_2!1690 lt!89060)) e!118784)))

(declare-fun b!180301 () Bool)

(declare-fun res!85416 () Bool)

(assert (=> b!180301 (=> (not res!85416) (not e!118784))))

(assert (=> b!180301 (= res!85416 (= (arrayCountValidKeys!0 (_keys!5592 (_2!1690 lt!89060)) #b00000000000000000000000000000000 (size!3918 (_keys!5592 (_2!1690 lt!89060)))) (_size!1273 (_2!1690 lt!89060))))))

(declare-fun b!180302 () Bool)

(declare-fun res!85417 () Bool)

(assert (=> b!180302 (=> (not res!85417) (not e!118784))))

(assert (=> b!180302 (= res!85417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5592 (_2!1690 lt!89060)) (mask!8698 (_2!1690 lt!89060))))))

(declare-fun b!180303 () Bool)

(assert (=> b!180303 (= e!118784 (arrayNoDuplicates!0 (_keys!5592 (_2!1690 lt!89060)) #b00000000000000000000000000000000 Nil!2312))))

(assert (= (and d!54143 res!85415) b!180301))

(assert (= (and b!180301 res!85416) b!180302))

(assert (= (and b!180302 res!85417) b!180303))

(declare-fun m!208365 () Bool)

(assert (=> d!54143 m!208365))

(declare-fun m!208367 () Bool)

(assert (=> b!180301 m!208367))

(declare-fun m!208369 () Bool)

(assert (=> b!180302 m!208369))

(declare-fun m!208371 () Bool)

(assert (=> b!180303 m!208371))

(assert (=> b!180219 d!54143))

(declare-fun bm!18227 () Bool)

(declare-fun call!18230 () Bool)

(declare-fun arrayContainsKey!0 (array!7624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18227 (= call!18230 (arrayContainsKey!0 (_keys!5592 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!180338 () Bool)

(declare-fun e!118803 () Bool)

(declare-fun lt!89180 () SeekEntryResult!601)

(assert (=> b!180338 (= e!118803 (= (select (arr!3610 (_keys!5592 thiss!1248)) (index!4574 lt!89180)) key!828))))

(declare-fun d!54145 () Bool)

(declare-fun e!118801 () Bool)

(assert (=> d!54145 e!118801))

(declare-fun res!85438 () Bool)

(assert (=> d!54145 (=> (not res!85438) (not e!118801))))

(declare-fun lt!89188 () tuple2!3360)

(assert (=> d!54145 (= res!85438 (_1!1690 lt!89188))))

(assert (=> d!54145 (= lt!89188 (tuple2!3361 true (LongMapFixedSize!2449 (defaultEntry!3700 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) (bvadd (_size!1273 thiss!1248) #b00000000000000000000000000000001) (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))) (array!7627 (store (arr!3611 (_values!3683 thiss!1248)) (index!4573 lt!89059) (ValueCellFull!1770 v!309)) (size!3919 (_values!3683 thiss!1248))) (_vacant!1273 thiss!1248))))))

(declare-fun lt!89179 () Unit!5483)

(declare-fun lt!89171 () Unit!5483)

(assert (=> d!54145 (= lt!89179 lt!89171)))

(declare-fun lt!89187 () array!7626)

(declare-fun lt!89189 () array!7624)

(assert (=> d!54145 (contains!1231 (getCurrentListMap!806 lt!89189 lt!89187 (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)) (select (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (index!4573 lt!89059)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!142 (array!7624 array!7626 (_ BitVec 32) (_ BitVec 32) V!5283 V!5283 (_ BitVec 32) Int) Unit!5483)

(assert (=> d!54145 (= lt!89171 (lemmaValidKeyInArrayIsInListMap!142 lt!89189 lt!89187 (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) (index!4573 lt!89059) (defaultEntry!3700 thiss!1248)))))

(assert (=> d!54145 (= lt!89187 (array!7627 (store (arr!3611 (_values!3683 thiss!1248)) (index!4573 lt!89059) (ValueCellFull!1770 v!309)) (size!3919 (_values!3683 thiss!1248))))))

(assert (=> d!54145 (= lt!89189 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))))))

(declare-fun lt!89186 () Unit!5483)

(declare-fun lt!89175 () Unit!5483)

(assert (=> d!54145 (= lt!89186 lt!89175)))

(declare-fun lt!89170 () array!7624)

(assert (=> d!54145 (= (arrayCountValidKeys!0 lt!89170 (index!4573 lt!89059) (bvadd (index!4573 lt!89059) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!7624 (_ BitVec 32)) Unit!5483)

(assert (=> d!54145 (= lt!89175 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!89170 (index!4573 lt!89059)))))

(assert (=> d!54145 (= lt!89170 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))))))

(declare-fun lt!89191 () Unit!5483)

(declare-fun lt!89184 () Unit!5483)

(assert (=> d!54145 (= lt!89191 lt!89184)))

(declare-fun lt!89177 () array!7624)

(assert (=> d!54145 (arrayContainsKey!0 lt!89177 key!828 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7624 (_ BitVec 64) (_ BitVec 32)) Unit!5483)

(assert (=> d!54145 (= lt!89184 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!89177 key!828 (index!4573 lt!89059)))))

(assert (=> d!54145 (= lt!89177 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))))))

(declare-fun lt!89185 () Unit!5483)

(declare-fun lt!89169 () Unit!5483)

(assert (=> d!54145 (= lt!89185 lt!89169)))

(assert (=> d!54145 (= (+!262 (getCurrentListMap!806 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)) (tuple2!3359 key!828 v!309)) (getCurrentListMap!806 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))) (array!7627 (store (arr!3611 (_values!3683 thiss!1248)) (index!4573 lt!89059) (ValueCellFull!1770 v!309)) (size!3919 (_values!3683 thiss!1248))) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!51 (array!7624 array!7626 (_ BitVec 32) (_ BitVec 32) V!5283 V!5283 (_ BitVec 32) (_ BitVec 64) V!5283 Int) Unit!5483)

(assert (=> d!54145 (= lt!89169 (lemmaAddValidKeyToArrayThenAddPairToListMap!51 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) (index!4573 lt!89059) key!828 v!309 (defaultEntry!3700 thiss!1248)))))

(declare-fun lt!89174 () Unit!5483)

(declare-fun lt!89165 () Unit!5483)

(assert (=> d!54145 (= lt!89174 lt!89165)))

(assert (=> d!54145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))) (mask!8698 thiss!1248))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!7624 (_ BitVec 32) (_ BitVec 32)) Unit!5483)

(assert (=> d!54145 (= lt!89165 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!828 (_keys!5592 thiss!1248) (index!4573 lt!89059) (mask!8698 thiss!1248)))))

(declare-fun lt!89167 () Unit!5483)

(declare-fun lt!89178 () Unit!5483)

(assert (=> d!54145 (= lt!89167 lt!89178)))

(assert (=> d!54145 (= (arrayCountValidKeys!0 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))) #b00000000000000000000000000000000 (size!3918 (_keys!5592 thiss!1248))) (bvadd (arrayCountValidKeys!0 (_keys!5592 thiss!1248) #b00000000000000000000000000000000 (size!3918 (_keys!5592 thiss!1248))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!7624 (_ BitVec 32) (_ BitVec 64)) Unit!5483)

(assert (=> d!54145 (= lt!89178 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!5592 thiss!1248) (index!4573 lt!89059) key!828))))

(declare-fun lt!89181 () Unit!5483)

(declare-fun lt!89192 () Unit!5483)

(assert (=> d!54145 (= lt!89181 lt!89192)))

(declare-fun lt!89172 () List!2315)

(declare-fun lt!89166 () (_ BitVec 32))

(assert (=> d!54145 (arrayNoDuplicates!0 (array!7625 (store (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89059) key!828) (size!3918 (_keys!5592 thiss!1248))) lt!89166 lt!89172)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!7624 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!2315) Unit!5483)

(assert (=> d!54145 (= lt!89192 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!5592 thiss!1248) key!828 (index!4573 lt!89059) lt!89166 lt!89172))))

(assert (=> d!54145 (= lt!89172 Nil!2312)))

(assert (=> d!54145 (= lt!89166 #b00000000000000000000000000000000)))

(declare-fun lt!89183 () Unit!5483)

(declare-fun e!118807 () Unit!5483)

(assert (=> d!54145 (= lt!89183 e!118807)))

(declare-fun c!32291 () Bool)

(assert (=> d!54145 (= c!32291 (arrayContainsKey!0 (_keys!5592 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun lt!89173 () Unit!5483)

(declare-fun e!118806 () Unit!5483)

(assert (=> d!54145 (= lt!89173 e!118806)))

(declare-fun c!32293 () Bool)

(assert (=> d!54145 (= c!32293 (contains!1231 (getCurrentListMap!806 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)) key!828))))

(assert (=> d!54145 (valid!1009 thiss!1248)))

(assert (=> d!54145 (= (updateHelperNewKey!91 thiss!1248 key!828 v!309 (index!4573 lt!89059)) lt!89188)))

(declare-fun b!180339 () Bool)

(declare-fun Unit!5486 () Unit!5483)

(assert (=> b!180339 (= e!118807 Unit!5486)))

(declare-fun lt!89164 () Unit!5483)

(declare-fun lemmaArrayContainsKeyThenInListMap!51 (array!7624 array!7626 (_ BitVec 32) (_ BitVec 32) V!5283 V!5283 (_ BitVec 64) (_ BitVec 32) Int) Unit!5483)

(assert (=> b!180339 (= lt!89164 (lemmaArrayContainsKeyThenInListMap!51 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) key!828 #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)))))

(assert (=> b!180339 (contains!1231 (getCurrentListMap!806 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3700 thiss!1248)) key!828)))

(declare-fun lt!89168 () Unit!5483)

(assert (=> b!180339 (= lt!89168 lt!89164)))

(assert (=> b!180339 false))

(declare-fun b!180340 () Bool)

(assert (=> b!180340 (= e!118801 (= (map!1937 (_2!1690 lt!89188)) (+!262 (map!1937 thiss!1248) (tuple2!3359 key!828 v!309))))))

(declare-fun bm!18228 () Bool)

(declare-fun call!18231 () SeekEntryResult!601)

(assert (=> bm!18228 (= call!18231 (seekEntryOrOpen!0 key!828 (_keys!5592 thiss!1248) (mask!8698 thiss!1248)))))

(declare-fun b!180341 () Bool)

(declare-fun res!85437 () Bool)

(declare-fun e!118805 () Bool)

(assert (=> b!180341 (=> (not res!85437) (not e!118805))))

(declare-fun lt!89176 () SeekEntryResult!601)

(assert (=> b!180341 (= res!85437 (= (select (arr!3610 (_keys!5592 thiss!1248)) (index!4573 lt!89176)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!180342 () Bool)

(declare-fun res!85443 () Bool)

(assert (=> b!180342 (= res!85443 (= (select (arr!3610 (_keys!5592 thiss!1248)) (index!4576 lt!89176)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118804 () Bool)

(assert (=> b!180342 (=> (not res!85443) (not e!118804))))

(declare-fun c!32292 () Bool)

(declare-fun call!18232 () Bool)

(declare-fun bm!18229 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!18229 (= call!18232 (inRange!0 (ite c!32293 (index!4574 lt!89180) (ite c!32292 (index!4573 lt!89176) (index!4576 lt!89176))) (mask!8698 thiss!1248)))))

(declare-fun b!180343 () Bool)

(declare-fun Unit!5487 () Unit!5483)

(assert (=> b!180343 (= e!118806 Unit!5487)))

(declare-fun lt!89190 () Unit!5483)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!142 (array!7624 array!7626 (_ BitVec 32) (_ BitVec 32) V!5283 V!5283 (_ BitVec 64) Int) Unit!5483)

(assert (=> b!180343 (= lt!89190 (lemmaInListMapThenSeekEntryOrOpenFindsIt!142 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) key!828 (defaultEntry!3700 thiss!1248)))))

(assert (=> b!180343 (= lt!89180 call!18231)))

(declare-fun res!85440 () Bool)

(assert (=> b!180343 (= res!85440 ((_ is Found!601) lt!89180))))

(assert (=> b!180343 (=> (not res!85440) (not e!118803))))

(assert (=> b!180343 e!118803))

(declare-fun lt!89182 () Unit!5483)

(assert (=> b!180343 (= lt!89182 lt!89190)))

(assert (=> b!180343 false))

(declare-fun b!180344 () Bool)

(assert (=> b!180344 (= e!118804 (not call!18230))))

(declare-fun b!180345 () Bool)

(declare-fun lt!89193 () Unit!5483)

(assert (=> b!180345 (= e!118806 lt!89193)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!140 (array!7624 array!7626 (_ BitVec 32) (_ BitVec 32) V!5283 V!5283 (_ BitVec 64) Int) Unit!5483)

(assert (=> b!180345 (= lt!89193 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!140 (_keys!5592 thiss!1248) (_values!3683 thiss!1248) (mask!8698 thiss!1248) (extraKeys!3437 thiss!1248) (zeroValue!3541 thiss!1248) (minValue!3541 thiss!1248) key!828 (defaultEntry!3700 thiss!1248)))))

(assert (=> b!180345 (= lt!89176 call!18231)))

(assert (=> b!180345 (= c!32292 ((_ is MissingZero!601) lt!89176))))

(declare-fun e!118808 () Bool)

(assert (=> b!180345 e!118808))

(declare-fun b!180346 () Bool)

(declare-fun e!118802 () Bool)

(assert (=> b!180346 (= e!118802 ((_ is Undefined!601) lt!89176))))

(declare-fun b!180347 () Bool)

(declare-fun Unit!5488 () Unit!5483)

(assert (=> b!180347 (= e!118807 Unit!5488)))

(declare-fun b!180348 () Bool)

(assert (=> b!180348 (= e!118805 (not call!18230))))

(declare-fun b!180349 () Bool)

(declare-fun c!32290 () Bool)

(assert (=> b!180349 (= c!32290 ((_ is MissingVacant!601) lt!89176))))

(assert (=> b!180349 (= e!118808 e!118802)))

(declare-fun b!180350 () Bool)

(declare-fun res!85441 () Bool)

(assert (=> b!180350 (=> (not res!85441) (not e!118801))))

(assert (=> b!180350 (= res!85441 (valid!1009 (_2!1690 lt!89188)))))

(declare-fun b!180351 () Bool)

(declare-fun res!85436 () Bool)

(assert (=> b!180351 (=> (not res!85436) (not e!118805))))

(declare-fun call!18233 () Bool)

(assert (=> b!180351 (= res!85436 call!18233)))

(assert (=> b!180351 (= e!118808 e!118805)))

(declare-fun b!180352 () Bool)

(declare-fun res!85442 () Bool)

(assert (=> b!180352 (=> (not res!85442) (not e!118801))))

(assert (=> b!180352 (= res!85442 (contains!1231 (map!1937 (_2!1690 lt!89188)) key!828))))

(declare-fun bm!18230 () Bool)

(assert (=> bm!18230 (= call!18233 call!18232)))

(declare-fun b!180353 () Bool)

(assert (=> b!180353 (= e!118802 e!118804)))

(declare-fun res!85444 () Bool)

(assert (=> b!180353 (= res!85444 call!18233)))

(assert (=> b!180353 (=> (not res!85444) (not e!118804))))

(declare-fun b!180354 () Bool)

(declare-fun res!85439 () Bool)

(assert (=> b!180354 (= res!85439 call!18232)))

(assert (=> b!180354 (=> (not res!85439) (not e!118803))))

(assert (= (and d!54145 c!32293) b!180343))

(assert (= (and d!54145 (not c!32293)) b!180345))

(assert (= (and b!180343 res!85440) b!180354))

(assert (= (and b!180354 res!85439) b!180338))

(assert (= (and b!180345 c!32292) b!180351))

(assert (= (and b!180345 (not c!32292)) b!180349))

(assert (= (and b!180351 res!85436) b!180341))

(assert (= (and b!180341 res!85437) b!180348))

(assert (= (and b!180349 c!32290) b!180353))

(assert (= (and b!180349 (not c!32290)) b!180346))

(assert (= (and b!180353 res!85444) b!180342))

(assert (= (and b!180342 res!85443) b!180344))

(assert (= (or b!180351 b!180353) bm!18230))

(assert (= (or b!180348 b!180344) bm!18227))

(assert (= (or b!180354 bm!18230) bm!18229))

(assert (= (or b!180343 b!180345) bm!18228))

(assert (= (and d!54145 c!32291) b!180339))

(assert (= (and d!54145 (not c!32291)) b!180347))

(assert (= (and d!54145 res!85438) b!180350))

(assert (= (and b!180350 res!85441) b!180352))

(assert (= (and b!180352 res!85442) b!180340))

(declare-fun m!208373 () Bool)

(assert (=> b!180341 m!208373))

(assert (=> d!54145 m!208275))

(declare-fun m!208375 () Bool)

(assert (=> d!54145 m!208375))

(declare-fun m!208377 () Bool)

(assert (=> d!54145 m!208377))

(declare-fun m!208379 () Bool)

(assert (=> d!54145 m!208379))

(declare-fun m!208381 () Bool)

(assert (=> d!54145 m!208381))

(declare-fun m!208383 () Bool)

(assert (=> d!54145 m!208383))

(declare-fun m!208385 () Bool)

(assert (=> d!54145 m!208385))

(declare-fun m!208387 () Bool)

(assert (=> d!54145 m!208387))

(declare-fun m!208389 () Bool)

(assert (=> d!54145 m!208389))

(assert (=> d!54145 m!208363))

(declare-fun m!208391 () Bool)

(assert (=> d!54145 m!208391))

(declare-fun m!208393 () Bool)

(assert (=> d!54145 m!208393))

(declare-fun m!208395 () Bool)

(assert (=> d!54145 m!208395))

(declare-fun m!208397 () Bool)

(assert (=> d!54145 m!208397))

(assert (=> d!54145 m!208327))

(assert (=> d!54145 m!208379))

(declare-fun m!208399 () Bool)

(assert (=> d!54145 m!208399))

(declare-fun m!208401 () Bool)

(assert (=> d!54145 m!208401))

(assert (=> d!54145 m!208363))

(declare-fun m!208403 () Bool)

(assert (=> d!54145 m!208403))

(declare-fun m!208405 () Bool)

(assert (=> d!54145 m!208405))

(declare-fun m!208407 () Bool)

(assert (=> d!54145 m!208407))

(declare-fun m!208409 () Bool)

(assert (=> d!54145 m!208409))

(declare-fun m!208411 () Bool)

(assert (=> d!54145 m!208411))

(declare-fun m!208413 () Bool)

(assert (=> d!54145 m!208413))

(assert (=> d!54145 m!208363))

(assert (=> d!54145 m!208377))

(declare-fun m!208415 () Bool)

(assert (=> d!54145 m!208415))

(assert (=> bm!18228 m!208285))

(assert (=> bm!18227 m!208375))

(declare-fun m!208417 () Bool)

(assert (=> b!180345 m!208417))

(declare-fun m!208419 () Bool)

(assert (=> b!180338 m!208419))

(declare-fun m!208421 () Bool)

(assert (=> bm!18229 m!208421))

(declare-fun m!208423 () Bool)

(assert (=> b!180352 m!208423))

(assert (=> b!180352 m!208423))

(declare-fun m!208425 () Bool)

(assert (=> b!180352 m!208425))

(declare-fun m!208427 () Bool)

(assert (=> b!180350 m!208427))

(declare-fun m!208429 () Bool)

(assert (=> b!180339 m!208429))

(assert (=> b!180339 m!208363))

(assert (=> b!180339 m!208363))

(assert (=> b!180339 m!208403))

(assert (=> b!180340 m!208423))

(assert (=> b!180340 m!208293))

(assert (=> b!180340 m!208293))

(declare-fun m!208431 () Bool)

(assert (=> b!180340 m!208431))

(declare-fun m!208433 () Bool)

(assert (=> b!180342 m!208433))

(declare-fun m!208435 () Bool)

(assert (=> b!180343 m!208435))

(assert (=> b!180219 d!54145))

(declare-fun mapNonEmpty!7243 () Bool)

(declare-fun mapRes!7243 () Bool)

(declare-fun tp!16108 () Bool)

(declare-fun e!118813 () Bool)

(assert (=> mapNonEmpty!7243 (= mapRes!7243 (and tp!16108 e!118813))))

(declare-fun mapKey!7243 () (_ BitVec 32))

(declare-fun mapRest!7243 () (Array (_ BitVec 32) ValueCell!1770))

(declare-fun mapValue!7243 () ValueCell!1770)

(assert (=> mapNonEmpty!7243 (= mapRest!7237 (store mapRest!7243 mapKey!7243 mapValue!7243))))

(declare-fun condMapEmpty!7243 () Bool)

(declare-fun mapDefault!7243 () ValueCell!1770)

(assert (=> mapNonEmpty!7237 (= condMapEmpty!7243 (= mapRest!7237 ((as const (Array (_ BitVec 32) ValueCell!1770)) mapDefault!7243)))))

(declare-fun e!118814 () Bool)

(assert (=> mapNonEmpty!7237 (= tp!16099 (and e!118814 mapRes!7243))))

(declare-fun mapIsEmpty!7243 () Bool)

(assert (=> mapIsEmpty!7243 mapRes!7243))

(declare-fun b!180361 () Bool)

(assert (=> b!180361 (= e!118813 tp_is_empty!4227)))

(declare-fun b!180362 () Bool)

(assert (=> b!180362 (= e!118814 tp_is_empty!4227)))

(assert (= (and mapNonEmpty!7237 condMapEmpty!7243) mapIsEmpty!7243))

(assert (= (and mapNonEmpty!7237 (not condMapEmpty!7243)) mapNonEmpty!7243))

(assert (= (and mapNonEmpty!7243 ((_ is ValueCellFull!1770) mapValue!7243)) b!180361))

(assert (= (and mapNonEmpty!7237 ((_ is ValueCellFull!1770) mapDefault!7243)) b!180362))

(declare-fun m!208437 () Bool)

(assert (=> mapNonEmpty!7243 m!208437))

(check-sat (not b!180281) (not b!180302) (not d!54145) (not d!54133) (not b!180345) (not d!54129) (not b!180350) (not d!54141) tp_is_empty!4227 (not b!180303) (not d!54131) (not b!180352) (not bm!18229) (not b!180275) (not b!180340) (not b!180343) (not d!54139) (not b!180301) (not bm!18227) (not b!180265) (not b!180274) (not b!180267) (not d!54143) (not b!180295) (not d!54127) (not bm!18228) (not b!180282) (not mapNonEmpty!7243) (not b!180276) b_and!11007 (not b!180339) (not b_next!4455))
(check-sat b_and!11007 (not b_next!4455))
