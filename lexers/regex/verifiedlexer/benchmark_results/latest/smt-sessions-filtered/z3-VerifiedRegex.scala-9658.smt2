; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506934 () Bool)

(assert start!506934)

(declare-fun b!4854028 () Bool)

(declare-fun b_free!130329 () Bool)

(declare-fun b_next!131119 () Bool)

(assert (=> b!4854028 (= b_free!130329 (not b_next!131119))))

(declare-fun tp!1365314 () Bool)

(declare-fun b_and!342141 () Bool)

(assert (=> b!4854028 (= tp!1365314 b_and!342141)))

(declare-fun mapIsEmpty!22493 () Bool)

(declare-fun mapRes!22493 () Bool)

(assert (=> mapIsEmpty!22493 mapRes!22493))

(declare-fun b!4854023 () Bool)

(declare-fun e!3034575 () Bool)

(declare-datatypes ((array!18786 0))(
  ( (array!18787 (arr!8383 (Array (_ BitVec 32) (_ BitVec 64))) (size!36657 (_ BitVec 32))) )
))
(declare-datatypes ((V!17825 0))(
  ( (V!17826 (val!22364 Int)) )
))
(declare-datatypes ((array!18788 0))(
  ( (array!18789 (arr!8384 (Array (_ BitVec 32) V!17825)) (size!36658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10198 0))(
  ( (LongMapFixedSize!10199 (defaultEntry!5521 Int) (mask!15392 (_ BitVec 32)) (extraKeys!5379 (_ BitVec 32)) (zeroValue!5392 V!17825) (minValue!5392 V!17825) (_size!10218 (_ BitVec 32)) (_keys!5448 array!18786) (_values!5417 array!18788) (_vacant!5164 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20151 0))(
  ( (Cell!20152 (v!49577 LongMapFixedSize!10198)) )
))
(declare-datatypes ((MutLongMap!5099 0))(
  ( (LongMap!5099 (underlying!10400 Cell!20151)) (MutLongMapExt!5098 (__x!33831 Int)) )
))
(declare-fun thiss!47245 () MutLongMap!5099)

(declare-fun key!7003 () (_ BitVec 64))

(declare-datatypes ((Option!13757 0))(
  ( (None!13756) (Some!13756 (v!49578 V!17825)) )
))
(declare-fun isDefined!10836 (Option!13757) Bool)

(declare-datatypes ((tuple2!59530 0))(
  ( (tuple2!59531 (_1!33059 (_ BitVec 64)) (_2!33059 V!17825)) )
))
(declare-datatypes ((List!55822 0))(
  ( (Nil!55698) (Cons!55698 (h!62146 tuple2!59530) (t!363318 List!55822)) )
))
(declare-fun getValueByKey!2755 (List!55822 (_ BitVec 64)) Option!13757)

(declare-datatypes ((ListLongMap!6561 0))(
  ( (ListLongMap!6562 (toList!7909 List!55822)) )
))
(declare-fun map!12787 (MutLongMap!5099) ListLongMap!6561)

(assert (=> b!4854023 (= e!3034575 (not (isDefined!10836 (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003))))))

(declare-fun b!4854024 () Bool)

(declare-fun e!3034572 () Bool)

(declare-fun e!3034576 () Bool)

(assert (=> b!4854024 (= e!3034572 e!3034576)))

(declare-fun b!4854025 () Bool)

(declare-fun e!3034571 () Bool)

(assert (=> b!4854025 (= e!3034571 e!3034575)))

(declare-fun res!2072428 () Bool)

(assert (=> b!4854025 (=> (not res!2072428) (not e!3034575))))

(declare-fun contains!19345 (MutLongMap!5099 (_ BitVec 64)) Bool)

(assert (=> b!4854025 (= res!2072428 (contains!19345 thiss!47245 key!7003))))

(declare-fun lt!1990834 () V!17825)

(declare-fun apply!13493 (LongMapFixedSize!10198 (_ BitVec 64)) V!17825)

(assert (=> b!4854025 (= lt!1990834 (apply!13493 (v!49577 (underlying!10400 thiss!47245)) key!7003))))

(declare-fun b!4854022 () Bool)

(declare-fun res!2072430 () Bool)

(assert (=> b!4854022 (=> (not res!2072430) (not e!3034571))))

(declare-fun valid!4125 (MutLongMap!5099) Bool)

(assert (=> b!4854022 (= res!2072430 (valid!4125 thiss!47245))))

(declare-fun res!2072429 () Bool)

(assert (=> start!506934 (=> (not res!2072429) (not e!3034571))))

(get-info :version)

(assert (=> start!506934 (= res!2072429 ((_ is LongMap!5099) thiss!47245))))

(assert (=> start!506934 e!3034571))

(assert (=> start!506934 e!3034572))

(assert (=> start!506934 true))

(declare-fun b!4854026 () Bool)

(declare-fun e!3034574 () Bool)

(declare-fun tp_is_empty!35463 () Bool)

(assert (=> b!4854026 (= e!3034574 (and tp_is_empty!35463 mapRes!22493))))

(declare-fun condMapEmpty!22493 () Bool)

(declare-fun mapDefault!22493 () V!17825)

(assert (=> b!4854026 (= condMapEmpty!22493 (= (arr!8384 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) ((as const (Array (_ BitVec 32) V!17825)) mapDefault!22493)))))

(declare-fun b!4854027 () Bool)

(declare-fun e!3034573 () Bool)

(assert (=> b!4854027 (= e!3034576 e!3034573)))

(declare-fun mapNonEmpty!22493 () Bool)

(declare-fun tp!1365313 () Bool)

(assert (=> mapNonEmpty!22493 (= mapRes!22493 (and tp!1365313 tp_is_empty!35463))))

(declare-fun mapKey!22493 () (_ BitVec 32))

(declare-fun mapValue!22493 () V!17825)

(declare-fun mapRest!22493 () (Array (_ BitVec 32) V!17825))

(assert (=> mapNonEmpty!22493 (= (arr!8384 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) (store mapRest!22493 mapKey!22493 mapValue!22493))))

(declare-fun array_inv!6059 (array!18786) Bool)

(declare-fun array_inv!6060 (array!18788) Bool)

(assert (=> b!4854028 (= e!3034573 (and tp!1365314 tp_is_empty!35463 (array_inv!6059 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (array_inv!6060 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) e!3034574))))

(assert (= (and start!506934 res!2072429) b!4854022))

(assert (= (and b!4854022 res!2072430) b!4854025))

(assert (= (and b!4854025 res!2072428) b!4854023))

(assert (= (and b!4854026 condMapEmpty!22493) mapIsEmpty!22493))

(assert (= (and b!4854026 (not condMapEmpty!22493)) mapNonEmpty!22493))

(assert (= b!4854028 b!4854026))

(assert (= b!4854027 b!4854028))

(assert (= b!4854024 b!4854027))

(assert (= (and start!506934 ((_ is LongMap!5099) thiss!47245)) b!4854024))

(declare-fun m!5852050 () Bool)

(assert (=> b!4854025 m!5852050))

(declare-fun m!5852052 () Bool)

(assert (=> b!4854025 m!5852052))

(declare-fun m!5852054 () Bool)

(assert (=> b!4854028 m!5852054))

(declare-fun m!5852056 () Bool)

(assert (=> b!4854028 m!5852056))

(declare-fun m!5852058 () Bool)

(assert (=> b!4854023 m!5852058))

(declare-fun m!5852060 () Bool)

(assert (=> b!4854023 m!5852060))

(assert (=> b!4854023 m!5852060))

(declare-fun m!5852062 () Bool)

(assert (=> b!4854023 m!5852062))

(declare-fun m!5852064 () Bool)

(assert (=> mapNonEmpty!22493 m!5852064))

(declare-fun m!5852066 () Bool)

(assert (=> b!4854022 m!5852066))

(check-sat (not b!4854022) (not b!4854025) (not b!4854028) (not b!4854023) tp_is_empty!35463 (not mapNonEmpty!22493) (not b_next!131119) b_and!342141)
(check-sat b_and!342141 (not b_next!131119))
(get-model)

(declare-fun d!1558163 () Bool)

(declare-fun lt!1990837 () Bool)

(declare-fun contains!19346 (ListLongMap!6561 (_ BitVec 64)) Bool)

(assert (=> d!1558163 (= lt!1990837 (contains!19346 (map!12787 thiss!47245) key!7003))))

(declare-fun contains!19347 (LongMapFixedSize!10198 (_ BitVec 64)) Bool)

(assert (=> d!1558163 (= lt!1990837 (contains!19347 (v!49577 (underlying!10400 thiss!47245)) key!7003))))

(assert (=> d!1558163 (valid!4125 thiss!47245)))

(assert (=> d!1558163 (= (contains!19345 thiss!47245 key!7003) lt!1990837)))

(declare-fun bs!1173247 () Bool)

(assert (= bs!1173247 d!1558163))

(assert (=> bs!1173247 m!5852058))

(assert (=> bs!1173247 m!5852058))

(declare-fun m!5852068 () Bool)

(assert (=> bs!1173247 m!5852068))

(declare-fun m!5852070 () Bool)

(assert (=> bs!1173247 m!5852070))

(assert (=> bs!1173247 m!5852066))

(assert (=> b!4854025 d!1558163))

(declare-fun b!4854065 () Bool)

(declare-fun e!3034605 () V!17825)

(assert (=> b!4854065 (= e!3034605 (minValue!5392 (v!49577 (underlying!10400 thiss!47245))))))

(declare-fun b!4854066 () Bool)

(declare-fun e!3034601 () Bool)

(declare-fun call!337691 () V!17825)

(assert (=> b!4854066 (= e!3034601 (= call!337691 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun bm!337685 () Bool)

(declare-fun call!337692 () ListLongMap!6561)

(declare-fun getCurrentListMap!34 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 32) Int) ListLongMap!6561)

(assert (=> bm!337685 (= call!337692 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854067 () Bool)

(declare-fun e!3034608 () V!17825)

(declare-fun e!3034602 () V!17825)

(assert (=> b!4854067 (= e!3034608 e!3034602)))

(declare-fun c!825804 () Bool)

(assert (=> b!4854067 (= c!825804 (and (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4854068 () Bool)

(declare-fun e!3034610 () Bool)

(declare-fun call!337690 () V!17825)

(assert (=> b!4854068 (= e!3034610 (= call!337690 (minValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854069 () Bool)

(declare-fun lt!1990867 () V!17825)

(declare-fun e!3034603 () Bool)

(declare-fun dynLambda!22385 (Int (_ BitVec 64)) V!17825)

(assert (=> b!4854069 (= e!3034603 (= lt!1990867 (dynLambda!22385 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))) key!7003)))))

(declare-fun d!1558165 () Bool)

(assert (=> d!1558165 e!3034603))

(declare-fun c!825805 () Bool)

(assert (=> d!1558165 (= c!825805 (contains!19347 (v!49577 (underlying!10400 thiss!47245)) key!7003))))

(assert (=> d!1558165 (= lt!1990867 e!3034608)))

(declare-fun c!825801 () Bool)

(assert (=> d!1558165 (= c!825801 (= key!7003 (bvneg key!7003)))))

(declare-fun valid!4126 (LongMapFixedSize!10198) Bool)

(assert (=> d!1558165 (valid!4126 (v!49577 (underlying!10400 thiss!47245)))))

(assert (=> d!1558165 (= (apply!13493 (v!49577 (underlying!10400 thiss!47245)) key!7003) lt!1990867)))

(declare-fun b!4854070 () Bool)

(declare-fun e!3034606 () Bool)

(declare-datatypes ((SeekEntryResult!31 0))(
  ( (Found!31 (index!1506 (_ BitVec 32))) (Undefined!31) (MissingZero!31 (index!1507 (_ BitVec 32))) (MissingVacant!31 (index!1508 (_ BitVec 32))) (Intermediate!31 (undefined!112 Bool) (index!1509 (_ BitVec 32)) (x!835735 (_ BitVec 32))) )
))
(declare-fun lt!1990863 () SeekEntryResult!31)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4854070 (= e!3034606 (inRange!0 (index!1506 lt!1990863) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854071 () Bool)

(assert (=> b!4854071 (= e!3034602 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))))))

(declare-fun b!4854072 () Bool)

(declare-fun get!19147 (Option!13757) V!17825)

(declare-fun map!12788 (LongMapFixedSize!10198) ListLongMap!6561)

(assert (=> b!4854072 (= e!3034603 (= lt!1990867 (get!19147 (getValueByKey!2755 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245)))) key!7003))))))

(declare-fun b!4854073 () Bool)

(declare-datatypes ((Unit!145815 0))(
  ( (Unit!145816) )
))
(declare-fun lt!1990866 () Unit!145815)

(declare-fun lt!1990864 () Unit!145815)

(assert (=> b!4854073 (= lt!1990866 lt!1990864)))

(declare-fun e!3034604 () Bool)

(assert (=> b!4854073 e!3034604))

(declare-fun c!825803 () Bool)

(assert (=> b!4854073 (= c!825803 (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1990870 () SeekEntryResult!31)

(declare-fun lemmaKeyInListMapThenSameValueInArray!19 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 64) (_ BitVec 32) Int) Unit!145815)

(assert (=> b!4854073 (= lt!1990864 (lemmaKeyInListMapThenSameValueInArray!19 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990870) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990860 () Unit!145815)

(declare-fun lt!1990861 () Unit!145815)

(assert (=> b!4854073 (= lt!1990860 lt!1990861)))

(assert (=> b!4854073 (contains!19346 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!24 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 32) Int) Unit!145815)

(assert (=> b!4854073 (= lt!1990861 (lemmaValidKeyInArrayIsInListMap!24 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) (index!1506 lt!1990870) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990868 () Unit!145815)

(declare-fun lt!1990865 () Unit!145815)

(assert (=> b!4854073 (= lt!1990868 lt!1990865)))

(declare-fun arrayContainsKey!0 (array!18786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4854073 (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18786 (_ BitVec 64) (_ BitVec 32)) Unit!145815)

(assert (=> b!4854073 (= lt!1990865 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990870)))))

(declare-fun e!3034607 () V!17825)

(assert (=> b!4854073 (= e!3034607 (select (arr!8384 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870)))))

(declare-fun b!4854074 () Bool)

(declare-fun c!825799 () Bool)

(assert (=> b!4854074 (= c!825799 (and (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4854074 (= e!3034602 e!3034605)))

(declare-fun b!4854075 () Bool)

(assert (=> b!4854075 (= e!3034607 (dynLambda!22385 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))) key!7003))))

(declare-fun call!337693 () ListLongMap!6561)

(declare-fun bm!337686 () Bool)

(declare-fun apply!13494 (ListLongMap!6561 (_ BitVec 64)) V!17825)

(assert (=> bm!337686 (= call!337691 (apply!13494 (ite c!825803 call!337692 call!337693) key!7003))))

(declare-fun b!4854076 () Bool)

(assert (=> b!4854076 (= e!3034608 e!3034607)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!18786 (_ BitVec 32)) SeekEntryResult!31)

(assert (=> b!4854076 (= lt!1990870 (seekEntry!0 key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990862 () Unit!145815)

(declare-fun lemmaSeekEntryGivesInRangeIndex!19 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 64)) Unit!145815)

(assert (=> b!4854076 (= lt!1990862 (lemmaSeekEntryGivesInRangeIndex!19 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003))))

(assert (=> b!4854076 (= lt!1990863 (seekEntry!0 key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun res!2072439 () Bool)

(assert (=> b!4854076 (= res!2072439 (not ((_ is Found!31) lt!1990863)))))

(assert (=> b!4854076 (=> res!2072439 e!3034606)))

(assert (=> b!4854076 e!3034606))

(declare-fun lt!1990869 () Unit!145815)

(assert (=> b!4854076 (= lt!1990869 lt!1990862)))

(declare-fun c!825800 () Bool)

(assert (=> b!4854076 (= c!825800 ((_ is Found!31) lt!1990870))))

(declare-fun b!4854077 () Bool)

(assert (=> b!4854077 (= e!3034604 e!3034601)))

(declare-fun res!2072442 () Bool)

(assert (=> b!4854077 (= res!2072442 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4854077 (=> (not res!2072442) (not e!3034601))))

(declare-fun b!4854078 () Bool)

(declare-fun res!2072441 () Bool)

(declare-fun e!3034609 () Bool)

(assert (=> b!4854078 (=> (not res!2072441) (not e!3034609))))

(assert (=> b!4854078 (= res!2072441 (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000))))

(declare-fun e!3034600 () Bool)

(assert (=> b!4854078 (= e!3034600 e!3034609)))

(declare-fun bm!337687 () Bool)

(assert (=> bm!337687 (= call!337690 call!337691)))

(declare-fun b!4854079 () Bool)

(declare-fun res!2072440 () Bool)

(assert (=> b!4854079 (=> (not res!2072440) (not e!3034610))))

(assert (=> b!4854079 (= res!2072440 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4854079 (= e!3034600 e!3034610)))

(declare-fun bm!337688 () Bool)

(assert (=> bm!337688 (= call!337693 call!337692)))

(declare-fun b!4854080 () Bool)

(assert (=> b!4854080 (= e!3034604 e!3034600)))

(declare-fun c!825802 () Bool)

(assert (=> b!4854080 (= c!825802 (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4854081 () Bool)

(assert (=> b!4854081 (= e!3034609 (= call!337690 (select (arr!8384 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))))))

(declare-fun b!4854082 () Bool)

(assert (=> b!4854082 (= e!3034605 (dynLambda!22385 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))) key!7003))))

(assert (= (and d!1558165 c!825801) b!4854067))

(assert (= (and d!1558165 (not c!825801)) b!4854076))

(assert (= (and b!4854067 c!825804) b!4854071))

(assert (= (and b!4854067 (not c!825804)) b!4854074))

(assert (= (and b!4854074 c!825799) b!4854065))

(assert (= (and b!4854074 (not c!825799)) b!4854082))

(assert (= (and b!4854076 (not res!2072439)) b!4854070))

(assert (= (and b!4854076 c!825800) b!4854073))

(assert (= (and b!4854076 (not c!825800)) b!4854075))

(assert (= (and b!4854073 c!825803) b!4854077))

(assert (= (and b!4854073 (not c!825803)) b!4854080))

(assert (= (and b!4854077 res!2072442) b!4854066))

(assert (= (and b!4854080 c!825802) b!4854079))

(assert (= (and b!4854080 (not c!825802)) b!4854078))

(assert (= (and b!4854079 res!2072440) b!4854068))

(assert (= (and b!4854078 res!2072441) b!4854081))

(assert (= (or b!4854068 b!4854081) bm!337688))

(assert (= (or b!4854068 b!4854081) bm!337687))

(assert (= (or b!4854066 bm!337688) bm!337685))

(assert (= (or b!4854066 bm!337687) bm!337686))

(assert (= (and d!1558165 c!825805) b!4854072))

(assert (= (and d!1558165 (not c!825805)) b!4854069))

(declare-fun b_lambda!193203 () Bool)

(assert (=> (not b_lambda!193203) (not b!4854069)))

(declare-fun t!363320 () Bool)

(declare-fun tb!257549 () Bool)

(assert (=> (and b!4854028 (= (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) t!363320) tb!257549))

(declare-fun result!320374 () Bool)

(assert (=> tb!257549 (= result!320374 tp_is_empty!35463)))

(assert (=> b!4854069 t!363320))

(declare-fun b_and!342143 () Bool)

(assert (= b_and!342141 (and (=> t!363320 result!320374) b_and!342143)))

(declare-fun b_lambda!193205 () Bool)

(assert (=> (not b_lambda!193205) (not b!4854075)))

(assert (=> b!4854075 t!363320))

(declare-fun b_and!342145 () Bool)

(assert (= b_and!342143 (and (=> t!363320 result!320374) b_and!342145)))

(declare-fun b_lambda!193207 () Bool)

(assert (=> (not b_lambda!193207) (not b!4854082)))

(assert (=> b!4854082 t!363320))

(declare-fun b_and!342147 () Bool)

(assert (= b_and!342145 (and (=> t!363320 result!320374) b_and!342147)))

(declare-fun m!5852072 () Bool)

(assert (=> b!4854076 m!5852072))

(declare-fun m!5852074 () Bool)

(assert (=> b!4854076 m!5852074))

(declare-fun m!5852076 () Bool)

(assert (=> b!4854075 m!5852076))

(assert (=> b!4854069 m!5852076))

(declare-fun m!5852078 () Bool)

(assert (=> b!4854072 m!5852078))

(declare-fun m!5852080 () Bool)

(assert (=> b!4854072 m!5852080))

(assert (=> b!4854072 m!5852080))

(declare-fun m!5852082 () Bool)

(assert (=> b!4854072 m!5852082))

(declare-fun m!5852084 () Bool)

(assert (=> b!4854081 m!5852084))

(declare-fun m!5852086 () Bool)

(assert (=> b!4854078 m!5852086))

(assert (=> b!4854082 m!5852076))

(declare-fun m!5852088 () Bool)

(assert (=> bm!337686 m!5852088))

(declare-fun m!5852090 () Bool)

(assert (=> bm!337685 m!5852090))

(declare-fun m!5852092 () Bool)

(assert (=> b!4854070 m!5852092))

(declare-fun m!5852094 () Bool)

(assert (=> b!4854073 m!5852094))

(declare-fun m!5852096 () Bool)

(assert (=> b!4854073 m!5852096))

(assert (=> b!4854073 m!5852084))

(assert (=> b!4854073 m!5852090))

(assert (=> b!4854073 m!5852086))

(declare-fun m!5852098 () Bool)

(assert (=> b!4854073 m!5852098))

(declare-fun m!5852100 () Bool)

(assert (=> b!4854073 m!5852100))

(assert (=> b!4854073 m!5852090))

(assert (=> b!4854073 m!5852098))

(declare-fun m!5852102 () Bool)

(assert (=> b!4854073 m!5852102))

(assert (=> d!1558165 m!5852070))

(declare-fun m!5852104 () Bool)

(assert (=> d!1558165 m!5852104))

(assert (=> b!4854025 d!1558165))

(declare-fun d!1558167 () Bool)

(assert (=> d!1558167 (= (array_inv!6059 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (bvsge (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000))))

(assert (=> b!4854028 d!1558167))

(declare-fun d!1558169 () Bool)

(assert (=> d!1558169 (= (array_inv!6060 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) (bvsge (size!36658 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000))))

(assert (=> b!4854028 d!1558169))

(declare-fun d!1558171 () Bool)

(declare-fun isEmpty!29787 (Option!13757) Bool)

(assert (=> d!1558171 (= (isDefined!10836 (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003)) (not (isEmpty!29787 (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003))))))

(declare-fun bs!1173248 () Bool)

(assert (= bs!1173248 d!1558171))

(assert (=> bs!1173248 m!5852060))

(declare-fun m!5852106 () Bool)

(assert (=> bs!1173248 m!5852106))

(assert (=> b!4854023 d!1558171))

(declare-fun b!4854093 () Bool)

(declare-fun e!3034615 () Option!13757)

(assert (=> b!4854093 (= e!3034615 (Some!13756 (_2!33059 (h!62146 (toList!7909 (map!12787 thiss!47245))))))))

(declare-fun b!4854095 () Bool)

(declare-fun e!3034616 () Option!13757)

(assert (=> b!4854095 (= e!3034616 (getValueByKey!2755 (t!363318 (toList!7909 (map!12787 thiss!47245))) key!7003))))

(declare-fun d!1558173 () Bool)

(declare-fun c!825810 () Bool)

(assert (=> d!1558173 (= c!825810 (and ((_ is Cons!55698) (toList!7909 (map!12787 thiss!47245))) (= (_1!33059 (h!62146 (toList!7909 (map!12787 thiss!47245)))) key!7003)))))

(assert (=> d!1558173 (= (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003) e!3034615)))

(declare-fun b!4854096 () Bool)

(assert (=> b!4854096 (= e!3034616 None!13756)))

(declare-fun b!4854094 () Bool)

(assert (=> b!4854094 (= e!3034615 e!3034616)))

(declare-fun c!825811 () Bool)

(assert (=> b!4854094 (= c!825811 (and ((_ is Cons!55698) (toList!7909 (map!12787 thiss!47245))) (not (= (_1!33059 (h!62146 (toList!7909 (map!12787 thiss!47245)))) key!7003))))))

(assert (= (and d!1558173 c!825810) b!4854093))

(assert (= (and d!1558173 (not c!825810)) b!4854094))

(assert (= (and b!4854094 c!825811) b!4854095))

(assert (= (and b!4854094 (not c!825811)) b!4854096))

(declare-fun m!5852108 () Bool)

(assert (=> b!4854095 m!5852108))

(assert (=> b!4854023 d!1558173))

(declare-fun d!1558175 () Bool)

(assert (=> d!1558175 (= (map!12787 thiss!47245) (map!12788 (v!49577 (underlying!10400 thiss!47245))))))

(declare-fun bs!1173249 () Bool)

(assert (= bs!1173249 d!1558175))

(assert (=> bs!1173249 m!5852078))

(assert (=> b!4854023 d!1558175))

(declare-fun d!1558177 () Bool)

(assert (=> d!1558177 (= (valid!4125 thiss!47245) (valid!4126 (v!49577 (underlying!10400 thiss!47245))))))

(declare-fun bs!1173250 () Bool)

(assert (= bs!1173250 d!1558177))

(assert (=> bs!1173250 m!5852104))

(assert (=> b!4854022 d!1558177))

(declare-fun condMapEmpty!22496 () Bool)

(declare-fun mapDefault!22496 () V!17825)

(assert (=> mapNonEmpty!22493 (= condMapEmpty!22496 (= mapRest!22493 ((as const (Array (_ BitVec 32) V!17825)) mapDefault!22496)))))

(declare-fun mapRes!22496 () Bool)

(assert (=> mapNonEmpty!22493 (= tp!1365313 (and tp_is_empty!35463 mapRes!22496))))

(declare-fun mapIsEmpty!22496 () Bool)

(assert (=> mapIsEmpty!22496 mapRes!22496))

(declare-fun mapNonEmpty!22496 () Bool)

(declare-fun tp!1365317 () Bool)

(assert (=> mapNonEmpty!22496 (= mapRes!22496 (and tp!1365317 tp_is_empty!35463))))

(declare-fun mapRest!22496 () (Array (_ BitVec 32) V!17825))

(declare-fun mapKey!22496 () (_ BitVec 32))

(declare-fun mapValue!22496 () V!17825)

(assert (=> mapNonEmpty!22496 (= mapRest!22493 (store mapRest!22496 mapKey!22496 mapValue!22496))))

(assert (= (and mapNonEmpty!22493 condMapEmpty!22496) mapIsEmpty!22496))

(assert (= (and mapNonEmpty!22493 (not condMapEmpty!22496)) mapNonEmpty!22496))

(declare-fun m!5852110 () Bool)

(assert (=> mapNonEmpty!22496 m!5852110))

(declare-fun b_lambda!193209 () Bool)

(assert (= b_lambda!193207 (or (and b!4854028 b_free!130329) b_lambda!193209)))

(declare-fun b_lambda!193211 () Bool)

(assert (= b_lambda!193205 (or (and b!4854028 b_free!130329) b_lambda!193211)))

(declare-fun b_lambda!193213 () Bool)

(assert (= b_lambda!193203 (or (and b!4854028 b_free!130329) b_lambda!193213)))

(check-sat (not b_next!131119) (not d!1558171) (not d!1558177) (not b_lambda!193209) (not b!4854073) (not b_lambda!193211) (not b!4854076) (not d!1558163) tp_is_empty!35463 (not b!4854078) (not mapNonEmpty!22496) (not b_lambda!193213) b_and!342147 (not bm!337685) (not d!1558175) (not b!4854070) (not b!4854072) (not bm!337686) (not b!4854095) (not d!1558165))
(check-sat b_and!342147 (not b_next!131119))
(get-model)

(declare-fun d!1558179 () Bool)

(assert (=> d!1558179 (= (apply!13494 (ite c!825803 call!337692 call!337693) key!7003) (get!19147 (getValueByKey!2755 (toList!7909 (ite c!825803 call!337692 call!337693)) key!7003)))))

(declare-fun bs!1173251 () Bool)

(assert (= bs!1173251 d!1558179))

(declare-fun m!5852112 () Bool)

(assert (=> bs!1173251 m!5852112))

(assert (=> bs!1173251 m!5852112))

(declare-fun m!5852114 () Bool)

(assert (=> bs!1173251 m!5852114))

(assert (=> bm!337686 d!1558179))

(declare-fun b!4854119 () Bool)

(declare-fun c!825825 () Bool)

(declare-fun lt!1990913 () SeekEntryResult!31)

(assert (=> b!4854119 (= c!825825 ((_ is Found!31) lt!1990913))))

(assert (=> b!4854119 (= lt!1990913 (seekEntry!0 key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun e!3034627 () Bool)

(declare-fun e!3034628 () Bool)

(assert (=> b!4854119 (= e!3034627 e!3034628)))

(declare-fun b!4854120 () Bool)

(declare-fun e!3034631 () Bool)

(declare-fun call!337701 () Bool)

(assert (=> b!4854120 (= e!3034631 call!337701)))

(declare-fun b!4854121 () Bool)

(declare-fun e!3034630 () Bool)

(assert (=> b!4854121 (= e!3034630 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!337700 () Bool)

(declare-fun call!337702 () ListLongMap!6561)

(declare-fun bm!337695 () Bool)

(assert (=> bm!337695 (= call!337700 (contains!19346 call!337702 (ite c!825825 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990913)) key!7003)))))

(declare-fun b!4854122 () Bool)

(assert (=> b!4854122 (= e!3034628 true)))

(declare-fun lt!1990912 () Unit!145815)

(assert (=> b!4854122 (= lt!1990912 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990913)))))

(assert (=> b!4854122 call!337701))

(declare-fun lt!1990901 () Unit!145815)

(assert (=> b!4854122 (= lt!1990901 lt!1990912)))

(declare-fun lt!1990905 () Unit!145815)

(assert (=> b!4854122 (= lt!1990905 (lemmaValidKeyInArrayIsInListMap!24 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) (index!1506 lt!1990913) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(assert (=> b!4854122 call!337700))

(declare-fun lt!1990902 () Unit!145815)

(assert (=> b!4854122 (= lt!1990902 lt!1990905)))

(declare-fun bm!337697 () Bool)

(assert (=> bm!337697 (= call!337702 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854123 () Bool)

(assert (=> b!4854123 (= e!3034630 e!3034627)))

(declare-fun c!825824 () Bool)

(assert (=> b!4854123 (= c!825824 (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4854124 () Bool)

(assert (=> b!4854124 false))

(declare-fun lt!1990915 () Unit!145815)

(declare-fun lt!1990904 () Unit!145815)

(assert (=> b!4854124 (= lt!1990915 lt!1990904)))

(declare-fun lt!1990909 () SeekEntryResult!31)

(declare-fun lt!1990903 () (_ BitVec 32))

(assert (=> b!4854124 (and ((_ is Found!31) lt!1990909) (= (index!1506 lt!1990909) lt!1990903))))

(assert (=> b!4854124 (= lt!1990909 (seekEntry!0 key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!18786 (_ BitVec 32)) Unit!145815)

(assert (=> b!4854124 (= lt!1990904 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!7003 lt!1990903 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990907 () Unit!145815)

(declare-fun lt!1990908 () Unit!145815)

(assert (=> b!4854124 (= lt!1990907 lt!1990908)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18786 (_ BitVec 32)) Bool)

(assert (=> b!4854124 (arrayForallSeekEntryOrOpenFound!0 lt!1990903 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!18786 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!145815)

(assert (=> b!4854124 (= lt!1990908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 lt!1990903))))

(declare-fun arrayScanForKey!0 (array!18786 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4854124 (= lt!1990903 (arrayScanForKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000))))

(declare-fun lt!1990914 () Unit!145815)

(declare-fun lt!1990910 () Unit!145815)

(assert (=> b!4854124 (= lt!1990914 lt!1990910)))

(assert (=> b!4854124 e!3034631))

(declare-fun c!825823 () Bool)

(assert (=> b!4854124 (= c!825823 (and (not (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!24 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 64) Int) Unit!145815)

(assert (=> b!4854124 (= lt!1990910 (lemmaKeyInListMapIsInArray!24 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun e!3034629 () Unit!145815)

(declare-fun Unit!145817 () Unit!145815)

(assert (=> b!4854124 (= e!3034629 Unit!145817)))

(declare-fun b!4854125 () Bool)

(declare-fun Unit!145818 () Unit!145815)

(assert (=> b!4854125 (= e!3034629 Unit!145818)))

(declare-fun b!4854126 () Bool)

(assert (=> b!4854126 (= e!3034628 false)))

(declare-fun c!825826 () Bool)

(assert (=> b!4854126 (= c!825826 call!337700)))

(declare-fun lt!1990911 () Unit!145815)

(assert (=> b!4854126 (= lt!1990911 e!3034629)))

(declare-fun b!4854127 () Bool)

(assert (=> b!4854127 (= e!3034631 (ite (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4854128 () Bool)

(assert (=> b!4854128 (= e!3034627 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!1558181 () Bool)

(declare-fun lt!1990906 () Bool)

(assert (=> d!1558181 (= lt!1990906 (contains!19346 (map!12788 (v!49577 (underlying!10400 thiss!47245))) key!7003))))

(assert (=> d!1558181 (= lt!1990906 e!3034630)))

(declare-fun c!825822 () Bool)

(assert (=> d!1558181 (= c!825822 (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1558181 (valid!4126 (v!49577 (underlying!10400 thiss!47245)))))

(assert (=> d!1558181 (= (contains!19347 (v!49577 (underlying!10400 thiss!47245)) key!7003) lt!1990906)))

(declare-fun bm!337696 () Bool)

(assert (=> bm!337696 (= call!337701 (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000))))

(assert (= (and d!1558181 c!825822) b!4854121))

(assert (= (and d!1558181 (not c!825822)) b!4854123))

(assert (= (and b!4854123 c!825824) b!4854128))

(assert (= (and b!4854123 (not c!825824)) b!4854119))

(assert (= (and b!4854119 c!825825) b!4854122))

(assert (= (and b!4854119 (not c!825825)) b!4854126))

(assert (= (and b!4854126 c!825826) b!4854124))

(assert (= (and b!4854126 (not c!825826)) b!4854125))

(assert (= (and b!4854124 c!825823) b!4854120))

(assert (= (and b!4854124 (not c!825823)) b!4854127))

(assert (= (or b!4854122 b!4854120) bm!337696))

(assert (= (or b!4854122 b!4854126) bm!337697))

(assert (= (or b!4854122 b!4854126) bm!337695))

(assert (=> b!4854119 m!5852072))

(declare-fun m!5852116 () Bool)

(assert (=> bm!337695 m!5852116))

(declare-fun m!5852118 () Bool)

(assert (=> bm!337695 m!5852118))

(assert (=> bm!337697 m!5852090))

(assert (=> bm!337696 m!5852086))

(assert (=> d!1558181 m!5852078))

(assert (=> d!1558181 m!5852078))

(declare-fun m!5852120 () Bool)

(assert (=> d!1558181 m!5852120))

(assert (=> d!1558181 m!5852104))

(declare-fun m!5852122 () Bool)

(assert (=> b!4854122 m!5852122))

(declare-fun m!5852124 () Bool)

(assert (=> b!4854122 m!5852124))

(assert (=> b!4854124 m!5852072))

(declare-fun m!5852126 () Bool)

(assert (=> b!4854124 m!5852126))

(declare-fun m!5852128 () Bool)

(assert (=> b!4854124 m!5852128))

(declare-fun m!5852130 () Bool)

(assert (=> b!4854124 m!5852130))

(declare-fun m!5852132 () Bool)

(assert (=> b!4854124 m!5852132))

(declare-fun m!5852134 () Bool)

(assert (=> b!4854124 m!5852134))

(assert (=> d!1558165 d!1558181))

(declare-fun d!1558183 () Bool)

(declare-fun res!2072449 () Bool)

(declare-fun e!3034634 () Bool)

(assert (=> d!1558183 (=> (not res!2072449) (not e!3034634))))

(declare-fun simpleValid!14 (LongMapFixedSize!10198) Bool)

(assert (=> d!1558183 (= res!2072449 (simpleValid!14 (v!49577 (underlying!10400 thiss!47245))))))

(assert (=> d!1558183 (= (valid!4126 (v!49577 (underlying!10400 thiss!47245))) e!3034634)))

(declare-fun b!4854135 () Bool)

(declare-fun res!2072450 () Bool)

(assert (=> b!4854135 (=> (not res!2072450) (not e!3034634))))

(declare-fun arrayCountValidKeys!0 (array!18786 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4854135 (= res!2072450 (= (arrayCountValidKeys!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))) (_size!10218 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854136 () Bool)

(declare-fun res!2072451 () Bool)

(assert (=> b!4854136 (=> (not res!2072451) (not e!3034634))))

(assert (=> b!4854136 (= res!2072451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854137 () Bool)

(declare-datatypes ((List!55823 0))(
  ( (Nil!55699) (Cons!55699 (h!62147 (_ BitVec 64)) (t!363321 List!55823)) )
))
(declare-fun arrayNoDuplicates!0 (array!18786 (_ BitVec 32) List!55823) Bool)

(assert (=> b!4854137 (= e!3034634 (arrayNoDuplicates!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 Nil!55699))))

(assert (= (and d!1558183 res!2072449) b!4854135))

(assert (= (and b!4854135 res!2072450) b!4854136))

(assert (= (and b!4854136 res!2072451) b!4854137))

(declare-fun m!5852136 () Bool)

(assert (=> d!1558183 m!5852136))

(declare-fun m!5852138 () Bool)

(assert (=> b!4854135 m!5852138))

(declare-fun m!5852140 () Bool)

(assert (=> b!4854136 m!5852140))

(declare-fun m!5852142 () Bool)

(assert (=> b!4854137 m!5852142))

(assert (=> d!1558165 d!1558183))

(declare-fun b!4854138 () Bool)

(declare-fun e!3034635 () Option!13757)

(assert (=> b!4854138 (= e!3034635 (Some!13756 (_2!33059 (h!62146 (t!363318 (toList!7909 (map!12787 thiss!47245)))))))))

(declare-fun b!4854140 () Bool)

(declare-fun e!3034636 () Option!13757)

(assert (=> b!4854140 (= e!3034636 (getValueByKey!2755 (t!363318 (t!363318 (toList!7909 (map!12787 thiss!47245)))) key!7003))))

(declare-fun d!1558185 () Bool)

(declare-fun c!825827 () Bool)

(assert (=> d!1558185 (= c!825827 (and ((_ is Cons!55698) (t!363318 (toList!7909 (map!12787 thiss!47245)))) (= (_1!33059 (h!62146 (t!363318 (toList!7909 (map!12787 thiss!47245))))) key!7003)))))

(assert (=> d!1558185 (= (getValueByKey!2755 (t!363318 (toList!7909 (map!12787 thiss!47245))) key!7003) e!3034635)))

(declare-fun b!4854141 () Bool)

(assert (=> b!4854141 (= e!3034636 None!13756)))

(declare-fun b!4854139 () Bool)

(assert (=> b!4854139 (= e!3034635 e!3034636)))

(declare-fun c!825828 () Bool)

(assert (=> b!4854139 (= c!825828 (and ((_ is Cons!55698) (t!363318 (toList!7909 (map!12787 thiss!47245)))) (not (= (_1!33059 (h!62146 (t!363318 (toList!7909 (map!12787 thiss!47245))))) key!7003))))))

(assert (= (and d!1558185 c!825827) b!4854138))

(assert (= (and d!1558185 (not c!825827)) b!4854139))

(assert (= (and b!4854139 c!825828) b!4854140))

(assert (= (and b!4854139 (not c!825828)) b!4854141))

(declare-fun m!5852144 () Bool)

(assert (=> b!4854140 m!5852144))

(assert (=> b!4854095 d!1558185))

(assert (=> d!1558177 d!1558183))

(declare-fun b!4854156 () Bool)

(declare-fun res!2072459 () Bool)

(declare-fun e!3034648 () Bool)

(assert (=> b!4854156 (=> (not res!2072459) (not e!3034648))))

(assert (=> b!4854156 (= res!2072459 (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000))))

(declare-fun e!3034651 () Bool)

(assert (=> b!4854156 (= e!3034651 e!3034648)))

(declare-fun bm!337706 () Bool)

(declare-fun call!337714 () V!17825)

(declare-fun call!337713 () V!17825)

(assert (=> bm!337706 (= call!337714 call!337713)))

(declare-fun b!4854157 () Bool)

(declare-fun e!3034650 () Bool)

(declare-fun e!3034647 () Bool)

(assert (=> b!4854157 (= e!3034650 e!3034647)))

(declare-fun res!2072460 () Bool)

(assert (=> b!4854157 (= res!2072460 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4854157 (=> (not res!2072460) (not e!3034647))))

(declare-fun b!4854158 () Bool)

(declare-fun e!3034649 () Bool)

(assert (=> b!4854158 (= e!3034649 (= call!337714 (minValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854159 () Bool)

(assert (=> b!4854159 (= e!3034647 (= call!337713 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854160 () Bool)

(assert (=> b!4854160 (= e!3034650 e!3034651)))

(declare-fun c!825833 () Bool)

(assert (=> b!4854160 (= c!825833 (= key!7003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!337712 () ListLongMap!6561)

(declare-fun bm!337707 () Bool)

(declare-fun c!825834 () Bool)

(declare-fun call!337711 () ListLongMap!6561)

(assert (=> bm!337707 (= call!337713 (apply!13494 (ite c!825834 call!337711 call!337712) key!7003))))

(declare-fun d!1558187 () Bool)

(assert (=> d!1558187 e!3034650))

(assert (=> d!1558187 (= c!825834 (= key!7003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1990918 () Unit!145815)

(declare-fun choose!35541 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 64) (_ BitVec 32) Int) Unit!145815)

(assert (=> d!1558187 (= lt!1990918 (choose!35541 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990870) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!1558187 (validMask!0 (mask!15392 (v!49577 (underlying!10400 thiss!47245))))))

(assert (=> d!1558187 (= (lemmaKeyInListMapThenSameValueInArray!19 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990870) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) lt!1990918)))

(declare-fun b!4854161 () Bool)

(assert (=> b!4854161 (= e!3034648 (= call!337714 (select (arr!8384 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))))))

(assert (=> b!4854161 (and (bvsge (index!1506 lt!1990870) #b00000000000000000000000000000000) (bvslt (index!1506 lt!1990870) (size!36658 (_values!5417 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun b!4854162 () Bool)

(declare-fun res!2072458 () Bool)

(assert (=> b!4854162 (=> (not res!2072458) (not e!3034649))))

(assert (=> b!4854162 (= res!2072458 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4854162 (= e!3034651 e!3034649)))

(declare-fun bm!337708 () Bool)

(assert (=> bm!337708 (= call!337711 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun bm!337709 () Bool)

(assert (=> bm!337709 (= call!337712 call!337711)))

(assert (= (and d!1558187 c!825834) b!4854157))

(assert (= (and d!1558187 (not c!825834)) b!4854160))

(assert (= (and b!4854157 res!2072460) b!4854159))

(assert (= (and b!4854160 c!825833) b!4854162))

(assert (= (and b!4854160 (not c!825833)) b!4854156))

(assert (= (and b!4854162 res!2072458) b!4854158))

(assert (= (and b!4854156 res!2072459) b!4854161))

(assert (= (or b!4854158 b!4854161) bm!337709))

(assert (= (or b!4854158 b!4854161) bm!337706))

(assert (= (or b!4854159 bm!337709) bm!337708))

(assert (= (or b!4854159 bm!337706) bm!337707))

(declare-fun m!5852146 () Bool)

(assert (=> d!1558187 m!5852146))

(declare-fun m!5852148 () Bool)

(assert (=> d!1558187 m!5852148))

(assert (=> b!4854156 m!5852086))

(assert (=> bm!337708 m!5852090))

(assert (=> b!4854161 m!5852084))

(declare-fun m!5852150 () Bool)

(assert (=> bm!337707 m!5852150))

(assert (=> b!4854073 d!1558187))

(declare-fun d!1558189 () Bool)

(declare-fun e!3034685 () Bool)

(assert (=> d!1558189 e!3034685))

(declare-fun res!2072487 () Bool)

(assert (=> d!1558189 (=> (not res!2072487) (not e!3034685))))

(assert (=> d!1558189 (= res!2072487 (or (bvsge #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))))))

(declare-fun lt!1990964 () ListLongMap!6561)

(declare-fun lt!1990984 () ListLongMap!6561)

(assert (=> d!1558189 (= lt!1990964 lt!1990984)))

(declare-fun lt!1990981 () Unit!145815)

(declare-fun e!3034686 () Unit!145815)

(assert (=> d!1558189 (= lt!1990981 e!3034686)))

(declare-fun c!825849 () Bool)

(declare-fun e!3034688 () Bool)

(assert (=> d!1558189 (= c!825849 e!3034688)))

(declare-fun res!2072482 () Bool)

(assert (=> d!1558189 (=> (not res!2072482) (not e!3034688))))

(assert (=> d!1558189 (= res!2072482 (bvslt #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun e!3034680 () ListLongMap!6561)

(assert (=> d!1558189 (= lt!1990984 e!3034680)))

(declare-fun c!825852 () Bool)

(assert (=> d!1558189 (= c!825852 (and (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1558189 (validMask!0 (mask!15392 (v!49577 (underlying!10400 thiss!47245))))))

(assert (=> d!1558189 (= (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) lt!1990964)))

(declare-fun b!4854205 () Bool)

(declare-fun e!3034683 () Bool)

(assert (=> b!4854205 (= e!3034683 (= (apply!13494 lt!1990964 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854206 () Bool)

(declare-fun e!3034687 () ListLongMap!6561)

(declare-fun call!337731 () ListLongMap!6561)

(assert (=> b!4854206 (= e!3034687 call!337731)))

(declare-fun b!4854207 () Bool)

(declare-fun e!3034678 () Bool)

(declare-fun e!3034689 () Bool)

(assert (=> b!4854207 (= e!3034678 e!3034689)))

(declare-fun res!2072486 () Bool)

(declare-fun call!337734 () Bool)

(assert (=> b!4854207 (= res!2072486 call!337734)))

(assert (=> b!4854207 (=> (not res!2072486) (not e!3034689))))

(declare-fun b!4854208 () Bool)

(declare-fun e!3034684 () ListLongMap!6561)

(assert (=> b!4854208 (= e!3034684 call!337731)))

(declare-fun b!4854209 () Bool)

(declare-fun e!3034681 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4854209 (= e!3034681 (validKeyInArray!0 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000)))))

(declare-fun b!4854210 () Bool)

(declare-fun e!3034679 () Bool)

(assert (=> b!4854210 (= e!3034679 e!3034683)))

(declare-fun res!2072483 () Bool)

(declare-fun call!337732 () Bool)

(assert (=> b!4854210 (= res!2072483 call!337732)))

(assert (=> b!4854210 (=> (not res!2072483) (not e!3034683))))

(declare-fun b!4854211 () Bool)

(assert (=> b!4854211 (= e!3034688 (validKeyInArray!0 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000)))))

(declare-fun bm!337724 () Bool)

(declare-fun call!337735 () ListLongMap!6561)

(declare-fun call!337729 () ListLongMap!6561)

(assert (=> bm!337724 (= call!337735 call!337729)))

(declare-fun b!4854212 () Bool)

(assert (=> b!4854212 (= e!3034685 e!3034679)))

(declare-fun c!825850 () Bool)

(assert (=> b!4854212 (= c!825850 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!337725 () Bool)

(declare-fun call!337733 () ListLongMap!6561)

(assert (=> bm!337725 (= call!337731 call!337733)))

(declare-fun call!337730 () ListLongMap!6561)

(declare-fun bm!337726 () Bool)

(declare-fun c!825848 () Bool)

(declare-fun +!2624 (ListLongMap!6561 tuple2!59530) ListLongMap!6561)

(assert (=> bm!337726 (= call!337733 (+!2624 (ite c!825852 call!337730 (ite c!825848 call!337729 call!337735)) (ite (or c!825852 c!825848) (tuple2!59531 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245)))) (tuple2!59531 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))))

(declare-fun b!4854213 () Bool)

(declare-fun res!2072481 () Bool)

(assert (=> b!4854213 (=> (not res!2072481) (not e!3034685))))

(declare-fun e!3034682 () Bool)

(assert (=> b!4854213 (= res!2072481 e!3034682)))

(declare-fun res!2072480 () Bool)

(assert (=> b!4854213 (=> res!2072480 e!3034682)))

(assert (=> b!4854213 (= res!2072480 (not e!3034681))))

(declare-fun res!2072485 () Bool)

(assert (=> b!4854213 (=> (not res!2072485) (not e!3034681))))

(assert (=> b!4854213 (= res!2072485 (bvslt #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun bm!337727 () Bool)

(assert (=> bm!337727 (= call!337729 call!337730)))

(declare-fun bm!337728 () Bool)

(assert (=> bm!337728 (= call!337734 (contains!19346 lt!1990964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4854214 () Bool)

(assert (=> b!4854214 (= e!3034689 (= (apply!13494 lt!1990964 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854215 () Bool)

(declare-fun lt!1990976 () Unit!145815)

(assert (=> b!4854215 (= e!3034686 lt!1990976)))

(declare-fun lt!1990977 () ListLongMap!6561)

(declare-fun getCurrentListMapNoExtraKeys!8 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 32) Int) ListLongMap!6561)

(assert (=> b!4854215 (= lt!1990977 (getCurrentListMapNoExtraKeys!8 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990965 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990965 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1990983 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990983 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000))))

(declare-fun lt!1990974 () Unit!145815)

(declare-fun addStillContains!29 (ListLongMap!6561 (_ BitVec 64) V!17825 (_ BitVec 64)) Unit!145815)

(assert (=> b!4854215 (= lt!1990974 (addStillContains!29 lt!1990977 lt!1990965 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) lt!1990983))))

(assert (=> b!4854215 (contains!19346 (+!2624 lt!1990977 (tuple2!59531 lt!1990965 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))))) lt!1990983)))

(declare-fun lt!1990970 () Unit!145815)

(assert (=> b!4854215 (= lt!1990970 lt!1990974)))

(declare-fun lt!1990980 () ListLongMap!6561)

(assert (=> b!4854215 (= lt!1990980 (getCurrentListMapNoExtraKeys!8 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990973 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990973 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1990972 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990972 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000))))

(declare-fun lt!1990963 () Unit!145815)

(declare-fun addApplyDifferent!7 (ListLongMap!6561 (_ BitVec 64) V!17825 (_ BitVec 64)) Unit!145815)

(assert (=> b!4854215 (= lt!1990963 (addApplyDifferent!7 lt!1990980 lt!1990973 (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) lt!1990972))))

(assert (=> b!4854215 (= (apply!13494 (+!2624 lt!1990980 (tuple2!59531 lt!1990973 (minValue!5392 (v!49577 (underlying!10400 thiss!47245))))) lt!1990972) (apply!13494 lt!1990980 lt!1990972))))

(declare-fun lt!1990968 () Unit!145815)

(assert (=> b!4854215 (= lt!1990968 lt!1990963)))

(declare-fun lt!1990966 () ListLongMap!6561)

(assert (=> b!4854215 (= lt!1990966 (getCurrentListMapNoExtraKeys!8 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990975 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990975 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1990967 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990967 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000))))

(declare-fun lt!1990982 () Unit!145815)

(assert (=> b!4854215 (= lt!1990982 (addApplyDifferent!7 lt!1990966 lt!1990975 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) lt!1990967))))

(assert (=> b!4854215 (= (apply!13494 (+!2624 lt!1990966 (tuple2!59531 lt!1990975 (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))))) lt!1990967) (apply!13494 lt!1990966 lt!1990967))))

(declare-fun lt!1990971 () Unit!145815)

(assert (=> b!4854215 (= lt!1990971 lt!1990982)))

(declare-fun lt!1990978 () ListLongMap!6561)

(assert (=> b!4854215 (= lt!1990978 (getCurrentListMapNoExtraKeys!8 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1990979 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990979 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1990969 () (_ BitVec 64))

(assert (=> b!4854215 (= lt!1990969 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000))))

(assert (=> b!4854215 (= lt!1990976 (addApplyDifferent!7 lt!1990978 lt!1990979 (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) lt!1990969))))

(assert (=> b!4854215 (= (apply!13494 (+!2624 lt!1990978 (tuple2!59531 lt!1990979 (minValue!5392 (v!49577 (underlying!10400 thiss!47245))))) lt!1990969) (apply!13494 lt!1990978 lt!1990969))))

(declare-fun b!4854216 () Bool)

(assert (=> b!4854216 (= e!3034679 (not call!337732))))

(declare-fun b!4854217 () Bool)

(assert (=> b!4854217 (= e!3034680 (+!2624 call!337733 (tuple2!59531 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5392 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun b!4854218 () Bool)

(declare-fun c!825851 () Bool)

(assert (=> b!4854218 (= c!825851 (and (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4854218 (= e!3034684 e!3034687)))

(declare-fun bm!337729 () Bool)

(assert (=> bm!337729 (= call!337732 (contains!19346 lt!1990964 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4854219 () Bool)

(declare-fun Unit!145819 () Unit!145815)

(assert (=> b!4854219 (= e!3034686 Unit!145819)))

(declare-fun b!4854220 () Bool)

(declare-fun e!3034690 () Bool)

(assert (=> b!4854220 (= e!3034682 e!3034690)))

(declare-fun res!2072479 () Bool)

(assert (=> b!4854220 (=> (not res!2072479) (not e!3034690))))

(assert (=> b!4854220 (= res!2072479 (contains!19346 lt!1990964 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000)))))

(assert (=> b!4854220 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun b!4854221 () Bool)

(assert (=> b!4854221 (= e!3034687 call!337735)))

(declare-fun b!4854222 () Bool)

(assert (=> b!4854222 (= e!3034690 (= (apply!13494 lt!1990964 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000)) (select (arr!8384 (_values!5417 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000)))))

(assert (=> b!4854222 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36658 (_values!5417 (v!49577 (underlying!10400 thiss!47245))))))))

(assert (=> b!4854222 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun b!4854223 () Bool)

(assert (=> b!4854223 (= e!3034678 (not call!337734))))

(declare-fun b!4854224 () Bool)

(declare-fun res!2072484 () Bool)

(assert (=> b!4854224 (=> (not res!2072484) (not e!3034685))))

(assert (=> b!4854224 (= res!2072484 e!3034678)))

(declare-fun c!825847 () Bool)

(assert (=> b!4854224 (= c!825847 (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!337730 () Bool)

(assert (=> bm!337730 (= call!337730 (getCurrentListMapNoExtraKeys!8 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854225 () Bool)

(assert (=> b!4854225 (= e!3034680 e!3034684)))

(assert (=> b!4854225 (= c!825848 (and (not (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!1558189 c!825852) b!4854217))

(assert (= (and d!1558189 (not c!825852)) b!4854225))

(assert (= (and b!4854225 c!825848) b!4854208))

(assert (= (and b!4854225 (not c!825848)) b!4854218))

(assert (= (and b!4854218 c!825851) b!4854206))

(assert (= (and b!4854218 (not c!825851)) b!4854221))

(assert (= (or b!4854206 b!4854221) bm!337724))

(assert (= (or b!4854208 bm!337724) bm!337727))

(assert (= (or b!4854208 b!4854206) bm!337725))

(assert (= (or b!4854217 bm!337727) bm!337730))

(assert (= (or b!4854217 bm!337725) bm!337726))

(assert (= (and d!1558189 res!2072482) b!4854211))

(assert (= (and d!1558189 c!825849) b!4854215))

(assert (= (and d!1558189 (not c!825849)) b!4854219))

(assert (= (and d!1558189 res!2072487) b!4854213))

(assert (= (and b!4854213 res!2072485) b!4854209))

(assert (= (and b!4854213 (not res!2072480)) b!4854220))

(assert (= (and b!4854220 res!2072479) b!4854222))

(assert (= (and b!4854213 res!2072481) b!4854224))

(assert (= (and b!4854224 c!825847) b!4854207))

(assert (= (and b!4854224 (not c!825847)) b!4854223))

(assert (= (and b!4854207 res!2072486) b!4854214))

(assert (= (or b!4854207 b!4854223) bm!337728))

(assert (= (and b!4854224 res!2072484) b!4854212))

(assert (= (and b!4854212 c!825850) b!4854210))

(assert (= (and b!4854212 (not c!825850)) b!4854216))

(assert (= (and b!4854210 res!2072483) b!4854205))

(assert (= (or b!4854210 b!4854216) bm!337729))

(declare-fun m!5852152 () Bool)

(assert (=> b!4854220 m!5852152))

(assert (=> b!4854220 m!5852152))

(declare-fun m!5852154 () Bool)

(assert (=> b!4854220 m!5852154))

(declare-fun m!5852156 () Bool)

(assert (=> bm!337726 m!5852156))

(declare-fun m!5852158 () Bool)

(assert (=> b!4854205 m!5852158))

(assert (=> b!4854211 m!5852152))

(assert (=> b!4854211 m!5852152))

(declare-fun m!5852160 () Bool)

(assert (=> b!4854211 m!5852160))

(declare-fun m!5852162 () Bool)

(assert (=> bm!337730 m!5852162))

(declare-fun m!5852164 () Bool)

(assert (=> b!4854214 m!5852164))

(assert (=> b!4854209 m!5852152))

(assert (=> b!4854209 m!5852152))

(assert (=> b!4854209 m!5852160))

(assert (=> b!4854222 m!5852152))

(assert (=> b!4854222 m!5852152))

(declare-fun m!5852166 () Bool)

(assert (=> b!4854222 m!5852166))

(declare-fun m!5852168 () Bool)

(assert (=> b!4854222 m!5852168))

(assert (=> d!1558189 m!5852148))

(declare-fun m!5852170 () Bool)

(assert (=> b!4854217 m!5852170))

(declare-fun m!5852172 () Bool)

(assert (=> bm!337729 m!5852172))

(declare-fun m!5852174 () Bool)

(assert (=> b!4854215 m!5852174))

(assert (=> b!4854215 m!5852162))

(declare-fun m!5852176 () Bool)

(assert (=> b!4854215 m!5852176))

(declare-fun m!5852178 () Bool)

(assert (=> b!4854215 m!5852178))

(declare-fun m!5852180 () Bool)

(assert (=> b!4854215 m!5852180))

(assert (=> b!4854215 m!5852152))

(declare-fun m!5852182 () Bool)

(assert (=> b!4854215 m!5852182))

(declare-fun m!5852184 () Bool)

(assert (=> b!4854215 m!5852184))

(declare-fun m!5852186 () Bool)

(assert (=> b!4854215 m!5852186))

(declare-fun m!5852188 () Bool)

(assert (=> b!4854215 m!5852188))

(declare-fun m!5852190 () Bool)

(assert (=> b!4854215 m!5852190))

(declare-fun m!5852192 () Bool)

(assert (=> b!4854215 m!5852192))

(declare-fun m!5852194 () Bool)

(assert (=> b!4854215 m!5852194))

(declare-fun m!5852196 () Bool)

(assert (=> b!4854215 m!5852196))

(declare-fun m!5852198 () Bool)

(assert (=> b!4854215 m!5852198))

(assert (=> b!4854215 m!5852176))

(assert (=> b!4854215 m!5852192))

(declare-fun m!5852200 () Bool)

(assert (=> b!4854215 m!5852200))

(assert (=> b!4854215 m!5852196))

(assert (=> b!4854215 m!5852194))

(declare-fun m!5852202 () Bool)

(assert (=> b!4854215 m!5852202))

(declare-fun m!5852204 () Bool)

(assert (=> bm!337728 m!5852204))

(assert (=> b!4854073 d!1558189))

(declare-fun d!1558191 () Bool)

(assert (=> d!1558191 (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000)))

(declare-fun lt!1990987 () Unit!145815)

(declare-fun choose!683 (array!18786 (_ BitVec 64) (_ BitVec 32)) Unit!145815)

(assert (=> d!1558191 (= lt!1990987 (choose!683 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990870)))))

(assert (=> d!1558191 (bvsge (index!1506 lt!1990870) #b00000000000000000000000000000000)))

(assert (=> d!1558191 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 (index!1506 lt!1990870)) lt!1990987)))

(declare-fun bs!1173252 () Bool)

(assert (= bs!1173252 d!1558191))

(assert (=> bs!1173252 m!5852086))

(declare-fun m!5852206 () Bool)

(assert (=> bs!1173252 m!5852206))

(assert (=> b!4854073 d!1558191))

(declare-fun d!1558193 () Bool)

(declare-fun e!3034693 () Bool)

(assert (=> d!1558193 e!3034693))

(declare-fun res!2072490 () Bool)

(assert (=> d!1558193 (=> (not res!2072490) (not e!3034693))))

(assert (=> d!1558193 (= res!2072490 (and (bvsge (index!1506 lt!1990870) #b00000000000000000000000000000000) (bvslt (index!1506 lt!1990870) (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))))))))

(declare-fun lt!1990990 () Unit!145815)

(declare-fun choose!35542 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 32) Int) Unit!145815)

(assert (=> d!1558193 (= lt!1990990 (choose!35542 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) (index!1506 lt!1990870) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(assert (=> d!1558193 (validMask!0 (mask!15392 (v!49577 (underlying!10400 thiss!47245))))))

(assert (=> d!1558193 (= (lemmaValidKeyInArrayIsInListMap!24 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) (index!1506 lt!1990870) (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) lt!1990990)))

(declare-fun b!4854228 () Bool)

(assert (=> b!4854228 (= e!3034693 (contains!19346 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))))))

(assert (= (and d!1558193 res!2072490) b!4854228))

(declare-fun m!5852208 () Bool)

(assert (=> d!1558193 m!5852208))

(assert (=> d!1558193 m!5852148))

(assert (=> b!4854228 m!5852090))

(assert (=> b!4854228 m!5852098))

(assert (=> b!4854228 m!5852090))

(assert (=> b!4854228 m!5852098))

(assert (=> b!4854228 m!5852102))

(assert (=> b!4854073 d!1558193))

(declare-fun d!1558195 () Bool)

(declare-fun e!3034698 () Bool)

(assert (=> d!1558195 e!3034698))

(declare-fun res!2072493 () Bool)

(assert (=> d!1558195 (=> res!2072493 e!3034698)))

(declare-fun lt!1991000 () Bool)

(assert (=> d!1558195 (= res!2072493 (not lt!1991000))))

(declare-fun lt!1990999 () Bool)

(assert (=> d!1558195 (= lt!1991000 lt!1990999)))

(declare-fun lt!1991002 () Unit!145815)

(declare-fun e!3034699 () Unit!145815)

(assert (=> d!1558195 (= lt!1991002 e!3034699)))

(declare-fun c!825855 () Bool)

(assert (=> d!1558195 (= c!825855 lt!1990999)))

(declare-fun containsKey!4773 (List!55822 (_ BitVec 64)) Bool)

(assert (=> d!1558195 (= lt!1990999 (containsKey!4773 (toList!7909 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))))))

(assert (=> d!1558195 (= (contains!19346 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))) lt!1991000)))

(declare-fun b!4854235 () Bool)

(declare-fun lt!1991001 () Unit!145815)

(assert (=> b!4854235 (= e!3034699 lt!1991001)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2527 (List!55822 (_ BitVec 64)) Unit!145815)

(assert (=> b!4854235 (= lt!1991001 (lemmaContainsKeyImpliesGetValueByKeyDefined!2527 (toList!7909 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))))))

(assert (=> b!4854235 (isDefined!10836 (getValueByKey!2755 (toList!7909 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870))))))

(declare-fun b!4854236 () Bool)

(declare-fun Unit!145820 () Unit!145815)

(assert (=> b!4854236 (= e!3034699 Unit!145820)))

(declare-fun b!4854237 () Bool)

(assert (=> b!4854237 (= e!3034698 (isDefined!10836 (getValueByKey!2755 (toList!7909 (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245))))) (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1990870)))))))

(assert (= (and d!1558195 c!825855) b!4854235))

(assert (= (and d!1558195 (not c!825855)) b!4854236))

(assert (= (and d!1558195 (not res!2072493)) b!4854237))

(assert (=> d!1558195 m!5852098))

(declare-fun m!5852210 () Bool)

(assert (=> d!1558195 m!5852210))

(assert (=> b!4854235 m!5852098))

(declare-fun m!5852212 () Bool)

(assert (=> b!4854235 m!5852212))

(assert (=> b!4854235 m!5852098))

(declare-fun m!5852214 () Bool)

(assert (=> b!4854235 m!5852214))

(assert (=> b!4854235 m!5852214))

(declare-fun m!5852216 () Bool)

(assert (=> b!4854235 m!5852216))

(assert (=> b!4854237 m!5852098))

(assert (=> b!4854237 m!5852214))

(assert (=> b!4854237 m!5852214))

(assert (=> b!4854237 m!5852216))

(assert (=> b!4854073 d!1558195))

(declare-fun d!1558197 () Bool)

(declare-fun res!2072498 () Bool)

(declare-fun e!3034704 () Bool)

(assert (=> d!1558197 (=> res!2072498 e!3034704)))

(assert (=> d!1558197 (= res!2072498 (= (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) #b00000000000000000000000000000000) key!7003))))

(assert (=> d!1558197 (= (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 #b00000000000000000000000000000000) e!3034704)))

(declare-fun b!4854242 () Bool)

(declare-fun e!3034705 () Bool)

(assert (=> b!4854242 (= e!3034704 e!3034705)))

(declare-fun res!2072499 () Bool)

(assert (=> b!4854242 (=> (not res!2072499) (not e!3034705))))

(assert (=> b!4854242 (= res!2072499 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))))

(declare-fun b!4854243 () Bool)

(assert (=> b!4854243 (= e!3034705 (arrayContainsKey!0 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) key!7003 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1558197 (not res!2072498)) b!4854242))

(assert (= (and b!4854242 res!2072499) b!4854243))

(assert (=> d!1558197 m!5852152))

(declare-fun m!5852218 () Bool)

(assert (=> b!4854243 m!5852218))

(assert (=> b!4854073 d!1558197))

(declare-fun d!1558199 () Bool)

(declare-fun e!3034706 () Bool)

(assert (=> d!1558199 e!3034706))

(declare-fun res!2072500 () Bool)

(assert (=> d!1558199 (=> res!2072500 e!3034706)))

(declare-fun lt!1991004 () Bool)

(assert (=> d!1558199 (= res!2072500 (not lt!1991004))))

(declare-fun lt!1991003 () Bool)

(assert (=> d!1558199 (= lt!1991004 lt!1991003)))

(declare-fun lt!1991006 () Unit!145815)

(declare-fun e!3034707 () Unit!145815)

(assert (=> d!1558199 (= lt!1991006 e!3034707)))

(declare-fun c!825856 () Bool)

(assert (=> d!1558199 (= c!825856 lt!1991003)))

(assert (=> d!1558199 (= lt!1991003 (containsKey!4773 (toList!7909 (map!12787 thiss!47245)) key!7003))))

(assert (=> d!1558199 (= (contains!19346 (map!12787 thiss!47245) key!7003) lt!1991004)))

(declare-fun b!4854244 () Bool)

(declare-fun lt!1991005 () Unit!145815)

(assert (=> b!4854244 (= e!3034707 lt!1991005)))

(assert (=> b!4854244 (= lt!1991005 (lemmaContainsKeyImpliesGetValueByKeyDefined!2527 (toList!7909 (map!12787 thiss!47245)) key!7003))))

(assert (=> b!4854244 (isDefined!10836 (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003))))

(declare-fun b!4854245 () Bool)

(declare-fun Unit!145821 () Unit!145815)

(assert (=> b!4854245 (= e!3034707 Unit!145821)))

(declare-fun b!4854246 () Bool)

(assert (=> b!4854246 (= e!3034706 (isDefined!10836 (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003)))))

(assert (= (and d!1558199 c!825856) b!4854244))

(assert (= (and d!1558199 (not c!825856)) b!4854245))

(assert (= (and d!1558199 (not res!2072500)) b!4854246))

(declare-fun m!5852220 () Bool)

(assert (=> d!1558199 m!5852220))

(declare-fun m!5852222 () Bool)

(assert (=> b!4854244 m!5852222))

(assert (=> b!4854244 m!5852060))

(assert (=> b!4854244 m!5852060))

(assert (=> b!4854244 m!5852062))

(assert (=> b!4854246 m!5852060))

(assert (=> b!4854246 m!5852060))

(assert (=> b!4854246 m!5852062))

(assert (=> d!1558163 d!1558199))

(assert (=> d!1558163 d!1558175))

(assert (=> d!1558163 d!1558181))

(assert (=> d!1558163 d!1558177))

(declare-fun d!1558201 () Bool)

(assert (=> d!1558201 (= (get!19147 (getValueByKey!2755 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245)))) key!7003)) (v!49578 (getValueByKey!2755 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245)))) key!7003)))))

(assert (=> b!4854072 d!1558201))

(declare-fun b!4854247 () Bool)

(declare-fun e!3034708 () Option!13757)

(assert (=> b!4854247 (= e!3034708 (Some!13756 (_2!33059 (h!62146 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245))))))))))

(declare-fun b!4854249 () Bool)

(declare-fun e!3034709 () Option!13757)

(assert (=> b!4854249 (= e!3034709 (getValueByKey!2755 (t!363318 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245))))) key!7003))))

(declare-fun d!1558203 () Bool)

(declare-fun c!825857 () Bool)

(assert (=> d!1558203 (= c!825857 (and ((_ is Cons!55698) (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245))))) (= (_1!33059 (h!62146 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245)))))) key!7003)))))

(assert (=> d!1558203 (= (getValueByKey!2755 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245)))) key!7003) e!3034708)))

(declare-fun b!4854250 () Bool)

(assert (=> b!4854250 (= e!3034709 None!13756)))

(declare-fun b!4854248 () Bool)

(assert (=> b!4854248 (= e!3034708 e!3034709)))

(declare-fun c!825858 () Bool)

(assert (=> b!4854248 (= c!825858 (and ((_ is Cons!55698) (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245))))) (not (= (_1!33059 (h!62146 (toList!7909 (map!12788 (v!49577 (underlying!10400 thiss!47245)))))) key!7003))))))

(assert (= (and d!1558203 c!825857) b!4854247))

(assert (= (and d!1558203 (not c!825857)) b!4854248))

(assert (= (and b!4854248 c!825858) b!4854249))

(assert (= (and b!4854248 (not c!825858)) b!4854250))

(declare-fun m!5852224 () Bool)

(assert (=> b!4854249 m!5852224))

(assert (=> b!4854072 d!1558203))

(declare-fun d!1558205 () Bool)

(assert (=> d!1558205 (= (map!12788 (v!49577 (underlying!10400 thiss!47245))) (getCurrentListMap!34 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000000 (defaultEntry!5521 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun bs!1173253 () Bool)

(assert (= bs!1173253 d!1558205))

(assert (=> bs!1173253 m!5852090))

(assert (=> b!4854072 d!1558205))

(declare-fun d!1558207 () Bool)

(assert (=> d!1558207 (= (inRange!0 (index!1506 lt!1990863) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))) (and (bvsge (index!1506 lt!1990863) #b00000000000000000000000000000000) (bvslt (index!1506 lt!1990863) (bvadd (mask!15392 (v!49577 (underlying!10400 thiss!47245))) #b00000000000000000000000000000001))))))

(assert (=> b!4854070 d!1558207))

(declare-fun d!1558209 () Bool)

(assert (=> d!1558209 (= (isEmpty!29787 (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003)) (not ((_ is Some!13756) (getValueByKey!2755 (toList!7909 (map!12787 thiss!47245)) key!7003))))))

(assert (=> d!1558171 d!1558209))

(assert (=> b!4854078 d!1558197))

(assert (=> d!1558175 d!1558205))

(assert (=> bm!337685 d!1558189))

(declare-fun b!4854263 () Bool)

(declare-fun e!3034716 () SeekEntryResult!31)

(declare-fun lt!1991018 () SeekEntryResult!31)

(assert (=> b!4854263 (= e!3034716 (ite ((_ is MissingVacant!31) lt!1991018) (MissingZero!31 (index!1508 lt!1991018)) lt!1991018))))

(declare-fun lt!1991015 () SeekEntryResult!31)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18786 (_ BitVec 32)) SeekEntryResult!31)

(assert (=> b!4854263 (= lt!1991018 (seekKeyOrZeroReturnVacant!0 (x!835735 lt!1991015) (index!1509 lt!1991015) (index!1509 lt!1991015) key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun b!4854264 () Bool)

(assert (=> b!4854264 (= e!3034716 (MissingZero!31 (index!1509 lt!1991015)))))

(declare-fun b!4854265 () Bool)

(declare-fun e!3034718 () SeekEntryResult!31)

(assert (=> b!4854265 (= e!3034718 (Found!31 (index!1509 lt!1991015)))))

(declare-fun b!4854266 () Bool)

(declare-fun e!3034717 () SeekEntryResult!31)

(assert (=> b!4854266 (= e!3034717 Undefined!31)))

(declare-fun d!1558211 () Bool)

(declare-fun lt!1991017 () SeekEntryResult!31)

(assert (=> d!1558211 (and (or ((_ is MissingVacant!31) lt!1991017) (not ((_ is Found!31) lt!1991017)) (and (bvsge (index!1506 lt!1991017) #b00000000000000000000000000000000) (bvslt (index!1506 lt!1991017) (size!36657 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))))))) (not ((_ is MissingVacant!31) lt!1991017)) (or (not ((_ is Found!31) lt!1991017)) (= (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1506 lt!1991017)) key!7003)))))

(assert (=> d!1558211 (= lt!1991017 e!3034717)))

(declare-fun c!825865 () Bool)

(assert (=> d!1558211 (= c!825865 (and ((_ is Intermediate!31) lt!1991015) (undefined!112 lt!1991015)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18786 (_ BitVec 32)) SeekEntryResult!31)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1558211 (= lt!1991015 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!7003 (mask!15392 (v!49577 (underlying!10400 thiss!47245)))) key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(assert (=> d!1558211 (validMask!0 (mask!15392 (v!49577 (underlying!10400 thiss!47245))))))

(assert (=> d!1558211 (= (seekEntry!0 key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))) lt!1991017)))

(declare-fun b!4854267 () Bool)

(declare-fun c!825867 () Bool)

(declare-fun lt!1991016 () (_ BitVec 64))

(assert (=> b!4854267 (= c!825867 (= lt!1991016 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4854267 (= e!3034718 e!3034716)))

(declare-fun b!4854268 () Bool)

(assert (=> b!4854268 (= e!3034717 e!3034718)))

(assert (=> b!4854268 (= lt!1991016 (select (arr!8383 (_keys!5448 (v!49577 (underlying!10400 thiss!47245)))) (index!1509 lt!1991015)))))

(declare-fun c!825866 () Bool)

(assert (=> b!4854268 (= c!825866 (= lt!1991016 key!7003))))

(assert (= (and d!1558211 c!825865) b!4854266))

(assert (= (and d!1558211 (not c!825865)) b!4854268))

(assert (= (and b!4854268 c!825866) b!4854265))

(assert (= (and b!4854268 (not c!825866)) b!4854267))

(assert (= (and b!4854267 c!825867) b!4854264))

(assert (= (and b!4854267 (not c!825867)) b!4854263))

(declare-fun m!5852226 () Bool)

(assert (=> b!4854263 m!5852226))

(declare-fun m!5852228 () Bool)

(assert (=> d!1558211 m!5852228))

(declare-fun m!5852230 () Bool)

(assert (=> d!1558211 m!5852230))

(assert (=> d!1558211 m!5852230))

(declare-fun m!5852232 () Bool)

(assert (=> d!1558211 m!5852232))

(assert (=> d!1558211 m!5852148))

(declare-fun m!5852234 () Bool)

(assert (=> b!4854268 m!5852234))

(assert (=> b!4854076 d!1558211))

(declare-fun d!1558213 () Bool)

(declare-fun e!3034721 () Bool)

(assert (=> d!1558213 e!3034721))

(declare-fun res!2072503 () Bool)

(assert (=> d!1558213 (=> res!2072503 e!3034721)))

(declare-fun lt!1991024 () SeekEntryResult!31)

(assert (=> d!1558213 (= res!2072503 (not ((_ is Found!31) lt!1991024)))))

(assert (=> d!1558213 (= lt!1991024 (seekEntry!0 key!7003 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(declare-fun lt!1991023 () Unit!145815)

(declare-fun choose!35543 (array!18786 array!18788 (_ BitVec 32) (_ BitVec 32) V!17825 V!17825 (_ BitVec 64)) Unit!145815)

(assert (=> d!1558213 (= lt!1991023 (choose!35543 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003))))

(assert (=> d!1558213 (validMask!0 (mask!15392 (v!49577 (underlying!10400 thiss!47245))))))

(assert (=> d!1558213 (= (lemmaSeekEntryGivesInRangeIndex!19 (_keys!5448 (v!49577 (underlying!10400 thiss!47245))) (_values!5417 (v!49577 (underlying!10400 thiss!47245))) (mask!15392 (v!49577 (underlying!10400 thiss!47245))) (extraKeys!5379 (v!49577 (underlying!10400 thiss!47245))) (zeroValue!5392 (v!49577 (underlying!10400 thiss!47245))) (minValue!5392 (v!49577 (underlying!10400 thiss!47245))) key!7003) lt!1991023)))

(declare-fun b!4854271 () Bool)

(assert (=> b!4854271 (= e!3034721 (inRange!0 (index!1506 lt!1991024) (mask!15392 (v!49577 (underlying!10400 thiss!47245)))))))

(assert (= (and d!1558213 (not res!2072503)) b!4854271))

(assert (=> d!1558213 m!5852072))

(declare-fun m!5852236 () Bool)

(assert (=> d!1558213 m!5852236))

(assert (=> d!1558213 m!5852148))

(declare-fun m!5852238 () Bool)

(assert (=> b!4854271 m!5852238))

(assert (=> b!4854076 d!1558213))

(declare-fun condMapEmpty!22497 () Bool)

(declare-fun mapDefault!22497 () V!17825)

(assert (=> mapNonEmpty!22496 (= condMapEmpty!22497 (= mapRest!22496 ((as const (Array (_ BitVec 32) V!17825)) mapDefault!22497)))))

(declare-fun mapRes!22497 () Bool)

(assert (=> mapNonEmpty!22496 (= tp!1365317 (and tp_is_empty!35463 mapRes!22497))))

(declare-fun mapIsEmpty!22497 () Bool)

(assert (=> mapIsEmpty!22497 mapRes!22497))

(declare-fun mapNonEmpty!22497 () Bool)

(declare-fun tp!1365318 () Bool)

(assert (=> mapNonEmpty!22497 (= mapRes!22497 (and tp!1365318 tp_is_empty!35463))))

(declare-fun mapKey!22497 () (_ BitVec 32))

(declare-fun mapRest!22497 () (Array (_ BitVec 32) V!17825))

(declare-fun mapValue!22497 () V!17825)

(assert (=> mapNonEmpty!22497 (= mapRest!22496 (store mapRest!22497 mapKey!22497 mapValue!22497))))

(assert (= (and mapNonEmpty!22496 condMapEmpty!22497) mapIsEmpty!22497))

(assert (= (and mapNonEmpty!22496 (not condMapEmpty!22497)) mapNonEmpty!22497))

(declare-fun m!5852240 () Bool)

(assert (=> mapNonEmpty!22497 m!5852240))

(check-sat (not b!4854214) b_and!342147 (not b!4854122) (not bm!337697) (not b!4854222) (not b!4854217) (not b!4854220) (not b_lambda!193211) (not d!1558205) (not bm!337728) (not bm!337726) (not bm!337695) (not d!1558187) (not b_next!131119) (not bm!337696) (not b!4854243) (not bm!337708) (not b!4854156) (not d!1558193) (not d!1558179) (not d!1558211) (not b!4854215) (not b!4854228) (not bm!337707) (not d!1558191) (not b_lambda!193209) (not b!4854271) (not b!4854211) (not b!4854135) (not b!4854249) (not b!4854263) (not b!4854235) (not d!1558181) (not b!4854209) (not d!1558195) (not b!4854140) (not b!4854124) (not b!4854244) (not b!4854246) (not d!1558213) (not b!4854205) (not bm!337730) (not d!1558189) (not d!1558199) (not bm!337729) tp_is_empty!35463 (not b!4854237) (not b!4854119) (not b!4854136) (not mapNonEmpty!22497) (not d!1558183) (not b!4854137) (not b_lambda!193213))
(check-sat b_and!342147 (not b_next!131119))
