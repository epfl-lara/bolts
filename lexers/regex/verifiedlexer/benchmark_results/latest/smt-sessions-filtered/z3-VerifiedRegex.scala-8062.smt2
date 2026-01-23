; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416782 () Bool)

(assert start!416782)

(declare-fun b!4327510 () Bool)

(declare-fun b_free!129141 () Bool)

(declare-fun b_next!129845 () Bool)

(assert (=> b!4327510 (= b_free!129141 (not b_next!129845))))

(declare-fun tp!1327943 () Bool)

(declare-fun b_and!340731 () Bool)

(assert (=> b!4327510 (= tp!1327943 b_and!340731)))

(declare-fun b!4327507 () Bool)

(declare-fun e!2692814 () Bool)

(declare-fun tp_is_empty!24279 () Bool)

(declare-fun mapRes!21391 () Bool)

(assert (=> b!4327507 (= e!2692814 (and tp_is_empty!24279 mapRes!21391))))

(declare-fun condMapEmpty!21391 () Bool)

(declare-datatypes ((V!9961 0))(
  ( (V!9962 (val!16046 Int)) )
))
(declare-datatypes ((array!17470 0))(
  ( (array!17471 (arr!7795 (Array (_ BitVec 32) V!9961)) (size!35835 (_ BitVec 32))) )
))
(declare-datatypes ((array!17472 0))(
  ( (array!17473 (arr!7796 (Array (_ BitVec 32) (_ BitVec 64))) (size!35836 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9610 0))(
  ( (LongMapFixedSize!9611 (defaultEntry!5211 Int) (mask!13472 (_ BitVec 32)) (extraKeys!5070 (_ BitVec 32)) (zeroValue!5082 V!9961) (minValue!5082 V!9961) (_size!9637 (_ BitVec 32)) (_keys!5132 array!17472) (_values!5106 array!17470) (_vacant!4869 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18991 0))(
  ( (Cell!18992 (v!43003 LongMapFixedSize!9610)) )
))
(declare-datatypes ((MutLongMap!4805 0))(
  ( (LongMap!4805 (underlying!9820 Cell!18991)) (MutLongMapExt!4804 (__x!30402 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4805)

(declare-fun mapDefault!21391 () V!9961)

(assert (=> b!4327507 (= condMapEmpty!21391 (= (arr!7795 (_values!5106 (v!43003 (underlying!9820 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9961)) mapDefault!21391)))))

(declare-fun mapIsEmpty!21391 () Bool)

(assert (=> mapIsEmpty!21391 mapRes!21391))

(declare-fun b!4327508 () Bool)

(declare-fun e!2692812 () Bool)

(declare-fun e!2692811 () Bool)

(assert (=> b!4327508 (= e!2692812 e!2692811)))

(declare-fun c!736313 () Bool)

(declare-datatypes ((tuple2!47492 0))(
  ( (tuple2!47493 (_1!27038 Bool) (_2!27038 LongMapFixedSize!9610)) )
))
(declare-fun lt!1544465 () tuple2!47492)

(assert (=> b!4327508 (= c!736313 (_1!27038 lt!1544465))))

(declare-fun b!4327509 () Bool)

(declare-fun e!2692809 () Bool)

(declare-fun e!2692804 () Bool)

(assert (=> b!4327509 (= e!2692809 e!2692804)))

(declare-fun res!1773338 () Bool)

(assert (=> b!4327509 (=> (not res!1773338) (not e!2692804))))

(declare-datatypes ((tuple2!47494 0))(
  ( (tuple2!47495 (_1!27039 Bool) (_2!27039 MutLongMap!4805)) )
))
(declare-fun lt!1544464 () tuple2!47494)

(assert (=> b!4327509 (= res!1773338 (_1!27039 lt!1544464))))

(declare-fun e!2692813 () tuple2!47494)

(assert (=> b!4327509 (= lt!1544464 e!2692813)))

(declare-fun c!736312 () Bool)

(declare-fun imbalanced!107 (MutLongMap!4805) Bool)

(assert (=> b!4327509 (= c!736312 (imbalanced!107 thiss!47260))))

(declare-fun e!2692807 () Bool)

(declare-fun array_inv!5613 (array!17472) Bool)

(declare-fun array_inv!5614 (array!17470) Bool)

(assert (=> b!4327510 (= e!2692807 (and tp!1327943 tp_is_empty!24279 (array_inv!5613 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) (array_inv!5614 (_values!5106 (v!43003 (underlying!9820 thiss!47260)))) e!2692814))))

(declare-fun b!4327511 () Bool)

(assert (=> b!4327511 (= e!2692813 (tuple2!47495 true thiss!47260))))

(declare-fun mapNonEmpty!21391 () Bool)

(declare-fun tp!1327942 () Bool)

(assert (=> mapNonEmpty!21391 (= mapRes!21391 (and tp!1327942 tp_is_empty!24279))))

(declare-fun mapKey!21391 () (_ BitVec 32))

(declare-fun mapRest!21391 () (Array (_ BitVec 32) V!9961))

(declare-fun mapValue!21391 () V!9961)

(assert (=> mapNonEmpty!21391 (= (arr!7795 (_values!5106 (v!43003 (underlying!9820 thiss!47260)))) (store mapRest!21391 mapKey!21391 mapValue!21391))))

(declare-fun b!4327512 () Bool)

(assert (=> b!4327512 (= e!2692804 e!2692812)))

(declare-fun res!1773337 () Bool)

(assert (=> b!4327512 (=> res!1773337 e!2692812)))

(declare-fun lt!1544462 () MutLongMap!4805)

(declare-fun valid!3825 (MutLongMap!4805) Bool)

(assert (=> b!4327512 (= res!1773337 (not (valid!3825 lt!1544462)))))

(assert (=> b!4327512 (= lt!1544462 (LongMap!4805 (Cell!18992 (_2!27038 lt!1544465))))))

(declare-fun v!11761 () V!9961)

(declare-fun key!7012 () (_ BitVec 64))

(declare-fun update!575 (LongMapFixedSize!9610 (_ BitVec 64) V!9961) tuple2!47492)

(assert (=> b!4327512 (= lt!1544465 (update!575 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) key!7012 v!11761))))

(declare-fun b!4327513 () Bool)

(declare-fun res!1773339 () Bool)

(assert (=> b!4327513 (=> (not res!1773339) (not e!2692809))))

(assert (=> b!4327513 (= res!1773339 (valid!3825 thiss!47260))))

(declare-fun b!4327514 () Bool)

(declare-fun e!2692806 () Bool)

(assert (=> b!4327514 (= e!2692811 e!2692806)))

(declare-datatypes ((tuple2!47496 0))(
  ( (tuple2!47497 (_1!27040 (_ BitVec 64)) (_2!27040 V!9961)) )
))
(declare-datatypes ((List!48581 0))(
  ( (Nil!48457) (Cons!48457 (h!53926 tuple2!47496) (t!355491 List!48581)) )
))
(declare-datatypes ((ListLongMap!1247 0))(
  ( (ListLongMap!1248 (toList!2624 List!48581)) )
))
(declare-fun lt!1544463 () ListLongMap!1247)

(declare-fun call!300769 () ListLongMap!1247)

(assert (=> b!4327514 (= lt!1544463 call!300769)))

(declare-fun res!1773336 () Bool)

(declare-fun contains!10549 (ListLongMap!1247 (_ BitVec 64)) Bool)

(assert (=> b!4327514 (= res!1773336 (not (contains!10549 lt!1544463 key!7012)))))

(assert (=> b!4327514 (=> res!1773336 e!2692806)))

(declare-fun bm!300764 () Bool)

(declare-fun call!300770 () ListLongMap!1247)

(declare-fun map!10510 (MutLongMap!4805) ListLongMap!1247)

(assert (=> bm!300764 (= call!300770 (map!10510 thiss!47260))))

(declare-fun bm!300765 () Bool)

(assert (=> bm!300765 (= call!300769 (map!10510 lt!1544462))))

(declare-fun b!4327515 () Bool)

(declare-fun e!2692808 () Bool)

(assert (=> b!4327515 (= e!2692808 e!2692807)))

(declare-fun b!4327516 () Bool)

(declare-fun repack!110 (MutLongMap!4805) tuple2!47494)

(assert (=> b!4327516 (= e!2692813 (repack!110 thiss!47260))))

(declare-fun b!4327518 () Bool)

(declare-fun e!2692810 () Bool)

(assert (=> b!4327518 (= e!2692810 e!2692808)))

(declare-fun b!4327519 () Bool)

(assert (=> b!4327519 (= e!2692811 (not (= call!300769 call!300770)))))

(declare-fun res!1773340 () Bool)

(assert (=> start!416782 (=> (not res!1773340) (not e!2692809))))

(get-info :version)

(assert (=> start!416782 (= res!1773340 ((_ is LongMap!4805) thiss!47260))))

(assert (=> start!416782 e!2692809))

(assert (=> start!416782 e!2692810))

(assert (=> start!416782 tp_is_empty!24279))

(assert (=> start!416782 true))

(declare-fun b!4327517 () Bool)

(declare-fun +!379 (ListLongMap!1247 tuple2!47496) ListLongMap!1247)

(assert (=> b!4327517 (= e!2692806 (not (= lt!1544463 (+!379 call!300770 (tuple2!47497 key!7012 v!11761)))))))

(assert (= (and start!416782 res!1773340) b!4327513))

(assert (= (and b!4327513 res!1773339) b!4327509))

(assert (= (and b!4327509 c!736312) b!4327516))

(assert (= (and b!4327509 (not c!736312)) b!4327511))

(assert (= (and b!4327509 res!1773338) b!4327512))

(assert (= (and b!4327512 (not res!1773337)) b!4327508))

(assert (= (and b!4327508 c!736313) b!4327514))

(assert (= (and b!4327508 (not c!736313)) b!4327519))

(assert (= (and b!4327514 (not res!1773336)) b!4327517))

(assert (= (or b!4327517 b!4327519) bm!300764))

(assert (= (or b!4327514 b!4327519) bm!300765))

(assert (= (and b!4327507 condMapEmpty!21391) mapIsEmpty!21391))

(assert (= (and b!4327507 (not condMapEmpty!21391)) mapNonEmpty!21391))

(assert (= b!4327510 b!4327507))

(assert (= b!4327515 b!4327510))

(assert (= b!4327518 b!4327515))

(assert (= (and start!416782 ((_ is LongMap!4805) thiss!47260)) b!4327518))

(declare-fun m!4922307 () Bool)

(assert (=> b!4327509 m!4922307))

(declare-fun m!4922309 () Bool)

(assert (=> b!4327514 m!4922309))

(declare-fun m!4922311 () Bool)

(assert (=> b!4327510 m!4922311))

(declare-fun m!4922313 () Bool)

(assert (=> b!4327510 m!4922313))

(declare-fun m!4922315 () Bool)

(assert (=> b!4327513 m!4922315))

(declare-fun m!4922317 () Bool)

(assert (=> mapNonEmpty!21391 m!4922317))

(declare-fun m!4922319 () Bool)

(assert (=> b!4327516 m!4922319))

(declare-fun m!4922321 () Bool)

(assert (=> bm!300764 m!4922321))

(declare-fun m!4922323 () Bool)

(assert (=> bm!300765 m!4922323))

(declare-fun m!4922325 () Bool)

(assert (=> b!4327517 m!4922325))

(declare-fun m!4922327 () Bool)

(assert (=> b!4327512 m!4922327))

(declare-fun m!4922329 () Bool)

(assert (=> b!4327512 m!4922329))

(check-sat (not b!4327509) (not b_next!129845) (not b!4327516) (not b!4327512) (not mapNonEmpty!21391) (not b!4327517) (not bm!300764) (not b!4327510) (not b!4327513) tp_is_empty!24279 (not bm!300765) (not b!4327514) b_and!340731)
(check-sat b_and!340731 (not b_next!129845))
(get-model)

(declare-fun d!1272031 () Bool)

(declare-fun map!10511 (LongMapFixedSize!9610) ListLongMap!1247)

(assert (=> d!1272031 (= (map!10510 thiss!47260) (map!10511 (v!43003 (underlying!9820 thiss!47260))))))

(declare-fun bs!607548 () Bool)

(assert (= bs!607548 d!1272031))

(declare-fun m!4922331 () Bool)

(assert (=> bs!607548 m!4922331))

(assert (=> bm!300764 d!1272031))

(declare-fun d!1272033 () Bool)

(declare-fun e!2692819 () Bool)

(assert (=> d!1272033 e!2692819))

(declare-fun res!1773343 () Bool)

(assert (=> d!1272033 (=> res!1773343 e!2692819)))

(declare-fun lt!1544474 () Bool)

(assert (=> d!1272033 (= res!1773343 (not lt!1544474))))

(declare-fun lt!1544476 () Bool)

(assert (=> d!1272033 (= lt!1544474 lt!1544476)))

(declare-datatypes ((Unit!68075 0))(
  ( (Unit!68076) )
))
(declare-fun lt!1544475 () Unit!68075)

(declare-fun e!2692820 () Unit!68075)

(assert (=> d!1272033 (= lt!1544475 e!2692820)))

(declare-fun c!736316 () Bool)

(assert (=> d!1272033 (= c!736316 lt!1544476)))

(declare-fun containsKey!427 (List!48581 (_ BitVec 64)) Bool)

(assert (=> d!1272033 (= lt!1544476 (containsKey!427 (toList!2624 lt!1544463) key!7012))))

(assert (=> d!1272033 (= (contains!10549 lt!1544463 key!7012) lt!1544474)))

(declare-fun b!4327526 () Bool)

(declare-fun lt!1544477 () Unit!68075)

(assert (=> b!4327526 (= e!2692820 lt!1544477)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!233 (List!48581 (_ BitVec 64)) Unit!68075)

(assert (=> b!4327526 (= lt!1544477 (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!2624 lt!1544463) key!7012))))

(declare-datatypes ((Option!10331 0))(
  ( (None!10330) (Some!10330 (v!43008 V!9961)) )
))
(declare-fun isDefined!7629 (Option!10331) Bool)

(declare-fun getValueByKey!317 (List!48581 (_ BitVec 64)) Option!10331)

(assert (=> b!4327526 (isDefined!7629 (getValueByKey!317 (toList!2624 lt!1544463) key!7012))))

(declare-fun b!4327527 () Bool)

(declare-fun Unit!68077 () Unit!68075)

(assert (=> b!4327527 (= e!2692820 Unit!68077)))

(declare-fun b!4327528 () Bool)

(assert (=> b!4327528 (= e!2692819 (isDefined!7629 (getValueByKey!317 (toList!2624 lt!1544463) key!7012)))))

(assert (= (and d!1272033 c!736316) b!4327526))

(assert (= (and d!1272033 (not c!736316)) b!4327527))

(assert (= (and d!1272033 (not res!1773343)) b!4327528))

(declare-fun m!4922333 () Bool)

(assert (=> d!1272033 m!4922333))

(declare-fun m!4922335 () Bool)

(assert (=> b!4327526 m!4922335))

(declare-fun m!4922337 () Bool)

(assert (=> b!4327526 m!4922337))

(assert (=> b!4327526 m!4922337))

(declare-fun m!4922339 () Bool)

(assert (=> b!4327526 m!4922339))

(assert (=> b!4327528 m!4922337))

(assert (=> b!4327528 m!4922337))

(assert (=> b!4327528 m!4922339))

(assert (=> b!4327514 d!1272033))

(declare-fun d!1272035 () Bool)

(assert (=> d!1272035 (= (array_inv!5613 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) (bvsge (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327510 d!1272035))

(declare-fun d!1272037 () Bool)

(assert (=> d!1272037 (= (array_inv!5614 (_values!5106 (v!43003 (underlying!9820 thiss!47260)))) (bvsge (size!35835 (_values!5106 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327510 d!1272037))

(declare-fun d!1272039 () Bool)

(assert (=> d!1272039 (= (map!10510 lt!1544462) (map!10511 (v!43003 (underlying!9820 lt!1544462))))))

(declare-fun bs!607549 () Bool)

(assert (= bs!607549 d!1272039))

(declare-fun m!4922341 () Bool)

(assert (=> bs!607549 m!4922341))

(assert (=> bm!300765 d!1272039))

(declare-fun d!1272041 () Bool)

(declare-fun valid!3826 (LongMapFixedSize!9610) Bool)

(assert (=> d!1272041 (= (valid!3825 lt!1544462) (valid!3826 (v!43003 (underlying!9820 lt!1544462))))))

(declare-fun bs!607550 () Bool)

(assert (= bs!607550 d!1272041))

(declare-fun m!4922343 () Bool)

(assert (=> bs!607550 m!4922343))

(assert (=> b!4327512 d!1272041))

(declare-fun bm!300814 () Bool)

(declare-fun call!300827 () Bool)

(declare-fun call!300836 () Bool)

(assert (=> bm!300814 (= call!300827 call!300836)))

(declare-fun lt!1544555 () tuple2!47492)

(declare-fun call!300825 () ListLongMap!1247)

(declare-fun c!736346 () Bool)

(declare-fun bm!300815 () Bool)

(assert (=> bm!300815 (= call!300825 (map!10511 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))))))

(declare-fun b!4327609 () Bool)

(declare-fun e!2692863 () Bool)

(declare-fun e!2692866 () Bool)

(assert (=> b!4327609 (= e!2692863 e!2692866)))

(declare-fun res!1773379 () Bool)

(declare-fun call!300826 () Bool)

(assert (=> b!4327609 (= res!1773379 call!300826)))

(assert (=> b!4327609 (=> (not res!1773379) (not e!2692866))))

(declare-fun b!4327610 () Bool)

(declare-fun e!2692872 () Bool)

(declare-fun e!2692877 () Bool)

(assert (=> b!4327610 (= e!2692872 e!2692877)))

(assert (=> b!4327610 (= c!736346 (_1!27038 lt!1544555))))

(declare-fun b!4327611 () Bool)

(declare-fun res!1773382 () Bool)

(assert (=> b!4327611 (= res!1773382 call!300827)))

(declare-fun e!2692882 () Bool)

(assert (=> b!4327611 (=> (not res!1773382) (not e!2692882))))

(declare-fun bm!300816 () Bool)

(assert (=> bm!300816 (= call!300826 call!300827)))

(declare-datatypes ((SeekEntryResult!24 0))(
  ( (Found!24 (index!1477 (_ BitVec 32))) (Undefined!24) (MissingZero!24 (index!1478 (_ BitVec 32))) (MissingVacant!24 (index!1479 (_ BitVec 32))) (Intermediate!24 (undefined!105 Bool) (index!1480 (_ BitVec 32)) (x!751156 (_ BitVec 32))) )
))
(declare-fun lt!1544532 () SeekEntryResult!24)

(declare-fun b!4327612 () Bool)

(assert (=> b!4327612 (= e!2692882 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544532)) key!7012))))

(declare-fun d!1272043 () Bool)

(assert (=> d!1272043 e!2692872))

(declare-fun res!1773374 () Bool)

(assert (=> d!1272043 (=> (not res!1773374) (not e!2692872))))

(assert (=> d!1272043 (= res!1773374 (valid!3826 (_2!27038 lt!1544555)))))

(declare-fun e!2692873 () tuple2!47492)

(assert (=> d!1272043 (= lt!1544555 e!2692873)))

(declare-fun c!736347 () Bool)

(assert (=> d!1272043 (= c!736347 (= key!7012 (bvneg key!7012)))))

(assert (=> d!1272043 (valid!3826 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))

(assert (=> d!1272043 (= (update!575 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) key!7012 v!11761) lt!1544555)))

(declare-fun b!4327613 () Bool)

(declare-fun c!736353 () Bool)

(declare-fun lt!1544544 () SeekEntryResult!24)

(assert (=> b!4327613 (= c!736353 ((_ is MissingVacant!24) lt!1544544))))

(declare-fun e!2692875 () Bool)

(declare-fun e!2692867 () Bool)

(assert (=> b!4327613 (= e!2692875 e!2692867)))

(declare-fun bm!300817 () Bool)

(declare-fun call!300823 () ListLongMap!1247)

(declare-fun call!300829 () ListLongMap!1247)

(assert (=> bm!300817 (= call!300823 call!300829)))

(declare-fun b!4327614 () Bool)

(declare-fun e!2692865 () tuple2!47492)

(assert (=> b!4327614 (= e!2692873 e!2692865)))

(declare-fun c!736349 () Bool)

(assert (=> b!4327614 (= c!736349 (= key!7012 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300818 () Bool)

(declare-fun call!300842 () Bool)

(declare-fun call!300820 () Bool)

(assert (=> bm!300818 (= call!300842 call!300820)))

(declare-fun b!4327615 () Bool)

(declare-fun lt!1544550 () tuple2!47492)

(declare-fun call!300821 () tuple2!47492)

(assert (=> b!4327615 (= lt!1544550 call!300821)))

(declare-fun e!2692874 () tuple2!47492)

(assert (=> b!4327615 (= e!2692874 (tuple2!47493 (_1!27038 lt!1544550) (_2!27038 lt!1544550)))))

(declare-fun b!4327616 () Bool)

(declare-fun e!2692880 () ListLongMap!1247)

(assert (=> b!4327616 (= e!2692880 call!300823)))

(declare-fun bm!300819 () Bool)

(declare-fun call!300841 () SeekEntryResult!24)

(declare-fun call!300833 () SeekEntryResult!24)

(assert (=> bm!300819 (= call!300841 call!300833)))

(declare-fun b!4327617 () Bool)

(declare-fun lt!1544541 () SeekEntryResult!24)

(assert (=> b!4327617 (= e!2692863 ((_ is Undefined!24) lt!1544541))))

(declare-fun b!4327618 () Bool)

(declare-fun e!2692870 () Bool)

(declare-fun call!300828 () Bool)

(assert (=> b!4327618 (= e!2692870 (not call!300828))))

(declare-fun bm!300820 () Bool)

(declare-fun call!300831 () SeekEntryResult!24)

(assert (=> bm!300820 (= call!300831 call!300833)))

(declare-fun call!300819 () ListLongMap!1247)

(declare-fun bm!300821 () Bool)

(assert (=> bm!300821 (= call!300819 (map!10511 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327619 () Bool)

(declare-fun e!2692869 () Bool)

(assert (=> b!4327619 (= e!2692877 e!2692869)))

(declare-fun res!1773384 () Bool)

(assert (=> b!4327619 (= res!1773384 (contains!10549 call!300819 key!7012))))

(assert (=> b!4327619 (=> (not res!1773384) (not e!2692869))))

(declare-fun b!4327620 () Bool)

(declare-fun c!736351 () Bool)

(assert (=> b!4327620 (= c!736351 ((_ is MissingVacant!24) lt!1544541))))

(declare-fun e!2692864 () Bool)

(assert (=> b!4327620 (= e!2692864 e!2692863)))

(declare-fun b!4327621 () Bool)

(declare-fun e!2692868 () Bool)

(declare-fun call!300837 () Bool)

(assert (=> b!4327621 (= e!2692868 (not call!300837))))

(declare-fun b!4327622 () Bool)

(declare-fun e!2692871 () tuple2!47492)

(declare-fun lt!1544554 () tuple2!47492)

(assert (=> b!4327622 (= e!2692871 (tuple2!47493 (_1!27038 lt!1544554) (_2!27038 lt!1544554)))))

(assert (=> b!4327622 (= lt!1544554 call!300821)))

(declare-fun bm!300822 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17472 (_ BitVec 32)) SeekEntryResult!24)

(assert (=> bm!300822 (= call!300833 (seekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327623 () Bool)

(assert (=> b!4327623 (= e!2692866 (not call!300828))))

(declare-fun bm!300823 () Bool)

(declare-fun call!300832 () ListLongMap!1247)

(declare-fun call!300839 () ListLongMap!1247)

(assert (=> bm!300823 (= call!300832 call!300839)))

(declare-fun b!4327624 () Bool)

(assert (=> b!4327624 (= e!2692867 ((_ is Undefined!24) lt!1544544))))

(declare-fun b!4327625 () Bool)

(assert (=> b!4327625 (= e!2692880 call!300839)))

(declare-fun b!4327626 () Bool)

(declare-fun e!2692876 () Unit!68075)

(declare-fun Unit!68078 () Unit!68075)

(assert (=> b!4327626 (= e!2692876 Unit!68078)))

(declare-fun lt!1544556 () Unit!68075)

(declare-fun call!300830 () Unit!68075)

(assert (=> b!4327626 (= lt!1544556 call!300830)))

(assert (=> b!4327626 (= lt!1544541 call!300841)))

(declare-fun c!736345 () Bool)

(assert (=> b!4327626 (= c!736345 ((_ is MissingZero!24) lt!1544541))))

(assert (=> b!4327626 e!2692864))

(declare-fun lt!1544558 () Unit!68075)

(assert (=> b!4327626 (= lt!1544558 lt!1544556)))

(assert (=> b!4327626 false))

(declare-fun b!4327627 () Bool)

(declare-fun res!1773375 () Bool)

(assert (=> b!4327627 (=> (not res!1773375) (not e!2692868))))

(assert (=> b!4327627 (= res!1773375 call!300842)))

(assert (=> b!4327627 (= e!2692875 e!2692868)))

(declare-fun bm!300824 () Bool)

(declare-fun call!300834 () Unit!68075)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!14 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) Int) Unit!68075)

(assert (=> bm!300824 (= call!300834 (lemmaInListMapThenSeekEntryOrOpenFindsIt!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun bm!300825 () Bool)

(declare-fun c!736355 () Bool)

(declare-fun c!736352 () Bool)

(assert (=> bm!300825 (= c!736355 c!736352)))

(declare-fun call!300822 () Bool)

(assert (=> bm!300825 (= call!300822 (contains!10549 e!2692880 key!7012))))

(declare-fun bm!300826 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!14 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) Int) Unit!68075)

(assert (=> bm!300826 (= call!300830 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun e!2692879 () Bool)

(declare-fun lt!1544557 () SeekEntryResult!24)

(declare-fun b!4327628 () Bool)

(assert (=> b!4327628 (= e!2692879 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544557)) key!7012))))

(declare-fun b!4327629 () Bool)

(assert (=> b!4327629 (= e!2692871 e!2692874)))

(declare-fun c!736348 () Bool)

(declare-fun lt!1544549 () SeekEntryResult!24)

(assert (=> b!4327629 (= c!736348 ((_ is MissingZero!24) lt!1544549))))

(declare-fun bm!300827 () Bool)

(declare-fun lt!1544547 () (_ BitVec 32))

(declare-fun getCurrentListMap!27 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) Int) ListLongMap!1247)

(assert (=> bm!300827 (= call!300839 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327630 () Bool)

(declare-fun res!1773376 () Bool)

(assert (=> b!4327630 (=> (not res!1773376) (not e!2692870))))

(assert (=> b!4327630 (= res!1773376 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1478 lt!1544541)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327631 () Bool)

(declare-fun lt!1544551 () Unit!68075)

(declare-fun e!2692883 () Unit!68075)

(assert (=> b!4327631 (= lt!1544551 e!2692883)))

(declare-fun c!736354 () Bool)

(assert (=> b!4327631 (= c!736354 call!300822)))

(declare-fun e!2692881 () tuple2!47492)

(assert (=> b!4327631 (= e!2692881 (tuple2!47493 false (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(declare-fun bm!300828 () Bool)

(declare-fun call!300835 () ListLongMap!1247)

(declare-fun call!300840 () ListLongMap!1247)

(assert (=> bm!300828 (= call!300835 call!300840)))

(declare-fun b!4327632 () Bool)

(declare-fun e!2692878 () Bool)

(assert (=> b!4327632 (= e!2692878 (not call!300837))))

(declare-fun lt!1544548 () (_ BitVec 32))

(declare-fun lt!1544546 () array!17470)

(declare-fun bm!300829 () Bool)

(assert (=> bm!300829 (= call!300829 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun c!736343 () Bool)

(declare-fun c!736344 () Bool)

(declare-fun bm!300830 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!300830 (= call!300836 (inRange!0 (ite c!736352 (ite c!736354 (index!1477 lt!1544557) (ite c!736344 (index!1478 lt!1544544) (index!1479 lt!1544544))) (ite c!736343 (index!1477 lt!1544532) (ite c!736345 (index!1478 lt!1544541) (index!1479 lt!1544541)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327633 () Bool)

(assert (=> b!4327633 (= e!2692869 (= call!300819 (+!379 call!300825 (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4327634 () Bool)

(declare-fun c!736350 () Bool)

(assert (=> b!4327634 (= c!736350 ((_ is MissingVacant!24) lt!1544549))))

(assert (=> b!4327634 (= e!2692881 e!2692871)))

(declare-fun b!4327635 () Bool)

(declare-fun res!1773372 () Bool)

(assert (=> b!4327635 (= res!1773372 call!300820)))

(assert (=> b!4327635 (=> (not res!1773372) (not e!2692879))))

(declare-fun b!4327636 () Bool)

(assert (=> b!4327636 (= e!2692867 e!2692878)))

(declare-fun res!1773378 () Bool)

(assert (=> b!4327636 (= res!1773378 call!300842)))

(assert (=> b!4327636 (=> (not res!1773378) (not e!2692878))))

(declare-fun b!4327637 () Bool)

(declare-fun res!1773373 () Bool)

(assert (=> b!4327637 (=> (not res!1773373) (not e!2692870))))

(assert (=> b!4327637 (= res!1773373 call!300826)))

(assert (=> b!4327637 (= e!2692864 e!2692870)))

(declare-fun b!4327638 () Bool)

(assert (=> b!4327638 (= e!2692877 (= call!300825 call!300819))))

(declare-fun b!4327639 () Bool)

(declare-fun res!1773377 () Bool)

(assert (=> b!4327639 (= res!1773377 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1479 lt!1544541)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327639 (=> (not res!1773377) (not e!2692866))))

(declare-fun bm!300831 () Bool)

(declare-fun call!300824 () ListLongMap!1247)

(assert (=> bm!300831 (= call!300824 call!300829)))

(declare-fun b!4327640 () Bool)

(declare-fun lt!1544535 () Unit!68075)

(assert (=> b!4327640 (= e!2692876 lt!1544535)))

(assert (=> b!4327640 (= lt!1544535 call!300834)))

(assert (=> b!4327640 (= lt!1544532 call!300841)))

(declare-fun res!1773383 () Bool)

(assert (=> b!4327640 (= res!1773383 ((_ is Found!24) lt!1544532))))

(assert (=> b!4327640 (=> (not res!1773383) (not e!2692882))))

(assert (=> b!4327640 e!2692882))

(declare-fun b!4327641 () Bool)

(assert (=> b!4327641 (= e!2692873 e!2692881)))

(assert (=> b!4327641 (= lt!1544549 (seekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> b!4327641 (= c!736352 ((_ is Undefined!24) lt!1544549))))

(declare-fun bm!300832 () Bool)

(declare-fun call!300838 () Bool)

(declare-fun arrayContainsKey!0 (array!17472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!300832 (= call!300838 (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 #b00000000000000000000000000000000))))

(declare-fun b!4327642 () Bool)

(declare-fun lt!1544539 () Unit!68075)

(assert (=> b!4327642 (= e!2692883 lt!1544539)))

(assert (=> b!4327642 (= lt!1544539 call!300830)))

(assert (=> b!4327642 (= lt!1544544 call!300831)))

(assert (=> b!4327642 (= c!736344 ((_ is MissingZero!24) lt!1544544))))

(assert (=> b!4327642 e!2692875))

(declare-fun b!4327643 () Bool)

(declare-fun res!1773385 () Bool)

(assert (=> b!4327643 (=> (not res!1773385) (not e!2692868))))

(assert (=> b!4327643 (= res!1773385 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1478 lt!1544544)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327644 () Bool)

(declare-fun lt!1544538 () Unit!68075)

(declare-fun lt!1544552 () Unit!68075)

(assert (=> b!4327644 (= lt!1544538 lt!1544552)))

(assert (=> b!4327644 (contains!10549 call!300823 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!17 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) Int) Unit!68075)

(assert (=> b!4327644 (= lt!1544552 (lemmaValidKeyInArrayIsInListMap!17 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (index!1477 lt!1544549) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> b!4327644 (= lt!1544546 (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun lt!1544537 () Unit!68075)

(declare-fun lt!1544543 () Unit!68075)

(assert (=> b!4327644 (= lt!1544537 lt!1544543)))

(assert (=> b!4327644 (= call!300840 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!14 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) (_ BitVec 64) V!9961 Int) Unit!68075)

(assert (=> b!4327644 (= lt!1544543 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (index!1477 lt!1544549) key!7012 v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544540 () Unit!68075)

(assert (=> b!4327644 (= lt!1544540 e!2692876)))

(assert (=> b!4327644 (= c!736343 call!300822)))

(assert (=> b!4327644 (= e!2692874 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_size!9637 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (_vacant!4869 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4327645 () Bool)

(declare-fun lt!1544536 () Unit!68075)

(declare-fun lt!1544553 () Unit!68075)

(assert (=> b!4327645 (= lt!1544536 lt!1544553)))

(assert (=> b!4327645 (= call!300835 call!300832)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!14 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 V!9961 Int) Unit!68075)

(assert (=> b!4327645 (= lt!1544553 (lemmaChangeLongMinValueKeyThenAddPairToListMap!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> b!4327645 (= lt!1544547 (bvor (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000010))))

(assert (=> b!4327645 (= e!2692865 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (bvor (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000010) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (_size!9637 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_vacant!4869 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4327646 () Bool)

(declare-fun Unit!68079 () Unit!68075)

(assert (=> b!4327646 (= e!2692883 Unit!68079)))

(declare-fun lt!1544542 () Unit!68075)

(assert (=> b!4327646 (= lt!1544542 call!300834)))

(assert (=> b!4327646 (= lt!1544557 call!300831)))

(declare-fun res!1773381 () Bool)

(assert (=> b!4327646 (= res!1773381 ((_ is Found!24) lt!1544557))))

(assert (=> b!4327646 (=> (not res!1773381) (not e!2692879))))

(assert (=> b!4327646 e!2692879))

(declare-fun lt!1544534 () Unit!68075)

(assert (=> b!4327646 (= lt!1544534 lt!1544542)))

(assert (=> b!4327646 false))

(declare-fun bm!300833 () Bool)

(assert (=> bm!300833 (= call!300820 call!300836)))

(declare-fun b!4327647 () Bool)

(declare-fun res!1773380 () Bool)

(assert (=> b!4327647 (= res!1773380 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1479 lt!1544544)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327647 (=> (not res!1773380) (not e!2692878))))

(declare-fun bm!300834 () Bool)

(declare-fun updateHelperNewKey!14 (LongMapFixedSize!9610 (_ BitVec 64) V!9961 (_ BitVec 32)) tuple2!47492)

(assert (=> bm!300834 (= call!300821 (updateHelperNewKey!14 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) key!7012 v!11761 (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549))))))

(declare-fun bm!300835 () Bool)

(assert (=> bm!300835 (= call!300837 call!300838)))

(declare-fun bm!300836 () Bool)

(assert (=> bm!300836 (= call!300828 call!300838)))

(declare-fun bm!300837 () Bool)

(assert (=> bm!300837 (= call!300840 (+!379 (ite c!736347 (ite c!736349 call!300832 call!300824) call!300839) (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4327648 () Bool)

(declare-fun lt!1544545 () Unit!68075)

(declare-fun lt!1544533 () Unit!68075)

(assert (=> b!4327648 (= lt!1544545 lt!1544533)))

(assert (=> b!4327648 (= call!300835 call!300824)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!14 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 V!9961 Int) Unit!68075)

(assert (=> b!4327648 (= lt!1544533 (lemmaChangeZeroKeyThenAddPairToListMap!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544548 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> b!4327648 (= lt!1544548 (bvor (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001))))

(assert (=> b!4327648 (= e!2692865 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (bvor (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001) v!11761 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_size!9637 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_vacant!4869 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (= (and d!1272043 c!736347) b!4327614))

(assert (= (and d!1272043 (not c!736347)) b!4327641))

(assert (= (and b!4327614 c!736349) b!4327648))

(assert (= (and b!4327614 (not c!736349)) b!4327645))

(assert (= (or b!4327648 b!4327645) bm!300831))

(assert (= (or b!4327648 b!4327645) bm!300823))

(assert (= (or b!4327648 b!4327645) bm!300828))

(assert (= (and b!4327641 c!736352) b!4327631))

(assert (= (and b!4327641 (not c!736352)) b!4327634))

(assert (= (and b!4327631 c!736354) b!4327646))

(assert (= (and b!4327631 (not c!736354)) b!4327642))

(assert (= (and b!4327646 res!1773381) b!4327635))

(assert (= (and b!4327635 res!1773372) b!4327628))

(assert (= (and b!4327642 c!736344) b!4327627))

(assert (= (and b!4327642 (not c!736344)) b!4327613))

(assert (= (and b!4327627 res!1773375) b!4327643))

(assert (= (and b!4327643 res!1773385) b!4327621))

(assert (= (and b!4327613 c!736353) b!4327636))

(assert (= (and b!4327613 (not c!736353)) b!4327624))

(assert (= (and b!4327636 res!1773378) b!4327647))

(assert (= (and b!4327647 res!1773380) b!4327632))

(assert (= (or b!4327621 b!4327632) bm!300835))

(assert (= (or b!4327627 b!4327636) bm!300818))

(assert (= (or b!4327635 bm!300818) bm!300833))

(assert (= (or b!4327646 b!4327642) bm!300820))

(assert (= (and b!4327634 c!736350) b!4327622))

(assert (= (and b!4327634 (not c!736350)) b!4327629))

(assert (= (and b!4327629 c!736348) b!4327615))

(assert (= (and b!4327629 (not c!736348)) b!4327644))

(assert (= (and b!4327644 c!736343) b!4327640))

(assert (= (and b!4327644 (not c!736343)) b!4327626))

(assert (= (and b!4327640 res!1773383) b!4327611))

(assert (= (and b!4327611 res!1773382) b!4327612))

(assert (= (and b!4327626 c!736345) b!4327637))

(assert (= (and b!4327626 (not c!736345)) b!4327620))

(assert (= (and b!4327637 res!1773373) b!4327630))

(assert (= (and b!4327630 res!1773376) b!4327618))

(assert (= (and b!4327620 c!736351) b!4327609))

(assert (= (and b!4327620 (not c!736351)) b!4327617))

(assert (= (and b!4327609 res!1773379) b!4327639))

(assert (= (and b!4327639 res!1773377) b!4327623))

(assert (= (or b!4327618 b!4327623) bm!300836))

(assert (= (or b!4327637 b!4327609) bm!300816))

(assert (= (or b!4327611 bm!300816) bm!300814))

(assert (= (or b!4327640 b!4327626) bm!300819))

(assert (= (or b!4327622 b!4327615) bm!300834))

(assert (= (or bm!300833 bm!300814) bm!300830))

(assert (= (or b!4327631 b!4327644) bm!300817))

(assert (= (or b!4327642 b!4327626) bm!300826))

(assert (= (or bm!300820 bm!300819) bm!300822))

(assert (= (or b!4327646 b!4327640) bm!300824))

(assert (= (or bm!300835 bm!300836) bm!300832))

(assert (= (or b!4327631 b!4327644) bm!300825))

(assert (= (and bm!300825 c!736355) b!4327616))

(assert (= (and bm!300825 (not c!736355)) b!4327625))

(assert (= (or bm!300831 bm!300817) bm!300829))

(assert (= (or bm!300823 b!4327625 b!4327644) bm!300827))

(assert (= (or bm!300828 b!4327644) bm!300837))

(assert (= (and d!1272043 res!1773374) b!4327610))

(assert (= (and b!4327610 c!736346) b!4327619))

(assert (= (and b!4327610 (not c!736346)) b!4327638))

(assert (= (and b!4327619 res!1773384) b!4327633))

(assert (= (or b!4327619 b!4327633 b!4327638) bm!300821))

(assert (= (or b!4327633 b!4327638) bm!300815))

(declare-fun m!4922345 () Bool)

(assert (=> bm!300832 m!4922345))

(declare-fun m!4922347 () Bool)

(assert (=> bm!300834 m!4922347))

(declare-fun m!4922349 () Bool)

(assert (=> b!4327648 m!4922349))

(declare-fun m!4922351 () Bool)

(assert (=> b!4327630 m!4922351))

(declare-fun m!4922353 () Bool)

(assert (=> bm!300826 m!4922353))

(declare-fun m!4922355 () Bool)

(assert (=> b!4327628 m!4922355))

(declare-fun m!4922357 () Bool)

(assert (=> bm!300821 m!4922357))

(declare-fun m!4922359 () Bool)

(assert (=> b!4327645 m!4922359))

(declare-fun m!4922361 () Bool)

(assert (=> d!1272043 m!4922361))

(declare-fun m!4922363 () Bool)

(assert (=> d!1272043 m!4922363))

(declare-fun m!4922365 () Bool)

(assert (=> bm!300825 m!4922365))

(declare-fun m!4922367 () Bool)

(assert (=> b!4327644 m!4922367))

(declare-fun m!4922369 () Bool)

(assert (=> b!4327644 m!4922369))

(declare-fun m!4922371 () Bool)

(assert (=> b!4327644 m!4922371))

(assert (=> b!4327644 m!4922369))

(declare-fun m!4922373 () Bool)

(assert (=> b!4327644 m!4922373))

(declare-fun m!4922375 () Bool)

(assert (=> b!4327644 m!4922375))

(declare-fun m!4922377 () Bool)

(assert (=> b!4327644 m!4922377))

(declare-fun m!4922379 () Bool)

(assert (=> b!4327643 m!4922379))

(declare-fun m!4922381 () Bool)

(assert (=> bm!300829 m!4922381))

(declare-fun m!4922383 () Bool)

(assert (=> bm!300822 m!4922383))

(declare-fun m!4922385 () Bool)

(assert (=> b!4327612 m!4922385))

(declare-fun m!4922387 () Bool)

(assert (=> b!4327619 m!4922387))

(declare-fun m!4922389 () Bool)

(assert (=> bm!300837 m!4922389))

(declare-fun m!4922391 () Bool)

(assert (=> bm!300824 m!4922391))

(declare-fun m!4922393 () Bool)

(assert (=> b!4327639 m!4922393))

(declare-fun m!4922395 () Bool)

(assert (=> bm!300830 m!4922395))

(declare-fun m!4922397 () Bool)

(assert (=> bm!300827 m!4922397))

(assert (=> b!4327641 m!4922383))

(declare-fun m!4922399 () Bool)

(assert (=> b!4327647 m!4922399))

(declare-fun m!4922401 () Bool)

(assert (=> bm!300815 m!4922401))

(declare-fun m!4922403 () Bool)

(assert (=> b!4327633 m!4922403))

(assert (=> b!4327512 d!1272043))

(declare-fun d!1272045 () Bool)

(assert (=> d!1272045 (= (imbalanced!107 thiss!47260) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9637 (v!43003 (underlying!9820 thiss!47260))) (_vacant!4869 (v!43003 (underlying!9820 thiss!47260))))) (mask!13472 (v!43003 (underlying!9820 thiss!47260)))) (bvsgt (_vacant!4869 (v!43003 (underlying!9820 thiss!47260))) (_size!9637 (v!43003 (underlying!9820 thiss!47260))))))))

(assert (=> b!4327509 d!1272045))

(declare-fun d!1272047 () Bool)

(declare-fun e!2692886 () Bool)

(assert (=> d!1272047 e!2692886))

(declare-fun res!1773390 () Bool)

(assert (=> d!1272047 (=> (not res!1773390) (not e!2692886))))

(declare-fun lt!1544568 () ListLongMap!1247)

(assert (=> d!1272047 (= res!1773390 (contains!10549 lt!1544568 (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun lt!1544567 () List!48581)

(assert (=> d!1272047 (= lt!1544568 (ListLongMap!1248 lt!1544567))))

(declare-fun lt!1544569 () Unit!68075)

(declare-fun lt!1544570 () Unit!68075)

(assert (=> d!1272047 (= lt!1544569 lt!1544570)))

(assert (=> d!1272047 (= (getValueByKey!317 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761))) (Some!10330 (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun lemmaContainsTupThenGetReturnValue!110 (List!48581 (_ BitVec 64) V!9961) Unit!68075)

(assert (=> d!1272047 (= lt!1544570 (lemmaContainsTupThenGetReturnValue!110 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun insertStrictlySorted!65 (List!48581 (_ BitVec 64) V!9961) List!48581)

(assert (=> d!1272047 (= lt!1544567 (insertStrictlySorted!65 (toList!2624 call!300770) (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(assert (=> d!1272047 (= (+!379 call!300770 (tuple2!47497 key!7012 v!11761)) lt!1544568)))

(declare-fun b!4327653 () Bool)

(declare-fun res!1773391 () Bool)

(assert (=> b!4327653 (=> (not res!1773391) (not e!2692886))))

(assert (=> b!4327653 (= res!1773391 (= (getValueByKey!317 (toList!2624 lt!1544568) (_1!27040 (tuple2!47497 key!7012 v!11761))) (Some!10330 (_2!27040 (tuple2!47497 key!7012 v!11761)))))))

(declare-fun b!4327654 () Bool)

(declare-fun contains!10550 (List!48581 tuple2!47496) Bool)

(assert (=> b!4327654 (= e!2692886 (contains!10550 (toList!2624 lt!1544568) (tuple2!47497 key!7012 v!11761)))))

(assert (= (and d!1272047 res!1773390) b!4327653))

(assert (= (and b!4327653 res!1773391) b!4327654))

(declare-fun m!4922405 () Bool)

(assert (=> d!1272047 m!4922405))

(declare-fun m!4922407 () Bool)

(assert (=> d!1272047 m!4922407))

(declare-fun m!4922409 () Bool)

(assert (=> d!1272047 m!4922409))

(declare-fun m!4922411 () Bool)

(assert (=> d!1272047 m!4922411))

(declare-fun m!4922413 () Bool)

(assert (=> b!4327653 m!4922413))

(declare-fun m!4922415 () Bool)

(assert (=> b!4327654 m!4922415))

(assert (=> b!4327517 d!1272047))

(declare-fun b!4327675 () Bool)

(declare-fun e!2692902 () Bool)

(declare-fun e!2692903 () Bool)

(assert (=> b!4327675 (= e!2692902 e!2692903)))

(declare-fun res!1773397 () Bool)

(assert (=> b!4327675 (=> res!1773397 e!2692903)))

(declare-fun lt!1544597 () tuple2!47494)

(assert (=> b!4327675 (= res!1773397 (= (_1!27039 lt!1544597) false))))

(declare-fun b!4327676 () Bool)

(declare-datatypes ((tuple2!47498 0))(
  ( (tuple2!47499 (_1!27041 Bool) (_2!27041 Cell!18991)) )
))
(declare-fun e!2692901 () tuple2!47498)

(declare-fun e!2692900 () tuple2!47498)

(assert (=> b!4327676 (= e!2692901 e!2692900)))

(declare-fun c!736365 () Bool)

(assert (=> b!4327676 (= c!736365 (and (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4327677 () Bool)

(declare-fun lt!1544598 () tuple2!47492)

(declare-fun call!300851 () tuple2!47492)

(assert (=> b!4327677 (= lt!1544598 call!300851)))

(assert (=> b!4327677 (= e!2692900 (tuple2!47499 (_1!27038 lt!1544598) (Cell!18992 (_2!27038 lt!1544598))))))

(declare-fun b!4327678 () Bool)

(declare-fun e!2692904 () tuple2!47498)

(declare-fun lt!1544596 () Cell!18991)

(assert (=> b!4327678 (= e!2692904 (tuple2!47499 true lt!1544596))))

(declare-fun b!4327679 () Bool)

(declare-datatypes ((tuple3!5518 0))(
  ( (tuple3!5519 (_1!27042 Bool) (_2!27042 Cell!18991) (_3!3292 MutLongMap!4805)) )
))
(declare-fun e!2692899 () tuple3!5518)

(declare-fun lt!1544593 () tuple2!47492)

(assert (=> b!4327679 (= e!2692899 (ite (_1!27038 lt!1544593) (tuple3!5519 true (underlying!9820 thiss!47260) (LongMap!4805 (Cell!18992 (_2!27038 lt!1544593)))) (tuple3!5519 false (Cell!18992 (_2!27038 lt!1544593)) thiss!47260)))))

(declare-fun lt!1544599 () tuple2!47498)

(declare-fun repackFrom!19 (MutLongMap!4805 LongMapFixedSize!9610 (_ BitVec 32)) tuple2!47492)

(assert (=> b!4327679 (= lt!1544593 (repackFrom!19 thiss!47260 (v!43003 (_2!27041 lt!1544599)) (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun bm!300846 () Bool)

(declare-fun call!300853 () LongMapFixedSize!9610)

(declare-fun call!300854 () LongMapFixedSize!9610)

(assert (=> bm!300846 (= call!300853 call!300854)))

(declare-fun bm!300847 () Bool)

(declare-fun call!300852 () tuple2!47492)

(assert (=> bm!300847 (= call!300851 call!300852)))

(declare-fun b!4327680 () Bool)

(assert (=> b!4327680 (= e!2692903 (= (map!10510 (_2!27039 lt!1544597)) (map!10510 thiss!47260)))))

(declare-fun b!4327681 () Bool)

(declare-fun lt!1544592 () tuple2!47492)

(assert (=> b!4327681 (= e!2692904 (tuple2!47499 (_1!27038 lt!1544592) (Cell!18992 (_2!27038 lt!1544592))))))

(assert (=> b!4327681 (= lt!1544592 call!300851)))

(declare-fun d!1272049 () Bool)

(assert (=> d!1272049 e!2692902))

(declare-fun res!1773396 () Bool)

(assert (=> d!1272049 (=> (not res!1773396) (not e!2692902))))

(assert (=> d!1272049 (= res!1773396 ((_ is LongMap!4805) (_2!27039 lt!1544597)))))

(declare-fun lt!1544591 () tuple3!5518)

(assert (=> d!1272049 (= lt!1544597 (tuple2!47495 (_1!27042 lt!1544591) (_3!3292 lt!1544591)))))

(assert (=> d!1272049 (= lt!1544591 e!2692899)))

(declare-fun c!736367 () Bool)

(assert (=> d!1272049 (= c!736367 (not (_1!27041 lt!1544599)))))

(assert (=> d!1272049 (= lt!1544599 e!2692901)))

(declare-fun c!736364 () Bool)

(assert (=> d!1272049 (= c!736364 (and (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1544594 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!33 ((_ BitVec 32) Int) LongMapFixedSize!9610)

(assert (=> d!1272049 (= lt!1544596 (Cell!18992 (getNewLongMapFixedSize!33 lt!1544594 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260))))))))

(declare-fun computeNewMask!19 (MutLongMap!4805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1272049 (= lt!1544594 (computeNewMask!19 thiss!47260 (mask!13472 (v!43003 (underlying!9820 thiss!47260))) (_vacant!4869 (v!43003 (underlying!9820 thiss!47260))) (_size!9637 (v!43003 (underlying!9820 thiss!47260)))))))

(assert (=> d!1272049 (valid!3825 thiss!47260)))

(assert (=> d!1272049 (= (repack!110 thiss!47260) lt!1544597)))

(declare-fun b!4327682 () Bool)

(assert (=> b!4327682 (= e!2692899 (tuple3!5519 false (_2!27041 lt!1544599) thiss!47260))))

(declare-fun b!4327683 () Bool)

(declare-fun c!736366 () Bool)

(assert (=> b!4327683 (= c!736366 (and (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4327683 (= e!2692900 e!2692904)))

(declare-fun bm!300848 () Bool)

(declare-fun lt!1544595 () tuple2!47492)

(assert (=> bm!300848 (= call!300852 (update!575 (ite c!736364 (_2!27038 lt!1544595) call!300853) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun b!4327684 () Bool)

(declare-fun lt!1544600 () tuple2!47492)

(assert (=> b!4327684 (= e!2692901 (tuple2!47499 (and (_1!27038 lt!1544595) (_1!27038 lt!1544600)) (Cell!18992 (_2!27038 lt!1544600))))))

(assert (=> b!4327684 (= lt!1544595 (update!575 call!300854 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))

(assert (=> b!4327684 (= lt!1544600 call!300852)))

(declare-fun bm!300849 () Bool)

(assert (=> bm!300849 (= call!300854 (getNewLongMapFixedSize!33 lt!1544594 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))))))

(assert (= (and d!1272049 c!736364) b!4327684))

(assert (= (and d!1272049 (not c!736364)) b!4327676))

(assert (= (and b!4327676 c!736365) b!4327677))

(assert (= (and b!4327676 (not c!736365)) b!4327683))

(assert (= (and b!4327683 c!736366) b!4327681))

(assert (= (and b!4327683 (not c!736366)) b!4327678))

(assert (= (or b!4327677 b!4327681) bm!300846))

(assert (= (or b!4327677 b!4327681) bm!300847))

(assert (= (or b!4327684 bm!300846) bm!300849))

(assert (= (or b!4327684 bm!300847) bm!300848))

(assert (= (and d!1272049 c!736367) b!4327682))

(assert (= (and d!1272049 (not c!736367)) b!4327679))

(assert (= (and d!1272049 res!1773396) b!4327675))

(assert (= (and b!4327675 (not res!1773397)) b!4327680))

(declare-fun m!4922417 () Bool)

(assert (=> b!4327684 m!4922417))

(declare-fun m!4922419 () Bool)

(assert (=> bm!300849 m!4922419))

(assert (=> d!1272049 m!4922419))

(declare-fun m!4922421 () Bool)

(assert (=> d!1272049 m!4922421))

(assert (=> d!1272049 m!4922315))

(declare-fun m!4922423 () Bool)

(assert (=> b!4327680 m!4922423))

(assert (=> b!4327680 m!4922321))

(declare-fun m!4922425 () Bool)

(assert (=> bm!300848 m!4922425))

(declare-fun m!4922427 () Bool)

(assert (=> b!4327679 m!4922427))

(assert (=> b!4327516 d!1272049))

(declare-fun d!1272051 () Bool)

(assert (=> d!1272051 (= (valid!3825 thiss!47260) (valid!3826 (v!43003 (underlying!9820 thiss!47260))))))

(declare-fun bs!607551 () Bool)

(assert (= bs!607551 d!1272051))

(declare-fun m!4922429 () Bool)

(assert (=> bs!607551 m!4922429))

(assert (=> b!4327513 d!1272051))

(declare-fun condMapEmpty!21394 () Bool)

(declare-fun mapDefault!21394 () V!9961)

(assert (=> mapNonEmpty!21391 (= condMapEmpty!21394 (= mapRest!21391 ((as const (Array (_ BitVec 32) V!9961)) mapDefault!21394)))))

(declare-fun mapRes!21394 () Bool)

(assert (=> mapNonEmpty!21391 (= tp!1327942 (and tp_is_empty!24279 mapRes!21394))))

(declare-fun mapIsEmpty!21394 () Bool)

(assert (=> mapIsEmpty!21394 mapRes!21394))

(declare-fun mapNonEmpty!21394 () Bool)

(declare-fun tp!1327946 () Bool)

(assert (=> mapNonEmpty!21394 (= mapRes!21394 (and tp!1327946 tp_is_empty!24279))))

(declare-fun mapKey!21394 () (_ BitVec 32))

(declare-fun mapValue!21394 () V!9961)

(declare-fun mapRest!21394 () (Array (_ BitVec 32) V!9961))

(assert (=> mapNonEmpty!21394 (= mapRest!21391 (store mapRest!21394 mapKey!21394 mapValue!21394))))

(assert (= (and mapNonEmpty!21391 condMapEmpty!21394) mapIsEmpty!21394))

(assert (= (and mapNonEmpty!21391 (not condMapEmpty!21394)) mapNonEmpty!21394))

(declare-fun m!4922431 () Bool)

(assert (=> mapNonEmpty!21394 m!4922431))

(check-sat (not bm!300837) (not bm!300830) (not bm!300824) (not d!1272041) (not b!4327684) (not bm!300815) (not b!4327526) (not d!1272039) tp_is_empty!24279 (not b!4327641) (not mapNonEmpty!21394) (not b!4327654) (not d!1272047) (not b!4327528) (not b!4327680) (not b!4327679) (not b_next!129845) (not bm!300849) (not bm!300827) (not b!4327633) (not bm!300825) (not b!4327645) (not d!1272049) (not b!4327619) (not d!1272051) (not b!4327653) (not bm!300832) (not bm!300829) (not b!4327648) (not bm!300826) (not bm!300848) (not d!1272043) (not bm!300822) (not d!1272031) (not b!4327644) (not d!1272033) (not bm!300821) b_and!340731 (not bm!300834))
(check-sat b_and!340731 (not b_next!129845))
(get-model)

(declare-fun d!1272053 () Bool)

(declare-fun isEmpty!28148 (Option!10331) Bool)

(assert (=> d!1272053 (= (isDefined!7629 (getValueByKey!317 (toList!2624 lt!1544463) key!7012)) (not (isEmpty!28148 (getValueByKey!317 (toList!2624 lt!1544463) key!7012))))))

(declare-fun bs!607552 () Bool)

(assert (= bs!607552 d!1272053))

(assert (=> bs!607552 m!4922337))

(declare-fun m!4922433 () Bool)

(assert (=> bs!607552 m!4922433))

(assert (=> b!4327528 d!1272053))

(declare-fun d!1272055 () Bool)

(declare-fun c!736372 () Bool)

(assert (=> d!1272055 (= c!736372 (and ((_ is Cons!48457) (toList!2624 lt!1544463)) (= (_1!27040 (h!53926 (toList!2624 lt!1544463))) key!7012)))))

(declare-fun e!2692909 () Option!10331)

(assert (=> d!1272055 (= (getValueByKey!317 (toList!2624 lt!1544463) key!7012) e!2692909)))

(declare-fun b!4327698 () Bool)

(declare-fun e!2692910 () Option!10331)

(assert (=> b!4327698 (= e!2692910 None!10330)))

(declare-fun b!4327697 () Bool)

(assert (=> b!4327697 (= e!2692910 (getValueByKey!317 (t!355491 (toList!2624 lt!1544463)) key!7012))))

(declare-fun b!4327695 () Bool)

(assert (=> b!4327695 (= e!2692909 (Some!10330 (_2!27040 (h!53926 (toList!2624 lt!1544463)))))))

(declare-fun b!4327696 () Bool)

(assert (=> b!4327696 (= e!2692909 e!2692910)))

(declare-fun c!736373 () Bool)

(assert (=> b!4327696 (= c!736373 (and ((_ is Cons!48457) (toList!2624 lt!1544463)) (not (= (_1!27040 (h!53926 (toList!2624 lt!1544463))) key!7012))))))

(assert (= (and d!1272055 c!736372) b!4327695))

(assert (= (and d!1272055 (not c!736372)) b!4327696))

(assert (= (and b!4327696 c!736373) b!4327697))

(assert (= (and b!4327696 (not c!736373)) b!4327698))

(declare-fun m!4922435 () Bool)

(assert (=> b!4327697 m!4922435))

(assert (=> b!4327528 d!1272055))

(declare-fun b!4327711 () Bool)

(declare-fun e!2692917 () SeekEntryResult!24)

(declare-fun lt!1544609 () SeekEntryResult!24)

(assert (=> b!4327711 (= e!2692917 (Found!24 (index!1480 lt!1544609)))))

(declare-fun b!4327712 () Bool)

(declare-fun e!2692919 () SeekEntryResult!24)

(assert (=> b!4327712 (= e!2692919 e!2692917)))

(declare-fun lt!1544608 () (_ BitVec 64))

(assert (=> b!4327712 (= lt!1544608 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1480 lt!1544609)))))

(declare-fun c!736382 () Bool)

(assert (=> b!4327712 (= c!736382 (= lt!1544608 key!7012))))

(declare-fun d!1272057 () Bool)

(declare-fun lt!1544607 () SeekEntryResult!24)

(assert (=> d!1272057 (and (or ((_ is Undefined!24) lt!1544607) (not ((_ is Found!24) lt!1544607)) (and (bvsge (index!1477 lt!1544607) #b00000000000000000000000000000000) (bvslt (index!1477 lt!1544607) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))) (or ((_ is Undefined!24) lt!1544607) ((_ is Found!24) lt!1544607) (not ((_ is MissingZero!24) lt!1544607)) (and (bvsge (index!1478 lt!1544607) #b00000000000000000000000000000000) (bvslt (index!1478 lt!1544607) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))) (or ((_ is Undefined!24) lt!1544607) ((_ is Found!24) lt!1544607) ((_ is MissingZero!24) lt!1544607) (not ((_ is MissingVacant!24) lt!1544607)) (and (bvsge (index!1479 lt!1544607) #b00000000000000000000000000000000) (bvslt (index!1479 lt!1544607) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))) (or ((_ is Undefined!24) lt!1544607) (ite ((_ is Found!24) lt!1544607) (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544607)) key!7012) (ite ((_ is MissingZero!24) lt!1544607) (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1478 lt!1544607)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!24) lt!1544607) (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1479 lt!1544607)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!1272057 (= lt!1544607 e!2692919)))

(declare-fun c!736380 () Bool)

(assert (=> d!1272057 (= c!736380 (and ((_ is Intermediate!24) lt!1544609) (undefined!105 lt!1544609)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17472 (_ BitVec 32)) SeekEntryResult!24)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1272057 (= lt!1544609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!7012 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!1272057 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272057 (= (seekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544607)))

(declare-fun b!4327713 () Bool)

(assert (=> b!4327713 (= e!2692919 Undefined!24)))

(declare-fun b!4327714 () Bool)

(declare-fun e!2692918 () SeekEntryResult!24)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17472 (_ BitVec 32)) SeekEntryResult!24)

(assert (=> b!4327714 (= e!2692918 (seekKeyOrZeroReturnVacant!0 (x!751156 lt!1544609) (index!1480 lt!1544609) (index!1480 lt!1544609) key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327715 () Bool)

(assert (=> b!4327715 (= e!2692918 (MissingZero!24 (index!1480 lt!1544609)))))

(declare-fun b!4327716 () Bool)

(declare-fun c!736381 () Bool)

(assert (=> b!4327716 (= c!736381 (= lt!1544608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327716 (= e!2692917 e!2692918)))

(assert (= (and d!1272057 c!736380) b!4327713))

(assert (= (and d!1272057 (not c!736380)) b!4327712))

(assert (= (and b!4327712 c!736382) b!4327711))

(assert (= (and b!4327712 (not c!736382)) b!4327716))

(assert (= (and b!4327716 c!736381) b!4327715))

(assert (= (and b!4327716 (not c!736381)) b!4327714))

(declare-fun m!4922437 () Bool)

(assert (=> b!4327712 m!4922437))

(declare-fun m!4922439 () Bool)

(assert (=> d!1272057 m!4922439))

(declare-fun m!4922441 () Bool)

(assert (=> d!1272057 m!4922441))

(declare-fun m!4922443 () Bool)

(assert (=> d!1272057 m!4922443))

(declare-fun m!4922445 () Bool)

(assert (=> d!1272057 m!4922445))

(assert (=> d!1272057 m!4922439))

(declare-fun m!4922447 () Bool)

(assert (=> d!1272057 m!4922447))

(declare-fun m!4922449 () Bool)

(assert (=> d!1272057 m!4922449))

(declare-fun m!4922451 () Bool)

(assert (=> b!4327714 m!4922451))

(assert (=> b!4327641 d!1272057))

(declare-fun d!1272059 () Bool)

(declare-fun e!2692922 () Bool)

(assert (=> d!1272059 e!2692922))

(declare-fun res!1773402 () Bool)

(assert (=> d!1272059 (=> (not res!1773402) (not e!2692922))))

(declare-fun lt!1544615 () SeekEntryResult!24)

(assert (=> d!1272059 (= res!1773402 ((_ is Found!24) lt!1544615))))

(assert (=> d!1272059 (= lt!1544615 (seekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544614 () Unit!68075)

(declare-fun choose!26460 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) Int) Unit!68075)

(assert (=> d!1272059 (= lt!1544614 (choose!26460 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272059 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272059 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544614)))

(declare-fun b!4327721 () Bool)

(declare-fun res!1773403 () Bool)

(assert (=> b!4327721 (=> (not res!1773403) (not e!2692922))))

(assert (=> b!4327721 (= res!1773403 (inRange!0 (index!1477 lt!1544615) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327722 () Bool)

(assert (=> b!4327722 (= e!2692922 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544615)) key!7012))))

(assert (=> b!4327722 (and (bvsge (index!1477 lt!1544615) #b00000000000000000000000000000000) (bvslt (index!1477 lt!1544615) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (= (and d!1272059 res!1773402) b!4327721))

(assert (= (and b!4327721 res!1773403) b!4327722))

(assert (=> d!1272059 m!4922383))

(declare-fun m!4922453 () Bool)

(assert (=> d!1272059 m!4922453))

(assert (=> d!1272059 m!4922449))

(declare-fun m!4922455 () Bool)

(assert (=> b!4327721 m!4922455))

(declare-fun m!4922457 () Bool)

(assert (=> b!4327722 m!4922457))

(assert (=> bm!300824 d!1272059))

(declare-fun d!1272061 () Bool)

(declare-fun e!2692923 () Bool)

(assert (=> d!1272061 e!2692923))

(declare-fun res!1773404 () Bool)

(assert (=> d!1272061 (=> res!1773404 e!2692923)))

(declare-fun lt!1544616 () Bool)

(assert (=> d!1272061 (= res!1773404 (not lt!1544616))))

(declare-fun lt!1544618 () Bool)

(assert (=> d!1272061 (= lt!1544616 lt!1544618)))

(declare-fun lt!1544617 () Unit!68075)

(declare-fun e!2692924 () Unit!68075)

(assert (=> d!1272061 (= lt!1544617 e!2692924)))

(declare-fun c!736383 () Bool)

(assert (=> d!1272061 (= c!736383 lt!1544618)))

(assert (=> d!1272061 (= lt!1544618 (containsKey!427 (toList!2624 e!2692880) key!7012))))

(assert (=> d!1272061 (= (contains!10549 e!2692880 key!7012) lt!1544616)))

(declare-fun b!4327723 () Bool)

(declare-fun lt!1544619 () Unit!68075)

(assert (=> b!4327723 (= e!2692924 lt!1544619)))

(assert (=> b!4327723 (= lt!1544619 (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!2624 e!2692880) key!7012))))

(assert (=> b!4327723 (isDefined!7629 (getValueByKey!317 (toList!2624 e!2692880) key!7012))))

(declare-fun b!4327724 () Bool)

(declare-fun Unit!68080 () Unit!68075)

(assert (=> b!4327724 (= e!2692924 Unit!68080)))

(declare-fun b!4327725 () Bool)

(assert (=> b!4327725 (= e!2692923 (isDefined!7629 (getValueByKey!317 (toList!2624 e!2692880) key!7012)))))

(assert (= (and d!1272061 c!736383) b!4327723))

(assert (= (and d!1272061 (not c!736383)) b!4327724))

(assert (= (and d!1272061 (not res!1773404)) b!4327725))

(declare-fun m!4922459 () Bool)

(assert (=> d!1272061 m!4922459))

(declare-fun m!4922461 () Bool)

(assert (=> b!4327723 m!4922461))

(declare-fun m!4922463 () Bool)

(assert (=> b!4327723 m!4922463))

(assert (=> b!4327723 m!4922463))

(declare-fun m!4922465 () Bool)

(assert (=> b!4327723 m!4922465))

(assert (=> b!4327725 m!4922463))

(assert (=> b!4327725 m!4922463))

(assert (=> b!4327725 m!4922465))

(assert (=> bm!300825 d!1272061))

(declare-fun d!1272063 () Bool)

(declare-fun res!1773409 () Bool)

(declare-fun e!2692929 () Bool)

(assert (=> d!1272063 (=> res!1773409 e!2692929)))

(assert (=> d!1272063 (= res!1773409 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000) key!7012))))

(assert (=> d!1272063 (= (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 #b00000000000000000000000000000000) e!2692929)))

(declare-fun b!4327730 () Bool)

(declare-fun e!2692930 () Bool)

(assert (=> b!4327730 (= e!2692929 e!2692930)))

(declare-fun res!1773410 () Bool)

(assert (=> b!4327730 (=> (not res!1773410) (not e!2692930))))

(assert (=> b!4327730 (= res!1773410 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4327731 () Bool)

(assert (=> b!4327731 (= e!2692930 (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1272063 (not res!1773409)) b!4327730))

(assert (= (and b!4327730 res!1773410) b!4327731))

(declare-fun m!4922467 () Bool)

(assert (=> d!1272063 m!4922467))

(declare-fun m!4922469 () Bool)

(assert (=> b!4327731 m!4922469))

(assert (=> bm!300832 d!1272063))

(declare-fun d!1272065 () Bool)

(declare-fun res!1773417 () Bool)

(declare-fun e!2692933 () Bool)

(assert (=> d!1272065 (=> (not res!1773417) (not e!2692933))))

(declare-fun simpleValid!11 (LongMapFixedSize!9610) Bool)

(assert (=> d!1272065 (= res!1773417 (simpleValid!11 (v!43003 (underlying!9820 lt!1544462))))))

(assert (=> d!1272065 (= (valid!3826 (v!43003 (underlying!9820 lt!1544462))) e!2692933)))

(declare-fun b!4327738 () Bool)

(declare-fun res!1773418 () Bool)

(assert (=> b!4327738 (=> (not res!1773418) (not e!2692933))))

(declare-fun arrayCountValidKeys!0 (array!17472 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4327738 (= res!1773418 (= (arrayCountValidKeys!0 (_keys!5132 (v!43003 (underlying!9820 lt!1544462))) #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 lt!1544462))))) (_size!9637 (v!43003 (underlying!9820 lt!1544462)))))))

(declare-fun b!4327739 () Bool)

(declare-fun res!1773419 () Bool)

(assert (=> b!4327739 (=> (not res!1773419) (not e!2692933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17472 (_ BitVec 32)) Bool)

(assert (=> b!4327739 (= res!1773419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5132 (v!43003 (underlying!9820 lt!1544462))) (mask!13472 (v!43003 (underlying!9820 lt!1544462)))))))

(declare-fun b!4327740 () Bool)

(declare-datatypes ((List!48582 0))(
  ( (Nil!48458) (Cons!48458 (h!53927 (_ BitVec 64)) (t!355494 List!48582)) )
))
(declare-fun arrayNoDuplicates!0 (array!17472 (_ BitVec 32) List!48582) Bool)

(assert (=> b!4327740 (= e!2692933 (arrayNoDuplicates!0 (_keys!5132 (v!43003 (underlying!9820 lt!1544462))) #b00000000000000000000000000000000 Nil!48458))))

(assert (= (and d!1272065 res!1773417) b!4327738))

(assert (= (and b!4327738 res!1773418) b!4327739))

(assert (= (and b!4327739 res!1773419) b!4327740))

(declare-fun m!4922471 () Bool)

(assert (=> d!1272065 m!4922471))

(declare-fun m!4922473 () Bool)

(assert (=> b!4327738 m!4922473))

(declare-fun m!4922475 () Bool)

(assert (=> b!4327739 m!4922475))

(declare-fun m!4922477 () Bool)

(assert (=> b!4327740 m!4922477))

(assert (=> d!1272041 d!1272065))

(declare-fun b!4327757 () Bool)

(declare-fun res!1773430 () Bool)

(declare-fun e!2692942 () Bool)

(assert (=> b!4327757 (=> (not res!1773430) (not e!2692942))))

(declare-fun call!300860 () Bool)

(assert (=> b!4327757 (= res!1773430 call!300860)))

(declare-fun e!2692943 () Bool)

(assert (=> b!4327757 (= e!2692943 e!2692942)))

(declare-fun lt!1544625 () SeekEntryResult!24)

(declare-fun c!736388 () Bool)

(declare-fun bm!300854 () Bool)

(assert (=> bm!300854 (= call!300860 (inRange!0 (ite c!736388 (index!1478 lt!1544625) (index!1479 lt!1544625)) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327758 () Bool)

(assert (=> b!4327758 (and (bvsge (index!1478 lt!1544625) #b00000000000000000000000000000000) (bvslt (index!1478 lt!1544625) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun res!1773428 () Bool)

(assert (=> b!4327758 (= res!1773428 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1478 lt!1544625)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2692945 () Bool)

(assert (=> b!4327758 (=> (not res!1773428) (not e!2692945))))

(declare-fun bm!300855 () Bool)

(declare-fun call!300859 () Bool)

(assert (=> bm!300855 (= call!300859 (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 #b00000000000000000000000000000000))))

(declare-fun b!4327759 () Bool)

(assert (=> b!4327759 (= e!2692942 (not call!300859))))

(declare-fun b!4327760 () Bool)

(assert (=> b!4327760 (= e!2692943 ((_ is Undefined!24) lt!1544625))))

(declare-fun d!1272067 () Bool)

(declare-fun e!2692944 () Bool)

(assert (=> d!1272067 e!2692944))

(assert (=> d!1272067 (= c!736388 ((_ is MissingZero!24) lt!1544625))))

(assert (=> d!1272067 (= lt!1544625 (seekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544624 () Unit!68075)

(declare-fun choose!26461 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) Int) Unit!68075)

(assert (=> d!1272067 (= lt!1544624 (choose!26461 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272067 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272067 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544624)))

(declare-fun b!4327761 () Bool)

(assert (=> b!4327761 (= e!2692945 (not call!300859))))

(declare-fun b!4327762 () Bool)

(assert (=> b!4327762 (= e!2692944 e!2692943)))

(declare-fun c!736389 () Bool)

(assert (=> b!4327762 (= c!736389 ((_ is MissingVacant!24) lt!1544625))))

(declare-fun b!4327763 () Bool)

(declare-fun res!1773429 () Bool)

(assert (=> b!4327763 (=> (not res!1773429) (not e!2692942))))

(assert (=> b!4327763 (= res!1773429 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1479 lt!1544625)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327763 (and (bvsge (index!1479 lt!1544625) #b00000000000000000000000000000000) (bvslt (index!1479 lt!1544625) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4327764 () Bool)

(assert (=> b!4327764 (= e!2692944 e!2692945)))

(declare-fun res!1773431 () Bool)

(assert (=> b!4327764 (= res!1773431 call!300860)))

(assert (=> b!4327764 (=> (not res!1773431) (not e!2692945))))

(assert (= (and d!1272067 c!736388) b!4327764))

(assert (= (and d!1272067 (not c!736388)) b!4327762))

(assert (= (and b!4327764 res!1773431) b!4327758))

(assert (= (and b!4327758 res!1773428) b!4327761))

(assert (= (and b!4327762 c!736389) b!4327757))

(assert (= (and b!4327762 (not c!736389)) b!4327760))

(assert (= (and b!4327757 res!1773430) b!4327763))

(assert (= (and b!4327763 res!1773429) b!4327759))

(assert (= (or b!4327761 b!4327759) bm!300855))

(assert (= (or b!4327764 b!4327757) bm!300854))

(declare-fun m!4922479 () Bool)

(assert (=> bm!300854 m!4922479))

(assert (=> bm!300855 m!4922345))

(declare-fun m!4922481 () Bool)

(assert (=> b!4327763 m!4922481))

(assert (=> d!1272067 m!4922383))

(declare-fun m!4922483 () Bool)

(assert (=> d!1272067 m!4922483))

(assert (=> d!1272067 m!4922449))

(declare-fun m!4922485 () Bool)

(assert (=> b!4327758 m!4922485))

(assert (=> bm!300826 d!1272067))

(assert (=> bm!300822 d!1272057))

(declare-fun bm!300856 () Bool)

(declare-fun call!300869 () Bool)

(declare-fun call!300878 () Bool)

(assert (=> bm!300856 (= call!300869 call!300878)))

(declare-fun call!300867 () ListLongMap!1247)

(declare-fun c!736393 () Bool)

(declare-fun bm!300857 () Bool)

(declare-fun lt!1544649 () tuple2!47492)

(assert (=> bm!300857 (= call!300867 (map!10511 (ite c!736393 (ite c!736364 (_2!27038 lt!1544595) call!300853) (_2!27038 lt!1544649))))))

(declare-fun b!4327765 () Bool)

(declare-fun e!2692946 () Bool)

(declare-fun e!2692949 () Bool)

(assert (=> b!4327765 (= e!2692946 e!2692949)))

(declare-fun res!1773439 () Bool)

(declare-fun call!300868 () Bool)

(assert (=> b!4327765 (= res!1773439 call!300868)))

(assert (=> b!4327765 (=> (not res!1773439) (not e!2692949))))

(declare-fun b!4327766 () Bool)

(declare-fun e!2692955 () Bool)

(declare-fun e!2692960 () Bool)

(assert (=> b!4327766 (= e!2692955 e!2692960)))

(assert (=> b!4327766 (= c!736393 (_1!27038 lt!1544649))))

(declare-fun b!4327767 () Bool)

(declare-fun res!1773442 () Bool)

(assert (=> b!4327767 (= res!1773442 call!300869)))

(declare-fun e!2692965 () Bool)

(assert (=> b!4327767 (=> (not res!1773442) (not e!2692965))))

(declare-fun bm!300858 () Bool)

(assert (=> bm!300858 (= call!300868 call!300869)))

(declare-fun lt!1544626 () SeekEntryResult!24)

(declare-fun b!4327768 () Bool)

(assert (=> b!4327768 (= e!2692965 (= (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1477 lt!1544626)) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!1272069 () Bool)

(assert (=> d!1272069 e!2692955))

(declare-fun res!1773434 () Bool)

(assert (=> d!1272069 (=> (not res!1773434) (not e!2692955))))

(assert (=> d!1272069 (= res!1773434 (valid!3826 (_2!27038 lt!1544649)))))

(declare-fun e!2692956 () tuple2!47492)

(assert (=> d!1272069 (= lt!1544649 e!2692956)))

(declare-fun c!736394 () Bool)

(assert (=> d!1272069 (= c!736394 (= (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!1272069 (valid!3826 (ite c!736364 (_2!27038 lt!1544595) call!300853))))

(assert (=> d!1272069 (= (update!575 (ite c!736364 (_2!27038 lt!1544595) call!300853) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))) lt!1544649)))

(declare-fun b!4327769 () Bool)

(declare-fun c!736400 () Bool)

(declare-fun lt!1544638 () SeekEntryResult!24)

(assert (=> b!4327769 (= c!736400 ((_ is MissingVacant!24) lt!1544638))))

(declare-fun e!2692958 () Bool)

(declare-fun e!2692950 () Bool)

(assert (=> b!4327769 (= e!2692958 e!2692950)))

(declare-fun bm!300859 () Bool)

(declare-fun call!300865 () ListLongMap!1247)

(declare-fun call!300871 () ListLongMap!1247)

(assert (=> bm!300859 (= call!300865 call!300871)))

(declare-fun b!4327770 () Bool)

(declare-fun e!2692948 () tuple2!47492)

(assert (=> b!4327770 (= e!2692956 e!2692948)))

(declare-fun c!736396 () Bool)

(assert (=> b!4327770 (= c!736396 (= (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300860 () Bool)

(declare-fun call!300884 () Bool)

(declare-fun call!300862 () Bool)

(assert (=> bm!300860 (= call!300884 call!300862)))

(declare-fun b!4327771 () Bool)

(declare-fun lt!1544644 () tuple2!47492)

(declare-fun call!300863 () tuple2!47492)

(assert (=> b!4327771 (= lt!1544644 call!300863)))

(declare-fun e!2692957 () tuple2!47492)

(assert (=> b!4327771 (= e!2692957 (tuple2!47493 (_1!27038 lt!1544644) (_2!27038 lt!1544644)))))

(declare-fun b!4327772 () Bool)

(declare-fun e!2692963 () ListLongMap!1247)

(assert (=> b!4327772 (= e!2692963 call!300865)))

(declare-fun bm!300861 () Bool)

(declare-fun call!300883 () SeekEntryResult!24)

(declare-fun call!300875 () SeekEntryResult!24)

(assert (=> bm!300861 (= call!300883 call!300875)))

(declare-fun b!4327773 () Bool)

(declare-fun lt!1544635 () SeekEntryResult!24)

(assert (=> b!4327773 (= e!2692946 ((_ is Undefined!24) lt!1544635))))

(declare-fun b!4327774 () Bool)

(declare-fun e!2692953 () Bool)

(declare-fun call!300870 () Bool)

(assert (=> b!4327774 (= e!2692953 (not call!300870))))

(declare-fun bm!300862 () Bool)

(declare-fun call!300873 () SeekEntryResult!24)

(assert (=> bm!300862 (= call!300873 call!300875)))

(declare-fun call!300861 () ListLongMap!1247)

(declare-fun bm!300863 () Bool)

(assert (=> bm!300863 (= call!300861 (map!10511 (ite c!736393 (_2!27038 lt!1544649) (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun b!4327775 () Bool)

(declare-fun e!2692952 () Bool)

(assert (=> b!4327775 (= e!2692960 e!2692952)))

(declare-fun res!1773444 () Bool)

(assert (=> b!4327775 (= res!1773444 (contains!10549 call!300861 (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4327775 (=> (not res!1773444) (not e!2692952))))

(declare-fun b!4327776 () Bool)

(declare-fun c!736398 () Bool)

(assert (=> b!4327776 (= c!736398 ((_ is MissingVacant!24) lt!1544635))))

(declare-fun e!2692947 () Bool)

(assert (=> b!4327776 (= e!2692947 e!2692946)))

(declare-fun b!4327777 () Bool)

(declare-fun e!2692951 () Bool)

(declare-fun call!300879 () Bool)

(assert (=> b!4327777 (= e!2692951 (not call!300879))))

(declare-fun b!4327778 () Bool)

(declare-fun e!2692954 () tuple2!47492)

(declare-fun lt!1544648 () tuple2!47492)

(assert (=> b!4327778 (= e!2692954 (tuple2!47493 (_1!27038 lt!1544648) (_2!27038 lt!1544648)))))

(assert (=> b!4327778 (= lt!1544648 call!300863)))

(declare-fun bm!300864 () Bool)

(assert (=> bm!300864 (= call!300875 (seekEntryOrOpen!0 (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun b!4327779 () Bool)

(assert (=> b!4327779 (= e!2692949 (not call!300870))))

(declare-fun bm!300865 () Bool)

(declare-fun call!300874 () ListLongMap!1247)

(declare-fun call!300881 () ListLongMap!1247)

(assert (=> bm!300865 (= call!300874 call!300881)))

(declare-fun b!4327780 () Bool)

(assert (=> b!4327780 (= e!2692950 ((_ is Undefined!24) lt!1544638))))

(declare-fun b!4327781 () Bool)

(assert (=> b!4327781 (= e!2692963 call!300881)))

(declare-fun b!4327782 () Bool)

(declare-fun e!2692959 () Unit!68075)

(declare-fun Unit!68081 () Unit!68075)

(assert (=> b!4327782 (= e!2692959 Unit!68081)))

(declare-fun lt!1544650 () Unit!68075)

(declare-fun call!300872 () Unit!68075)

(assert (=> b!4327782 (= lt!1544650 call!300872)))

(assert (=> b!4327782 (= lt!1544635 call!300883)))

(declare-fun c!736392 () Bool)

(assert (=> b!4327782 (= c!736392 ((_ is MissingZero!24) lt!1544635))))

(assert (=> b!4327782 e!2692947))

(declare-fun lt!1544652 () Unit!68075)

(assert (=> b!4327782 (= lt!1544652 lt!1544650)))

(assert (=> b!4327782 false))

(declare-fun b!4327783 () Bool)

(declare-fun res!1773435 () Bool)

(assert (=> b!4327783 (=> (not res!1773435) (not e!2692951))))

(assert (=> b!4327783 (= res!1773435 call!300884)))

(assert (=> b!4327783 (= e!2692958 e!2692951)))

(declare-fun bm!300866 () Bool)

(declare-fun call!300876 () Unit!68075)

(assert (=> bm!300866 (= call!300876 (lemmaInListMapThenSeekEntryOrOpenFindsIt!14 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun bm!300867 () Bool)

(declare-fun c!736402 () Bool)

(declare-fun c!736399 () Bool)

(assert (=> bm!300867 (= c!736402 c!736399)))

(declare-fun call!300864 () Bool)

(assert (=> bm!300867 (= call!300864 (contains!10549 e!2692963 (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!300868 () Bool)

(assert (=> bm!300868 (= call!300872 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!14 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun e!2692962 () Bool)

(declare-fun b!4327784 () Bool)

(declare-fun lt!1544651 () SeekEntryResult!24)

(assert (=> b!4327784 (= e!2692962 (= (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1477 lt!1544651)) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!4327785 () Bool)

(assert (=> b!4327785 (= e!2692954 e!2692957)))

(declare-fun c!736395 () Bool)

(declare-fun lt!1544643 () SeekEntryResult!24)

(assert (=> b!4327785 (= c!736395 ((_ is MissingZero!24) lt!1544643))))

(declare-fun lt!1544641 () (_ BitVec 32))

(declare-fun bm!300869 () Bool)

(assert (=> bm!300869 (= call!300881 (getCurrentListMap!27 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736394 (ite c!736396 (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) lt!1544641) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736394 (ite c!736396 (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853))) #b00000000000000000000000000000000 (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun b!4327786 () Bool)

(declare-fun res!1773436 () Bool)

(assert (=> b!4327786 (=> (not res!1773436) (not e!2692953))))

(assert (=> b!4327786 (= res!1773436 (= (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1478 lt!1544635)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327787 () Bool)

(declare-fun lt!1544645 () Unit!68075)

(declare-fun e!2692966 () Unit!68075)

(assert (=> b!4327787 (= lt!1544645 e!2692966)))

(declare-fun c!736401 () Bool)

(assert (=> b!4327787 (= c!736401 call!300864)))

(declare-fun e!2692964 () tuple2!47492)

(assert (=> b!4327787 (= e!2692964 (tuple2!47493 false (ite c!736364 (_2!27038 lt!1544595) call!300853)))))

(declare-fun bm!300870 () Bool)

(declare-fun call!300877 () ListLongMap!1247)

(declare-fun call!300882 () ListLongMap!1247)

(assert (=> bm!300870 (= call!300877 call!300882)))

(declare-fun b!4327788 () Bool)

(declare-fun e!2692961 () Bool)

(assert (=> b!4327788 (= e!2692961 (not call!300879))))

(declare-fun bm!300871 () Bool)

(declare-fun lt!1544640 () array!17470)

(declare-fun lt!1544642 () (_ BitVec 32))

(assert (=> bm!300871 (= call!300871 (getCurrentListMap!27 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite (or c!736394 c!736399) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) lt!1544640) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite (and c!736394 c!736396) lt!1544642 (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (ite (and c!736394 c!736396) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) #b00000000000000000000000000000000 (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun c!736390 () Bool)

(declare-fun c!736391 () Bool)

(declare-fun bm!300872 () Bool)

(assert (=> bm!300872 (= call!300878 (inRange!0 (ite c!736399 (ite c!736401 (index!1477 lt!1544651) (ite c!736391 (index!1478 lt!1544638) (index!1479 lt!1544638))) (ite c!736390 (index!1477 lt!1544626) (ite c!736392 (index!1478 lt!1544635) (index!1479 lt!1544635)))) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun b!4327789 () Bool)

(assert (=> b!4327789 (= e!2692952 (= call!300861 (+!379 call!300867 (tuple2!47497 (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))))

(declare-fun b!4327790 () Bool)

(declare-fun c!736397 () Bool)

(assert (=> b!4327790 (= c!736397 ((_ is MissingVacant!24) lt!1544643))))

(assert (=> b!4327790 (= e!2692964 e!2692954)))

(declare-fun b!4327791 () Bool)

(declare-fun res!1773432 () Bool)

(assert (=> b!4327791 (= res!1773432 call!300862)))

(assert (=> b!4327791 (=> (not res!1773432) (not e!2692962))))

(declare-fun b!4327792 () Bool)

(assert (=> b!4327792 (= e!2692950 e!2692961)))

(declare-fun res!1773438 () Bool)

(assert (=> b!4327792 (= res!1773438 call!300884)))

(assert (=> b!4327792 (=> (not res!1773438) (not e!2692961))))

(declare-fun b!4327793 () Bool)

(declare-fun res!1773433 () Bool)

(assert (=> b!4327793 (=> (not res!1773433) (not e!2692953))))

(assert (=> b!4327793 (= res!1773433 call!300868)))

(assert (=> b!4327793 (= e!2692947 e!2692953)))

(declare-fun b!4327794 () Bool)

(assert (=> b!4327794 (= e!2692960 (= call!300867 call!300861))))

(declare-fun b!4327795 () Bool)

(declare-fun res!1773437 () Bool)

(assert (=> b!4327795 (= res!1773437 (= (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1479 lt!1544635)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327795 (=> (not res!1773437) (not e!2692949))))

(declare-fun bm!300873 () Bool)

(declare-fun call!300866 () ListLongMap!1247)

(assert (=> bm!300873 (= call!300866 call!300871)))

(declare-fun b!4327796 () Bool)

(declare-fun lt!1544629 () Unit!68075)

(assert (=> b!4327796 (= e!2692959 lt!1544629)))

(assert (=> b!4327796 (= lt!1544629 call!300876)))

(assert (=> b!4327796 (= lt!1544626 call!300883)))

(declare-fun res!1773443 () Bool)

(assert (=> b!4327796 (= res!1773443 ((_ is Found!24) lt!1544626))))

(assert (=> b!4327796 (=> (not res!1773443) (not e!2692965))))

(assert (=> b!4327796 e!2692965))

(declare-fun b!4327797 () Bool)

(assert (=> b!4327797 (= e!2692956 e!2692964)))

(assert (=> b!4327797 (= lt!1544643 (seekEntryOrOpen!0 (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(assert (=> b!4327797 (= c!736399 ((_ is Undefined!24) lt!1544643))))

(declare-fun bm!300874 () Bool)

(declare-fun call!300880 () Bool)

(assert (=> bm!300874 (= call!300880 (arrayContainsKey!0 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun b!4327798 () Bool)

(declare-fun lt!1544633 () Unit!68075)

(assert (=> b!4327798 (= e!2692966 lt!1544633)))

(assert (=> b!4327798 (= lt!1544633 call!300872)))

(assert (=> b!4327798 (= lt!1544638 call!300873)))

(assert (=> b!4327798 (= c!736391 ((_ is MissingZero!24) lt!1544638))))

(assert (=> b!4327798 e!2692958))

(declare-fun b!4327799 () Bool)

(declare-fun res!1773445 () Bool)

(assert (=> b!4327799 (=> (not res!1773445) (not e!2692951))))

(assert (=> b!4327799 (= res!1773445 (= (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1478 lt!1544638)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327800 () Bool)

(declare-fun lt!1544632 () Unit!68075)

(declare-fun lt!1544646 () Unit!68075)

(assert (=> b!4327800 (= lt!1544632 lt!1544646)))

(assert (=> b!4327800 (contains!10549 call!300865 (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1477 lt!1544643)))))

(assert (=> b!4327800 (= lt!1544646 (lemmaValidKeyInArrayIsInListMap!17 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) lt!1544640 (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (index!1477 lt!1544643) (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(assert (=> b!4327800 (= lt!1544640 (array!17471 (store (arr!7795 (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1477 lt!1544643) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))) (size!35835 (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)))))))

(declare-fun lt!1544631 () Unit!68075)

(declare-fun lt!1544637 () Unit!68075)

(assert (=> b!4327800 (= lt!1544631 lt!1544637)))

(assert (=> b!4327800 (= call!300882 (getCurrentListMap!27 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (array!17471 (store (arr!7795 (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1477 lt!1544643) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))) (size!35835 (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)))) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) #b00000000000000000000000000000000 (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(assert (=> b!4327800 (= lt!1544637 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!14 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (index!1477 lt!1544643) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(declare-fun lt!1544634 () Unit!68075)

(assert (=> b!4327800 (= lt!1544634 e!2692959)))

(assert (=> b!4327800 (= c!736390 call!300864)))

(assert (=> b!4327800 (= e!2692957 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_size!9637 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (array!17471 (store (arr!7795 (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1477 lt!1544643) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))) (size!35835 (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)))) (_vacant!4869 (ite c!736364 (_2!27038 lt!1544595) call!300853)))))))

(declare-fun b!4327801 () Bool)

(declare-fun lt!1544630 () Unit!68075)

(declare-fun lt!1544647 () Unit!68075)

(assert (=> b!4327801 (= lt!1544630 lt!1544647)))

(assert (=> b!4327801 (= call!300877 call!300874)))

(assert (=> b!4327801 (= lt!1544647 (lemmaChangeLongMinValueKeyThenAddPairToListMap!14 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) lt!1544641 (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(assert (=> b!4327801 (= lt!1544641 (bvor (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) #b00000000000000000000000000000010))))

(assert (=> b!4327801 (= e!2692948 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (bvor (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) #b00000000000000000000000000000010) (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (_size!9637 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_vacant!4869 (ite c!736364 (_2!27038 lt!1544595) call!300853)))))))

(declare-fun b!4327802 () Bool)

(declare-fun Unit!68082 () Unit!68075)

(assert (=> b!4327802 (= e!2692966 Unit!68082)))

(declare-fun lt!1544636 () Unit!68075)

(assert (=> b!4327802 (= lt!1544636 call!300876)))

(assert (=> b!4327802 (= lt!1544651 call!300873)))

(declare-fun res!1773441 () Bool)

(assert (=> b!4327802 (= res!1773441 ((_ is Found!24) lt!1544651))))

(assert (=> b!4327802 (=> (not res!1773441) (not e!2692962))))

(assert (=> b!4327802 e!2692962))

(declare-fun lt!1544628 () Unit!68075)

(assert (=> b!4327802 (= lt!1544628 lt!1544636)))

(assert (=> b!4327802 false))

(declare-fun bm!300875 () Bool)

(assert (=> bm!300875 (= call!300862 call!300878)))

(declare-fun res!1773440 () Bool)

(declare-fun b!4327803 () Bool)

(assert (=> b!4327803 (= res!1773440 (= (select (arr!7796 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853))) (index!1479 lt!1544638)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327803 (=> (not res!1773440) (not e!2692961))))

(declare-fun bm!300876 () Bool)

(assert (=> bm!300876 (= call!300863 (updateHelperNewKey!14 (ite c!736364 (_2!27038 lt!1544595) call!300853) (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (ite c!736397 (index!1479 lt!1544643) (index!1478 lt!1544643))))))

(declare-fun bm!300877 () Bool)

(assert (=> bm!300877 (= call!300879 call!300880)))

(declare-fun bm!300878 () Bool)

(assert (=> bm!300878 (= call!300870 call!300880)))

(declare-fun bm!300879 () Bool)

(assert (=> bm!300879 (= call!300882 (+!379 (ite c!736394 (ite c!736396 call!300874 call!300866) call!300881) (ite c!736394 (ite c!736396 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))))) (tuple2!47497 (ite c!736364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736365 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))))

(declare-fun b!4327804 () Bool)

(declare-fun lt!1544639 () Unit!68075)

(declare-fun lt!1544627 () Unit!68075)

(assert (=> b!4327804 (= lt!1544639 lt!1544627)))

(assert (=> b!4327804 (= call!300877 call!300866)))

(assert (=> b!4327804 (= lt!1544627 (lemmaChangeZeroKeyThenAddPairToListMap!14 (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) lt!1544642 (zeroValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853))))))

(assert (=> b!4327804 (= lt!1544642 (bvor (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) #b00000000000000000000000000000001))))

(assert (=> b!4327804 (= e!2692948 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (mask!13472 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (bvor (extraKeys!5070 (ite c!736364 (_2!27038 lt!1544595) call!300853)) #b00000000000000000000000000000001) (ite c!736364 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736365 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (minValue!5082 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_size!9637 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_keys!5132 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_values!5106 (ite c!736364 (_2!27038 lt!1544595) call!300853)) (_vacant!4869 (ite c!736364 (_2!27038 lt!1544595) call!300853)))))))

(assert (= (and d!1272069 c!736394) b!4327770))

(assert (= (and d!1272069 (not c!736394)) b!4327797))

(assert (= (and b!4327770 c!736396) b!4327804))

(assert (= (and b!4327770 (not c!736396)) b!4327801))

(assert (= (or b!4327804 b!4327801) bm!300873))

(assert (= (or b!4327804 b!4327801) bm!300865))

(assert (= (or b!4327804 b!4327801) bm!300870))

(assert (= (and b!4327797 c!736399) b!4327787))

(assert (= (and b!4327797 (not c!736399)) b!4327790))

(assert (= (and b!4327787 c!736401) b!4327802))

(assert (= (and b!4327787 (not c!736401)) b!4327798))

(assert (= (and b!4327802 res!1773441) b!4327791))

(assert (= (and b!4327791 res!1773432) b!4327784))

(assert (= (and b!4327798 c!736391) b!4327783))

(assert (= (and b!4327798 (not c!736391)) b!4327769))

(assert (= (and b!4327783 res!1773435) b!4327799))

(assert (= (and b!4327799 res!1773445) b!4327777))

(assert (= (and b!4327769 c!736400) b!4327792))

(assert (= (and b!4327769 (not c!736400)) b!4327780))

(assert (= (and b!4327792 res!1773438) b!4327803))

(assert (= (and b!4327803 res!1773440) b!4327788))

(assert (= (or b!4327777 b!4327788) bm!300877))

(assert (= (or b!4327783 b!4327792) bm!300860))

(assert (= (or b!4327791 bm!300860) bm!300875))

(assert (= (or b!4327802 b!4327798) bm!300862))

(assert (= (and b!4327790 c!736397) b!4327778))

(assert (= (and b!4327790 (not c!736397)) b!4327785))

(assert (= (and b!4327785 c!736395) b!4327771))

(assert (= (and b!4327785 (not c!736395)) b!4327800))

(assert (= (and b!4327800 c!736390) b!4327796))

(assert (= (and b!4327800 (not c!736390)) b!4327782))

(assert (= (and b!4327796 res!1773443) b!4327767))

(assert (= (and b!4327767 res!1773442) b!4327768))

(assert (= (and b!4327782 c!736392) b!4327793))

(assert (= (and b!4327782 (not c!736392)) b!4327776))

(assert (= (and b!4327793 res!1773433) b!4327786))

(assert (= (and b!4327786 res!1773436) b!4327774))

(assert (= (and b!4327776 c!736398) b!4327765))

(assert (= (and b!4327776 (not c!736398)) b!4327773))

(assert (= (and b!4327765 res!1773439) b!4327795))

(assert (= (and b!4327795 res!1773437) b!4327779))

(assert (= (or b!4327774 b!4327779) bm!300878))

(assert (= (or b!4327793 b!4327765) bm!300858))

(assert (= (or b!4327767 bm!300858) bm!300856))

(assert (= (or b!4327796 b!4327782) bm!300861))

(assert (= (or b!4327778 b!4327771) bm!300876))

(assert (= (or bm!300875 bm!300856) bm!300872))

(assert (= (or b!4327787 b!4327800) bm!300859))

(assert (= (or b!4327798 b!4327782) bm!300868))

(assert (= (or bm!300862 bm!300861) bm!300864))

(assert (= (or b!4327802 b!4327796) bm!300866))

(assert (= (or bm!300877 bm!300878) bm!300874))

(assert (= (or b!4327787 b!4327800) bm!300867))

(assert (= (and bm!300867 c!736402) b!4327772))

(assert (= (and bm!300867 (not c!736402)) b!4327781))

(assert (= (or bm!300873 bm!300859) bm!300871))

(assert (= (or bm!300865 b!4327781 b!4327800) bm!300869))

(assert (= (or bm!300870 b!4327800) bm!300879))

(assert (= (and d!1272069 res!1773434) b!4327766))

(assert (= (and b!4327766 c!736393) b!4327775))

(assert (= (and b!4327766 (not c!736393)) b!4327794))

(assert (= (and b!4327775 res!1773444) b!4327789))

(assert (= (or b!4327775 b!4327789 b!4327794) bm!300863))

(assert (= (or b!4327789 b!4327794) bm!300857))

(declare-fun m!4922487 () Bool)

(assert (=> bm!300874 m!4922487))

(declare-fun m!4922489 () Bool)

(assert (=> bm!300876 m!4922489))

(declare-fun m!4922491 () Bool)

(assert (=> b!4327804 m!4922491))

(declare-fun m!4922493 () Bool)

(assert (=> b!4327786 m!4922493))

(declare-fun m!4922495 () Bool)

(assert (=> bm!300868 m!4922495))

(declare-fun m!4922497 () Bool)

(assert (=> b!4327784 m!4922497))

(declare-fun m!4922499 () Bool)

(assert (=> bm!300863 m!4922499))

(declare-fun m!4922501 () Bool)

(assert (=> b!4327801 m!4922501))

(declare-fun m!4922503 () Bool)

(assert (=> d!1272069 m!4922503))

(declare-fun m!4922505 () Bool)

(assert (=> d!1272069 m!4922505))

(declare-fun m!4922507 () Bool)

(assert (=> bm!300867 m!4922507))

(declare-fun m!4922509 () Bool)

(assert (=> b!4327800 m!4922509))

(declare-fun m!4922511 () Bool)

(assert (=> b!4327800 m!4922511))

(declare-fun m!4922513 () Bool)

(assert (=> b!4327800 m!4922513))

(assert (=> b!4327800 m!4922511))

(declare-fun m!4922515 () Bool)

(assert (=> b!4327800 m!4922515))

(declare-fun m!4922517 () Bool)

(assert (=> b!4327800 m!4922517))

(declare-fun m!4922519 () Bool)

(assert (=> b!4327800 m!4922519))

(declare-fun m!4922521 () Bool)

(assert (=> b!4327799 m!4922521))

(declare-fun m!4922523 () Bool)

(assert (=> bm!300871 m!4922523))

(declare-fun m!4922525 () Bool)

(assert (=> bm!300864 m!4922525))

(declare-fun m!4922527 () Bool)

(assert (=> b!4327768 m!4922527))

(declare-fun m!4922529 () Bool)

(assert (=> b!4327775 m!4922529))

(declare-fun m!4922531 () Bool)

(assert (=> bm!300879 m!4922531))

(declare-fun m!4922533 () Bool)

(assert (=> bm!300866 m!4922533))

(declare-fun m!4922535 () Bool)

(assert (=> b!4327795 m!4922535))

(declare-fun m!4922537 () Bool)

(assert (=> bm!300872 m!4922537))

(declare-fun m!4922539 () Bool)

(assert (=> bm!300869 m!4922539))

(assert (=> b!4327797 m!4922525))

(declare-fun m!4922541 () Bool)

(assert (=> b!4327803 m!4922541))

(declare-fun m!4922543 () Bool)

(assert (=> bm!300857 m!4922543))

(declare-fun m!4922545 () Bool)

(assert (=> b!4327789 m!4922545))

(assert (=> bm!300848 d!1272069))

(declare-fun bm!300880 () Bool)

(declare-fun call!300893 () Bool)

(declare-fun call!300902 () Bool)

(assert (=> bm!300880 (= call!300893 call!300902)))

(declare-fun lt!1544676 () tuple2!47492)

(declare-fun c!736406 () Bool)

(declare-fun bm!300881 () Bool)

(declare-fun call!300891 () ListLongMap!1247)

(assert (=> bm!300881 (= call!300891 (map!10511 (ite c!736406 call!300854 (_2!27038 lt!1544676))))))

(declare-fun b!4327805 () Bool)

(declare-fun e!2692967 () Bool)

(declare-fun e!2692970 () Bool)

(assert (=> b!4327805 (= e!2692967 e!2692970)))

(declare-fun res!1773453 () Bool)

(declare-fun call!300892 () Bool)

(assert (=> b!4327805 (= res!1773453 call!300892)))

(assert (=> b!4327805 (=> (not res!1773453) (not e!2692970))))

(declare-fun b!4327806 () Bool)

(declare-fun e!2692976 () Bool)

(declare-fun e!2692981 () Bool)

(assert (=> b!4327806 (= e!2692976 e!2692981)))

(assert (=> b!4327806 (= c!736406 (_1!27038 lt!1544676))))

(declare-fun b!4327807 () Bool)

(declare-fun res!1773456 () Bool)

(assert (=> b!4327807 (= res!1773456 call!300893)))

(declare-fun e!2692986 () Bool)

(assert (=> b!4327807 (=> (not res!1773456) (not e!2692986))))

(declare-fun bm!300882 () Bool)

(assert (=> bm!300882 (= call!300892 call!300893)))

(declare-fun b!4327808 () Bool)

(declare-fun lt!1544653 () SeekEntryResult!24)

(assert (=> b!4327808 (= e!2692986 (= (select (arr!7796 (_keys!5132 call!300854)) (index!1477 lt!1544653)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!1272071 () Bool)

(assert (=> d!1272071 e!2692976))

(declare-fun res!1773448 () Bool)

(assert (=> d!1272071 (=> (not res!1773448) (not e!2692976))))

(assert (=> d!1272071 (= res!1773448 (valid!3826 (_2!27038 lt!1544676)))))

(declare-fun e!2692977 () tuple2!47492)

(assert (=> d!1272071 (= lt!1544676 e!2692977)))

(declare-fun c!736407 () Bool)

(assert (=> d!1272071 (= c!736407 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!1272071 (valid!3826 call!300854)))

(assert (=> d!1272071 (= (update!575 call!300854 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) lt!1544676)))

(declare-fun b!4327809 () Bool)

(declare-fun c!736413 () Bool)

(declare-fun lt!1544665 () SeekEntryResult!24)

(assert (=> b!4327809 (= c!736413 ((_ is MissingVacant!24) lt!1544665))))

(declare-fun e!2692979 () Bool)

(declare-fun e!2692971 () Bool)

(assert (=> b!4327809 (= e!2692979 e!2692971)))

(declare-fun bm!300883 () Bool)

(declare-fun call!300889 () ListLongMap!1247)

(declare-fun call!300895 () ListLongMap!1247)

(assert (=> bm!300883 (= call!300889 call!300895)))

(declare-fun b!4327810 () Bool)

(declare-fun e!2692969 () tuple2!47492)

(assert (=> b!4327810 (= e!2692977 e!2692969)))

(declare-fun c!736409 () Bool)

(assert (=> b!4327810 (= c!736409 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300884 () Bool)

(declare-fun call!300908 () Bool)

(declare-fun call!300886 () Bool)

(assert (=> bm!300884 (= call!300908 call!300886)))

(declare-fun b!4327811 () Bool)

(declare-fun lt!1544671 () tuple2!47492)

(declare-fun call!300887 () tuple2!47492)

(assert (=> b!4327811 (= lt!1544671 call!300887)))

(declare-fun e!2692978 () tuple2!47492)

(assert (=> b!4327811 (= e!2692978 (tuple2!47493 (_1!27038 lt!1544671) (_2!27038 lt!1544671)))))

(declare-fun b!4327812 () Bool)

(declare-fun e!2692984 () ListLongMap!1247)

(assert (=> b!4327812 (= e!2692984 call!300889)))

(declare-fun bm!300885 () Bool)

(declare-fun call!300907 () SeekEntryResult!24)

(declare-fun call!300899 () SeekEntryResult!24)

(assert (=> bm!300885 (= call!300907 call!300899)))

(declare-fun b!4327813 () Bool)

(declare-fun lt!1544662 () SeekEntryResult!24)

(assert (=> b!4327813 (= e!2692967 ((_ is Undefined!24) lt!1544662))))

(declare-fun b!4327814 () Bool)

(declare-fun e!2692974 () Bool)

(declare-fun call!300894 () Bool)

(assert (=> b!4327814 (= e!2692974 (not call!300894))))

(declare-fun bm!300886 () Bool)

(declare-fun call!300897 () SeekEntryResult!24)

(assert (=> bm!300886 (= call!300897 call!300899)))

(declare-fun call!300885 () ListLongMap!1247)

(declare-fun bm!300887 () Bool)

(assert (=> bm!300887 (= call!300885 (map!10511 (ite c!736406 (_2!27038 lt!1544676) call!300854)))))

(declare-fun b!4327815 () Bool)

(declare-fun e!2692973 () Bool)

(assert (=> b!4327815 (= e!2692981 e!2692973)))

(declare-fun res!1773458 () Bool)

(assert (=> b!4327815 (= res!1773458 (contains!10549 call!300885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327815 (=> (not res!1773458) (not e!2692973))))

(declare-fun b!4327816 () Bool)

(declare-fun c!736411 () Bool)

(assert (=> b!4327816 (= c!736411 ((_ is MissingVacant!24) lt!1544662))))

(declare-fun e!2692968 () Bool)

(assert (=> b!4327816 (= e!2692968 e!2692967)))

(declare-fun b!4327817 () Bool)

(declare-fun e!2692972 () Bool)

(declare-fun call!300903 () Bool)

(assert (=> b!4327817 (= e!2692972 (not call!300903))))

(declare-fun b!4327818 () Bool)

(declare-fun e!2692975 () tuple2!47492)

(declare-fun lt!1544675 () tuple2!47492)

(assert (=> b!4327818 (= e!2692975 (tuple2!47493 (_1!27038 lt!1544675) (_2!27038 lt!1544675)))))

(assert (=> b!4327818 (= lt!1544675 call!300887)))

(declare-fun bm!300888 () Bool)

(assert (=> bm!300888 (= call!300899 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5132 call!300854) (mask!13472 call!300854)))))

(declare-fun b!4327819 () Bool)

(assert (=> b!4327819 (= e!2692970 (not call!300894))))

(declare-fun bm!300889 () Bool)

(declare-fun call!300898 () ListLongMap!1247)

(declare-fun call!300905 () ListLongMap!1247)

(assert (=> bm!300889 (= call!300898 call!300905)))

(declare-fun b!4327820 () Bool)

(assert (=> b!4327820 (= e!2692971 ((_ is Undefined!24) lt!1544665))))

(declare-fun b!4327821 () Bool)

(assert (=> b!4327821 (= e!2692984 call!300905)))

(declare-fun b!4327822 () Bool)

(declare-fun e!2692980 () Unit!68075)

(declare-fun Unit!68083 () Unit!68075)

(assert (=> b!4327822 (= e!2692980 Unit!68083)))

(declare-fun lt!1544677 () Unit!68075)

(declare-fun call!300896 () Unit!68075)

(assert (=> b!4327822 (= lt!1544677 call!300896)))

(assert (=> b!4327822 (= lt!1544662 call!300907)))

(declare-fun c!736405 () Bool)

(assert (=> b!4327822 (= c!736405 ((_ is MissingZero!24) lt!1544662))))

(assert (=> b!4327822 e!2692968))

(declare-fun lt!1544679 () Unit!68075)

(assert (=> b!4327822 (= lt!1544679 lt!1544677)))

(assert (=> b!4327822 false))

(declare-fun b!4327823 () Bool)

(declare-fun res!1773449 () Bool)

(assert (=> b!4327823 (=> (not res!1773449) (not e!2692972))))

(assert (=> b!4327823 (= res!1773449 call!300908)))

(assert (=> b!4327823 (= e!2692979 e!2692972)))

(declare-fun bm!300890 () Bool)

(declare-fun call!300900 () Unit!68075)

(assert (=> bm!300890 (= call!300900 (lemmaInListMapThenSeekEntryOrOpenFindsIt!14 (_keys!5132 call!300854) (_values!5106 call!300854) (mask!13472 call!300854) (extraKeys!5070 call!300854) (zeroValue!5082 call!300854) (minValue!5082 call!300854) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5211 call!300854)))))

(declare-fun bm!300891 () Bool)

(declare-fun c!736415 () Bool)

(declare-fun c!736412 () Bool)

(assert (=> bm!300891 (= c!736415 c!736412)))

(declare-fun call!300888 () Bool)

(assert (=> bm!300891 (= call!300888 (contains!10549 e!2692984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!300892 () Bool)

(assert (=> bm!300892 (= call!300896 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!14 (_keys!5132 call!300854) (_values!5106 call!300854) (mask!13472 call!300854) (extraKeys!5070 call!300854) (zeroValue!5082 call!300854) (minValue!5082 call!300854) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5211 call!300854)))))

(declare-fun b!4327824 () Bool)

(declare-fun e!2692983 () Bool)

(declare-fun lt!1544678 () SeekEntryResult!24)

(assert (=> b!4327824 (= e!2692983 (= (select (arr!7796 (_keys!5132 call!300854)) (index!1477 lt!1544678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327825 () Bool)

(assert (=> b!4327825 (= e!2692975 e!2692978)))

(declare-fun c!736408 () Bool)

(declare-fun lt!1544670 () SeekEntryResult!24)

(assert (=> b!4327825 (= c!736408 ((_ is MissingZero!24) lt!1544670))))

(declare-fun bm!300893 () Bool)

(declare-fun lt!1544668 () (_ BitVec 32))

(assert (=> bm!300893 (= call!300905 (getCurrentListMap!27 (_keys!5132 call!300854) (_values!5106 call!300854) (mask!13472 call!300854) (ite c!736407 (ite c!736409 (extraKeys!5070 call!300854) lt!1544668) (extraKeys!5070 call!300854)) (zeroValue!5082 call!300854) (ite c!736407 (ite c!736409 (minValue!5082 call!300854) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (minValue!5082 call!300854)) #b00000000000000000000000000000000 (defaultEntry!5211 call!300854)))))

(declare-fun b!4327826 () Bool)

(declare-fun res!1773450 () Bool)

(assert (=> b!4327826 (=> (not res!1773450) (not e!2692974))))

(assert (=> b!4327826 (= res!1773450 (= (select (arr!7796 (_keys!5132 call!300854)) (index!1478 lt!1544662)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327827 () Bool)

(declare-fun lt!1544672 () Unit!68075)

(declare-fun e!2692987 () Unit!68075)

(assert (=> b!4327827 (= lt!1544672 e!2692987)))

(declare-fun c!736414 () Bool)

(assert (=> b!4327827 (= c!736414 call!300888)))

(declare-fun e!2692985 () tuple2!47492)

(assert (=> b!4327827 (= e!2692985 (tuple2!47493 false call!300854))))

(declare-fun bm!300894 () Bool)

(declare-fun call!300901 () ListLongMap!1247)

(declare-fun call!300906 () ListLongMap!1247)

(assert (=> bm!300894 (= call!300901 call!300906)))

(declare-fun b!4327828 () Bool)

(declare-fun e!2692982 () Bool)

(assert (=> b!4327828 (= e!2692982 (not call!300903))))

(declare-fun lt!1544669 () (_ BitVec 32))

(declare-fun bm!300895 () Bool)

(declare-fun lt!1544667 () array!17470)

(assert (=> bm!300895 (= call!300895 (getCurrentListMap!27 (_keys!5132 call!300854) (ite (or c!736407 c!736412) (_values!5106 call!300854) lt!1544667) (mask!13472 call!300854) (ite (and c!736407 c!736409) lt!1544669 (extraKeys!5070 call!300854)) (ite (and c!736407 c!736409) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (zeroValue!5082 call!300854)) (minValue!5082 call!300854) #b00000000000000000000000000000000 (defaultEntry!5211 call!300854)))))

(declare-fun c!736404 () Bool)

(declare-fun bm!300896 () Bool)

(declare-fun c!736403 () Bool)

(assert (=> bm!300896 (= call!300902 (inRange!0 (ite c!736412 (ite c!736414 (index!1477 lt!1544678) (ite c!736404 (index!1478 lt!1544665) (index!1479 lt!1544665))) (ite c!736403 (index!1477 lt!1544653) (ite c!736405 (index!1478 lt!1544662) (index!1479 lt!1544662)))) (mask!13472 call!300854)))))

(declare-fun b!4327829 () Bool)

(assert (=> b!4327829 (= e!2692973 (= call!300885 (+!379 call!300891 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun b!4327830 () Bool)

(declare-fun c!736410 () Bool)

(assert (=> b!4327830 (= c!736410 ((_ is MissingVacant!24) lt!1544670))))

(assert (=> b!4327830 (= e!2692985 e!2692975)))

(declare-fun b!4327831 () Bool)

(declare-fun res!1773446 () Bool)

(assert (=> b!4327831 (= res!1773446 call!300886)))

(assert (=> b!4327831 (=> (not res!1773446) (not e!2692983))))

(declare-fun b!4327832 () Bool)

(assert (=> b!4327832 (= e!2692971 e!2692982)))

(declare-fun res!1773452 () Bool)

(assert (=> b!4327832 (= res!1773452 call!300908)))

(assert (=> b!4327832 (=> (not res!1773452) (not e!2692982))))

(declare-fun b!4327833 () Bool)

(declare-fun res!1773447 () Bool)

(assert (=> b!4327833 (=> (not res!1773447) (not e!2692974))))

(assert (=> b!4327833 (= res!1773447 call!300892)))

(assert (=> b!4327833 (= e!2692968 e!2692974)))

(declare-fun b!4327834 () Bool)

(assert (=> b!4327834 (= e!2692981 (= call!300891 call!300885))))

(declare-fun b!4327835 () Bool)

(declare-fun res!1773451 () Bool)

(assert (=> b!4327835 (= res!1773451 (= (select (arr!7796 (_keys!5132 call!300854)) (index!1479 lt!1544662)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327835 (=> (not res!1773451) (not e!2692970))))

(declare-fun bm!300897 () Bool)

(declare-fun call!300890 () ListLongMap!1247)

(assert (=> bm!300897 (= call!300890 call!300895)))

(declare-fun b!4327836 () Bool)

(declare-fun lt!1544656 () Unit!68075)

(assert (=> b!4327836 (= e!2692980 lt!1544656)))

(assert (=> b!4327836 (= lt!1544656 call!300900)))

(assert (=> b!4327836 (= lt!1544653 call!300907)))

(declare-fun res!1773457 () Bool)

(assert (=> b!4327836 (= res!1773457 ((_ is Found!24) lt!1544653))))

(assert (=> b!4327836 (=> (not res!1773457) (not e!2692986))))

(assert (=> b!4327836 e!2692986))

(declare-fun b!4327837 () Bool)

(assert (=> b!4327837 (= e!2692977 e!2692985)))

(assert (=> b!4327837 (= lt!1544670 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5132 call!300854) (mask!13472 call!300854)))))

(assert (=> b!4327837 (= c!736412 ((_ is Undefined!24) lt!1544670))))

(declare-fun bm!300898 () Bool)

(declare-fun call!300904 () Bool)

(assert (=> bm!300898 (= call!300904 (arrayContainsKey!0 (_keys!5132 call!300854) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!4327838 () Bool)

(declare-fun lt!1544660 () Unit!68075)

(assert (=> b!4327838 (= e!2692987 lt!1544660)))

(assert (=> b!4327838 (= lt!1544660 call!300896)))

(assert (=> b!4327838 (= lt!1544665 call!300897)))

(assert (=> b!4327838 (= c!736404 ((_ is MissingZero!24) lt!1544665))))

(assert (=> b!4327838 e!2692979))

(declare-fun b!4327839 () Bool)

(declare-fun res!1773459 () Bool)

(assert (=> b!4327839 (=> (not res!1773459) (not e!2692972))))

(assert (=> b!4327839 (= res!1773459 (= (select (arr!7796 (_keys!5132 call!300854)) (index!1478 lt!1544665)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327840 () Bool)

(declare-fun lt!1544659 () Unit!68075)

(declare-fun lt!1544673 () Unit!68075)

(assert (=> b!4327840 (= lt!1544659 lt!1544673)))

(assert (=> b!4327840 (contains!10549 call!300889 (select (arr!7796 (_keys!5132 call!300854)) (index!1477 lt!1544670)))))

(assert (=> b!4327840 (= lt!1544673 (lemmaValidKeyInArrayIsInListMap!17 (_keys!5132 call!300854) lt!1544667 (mask!13472 call!300854) (extraKeys!5070 call!300854) (zeroValue!5082 call!300854) (minValue!5082 call!300854) (index!1477 lt!1544670) (defaultEntry!5211 call!300854)))))

(assert (=> b!4327840 (= lt!1544667 (array!17471 (store (arr!7795 (_values!5106 call!300854)) (index!1477 lt!1544670) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (size!35835 (_values!5106 call!300854))))))

(declare-fun lt!1544658 () Unit!68075)

(declare-fun lt!1544664 () Unit!68075)

(assert (=> b!4327840 (= lt!1544658 lt!1544664)))

(assert (=> b!4327840 (= call!300906 (getCurrentListMap!27 (_keys!5132 call!300854) (array!17471 (store (arr!7795 (_values!5106 call!300854)) (index!1477 lt!1544670) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (size!35835 (_values!5106 call!300854))) (mask!13472 call!300854) (extraKeys!5070 call!300854) (zeroValue!5082 call!300854) (minValue!5082 call!300854) #b00000000000000000000000000000000 (defaultEntry!5211 call!300854)))))

(assert (=> b!4327840 (= lt!1544664 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!14 (_keys!5132 call!300854) (_values!5106 call!300854) (mask!13472 call!300854) (extraKeys!5070 call!300854) (zeroValue!5082 call!300854) (minValue!5082 call!300854) (index!1477 lt!1544670) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (defaultEntry!5211 call!300854)))))

(declare-fun lt!1544661 () Unit!68075)

(assert (=> b!4327840 (= lt!1544661 e!2692980)))

(assert (=> b!4327840 (= c!736403 call!300888)))

(assert (=> b!4327840 (= e!2692978 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 call!300854) (mask!13472 call!300854) (extraKeys!5070 call!300854) (zeroValue!5082 call!300854) (minValue!5082 call!300854) (_size!9637 call!300854) (_keys!5132 call!300854) (array!17471 (store (arr!7795 (_values!5106 call!300854)) (index!1477 lt!1544670) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (size!35835 (_values!5106 call!300854))) (_vacant!4869 call!300854))))))

(declare-fun b!4327841 () Bool)

(declare-fun lt!1544657 () Unit!68075)

(declare-fun lt!1544674 () Unit!68075)

(assert (=> b!4327841 (= lt!1544657 lt!1544674)))

(assert (=> b!4327841 (= call!300901 call!300898)))

(assert (=> b!4327841 (= lt!1544674 (lemmaChangeLongMinValueKeyThenAddPairToListMap!14 (_keys!5132 call!300854) (_values!5106 call!300854) (mask!13472 call!300854) (extraKeys!5070 call!300854) lt!1544668 (zeroValue!5082 call!300854) (minValue!5082 call!300854) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (defaultEntry!5211 call!300854)))))

(assert (=> b!4327841 (= lt!1544668 (bvor (extraKeys!5070 call!300854) #b00000000000000000000000000000010))))

(assert (=> b!4327841 (= e!2692969 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 call!300854) (mask!13472 call!300854) (bvor (extraKeys!5070 call!300854) #b00000000000000000000000000000010) (zeroValue!5082 call!300854) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (_size!9637 call!300854) (_keys!5132 call!300854) (_values!5106 call!300854) (_vacant!4869 call!300854))))))

(declare-fun b!4327842 () Bool)

(declare-fun Unit!68084 () Unit!68075)

(assert (=> b!4327842 (= e!2692987 Unit!68084)))

(declare-fun lt!1544663 () Unit!68075)

(assert (=> b!4327842 (= lt!1544663 call!300900)))

(assert (=> b!4327842 (= lt!1544678 call!300897)))

(declare-fun res!1773455 () Bool)

(assert (=> b!4327842 (= res!1773455 ((_ is Found!24) lt!1544678))))

(assert (=> b!4327842 (=> (not res!1773455) (not e!2692983))))

(assert (=> b!4327842 e!2692983))

(declare-fun lt!1544655 () Unit!68075)

(assert (=> b!4327842 (= lt!1544655 lt!1544663)))

(assert (=> b!4327842 false))

(declare-fun bm!300899 () Bool)

(assert (=> bm!300899 (= call!300886 call!300902)))

(declare-fun b!4327843 () Bool)

(declare-fun res!1773454 () Bool)

(assert (=> b!4327843 (= res!1773454 (= (select (arr!7796 (_keys!5132 call!300854)) (index!1479 lt!1544665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327843 (=> (not res!1773454) (not e!2692982))))

(declare-fun bm!300900 () Bool)

(assert (=> bm!300900 (= call!300887 (updateHelperNewKey!14 call!300854 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (ite c!736410 (index!1479 lt!1544670) (index!1478 lt!1544670))))))

(declare-fun bm!300901 () Bool)

(assert (=> bm!300901 (= call!300903 call!300904)))

(declare-fun bm!300902 () Bool)

(assert (=> bm!300902 (= call!300894 call!300904)))

(declare-fun bm!300903 () Bool)

(assert (=> bm!300903 (= call!300906 (+!379 (ite c!736407 (ite c!736409 call!300898 call!300890) call!300905) (ite c!736407 (ite c!736409 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))))) (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun b!4327844 () Bool)

(declare-fun lt!1544666 () Unit!68075)

(declare-fun lt!1544654 () Unit!68075)

(assert (=> b!4327844 (= lt!1544666 lt!1544654)))

(assert (=> b!4327844 (= call!300901 call!300890)))

(assert (=> b!4327844 (= lt!1544654 (lemmaChangeZeroKeyThenAddPairToListMap!14 (_keys!5132 call!300854) (_values!5106 call!300854) (mask!13472 call!300854) (extraKeys!5070 call!300854) lt!1544669 (zeroValue!5082 call!300854) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 call!300854) (defaultEntry!5211 call!300854)))))

(assert (=> b!4327844 (= lt!1544669 (bvor (extraKeys!5070 call!300854) #b00000000000000000000000000000001))))

(assert (=> b!4327844 (= e!2692969 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 call!300854) (mask!13472 call!300854) (bvor (extraKeys!5070 call!300854) #b00000000000000000000000000000001) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 call!300854) (_size!9637 call!300854) (_keys!5132 call!300854) (_values!5106 call!300854) (_vacant!4869 call!300854))))))

(assert (= (and d!1272071 c!736407) b!4327810))

(assert (= (and d!1272071 (not c!736407)) b!4327837))

(assert (= (and b!4327810 c!736409) b!4327844))

(assert (= (and b!4327810 (not c!736409)) b!4327841))

(assert (= (or b!4327844 b!4327841) bm!300897))

(assert (= (or b!4327844 b!4327841) bm!300889))

(assert (= (or b!4327844 b!4327841) bm!300894))

(assert (= (and b!4327837 c!736412) b!4327827))

(assert (= (and b!4327837 (not c!736412)) b!4327830))

(assert (= (and b!4327827 c!736414) b!4327842))

(assert (= (and b!4327827 (not c!736414)) b!4327838))

(assert (= (and b!4327842 res!1773455) b!4327831))

(assert (= (and b!4327831 res!1773446) b!4327824))

(assert (= (and b!4327838 c!736404) b!4327823))

(assert (= (and b!4327838 (not c!736404)) b!4327809))

(assert (= (and b!4327823 res!1773449) b!4327839))

(assert (= (and b!4327839 res!1773459) b!4327817))

(assert (= (and b!4327809 c!736413) b!4327832))

(assert (= (and b!4327809 (not c!736413)) b!4327820))

(assert (= (and b!4327832 res!1773452) b!4327843))

(assert (= (and b!4327843 res!1773454) b!4327828))

(assert (= (or b!4327817 b!4327828) bm!300901))

(assert (= (or b!4327823 b!4327832) bm!300884))

(assert (= (or b!4327831 bm!300884) bm!300899))

(assert (= (or b!4327842 b!4327838) bm!300886))

(assert (= (and b!4327830 c!736410) b!4327818))

(assert (= (and b!4327830 (not c!736410)) b!4327825))

(assert (= (and b!4327825 c!736408) b!4327811))

(assert (= (and b!4327825 (not c!736408)) b!4327840))

(assert (= (and b!4327840 c!736403) b!4327836))

(assert (= (and b!4327840 (not c!736403)) b!4327822))

(assert (= (and b!4327836 res!1773457) b!4327807))

(assert (= (and b!4327807 res!1773456) b!4327808))

(assert (= (and b!4327822 c!736405) b!4327833))

(assert (= (and b!4327822 (not c!736405)) b!4327816))

(assert (= (and b!4327833 res!1773447) b!4327826))

(assert (= (and b!4327826 res!1773450) b!4327814))

(assert (= (and b!4327816 c!736411) b!4327805))

(assert (= (and b!4327816 (not c!736411)) b!4327813))

(assert (= (and b!4327805 res!1773453) b!4327835))

(assert (= (and b!4327835 res!1773451) b!4327819))

(assert (= (or b!4327814 b!4327819) bm!300902))

(assert (= (or b!4327833 b!4327805) bm!300882))

(assert (= (or b!4327807 bm!300882) bm!300880))

(assert (= (or b!4327836 b!4327822) bm!300885))

(assert (= (or b!4327818 b!4327811) bm!300900))

(assert (= (or bm!300899 bm!300880) bm!300896))

(assert (= (or b!4327827 b!4327840) bm!300883))

(assert (= (or b!4327838 b!4327822) bm!300892))

(assert (= (or bm!300886 bm!300885) bm!300888))

(assert (= (or b!4327842 b!4327836) bm!300890))

(assert (= (or bm!300901 bm!300902) bm!300898))

(assert (= (or b!4327827 b!4327840) bm!300891))

(assert (= (and bm!300891 c!736415) b!4327812))

(assert (= (and bm!300891 (not c!736415)) b!4327821))

(assert (= (or bm!300897 bm!300883) bm!300895))

(assert (= (or bm!300889 b!4327821 b!4327840) bm!300893))

(assert (= (or bm!300894 b!4327840) bm!300903))

(assert (= (and d!1272071 res!1773448) b!4327806))

(assert (= (and b!4327806 c!736406) b!4327815))

(assert (= (and b!4327806 (not c!736406)) b!4327834))

(assert (= (and b!4327815 res!1773458) b!4327829))

(assert (= (or b!4327815 b!4327829 b!4327834) bm!300887))

(assert (= (or b!4327829 b!4327834) bm!300881))

(declare-fun m!4922547 () Bool)

(assert (=> bm!300898 m!4922547))

(declare-fun m!4922549 () Bool)

(assert (=> bm!300900 m!4922549))

(declare-fun m!4922551 () Bool)

(assert (=> b!4327844 m!4922551))

(declare-fun m!4922553 () Bool)

(assert (=> b!4327826 m!4922553))

(declare-fun m!4922555 () Bool)

(assert (=> bm!300892 m!4922555))

(declare-fun m!4922557 () Bool)

(assert (=> b!4327824 m!4922557))

(declare-fun m!4922559 () Bool)

(assert (=> bm!300887 m!4922559))

(declare-fun m!4922561 () Bool)

(assert (=> b!4327841 m!4922561))

(declare-fun m!4922563 () Bool)

(assert (=> d!1272071 m!4922563))

(declare-fun m!4922565 () Bool)

(assert (=> d!1272071 m!4922565))

(declare-fun m!4922567 () Bool)

(assert (=> bm!300891 m!4922567))

(declare-fun m!4922569 () Bool)

(assert (=> b!4327840 m!4922569))

(declare-fun m!4922571 () Bool)

(assert (=> b!4327840 m!4922571))

(declare-fun m!4922573 () Bool)

(assert (=> b!4327840 m!4922573))

(assert (=> b!4327840 m!4922571))

(declare-fun m!4922575 () Bool)

(assert (=> b!4327840 m!4922575))

(declare-fun m!4922577 () Bool)

(assert (=> b!4327840 m!4922577))

(declare-fun m!4922579 () Bool)

(assert (=> b!4327840 m!4922579))

(declare-fun m!4922581 () Bool)

(assert (=> b!4327839 m!4922581))

(declare-fun m!4922583 () Bool)

(assert (=> bm!300895 m!4922583))

(declare-fun m!4922585 () Bool)

(assert (=> bm!300888 m!4922585))

(declare-fun m!4922587 () Bool)

(assert (=> b!4327808 m!4922587))

(declare-fun m!4922589 () Bool)

(assert (=> b!4327815 m!4922589))

(declare-fun m!4922591 () Bool)

(assert (=> bm!300903 m!4922591))

(declare-fun m!4922593 () Bool)

(assert (=> bm!300890 m!4922593))

(declare-fun m!4922595 () Bool)

(assert (=> b!4327835 m!4922595))

(declare-fun m!4922597 () Bool)

(assert (=> bm!300896 m!4922597))

(declare-fun m!4922599 () Bool)

(assert (=> bm!300893 m!4922599))

(assert (=> b!4327837 m!4922585))

(declare-fun m!4922601 () Bool)

(assert (=> b!4327843 m!4922601))

(declare-fun m!4922603 () Bool)

(assert (=> bm!300881 m!4922603))

(declare-fun m!4922605 () Bool)

(assert (=> b!4327829 m!4922605))

(assert (=> b!4327684 d!1272071))

(declare-fun d!1272073 () Bool)

(assert (=> d!1272073 (= (map!10511 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) (getCurrentListMap!27 (_keys!5132 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) (_values!5106 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) (mask!13472 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) (extraKeys!5070 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) (zeroValue!5082 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) (minValue!5082 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555))) #b00000000000000000000000000000000 (defaultEntry!5211 (ite c!736346 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) (_2!27038 lt!1544555)))))))

(declare-fun bs!607553 () Bool)

(assert (= bs!607553 d!1272073))

(declare-fun m!4922607 () Bool)

(assert (=> bs!607553 m!4922607))

(assert (=> bm!300815 d!1272073))

(declare-fun d!1272075 () Bool)

(declare-fun e!2692988 () Bool)

(assert (=> d!1272075 e!2692988))

(declare-fun res!1773460 () Bool)

(assert (=> d!1272075 (=> res!1773460 e!2692988)))

(declare-fun lt!1544680 () Bool)

(assert (=> d!1272075 (= res!1773460 (not lt!1544680))))

(declare-fun lt!1544682 () Bool)

(assert (=> d!1272075 (= lt!1544680 lt!1544682)))

(declare-fun lt!1544681 () Unit!68075)

(declare-fun e!2692989 () Unit!68075)

(assert (=> d!1272075 (= lt!1544681 e!2692989)))

(declare-fun c!736416 () Bool)

(assert (=> d!1272075 (= c!736416 lt!1544682)))

(assert (=> d!1272075 (= lt!1544682 (containsKey!427 (toList!2624 lt!1544568) (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(assert (=> d!1272075 (= (contains!10549 lt!1544568 (_1!27040 (tuple2!47497 key!7012 v!11761))) lt!1544680)))

(declare-fun b!4327845 () Bool)

(declare-fun lt!1544683 () Unit!68075)

(assert (=> b!4327845 (= e!2692989 lt!1544683)))

(assert (=> b!4327845 (= lt!1544683 (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!2624 lt!1544568) (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(assert (=> b!4327845 (isDefined!7629 (getValueByKey!317 (toList!2624 lt!1544568) (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4327846 () Bool)

(declare-fun Unit!68085 () Unit!68075)

(assert (=> b!4327846 (= e!2692989 Unit!68085)))

(declare-fun b!4327847 () Bool)

(assert (=> b!4327847 (= e!2692988 (isDefined!7629 (getValueByKey!317 (toList!2624 lt!1544568) (_1!27040 (tuple2!47497 key!7012 v!11761)))))))

(assert (= (and d!1272075 c!736416) b!4327845))

(assert (= (and d!1272075 (not c!736416)) b!4327846))

(assert (= (and d!1272075 (not res!1773460)) b!4327847))

(declare-fun m!4922609 () Bool)

(assert (=> d!1272075 m!4922609))

(declare-fun m!4922611 () Bool)

(assert (=> b!4327845 m!4922611))

(assert (=> b!4327845 m!4922413))

(assert (=> b!4327845 m!4922413))

(declare-fun m!4922613 () Bool)

(assert (=> b!4327845 m!4922613))

(assert (=> b!4327847 m!4922413))

(assert (=> b!4327847 m!4922413))

(assert (=> b!4327847 m!4922613))

(assert (=> d!1272047 d!1272075))

(declare-fun d!1272077 () Bool)

(declare-fun c!736417 () Bool)

(assert (=> d!1272077 (= c!736417 (and ((_ is Cons!48457) lt!1544567) (= (_1!27040 (h!53926 lt!1544567)) (_1!27040 (tuple2!47497 key!7012 v!11761)))))))

(declare-fun e!2692990 () Option!10331)

(assert (=> d!1272077 (= (getValueByKey!317 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761))) e!2692990)))

(declare-fun b!4327851 () Bool)

(declare-fun e!2692991 () Option!10331)

(assert (=> b!4327851 (= e!2692991 None!10330)))

(declare-fun b!4327850 () Bool)

(assert (=> b!4327850 (= e!2692991 (getValueByKey!317 (t!355491 lt!1544567) (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4327848 () Bool)

(assert (=> b!4327848 (= e!2692990 (Some!10330 (_2!27040 (h!53926 lt!1544567))))))

(declare-fun b!4327849 () Bool)

(assert (=> b!4327849 (= e!2692990 e!2692991)))

(declare-fun c!736418 () Bool)

(assert (=> b!4327849 (= c!736418 (and ((_ is Cons!48457) lt!1544567) (not (= (_1!27040 (h!53926 lt!1544567)) (_1!27040 (tuple2!47497 key!7012 v!11761))))))))

(assert (= (and d!1272077 c!736417) b!4327848))

(assert (= (and d!1272077 (not c!736417)) b!4327849))

(assert (= (and b!4327849 c!736418) b!4327850))

(assert (= (and b!4327849 (not c!736418)) b!4327851))

(declare-fun m!4922615 () Bool)

(assert (=> b!4327850 m!4922615))

(assert (=> d!1272047 d!1272077))

(declare-fun d!1272079 () Bool)

(assert (=> d!1272079 (= (getValueByKey!317 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761))) (Some!10330 (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun lt!1544686 () Unit!68075)

(declare-fun choose!26462 (List!48581 (_ BitVec 64) V!9961) Unit!68075)

(assert (=> d!1272079 (= lt!1544686 (choose!26462 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun e!2692994 () Bool)

(assert (=> d!1272079 e!2692994))

(declare-fun res!1773465 () Bool)

(assert (=> d!1272079 (=> (not res!1773465) (not e!2692994))))

(declare-fun isStrictlySorted!23 (List!48581) Bool)

(assert (=> d!1272079 (= res!1773465 (isStrictlySorted!23 lt!1544567))))

(assert (=> d!1272079 (= (lemmaContainsTupThenGetReturnValue!110 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))) lt!1544686)))

(declare-fun b!4327856 () Bool)

(declare-fun res!1773466 () Bool)

(assert (=> b!4327856 (=> (not res!1773466) (not e!2692994))))

(assert (=> b!4327856 (= res!1773466 (containsKey!427 lt!1544567 (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4327857 () Bool)

(assert (=> b!4327857 (= e!2692994 (contains!10550 lt!1544567 (tuple2!47497 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761)))))))

(assert (= (and d!1272079 res!1773465) b!4327856))

(assert (= (and b!4327856 res!1773466) b!4327857))

(assert (=> d!1272079 m!4922407))

(declare-fun m!4922617 () Bool)

(assert (=> d!1272079 m!4922617))

(declare-fun m!4922619 () Bool)

(assert (=> d!1272079 m!4922619))

(declare-fun m!4922621 () Bool)

(assert (=> b!4327856 m!4922621))

(declare-fun m!4922623 () Bool)

(assert (=> b!4327857 m!4922623))

(assert (=> d!1272047 d!1272079))

(declare-fun b!4327878 () Bool)

(declare-fun e!2693006 () List!48581)

(declare-fun call!300917 () List!48581)

(assert (=> b!4327878 (= e!2693006 call!300917)))

(declare-fun c!736428 () Bool)

(declare-fun b!4327879 () Bool)

(declare-fun c!736427 () Bool)

(declare-fun e!2693007 () List!48581)

(assert (=> b!4327879 (= e!2693007 (ite c!736427 (t!355491 (toList!2624 call!300770)) (ite c!736428 (Cons!48457 (h!53926 (toList!2624 call!300770)) (t!355491 (toList!2624 call!300770))) Nil!48457)))))

(declare-fun lt!1544689 () List!48581)

(declare-fun b!4327880 () Bool)

(declare-fun e!2693008 () Bool)

(assert (=> b!4327880 (= e!2693008 (contains!10550 lt!1544689 (tuple2!47497 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761)))))))

(declare-fun b!4327881 () Bool)

(assert (=> b!4327881 (= e!2693007 (insertStrictlySorted!65 (t!355491 (toList!2624 call!300770)) (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4327882 () Bool)

(declare-fun e!2693005 () List!48581)

(declare-fun call!300916 () List!48581)

(assert (=> b!4327882 (= e!2693005 call!300916)))

(declare-fun b!4327883 () Bool)

(declare-fun e!2693009 () List!48581)

(assert (=> b!4327883 (= e!2693009 e!2693006)))

(assert (=> b!4327883 (= c!736427 (and ((_ is Cons!48457) (toList!2624 call!300770)) (= (_1!27040 (h!53926 (toList!2624 call!300770))) (_1!27040 (tuple2!47497 key!7012 v!11761)))))))

(declare-fun d!1272081 () Bool)

(assert (=> d!1272081 e!2693008))

(declare-fun res!1773471 () Bool)

(assert (=> d!1272081 (=> (not res!1773471) (not e!2693008))))

(assert (=> d!1272081 (= res!1773471 (isStrictlySorted!23 lt!1544689))))

(assert (=> d!1272081 (= lt!1544689 e!2693009)))

(declare-fun c!736430 () Bool)

(assert (=> d!1272081 (= c!736430 (and ((_ is Cons!48457) (toList!2624 call!300770)) (bvslt (_1!27040 (h!53926 (toList!2624 call!300770))) (_1!27040 (tuple2!47497 key!7012 v!11761)))))))

(assert (=> d!1272081 (isStrictlySorted!23 (toList!2624 call!300770))))

(assert (=> d!1272081 (= (insertStrictlySorted!65 (toList!2624 call!300770) (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))) lt!1544689)))

(declare-fun b!4327884 () Bool)

(assert (=> b!4327884 (= c!736428 (and ((_ is Cons!48457) (toList!2624 call!300770)) (bvsgt (_1!27040 (h!53926 (toList!2624 call!300770))) (_1!27040 (tuple2!47497 key!7012 v!11761)))))))

(assert (=> b!4327884 (= e!2693006 e!2693005)))

(declare-fun b!4327885 () Bool)

(declare-fun call!300915 () List!48581)

(assert (=> b!4327885 (= e!2693009 call!300915)))

(declare-fun bm!300910 () Bool)

(assert (=> bm!300910 (= call!300916 call!300917)))

(declare-fun b!4327886 () Bool)

(declare-fun res!1773472 () Bool)

(assert (=> b!4327886 (=> (not res!1773472) (not e!2693008))))

(assert (=> b!4327886 (= res!1773472 (containsKey!427 lt!1544689 (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun bm!300911 () Bool)

(assert (=> bm!300911 (= call!300917 call!300915)))

(declare-fun b!4327887 () Bool)

(assert (=> b!4327887 (= e!2693005 call!300916)))

(declare-fun bm!300912 () Bool)

(declare-fun $colon$colon!663 (List!48581 tuple2!47496) List!48581)

(assert (=> bm!300912 (= call!300915 ($colon$colon!663 e!2693007 (ite c!736430 (h!53926 (toList!2624 call!300770)) (tuple2!47497 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))))

(declare-fun c!736429 () Bool)

(assert (=> bm!300912 (= c!736429 c!736430)))

(assert (= (and d!1272081 c!736430) b!4327885))

(assert (= (and d!1272081 (not c!736430)) b!4327883))

(assert (= (and b!4327883 c!736427) b!4327878))

(assert (= (and b!4327883 (not c!736427)) b!4327884))

(assert (= (and b!4327884 c!736428) b!4327887))

(assert (= (and b!4327884 (not c!736428)) b!4327882))

(assert (= (or b!4327887 b!4327882) bm!300910))

(assert (= (or b!4327878 bm!300910) bm!300911))

(assert (= (or b!4327885 bm!300911) bm!300912))

(assert (= (and bm!300912 c!736429) b!4327881))

(assert (= (and bm!300912 (not c!736429)) b!4327879))

(assert (= (and d!1272081 res!1773471) b!4327886))

(assert (= (and b!4327886 res!1773472) b!4327880))

(declare-fun m!4922625 () Bool)

(assert (=> b!4327880 m!4922625))

(declare-fun m!4922627 () Bool)

(assert (=> bm!300912 m!4922627))

(declare-fun m!4922629 () Bool)

(assert (=> b!4327881 m!4922629))

(declare-fun m!4922631 () Bool)

(assert (=> b!4327886 m!4922631))

(declare-fun m!4922633 () Bool)

(assert (=> d!1272081 m!4922633))

(declare-fun m!4922635 () Bool)

(assert (=> d!1272081 m!4922635))

(assert (=> d!1272047 d!1272081))

(declare-fun b!4327900 () Bool)

(declare-fun e!2693016 () Unit!68075)

(declare-fun Unit!68086 () Unit!68075)

(assert (=> b!4327900 (= e!2693016 Unit!68086)))

(declare-fun b!4327901 () Bool)

(declare-fun e!2693018 () Bool)

(declare-fun lt!1544751 () tuple2!47496)

(declare-fun lt!1544757 () (_ BitVec 32))

(assert (=> b!4327901 (= e!2693018 (ite (= (_1!27040 lt!1544751) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!1544757 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!1544757 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4327902 () Bool)

(declare-fun e!2693017 () Bool)

(declare-fun lt!1544739 () LongMapFixedSize!9610)

(assert (=> b!4327902 (= e!2693017 (= (map!10511 lt!1544739) (ListLongMap!1248 Nil!48457)))))

(declare-fun b!4327903 () Bool)

(declare-fun Unit!68087 () Unit!68075)

(assert (=> b!4327903 (= e!2693016 Unit!68087)))

(declare-fun lt!1544755 () LongMapFixedSize!9610)

(declare-fun head!9024 (List!48581) tuple2!47496)

(assert (=> b!4327903 (= lt!1544751 (head!9024 (toList!2624 (map!10511 lt!1544755))))))

(declare-fun lt!1544744 () array!17472)

(assert (=> b!4327903 (= lt!1544744 (array!17473 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1544594 #b00000000000000000000000000000001)))))

(assert (=> b!4327903 (= lt!1544757 #b00000000000000000000000000000000)))

(declare-fun lt!1544747 () V!9961)

(declare-fun lt!1544740 () Unit!68075)

(declare-fun lemmaKeyInListMapIsInArray!20 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) Int) Unit!68075)

(assert (=> b!4327903 (= lt!1544740 (lemmaKeyInListMapIsInArray!20 lt!1544744 (array!17471 ((as const (Array (_ BitVec 32) V!9961)) lt!1544747) (bvadd lt!1544594 #b00000000000000000000000000000001)) lt!1544594 lt!1544757 lt!1544747 lt!1544747 (_1!27040 lt!1544751) (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))))))

(declare-fun c!736436 () Bool)

(assert (=> b!4327903 (= c!736436 (and (not (= (_1!27040 lt!1544751) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!27040 lt!1544751) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4327903 e!2693018))

(declare-fun lt!1544761 () Unit!68075)

(assert (=> b!4327903 (= lt!1544761 lt!1544740)))

(declare-fun lt!1544754 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17472 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4327903 (= lt!1544754 (arrayScanForKey!0 (array!17473 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1544594 #b00000000000000000000000000000001)) (_1!27040 lt!1544751) #b00000000000000000000000000000000))))

(assert (=> b!4327903 false))

(declare-fun b!4327904 () Bool)

(assert (=> b!4327904 (= e!2693018 (arrayContainsKey!0 lt!1544744 (_1!27040 lt!1544751) #b00000000000000000000000000000000))))

(declare-fun b!4327905 () Bool)

(declare-fun res!1773478 () Bool)

(assert (=> b!4327905 (=> (not res!1773478) (not e!2693017))))

(assert (=> b!4327905 (= res!1773478 (= (mask!13472 lt!1544739) lt!1544594))))

(declare-fun d!1272083 () Bool)

(assert (=> d!1272083 e!2693017))

(declare-fun res!1773477 () Bool)

(assert (=> d!1272083 (=> (not res!1773477) (not e!2693017))))

(assert (=> d!1272083 (= res!1773477 (valid!3826 lt!1544739))))

(assert (=> d!1272083 (= lt!1544739 lt!1544755)))

(declare-fun lt!1544743 () Unit!68075)

(assert (=> d!1272083 (= lt!1544743 e!2693016)))

(declare-fun c!736435 () Bool)

(assert (=> d!1272083 (= c!736435 (not (= (map!10511 lt!1544755) (ListLongMap!1248 Nil!48457))))))

(declare-fun lt!1544745 () Unit!68075)

(declare-fun lt!1544749 () Unit!68075)

(assert (=> d!1272083 (= lt!1544745 lt!1544749)))

(declare-fun lt!1544750 () array!17472)

(declare-fun lt!1544752 () (_ BitVec 32))

(declare-fun lt!1544758 () List!48582)

(assert (=> d!1272083 (arrayNoDuplicates!0 lt!1544750 lt!1544752 lt!1544758)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!17472 (_ BitVec 32) (_ BitVec 32) List!48582) Unit!68075)

(assert (=> d!1272083 (= lt!1544749 (lemmaArrayNoDuplicatesInAll0Array!0 lt!1544750 lt!1544752 (bvadd lt!1544594 #b00000000000000000000000000000001) lt!1544758))))

(assert (=> d!1272083 (= lt!1544758 Nil!48458)))

(assert (=> d!1272083 (= lt!1544752 #b00000000000000000000000000000000)))

(assert (=> d!1272083 (= lt!1544750 (array!17473 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1544594 #b00000000000000000000000000000001)))))

(declare-fun lt!1544742 () Unit!68075)

(declare-fun lt!1544746 () Unit!68075)

(assert (=> d!1272083 (= lt!1544742 lt!1544746)))

(declare-fun lt!1544756 () (_ BitVec 32))

(declare-fun lt!1544748 () array!17472)

(assert (=> d!1272083 (arrayForallSeekEntryOrOpenFound!0 lt!1544756 lt!1544748 lt!1544594)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!17472 (_ BitVec 32) (_ BitVec 32)) Unit!68075)

(assert (=> d!1272083 (= lt!1544746 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!1544748 lt!1544594 lt!1544756))))

(assert (=> d!1272083 (= lt!1544756 #b00000000000000000000000000000000)))

(assert (=> d!1272083 (= lt!1544748 (array!17473 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1544594 #b00000000000000000000000000000001)))))

(declare-fun lt!1544759 () Unit!68075)

(declare-fun lt!1544753 () Unit!68075)

(assert (=> d!1272083 (= lt!1544759 lt!1544753)))

(declare-fun lt!1544738 () array!17472)

(declare-fun lt!1544741 () (_ BitVec 32))

(declare-fun lt!1544760 () (_ BitVec 32))

(assert (=> d!1272083 (= (arrayCountValidKeys!0 lt!1544738 lt!1544741 lt!1544760) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!17472 (_ BitVec 32) (_ BitVec 32)) Unit!68075)

(assert (=> d!1272083 (= lt!1544753 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!1544738 lt!1544741 lt!1544760))))

(assert (=> d!1272083 (= lt!1544760 (bvadd lt!1544594 #b00000000000000000000000000000001))))

(assert (=> d!1272083 (= lt!1544741 #b00000000000000000000000000000000)))

(assert (=> d!1272083 (= lt!1544738 (array!17473 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1544594 #b00000000000000000000000000000001)))))

(assert (=> d!1272083 (= lt!1544755 (LongMapFixedSize!9611 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260))) lt!1544594 #b00000000000000000000000000000000 lt!1544747 lt!1544747 #b00000000000000000000000000000000 (array!17473 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1544594 #b00000000000000000000000000000001)) (array!17471 ((as const (Array (_ BitVec 32) V!9961)) lt!1544747) (bvadd lt!1544594 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!20529 (Int (_ BitVec 64)) V!9961)

(assert (=> d!1272083 (= lt!1544747 (dynLambda!20529 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1272083 (validMask!0 lt!1544594)))

(assert (=> d!1272083 (= (getNewLongMapFixedSize!33 lt!1544594 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))) lt!1544739)))

(assert (= (and d!1272083 c!736435) b!4327903))

(assert (= (and d!1272083 (not c!736435)) b!4327900))

(assert (= (and b!4327903 c!736436) b!4327904))

(assert (= (and b!4327903 (not c!736436)) b!4327901))

(assert (= (and d!1272083 res!1773477) b!4327905))

(assert (= (and b!4327905 res!1773478) b!4327902))

(declare-fun b_lambda!127559 () Bool)

(assert (=> (not b_lambda!127559) (not d!1272083)))

(declare-fun t!355493 () Bool)

(declare-fun tb!257395 () Bool)

(assert (=> (and b!4327510 (= (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260))) (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))) t!355493) tb!257395))

(declare-fun result!314964 () Bool)

(assert (=> tb!257395 (= result!314964 tp_is_empty!24279)))

(assert (=> d!1272083 t!355493))

(declare-fun b_and!340733 () Bool)

(assert (= b_and!340731 (and (=> t!355493 result!314964) b_and!340733)))

(declare-fun m!4922637 () Bool)

(assert (=> b!4327902 m!4922637))

(declare-fun m!4922639 () Bool)

(assert (=> b!4327903 m!4922639))

(declare-fun m!4922641 () Bool)

(assert (=> b!4327903 m!4922641))

(declare-fun m!4922643 () Bool)

(assert (=> b!4327903 m!4922643))

(declare-fun m!4922645 () Bool)

(assert (=> b!4327903 m!4922645))

(declare-fun m!4922647 () Bool)

(assert (=> b!4327904 m!4922647))

(declare-fun m!4922649 () Bool)

(assert (=> d!1272083 m!4922649))

(declare-fun m!4922651 () Bool)

(assert (=> d!1272083 m!4922651))

(declare-fun m!4922653 () Bool)

(assert (=> d!1272083 m!4922653))

(declare-fun m!4922655 () Bool)

(assert (=> d!1272083 m!4922655))

(declare-fun m!4922657 () Bool)

(assert (=> d!1272083 m!4922657))

(assert (=> d!1272083 m!4922639))

(declare-fun m!4922659 () Bool)

(assert (=> d!1272083 m!4922659))

(declare-fun m!4922661 () Bool)

(assert (=> d!1272083 m!4922661))

(declare-fun m!4922663 () Bool)

(assert (=> d!1272083 m!4922663))

(declare-fun m!4922665 () Bool)

(assert (=> d!1272083 m!4922665))

(assert (=> bm!300849 d!1272083))

(declare-fun d!1272085 () Bool)

(assert (=> d!1272085 (isDefined!7629 (getValueByKey!317 (toList!2624 lt!1544463) key!7012))))

(declare-fun lt!1544764 () Unit!68075)

(declare-fun choose!26463 (List!48581 (_ BitVec 64)) Unit!68075)

(assert (=> d!1272085 (= lt!1544764 (choose!26463 (toList!2624 lt!1544463) key!7012))))

(declare-fun e!2693021 () Bool)

(assert (=> d!1272085 e!2693021))

(declare-fun res!1773481 () Bool)

(assert (=> d!1272085 (=> (not res!1773481) (not e!2693021))))

(assert (=> d!1272085 (= res!1773481 (isStrictlySorted!23 (toList!2624 lt!1544463)))))

(assert (=> d!1272085 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!2624 lt!1544463) key!7012) lt!1544764)))

(declare-fun b!4327910 () Bool)

(assert (=> b!4327910 (= e!2693021 (containsKey!427 (toList!2624 lt!1544463) key!7012))))

(assert (= (and d!1272085 res!1773481) b!4327910))

(assert (=> d!1272085 m!4922337))

(assert (=> d!1272085 m!4922337))

(assert (=> d!1272085 m!4922339))

(declare-fun m!4922667 () Bool)

(assert (=> d!1272085 m!4922667))

(declare-fun m!4922669 () Bool)

(assert (=> d!1272085 m!4922669))

(assert (=> b!4327910 m!4922333))

(assert (=> b!4327526 d!1272085))

(assert (=> b!4327526 d!1272053))

(assert (=> b!4327526 d!1272055))

(declare-fun d!1272087 () Bool)

(assert (=> d!1272087 (= (map!10511 (v!43003 (underlying!9820 thiss!47260))) (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) (_values!5106 (v!43003 (underlying!9820 thiss!47260))) (mask!13472 (v!43003 (underlying!9820 thiss!47260))) (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))))))

(declare-fun bs!607554 () Bool)

(assert (= bs!607554 d!1272087))

(declare-fun m!4922671 () Bool)

(assert (=> bs!607554 m!4922671))

(assert (=> d!1272031 d!1272087))

(declare-fun d!1272089 () Bool)

(assert (=> d!1272089 (= (map!10511 (v!43003 (underlying!9820 lt!1544462))) (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 lt!1544462))) (_values!5106 (v!43003 (underlying!9820 lt!1544462))) (mask!13472 (v!43003 (underlying!9820 lt!1544462))) (extraKeys!5070 (v!43003 (underlying!9820 lt!1544462))) (zeroValue!5082 (v!43003 (underlying!9820 lt!1544462))) (minValue!5082 (v!43003 (underlying!9820 lt!1544462))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 lt!1544462)))))))

(declare-fun bs!607555 () Bool)

(assert (= bs!607555 d!1272089))

(declare-fun m!4922673 () Bool)

(assert (=> bs!607555 m!4922673))

(assert (=> d!1272039 d!1272089))

(assert (=> d!1272049 d!1272083))

(declare-fun d!1272091 () Bool)

(declare-fun e!2693027 () Bool)

(assert (=> d!1272091 e!2693027))

(declare-fun res!1773484 () Bool)

(assert (=> d!1272091 (=> (not res!1773484) (not e!2693027))))

(declare-fun lt!1544769 () (_ BitVec 32))

(assert (=> d!1272091 (= res!1773484 (validMask!0 lt!1544769))))

(declare-datatypes ((tuple2!47500 0))(
  ( (tuple2!47501 (_1!27043 Unit!68075) (_2!27043 (_ BitVec 32))) )
))
(declare-fun e!2693026 () tuple2!47500)

(assert (=> d!1272091 (= lt!1544769 (_2!27043 e!2693026))))

(declare-fun c!736439 () Bool)

(declare-fun lt!1544770 () tuple2!47500)

(assert (=> d!1272091 (= c!736439 (and (bvsgt (_2!27043 lt!1544770) #b00000000000000000000000000001000) (bvslt (_size!9637 (v!43003 (underlying!9820 thiss!47260))) (bvlshr (_2!27043 lt!1544770) #b00000000000000000000000000000011))))))

(declare-fun Unit!68088 () Unit!68075)

(declare-fun Unit!68089 () Unit!68075)

(assert (=> d!1272091 (= lt!1544770 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!9637 (v!43003 (underlying!9820 thiss!47260))) (_vacant!4869 (v!43003 (underlying!9820 thiss!47260))))) (mask!13472 (v!43003 (underlying!9820 thiss!47260)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!4869 (v!43003 (underlying!9820 thiss!47260)))) (mask!13472 (v!43003 (underlying!9820 thiss!47260))))) (tuple2!47501 Unit!68088 (bvand (bvadd (bvshl (mask!13472 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!47501 Unit!68089 (mask!13472 (v!43003 (underlying!9820 thiss!47260))))))))

(assert (=> d!1272091 (validMask!0 (mask!13472 (v!43003 (underlying!9820 thiss!47260))))))

(assert (=> d!1272091 (= (computeNewMask!19 thiss!47260 (mask!13472 (v!43003 (underlying!9820 thiss!47260))) (_vacant!4869 (v!43003 (underlying!9820 thiss!47260))) (_size!9637 (v!43003 (underlying!9820 thiss!47260)))) lt!1544769)))

(declare-fun b!4327917 () Bool)

(declare-fun computeNewMaskWhile!5 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!47500)

(assert (=> b!4327917 (= e!2693026 (computeNewMaskWhile!5 (_size!9637 (v!43003 (underlying!9820 thiss!47260))) (_vacant!4869 (v!43003 (underlying!9820 thiss!47260))) (mask!13472 (v!43003 (underlying!9820 thiss!47260))) (_2!27043 lt!1544770)))))

(declare-fun b!4327918 () Bool)

(declare-fun Unit!68090 () Unit!68075)

(assert (=> b!4327918 (= e!2693026 (tuple2!47501 Unit!68090 (_2!27043 lt!1544770)))))

(declare-fun b!4327919 () Bool)

(assert (=> b!4327919 (= e!2693027 (bvsle (_size!9637 (v!43003 (underlying!9820 thiss!47260))) (bvadd lt!1544769 #b00000000000000000000000000000001)))))

(assert (= (and d!1272091 c!736439) b!4327917))

(assert (= (and d!1272091 (not c!736439)) b!4327918))

(assert (= (and d!1272091 res!1773484) b!4327919))

(declare-fun m!4922675 () Bool)

(assert (=> d!1272091 m!4922675))

(declare-fun m!4922677 () Bool)

(assert (=> d!1272091 m!4922677))

(declare-fun m!4922679 () Bool)

(assert (=> b!4327917 m!4922679))

(assert (=> d!1272049 d!1272091))

(assert (=> d!1272049 d!1272051))

(declare-fun d!1272093 () Bool)

(declare-fun res!1773485 () Bool)

(declare-fun e!2693028 () Bool)

(assert (=> d!1272093 (=> (not res!1773485) (not e!2693028))))

(assert (=> d!1272093 (= res!1773485 (simpleValid!11 (v!43003 (underlying!9820 thiss!47260))))))

(assert (=> d!1272093 (= (valid!3826 (v!43003 (underlying!9820 thiss!47260))) e!2693028)))

(declare-fun b!4327920 () Bool)

(declare-fun res!1773486 () Bool)

(assert (=> b!4327920 (=> (not res!1773486) (not e!2693028))))

(assert (=> b!4327920 (= res!1773486 (= (arrayCountValidKeys!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))))) (_size!9637 (v!43003 (underlying!9820 thiss!47260)))))))

(declare-fun b!4327921 () Bool)

(declare-fun res!1773487 () Bool)

(assert (=> b!4327921 (=> (not res!1773487) (not e!2693028))))

(assert (=> b!4327921 (= res!1773487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) (mask!13472 (v!43003 (underlying!9820 thiss!47260)))))))

(declare-fun b!4327922 () Bool)

(assert (=> b!4327922 (= e!2693028 (arrayNoDuplicates!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000000 Nil!48458))))

(assert (= (and d!1272093 res!1773485) b!4327920))

(assert (= (and b!4327920 res!1773486) b!4327921))

(assert (= (and b!4327921 res!1773487) b!4327922))

(declare-fun m!4922681 () Bool)

(assert (=> d!1272093 m!4922681))

(declare-fun m!4922683 () Bool)

(assert (=> b!4327920 m!4922683))

(declare-fun m!4922685 () Bool)

(assert (=> b!4327921 m!4922685))

(declare-fun m!4922687 () Bool)

(assert (=> b!4327922 m!4922687))

(assert (=> d!1272051 d!1272093))

(declare-fun b!4327957 () Bool)

(declare-fun e!2693052 () Bool)

(declare-fun call!300926 () Bool)

(assert (=> b!4327957 (= e!2693052 (not call!300926))))

(declare-fun b!4327958 () Bool)

(declare-fun c!736450 () Bool)

(declare-fun lt!1544838 () SeekEntryResult!24)

(assert (=> b!4327958 (= c!736450 ((_ is MissingVacant!24) lt!1544838))))

(declare-fun e!2693051 () Bool)

(declare-fun e!2693046 () Bool)

(assert (=> b!4327958 (= e!2693051 e!2693046)))

(declare-fun b!4327959 () Bool)

(declare-fun e!2693045 () Unit!68075)

(declare-fun Unit!68091 () Unit!68075)

(assert (=> b!4327959 (= e!2693045 Unit!68091)))

(declare-fun b!4327960 () Bool)

(declare-fun e!2693047 () Unit!68075)

(declare-fun Unit!68092 () Unit!68075)

(assert (=> b!4327960 (= e!2693047 Unit!68092)))

(declare-fun lt!1544833 () Unit!68075)

(assert (=> b!4327960 (= lt!1544833 (lemmaInListMapThenSeekEntryOrOpenFindsIt!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544844 () SeekEntryResult!24)

(declare-fun call!300929 () SeekEntryResult!24)

(assert (=> b!4327960 (= lt!1544844 call!300929)))

(declare-fun res!1773507 () Bool)

(assert (=> b!4327960 (= res!1773507 ((_ is Found!24) lt!1544844))))

(declare-fun e!2693050 () Bool)

(assert (=> b!4327960 (=> (not res!1773507) (not e!2693050))))

(assert (=> b!4327960 e!2693050))

(declare-fun lt!1544842 () Unit!68075)

(assert (=> b!4327960 (= lt!1544842 lt!1544833)))

(assert (=> b!4327960 false))

(declare-fun b!4327961 () Bool)

(declare-fun res!1773512 () Bool)

(declare-fun call!300927 () Bool)

(assert (=> b!4327961 (= res!1773512 call!300927)))

(assert (=> b!4327961 (=> (not res!1773512) (not e!2693050))))

(declare-fun b!4327962 () Bool)

(declare-fun e!2693048 () Bool)

(assert (=> b!4327962 (= e!2693048 (not call!300926))))

(declare-fun c!736449 () Bool)

(declare-fun c!736448 () Bool)

(declare-fun bm!300921 () Bool)

(assert (=> bm!300921 (= call!300927 (inRange!0 (ite c!736448 (index!1477 lt!1544844) (ite c!736449 (index!1478 lt!1544838) (index!1479 lt!1544838))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327963 () Bool)

(assert (=> b!4327963 (= e!2693050 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544844)) key!7012))))

(declare-fun b!4327964 () Bool)

(declare-fun res!1773511 () Bool)

(assert (=> b!4327964 (=> (not res!1773511) (not e!2693048))))

(assert (=> b!4327964 (= res!1773511 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1478 lt!1544838)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4327965 () Bool)

(declare-fun res!1773514 () Bool)

(assert (=> b!4327965 (= res!1773514 (= (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1479 lt!1544838)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4327965 (=> (not res!1773514) (not e!2693052))))

(declare-fun b!4327966 () Bool)

(declare-fun lt!1544836 () Unit!68075)

(assert (=> b!4327966 (= e!2693047 lt!1544836)))

(assert (=> b!4327966 (= lt!1544836 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> b!4327966 (= lt!1544838 call!300929)))

(assert (=> b!4327966 (= c!736449 ((_ is MissingZero!24) lt!1544838))))

(assert (=> b!4327966 e!2693051))

(declare-fun bm!300922 () Bool)

(assert (=> bm!300922 (= call!300926 (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 #b00000000000000000000000000000000))))

(declare-fun b!4327967 () Bool)

(assert (=> b!4327967 (= e!2693046 ((_ is Undefined!24) lt!1544838))))

(declare-fun b!4327968 () Bool)

(declare-fun res!1773508 () Bool)

(declare-fun e!2693049 () Bool)

(assert (=> b!4327968 (=> (not res!1773508) (not e!2693049))))

(declare-fun lt!1544832 () tuple2!47492)

(assert (=> b!4327968 (= res!1773508 (contains!10549 (map!10511 (_2!27038 lt!1544832)) key!7012))))

(declare-fun b!4327970 () Bool)

(declare-fun res!1773509 () Bool)

(assert (=> b!4327970 (=> (not res!1773509) (not e!2693048))))

(declare-fun call!300928 () Bool)

(assert (=> b!4327970 (= res!1773509 call!300928)))

(assert (=> b!4327970 (= e!2693051 e!2693048)))

(declare-fun b!4327971 () Bool)

(declare-fun Unit!68093 () Unit!68075)

(assert (=> b!4327971 (= e!2693045 Unit!68093)))

(declare-fun lt!1544837 () Unit!68075)

(declare-fun lemmaArrayContainsKeyThenInListMap!3 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) (_ BitVec 32) Int) Unit!68075)

(assert (=> b!4327971 (= lt!1544837 (lemmaArrayContainsKeyThenInListMap!3 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> b!4327971 (contains!10549 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) key!7012)))

(declare-fun lt!1544831 () Unit!68075)

(assert (=> b!4327971 (= lt!1544831 lt!1544837)))

(assert (=> b!4327971 false))

(declare-fun bm!300923 () Bool)

(assert (=> bm!300923 (= call!300928 call!300927)))

(declare-fun b!4327972 () Bool)

(assert (=> b!4327972 (= e!2693046 e!2693052)))

(declare-fun res!1773506 () Bool)

(assert (=> b!4327972 (= res!1773506 call!300928)))

(assert (=> b!4327972 (=> (not res!1773506) (not e!2693052))))

(declare-fun b!4327973 () Bool)

(assert (=> b!4327973 (= e!2693049 (= (map!10511 (_2!27038 lt!1544832)) (+!379 (map!10511 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (tuple2!47497 key!7012 v!11761))))))

(declare-fun bm!300924 () Bool)

(assert (=> bm!300924 (= call!300929 (seekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327969 () Bool)

(declare-fun res!1773510 () Bool)

(assert (=> b!4327969 (=> (not res!1773510) (not e!2693049))))

(assert (=> b!4327969 (= res!1773510 (valid!3826 (_2!27038 lt!1544832)))))

(declare-fun d!1272095 () Bool)

(assert (=> d!1272095 e!2693049))

(declare-fun res!1773513 () Bool)

(assert (=> d!1272095 (=> (not res!1773513) (not e!2693049))))

(assert (=> d!1272095 (= res!1773513 (_1!27038 lt!1544832))))

(assert (=> d!1272095 (= lt!1544832 (tuple2!47493 true (LongMapFixedSize!9611 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (bvadd (_size!9637 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001) (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (_vacant!4869 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun lt!1544847 () Unit!68075)

(declare-fun lt!1544834 () Unit!68075)

(assert (=> d!1272095 (= lt!1544847 lt!1544834)))

(declare-fun lt!1544846 () array!17472)

(declare-fun lt!1544852 () array!17470)

(assert (=> d!1272095 (contains!10549 (getCurrentListMap!27 lt!1544846 lt!1544852 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (select (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549))))))

(assert (=> d!1272095 (= lt!1544834 (lemmaValidKeyInArrayIsInListMap!17 lt!1544846 lt!1544852 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272095 (= lt!1544852 (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (=> d!1272095 (= lt!1544846 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun lt!1544855 () Unit!68075)

(declare-fun lt!1544849 () Unit!68075)

(assert (=> d!1272095 (= lt!1544855 lt!1544849)))

(declare-fun lt!1544845 () array!17472)

(assert (=> d!1272095 (= (arrayCountValidKeys!0 lt!1544845 (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) (bvadd (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!17472 (_ BitVec 32)) Unit!68075)

(assert (=> d!1272095 (= lt!1544849 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!1544845 (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549))))))

(assert (=> d!1272095 (= lt!1544845 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun lt!1544840 () Unit!68075)

(declare-fun lt!1544859 () Unit!68075)

(assert (=> d!1272095 (= lt!1544840 lt!1544859)))

(declare-fun lt!1544835 () array!17472)

(assert (=> d!1272095 (arrayContainsKey!0 lt!1544835 key!7012 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17472 (_ BitVec 64) (_ BitVec 32)) Unit!68075)

(assert (=> d!1272095 (= lt!1544859 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!1544835 key!7012 (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549))))))

(assert (=> d!1272095 (= lt!1544835 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun lt!1544850 () Unit!68075)

(declare-fun lt!1544854 () Unit!68075)

(assert (=> d!1272095 (= lt!1544850 lt!1544854)))

(assert (=> d!1272095 (= (+!379 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (tuple2!47497 key!7012 v!11761)) (getCurrentListMap!27 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!3 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) (_ BitVec 64) V!9961 Int) Unit!68075)

(assert (=> d!1272095 (= lt!1544854 (lemmaAddValidKeyToArrayThenAddPairToListMap!3 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012 v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544841 () Unit!68075)

(declare-fun lt!1544848 () Unit!68075)

(assert (=> d!1272095 (= lt!1544841 lt!1544848)))

(assert (=> d!1272095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!17472 (_ BitVec 32) (_ BitVec 32)) Unit!68075)

(assert (=> d!1272095 (= lt!1544848 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!7012 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544839 () Unit!68075)

(declare-fun lt!1544858 () Unit!68075)

(assert (=> d!1272095 (= lt!1544839 lt!1544858)))

(assert (=> d!1272095 (= (arrayCountValidKeys!0 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (bvadd (arrayCountValidKeys!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!17472 (_ BitVec 32) (_ BitVec 64)) Unit!68075)

(assert (=> d!1272095 (= lt!1544858 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012))))

(declare-fun lt!1544856 () Unit!68075)

(declare-fun lt!1544843 () Unit!68075)

(assert (=> d!1272095 (= lt!1544856 lt!1544843)))

(declare-fun lt!1544853 () List!48582)

(declare-fun lt!1544851 () (_ BitVec 32))

(assert (=> d!1272095 (arrayNoDuplicates!0 (array!17473 (store (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) key!7012) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544851 lt!1544853)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!17472 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!48582) Unit!68075)

(assert (=> d!1272095 (= lt!1544843 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549)) lt!1544851 lt!1544853))))

(assert (=> d!1272095 (= lt!1544853 Nil!48458)))

(assert (=> d!1272095 (= lt!1544851 #b00000000000000000000000000000000)))

(declare-fun lt!1544860 () Unit!68075)

(assert (=> d!1272095 (= lt!1544860 e!2693045)))

(declare-fun c!736451 () Bool)

(assert (=> d!1272095 (= c!736451 (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) key!7012 #b00000000000000000000000000000000))))

(declare-fun lt!1544857 () Unit!68075)

(assert (=> d!1272095 (= lt!1544857 e!2693047)))

(assert (=> d!1272095 (= c!736448 (contains!10549 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) key!7012))))

(assert (=> d!1272095 (valid!3826 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))

(assert (=> d!1272095 (= (updateHelperNewKey!14 (v!43003 (underlying!9820 (_2!27039 lt!1544464))) key!7012 v!11761 (ite c!736350 (index!1479 lt!1544549) (index!1478 lt!1544549))) lt!1544832)))

(assert (= (and d!1272095 c!736448) b!4327960))

(assert (= (and d!1272095 (not c!736448)) b!4327966))

(assert (= (and b!4327960 res!1773507) b!4327961))

(assert (= (and b!4327961 res!1773512) b!4327963))

(assert (= (and b!4327966 c!736449) b!4327970))

(assert (= (and b!4327966 (not c!736449)) b!4327958))

(assert (= (and b!4327970 res!1773509) b!4327964))

(assert (= (and b!4327964 res!1773511) b!4327962))

(assert (= (and b!4327958 c!736450) b!4327972))

(assert (= (and b!4327958 (not c!736450)) b!4327967))

(assert (= (and b!4327972 res!1773506) b!4327965))

(assert (= (and b!4327965 res!1773514) b!4327957))

(assert (= (or b!4327962 b!4327957) bm!300922))

(assert (= (or b!4327970 b!4327972) bm!300923))

(assert (= (or b!4327961 bm!300923) bm!300921))

(assert (= (or b!4327960 b!4327966) bm!300924))

(assert (= (and d!1272095 c!736451) b!4327971))

(assert (= (and d!1272095 (not c!736451)) b!4327959))

(assert (= (and d!1272095 res!1773513) b!4327969))

(assert (= (and b!4327969 res!1773510) b!4327968))

(assert (= (and b!4327968 res!1773508) b!4327973))

(declare-fun m!4922689 () Bool)

(assert (=> b!4327969 m!4922689))

(declare-fun m!4922691 () Bool)

(assert (=> b!4327971 m!4922691))

(declare-fun m!4922693 () Bool)

(assert (=> b!4327971 m!4922693))

(assert (=> b!4327971 m!4922693))

(declare-fun m!4922695 () Bool)

(assert (=> b!4327971 m!4922695))

(declare-fun m!4922697 () Bool)

(assert (=> b!4327968 m!4922697))

(assert (=> b!4327968 m!4922697))

(declare-fun m!4922699 () Bool)

(assert (=> b!4327968 m!4922699))

(assert (=> b!4327973 m!4922697))

(declare-fun m!4922701 () Bool)

(assert (=> b!4327973 m!4922701))

(assert (=> b!4327973 m!4922701))

(declare-fun m!4922703 () Bool)

(assert (=> b!4327973 m!4922703))

(declare-fun m!4922705 () Bool)

(assert (=> b!4327964 m!4922705))

(assert (=> d!1272095 m!4922693))

(assert (=> d!1272095 m!4922695))

(declare-fun m!4922707 () Bool)

(assert (=> d!1272095 m!4922707))

(declare-fun m!4922709 () Bool)

(assert (=> d!1272095 m!4922709))

(declare-fun m!4922711 () Bool)

(assert (=> d!1272095 m!4922711))

(declare-fun m!4922713 () Bool)

(assert (=> d!1272095 m!4922713))

(assert (=> d!1272095 m!4922711))

(assert (=> d!1272095 m!4922709))

(declare-fun m!4922715 () Bool)

(assert (=> d!1272095 m!4922715))

(declare-fun m!4922717 () Bool)

(assert (=> d!1272095 m!4922717))

(declare-fun m!4922719 () Bool)

(assert (=> d!1272095 m!4922719))

(assert (=> d!1272095 m!4922693))

(declare-fun m!4922721 () Bool)

(assert (=> d!1272095 m!4922721))

(declare-fun m!4922723 () Bool)

(assert (=> d!1272095 m!4922723))

(declare-fun m!4922725 () Bool)

(assert (=> d!1272095 m!4922725))

(declare-fun m!4922727 () Bool)

(assert (=> d!1272095 m!4922727))

(declare-fun m!4922729 () Bool)

(assert (=> d!1272095 m!4922729))

(declare-fun m!4922731 () Bool)

(assert (=> d!1272095 m!4922731))

(declare-fun m!4922733 () Bool)

(assert (=> d!1272095 m!4922733))

(declare-fun m!4922735 () Bool)

(assert (=> d!1272095 m!4922735))

(declare-fun m!4922737 () Bool)

(assert (=> d!1272095 m!4922737))

(declare-fun m!4922739 () Bool)

(assert (=> d!1272095 m!4922739))

(assert (=> d!1272095 m!4922345))

(declare-fun m!4922741 () Bool)

(assert (=> d!1272095 m!4922741))

(assert (=> d!1272095 m!4922363))

(declare-fun m!4922743 () Bool)

(assert (=> d!1272095 m!4922743))

(declare-fun m!4922745 () Bool)

(assert (=> d!1272095 m!4922745))

(assert (=> d!1272095 m!4922693))

(assert (=> b!4327960 m!4922391))

(declare-fun m!4922747 () Bool)

(assert (=> b!4327963 m!4922747))

(assert (=> bm!300922 m!4922345))

(declare-fun m!4922749 () Bool)

(assert (=> bm!300921 m!4922749))

(assert (=> b!4327966 m!4922353))

(declare-fun m!4922751 () Bool)

(assert (=> b!4327965 m!4922751))

(assert (=> bm!300924 m!4922383))

(assert (=> bm!300834 d!1272095))

(declare-fun d!1272097 () Bool)

(declare-fun res!1773515 () Bool)

(declare-fun e!2693053 () Bool)

(assert (=> d!1272097 (=> (not res!1773515) (not e!2693053))))

(assert (=> d!1272097 (= res!1773515 (simpleValid!11 (_2!27038 lt!1544555)))))

(assert (=> d!1272097 (= (valid!3826 (_2!27038 lt!1544555)) e!2693053)))

(declare-fun b!4327974 () Bool)

(declare-fun res!1773516 () Bool)

(assert (=> b!4327974 (=> (not res!1773516) (not e!2693053))))

(assert (=> b!4327974 (= res!1773516 (= (arrayCountValidKeys!0 (_keys!5132 (_2!27038 lt!1544555)) #b00000000000000000000000000000000 (size!35836 (_keys!5132 (_2!27038 lt!1544555)))) (_size!9637 (_2!27038 lt!1544555))))))

(declare-fun b!4327975 () Bool)

(declare-fun res!1773517 () Bool)

(assert (=> b!4327975 (=> (not res!1773517) (not e!2693053))))

(assert (=> b!4327975 (= res!1773517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5132 (_2!27038 lt!1544555)) (mask!13472 (_2!27038 lt!1544555))))))

(declare-fun b!4327976 () Bool)

(assert (=> b!4327976 (= e!2693053 (arrayNoDuplicates!0 (_keys!5132 (_2!27038 lt!1544555)) #b00000000000000000000000000000000 Nil!48458))))

(assert (= (and d!1272097 res!1773515) b!4327974))

(assert (= (and b!4327974 res!1773516) b!4327975))

(assert (= (and b!4327975 res!1773517) b!4327976))

(declare-fun m!4922753 () Bool)

(assert (=> d!1272097 m!4922753))

(declare-fun m!4922755 () Bool)

(assert (=> b!4327974 m!4922755))

(declare-fun m!4922757 () Bool)

(assert (=> b!4327975 m!4922757))

(declare-fun m!4922759 () Bool)

(assert (=> b!4327976 m!4922759))

(assert (=> d!1272043 d!1272097))

(declare-fun d!1272099 () Bool)

(declare-fun res!1773518 () Bool)

(declare-fun e!2693054 () Bool)

(assert (=> d!1272099 (=> (not res!1773518) (not e!2693054))))

(assert (=> d!1272099 (= res!1773518 (simpleValid!11 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272099 (= (valid!3826 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) e!2693054)))

(declare-fun b!4327977 () Bool)

(declare-fun res!1773519 () Bool)

(assert (=> b!4327977 (=> (not res!1773519) (not e!2693054))))

(assert (=> b!4327977 (= res!1773519 (= (arrayCountValidKeys!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (_size!9637 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327978 () Bool)

(declare-fun res!1773520 () Bool)

(assert (=> b!4327978 (=> (not res!1773520) (not e!2693054))))

(assert (=> b!4327978 (= res!1773520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4327979 () Bool)

(assert (=> b!4327979 (= e!2693054 (arrayNoDuplicates!0 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 Nil!48458))))

(assert (= (and d!1272099 res!1773518) b!4327977))

(assert (= (and b!4327977 res!1773519) b!4327978))

(assert (= (and b!4327978 res!1773520) b!4327979))

(declare-fun m!4922761 () Bool)

(assert (=> d!1272099 m!4922761))

(assert (=> b!4327977 m!4922735))

(declare-fun m!4922763 () Bool)

(assert (=> b!4327978 m!4922763))

(declare-fun m!4922765 () Bool)

(assert (=> b!4327979 m!4922765))

(assert (=> d!1272043 d!1272099))

(declare-fun d!1272101 () Bool)

(assert (=> d!1272101 (= (map!10511 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (getCurrentListMap!27 (_keys!5132 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (_values!5106 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (mask!13472 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (extraKeys!5070 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (ite c!736346 (_2!27038 lt!1544555) (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun bs!607556 () Bool)

(assert (= bs!607556 d!1272101))

(declare-fun m!4922767 () Bool)

(assert (=> bs!607556 m!4922767))

(assert (=> bm!300821 d!1272101))

(declare-fun d!1272103 () Bool)

(declare-fun e!2693055 () Bool)

(assert (=> d!1272103 e!2693055))

(declare-fun res!1773521 () Bool)

(assert (=> d!1272103 (=> res!1773521 e!2693055)))

(declare-fun lt!1544861 () Bool)

(assert (=> d!1272103 (= res!1773521 (not lt!1544861))))

(declare-fun lt!1544863 () Bool)

(assert (=> d!1272103 (= lt!1544861 lt!1544863)))

(declare-fun lt!1544862 () Unit!68075)

(declare-fun e!2693056 () Unit!68075)

(assert (=> d!1272103 (= lt!1544862 e!2693056)))

(declare-fun c!736452 () Bool)

(assert (=> d!1272103 (= c!736452 lt!1544863)))

(assert (=> d!1272103 (= lt!1544863 (containsKey!427 (toList!2624 call!300819) key!7012))))

(assert (=> d!1272103 (= (contains!10549 call!300819 key!7012) lt!1544861)))

(declare-fun b!4327980 () Bool)

(declare-fun lt!1544864 () Unit!68075)

(assert (=> b!4327980 (= e!2693056 lt!1544864)))

(assert (=> b!4327980 (= lt!1544864 (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!2624 call!300819) key!7012))))

(assert (=> b!4327980 (isDefined!7629 (getValueByKey!317 (toList!2624 call!300819) key!7012))))

(declare-fun b!4327981 () Bool)

(declare-fun Unit!68094 () Unit!68075)

(assert (=> b!4327981 (= e!2693056 Unit!68094)))

(declare-fun b!4327982 () Bool)

(assert (=> b!4327982 (= e!2693055 (isDefined!7629 (getValueByKey!317 (toList!2624 call!300819) key!7012)))))

(assert (= (and d!1272103 c!736452) b!4327980))

(assert (= (and d!1272103 (not c!736452)) b!4327981))

(assert (= (and d!1272103 (not res!1773521)) b!4327982))

(declare-fun m!4922769 () Bool)

(assert (=> d!1272103 m!4922769))

(declare-fun m!4922771 () Bool)

(assert (=> b!4327980 m!4922771))

(declare-fun m!4922773 () Bool)

(assert (=> b!4327980 m!4922773))

(assert (=> b!4327980 m!4922773))

(declare-fun m!4922775 () Bool)

(assert (=> b!4327980 m!4922775))

(assert (=> b!4327982 m!4922773))

(assert (=> b!4327982 m!4922773))

(assert (=> b!4327982 m!4922775))

(assert (=> b!4327619 d!1272103))

(declare-fun d!1272105 () Bool)

(assert (=> d!1272105 (= (map!10510 (_2!27039 lt!1544597)) (map!10511 (v!43003 (underlying!9820 (_2!27039 lt!1544597)))))))

(declare-fun bs!607557 () Bool)

(assert (= bs!607557 d!1272105))

(declare-fun m!4922777 () Bool)

(assert (=> bs!607557 m!4922777))

(assert (=> b!4327680 d!1272105))

(assert (=> b!4327680 d!1272031))

(declare-fun b!4328025 () Bool)

(declare-fun e!2693089 () Bool)

(declare-fun e!2693087 () Bool)

(assert (=> b!4328025 (= e!2693089 e!2693087)))

(declare-fun res!1773545 () Bool)

(declare-fun call!300944 () Bool)

(assert (=> b!4328025 (= res!1773545 call!300944)))

(assert (=> b!4328025 (=> (not res!1773545) (not e!2693087))))

(declare-fun b!4328026 () Bool)

(declare-fun e!2693094 () Bool)

(declare-fun lt!1544929 () ListLongMap!1247)

(declare-fun apply!11187 (ListLongMap!1247 (_ BitVec 64)) V!9961)

(assert (=> b!4328026 (= e!2693094 (= (apply!11187 lt!1544929 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)) (select (arr!7795 (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546)) #b00000000000000000000000000000000)))))

(assert (=> b!4328026 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35835 (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546))))))

(assert (=> b!4328026 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328027 () Bool)

(declare-fun e!2693083 () Bool)

(declare-fun e!2693090 () Bool)

(assert (=> b!4328027 (= e!2693083 e!2693090)))

(declare-fun res!1773542 () Bool)

(declare-fun call!300949 () Bool)

(assert (=> b!4328027 (= res!1773542 call!300949)))

(assert (=> b!4328027 (=> (not res!1773542) (not e!2693090))))

(declare-fun b!4328028 () Bool)

(assert (=> b!4328028 (= e!2693089 (not call!300944))))

(declare-fun c!736466 () Bool)

(declare-fun call!300950 () ListLongMap!1247)

(declare-fun bm!300939 () Bool)

(declare-fun c!736465 () Bool)

(declare-fun call!300945 () ListLongMap!1247)

(declare-fun call!300947 () ListLongMap!1247)

(declare-fun call!300948 () ListLongMap!1247)

(assert (=> bm!300939 (= call!300950 (+!379 (ite c!736466 call!300948 (ite c!736465 call!300945 call!300947)) (ite (or c!736466 c!736465) (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))))

(declare-fun b!4328029 () Bool)

(declare-fun e!2693092 () Bool)

(assert (=> b!4328029 (= e!2693092 e!2693094)))

(declare-fun res!1773548 () Bool)

(assert (=> b!4328029 (=> (not res!1773548) (not e!2693094))))

(assert (=> b!4328029 (= res!1773548 (contains!10549 lt!1544929 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(assert (=> b!4328029 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328030 () Bool)

(declare-fun e!2693086 () ListLongMap!1247)

(declare-fun call!300946 () ListLongMap!1247)

(assert (=> b!4328030 (= e!2693086 call!300946)))

(declare-fun b!4328031 () Bool)

(declare-fun e!2693093 () Unit!68075)

(declare-fun lt!1544930 () Unit!68075)

(assert (=> b!4328031 (= e!2693093 lt!1544930)))

(declare-fun lt!1544927 () ListLongMap!1247)

(declare-fun getCurrentListMapNoExtraKeys!5 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) Int) ListLongMap!1247)

(assert (=> b!4328031 (= lt!1544927 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544915 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544915 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544928 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544928 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544909 () Unit!68075)

(declare-fun addStillContains!4 (ListLongMap!1247 (_ BitVec 64) V!9961 (_ BitVec 64)) Unit!68075)

(assert (=> b!4328031 (= lt!1544909 (addStillContains!4 lt!1544927 lt!1544915 (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544928))))

(assert (=> b!4328031 (contains!10549 (+!379 lt!1544927 (tuple2!47497 lt!1544915 (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))) lt!1544928)))

(declare-fun lt!1544920 () Unit!68075)

(assert (=> b!4328031 (= lt!1544920 lt!1544909)))

(declare-fun lt!1544922 () ListLongMap!1247)

(assert (=> b!4328031 (= lt!1544922 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544923 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544923 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544925 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544925 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544926 () Unit!68075)

(declare-fun addApplyDifferent!4 (ListLongMap!1247 (_ BitVec 64) V!9961 (_ BitVec 64)) Unit!68075)

(assert (=> b!4328031 (= lt!1544926 (addApplyDifferent!4 lt!1544922 lt!1544923 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544925))))

(assert (=> b!4328031 (= (apply!11187 (+!379 lt!1544922 (tuple2!47497 lt!1544923 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544925) (apply!11187 lt!1544922 lt!1544925))))

(declare-fun lt!1544916 () Unit!68075)

(assert (=> b!4328031 (= lt!1544916 lt!1544926)))

(declare-fun lt!1544913 () ListLongMap!1247)

(assert (=> b!4328031 (= lt!1544913 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544912 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544912 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544924 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544924 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544910 () Unit!68075)

(assert (=> b!4328031 (= lt!1544910 (addApplyDifferent!4 lt!1544913 lt!1544912 (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544924))))

(assert (=> b!4328031 (= (apply!11187 (+!379 lt!1544913 (tuple2!47497 lt!1544912 (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))) lt!1544924) (apply!11187 lt!1544913 lt!1544924))))

(declare-fun lt!1544911 () Unit!68075)

(assert (=> b!4328031 (= lt!1544911 lt!1544910)))

(declare-fun lt!1544921 () ListLongMap!1247)

(assert (=> b!4328031 (= lt!1544921 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544918 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544918 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544919 () (_ BitVec 64))

(assert (=> b!4328031 (= lt!1544919 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(assert (=> b!4328031 (= lt!1544930 (addApplyDifferent!4 lt!1544921 lt!1544918 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544919))))

(assert (=> b!4328031 (= (apply!11187 (+!379 lt!1544921 (tuple2!47497 lt!1544918 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544919) (apply!11187 lt!1544921 lt!1544919))))

(declare-fun bm!300940 () Bool)

(assert (=> bm!300940 (= call!300946 call!300950)))

(declare-fun b!4328032 () Bool)

(declare-fun e!2693088 () ListLongMap!1247)

(assert (=> b!4328032 (= e!2693088 (+!379 call!300950 (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328033 () Bool)

(declare-fun res!1773541 () Bool)

(declare-fun e!2693085 () Bool)

(assert (=> b!4328033 (=> (not res!1773541) (not e!2693085))))

(assert (=> b!4328033 (= res!1773541 e!2693089)))

(declare-fun c!736470 () Bool)

(assert (=> b!4328033 (= c!736470 (not (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4328034 () Bool)

(assert (=> b!4328034 (= e!2693083 (not call!300949))))

(declare-fun c!736469 () Bool)

(declare-fun b!4328035 () Bool)

(assert (=> b!4328035 (= c!736469 (and (not (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2693091 () ListLongMap!1247)

(assert (=> b!4328035 (= e!2693091 e!2693086)))

(declare-fun b!4328036 () Bool)

(assert (=> b!4328036 (= e!2693086 call!300947)))

(declare-fun bm!300942 () Bool)

(assert (=> bm!300942 (= call!300947 call!300945)))

(declare-fun b!4328037 () Bool)

(assert (=> b!4328037 (= e!2693091 call!300946)))

(declare-fun b!4328038 () Bool)

(assert (=> b!4328038 (= e!2693090 (= (apply!11187 lt!1544929 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4328039 () Bool)

(declare-fun e!2693084 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4328039 (= e!2693084 (validKeyInArray!0 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(declare-fun b!4328040 () Bool)

(declare-fun e!2693095 () Bool)

(assert (=> b!4328040 (= e!2693095 (validKeyInArray!0 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(declare-fun bm!300943 () Bool)

(assert (=> bm!300943 (= call!300944 (contains!10549 lt!1544929 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4328041 () Bool)

(declare-fun Unit!68095 () Unit!68075)

(assert (=> b!4328041 (= e!2693093 Unit!68095)))

(declare-fun b!4328042 () Bool)

(assert (=> b!4328042 (= e!2693087 (= (apply!11187 lt!1544929 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun d!1272107 () Bool)

(assert (=> d!1272107 e!2693085))

(declare-fun res!1773540 () Bool)

(assert (=> d!1272107 (=> (not res!1773540) (not e!2693085))))

(assert (=> d!1272107 (= res!1773540 (or (bvsge #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))))

(declare-fun lt!1544914 () ListLongMap!1247)

(assert (=> d!1272107 (= lt!1544929 lt!1544914)))

(declare-fun lt!1544917 () Unit!68075)

(assert (=> d!1272107 (= lt!1544917 e!2693093)))

(declare-fun c!736468 () Bool)

(assert (=> d!1272107 (= c!736468 e!2693095)))

(declare-fun res!1773543 () Bool)

(assert (=> d!1272107 (=> (not res!1773543) (not e!2693095))))

(assert (=> d!1272107 (= res!1773543 (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (=> d!1272107 (= lt!1544914 e!2693088)))

(assert (=> d!1272107 (= c!736466 (and (not (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1272107 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272107 (= (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544929)))

(declare-fun bm!300941 () Bool)

(assert (=> bm!300941 (= call!300948 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (or c!736347 c!736352) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (ite (and c!736347 c!736349) v!11761 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4328043 () Bool)

(assert (=> b!4328043 (= e!2693085 e!2693083)))

(declare-fun c!736467 () Bool)

(assert (=> b!4328043 (= c!736467 (not (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4328044 () Bool)

(assert (=> b!4328044 (= e!2693088 e!2693091)))

(assert (=> b!4328044 (= c!736465 (and (not (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!736347 c!736349) lt!1544548 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!300944 () Bool)

(assert (=> bm!300944 (= call!300945 call!300948)))

(declare-fun b!4328045 () Bool)

(declare-fun res!1773547 () Bool)

(assert (=> b!4328045 (=> (not res!1773547) (not e!2693085))))

(assert (=> b!4328045 (= res!1773547 e!2693092)))

(declare-fun res!1773546 () Bool)

(assert (=> b!4328045 (=> res!1773546 e!2693092)))

(assert (=> b!4328045 (= res!1773546 (not e!2693084))))

(declare-fun res!1773544 () Bool)

(assert (=> b!4328045 (=> (not res!1773544) (not e!2693084))))

(assert (=> b!4328045 (= res!1773544 (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun bm!300945 () Bool)

(assert (=> bm!300945 (= call!300949 (contains!10549 lt!1544929 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!1272107 c!736466) b!4328032))

(assert (= (and d!1272107 (not c!736466)) b!4328044))

(assert (= (and b!4328044 c!736465) b!4328037))

(assert (= (and b!4328044 (not c!736465)) b!4328035))

(assert (= (and b!4328035 c!736469) b!4328030))

(assert (= (and b!4328035 (not c!736469)) b!4328036))

(assert (= (or b!4328030 b!4328036) bm!300942))

(assert (= (or b!4328037 bm!300942) bm!300944))

(assert (= (or b!4328037 b!4328030) bm!300940))

(assert (= (or b!4328032 bm!300944) bm!300941))

(assert (= (or b!4328032 bm!300940) bm!300939))

(assert (= (and d!1272107 res!1773543) b!4328040))

(assert (= (and d!1272107 c!736468) b!4328031))

(assert (= (and d!1272107 (not c!736468)) b!4328041))

(assert (= (and d!1272107 res!1773540) b!4328045))

(assert (= (and b!4328045 res!1773544) b!4328039))

(assert (= (and b!4328045 (not res!1773546)) b!4328029))

(assert (= (and b!4328029 res!1773548) b!4328026))

(assert (= (and b!4328045 res!1773547) b!4328033))

(assert (= (and b!4328033 c!736470) b!4328025))

(assert (= (and b!4328033 (not c!736470)) b!4328028))

(assert (= (and b!4328025 res!1773545) b!4328042))

(assert (= (or b!4328025 b!4328028) bm!300943))

(assert (= (and b!4328033 res!1773541) b!4328043))

(assert (= (and b!4328043 c!736467) b!4328027))

(assert (= (and b!4328043 (not c!736467)) b!4328034))

(assert (= (and b!4328027 res!1773542) b!4328038))

(assert (= (or b!4328027 b!4328034) bm!300945))

(declare-fun m!4922779 () Bool)

(assert (=> b!4328038 m!4922779))

(assert (=> b!4328040 m!4922467))

(assert (=> b!4328040 m!4922467))

(declare-fun m!4922781 () Bool)

(assert (=> b!4328040 m!4922781))

(declare-fun m!4922783 () Bool)

(assert (=> b!4328031 m!4922783))

(declare-fun m!4922785 () Bool)

(assert (=> b!4328031 m!4922785))

(declare-fun m!4922787 () Bool)

(assert (=> b!4328031 m!4922787))

(declare-fun m!4922789 () Bool)

(assert (=> b!4328031 m!4922789))

(declare-fun m!4922791 () Bool)

(assert (=> b!4328031 m!4922791))

(declare-fun m!4922793 () Bool)

(assert (=> b!4328031 m!4922793))

(assert (=> b!4328031 m!4922791))

(declare-fun m!4922795 () Bool)

(assert (=> b!4328031 m!4922795))

(declare-fun m!4922797 () Bool)

(assert (=> b!4328031 m!4922797))

(declare-fun m!4922799 () Bool)

(assert (=> b!4328031 m!4922799))

(assert (=> b!4328031 m!4922783))

(declare-fun m!4922801 () Bool)

(assert (=> b!4328031 m!4922801))

(declare-fun m!4922803 () Bool)

(assert (=> b!4328031 m!4922803))

(declare-fun m!4922805 () Bool)

(assert (=> b!4328031 m!4922805))

(assert (=> b!4328031 m!4922789))

(declare-fun m!4922807 () Bool)

(assert (=> b!4328031 m!4922807))

(declare-fun m!4922809 () Bool)

(assert (=> b!4328031 m!4922809))

(declare-fun m!4922811 () Bool)

(assert (=> b!4328031 m!4922811))

(assert (=> b!4328031 m!4922467))

(declare-fun m!4922813 () Bool)

(assert (=> b!4328031 m!4922813))

(assert (=> b!4328031 m!4922809))

(assert (=> d!1272107 m!4922449))

(declare-fun m!4922815 () Bool)

(assert (=> b!4328032 m!4922815))

(assert (=> b!4328029 m!4922467))

(assert (=> b!4328029 m!4922467))

(declare-fun m!4922817 () Bool)

(assert (=> b!4328029 m!4922817))

(assert (=> bm!300941 m!4922787))

(declare-fun m!4922819 () Bool)

(assert (=> bm!300945 m!4922819))

(declare-fun m!4922821 () Bool)

(assert (=> b!4328042 m!4922821))

(assert (=> b!4328026 m!4922467))

(assert (=> b!4328026 m!4922467))

(declare-fun m!4922823 () Bool)

(assert (=> b!4328026 m!4922823))

(declare-fun m!4922825 () Bool)

(assert (=> b!4328026 m!4922825))

(assert (=> b!4328039 m!4922467))

(assert (=> b!4328039 m!4922467))

(assert (=> b!4328039 m!4922781))

(declare-fun m!4922827 () Bool)

(assert (=> bm!300943 m!4922827))

(declare-fun m!4922829 () Bool)

(assert (=> bm!300939 m!4922829))

(assert (=> bm!300829 d!1272107))

(declare-fun d!1272109 () Bool)

(assert (=> d!1272109 (= (inRange!0 (ite c!736352 (ite c!736354 (index!1477 lt!1544557) (ite c!736344 (index!1478 lt!1544544) (index!1479 lt!1544544))) (ite c!736343 (index!1477 lt!1544532) (ite c!736345 (index!1478 lt!1544541) (index!1479 lt!1544541)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (and (bvsge (ite c!736352 (ite c!736354 (index!1477 lt!1544557) (ite c!736344 (index!1478 lt!1544544) (index!1479 lt!1544544))) (ite c!736343 (index!1477 lt!1544532) (ite c!736345 (index!1478 lt!1544541) (index!1479 lt!1544541)))) #b00000000000000000000000000000000) (bvslt (ite c!736352 (ite c!736354 (index!1477 lt!1544557) (ite c!736344 (index!1478 lt!1544544) (index!1479 lt!1544544))) (ite c!736343 (index!1477 lt!1544532) (ite c!736345 (index!1478 lt!1544541) (index!1479 lt!1544541)))) (bvadd (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001))))))

(assert (=> bm!300830 d!1272109))

(declare-fun d!1272111 () Bool)

(declare-fun e!2693096 () Bool)

(assert (=> d!1272111 e!2693096))

(declare-fun res!1773549 () Bool)

(assert (=> d!1272111 (=> (not res!1773549) (not e!2693096))))

(declare-fun lt!1544932 () ListLongMap!1247)

(assert (=> d!1272111 (= res!1773549 (contains!10549 lt!1544932 (_1!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761)))))))

(declare-fun lt!1544931 () List!48581)

(assert (=> d!1272111 (= lt!1544932 (ListLongMap!1248 lt!1544931))))

(declare-fun lt!1544933 () Unit!68075)

(declare-fun lt!1544934 () Unit!68075)

(assert (=> d!1272111 (= lt!1544933 lt!1544934)))

(assert (=> d!1272111 (= (getValueByKey!317 lt!1544931 (_1!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761)))) (Some!10330 (_2!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761)))))))

(assert (=> d!1272111 (= lt!1544934 (lemmaContainsTupThenGetReturnValue!110 lt!1544931 (_1!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761))) (_2!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761)))))))

(assert (=> d!1272111 (= lt!1544931 (insertStrictlySorted!65 (toList!2624 (ite c!736347 (ite c!736349 call!300832 call!300824) call!300839)) (_1!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761))) (_2!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761)))))))

(assert (=> d!1272111 (= (+!379 (ite c!736347 (ite c!736349 call!300832 call!300824) call!300839) (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761))) lt!1544932)))

(declare-fun b!4328046 () Bool)

(declare-fun res!1773550 () Bool)

(assert (=> b!4328046 (=> (not res!1773550) (not e!2693096))))

(assert (=> b!4328046 (= res!1773550 (= (getValueByKey!317 (toList!2624 lt!1544932) (_1!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761)))) (Some!10330 (_2!27040 (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761))))))))

(declare-fun b!4328047 () Bool)

(assert (=> b!4328047 (= e!2693096 (contains!10550 (toList!2624 lt!1544932) (ite c!736347 (ite c!736349 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (tuple2!47497 key!7012 v!11761))))))

(assert (= (and d!1272111 res!1773549) b!4328046))

(assert (= (and b!4328046 res!1773550) b!4328047))

(declare-fun m!4922831 () Bool)

(assert (=> d!1272111 m!4922831))

(declare-fun m!4922833 () Bool)

(assert (=> d!1272111 m!4922833))

(declare-fun m!4922835 () Bool)

(assert (=> d!1272111 m!4922835))

(declare-fun m!4922837 () Bool)

(assert (=> d!1272111 m!4922837))

(declare-fun m!4922839 () Bool)

(assert (=> b!4328046 m!4922839))

(declare-fun m!4922841 () Bool)

(assert (=> b!4328047 m!4922841))

(assert (=> bm!300837 d!1272111))

(declare-fun d!1272113 () Bool)

(declare-fun e!2693097 () Bool)

(assert (=> d!1272113 e!2693097))

(declare-fun res!1773551 () Bool)

(assert (=> d!1272113 (=> (not res!1773551) (not e!2693097))))

(declare-fun lt!1544936 () ListLongMap!1247)

(assert (=> d!1272113 (= res!1773551 (contains!10549 lt!1544936 (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun lt!1544935 () List!48581)

(assert (=> d!1272113 (= lt!1544936 (ListLongMap!1248 lt!1544935))))

(declare-fun lt!1544937 () Unit!68075)

(declare-fun lt!1544938 () Unit!68075)

(assert (=> d!1272113 (= lt!1544937 lt!1544938)))

(assert (=> d!1272113 (= (getValueByKey!317 lt!1544935 (_1!27040 (tuple2!47497 key!7012 v!11761))) (Some!10330 (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(assert (=> d!1272113 (= lt!1544938 (lemmaContainsTupThenGetReturnValue!110 lt!1544935 (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(assert (=> d!1272113 (= lt!1544935 (insertStrictlySorted!65 (toList!2624 call!300825) (_1!27040 (tuple2!47497 key!7012 v!11761)) (_2!27040 (tuple2!47497 key!7012 v!11761))))))

(assert (=> d!1272113 (= (+!379 call!300825 (tuple2!47497 key!7012 v!11761)) lt!1544936)))

(declare-fun b!4328048 () Bool)

(declare-fun res!1773552 () Bool)

(assert (=> b!4328048 (=> (not res!1773552) (not e!2693097))))

(assert (=> b!4328048 (= res!1773552 (= (getValueByKey!317 (toList!2624 lt!1544936) (_1!27040 (tuple2!47497 key!7012 v!11761))) (Some!10330 (_2!27040 (tuple2!47497 key!7012 v!11761)))))))

(declare-fun b!4328049 () Bool)

(assert (=> b!4328049 (= e!2693097 (contains!10550 (toList!2624 lt!1544936) (tuple2!47497 key!7012 v!11761)))))

(assert (= (and d!1272113 res!1773551) b!4328048))

(assert (= (and b!4328048 res!1773552) b!4328049))

(declare-fun m!4922843 () Bool)

(assert (=> d!1272113 m!4922843))

(declare-fun m!4922845 () Bool)

(assert (=> d!1272113 m!4922845))

(declare-fun m!4922847 () Bool)

(assert (=> d!1272113 m!4922847))

(declare-fun m!4922849 () Bool)

(assert (=> d!1272113 m!4922849))

(declare-fun m!4922851 () Bool)

(assert (=> b!4328048 m!4922851))

(declare-fun m!4922853 () Bool)

(assert (=> b!4328049 m!4922853))

(assert (=> b!4327633 d!1272113))

(declare-fun d!1272115 () Bool)

(assert (=> d!1272115 (= (+!379 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 v!11761)) (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544548 v!11761 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544941 () Unit!68075)

(declare-fun choose!26464 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 V!9961 Int) Unit!68075)

(assert (=> d!1272115 (= lt!1544941 (choose!26464 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544548 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272115 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272115 (= (lemmaChangeZeroKeyThenAddPairToListMap!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544548 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544941)))

(declare-fun bs!607558 () Bool)

(assert (= bs!607558 d!1272115))

(assert (=> bs!607558 m!4922693))

(declare-fun m!4922855 () Bool)

(assert (=> bs!607558 m!4922855))

(declare-fun m!4922857 () Bool)

(assert (=> bs!607558 m!4922857))

(assert (=> bs!607558 m!4922449))

(declare-fun m!4922859 () Bool)

(assert (=> bs!607558 m!4922859))

(assert (=> bs!607558 m!4922693))

(assert (=> b!4327648 d!1272115))

(declare-fun c!736471 () Bool)

(declare-fun d!1272117 () Bool)

(assert (=> d!1272117 (= c!736471 (and ((_ is Cons!48457) (toList!2624 lt!1544568)) (= (_1!27040 (h!53926 (toList!2624 lt!1544568))) (_1!27040 (tuple2!47497 key!7012 v!11761)))))))

(declare-fun e!2693098 () Option!10331)

(assert (=> d!1272117 (= (getValueByKey!317 (toList!2624 lt!1544568) (_1!27040 (tuple2!47497 key!7012 v!11761))) e!2693098)))

(declare-fun b!4328053 () Bool)

(declare-fun e!2693099 () Option!10331)

(assert (=> b!4328053 (= e!2693099 None!10330)))

(declare-fun b!4328052 () Bool)

(assert (=> b!4328052 (= e!2693099 (getValueByKey!317 (t!355491 (toList!2624 lt!1544568)) (_1!27040 (tuple2!47497 key!7012 v!11761))))))

(declare-fun b!4328050 () Bool)

(assert (=> b!4328050 (= e!2693098 (Some!10330 (_2!27040 (h!53926 (toList!2624 lt!1544568)))))))

(declare-fun b!4328051 () Bool)

(assert (=> b!4328051 (= e!2693098 e!2693099)))

(declare-fun c!736472 () Bool)

(assert (=> b!4328051 (= c!736472 (and ((_ is Cons!48457) (toList!2624 lt!1544568)) (not (= (_1!27040 (h!53926 (toList!2624 lt!1544568))) (_1!27040 (tuple2!47497 key!7012 v!11761))))))))

(assert (= (and d!1272117 c!736471) b!4328050))

(assert (= (and d!1272117 (not c!736471)) b!4328051))

(assert (= (and b!4328051 c!736472) b!4328052))

(assert (= (and b!4328051 (not c!736472)) b!4328053))

(declare-fun m!4922861 () Bool)

(assert (=> b!4328052 m!4922861))

(assert (=> b!4327653 d!1272117))

(declare-fun d!1272119 () Bool)

(declare-fun e!2693100 () Bool)

(assert (=> d!1272119 e!2693100))

(declare-fun res!1773553 () Bool)

(assert (=> d!1272119 (=> res!1773553 e!2693100)))

(declare-fun lt!1544942 () Bool)

(assert (=> d!1272119 (= res!1773553 (not lt!1544942))))

(declare-fun lt!1544944 () Bool)

(assert (=> d!1272119 (= lt!1544942 lt!1544944)))

(declare-fun lt!1544943 () Unit!68075)

(declare-fun e!2693101 () Unit!68075)

(assert (=> d!1272119 (= lt!1544943 e!2693101)))

(declare-fun c!736473 () Bool)

(assert (=> d!1272119 (= c!736473 lt!1544944)))

(assert (=> d!1272119 (= lt!1544944 (containsKey!427 (toList!2624 call!300823) (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549))))))

(assert (=> d!1272119 (= (contains!10549 call!300823 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549))) lt!1544942)))

(declare-fun b!4328054 () Bool)

(declare-fun lt!1544945 () Unit!68075)

(assert (=> b!4328054 (= e!2693101 lt!1544945)))

(assert (=> b!4328054 (= lt!1544945 (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!2624 call!300823) (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549))))))

(assert (=> b!4328054 (isDefined!7629 (getValueByKey!317 (toList!2624 call!300823) (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549))))))

(declare-fun b!4328055 () Bool)

(declare-fun Unit!68096 () Unit!68075)

(assert (=> b!4328055 (= e!2693101 Unit!68096)))

(declare-fun b!4328056 () Bool)

(assert (=> b!4328056 (= e!2693100 (isDefined!7629 (getValueByKey!317 (toList!2624 call!300823) (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549)))))))

(assert (= (and d!1272119 c!736473) b!4328054))

(assert (= (and d!1272119 (not c!736473)) b!4328055))

(assert (= (and d!1272119 (not res!1773553)) b!4328056))

(assert (=> d!1272119 m!4922369))

(declare-fun m!4922863 () Bool)

(assert (=> d!1272119 m!4922863))

(assert (=> b!4328054 m!4922369))

(declare-fun m!4922865 () Bool)

(assert (=> b!4328054 m!4922865))

(assert (=> b!4328054 m!4922369))

(declare-fun m!4922867 () Bool)

(assert (=> b!4328054 m!4922867))

(assert (=> b!4328054 m!4922867))

(declare-fun m!4922869 () Bool)

(assert (=> b!4328054 m!4922869))

(assert (=> b!4328056 m!4922369))

(assert (=> b!4328056 m!4922867))

(assert (=> b!4328056 m!4922867))

(assert (=> b!4328056 m!4922869))

(assert (=> b!4327644 d!1272119))

(declare-fun d!1272121 () Bool)

(declare-fun e!2693104 () Bool)

(assert (=> d!1272121 e!2693104))

(declare-fun res!1773556 () Bool)

(assert (=> d!1272121 (=> (not res!1773556) (not e!2693104))))

(assert (=> d!1272121 (= res!1773556 (and (bvsge (index!1477 lt!1544549) #b00000000000000000000000000000000) (bvslt (index!1477 lt!1544549) (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))))

(declare-fun lt!1544948 () Unit!68075)

(declare-fun choose!26465 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) Int) Unit!68075)

(assert (=> d!1272121 (= lt!1544948 (choose!26465 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (index!1477 lt!1544549) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272121 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272121 (= (lemmaValidKeyInArrayIsInListMap!17 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (index!1477 lt!1544549) (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544948)))

(declare-fun b!4328059 () Bool)

(assert (=> b!4328059 (= e!2693104 (contains!10549 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544546 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549))))))

(assert (= (and d!1272121 res!1773556) b!4328059))

(declare-fun m!4922871 () Bool)

(assert (=> d!1272121 m!4922871))

(assert (=> d!1272121 m!4922449))

(declare-fun m!4922873 () Bool)

(assert (=> b!4328059 m!4922873))

(assert (=> b!4328059 m!4922369))

(assert (=> b!4328059 m!4922873))

(assert (=> b!4328059 m!4922369))

(declare-fun m!4922875 () Bool)

(assert (=> b!4328059 m!4922875))

(assert (=> b!4327644 d!1272121))

(declare-fun b!4328060 () Bool)

(declare-fun e!2693111 () Bool)

(declare-fun e!2693109 () Bool)

(assert (=> b!4328060 (= e!2693111 e!2693109)))

(declare-fun res!1773562 () Bool)

(declare-fun call!300951 () Bool)

(assert (=> b!4328060 (= res!1773562 call!300951)))

(assert (=> b!4328060 (=> (not res!1773562) (not e!2693109))))

(declare-fun lt!1544969 () ListLongMap!1247)

(declare-fun e!2693116 () Bool)

(declare-fun b!4328061 () Bool)

(assert (=> b!4328061 (= e!2693116 (= (apply!11187 lt!1544969 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)) (select (arr!7795 (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))) #b00000000000000000000000000000000)))))

(assert (=> b!4328061 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35835 (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))))

(assert (=> b!4328061 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328062 () Bool)

(declare-fun e!2693105 () Bool)

(declare-fun e!2693112 () Bool)

(assert (=> b!4328062 (= e!2693105 e!2693112)))

(declare-fun res!1773559 () Bool)

(declare-fun call!300956 () Bool)

(assert (=> b!4328062 (= res!1773559 call!300956)))

(assert (=> b!4328062 (=> (not res!1773559) (not e!2693112))))

(declare-fun b!4328063 () Bool)

(assert (=> b!4328063 (= e!2693111 (not call!300951))))

(declare-fun call!300957 () ListLongMap!1247)

(declare-fun call!300955 () ListLongMap!1247)

(declare-fun c!736475 () Bool)

(declare-fun bm!300946 () Bool)

(declare-fun call!300954 () ListLongMap!1247)

(declare-fun call!300952 () ListLongMap!1247)

(declare-fun c!736474 () Bool)

(assert (=> bm!300946 (= call!300957 (+!379 (ite c!736475 call!300955 (ite c!736474 call!300952 call!300954)) (ite (or c!736475 c!736474) (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))))

(declare-fun b!4328064 () Bool)

(declare-fun e!2693114 () Bool)

(assert (=> b!4328064 (= e!2693114 e!2693116)))

(declare-fun res!1773565 () Bool)

(assert (=> b!4328064 (=> (not res!1773565) (not e!2693116))))

(assert (=> b!4328064 (= res!1773565 (contains!10549 lt!1544969 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(assert (=> b!4328064 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328065 () Bool)

(declare-fun e!2693108 () ListLongMap!1247)

(declare-fun call!300953 () ListLongMap!1247)

(assert (=> b!4328065 (= e!2693108 call!300953)))

(declare-fun b!4328066 () Bool)

(declare-fun e!2693115 () Unit!68075)

(declare-fun lt!1544970 () Unit!68075)

(assert (=> b!4328066 (= e!2693115 lt!1544970)))

(declare-fun lt!1544967 () ListLongMap!1247)

(assert (=> b!4328066 (= lt!1544967 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544955 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544955 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544968 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544968 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544949 () Unit!68075)

(assert (=> b!4328066 (= lt!1544949 (addStillContains!4 lt!1544967 lt!1544955 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544968))))

(assert (=> b!4328066 (contains!10549 (+!379 lt!1544967 (tuple2!47497 lt!1544955 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544968)))

(declare-fun lt!1544960 () Unit!68075)

(assert (=> b!4328066 (= lt!1544960 lt!1544949)))

(declare-fun lt!1544962 () ListLongMap!1247)

(assert (=> b!4328066 (= lt!1544962 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544963 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544963 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544965 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544965 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544966 () Unit!68075)

(assert (=> b!4328066 (= lt!1544966 (addApplyDifferent!4 lt!1544962 lt!1544963 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544965))))

(assert (=> b!4328066 (= (apply!11187 (+!379 lt!1544962 (tuple2!47497 lt!1544963 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544965) (apply!11187 lt!1544962 lt!1544965))))

(declare-fun lt!1544956 () Unit!68075)

(assert (=> b!4328066 (= lt!1544956 lt!1544966)))

(declare-fun lt!1544953 () ListLongMap!1247)

(assert (=> b!4328066 (= lt!1544953 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544952 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544952 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544964 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544964 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544950 () Unit!68075)

(assert (=> b!4328066 (= lt!1544950 (addApplyDifferent!4 lt!1544953 lt!1544952 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544964))))

(assert (=> b!4328066 (= (apply!11187 (+!379 lt!1544953 (tuple2!47497 lt!1544952 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544964) (apply!11187 lt!1544953 lt!1544964))))

(declare-fun lt!1544951 () Unit!68075)

(assert (=> b!4328066 (= lt!1544951 lt!1544950)))

(declare-fun lt!1544961 () ListLongMap!1247)

(assert (=> b!4328066 (= lt!1544961 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544958 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544958 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544959 () (_ BitVec 64))

(assert (=> b!4328066 (= lt!1544959 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(assert (=> b!4328066 (= lt!1544970 (addApplyDifferent!4 lt!1544961 lt!1544958 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544959))))

(assert (=> b!4328066 (= (apply!11187 (+!379 lt!1544961 (tuple2!47497 lt!1544958 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544959) (apply!11187 lt!1544961 lt!1544959))))

(declare-fun bm!300947 () Bool)

(assert (=> bm!300947 (= call!300953 call!300957)))

(declare-fun b!4328067 () Bool)

(declare-fun e!2693110 () ListLongMap!1247)

(assert (=> b!4328067 (= e!2693110 (+!379 call!300957 (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328068 () Bool)

(declare-fun res!1773558 () Bool)

(declare-fun e!2693107 () Bool)

(assert (=> b!4328068 (=> (not res!1773558) (not e!2693107))))

(assert (=> b!4328068 (= res!1773558 e!2693111)))

(declare-fun c!736479 () Bool)

(assert (=> b!4328068 (= c!736479 (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4328069 () Bool)

(assert (=> b!4328069 (= e!2693105 (not call!300956))))

(declare-fun b!4328070 () Bool)

(declare-fun c!736478 () Bool)

(assert (=> b!4328070 (= c!736478 (and (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2693113 () ListLongMap!1247)

(assert (=> b!4328070 (= e!2693113 e!2693108)))

(declare-fun b!4328071 () Bool)

(assert (=> b!4328071 (= e!2693108 call!300954)))

(declare-fun bm!300949 () Bool)

(assert (=> bm!300949 (= call!300954 call!300952)))

(declare-fun b!4328072 () Bool)

(assert (=> b!4328072 (= e!2693113 call!300953)))

(declare-fun b!4328073 () Bool)

(assert (=> b!4328073 (= e!2693112 (= (apply!11187 lt!1544969 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4328074 () Bool)

(declare-fun e!2693106 () Bool)

(assert (=> b!4328074 (= e!2693106 (validKeyInArray!0 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(declare-fun b!4328075 () Bool)

(declare-fun e!2693117 () Bool)

(assert (=> b!4328075 (= e!2693117 (validKeyInArray!0 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(declare-fun bm!300950 () Bool)

(assert (=> bm!300950 (= call!300951 (contains!10549 lt!1544969 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4328076 () Bool)

(declare-fun Unit!68097 () Unit!68075)

(assert (=> b!4328076 (= e!2693115 Unit!68097)))

(declare-fun b!4328077 () Bool)

(assert (=> b!4328077 (= e!2693109 (= (apply!11187 lt!1544969 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun d!1272123 () Bool)

(assert (=> d!1272123 e!2693107))

(declare-fun res!1773557 () Bool)

(assert (=> d!1272123 (=> (not res!1773557) (not e!2693107))))

(assert (=> d!1272123 (= res!1773557 (or (bvsge #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))))

(declare-fun lt!1544954 () ListLongMap!1247)

(assert (=> d!1272123 (= lt!1544969 lt!1544954)))

(declare-fun lt!1544957 () Unit!68075)

(assert (=> d!1272123 (= lt!1544957 e!2693115)))

(declare-fun c!736477 () Bool)

(assert (=> d!1272123 (= c!736477 e!2693117)))

(declare-fun res!1773560 () Bool)

(assert (=> d!1272123 (=> (not res!1773560) (not e!2693117))))

(assert (=> d!1272123 (= res!1773560 (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (=> d!1272123 (= lt!1544954 e!2693110)))

(assert (=> d!1272123 (= c!736475 (and (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1272123 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272123 (= (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544969)))

(declare-fun bm!300948 () Bool)

(assert (=> bm!300948 (= call!300955 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4328078 () Bool)

(assert (=> b!4328078 (= e!2693107 e!2693105)))

(declare-fun c!736476 () Bool)

(assert (=> b!4328078 (= c!736476 (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4328079 () Bool)

(assert (=> b!4328079 (= e!2693110 e!2693113)))

(assert (=> b!4328079 (= c!736474 (and (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!300951 () Bool)

(assert (=> bm!300951 (= call!300952 call!300955)))

(declare-fun b!4328080 () Bool)

(declare-fun res!1773564 () Bool)

(assert (=> b!4328080 (=> (not res!1773564) (not e!2693107))))

(assert (=> b!4328080 (= res!1773564 e!2693114)))

(declare-fun res!1773563 () Bool)

(assert (=> b!4328080 (=> res!1773563 e!2693114)))

(assert (=> b!4328080 (= res!1773563 (not e!2693106))))

(declare-fun res!1773561 () Bool)

(assert (=> b!4328080 (=> (not res!1773561) (not e!2693106))))

(assert (=> b!4328080 (= res!1773561 (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun bm!300952 () Bool)

(assert (=> bm!300952 (= call!300956 (contains!10549 lt!1544969 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!1272123 c!736475) b!4328067))

(assert (= (and d!1272123 (not c!736475)) b!4328079))

(assert (= (and b!4328079 c!736474) b!4328072))

(assert (= (and b!4328079 (not c!736474)) b!4328070))

(assert (= (and b!4328070 c!736478) b!4328065))

(assert (= (and b!4328070 (not c!736478)) b!4328071))

(assert (= (or b!4328065 b!4328071) bm!300949))

(assert (= (or b!4328072 bm!300949) bm!300951))

(assert (= (or b!4328072 b!4328065) bm!300947))

(assert (= (or b!4328067 bm!300951) bm!300948))

(assert (= (or b!4328067 bm!300947) bm!300946))

(assert (= (and d!1272123 res!1773560) b!4328075))

(assert (= (and d!1272123 c!736477) b!4328066))

(assert (= (and d!1272123 (not c!736477)) b!4328076))

(assert (= (and d!1272123 res!1773557) b!4328080))

(assert (= (and b!4328080 res!1773561) b!4328074))

(assert (= (and b!4328080 (not res!1773563)) b!4328064))

(assert (= (and b!4328064 res!1773565) b!4328061))

(assert (= (and b!4328080 res!1773564) b!4328068))

(assert (= (and b!4328068 c!736479) b!4328060))

(assert (= (and b!4328068 (not c!736479)) b!4328063))

(assert (= (and b!4328060 res!1773562) b!4328077))

(assert (= (or b!4328060 b!4328063) bm!300950))

(assert (= (and b!4328068 res!1773558) b!4328078))

(assert (= (and b!4328078 c!736476) b!4328062))

(assert (= (and b!4328078 (not c!736476)) b!4328069))

(assert (= (and b!4328062 res!1773559) b!4328073))

(assert (= (or b!4328062 b!4328069) bm!300952))

(declare-fun m!4922877 () Bool)

(assert (=> b!4328073 m!4922877))

(assert (=> b!4328075 m!4922467))

(assert (=> b!4328075 m!4922467))

(assert (=> b!4328075 m!4922781))

(declare-fun m!4922879 () Bool)

(assert (=> b!4328066 m!4922879))

(declare-fun m!4922881 () Bool)

(assert (=> b!4328066 m!4922881))

(declare-fun m!4922883 () Bool)

(assert (=> b!4328066 m!4922883))

(declare-fun m!4922885 () Bool)

(assert (=> b!4328066 m!4922885))

(declare-fun m!4922887 () Bool)

(assert (=> b!4328066 m!4922887))

(declare-fun m!4922889 () Bool)

(assert (=> b!4328066 m!4922889))

(assert (=> b!4328066 m!4922887))

(declare-fun m!4922891 () Bool)

(assert (=> b!4328066 m!4922891))

(declare-fun m!4922893 () Bool)

(assert (=> b!4328066 m!4922893))

(declare-fun m!4922895 () Bool)

(assert (=> b!4328066 m!4922895))

(assert (=> b!4328066 m!4922879))

(declare-fun m!4922897 () Bool)

(assert (=> b!4328066 m!4922897))

(declare-fun m!4922899 () Bool)

(assert (=> b!4328066 m!4922899))

(declare-fun m!4922901 () Bool)

(assert (=> b!4328066 m!4922901))

(assert (=> b!4328066 m!4922885))

(declare-fun m!4922903 () Bool)

(assert (=> b!4328066 m!4922903))

(declare-fun m!4922905 () Bool)

(assert (=> b!4328066 m!4922905))

(declare-fun m!4922907 () Bool)

(assert (=> b!4328066 m!4922907))

(assert (=> b!4328066 m!4922467))

(declare-fun m!4922909 () Bool)

(assert (=> b!4328066 m!4922909))

(assert (=> b!4328066 m!4922905))

(assert (=> d!1272123 m!4922449))

(declare-fun m!4922911 () Bool)

(assert (=> b!4328067 m!4922911))

(assert (=> b!4328064 m!4922467))

(assert (=> b!4328064 m!4922467))

(declare-fun m!4922913 () Bool)

(assert (=> b!4328064 m!4922913))

(assert (=> bm!300948 m!4922883))

(declare-fun m!4922915 () Bool)

(assert (=> bm!300952 m!4922915))

(declare-fun m!4922917 () Bool)

(assert (=> b!4328077 m!4922917))

(assert (=> b!4328061 m!4922467))

(assert (=> b!4328061 m!4922467))

(declare-fun m!4922919 () Bool)

(assert (=> b!4328061 m!4922919))

(declare-fun m!4922921 () Bool)

(assert (=> b!4328061 m!4922921))

(assert (=> b!4328074 m!4922467))

(assert (=> b!4328074 m!4922467))

(assert (=> b!4328074 m!4922781))

(declare-fun m!4922923 () Bool)

(assert (=> bm!300950 m!4922923))

(declare-fun m!4922925 () Bool)

(assert (=> bm!300946 m!4922925))

(assert (=> b!4327644 d!1272123))

(declare-fun d!1272125 () Bool)

(declare-fun e!2693120 () Bool)

(assert (=> d!1272125 e!2693120))

(declare-fun res!1773568 () Bool)

(assert (=> d!1272125 (=> (not res!1773568) (not e!2693120))))

(assert (=> d!1272125 (= res!1773568 (and (bvsge (index!1477 lt!1544549) #b00000000000000000000000000000000) (bvslt (index!1477 lt!1544549) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))))

(declare-fun lt!1544973 () Unit!68075)

(declare-fun choose!26466 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 32) (_ BitVec 64) V!9961 Int) Unit!68075)

(assert (=> d!1272125 (= lt!1544973 (choose!26466 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (index!1477 lt!1544549) key!7012 v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272125 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272125 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (index!1477 lt!1544549) key!7012 v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544973)))

(declare-fun b!4328083 () Bool)

(assert (=> b!4328083 (= e!2693120 (= (+!379 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (tuple2!47497 key!7012 v!11761)) (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (array!17471 (store (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (index!1477 lt!1544549) v!11761) (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (= (and d!1272125 res!1773568) b!4328083))

(declare-fun m!4922927 () Bool)

(assert (=> d!1272125 m!4922927))

(assert (=> d!1272125 m!4922449))

(assert (=> b!4328083 m!4922693))

(assert (=> b!4328083 m!4922693))

(assert (=> b!4328083 m!4922721))

(assert (=> b!4328083 m!4922377))

(assert (=> b!4328083 m!4922375))

(assert (=> b!4327644 d!1272125))

(declare-fun d!1272127 () Bool)

(declare-fun res!1773573 () Bool)

(declare-fun e!2693125 () Bool)

(assert (=> d!1272127 (=> res!1773573 e!2693125)))

(assert (=> d!1272127 (= res!1773573 (and ((_ is Cons!48457) (toList!2624 lt!1544463)) (= (_1!27040 (h!53926 (toList!2624 lt!1544463))) key!7012)))))

(assert (=> d!1272127 (= (containsKey!427 (toList!2624 lt!1544463) key!7012) e!2693125)))

(declare-fun b!4328088 () Bool)

(declare-fun e!2693126 () Bool)

(assert (=> b!4328088 (= e!2693125 e!2693126)))

(declare-fun res!1773574 () Bool)

(assert (=> b!4328088 (=> (not res!1773574) (not e!2693126))))

(assert (=> b!4328088 (= res!1773574 (and (or (not ((_ is Cons!48457) (toList!2624 lt!1544463))) (bvsle (_1!27040 (h!53926 (toList!2624 lt!1544463))) key!7012)) ((_ is Cons!48457) (toList!2624 lt!1544463)) (bvslt (_1!27040 (h!53926 (toList!2624 lt!1544463))) key!7012)))))

(declare-fun b!4328089 () Bool)

(assert (=> b!4328089 (= e!2693126 (containsKey!427 (t!355491 (toList!2624 lt!1544463)) key!7012))))

(assert (= (and d!1272127 (not res!1773573)) b!4328088))

(assert (= (and b!4328088 res!1773574) b!4328089))

(declare-fun m!4922929 () Bool)

(assert (=> b!4328089 m!4922929))

(assert (=> d!1272033 d!1272127))

(declare-fun d!1272129 () Bool)

(declare-fun lt!1544976 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7580 (List!48581) (InoxSet tuple2!47496))

(assert (=> d!1272129 (= lt!1544976 (select (content!7580 (toList!2624 lt!1544568)) (tuple2!47497 key!7012 v!11761)))))

(declare-fun e!2693132 () Bool)

(assert (=> d!1272129 (= lt!1544976 e!2693132)))

(declare-fun res!1773579 () Bool)

(assert (=> d!1272129 (=> (not res!1773579) (not e!2693132))))

(assert (=> d!1272129 (= res!1773579 ((_ is Cons!48457) (toList!2624 lt!1544568)))))

(assert (=> d!1272129 (= (contains!10550 (toList!2624 lt!1544568) (tuple2!47497 key!7012 v!11761)) lt!1544976)))

(declare-fun b!4328094 () Bool)

(declare-fun e!2693131 () Bool)

(assert (=> b!4328094 (= e!2693132 e!2693131)))

(declare-fun res!1773580 () Bool)

(assert (=> b!4328094 (=> res!1773580 e!2693131)))

(assert (=> b!4328094 (= res!1773580 (= (h!53926 (toList!2624 lt!1544568)) (tuple2!47497 key!7012 v!11761)))))

(declare-fun b!4328095 () Bool)

(assert (=> b!4328095 (= e!2693131 (contains!10550 (t!355491 (toList!2624 lt!1544568)) (tuple2!47497 key!7012 v!11761)))))

(assert (= (and d!1272129 res!1773579) b!4328094))

(assert (= (and b!4328094 (not res!1773580)) b!4328095))

(declare-fun m!4922931 () Bool)

(assert (=> d!1272129 m!4922931))

(declare-fun m!4922933 () Bool)

(assert (=> d!1272129 m!4922933))

(declare-fun m!4922935 () Bool)

(assert (=> b!4328095 m!4922935))

(assert (=> b!4327654 d!1272129))

(declare-fun b!4328096 () Bool)

(declare-fun e!2693139 () Bool)

(declare-fun e!2693137 () Bool)

(assert (=> b!4328096 (= e!2693139 e!2693137)))

(declare-fun res!1773586 () Bool)

(declare-fun call!300958 () Bool)

(assert (=> b!4328096 (= res!1773586 call!300958)))

(assert (=> b!4328096 (=> (not res!1773586) (not e!2693137))))

(declare-fun b!4328097 () Bool)

(declare-fun e!2693144 () Bool)

(declare-fun lt!1544997 () ListLongMap!1247)

(assert (=> b!4328097 (= e!2693144 (= (apply!11187 lt!1544997 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)) (select (arr!7795 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(assert (=> b!4328097 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35835 (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (=> b!4328097 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328098 () Bool)

(declare-fun e!2693133 () Bool)

(declare-fun e!2693140 () Bool)

(assert (=> b!4328098 (= e!2693133 e!2693140)))

(declare-fun res!1773583 () Bool)

(declare-fun call!300963 () Bool)

(assert (=> b!4328098 (= res!1773583 call!300963)))

(assert (=> b!4328098 (=> (not res!1773583) (not e!2693140))))

(declare-fun b!4328099 () Bool)

(assert (=> b!4328099 (= e!2693139 (not call!300958))))

(declare-fun call!300962 () ListLongMap!1247)

(declare-fun call!300961 () ListLongMap!1247)

(declare-fun c!736481 () Bool)

(declare-fun call!300959 () ListLongMap!1247)

(declare-fun c!736480 () Bool)

(declare-fun call!300964 () ListLongMap!1247)

(declare-fun bm!300953 () Bool)

(assert (=> bm!300953 (= call!300964 (+!379 (ite c!736481 call!300962 (ite c!736480 call!300959 call!300961)) (ite (or c!736481 c!736480) (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))))

(declare-fun b!4328100 () Bool)

(declare-fun e!2693142 () Bool)

(assert (=> b!4328100 (= e!2693142 e!2693144)))

(declare-fun res!1773589 () Bool)

(assert (=> b!4328100 (=> (not res!1773589) (not e!2693144))))

(assert (=> b!4328100 (= res!1773589 (contains!10549 lt!1544997 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(assert (=> b!4328100 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328101 () Bool)

(declare-fun e!2693136 () ListLongMap!1247)

(declare-fun call!300960 () ListLongMap!1247)

(assert (=> b!4328101 (= e!2693136 call!300960)))

(declare-fun b!4328102 () Bool)

(declare-fun e!2693143 () Unit!68075)

(declare-fun lt!1544998 () Unit!68075)

(assert (=> b!4328102 (= e!2693143 lt!1544998)))

(declare-fun lt!1544995 () ListLongMap!1247)

(assert (=> b!4328102 (= lt!1544995 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544983 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544983 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544996 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544996 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544977 () Unit!68075)

(assert (=> b!4328102 (= lt!1544977 (addStillContains!4 lt!1544995 lt!1544983 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544996))))

(assert (=> b!4328102 (contains!10549 (+!379 lt!1544995 (tuple2!47497 lt!1544983 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544996)))

(declare-fun lt!1544988 () Unit!68075)

(assert (=> b!4328102 (= lt!1544988 lt!1544977)))

(declare-fun lt!1544990 () ListLongMap!1247)

(assert (=> b!4328102 (= lt!1544990 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544991 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544991 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544993 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544993 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544994 () Unit!68075)

(assert (=> b!4328102 (= lt!1544994 (addApplyDifferent!4 lt!1544990 lt!1544991 (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544993))))

(assert (=> b!4328102 (= (apply!11187 (+!379 lt!1544990 (tuple2!47497 lt!1544991 (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))) lt!1544993) (apply!11187 lt!1544990 lt!1544993))))

(declare-fun lt!1544984 () Unit!68075)

(assert (=> b!4328102 (= lt!1544984 lt!1544994)))

(declare-fun lt!1544981 () ListLongMap!1247)

(assert (=> b!4328102 (= lt!1544981 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544980 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544980 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544992 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544992 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(declare-fun lt!1544978 () Unit!68075)

(assert (=> b!4328102 (= lt!1544978 (addApplyDifferent!4 lt!1544981 lt!1544980 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544992))))

(assert (=> b!4328102 (= (apply!11187 (+!379 lt!1544981 (tuple2!47497 lt!1544980 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) lt!1544992) (apply!11187 lt!1544981 lt!1544992))))

(declare-fun lt!1544979 () Unit!68075)

(assert (=> b!4328102 (= lt!1544979 lt!1544978)))

(declare-fun lt!1544989 () ListLongMap!1247)

(assert (=> b!4328102 (= lt!1544989 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1544986 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544986 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1544987 () (_ BitVec 64))

(assert (=> b!4328102 (= lt!1544987 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000))))

(assert (=> b!4328102 (= lt!1544998 (addApplyDifferent!4 lt!1544989 lt!1544986 (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544987))))

(assert (=> b!4328102 (= (apply!11187 (+!379 lt!1544989 (tuple2!47497 lt!1544986 (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))) lt!1544987) (apply!11187 lt!1544989 lt!1544987))))

(declare-fun bm!300954 () Bool)

(assert (=> bm!300954 (= call!300960 call!300964)))

(declare-fun e!2693138 () ListLongMap!1247)

(declare-fun b!4328103 () Bool)

(assert (=> b!4328103 (= e!2693138 (+!379 call!300964 (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))))

(declare-fun b!4328104 () Bool)

(declare-fun res!1773582 () Bool)

(declare-fun e!2693135 () Bool)

(assert (=> b!4328104 (=> (not res!1773582) (not e!2693135))))

(assert (=> b!4328104 (= res!1773582 e!2693139)))

(declare-fun c!736485 () Bool)

(assert (=> b!4328104 (= c!736485 (not (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4328105 () Bool)

(assert (=> b!4328105 (= e!2693133 (not call!300963))))

(declare-fun c!736484 () Bool)

(declare-fun b!4328106 () Bool)

(assert (=> b!4328106 (= c!736484 (and (not (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2693141 () ListLongMap!1247)

(assert (=> b!4328106 (= e!2693141 e!2693136)))

(declare-fun b!4328107 () Bool)

(assert (=> b!4328107 (= e!2693136 call!300961)))

(declare-fun bm!300956 () Bool)

(assert (=> bm!300956 (= call!300961 call!300959)))

(declare-fun b!4328108 () Bool)

(assert (=> b!4328108 (= e!2693141 call!300960)))

(declare-fun b!4328109 () Bool)

(assert (=> b!4328109 (= e!2693140 (= (apply!11187 lt!1544997 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun b!4328110 () Bool)

(declare-fun e!2693134 () Bool)

(assert (=> b!4328110 (= e!2693134 (validKeyInArray!0 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(declare-fun b!4328111 () Bool)

(declare-fun e!2693145 () Bool)

(assert (=> b!4328111 (= e!2693145 (validKeyInArray!0 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000)))))

(declare-fun bm!300957 () Bool)

(assert (=> bm!300957 (= call!300958 (contains!10549 lt!1544997 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4328112 () Bool)

(declare-fun Unit!68098 () Unit!68075)

(assert (=> b!4328112 (= e!2693143 Unit!68098)))

(declare-fun b!4328113 () Bool)

(assert (=> b!4328113 (= e!2693137 (= (apply!11187 lt!1544997 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun d!1272131 () Bool)

(assert (=> d!1272131 e!2693135))

(declare-fun res!1773581 () Bool)

(assert (=> d!1272131 (=> (not res!1773581) (not e!2693135))))

(assert (=> d!1272131 (= res!1773581 (or (bvsge #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))))

(declare-fun lt!1544982 () ListLongMap!1247)

(assert (=> d!1272131 (= lt!1544997 lt!1544982)))

(declare-fun lt!1544985 () Unit!68075)

(assert (=> d!1272131 (= lt!1544985 e!2693143)))

(declare-fun c!736483 () Bool)

(assert (=> d!1272131 (= c!736483 e!2693145)))

(declare-fun res!1773584 () Bool)

(assert (=> d!1272131 (=> (not res!1773584) (not e!2693145))))

(assert (=> d!1272131 (= res!1773584 (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(assert (=> d!1272131 (= lt!1544982 e!2693138)))

(assert (=> d!1272131 (= c!736481 (and (not (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1272131 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272131 (= (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1544997)))

(declare-fun bm!300955 () Bool)

(assert (=> bm!300955 (= call!300962 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (ite c!736347 (ite c!736349 (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun b!4328114 () Bool)

(assert (=> b!4328114 (= e!2693135 e!2693133)))

(declare-fun c!736482 () Bool)

(assert (=> b!4328114 (= c!736482 (not (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4328115 () Bool)

(assert (=> b!4328115 (= e!2693138 e!2693141)))

(assert (=> b!4328115 (= c!736480 (and (not (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!736347 (ite c!736349 (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!300958 () Bool)

(assert (=> bm!300958 (= call!300959 call!300962)))

(declare-fun b!4328116 () Bool)

(declare-fun res!1773588 () Bool)

(assert (=> b!4328116 (=> (not res!1773588) (not e!2693135))))

(assert (=> b!4328116 (= res!1773588 e!2693142)))

(declare-fun res!1773587 () Bool)

(assert (=> b!4328116 (=> res!1773587 e!2693142)))

(assert (=> b!4328116 (= res!1773587 (not e!2693134))))

(declare-fun res!1773585 () Bool)

(assert (=> b!4328116 (=> (not res!1773585) (not e!2693134))))

(assert (=> b!4328116 (= res!1773585 (bvslt #b00000000000000000000000000000000 (size!35836 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))))

(declare-fun bm!300959 () Bool)

(assert (=> bm!300959 (= call!300963 (contains!10549 lt!1544997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!1272131 c!736481) b!4328103))

(assert (= (and d!1272131 (not c!736481)) b!4328115))

(assert (= (and b!4328115 c!736480) b!4328108))

(assert (= (and b!4328115 (not c!736480)) b!4328106))

(assert (= (and b!4328106 c!736484) b!4328101))

(assert (= (and b!4328106 (not c!736484)) b!4328107))

(assert (= (or b!4328101 b!4328107) bm!300956))

(assert (= (or b!4328108 bm!300956) bm!300958))

(assert (= (or b!4328108 b!4328101) bm!300954))

(assert (= (or b!4328103 bm!300958) bm!300955))

(assert (= (or b!4328103 bm!300954) bm!300953))

(assert (= (and d!1272131 res!1773584) b!4328111))

(assert (= (and d!1272131 c!736483) b!4328102))

(assert (= (and d!1272131 (not c!736483)) b!4328112))

(assert (= (and d!1272131 res!1773581) b!4328116))

(assert (= (and b!4328116 res!1773585) b!4328110))

(assert (= (and b!4328116 (not res!1773587)) b!4328100))

(assert (= (and b!4328100 res!1773589) b!4328097))

(assert (= (and b!4328116 res!1773588) b!4328104))

(assert (= (and b!4328104 c!736485) b!4328096))

(assert (= (and b!4328104 (not c!736485)) b!4328099))

(assert (= (and b!4328096 res!1773586) b!4328113))

(assert (= (or b!4328096 b!4328099) bm!300957))

(assert (= (and b!4328104 res!1773582) b!4328114))

(assert (= (and b!4328114 c!736482) b!4328098))

(assert (= (and b!4328114 (not c!736482)) b!4328105))

(assert (= (and b!4328098 res!1773583) b!4328109))

(assert (= (or b!4328098 b!4328105) bm!300959))

(declare-fun m!4922937 () Bool)

(assert (=> b!4328109 m!4922937))

(assert (=> b!4328111 m!4922467))

(assert (=> b!4328111 m!4922467))

(assert (=> b!4328111 m!4922781))

(declare-fun m!4922939 () Bool)

(assert (=> b!4328102 m!4922939))

(declare-fun m!4922941 () Bool)

(assert (=> b!4328102 m!4922941))

(declare-fun m!4922943 () Bool)

(assert (=> b!4328102 m!4922943))

(declare-fun m!4922945 () Bool)

(assert (=> b!4328102 m!4922945))

(declare-fun m!4922947 () Bool)

(assert (=> b!4328102 m!4922947))

(declare-fun m!4922949 () Bool)

(assert (=> b!4328102 m!4922949))

(assert (=> b!4328102 m!4922947))

(declare-fun m!4922951 () Bool)

(assert (=> b!4328102 m!4922951))

(declare-fun m!4922953 () Bool)

(assert (=> b!4328102 m!4922953))

(declare-fun m!4922955 () Bool)

(assert (=> b!4328102 m!4922955))

(assert (=> b!4328102 m!4922939))

(declare-fun m!4922957 () Bool)

(assert (=> b!4328102 m!4922957))

(declare-fun m!4922959 () Bool)

(assert (=> b!4328102 m!4922959))

(declare-fun m!4922961 () Bool)

(assert (=> b!4328102 m!4922961))

(assert (=> b!4328102 m!4922945))

(declare-fun m!4922963 () Bool)

(assert (=> b!4328102 m!4922963))

(declare-fun m!4922965 () Bool)

(assert (=> b!4328102 m!4922965))

(declare-fun m!4922967 () Bool)

(assert (=> b!4328102 m!4922967))

(assert (=> b!4328102 m!4922467))

(declare-fun m!4922969 () Bool)

(assert (=> b!4328102 m!4922969))

(assert (=> b!4328102 m!4922965))

(assert (=> d!1272131 m!4922449))

(declare-fun m!4922971 () Bool)

(assert (=> b!4328103 m!4922971))

(assert (=> b!4328100 m!4922467))

(assert (=> b!4328100 m!4922467))

(declare-fun m!4922973 () Bool)

(assert (=> b!4328100 m!4922973))

(assert (=> bm!300955 m!4922943))

(declare-fun m!4922975 () Bool)

(assert (=> bm!300959 m!4922975))

(declare-fun m!4922977 () Bool)

(assert (=> b!4328113 m!4922977))

(assert (=> b!4328097 m!4922467))

(assert (=> b!4328097 m!4922467))

(declare-fun m!4922979 () Bool)

(assert (=> b!4328097 m!4922979))

(declare-fun m!4922981 () Bool)

(assert (=> b!4328097 m!4922981))

(assert (=> b!4328110 m!4922467))

(assert (=> b!4328110 m!4922467))

(assert (=> b!4328110 m!4922781))

(declare-fun m!4922983 () Bool)

(assert (=> bm!300957 m!4922983))

(declare-fun m!4922985 () Bool)

(assert (=> bm!300953 m!4922985))

(assert (=> bm!300827 d!1272131))

(declare-fun d!1272133 () Bool)

(assert (=> d!1272133 (= (+!379 (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) (tuple2!47497 #b1000000000000000000000000000000000000000000000000000000000000000 v!11761)) (getCurrentListMap!27 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 #b00000000000000000000000000000000 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(declare-fun lt!1545001 () Unit!68075)

(declare-fun choose!26467 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 V!9961 Int) Unit!68075)

(assert (=> d!1272133 (= lt!1545001 (choose!26467 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))))))

(assert (=> d!1272133 (validMask!0 (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))))))

(assert (=> d!1272133 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!14 (_keys!5132 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (_values!5106 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (mask!13472 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (extraKeys!5070 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) lt!1544547 (zeroValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) (minValue!5082 (v!43003 (underlying!9820 (_2!27039 lt!1544464)))) v!11761 (defaultEntry!5211 (v!43003 (underlying!9820 (_2!27039 lt!1544464))))) lt!1545001)))

(declare-fun bs!607559 () Bool)

(assert (= bs!607559 d!1272133))

(declare-fun m!4922987 () Bool)

(assert (=> bs!607559 m!4922987))

(assert (=> bs!607559 m!4922693))

(declare-fun m!4922989 () Bool)

(assert (=> bs!607559 m!4922989))

(declare-fun m!4922991 () Bool)

(assert (=> bs!607559 m!4922991))

(assert (=> bs!607559 m!4922449))

(assert (=> bs!607559 m!4922693))

(assert (=> b!4327645 d!1272133))

(declare-fun lt!1545069 () tuple2!47492)

(declare-fun bm!300986 () Bool)

(declare-fun c!736500 () Bool)

(declare-fun call!300993 () tuple2!47492)

(assert (=> bm!300986 (= call!300993 (repackFrom!19 thiss!47260 (ite c!736500 (_2!27038 lt!1545069) (v!43003 (_2!27041 lt!1544599))) (bvsub (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!4328145 () Bool)

(declare-fun c!736498 () Bool)

(assert (=> b!4328145 (= c!736498 (bvsgt (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun e!2693163 () tuple2!47492)

(declare-fun e!2693168 () tuple2!47492)

(assert (=> b!4328145 (= e!2693163 e!2693168)))

(declare-fun b!4328146 () Bool)

(declare-fun e!2693165 () Unit!68075)

(declare-fun Unit!68099 () Unit!68075)

(assert (=> b!4328146 (= e!2693165 Unit!68099)))

(declare-fun b!4328147 () Bool)

(assert (=> b!4328147 false))

(declare-fun lt!1545077 () Unit!68075)

(declare-fun lt!1545070 () Unit!68075)

(assert (=> b!4328147 (= lt!1545077 lt!1545070)))

(declare-fun lt!1545071 () (_ BitVec 64))

(declare-fun lt!1545093 () (_ BitVec 32))

(assert (=> b!4328147 (not (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) lt!1545071 lt!1545093))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!17472 (_ BitVec 32) (_ BitVec 64) List!48582) Unit!68075)

(assert (=> b!4328147 (= lt!1545070 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) lt!1545093 lt!1545071 (Cons!48458 lt!1545071 Nil!48458)))))

(assert (=> b!4328147 (= lt!1545093 (bvadd (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!1545076 () Unit!68075)

(declare-fun lt!1545089 () Unit!68075)

(assert (=> b!4328147 (= lt!1545076 lt!1545089)))

(assert (=> b!4328147 (arrayNoDuplicates!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) Nil!48458)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!17472 (_ BitVec 32) (_ BitVec 32)) Unit!68075)

(assert (=> b!4328147 (= lt!1545089 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000000 (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun lt!1545082 () Unit!68075)

(declare-fun lt!1545085 () Unit!68075)

(assert (=> b!4328147 (= lt!1545082 lt!1545085)))

(declare-fun e!2693167 () Bool)

(assert (=> b!4328147 e!2693167))

(declare-fun c!736502 () Bool)

(assert (=> b!4328147 (= c!736502 (and (not (= lt!1545071 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1545071 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1545097 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!5 (array!17472 array!17470 (_ BitVec 32) (_ BitVec 32) V!9961 V!9961 (_ BitVec 64) (_ BitVec 32) Int) Unit!68075)

(assert (=> b!4328147 (= lt!1545085 (lemmaListMapContainsThenArrayContainsFrom!5 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) (_values!5106 (v!43003 (underlying!9820 thiss!47260))) (mask!13472 (v!43003 (underlying!9820 thiss!47260))) (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) lt!1545071 lt!1545097 (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))))))

(assert (=> b!4328147 (= lt!1545097 (bvadd (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!68100 () Unit!68075)

(assert (=> b!4328147 (= e!2693165 Unit!68100)))

(declare-fun b!4328148 () Bool)

(declare-fun e!2693164 () tuple2!47492)

(assert (=> b!4328148 (= e!2693164 e!2693163)))

(declare-fun lt!1545087 () V!9961)

(assert (=> b!4328148 (= lt!1545069 (update!575 (v!43003 (_2!27041 lt!1544599)) lt!1545071 lt!1545087))))

(declare-fun c!736501 () Bool)

(declare-fun lt!1545095 () ListLongMap!1247)

(assert (=> b!4328148 (= c!736501 (contains!10549 lt!1545095 lt!1545071))))

(declare-fun lt!1545074 () Unit!68075)

(assert (=> b!4328148 (= lt!1545074 e!2693165)))

(declare-fun c!736499 () Bool)

(assert (=> b!4328148 (= c!736499 (_1!27038 lt!1545069))))

(declare-fun b!4328149 () Bool)

(declare-fun e!2693162 () tuple2!47492)

(assert (=> b!4328149 (= e!2693164 e!2693162)))

(declare-fun c!736503 () Bool)

(assert (=> b!4328149 (= c!736503 (bvsgt (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!300987 () Bool)

(declare-fun call!300995 () ListLongMap!1247)

(assert (=> bm!300987 (= call!300995 (getCurrentListMapNoExtraKeys!5 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) (_values!5106 (v!43003 (underlying!9820 thiss!47260))) (mask!13472 (v!43003 (underlying!9820 thiss!47260))) (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (bvadd (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!5211 (v!43003 (underlying!9820 thiss!47260)))))))

(declare-fun call!301003 () ListLongMap!1247)

(declare-fun call!300999 () ListLongMap!1247)

(declare-fun lt!1545094 () (_ BitVec 64))

(declare-fun bm!300988 () Bool)

(assert (=> bm!300988 (= call!300999 (+!379 (ite c!736498 call!300995 call!301003) (ite c!736498 (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (tuple2!47497 lt!1545094 (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun bm!300989 () Bool)

(declare-fun call!300996 () ListLongMap!1247)

(declare-fun call!300991 () ListLongMap!1247)

(declare-fun lt!1545079 () (_ BitVec 64))

(assert (=> bm!300989 (= call!300991 (+!379 (ite c!736498 call!300996 call!300995) (ite c!736498 (tuple2!47497 lt!1545079 (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (tuple2!47497 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun b!4328150 () Bool)

(assert (=> b!4328150 (= e!2693162 (tuple2!47493 true (v!43003 (_2!27041 lt!1544599))))))

(declare-fun b!4328151 () Bool)

(declare-fun e!2693169 () Bool)

(declare-fun lt!1545083 () tuple2!47492)

(assert (=> b!4328151 (= e!2693169 (= (map!10511 (_2!27038 lt!1545083)) (map!10511 (v!43003 (underlying!9820 thiss!47260)))))))

(assert (=> b!4328151 ((_ is LongMap!4805) thiss!47260)))

(declare-fun b!4328152 () Bool)

(assert (=> b!4328152 (= e!2693168 (tuple2!47493 true (_2!27038 lt!1545069)))))

(declare-fun lt!1545084 () ListLongMap!1247)

(assert (=> b!4328152 (= lt!1545084 call!300995)))

(declare-fun lt!1545072 () (_ BitVec 64))

(assert (=> b!4328152 (= lt!1545072 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1545073 () Unit!68075)

(declare-fun call!300992 () Unit!68075)

(assert (=> b!4328152 (= lt!1545073 call!300992)))

(declare-fun call!301001 () ListLongMap!1247)

(declare-fun call!301000 () ListLongMap!1247)

(assert (=> b!4328152 (= call!301001 call!301000)))

(declare-fun lt!1545091 () Unit!68075)

(assert (=> b!4328152 (= lt!1545091 lt!1545073)))

(declare-fun lt!1545066 () ListLongMap!1247)

(assert (=> b!4328152 (= lt!1545066 call!300991)))

(assert (=> b!4328152 (= lt!1545094 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1545081 () Unit!68075)

(declare-fun call!300998 () Unit!68075)

(assert (=> b!4328152 (= lt!1545081 call!300998)))

(declare-fun call!300997 () ListLongMap!1247)

(assert (=> b!4328152 (= call!300999 call!300997)))

(declare-fun lt!1545067 () Unit!68075)

(assert (=> b!4328152 (= lt!1545067 lt!1545081)))

(declare-fun b!4328153 () Bool)

(assert (=> b!4328153 (= e!2693163 (tuple2!47493 false (_2!27038 lt!1545069)))))

(declare-fun lt!1545088 () ListLongMap!1247)

(declare-fun bm!300990 () Bool)

(declare-fun lt!1545090 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!6 (ListLongMap!1247 (_ BitVec 64) V!9961 (_ BitVec 64) V!9961) Unit!68075)

(assert (=> bm!300990 (= call!300998 (addCommutativeForDiffKeys!6 (ite c!736498 lt!1545088 lt!1545066) lt!1545071 lt!1545087 (ite c!736498 lt!1545090 lt!1545094) (ite c!736498 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))) (minValue!5082 (v!43003 (underlying!9820 thiss!47260))))))))

(declare-fun bm!300991 () Bool)

(declare-fun call!301002 () ListLongMap!1247)

(declare-fun call!300994 () ListLongMap!1247)

(assert (=> bm!300991 (= call!300997 (+!379 (ite c!736498 call!301002 call!300994) (tuple2!47497 lt!1545071 lt!1545087)))))

(declare-fun bm!300992 () Bool)

(assert (=> bm!300992 (= call!301001 (+!379 (ite c!736498 call!301003 call!300996) (ite c!736498 (tuple2!47497 lt!1545071 lt!1545087) (tuple2!47497 lt!1545072 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun b!4328154 () Bool)

(declare-fun lt!1545078 () tuple2!47492)

(assert (=> b!4328154 (= e!2693168 (tuple2!47493 (_1!27038 lt!1545078) (_2!27038 lt!1545078)))))

(assert (=> b!4328154 (= lt!1545088 call!300995)))

(assert (=> b!4328154 (= lt!1545090 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1545096 () Unit!68075)

(assert (=> b!4328154 (= lt!1545096 call!300998)))

(assert (=> b!4328154 (= call!301000 call!300997)))

(declare-fun lt!1545080 () Unit!68075)

(assert (=> b!4328154 (= lt!1545080 lt!1545096)))

(declare-fun lt!1545086 () ListLongMap!1247)

(assert (=> b!4328154 (= lt!1545086 call!300999)))

(assert (=> b!4328154 (= lt!1545079 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1545068 () Unit!68075)

(assert (=> b!4328154 (= lt!1545068 call!300992)))

(assert (=> b!4328154 (= call!300991 call!301001)))

(declare-fun lt!1545075 () Unit!68075)

(assert (=> b!4328154 (= lt!1545075 lt!1545068)))

(assert (=> b!4328154 (= lt!1545078 call!300993)))

(declare-fun b!4328155 () Bool)

(assert (=> b!4328155 (= e!2693167 (arrayContainsKey!0 (_keys!5132 (v!43003 (underlying!9820 thiss!47260))) lt!1545071 lt!1545097))))

(declare-fun d!1272135 () Bool)

(declare-fun e!2693166 () Bool)

(assert (=> d!1272135 e!2693166))

(declare-fun res!1773594 () Bool)

(assert (=> d!1272135 (=> res!1773594 e!2693166)))

(assert (=> d!1272135 (= res!1773594 (not (_1!27038 lt!1545083)))))

(assert (=> d!1272135 (= lt!1545083 e!2693164)))

(assert (=> d!1272135 (= c!736500 (and (not (= lt!1545071 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1545071 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!1272135 (= lt!1545095 (map!10511 (v!43003 (_2!27041 lt!1544599))))))

(assert (=> d!1272135 (= lt!1545087 (select (arr!7795 (_values!5106 (v!43003 (underlying!9820 thiss!47260)))) (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001)))))

(assert (=> d!1272135 (= lt!1545071 (select (arr!7796 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001)))))

(assert (=> d!1272135 (valid!3825 thiss!47260)))

(assert (=> d!1272135 (= (repackFrom!19 thiss!47260 (v!43003 (_2!27041 lt!1544599)) (bvsub (size!35836 (_keys!5132 (v!43003 (underlying!9820 thiss!47260)))) #b00000000000000000000000000000001)) lt!1545083)))

(declare-fun bm!300993 () Bool)

(assert (=> bm!300993 (= call!301000 (+!379 (ite c!736498 call!300994 call!301002) (ite c!736498 (tuple2!47497 lt!1545090 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (tuple2!47497 lt!1545071 lt!1545087))))))

(declare-fun bm!300994 () Bool)

(assert (=> bm!300994 (= call!301002 (+!379 (ite c!736498 lt!1545088 lt!1545084) (ite c!736498 (tuple2!47497 lt!1545090 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (tuple2!47497 lt!1545072 (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun bm!300995 () Bool)

(assert (=> bm!300995 (= call!301003 (+!379 (ite c!736498 lt!1545086 lt!1545066) (ite c!736498 (tuple2!47497 lt!1545079 (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))) (tuple2!47497 lt!1545071 lt!1545087))))))

(declare-fun b!4328156 () Bool)

(assert (=> b!4328156 (= e!2693167 (ite (= lt!1545071 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5070 (v!43003 (underlying!9820 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!300996 () Bool)

(assert (=> bm!300996 (= call!300994 (+!379 (ite c!736498 lt!1545088 lt!1545066) (ite c!736498 (tuple2!47497 lt!1545071 lt!1545087) (tuple2!47497 lt!1545094 (minValue!5082 (v!43003 (underlying!9820 thiss!47260)))))))))

(declare-fun b!4328157 () Bool)

(assert (=> b!4328157 (= e!2693166 e!2693169)))

(declare-fun res!1773595 () Bool)

(assert (=> b!4328157 (=> (not res!1773595) (not e!2693169))))

(assert (=> b!4328157 (= res!1773595 (valid!3826 (_2!27038 lt!1545083)))))

(declare-fun bm!300997 () Bool)

(assert (=> bm!300997 (= call!300996 (+!379 (ite c!736498 lt!1545086 lt!1545084) (tuple2!47497 lt!1545071 lt!1545087)))))

(declare-fun b!4328158 () Bool)

(declare-fun lt!1545092 () tuple2!47492)

(assert (=> b!4328158 (= lt!1545092 call!300993)))

(assert (=> b!4328158 (= e!2693162 (tuple2!47493 (_1!27038 lt!1545092) (_2!27038 lt!1545092)))))

(declare-fun bm!300998 () Bool)

(assert (=> bm!300998 (= call!300992 (addCommutativeForDiffKeys!6 (ite c!736498 lt!1545086 lt!1545084) lt!1545071 lt!1545087 (ite c!736498 lt!1545079 lt!1545072) (ite c!736498 (minValue!5082 (v!43003 (underlying!9820 thiss!47260))) (zeroValue!5082 (v!43003 (underlying!9820 thiss!47260))))))))

(assert (= (and d!1272135 c!736500) b!4328148))

(assert (= (and d!1272135 (not c!736500)) b!4328149))

(assert (= (and b!4328148 c!736501) b!4328147))

(assert (= (and b!4328148 (not c!736501)) b!4328146))

(assert (= (and b!4328147 c!736502) b!4328155))

(assert (= (and b!4328147 (not c!736502)) b!4328156))

(assert (= (and b!4328148 c!736499) b!4328145))

(assert (= (and b!4328148 (not c!736499)) b!4328153))

(assert (= (and b!4328145 c!736498) b!4328154))

(assert (= (and b!4328145 (not c!736498)) b!4328152))

(assert (= (or b!4328154 b!4328152) bm!300996))

(assert (= (or b!4328154 b!4328152) bm!300995))

(assert (= (or b!4328154 b!4328152) bm!300998))

(assert (= (or b!4328154 b!4328152) bm!300997))

(assert (= (or b!4328154 b!4328152) bm!300987))

(assert (= (or b!4328154 b!4328152) bm!300990))

(assert (= (or b!4328154 b!4328152) bm!300994))

(assert (= (or b!4328154 b!4328152) bm!300991))

(assert (= (or b!4328154 b!4328152) bm!300989))

(assert (= (or b!4328154 b!4328152) bm!300988))

(assert (= (or b!4328154 b!4328152) bm!300993))

(assert (= (or b!4328154 b!4328152) bm!300992))

(assert (= (and b!4328149 c!736503) b!4328158))

(assert (= (and b!4328149 (not c!736503)) b!4328150))

(assert (= (or b!4328154 b!4328158) bm!300986))

(assert (= (and d!1272135 (not res!1773594)) b!4328157))

(assert (= (and b!4328157 res!1773595) b!4328151))

(declare-fun m!4922993 () Bool)

(assert (=> bm!300995 m!4922993))

(declare-fun m!4922995 () Bool)

(assert (=> b!4328147 m!4922995))

(declare-fun m!4922997 () Bool)

(assert (=> b!4328147 m!4922997))

(declare-fun m!4922999 () Bool)

(assert (=> b!4328147 m!4922999))

(declare-fun m!4923001 () Bool)

(assert (=> b!4328147 m!4923001))

(declare-fun m!4923003 () Bool)

(assert (=> b!4328147 m!4923003))

(declare-fun m!4923005 () Bool)

(assert (=> bm!300997 m!4923005))

(declare-fun m!4923007 () Bool)

(assert (=> bm!300993 m!4923007))

(declare-fun m!4923009 () Bool)

(assert (=> b!4328148 m!4923009))

(declare-fun m!4923011 () Bool)

(assert (=> b!4328148 m!4923011))

(declare-fun m!4923013 () Bool)

(assert (=> b!4328155 m!4923013))

(declare-fun m!4923015 () Bool)

(assert (=> bm!300992 m!4923015))

(declare-fun m!4923017 () Bool)

(assert (=> bm!300987 m!4923017))

(declare-fun m!4923019 () Bool)

(assert (=> bm!300989 m!4923019))

(declare-fun m!4923021 () Bool)

(assert (=> bm!300996 m!4923021))

(declare-fun m!4923023 () Bool)

(assert (=> bm!300990 m!4923023))

(declare-fun m!4923025 () Bool)

(assert (=> bm!300986 m!4923025))

(declare-fun m!4923027 () Bool)

(assert (=> bm!300994 m!4923027))

(declare-fun m!4923029 () Bool)

(assert (=> b!4328151 m!4923029))

(assert (=> b!4328151 m!4922331))

(declare-fun m!4923031 () Bool)

(assert (=> b!4328157 m!4923031))

(declare-fun m!4923033 () Bool)

(assert (=> d!1272135 m!4923033))

(declare-fun m!4923035 () Bool)

(assert (=> d!1272135 m!4923035))

(declare-fun m!4923037 () Bool)

(assert (=> d!1272135 m!4923037))

(assert (=> d!1272135 m!4922315))

(declare-fun m!4923039 () Bool)

(assert (=> bm!300991 m!4923039))

(declare-fun m!4923041 () Bool)

(assert (=> bm!300988 m!4923041))

(declare-fun m!4923043 () Bool)

(assert (=> bm!300998 m!4923043))

(assert (=> b!4327679 d!1272135))

(declare-fun condMapEmpty!21395 () Bool)

(declare-fun mapDefault!21395 () V!9961)

(assert (=> mapNonEmpty!21394 (= condMapEmpty!21395 (= mapRest!21394 ((as const (Array (_ BitVec 32) V!9961)) mapDefault!21395)))))

(declare-fun mapRes!21395 () Bool)

(assert (=> mapNonEmpty!21394 (= tp!1327946 (and tp_is_empty!24279 mapRes!21395))))

(declare-fun mapIsEmpty!21395 () Bool)

(assert (=> mapIsEmpty!21395 mapRes!21395))

(declare-fun mapNonEmpty!21395 () Bool)

(declare-fun tp!1327947 () Bool)

(assert (=> mapNonEmpty!21395 (= mapRes!21395 (and tp!1327947 tp_is_empty!24279))))

(declare-fun mapValue!21395 () V!9961)

(declare-fun mapRest!21395 () (Array (_ BitVec 32) V!9961))

(declare-fun mapKey!21395 () (_ BitVec 32))

(assert (=> mapNonEmpty!21395 (= mapRest!21394 (store mapRest!21395 mapKey!21395 mapValue!21395))))

(assert (= (and mapNonEmpty!21394 condMapEmpty!21395) mapIsEmpty!21395))

(assert (= (and mapNonEmpty!21394 (not condMapEmpty!21395)) mapNonEmpty!21395))

(declare-fun m!4923045 () Bool)

(assert (=> mapNonEmpty!21395 m!4923045))

(declare-fun b_lambda!127561 () Bool)

(assert (= b_lambda!127559 (or (and b!4327510 b_free!129141) b_lambda!127561)))

(check-sat (not b!4327886) (not b!4327841) (not b_lambda!127561) (not b!4328042) (not bm!300879) (not b!4327881) (not b!4327844) (not b!4328155) (not b!4328054) (not bm!300992) (not b!4327904) (not bm!300952) (not bm!300993) (not b!4328083) (not b!4328075) (not bm!300881) (not b!4328147) (not d!1272061) (not bm!300955) (not bm!300890) (not d!1272123) (not b!4328038) (not b!4327850) (not mapNonEmpty!21395) (not b_next!129845) (not d!1272105) (not bm!300896) (not bm!300903) (not bm!300866) (not b!4327979) (not b!4327815) (not d!1272099) (not d!1272097) (not bm!300857) (not b!4327804) (not b!4327971) (not bm!300855) (not b!4328095) (not b!4327725) (not b!4327738) (not b!4327978) (not d!1272087) (not bm!300946) (not b!4328047) (not bm!300895) (not bm!300996) (not b!4327980) (not bm!300874) (not b!4327969) (not b!4327840) (not bm!300898) (not bm!300869) (not b!4328032) (not d!1272115) (not b!4327775) (not b!4328077) (not bm!300863) (not b!4328110) (not bm!300900) (not d!1272111) (not bm!300871) (not bm!300887) (not b!4328100) (not b!4328151) (not b!4327739) (not bm!300892) (not b!4328111) (not bm!300997) (not bm!300998) (not b!4328074) (not d!1272065) (not b!4328061) (not bm!300891) (not b!4328056) b_and!340733 (not bm!300924) (not d!1272081) (not d!1272093) (not bm!300990) (not b!4327740) (not bm!300893) (not d!1272133) (not b!4328059) (not d!1272083) (not b!4327845) (not b!4328103) (not bm!300868) (not b!4328089) (not b!4327902) (not b!4327829) (not bm!300912) (not b!4327797) (not b!4328031) (not d!1272059) (not b!4328064) (not b!4328102) (not bm!300867) (not bm!300864) (not d!1272079) (not bm!300987) (not b!4328109) (not b!4327917) (not b!4328029) (not d!1272129) (not b!4327968) (not b!4328052) (not b!4327903) (not bm!300872) (not d!1272131) (not bm!300939) (not b!4327856) (not d!1272085) (not b!4327960) (not b!4328040) (not b!4327982) (not b!4327973) (not b!4327837) (not d!1272113) (not b!4327723) (not d!1272067) (not b!4327847) (not b!4328039) (not b!4327910) (not d!1272107) (not b!4328066) (not b!4327880) (not d!1272103) (not b!4327731) (not b!4327921) (not d!1272101) (not bm!300921) (not b!4328097) (not b!4328049) (not b!4327977) (not bm!300854) (not d!1272071) (not d!1272091) (not d!1272075) (not b!4328113) (not d!1272057) (not bm!300995) (not bm!300950) (not d!1272119) (not b!4327789) (not b!4328046) (not b!4327974) (not b!4327976) (not d!1272121) (not b!4328026) (not b!4327801) (not d!1272053) (not d!1272125) (not bm!300959) (not bm!300986) (not bm!300922) (not bm!300988) (not bm!300994) (not bm!300953) (not b!4328048) (not b!4327714) (not d!1272135) (not b!4328073) (not b!4327697) tp_is_empty!24279 (not b!4328067) (not bm!300989) (not b!4327721) (not b!4328157) (not d!1272095) (not b!4327975) (not bm!300941) (not bm!300876) (not bm!300945) (not b!4328148) (not bm!300888) (not b!4327920) (not bm!300991) (not d!1272073) (not d!1272089) (not b!4327800) (not b!4327922) (not bm!300957) (not b!4327966) (not bm!300948) (not bm!300943) (not d!1272069) (not b!4327857))
(check-sat b_and!340733 (not b_next!129845))
