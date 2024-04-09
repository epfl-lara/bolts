; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18342 () Bool)

(assert start!18342)

(declare-fun b!181944 () Bool)

(declare-fun b_free!4491 () Bool)

(declare-fun b_next!4491 () Bool)

(assert (=> b!181944 (= b_free!4491 (not b_next!4491))))

(declare-fun tp!16227 () Bool)

(declare-fun b_and!11065 () Bool)

(assert (=> b!181944 (= tp!16227 b_and!11065)))

(declare-fun b!181937 () Bool)

(declare-fun res!86131 () Bool)

(declare-fun e!119828 () Bool)

(assert (=> b!181937 (=> (not res!86131) (not e!119828))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!181937 (= res!86131 (not (= key!828 (bvneg key!828))))))

(declare-fun b!181938 () Bool)

(declare-fun e!119832 () Bool)

(declare-datatypes ((V!5331 0))(
  ( (V!5332 (val!2176 Int)) )
))
(declare-datatypes ((ValueCell!1788 0))(
  ( (ValueCellFull!1788 (v!4070 V!5331)) (EmptyCell!1788) )
))
(declare-datatypes ((array!7708 0))(
  ( (array!7709 (arr!3646 (Array (_ BitVec 32) (_ BitVec 64))) (size!3957 (_ BitVec 32))) )
))
(declare-datatypes ((array!7710 0))(
  ( (array!7711 (arr!3647 (Array (_ BitVec 32) ValueCell!1788)) (size!3958 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2484 0))(
  ( (LongMapFixedSize!2485 (defaultEntry!3726 Int) (mask!8759 (_ BitVec 32)) (extraKeys!3463 (_ BitVec 32)) (zeroValue!3567 V!5331) (minValue!3567 V!5331) (_size!1291 (_ BitVec 32)) (_keys!5633 array!7708) (_values!3709 array!7710) (_vacant!1291 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2484)

(assert (=> b!181938 (= e!119832 (and (= (size!3958 (_values!3709 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8759 thiss!1248))) (= (size!3957 (_keys!5633 thiss!1248)) (size!3958 (_values!3709 thiss!1248))) (bvsge (mask!8759 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3463 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3463 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!181939 () Bool)

(declare-fun res!86134 () Bool)

(assert (=> b!181939 (=> (not res!86134) (not e!119832))))

(declare-datatypes ((tuple2!3390 0))(
  ( (tuple2!3391 (_1!1705 (_ BitVec 64)) (_2!1705 V!5331)) )
))
(declare-datatypes ((List!2333 0))(
  ( (Nil!2330) (Cons!2329 (h!2957 tuple2!3390) (t!7199 List!2333)) )
))
(declare-datatypes ((ListLongMap!2321 0))(
  ( (ListLongMap!2322 (toList!1176 List!2333)) )
))
(declare-fun contains!1252 (ListLongMap!2321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!819 (array!7708 array!7710 (_ BitVec 32) (_ BitVec 32) V!5331 V!5331 (_ BitVec 32) Int) ListLongMap!2321)

(assert (=> b!181939 (= res!86134 (contains!1252 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)) key!828))))

(declare-fun b!181940 () Bool)

(declare-fun e!119833 () Bool)

(declare-fun tp_is_empty!4263 () Bool)

(assert (=> b!181940 (= e!119833 tp_is_empty!4263)))

(declare-fun b!181941 () Bool)

(declare-fun e!119830 () Bool)

(assert (=> b!181941 (= e!119830 tp_is_empty!4263)))

(declare-fun b!181942 () Bool)

(declare-fun res!86132 () Bool)

(assert (=> b!181942 (=> (not res!86132) (not e!119832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181942 (= res!86132 (validMask!0 (mask!8759 thiss!1248)))))

(declare-fun res!86133 () Bool)

(assert (=> start!18342 (=> (not res!86133) (not e!119828))))

(declare-fun valid!1021 (LongMapFixedSize!2484) Bool)

(assert (=> start!18342 (= res!86133 (valid!1021 thiss!1248))))

(assert (=> start!18342 e!119828))

(declare-fun e!119834 () Bool)

(assert (=> start!18342 e!119834))

(assert (=> start!18342 true))

(declare-fun b!181943 () Bool)

(declare-fun e!119829 () Bool)

(declare-fun mapRes!7312 () Bool)

(assert (=> b!181943 (= e!119829 (and e!119833 mapRes!7312))))

(declare-fun condMapEmpty!7312 () Bool)

(declare-fun mapDefault!7312 () ValueCell!1788)

(assert (=> b!181943 (= condMapEmpty!7312 (= (arr!3647 (_values!3709 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1788)) mapDefault!7312)))))

(declare-fun array_inv!2339 (array!7708) Bool)

(declare-fun array_inv!2340 (array!7710) Bool)

(assert (=> b!181944 (= e!119834 (and tp!16227 tp_is_empty!4263 (array_inv!2339 (_keys!5633 thiss!1248)) (array_inv!2340 (_values!3709 thiss!1248)) e!119829))))

(declare-fun mapNonEmpty!7312 () Bool)

(declare-fun tp!16228 () Bool)

(assert (=> mapNonEmpty!7312 (= mapRes!7312 (and tp!16228 e!119830))))

(declare-fun mapValue!7312 () ValueCell!1788)

(declare-fun mapKey!7312 () (_ BitVec 32))

(declare-fun mapRest!7312 () (Array (_ BitVec 32) ValueCell!1788))

(assert (=> mapNonEmpty!7312 (= (arr!3647 (_values!3709 thiss!1248)) (store mapRest!7312 mapKey!7312 mapValue!7312))))

(declare-fun mapIsEmpty!7312 () Bool)

(assert (=> mapIsEmpty!7312 mapRes!7312))

(declare-fun b!181945 () Bool)

(assert (=> b!181945 (= e!119828 e!119832)))

(declare-fun res!86130 () Bool)

(assert (=> b!181945 (=> (not res!86130) (not e!119832))))

(declare-datatypes ((SeekEntryResult!613 0))(
  ( (MissingZero!613 (index!4622 (_ BitVec 32))) (Found!613 (index!4623 (_ BitVec 32))) (Intermediate!613 (undefined!1425 Bool) (index!4624 (_ BitVec 32)) (x!19861 (_ BitVec 32))) (Undefined!613) (MissingVacant!613 (index!4625 (_ BitVec 32))) )
))
(declare-fun lt!90009 () SeekEntryResult!613)

(get-info :version)

(assert (=> b!181945 (= res!86130 (and (not ((_ is Undefined!613) lt!90009)) (not ((_ is MissingVacant!613) lt!90009)) (not ((_ is MissingZero!613) lt!90009)) ((_ is Found!613) lt!90009)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7708 (_ BitVec 32)) SeekEntryResult!613)

(assert (=> b!181945 (= lt!90009 (seekEntryOrOpen!0 key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(assert (= (and start!18342 res!86133) b!181937))

(assert (= (and b!181937 res!86131) b!181945))

(assert (= (and b!181945 res!86130) b!181939))

(assert (= (and b!181939 res!86134) b!181942))

(assert (= (and b!181942 res!86132) b!181938))

(assert (= (and b!181943 condMapEmpty!7312) mapIsEmpty!7312))

(assert (= (and b!181943 (not condMapEmpty!7312)) mapNonEmpty!7312))

(assert (= (and mapNonEmpty!7312 ((_ is ValueCellFull!1788) mapValue!7312)) b!181941))

(assert (= (and b!181943 ((_ is ValueCellFull!1788) mapDefault!7312)) b!181940))

(assert (= b!181944 b!181943))

(assert (= start!18342 b!181944))

(declare-fun m!209799 () Bool)

(assert (=> b!181944 m!209799))

(declare-fun m!209801 () Bool)

(assert (=> b!181944 m!209801))

(declare-fun m!209803 () Bool)

(assert (=> start!18342 m!209803))

(declare-fun m!209805 () Bool)

(assert (=> b!181942 m!209805))

(declare-fun m!209807 () Bool)

(assert (=> b!181945 m!209807))

(declare-fun m!209809 () Bool)

(assert (=> b!181939 m!209809))

(assert (=> b!181939 m!209809))

(declare-fun m!209811 () Bool)

(assert (=> b!181939 m!209811))

(declare-fun m!209813 () Bool)

(assert (=> mapNonEmpty!7312 m!209813))

(check-sat (not b!181945) (not b_next!4491) (not start!18342) tp_is_empty!4263 (not b!181939) (not b!181944) (not b!181942) b_and!11065 (not mapNonEmpty!7312))
(check-sat b_and!11065 (not b_next!4491))
(get-model)

(declare-fun d!54451 () Bool)

(assert (=> d!54451 (= (array_inv!2339 (_keys!5633 thiss!1248)) (bvsge (size!3957 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181944 d!54451))

(declare-fun d!54453 () Bool)

(assert (=> d!54453 (= (array_inv!2340 (_values!3709 thiss!1248)) (bvsge (size!3958 (_values!3709 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181944 d!54453))

(declare-fun d!54455 () Bool)

(declare-fun e!119860 () Bool)

(assert (=> d!54455 e!119860))

(declare-fun res!86152 () Bool)

(assert (=> d!54455 (=> res!86152 e!119860)))

(declare-fun lt!90024 () Bool)

(assert (=> d!54455 (= res!86152 (not lt!90024))))

(declare-fun lt!90023 () Bool)

(assert (=> d!54455 (= lt!90024 lt!90023)))

(declare-datatypes ((Unit!5521 0))(
  ( (Unit!5522) )
))
(declare-fun lt!90022 () Unit!5521)

(declare-fun e!119861 () Unit!5521)

(assert (=> d!54455 (= lt!90022 e!119861)))

(declare-fun c!32611 () Bool)

(assert (=> d!54455 (= c!32611 lt!90023)))

(declare-fun containsKey!214 (List!2333 (_ BitVec 64)) Bool)

(assert (=> d!54455 (= lt!90023 (containsKey!214 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))

(assert (=> d!54455 (= (contains!1252 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)) key!828) lt!90024)))

(declare-fun b!181979 () Bool)

(declare-fun lt!90021 () Unit!5521)

(assert (=> b!181979 (= e!119861 lt!90021)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!163 (List!2333 (_ BitVec 64)) Unit!5521)

(assert (=> b!181979 (= lt!90021 (lemmaContainsKeyImpliesGetValueByKeyDefined!163 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))

(declare-datatypes ((Option!216 0))(
  ( (Some!215 (v!4072 V!5331)) (None!214) )
))
(declare-fun isDefined!164 (Option!216) Bool)

(declare-fun getValueByKey!210 (List!2333 (_ BitVec 64)) Option!216)

(assert (=> b!181979 (isDefined!164 (getValueByKey!210 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))

(declare-fun b!181980 () Bool)

(declare-fun Unit!5523 () Unit!5521)

(assert (=> b!181980 (= e!119861 Unit!5523)))

(declare-fun b!181981 () Bool)

(assert (=> b!181981 (= e!119860 (isDefined!164 (getValueByKey!210 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828)))))

(assert (= (and d!54455 c!32611) b!181979))

(assert (= (and d!54455 (not c!32611)) b!181980))

(assert (= (and d!54455 (not res!86152)) b!181981))

(declare-fun m!209831 () Bool)

(assert (=> d!54455 m!209831))

(declare-fun m!209833 () Bool)

(assert (=> b!181979 m!209833))

(declare-fun m!209835 () Bool)

(assert (=> b!181979 m!209835))

(assert (=> b!181979 m!209835))

(declare-fun m!209837 () Bool)

(assert (=> b!181979 m!209837))

(assert (=> b!181981 m!209835))

(assert (=> b!181981 m!209835))

(assert (=> b!181981 m!209837))

(assert (=> b!181939 d!54455))

(declare-fun bm!18386 () Bool)

(declare-fun call!18391 () ListLongMap!2321)

(declare-fun call!18389 () ListLongMap!2321)

(assert (=> bm!18386 (= call!18391 call!18389)))

(declare-fun b!182024 () Bool)

(declare-fun c!32624 () Bool)

(assert (=> b!182024 (= c!32624 (and (not (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!119898 () ListLongMap!2321)

(declare-fun e!119895 () ListLongMap!2321)

(assert (=> b!182024 (= e!119898 e!119895)))

(declare-fun d!54457 () Bool)

(declare-fun e!119900 () Bool)

(assert (=> d!54457 e!119900))

(declare-fun res!86174 () Bool)

(assert (=> d!54457 (=> (not res!86174) (not e!119900))))

(assert (=> d!54457 (= res!86174 (or (bvsge #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))))

(declare-fun lt!90087 () ListLongMap!2321)

(declare-fun lt!90069 () ListLongMap!2321)

(assert (=> d!54457 (= lt!90087 lt!90069)))

(declare-fun lt!90082 () Unit!5521)

(declare-fun e!119892 () Unit!5521)

(assert (=> d!54457 (= lt!90082 e!119892)))

(declare-fun c!32627 () Bool)

(declare-fun e!119888 () Bool)

(assert (=> d!54457 (= c!32627 e!119888)))

(declare-fun res!86171 () Bool)

(assert (=> d!54457 (=> (not res!86171) (not e!119888))))

(assert (=> d!54457 (= res!86171 (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun e!119899 () ListLongMap!2321)

(assert (=> d!54457 (= lt!90069 e!119899)))

(declare-fun c!32626 () Bool)

(assert (=> d!54457 (= c!32626 (and (not (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54457 (validMask!0 (mask!8759 thiss!1248))))

(assert (=> d!54457 (= (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)) lt!90087)))

(declare-fun b!182025 () Bool)

(declare-fun call!18393 () ListLongMap!2321)

(declare-fun +!269 (ListLongMap!2321 tuple2!3390) ListLongMap!2321)

(assert (=> b!182025 (= e!119899 (+!269 call!18393 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))

(declare-fun b!182026 () Bool)

(declare-fun e!119890 () Bool)

(declare-fun e!119893 () Bool)

(assert (=> b!182026 (= e!119890 e!119893)))

(declare-fun res!86177 () Bool)

(assert (=> b!182026 (=> (not res!86177) (not e!119893))))

(assert (=> b!182026 (= res!86177 (contains!1252 lt!90087 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!182026 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun b!182027 () Bool)

(declare-fun e!119891 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!182027 (= e!119891 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182028 () Bool)

(declare-fun Unit!5524 () Unit!5521)

(assert (=> b!182028 (= e!119892 Unit!5524)))

(declare-fun b!182029 () Bool)

(declare-fun e!119894 () Bool)

(assert (=> b!182029 (= e!119900 e!119894)))

(declare-fun c!32629 () Bool)

(assert (=> b!182029 (= c!32629 (not (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!182030 () Bool)

(declare-fun e!119896 () Bool)

(assert (=> b!182030 (= e!119894 e!119896)))

(declare-fun res!86173 () Bool)

(declare-fun call!18394 () Bool)

(assert (=> b!182030 (= res!86173 call!18394)))

(assert (=> b!182030 (=> (not res!86173) (not e!119896))))

(declare-fun bm!18387 () Bool)

(declare-fun call!18392 () ListLongMap!2321)

(assert (=> bm!18387 (= call!18389 call!18392)))

(declare-fun bm!18388 () Bool)

(declare-fun call!18395 () ListLongMap!2321)

(assert (=> bm!18388 (= call!18395 call!18393)))

(declare-fun b!182031 () Bool)

(assert (=> b!182031 (= e!119899 e!119898)))

(declare-fun c!32628 () Bool)

(assert (=> b!182031 (= c!32628 (and (not (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!182032 () Bool)

(declare-fun e!119889 () Bool)

(declare-fun apply!154 (ListLongMap!2321 (_ BitVec 64)) V!5331)

(assert (=> b!182032 (= e!119889 (= (apply!154 lt!90087 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3567 thiss!1248)))))

(declare-fun b!182033 () Bool)

(declare-fun get!2089 (ValueCell!1788 V!5331) V!5331)

(declare-fun dynLambda!492 (Int (_ BitVec 64)) V!5331)

(assert (=> b!182033 (= e!119893 (= (apply!154 lt!90087 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)) (get!2089 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!182033 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3958 (_values!3709 thiss!1248))))))

(assert (=> b!182033 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun b!182034 () Bool)

(assert (=> b!182034 (= e!119895 call!18395)))

(declare-fun b!182035 () Bool)

(assert (=> b!182035 (= e!119888 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18389 () Bool)

(declare-fun call!18390 () Bool)

(assert (=> bm!18389 (= call!18390 (contains!1252 lt!90087 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182036 () Bool)

(assert (=> b!182036 (= e!119898 call!18395)))

(declare-fun bm!18390 () Bool)

(assert (=> bm!18390 (= call!18394 (contains!1252 lt!90087 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182037 () Bool)

(declare-fun lt!90088 () Unit!5521)

(assert (=> b!182037 (= e!119892 lt!90088)))

(declare-fun lt!90086 () ListLongMap!2321)

(declare-fun getCurrentListMapNoExtraKeys!184 (array!7708 array!7710 (_ BitVec 32) (_ BitVec 32) V!5331 V!5331 (_ BitVec 32) Int) ListLongMap!2321)

(assert (=> b!182037 (= lt!90086 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))

(declare-fun lt!90079 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90079 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90077 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90077 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90072 () Unit!5521)

(declare-fun addStillContains!130 (ListLongMap!2321 (_ BitVec 64) V!5331 (_ BitVec 64)) Unit!5521)

(assert (=> b!182037 (= lt!90072 (addStillContains!130 lt!90086 lt!90079 (zeroValue!3567 thiss!1248) lt!90077))))

(assert (=> b!182037 (contains!1252 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))) lt!90077)))

(declare-fun lt!90089 () Unit!5521)

(assert (=> b!182037 (= lt!90089 lt!90072)))

(declare-fun lt!90080 () ListLongMap!2321)

(assert (=> b!182037 (= lt!90080 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))

(declare-fun lt!90078 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90078 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90083 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90083 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90081 () Unit!5521)

(declare-fun addApplyDifferent!130 (ListLongMap!2321 (_ BitVec 64) V!5331 (_ BitVec 64)) Unit!5521)

(assert (=> b!182037 (= lt!90081 (addApplyDifferent!130 lt!90080 lt!90078 (minValue!3567 thiss!1248) lt!90083))))

(assert (=> b!182037 (= (apply!154 (+!269 lt!90080 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))) lt!90083) (apply!154 lt!90080 lt!90083))))

(declare-fun lt!90075 () Unit!5521)

(assert (=> b!182037 (= lt!90075 lt!90081)))

(declare-fun lt!90070 () ListLongMap!2321)

(assert (=> b!182037 (= lt!90070 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))

(declare-fun lt!90085 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90085 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90076 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90076 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90084 () Unit!5521)

(assert (=> b!182037 (= lt!90084 (addApplyDifferent!130 lt!90070 lt!90085 (zeroValue!3567 thiss!1248) lt!90076))))

(assert (=> b!182037 (= (apply!154 (+!269 lt!90070 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))) lt!90076) (apply!154 lt!90070 lt!90076))))

(declare-fun lt!90073 () Unit!5521)

(assert (=> b!182037 (= lt!90073 lt!90084)))

(declare-fun lt!90071 () ListLongMap!2321)

(assert (=> b!182037 (= lt!90071 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))

(declare-fun lt!90074 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90074 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90090 () (_ BitVec 64))

(assert (=> b!182037 (= lt!90090 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182037 (= lt!90088 (addApplyDifferent!130 lt!90071 lt!90074 (minValue!3567 thiss!1248) lt!90090))))

(assert (=> b!182037 (= (apply!154 (+!269 lt!90071 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))) lt!90090) (apply!154 lt!90071 lt!90090))))

(declare-fun b!182038 () Bool)

(assert (=> b!182038 (= e!119894 (not call!18394))))

(declare-fun b!182039 () Bool)

(declare-fun res!86175 () Bool)

(assert (=> b!182039 (=> (not res!86175) (not e!119900))))

(assert (=> b!182039 (= res!86175 e!119890)))

(declare-fun res!86179 () Bool)

(assert (=> b!182039 (=> res!86179 e!119890)))

(assert (=> b!182039 (= res!86179 (not e!119891))))

(declare-fun res!86176 () Bool)

(assert (=> b!182039 (=> (not res!86176) (not e!119891))))

(assert (=> b!182039 (= res!86176 (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun b!182040 () Bool)

(assert (=> b!182040 (= e!119896 (= (apply!154 lt!90087 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3567 thiss!1248)))))

(declare-fun b!182041 () Bool)

(declare-fun e!119897 () Bool)

(assert (=> b!182041 (= e!119897 e!119889)))

(declare-fun res!86172 () Bool)

(assert (=> b!182041 (= res!86172 call!18390)))

(assert (=> b!182041 (=> (not res!86172) (not e!119889))))

(declare-fun b!182042 () Bool)

(declare-fun res!86178 () Bool)

(assert (=> b!182042 (=> (not res!86178) (not e!119900))))

(assert (=> b!182042 (= res!86178 e!119897)))

(declare-fun c!32625 () Bool)

(assert (=> b!182042 (= c!32625 (not (= (bvand (extraKeys!3463 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!182043 () Bool)

(assert (=> b!182043 (= e!119895 call!18391)))

(declare-fun bm!18391 () Bool)

(assert (=> bm!18391 (= call!18392 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))

(declare-fun b!182044 () Bool)

(assert (=> b!182044 (= e!119897 (not call!18390))))

(declare-fun bm!18392 () Bool)

(assert (=> bm!18392 (= call!18393 (+!269 (ite c!32626 call!18392 (ite c!32628 call!18389 call!18391)) (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))

(assert (= (and d!54457 c!32626) b!182025))

(assert (= (and d!54457 (not c!32626)) b!182031))

(assert (= (and b!182031 c!32628) b!182036))

(assert (= (and b!182031 (not c!32628)) b!182024))

(assert (= (and b!182024 c!32624) b!182034))

(assert (= (and b!182024 (not c!32624)) b!182043))

(assert (= (or b!182034 b!182043) bm!18386))

(assert (= (or b!182036 bm!18386) bm!18387))

(assert (= (or b!182036 b!182034) bm!18388))

(assert (= (or b!182025 bm!18387) bm!18391))

(assert (= (or b!182025 bm!18388) bm!18392))

(assert (= (and d!54457 res!86171) b!182035))

(assert (= (and d!54457 c!32627) b!182037))

(assert (= (and d!54457 (not c!32627)) b!182028))

(assert (= (and d!54457 res!86174) b!182039))

(assert (= (and b!182039 res!86176) b!182027))

(assert (= (and b!182039 (not res!86179)) b!182026))

(assert (= (and b!182026 res!86177) b!182033))

(assert (= (and b!182039 res!86175) b!182042))

(assert (= (and b!182042 c!32625) b!182041))

(assert (= (and b!182042 (not c!32625)) b!182044))

(assert (= (and b!182041 res!86172) b!182032))

(assert (= (or b!182041 b!182044) bm!18389))

(assert (= (and b!182042 res!86178) b!182029))

(assert (= (and b!182029 c!32629) b!182030))

(assert (= (and b!182029 (not c!32629)) b!182038))

(assert (= (and b!182030 res!86173) b!182040))

(assert (= (or b!182030 b!182038) bm!18390))

(declare-fun b_lambda!7193 () Bool)

(assert (=> (not b_lambda!7193) (not b!182033)))

(declare-fun t!7201 () Bool)

(declare-fun tb!2827 () Bool)

(assert (=> (and b!181944 (= (defaultEntry!3726 thiss!1248) (defaultEntry!3726 thiss!1248)) t!7201) tb!2827))

(declare-fun result!4743 () Bool)

(assert (=> tb!2827 (= result!4743 tp_is_empty!4263)))

(assert (=> b!182033 t!7201))

(declare-fun b_and!11069 () Bool)

(assert (= b_and!11065 (and (=> t!7201 result!4743) b_and!11069)))

(declare-fun m!209839 () Bool)

(assert (=> b!182025 m!209839))

(declare-fun m!209841 () Bool)

(assert (=> b!182032 m!209841))

(declare-fun m!209843 () Bool)

(assert (=> b!182037 m!209843))

(declare-fun m!209845 () Bool)

(assert (=> b!182037 m!209845))

(declare-fun m!209847 () Bool)

(assert (=> b!182037 m!209847))

(declare-fun m!209849 () Bool)

(assert (=> b!182037 m!209849))

(declare-fun m!209851 () Bool)

(assert (=> b!182037 m!209851))

(declare-fun m!209853 () Bool)

(assert (=> b!182037 m!209853))

(declare-fun m!209855 () Bool)

(assert (=> b!182037 m!209855))

(declare-fun m!209857 () Bool)

(assert (=> b!182037 m!209857))

(declare-fun m!209859 () Bool)

(assert (=> b!182037 m!209859))

(declare-fun m!209861 () Bool)

(assert (=> b!182037 m!209861))

(declare-fun m!209863 () Bool)

(assert (=> b!182037 m!209863))

(assert (=> b!182037 m!209861))

(declare-fun m!209865 () Bool)

(assert (=> b!182037 m!209865))

(declare-fun m!209867 () Bool)

(assert (=> b!182037 m!209867))

(assert (=> b!182037 m!209857))

(declare-fun m!209869 () Bool)

(assert (=> b!182037 m!209869))

(declare-fun m!209871 () Bool)

(assert (=> b!182037 m!209871))

(assert (=> b!182037 m!209855))

(declare-fun m!209873 () Bool)

(assert (=> b!182037 m!209873))

(assert (=> b!182037 m!209849))

(declare-fun m!209875 () Bool)

(assert (=> b!182037 m!209875))

(assert (=> b!182035 m!209853))

(assert (=> b!182035 m!209853))

(declare-fun m!209877 () Bool)

(assert (=> b!182035 m!209877))

(declare-fun m!209879 () Bool)

(assert (=> bm!18390 m!209879))

(assert (=> d!54457 m!209805))

(declare-fun m!209881 () Bool)

(assert (=> bm!18389 m!209881))

(assert (=> b!182033 m!209853))

(declare-fun m!209883 () Bool)

(assert (=> b!182033 m!209883))

(declare-fun m!209885 () Bool)

(assert (=> b!182033 m!209885))

(assert (=> b!182033 m!209853))

(assert (=> b!182033 m!209885))

(declare-fun m!209887 () Bool)

(assert (=> b!182033 m!209887))

(declare-fun m!209889 () Bool)

(assert (=> b!182033 m!209889))

(assert (=> b!182033 m!209887))

(assert (=> b!182026 m!209853))

(assert (=> b!182026 m!209853))

(declare-fun m!209891 () Bool)

(assert (=> b!182026 m!209891))

(assert (=> b!182027 m!209853))

(assert (=> b!182027 m!209853))

(assert (=> b!182027 m!209877))

(declare-fun m!209893 () Bool)

(assert (=> b!182040 m!209893))

(declare-fun m!209895 () Bool)

(assert (=> bm!18392 m!209895))

(assert (=> bm!18391 m!209871))

(assert (=> b!181939 d!54457))

(declare-fun d!54459 () Bool)

(declare-fun res!86186 () Bool)

(declare-fun e!119903 () Bool)

(assert (=> d!54459 (=> (not res!86186) (not e!119903))))

(declare-fun simpleValid!169 (LongMapFixedSize!2484) Bool)

(assert (=> d!54459 (= res!86186 (simpleValid!169 thiss!1248))))

(assert (=> d!54459 (= (valid!1021 thiss!1248) e!119903)))

(declare-fun b!182053 () Bool)

(declare-fun res!86187 () Bool)

(assert (=> b!182053 (=> (not res!86187) (not e!119903))))

(declare-fun arrayCountValidKeys!0 (array!7708 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!182053 (= res!86187 (= (arrayCountValidKeys!0 (_keys!5633 thiss!1248) #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))) (_size!1291 thiss!1248)))))

(declare-fun b!182054 () Bool)

(declare-fun res!86188 () Bool)

(assert (=> b!182054 (=> (not res!86188) (not e!119903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7708 (_ BitVec 32)) Bool)

(assert (=> b!182054 (= res!86188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(declare-fun b!182055 () Bool)

(declare-datatypes ((List!2334 0))(
  ( (Nil!2331) (Cons!2330 (h!2958 (_ BitVec 64)) (t!7202 List!2334)) )
))
(declare-fun arrayNoDuplicates!0 (array!7708 (_ BitVec 32) List!2334) Bool)

(assert (=> b!182055 (= e!119903 (arrayNoDuplicates!0 (_keys!5633 thiss!1248) #b00000000000000000000000000000000 Nil!2331))))

(assert (= (and d!54459 res!86186) b!182053))

(assert (= (and b!182053 res!86187) b!182054))

(assert (= (and b!182054 res!86188) b!182055))

(declare-fun m!209897 () Bool)

(assert (=> d!54459 m!209897))

(declare-fun m!209899 () Bool)

(assert (=> b!182053 m!209899))

(declare-fun m!209901 () Bool)

(assert (=> b!182054 m!209901))

(declare-fun m!209903 () Bool)

(assert (=> b!182055 m!209903))

(assert (=> start!18342 d!54459))

(declare-fun b!182068 () Bool)

(declare-fun e!119910 () SeekEntryResult!613)

(declare-fun e!119911 () SeekEntryResult!613)

(assert (=> b!182068 (= e!119910 e!119911)))

(declare-fun lt!90097 () (_ BitVec 64))

(declare-fun lt!90098 () SeekEntryResult!613)

(assert (=> b!182068 (= lt!90097 (select (arr!3646 (_keys!5633 thiss!1248)) (index!4624 lt!90098)))))

(declare-fun c!32638 () Bool)

(assert (=> b!182068 (= c!32638 (= lt!90097 key!828))))

(declare-fun b!182069 () Bool)

(declare-fun c!32637 () Bool)

(assert (=> b!182069 (= c!32637 (= lt!90097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119912 () SeekEntryResult!613)

(assert (=> b!182069 (= e!119911 e!119912)))

(declare-fun b!182070 () Bool)

(assert (=> b!182070 (= e!119911 (Found!613 (index!4624 lt!90098)))))

(declare-fun b!182071 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7708 (_ BitVec 32)) SeekEntryResult!613)

(assert (=> b!182071 (= e!119912 (seekKeyOrZeroReturnVacant!0 (x!19861 lt!90098) (index!4624 lt!90098) (index!4624 lt!90098) key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(declare-fun b!182072 () Bool)

(assert (=> b!182072 (= e!119912 (MissingZero!613 (index!4624 lt!90098)))))

(declare-fun b!182073 () Bool)

(assert (=> b!182073 (= e!119910 Undefined!613)))

(declare-fun d!54461 () Bool)

(declare-fun lt!90099 () SeekEntryResult!613)

(assert (=> d!54461 (and (or ((_ is Undefined!613) lt!90099) (not ((_ is Found!613) lt!90099)) (and (bvsge (index!4623 lt!90099) #b00000000000000000000000000000000) (bvslt (index!4623 lt!90099) (size!3957 (_keys!5633 thiss!1248))))) (or ((_ is Undefined!613) lt!90099) ((_ is Found!613) lt!90099) (not ((_ is MissingZero!613) lt!90099)) (and (bvsge (index!4622 lt!90099) #b00000000000000000000000000000000) (bvslt (index!4622 lt!90099) (size!3957 (_keys!5633 thiss!1248))))) (or ((_ is Undefined!613) lt!90099) ((_ is Found!613) lt!90099) ((_ is MissingZero!613) lt!90099) (not ((_ is MissingVacant!613) lt!90099)) (and (bvsge (index!4625 lt!90099) #b00000000000000000000000000000000) (bvslt (index!4625 lt!90099) (size!3957 (_keys!5633 thiss!1248))))) (or ((_ is Undefined!613) lt!90099) (ite ((_ is Found!613) lt!90099) (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4623 lt!90099)) key!828) (ite ((_ is MissingZero!613) lt!90099) (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4622 lt!90099)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!613) lt!90099) (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4625 lt!90099)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54461 (= lt!90099 e!119910)))

(declare-fun c!32636 () Bool)

(assert (=> d!54461 (= c!32636 (and ((_ is Intermediate!613) lt!90098) (undefined!1425 lt!90098)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7708 (_ BitVec 32)) SeekEntryResult!613)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54461 (= lt!90098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8759 thiss!1248)) key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(assert (=> d!54461 (validMask!0 (mask!8759 thiss!1248))))

(assert (=> d!54461 (= (seekEntryOrOpen!0 key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)) lt!90099)))

(assert (= (and d!54461 c!32636) b!182073))

(assert (= (and d!54461 (not c!32636)) b!182068))

(assert (= (and b!182068 c!32638) b!182070))

(assert (= (and b!182068 (not c!32638)) b!182069))

(assert (= (and b!182069 c!32637) b!182072))

(assert (= (and b!182069 (not c!32637)) b!182071))

(declare-fun m!209905 () Bool)

(assert (=> b!182068 m!209905))

(declare-fun m!209907 () Bool)

(assert (=> b!182071 m!209907))

(declare-fun m!209909 () Bool)

(assert (=> d!54461 m!209909))

(assert (=> d!54461 m!209909))

(declare-fun m!209911 () Bool)

(assert (=> d!54461 m!209911))

(assert (=> d!54461 m!209805))

(declare-fun m!209913 () Bool)

(assert (=> d!54461 m!209913))

(declare-fun m!209915 () Bool)

(assert (=> d!54461 m!209915))

(declare-fun m!209917 () Bool)

(assert (=> d!54461 m!209917))

(assert (=> b!181945 d!54461))

(declare-fun d!54463 () Bool)

(assert (=> d!54463 (= (validMask!0 (mask!8759 thiss!1248)) (and (or (= (mask!8759 thiss!1248) #b00000000000000000000000000000111) (= (mask!8759 thiss!1248) #b00000000000000000000000000001111) (= (mask!8759 thiss!1248) #b00000000000000000000000000011111) (= (mask!8759 thiss!1248) #b00000000000000000000000000111111) (= (mask!8759 thiss!1248) #b00000000000000000000000001111111) (= (mask!8759 thiss!1248) #b00000000000000000000000011111111) (= (mask!8759 thiss!1248) #b00000000000000000000000111111111) (= (mask!8759 thiss!1248) #b00000000000000000000001111111111) (= (mask!8759 thiss!1248) #b00000000000000000000011111111111) (= (mask!8759 thiss!1248) #b00000000000000000000111111111111) (= (mask!8759 thiss!1248) #b00000000000000000001111111111111) (= (mask!8759 thiss!1248) #b00000000000000000011111111111111) (= (mask!8759 thiss!1248) #b00000000000000000111111111111111) (= (mask!8759 thiss!1248) #b00000000000000001111111111111111) (= (mask!8759 thiss!1248) #b00000000000000011111111111111111) (= (mask!8759 thiss!1248) #b00000000000000111111111111111111) (= (mask!8759 thiss!1248) #b00000000000001111111111111111111) (= (mask!8759 thiss!1248) #b00000000000011111111111111111111) (= (mask!8759 thiss!1248) #b00000000000111111111111111111111) (= (mask!8759 thiss!1248) #b00000000001111111111111111111111) (= (mask!8759 thiss!1248) #b00000000011111111111111111111111) (= (mask!8759 thiss!1248) #b00000000111111111111111111111111) (= (mask!8759 thiss!1248) #b00000001111111111111111111111111) (= (mask!8759 thiss!1248) #b00000011111111111111111111111111) (= (mask!8759 thiss!1248) #b00000111111111111111111111111111) (= (mask!8759 thiss!1248) #b00001111111111111111111111111111) (= (mask!8759 thiss!1248) #b00011111111111111111111111111111) (= (mask!8759 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8759 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!181942 d!54463))

(declare-fun b!182081 () Bool)

(declare-fun e!119917 () Bool)

(assert (=> b!182081 (= e!119917 tp_is_empty!4263)))

(declare-fun mapNonEmpty!7318 () Bool)

(declare-fun mapRes!7318 () Bool)

(declare-fun tp!16237 () Bool)

(declare-fun e!119918 () Bool)

(assert (=> mapNonEmpty!7318 (= mapRes!7318 (and tp!16237 e!119918))))

(declare-fun mapKey!7318 () (_ BitVec 32))

(declare-fun mapValue!7318 () ValueCell!1788)

(declare-fun mapRest!7318 () (Array (_ BitVec 32) ValueCell!1788))

(assert (=> mapNonEmpty!7318 (= mapRest!7312 (store mapRest!7318 mapKey!7318 mapValue!7318))))

(declare-fun b!182080 () Bool)

(assert (=> b!182080 (= e!119918 tp_is_empty!4263)))

(declare-fun mapIsEmpty!7318 () Bool)

(assert (=> mapIsEmpty!7318 mapRes!7318))

(declare-fun condMapEmpty!7318 () Bool)

(declare-fun mapDefault!7318 () ValueCell!1788)

(assert (=> mapNonEmpty!7312 (= condMapEmpty!7318 (= mapRest!7312 ((as const (Array (_ BitVec 32) ValueCell!1788)) mapDefault!7318)))))

(assert (=> mapNonEmpty!7312 (= tp!16228 (and e!119917 mapRes!7318))))

(assert (= (and mapNonEmpty!7312 condMapEmpty!7318) mapIsEmpty!7318))

(assert (= (and mapNonEmpty!7312 (not condMapEmpty!7318)) mapNonEmpty!7318))

(assert (= (and mapNonEmpty!7318 ((_ is ValueCellFull!1788) mapValue!7318)) b!182080))

(assert (= (and mapNonEmpty!7312 ((_ is ValueCellFull!1788) mapDefault!7318)) b!182081))

(declare-fun m!209919 () Bool)

(assert (=> mapNonEmpty!7318 m!209919))

(declare-fun b_lambda!7195 () Bool)

(assert (= b_lambda!7193 (or (and b!181944 b_free!4491) b_lambda!7195)))

(check-sat (not d!54455) (not b!182026) (not b_next!4491) (not b!182025) tp_is_empty!4263 (not bm!18392) (not d!54461) (not b!182035) (not bm!18390) (not mapNonEmpty!7318) (not b!182054) (not bm!18391) (not b!182032) (not b!182071) (not b!182053) (not bm!18389) (not d!54459) b_and!11069 (not b!182037) (not b_lambda!7195) (not b!182033) (not b!181979) (not b!181981) (not b!182040) (not d!54457) (not b!182055) (not b!182027))
(check-sat b_and!11069 (not b_next!4491))
(get-model)

(declare-fun d!54465 () Bool)

(declare-fun e!119921 () Bool)

(assert (=> d!54465 e!119921))

(declare-fun res!86193 () Bool)

(assert (=> d!54465 (=> (not res!86193) (not e!119921))))

(declare-fun lt!90110 () ListLongMap!2321)

(assert (=> d!54465 (= res!86193 (contains!1252 lt!90110 (_1!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))

(declare-fun lt!90111 () List!2333)

(assert (=> d!54465 (= lt!90110 (ListLongMap!2322 lt!90111))))

(declare-fun lt!90109 () Unit!5521)

(declare-fun lt!90108 () Unit!5521)

(assert (=> d!54465 (= lt!90109 lt!90108)))

(assert (=> d!54465 (= (getValueByKey!210 lt!90111 (_1!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!113 (List!2333 (_ BitVec 64) V!5331) Unit!5521)

(assert (=> d!54465 (= lt!90108 (lemmaContainsTupThenGetReturnValue!113 lt!90111 (_1!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))

(declare-fun insertStrictlySorted!115 (List!2333 (_ BitVec 64) V!5331) List!2333)

(assert (=> d!54465 (= lt!90111 (insertStrictlySorted!115 (toList!1176 call!18393) (_1!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))

(assert (=> d!54465 (= (+!269 call!18393 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))) lt!90110)))

(declare-fun b!182086 () Bool)

(declare-fun res!86194 () Bool)

(assert (=> b!182086 (=> (not res!86194) (not e!119921))))

(assert (=> b!182086 (= res!86194 (= (getValueByKey!210 (toList!1176 lt!90110) (_1!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))))

(declare-fun b!182087 () Bool)

(declare-fun contains!1253 (List!2333 tuple2!3390) Bool)

(assert (=> b!182087 (= e!119921 (contains!1253 (toList!1176 lt!90110) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))

(assert (= (and d!54465 res!86193) b!182086))

(assert (= (and b!182086 res!86194) b!182087))

(declare-fun m!209921 () Bool)

(assert (=> d!54465 m!209921))

(declare-fun m!209923 () Bool)

(assert (=> d!54465 m!209923))

(declare-fun m!209925 () Bool)

(assert (=> d!54465 m!209925))

(declare-fun m!209927 () Bool)

(assert (=> d!54465 m!209927))

(declare-fun m!209929 () Bool)

(assert (=> b!182086 m!209929))

(declare-fun m!209931 () Bool)

(assert (=> b!182087 m!209931))

(assert (=> b!182025 d!54465))

(declare-fun d!54467 () Bool)

(declare-fun get!2090 (Option!216) V!5331)

(assert (=> d!54467 (= (apply!154 lt!90087 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)) (get!2090 (getValueByKey!210 (toList!1176 lt!90087) (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7426 () Bool)

(assert (= bs!7426 d!54467))

(assert (=> bs!7426 m!209853))

(declare-fun m!209933 () Bool)

(assert (=> bs!7426 m!209933))

(assert (=> bs!7426 m!209933))

(declare-fun m!209935 () Bool)

(assert (=> bs!7426 m!209935))

(assert (=> b!182033 d!54467))

(declare-fun d!54469 () Bool)

(declare-fun c!32641 () Bool)

(assert (=> d!54469 (= c!32641 ((_ is ValueCellFull!1788) (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119924 () V!5331)

(assert (=> d!54469 (= (get!2089 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!119924)))

(declare-fun b!182092 () Bool)

(declare-fun get!2091 (ValueCell!1788 V!5331) V!5331)

(assert (=> b!182092 (= e!119924 (get!2091 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!182093 () Bool)

(declare-fun get!2092 (ValueCell!1788 V!5331) V!5331)

(assert (=> b!182093 (= e!119924 (get!2092 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54469 c!32641) b!182092))

(assert (= (and d!54469 (not c!32641)) b!182093))

(assert (=> b!182092 m!209885))

(assert (=> b!182092 m!209887))

(declare-fun m!209937 () Bool)

(assert (=> b!182092 m!209937))

(assert (=> b!182093 m!209885))

(assert (=> b!182093 m!209887))

(declare-fun m!209939 () Bool)

(assert (=> b!182093 m!209939))

(assert (=> b!182033 d!54469))

(declare-fun d!54471 () Bool)

(assert (=> d!54471 (= (apply!154 lt!90087 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2090 (getValueByKey!210 (toList!1176 lt!90087) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7427 () Bool)

(assert (= bs!7427 d!54471))

(declare-fun m!209941 () Bool)

(assert (=> bs!7427 m!209941))

(assert (=> bs!7427 m!209941))

(declare-fun m!209943 () Bool)

(assert (=> bs!7427 m!209943))

(assert (=> b!182032 d!54471))

(declare-fun d!54473 () Bool)

(declare-fun e!119925 () Bool)

(assert (=> d!54473 e!119925))

(declare-fun res!86195 () Bool)

(assert (=> d!54473 (=> res!86195 e!119925)))

(declare-fun lt!90115 () Bool)

(assert (=> d!54473 (= res!86195 (not lt!90115))))

(declare-fun lt!90114 () Bool)

(assert (=> d!54473 (= lt!90115 lt!90114)))

(declare-fun lt!90113 () Unit!5521)

(declare-fun e!119926 () Unit!5521)

(assert (=> d!54473 (= lt!90113 e!119926)))

(declare-fun c!32642 () Bool)

(assert (=> d!54473 (= c!32642 lt!90114)))

(assert (=> d!54473 (= lt!90114 (containsKey!214 (toList!1176 lt!90087) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54473 (= (contains!1252 lt!90087 #b0000000000000000000000000000000000000000000000000000000000000000) lt!90115)))

(declare-fun b!182094 () Bool)

(declare-fun lt!90112 () Unit!5521)

(assert (=> b!182094 (= e!119926 lt!90112)))

(assert (=> b!182094 (= lt!90112 (lemmaContainsKeyImpliesGetValueByKeyDefined!163 (toList!1176 lt!90087) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!182094 (isDefined!164 (getValueByKey!210 (toList!1176 lt!90087) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182095 () Bool)

(declare-fun Unit!5525 () Unit!5521)

(assert (=> b!182095 (= e!119926 Unit!5525)))

(declare-fun b!182096 () Bool)

(assert (=> b!182096 (= e!119925 (isDefined!164 (getValueByKey!210 (toList!1176 lt!90087) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54473 c!32642) b!182094))

(assert (= (and d!54473 (not c!32642)) b!182095))

(assert (= (and d!54473 (not res!86195)) b!182096))

(declare-fun m!209945 () Bool)

(assert (=> d!54473 m!209945))

(declare-fun m!209947 () Bool)

(assert (=> b!182094 m!209947))

(assert (=> b!182094 m!209941))

(assert (=> b!182094 m!209941))

(declare-fun m!209949 () Bool)

(assert (=> b!182094 m!209949))

(assert (=> b!182096 m!209941))

(assert (=> b!182096 m!209941))

(assert (=> b!182096 m!209949))

(assert (=> bm!18389 d!54473))

(declare-fun d!54475 () Bool)

(assert (=> d!54475 (= (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!182027 d!54475))

(declare-fun b!182121 () Bool)

(declare-fun e!119942 () Bool)

(declare-fun e!119946 () Bool)

(assert (=> b!182121 (= e!119942 e!119946)))

(assert (=> b!182121 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun res!86206 () Bool)

(declare-fun lt!90136 () ListLongMap!2321)

(assert (=> b!182121 (= res!86206 (contains!1252 lt!90136 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!182121 (=> (not res!86206) (not e!119946))))

(declare-fun b!182122 () Bool)

(declare-fun e!119941 () ListLongMap!2321)

(declare-fun e!119947 () ListLongMap!2321)

(assert (=> b!182122 (= e!119941 e!119947)))

(declare-fun c!32654 () Bool)

(assert (=> b!182122 (= c!32654 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182123 () Bool)

(declare-fun res!86205 () Bool)

(declare-fun e!119943 () Bool)

(assert (=> b!182123 (=> (not res!86205) (not e!119943))))

(assert (=> b!182123 (= res!86205 (not (contains!1252 lt!90136 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!182124 () Bool)

(declare-fun e!119944 () Bool)

(assert (=> b!182124 (= e!119942 e!119944)))

(declare-fun c!32651 () Bool)

(assert (=> b!182124 (= c!32651 (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun b!182125 () Bool)

(assert (=> b!182125 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> b!182125 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3958 (_values!3709 thiss!1248))))))

(assert (=> b!182125 (= e!119946 (= (apply!154 lt!90136 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)) (get!2089 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!182126 () Bool)

(assert (=> b!182126 (= e!119944 (= lt!90136 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3726 thiss!1248))))))

(declare-fun b!182127 () Bool)

(declare-fun lt!90135 () Unit!5521)

(declare-fun lt!90132 () Unit!5521)

(assert (=> b!182127 (= lt!90135 lt!90132)))

(declare-fun lt!90133 () (_ BitVec 64))

(declare-fun lt!90134 () V!5331)

(declare-fun lt!90130 () ListLongMap!2321)

(declare-fun lt!90131 () (_ BitVec 64))

(assert (=> b!182127 (not (contains!1252 (+!269 lt!90130 (tuple2!3391 lt!90131 lt!90134)) lt!90133))))

(declare-fun addStillNotContains!86 (ListLongMap!2321 (_ BitVec 64) V!5331 (_ BitVec 64)) Unit!5521)

(assert (=> b!182127 (= lt!90132 (addStillNotContains!86 lt!90130 lt!90131 lt!90134 lt!90133))))

(assert (=> b!182127 (= lt!90133 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!182127 (= lt!90134 (get!2089 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!182127 (= lt!90131 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!18398 () ListLongMap!2321)

(assert (=> b!182127 (= lt!90130 call!18398)))

(assert (=> b!182127 (= e!119947 (+!269 call!18398 (tuple2!3391 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000) (get!2089 (select (arr!3647 (_values!3709 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!492 (defaultEntry!3726 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!54477 () Bool)

(assert (=> d!54477 e!119943))

(declare-fun res!86207 () Bool)

(assert (=> d!54477 (=> (not res!86207) (not e!119943))))

(assert (=> d!54477 (= res!86207 (not (contains!1252 lt!90136 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!54477 (= lt!90136 e!119941)))

(declare-fun c!32652 () Bool)

(assert (=> d!54477 (= c!32652 (bvsge #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> d!54477 (validMask!0 (mask!8759 thiss!1248))))

(assert (=> d!54477 (= (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)) lt!90136)))

(declare-fun b!182128 () Bool)

(assert (=> b!182128 (= e!119943 e!119942)))

(declare-fun c!32653 () Bool)

(declare-fun e!119945 () Bool)

(assert (=> b!182128 (= c!32653 e!119945)))

(declare-fun res!86204 () Bool)

(assert (=> b!182128 (=> (not res!86204) (not e!119945))))

(assert (=> b!182128 (= res!86204 (bvslt #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun b!182129 () Bool)

(assert (=> b!182129 (= e!119947 call!18398)))

(declare-fun b!182130 () Bool)

(assert (=> b!182130 (= e!119945 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!182130 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!18395 () Bool)

(assert (=> bm!18395 (= call!18398 (getCurrentListMapNoExtraKeys!184 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3726 thiss!1248)))))

(declare-fun b!182131 () Bool)

(declare-fun isEmpty!466 (ListLongMap!2321) Bool)

(assert (=> b!182131 (= e!119944 (isEmpty!466 lt!90136))))

(declare-fun b!182132 () Bool)

(assert (=> b!182132 (= e!119941 (ListLongMap!2322 Nil!2330))))

(assert (= (and d!54477 c!32652) b!182132))

(assert (= (and d!54477 (not c!32652)) b!182122))

(assert (= (and b!182122 c!32654) b!182127))

(assert (= (and b!182122 (not c!32654)) b!182129))

(assert (= (or b!182127 b!182129) bm!18395))

(assert (= (and d!54477 res!86207) b!182123))

(assert (= (and b!182123 res!86205) b!182128))

(assert (= (and b!182128 res!86204) b!182130))

(assert (= (and b!182128 c!32653) b!182121))

(assert (= (and b!182128 (not c!32653)) b!182124))

(assert (= (and b!182121 res!86206) b!182125))

(assert (= (and b!182124 c!32651) b!182126))

(assert (= (and b!182124 (not c!32651)) b!182131))

(declare-fun b_lambda!7197 () Bool)

(assert (=> (not b_lambda!7197) (not b!182125)))

(assert (=> b!182125 t!7201))

(declare-fun b_and!11071 () Bool)

(assert (= b_and!11069 (and (=> t!7201 result!4743) b_and!11071)))

(declare-fun b_lambda!7199 () Bool)

(assert (=> (not b_lambda!7199) (not b!182127)))

(assert (=> b!182127 t!7201))

(declare-fun b_and!11073 () Bool)

(assert (= b_and!11071 (and (=> t!7201 result!4743) b_and!11073)))

(assert (=> b!182122 m!209853))

(assert (=> b!182122 m!209853))

(assert (=> b!182122 m!209877))

(assert (=> b!182125 m!209853))

(declare-fun m!209951 () Bool)

(assert (=> b!182125 m!209951))

(assert (=> b!182125 m!209885))

(assert (=> b!182125 m!209887))

(assert (=> b!182125 m!209853))

(assert (=> b!182125 m!209885))

(assert (=> b!182125 m!209887))

(assert (=> b!182125 m!209889))

(declare-fun m!209953 () Bool)

(assert (=> b!182126 m!209953))

(declare-fun m!209955 () Bool)

(assert (=> b!182127 m!209955))

(declare-fun m!209957 () Bool)

(assert (=> b!182127 m!209957))

(assert (=> b!182127 m!209885))

(assert (=> b!182127 m!209853))

(assert (=> b!182127 m!209885))

(assert (=> b!182127 m!209887))

(assert (=> b!182127 m!209889))

(declare-fun m!209959 () Bool)

(assert (=> b!182127 m!209959))

(assert (=> b!182127 m!209955))

(declare-fun m!209961 () Bool)

(assert (=> b!182127 m!209961))

(assert (=> b!182127 m!209887))

(assert (=> bm!18395 m!209953))

(assert (=> b!182121 m!209853))

(assert (=> b!182121 m!209853))

(declare-fun m!209963 () Bool)

(assert (=> b!182121 m!209963))

(declare-fun m!209965 () Bool)

(assert (=> d!54477 m!209965))

(assert (=> d!54477 m!209805))

(declare-fun m!209967 () Bool)

(assert (=> b!182131 m!209967))

(assert (=> b!182130 m!209853))

(assert (=> b!182130 m!209853))

(assert (=> b!182130 m!209877))

(declare-fun m!209969 () Bool)

(assert (=> b!182123 m!209969))

(assert (=> bm!18391 d!54477))

(assert (=> b!182035 d!54475))

(declare-fun d!54479 () Bool)

(declare-fun e!119948 () Bool)

(assert (=> d!54479 e!119948))

(declare-fun res!86208 () Bool)

(assert (=> d!54479 (=> res!86208 e!119948)))

(declare-fun lt!90140 () Bool)

(assert (=> d!54479 (= res!86208 (not lt!90140))))

(declare-fun lt!90139 () Bool)

(assert (=> d!54479 (= lt!90140 lt!90139)))

(declare-fun lt!90138 () Unit!5521)

(declare-fun e!119949 () Unit!5521)

(assert (=> d!54479 (= lt!90138 e!119949)))

(declare-fun c!32655 () Bool)

(assert (=> d!54479 (= c!32655 lt!90139)))

(assert (=> d!54479 (= lt!90139 (containsKey!214 (toList!1176 lt!90087) (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54479 (= (contains!1252 lt!90087 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)) lt!90140)))

(declare-fun b!182133 () Bool)

(declare-fun lt!90137 () Unit!5521)

(assert (=> b!182133 (= e!119949 lt!90137)))

(assert (=> b!182133 (= lt!90137 (lemmaContainsKeyImpliesGetValueByKeyDefined!163 (toList!1176 lt!90087) (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!182133 (isDefined!164 (getValueByKey!210 (toList!1176 lt!90087) (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182134 () Bool)

(declare-fun Unit!5526 () Unit!5521)

(assert (=> b!182134 (= e!119949 Unit!5526)))

(declare-fun b!182135 () Bool)

(assert (=> b!182135 (= e!119948 (isDefined!164 (getValueByKey!210 (toList!1176 lt!90087) (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54479 c!32655) b!182133))

(assert (= (and d!54479 (not c!32655)) b!182134))

(assert (= (and d!54479 (not res!86208)) b!182135))

(assert (=> d!54479 m!209853))

(declare-fun m!209971 () Bool)

(assert (=> d!54479 m!209971))

(assert (=> b!182133 m!209853))

(declare-fun m!209973 () Bool)

(assert (=> b!182133 m!209973))

(assert (=> b!182133 m!209853))

(assert (=> b!182133 m!209933))

(assert (=> b!182133 m!209933))

(declare-fun m!209975 () Bool)

(assert (=> b!182133 m!209975))

(assert (=> b!182135 m!209853))

(assert (=> b!182135 m!209933))

(assert (=> b!182135 m!209933))

(assert (=> b!182135 m!209975))

(assert (=> b!182026 d!54479))

(declare-fun d!54481 () Bool)

(declare-fun res!86213 () Bool)

(declare-fun e!119954 () Bool)

(assert (=> d!54481 (=> res!86213 e!119954)))

(assert (=> d!54481 (= res!86213 (and ((_ is Cons!2329) (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))) (= (_1!1705 (h!2957 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))))) key!828)))))

(assert (=> d!54481 (= (containsKey!214 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828) e!119954)))

(declare-fun b!182140 () Bool)

(declare-fun e!119955 () Bool)

(assert (=> b!182140 (= e!119954 e!119955)))

(declare-fun res!86214 () Bool)

(assert (=> b!182140 (=> (not res!86214) (not e!119955))))

(assert (=> b!182140 (= res!86214 (and (or (not ((_ is Cons!2329) (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))))) (bvsle (_1!1705 (h!2957 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))))) key!828)) ((_ is Cons!2329) (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))) (bvslt (_1!1705 (h!2957 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))))) key!828)))))

(declare-fun b!182141 () Bool)

(assert (=> b!182141 (= e!119955 (containsKey!214 (t!7199 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))) key!828))))

(assert (= (and d!54481 (not res!86213)) b!182140))

(assert (= (and b!182140 res!86214) b!182141))

(declare-fun m!209977 () Bool)

(assert (=> b!182141 m!209977))

(assert (=> d!54455 d!54481))

(declare-fun d!54483 () Bool)

(declare-fun isEmpty!467 (Option!216) Bool)

(assert (=> d!54483 (= (isDefined!164 (getValueByKey!210 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828)) (not (isEmpty!467 (getValueByKey!210 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))))

(declare-fun bs!7428 () Bool)

(assert (= bs!7428 d!54483))

(assert (=> bs!7428 m!209835))

(declare-fun m!209979 () Bool)

(assert (=> bs!7428 m!209979))

(assert (=> b!181981 d!54483))

(declare-fun b!182151 () Bool)

(declare-fun e!119960 () Option!216)

(declare-fun e!119961 () Option!216)

(assert (=> b!182151 (= e!119960 e!119961)))

(declare-fun c!32661 () Bool)

(assert (=> b!182151 (= c!32661 (and ((_ is Cons!2329) (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))) (not (= (_1!1705 (h!2957 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))))) key!828))))))

(declare-fun b!182150 () Bool)

(assert (=> b!182150 (= e!119960 (Some!215 (_2!1705 (h!2957 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))))))

(declare-fun b!182152 () Bool)

(assert (=> b!182152 (= e!119961 (getValueByKey!210 (t!7199 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))) key!828))))

(declare-fun b!182153 () Bool)

(assert (=> b!182153 (= e!119961 None!214)))

(declare-fun d!54485 () Bool)

(declare-fun c!32660 () Bool)

(assert (=> d!54485 (= c!32660 (and ((_ is Cons!2329) (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))) (= (_1!1705 (h!2957 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))))) key!828)))))

(assert (=> d!54485 (= (getValueByKey!210 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828) e!119960)))

(assert (= (and d!54485 c!32660) b!182150))

(assert (= (and d!54485 (not c!32660)) b!182151))

(assert (= (and b!182151 c!32661) b!182152))

(assert (= (and b!182151 (not c!32661)) b!182153))

(declare-fun m!209981 () Bool)

(assert (=> b!182152 m!209981))

(assert (=> b!181981 d!54485))

(declare-fun bm!18398 () Bool)

(declare-fun call!18401 () (_ BitVec 32))

(assert (=> bm!18398 (= call!18401 (arrayCountValidKeys!0 (_keys!5633 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun b!182162 () Bool)

(declare-fun e!119966 () (_ BitVec 32))

(assert (=> b!182162 (= e!119966 (bvadd #b00000000000000000000000000000001 call!18401))))

(declare-fun d!54487 () Bool)

(declare-fun lt!90143 () (_ BitVec 32))

(assert (=> d!54487 (and (bvsge lt!90143 #b00000000000000000000000000000000) (bvsle lt!90143 (bvsub (size!3957 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119967 () (_ BitVec 32))

(assert (=> d!54487 (= lt!90143 e!119967)))

(declare-fun c!32666 () Bool)

(assert (=> d!54487 (= c!32666 (bvsge #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> d!54487 (and (bvsle #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3957 (_keys!5633 thiss!1248)) (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> d!54487 (= (arrayCountValidKeys!0 (_keys!5633 thiss!1248) #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))) lt!90143)))

(declare-fun b!182163 () Bool)

(assert (=> b!182163 (= e!119966 call!18401)))

(declare-fun b!182164 () Bool)

(assert (=> b!182164 (= e!119967 #b00000000000000000000000000000000)))

(declare-fun b!182165 () Bool)

(assert (=> b!182165 (= e!119967 e!119966)))

(declare-fun c!32667 () Bool)

(assert (=> b!182165 (= c!32667 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54487 c!32666) b!182164))

(assert (= (and d!54487 (not c!32666)) b!182165))

(assert (= (and b!182165 c!32667) b!182162))

(assert (= (and b!182165 (not c!32667)) b!182163))

(assert (= (or b!182162 b!182163) bm!18398))

(declare-fun m!209983 () Bool)

(assert (=> bm!18398 m!209983))

(assert (=> b!182165 m!209853))

(assert (=> b!182165 m!209853))

(assert (=> b!182165 m!209877))

(assert (=> b!182053 d!54487))

(declare-fun d!54489 () Bool)

(assert (=> d!54489 (= (apply!154 (+!269 lt!90071 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))) lt!90090) (apply!154 lt!90071 lt!90090))))

(declare-fun lt!90146 () Unit!5521)

(declare-fun choose!975 (ListLongMap!2321 (_ BitVec 64) V!5331 (_ BitVec 64)) Unit!5521)

(assert (=> d!54489 (= lt!90146 (choose!975 lt!90071 lt!90074 (minValue!3567 thiss!1248) lt!90090))))

(declare-fun e!119970 () Bool)

(assert (=> d!54489 e!119970))

(declare-fun res!86217 () Bool)

(assert (=> d!54489 (=> (not res!86217) (not e!119970))))

(assert (=> d!54489 (= res!86217 (contains!1252 lt!90071 lt!90090))))

(assert (=> d!54489 (= (addApplyDifferent!130 lt!90071 lt!90074 (minValue!3567 thiss!1248) lt!90090) lt!90146)))

(declare-fun b!182169 () Bool)

(assert (=> b!182169 (= e!119970 (not (= lt!90090 lt!90074)))))

(assert (= (and d!54489 res!86217) b!182169))

(assert (=> d!54489 m!209843))

(declare-fun m!209985 () Bool)

(assert (=> d!54489 m!209985))

(declare-fun m!209987 () Bool)

(assert (=> d!54489 m!209987))

(assert (=> d!54489 m!209855))

(assert (=> d!54489 m!209873))

(assert (=> d!54489 m!209855))

(assert (=> b!182037 d!54489))

(declare-fun d!54491 () Bool)

(declare-fun e!119971 () Bool)

(assert (=> d!54491 e!119971))

(declare-fun res!86218 () Bool)

(assert (=> d!54491 (=> res!86218 e!119971)))

(declare-fun lt!90150 () Bool)

(assert (=> d!54491 (= res!86218 (not lt!90150))))

(declare-fun lt!90149 () Bool)

(assert (=> d!54491 (= lt!90150 lt!90149)))

(declare-fun lt!90148 () Unit!5521)

(declare-fun e!119972 () Unit!5521)

(assert (=> d!54491 (= lt!90148 e!119972)))

(declare-fun c!32668 () Bool)

(assert (=> d!54491 (= c!32668 lt!90149)))

(assert (=> d!54491 (= lt!90149 (containsKey!214 (toList!1176 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))) lt!90077))))

(assert (=> d!54491 (= (contains!1252 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))) lt!90077) lt!90150)))

(declare-fun b!182170 () Bool)

(declare-fun lt!90147 () Unit!5521)

(assert (=> b!182170 (= e!119972 lt!90147)))

(assert (=> b!182170 (= lt!90147 (lemmaContainsKeyImpliesGetValueByKeyDefined!163 (toList!1176 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))) lt!90077))))

(assert (=> b!182170 (isDefined!164 (getValueByKey!210 (toList!1176 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))) lt!90077))))

(declare-fun b!182171 () Bool)

(declare-fun Unit!5527 () Unit!5521)

(assert (=> b!182171 (= e!119972 Unit!5527)))

(declare-fun b!182172 () Bool)

(assert (=> b!182172 (= e!119971 (isDefined!164 (getValueByKey!210 (toList!1176 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))) lt!90077)))))

(assert (= (and d!54491 c!32668) b!182170))

(assert (= (and d!54491 (not c!32668)) b!182171))

(assert (= (and d!54491 (not res!86218)) b!182172))

(declare-fun m!209989 () Bool)

(assert (=> d!54491 m!209989))

(declare-fun m!209991 () Bool)

(assert (=> b!182170 m!209991))

(declare-fun m!209993 () Bool)

(assert (=> b!182170 m!209993))

(assert (=> b!182170 m!209993))

(declare-fun m!209995 () Bool)

(assert (=> b!182170 m!209995))

(assert (=> b!182172 m!209993))

(assert (=> b!182172 m!209993))

(assert (=> b!182172 m!209995))

(assert (=> b!182037 d!54491))

(declare-fun d!54493 () Bool)

(assert (=> d!54493 (= (apply!154 (+!269 lt!90080 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))) lt!90083) (apply!154 lt!90080 lt!90083))))

(declare-fun lt!90151 () Unit!5521)

(assert (=> d!54493 (= lt!90151 (choose!975 lt!90080 lt!90078 (minValue!3567 thiss!1248) lt!90083))))

(declare-fun e!119973 () Bool)

(assert (=> d!54493 e!119973))

(declare-fun res!86219 () Bool)

(assert (=> d!54493 (=> (not res!86219) (not e!119973))))

(assert (=> d!54493 (= res!86219 (contains!1252 lt!90080 lt!90083))))

(assert (=> d!54493 (= (addApplyDifferent!130 lt!90080 lt!90078 (minValue!3567 thiss!1248) lt!90083) lt!90151)))

(declare-fun b!182173 () Bool)

(assert (=> b!182173 (= e!119973 (not (= lt!90083 lt!90078)))))

(assert (= (and d!54493 res!86219) b!182173))

(assert (=> d!54493 m!209863))

(declare-fun m!209997 () Bool)

(assert (=> d!54493 m!209997))

(declare-fun m!209999 () Bool)

(assert (=> d!54493 m!209999))

(assert (=> d!54493 m!209849))

(assert (=> d!54493 m!209851))

(assert (=> d!54493 m!209849))

(assert (=> b!182037 d!54493))

(declare-fun d!54495 () Bool)

(assert (=> d!54495 (= (apply!154 (+!269 lt!90080 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))) lt!90083) (get!2090 (getValueByKey!210 (toList!1176 (+!269 lt!90080 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))) lt!90083)))))

(declare-fun bs!7429 () Bool)

(assert (= bs!7429 d!54495))

(declare-fun m!210001 () Bool)

(assert (=> bs!7429 m!210001))

(assert (=> bs!7429 m!210001))

(declare-fun m!210003 () Bool)

(assert (=> bs!7429 m!210003))

(assert (=> b!182037 d!54495))

(declare-fun d!54497 () Bool)

(declare-fun e!119974 () Bool)

(assert (=> d!54497 e!119974))

(declare-fun res!86220 () Bool)

(assert (=> d!54497 (=> (not res!86220) (not e!119974))))

(declare-fun lt!90154 () ListLongMap!2321)

(assert (=> d!54497 (= res!86220 (contains!1252 lt!90154 (_1!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))))))

(declare-fun lt!90155 () List!2333)

(assert (=> d!54497 (= lt!90154 (ListLongMap!2322 lt!90155))))

(declare-fun lt!90153 () Unit!5521)

(declare-fun lt!90152 () Unit!5521)

(assert (=> d!54497 (= lt!90153 lt!90152)))

(assert (=> d!54497 (= (getValueByKey!210 lt!90155 (_1!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))))))

(assert (=> d!54497 (= lt!90152 (lemmaContainsTupThenGetReturnValue!113 lt!90155 (_1!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))))))

(assert (=> d!54497 (= lt!90155 (insertStrictlySorted!115 (toList!1176 lt!90080) (_1!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))))))

(assert (=> d!54497 (= (+!269 lt!90080 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))) lt!90154)))

(declare-fun b!182174 () Bool)

(declare-fun res!86221 () Bool)

(assert (=> b!182174 (=> (not res!86221) (not e!119974))))

(assert (=> b!182174 (= res!86221 (= (getValueByKey!210 (toList!1176 lt!90154) (_1!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))))))))

(declare-fun b!182175 () Bool)

(assert (=> b!182175 (= e!119974 (contains!1253 (toList!1176 lt!90154) (tuple2!3391 lt!90078 (minValue!3567 thiss!1248))))))

(assert (= (and d!54497 res!86220) b!182174))

(assert (= (and b!182174 res!86221) b!182175))

(declare-fun m!210005 () Bool)

(assert (=> d!54497 m!210005))

(declare-fun m!210007 () Bool)

(assert (=> d!54497 m!210007))

(declare-fun m!210009 () Bool)

(assert (=> d!54497 m!210009))

(declare-fun m!210011 () Bool)

(assert (=> d!54497 m!210011))

(declare-fun m!210013 () Bool)

(assert (=> b!182174 m!210013))

(declare-fun m!210015 () Bool)

(assert (=> b!182175 m!210015))

(assert (=> b!182037 d!54497))

(declare-fun d!54499 () Bool)

(assert (=> d!54499 (= (apply!154 (+!269 lt!90071 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))) lt!90090) (get!2090 (getValueByKey!210 (toList!1176 (+!269 lt!90071 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))) lt!90090)))))

(declare-fun bs!7430 () Bool)

(assert (= bs!7430 d!54499))

(declare-fun m!210017 () Bool)

(assert (=> bs!7430 m!210017))

(assert (=> bs!7430 m!210017))

(declare-fun m!210019 () Bool)

(assert (=> bs!7430 m!210019))

(assert (=> b!182037 d!54499))

(declare-fun d!54501 () Bool)

(assert (=> d!54501 (= (apply!154 lt!90070 lt!90076) (get!2090 (getValueByKey!210 (toList!1176 lt!90070) lt!90076)))))

(declare-fun bs!7431 () Bool)

(assert (= bs!7431 d!54501))

(declare-fun m!210021 () Bool)

(assert (=> bs!7431 m!210021))

(assert (=> bs!7431 m!210021))

(declare-fun m!210023 () Bool)

(assert (=> bs!7431 m!210023))

(assert (=> b!182037 d!54501))

(declare-fun d!54503 () Bool)

(assert (=> d!54503 (= (apply!154 (+!269 lt!90070 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))) lt!90076) (get!2090 (getValueByKey!210 (toList!1176 (+!269 lt!90070 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))) lt!90076)))))

(declare-fun bs!7432 () Bool)

(assert (= bs!7432 d!54503))

(declare-fun m!210025 () Bool)

(assert (=> bs!7432 m!210025))

(assert (=> bs!7432 m!210025))

(declare-fun m!210027 () Bool)

(assert (=> bs!7432 m!210027))

(assert (=> b!182037 d!54503))

(declare-fun d!54505 () Bool)

(assert (=> d!54505 (contains!1252 (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))) lt!90077)))

(declare-fun lt!90158 () Unit!5521)

(declare-fun choose!976 (ListLongMap!2321 (_ BitVec 64) V!5331 (_ BitVec 64)) Unit!5521)

(assert (=> d!54505 (= lt!90158 (choose!976 lt!90086 lt!90079 (zeroValue!3567 thiss!1248) lt!90077))))

(assert (=> d!54505 (contains!1252 lt!90086 lt!90077)))

(assert (=> d!54505 (= (addStillContains!130 lt!90086 lt!90079 (zeroValue!3567 thiss!1248) lt!90077) lt!90158)))

(declare-fun bs!7433 () Bool)

(assert (= bs!7433 d!54505))

(assert (=> bs!7433 m!209857))

(assert (=> bs!7433 m!209857))

(assert (=> bs!7433 m!209869))

(declare-fun m!210029 () Bool)

(assert (=> bs!7433 m!210029))

(declare-fun m!210031 () Bool)

(assert (=> bs!7433 m!210031))

(assert (=> b!182037 d!54505))

(declare-fun d!54507 () Bool)

(assert (=> d!54507 (= (apply!154 (+!269 lt!90070 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))) lt!90076) (apply!154 lt!90070 lt!90076))))

(declare-fun lt!90159 () Unit!5521)

(assert (=> d!54507 (= lt!90159 (choose!975 lt!90070 lt!90085 (zeroValue!3567 thiss!1248) lt!90076))))

(declare-fun e!119975 () Bool)

(assert (=> d!54507 e!119975))

(declare-fun res!86222 () Bool)

(assert (=> d!54507 (=> (not res!86222) (not e!119975))))

(assert (=> d!54507 (= res!86222 (contains!1252 lt!90070 lt!90076))))

(assert (=> d!54507 (= (addApplyDifferent!130 lt!90070 lt!90085 (zeroValue!3567 thiss!1248) lt!90076) lt!90159)))

(declare-fun b!182177 () Bool)

(assert (=> b!182177 (= e!119975 (not (= lt!90076 lt!90085)))))

(assert (= (and d!54507 res!86222) b!182177))

(assert (=> d!54507 m!209859))

(declare-fun m!210033 () Bool)

(assert (=> d!54507 m!210033))

(declare-fun m!210035 () Bool)

(assert (=> d!54507 m!210035))

(assert (=> d!54507 m!209861))

(assert (=> d!54507 m!209865))

(assert (=> d!54507 m!209861))

(assert (=> b!182037 d!54507))

(declare-fun d!54509 () Bool)

(declare-fun e!119976 () Bool)

(assert (=> d!54509 e!119976))

(declare-fun res!86223 () Bool)

(assert (=> d!54509 (=> (not res!86223) (not e!119976))))

(declare-fun lt!90162 () ListLongMap!2321)

(assert (=> d!54509 (= res!86223 (contains!1252 lt!90162 (_1!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))))))

(declare-fun lt!90163 () List!2333)

(assert (=> d!54509 (= lt!90162 (ListLongMap!2322 lt!90163))))

(declare-fun lt!90161 () Unit!5521)

(declare-fun lt!90160 () Unit!5521)

(assert (=> d!54509 (= lt!90161 lt!90160)))

(assert (=> d!54509 (= (getValueByKey!210 lt!90163 (_1!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))))))

(assert (=> d!54509 (= lt!90160 (lemmaContainsTupThenGetReturnValue!113 lt!90163 (_1!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))))))

(assert (=> d!54509 (= lt!90163 (insertStrictlySorted!115 (toList!1176 lt!90071) (_1!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))))))

(assert (=> d!54509 (= (+!269 lt!90071 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))) lt!90162)))

(declare-fun b!182178 () Bool)

(declare-fun res!86224 () Bool)

(assert (=> b!182178 (=> (not res!86224) (not e!119976))))

(assert (=> b!182178 (= res!86224 (= (getValueByKey!210 (toList!1176 lt!90162) (_1!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))))))))

(declare-fun b!182179 () Bool)

(assert (=> b!182179 (= e!119976 (contains!1253 (toList!1176 lt!90162) (tuple2!3391 lt!90074 (minValue!3567 thiss!1248))))))

(assert (= (and d!54509 res!86223) b!182178))

(assert (= (and b!182178 res!86224) b!182179))

(declare-fun m!210037 () Bool)

(assert (=> d!54509 m!210037))

(declare-fun m!210039 () Bool)

(assert (=> d!54509 m!210039))

(declare-fun m!210041 () Bool)

(assert (=> d!54509 m!210041))

(declare-fun m!210043 () Bool)

(assert (=> d!54509 m!210043))

(declare-fun m!210045 () Bool)

(assert (=> b!182178 m!210045))

(declare-fun m!210047 () Bool)

(assert (=> b!182179 m!210047))

(assert (=> b!182037 d!54509))

(declare-fun d!54511 () Bool)

(declare-fun e!119977 () Bool)

(assert (=> d!54511 e!119977))

(declare-fun res!86225 () Bool)

(assert (=> d!54511 (=> (not res!86225) (not e!119977))))

(declare-fun lt!90166 () ListLongMap!2321)

(assert (=> d!54511 (= res!86225 (contains!1252 lt!90166 (_1!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))))))

(declare-fun lt!90167 () List!2333)

(assert (=> d!54511 (= lt!90166 (ListLongMap!2322 lt!90167))))

(declare-fun lt!90165 () Unit!5521)

(declare-fun lt!90164 () Unit!5521)

(assert (=> d!54511 (= lt!90165 lt!90164)))

(assert (=> d!54511 (= (getValueByKey!210 lt!90167 (_1!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))))))

(assert (=> d!54511 (= lt!90164 (lemmaContainsTupThenGetReturnValue!113 lt!90167 (_1!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))))))

(assert (=> d!54511 (= lt!90167 (insertStrictlySorted!115 (toList!1176 lt!90070) (_1!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))))))

(assert (=> d!54511 (= (+!269 lt!90070 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))) lt!90166)))

(declare-fun b!182180 () Bool)

(declare-fun res!86226 () Bool)

(assert (=> b!182180 (=> (not res!86226) (not e!119977))))

(assert (=> b!182180 (= res!86226 (= (getValueByKey!210 (toList!1176 lt!90166) (_1!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))))))))

(declare-fun b!182181 () Bool)

(assert (=> b!182181 (= e!119977 (contains!1253 (toList!1176 lt!90166) (tuple2!3391 lt!90085 (zeroValue!3567 thiss!1248))))))

(assert (= (and d!54511 res!86225) b!182180))

(assert (= (and b!182180 res!86226) b!182181))

(declare-fun m!210049 () Bool)

(assert (=> d!54511 m!210049))

(declare-fun m!210051 () Bool)

(assert (=> d!54511 m!210051))

(declare-fun m!210053 () Bool)

(assert (=> d!54511 m!210053))

(declare-fun m!210055 () Bool)

(assert (=> d!54511 m!210055))

(declare-fun m!210057 () Bool)

(assert (=> b!182180 m!210057))

(declare-fun m!210059 () Bool)

(assert (=> b!182181 m!210059))

(assert (=> b!182037 d!54511))

(assert (=> b!182037 d!54477))

(declare-fun d!54513 () Bool)

(assert (=> d!54513 (= (apply!154 lt!90071 lt!90090) (get!2090 (getValueByKey!210 (toList!1176 lt!90071) lt!90090)))))

(declare-fun bs!7434 () Bool)

(assert (= bs!7434 d!54513))

(declare-fun m!210061 () Bool)

(assert (=> bs!7434 m!210061))

(assert (=> bs!7434 m!210061))

(declare-fun m!210063 () Bool)

(assert (=> bs!7434 m!210063))

(assert (=> b!182037 d!54513))

(declare-fun d!54515 () Bool)

(assert (=> d!54515 (= (apply!154 lt!90080 lt!90083) (get!2090 (getValueByKey!210 (toList!1176 lt!90080) lt!90083)))))

(declare-fun bs!7435 () Bool)

(assert (= bs!7435 d!54515))

(declare-fun m!210065 () Bool)

(assert (=> bs!7435 m!210065))

(assert (=> bs!7435 m!210065))

(declare-fun m!210067 () Bool)

(assert (=> bs!7435 m!210067))

(assert (=> b!182037 d!54515))

(declare-fun d!54517 () Bool)

(declare-fun e!119978 () Bool)

(assert (=> d!54517 e!119978))

(declare-fun res!86227 () Bool)

(assert (=> d!54517 (=> (not res!86227) (not e!119978))))

(declare-fun lt!90170 () ListLongMap!2321)

(assert (=> d!54517 (= res!86227 (contains!1252 lt!90170 (_1!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))))))

(declare-fun lt!90171 () List!2333)

(assert (=> d!54517 (= lt!90170 (ListLongMap!2322 lt!90171))))

(declare-fun lt!90169 () Unit!5521)

(declare-fun lt!90168 () Unit!5521)

(assert (=> d!54517 (= lt!90169 lt!90168)))

(assert (=> d!54517 (= (getValueByKey!210 lt!90171 (_1!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))))))

(assert (=> d!54517 (= lt!90168 (lemmaContainsTupThenGetReturnValue!113 lt!90171 (_1!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))))))

(assert (=> d!54517 (= lt!90171 (insertStrictlySorted!115 (toList!1176 lt!90086) (_1!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))) (_2!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))))))

(assert (=> d!54517 (= (+!269 lt!90086 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))) lt!90170)))

(declare-fun b!182182 () Bool)

(declare-fun res!86228 () Bool)

(assert (=> b!182182 (=> (not res!86228) (not e!119978))))

(assert (=> b!182182 (= res!86228 (= (getValueByKey!210 (toList!1176 lt!90170) (_1!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248)))) (Some!215 (_2!1705 (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))))))))

(declare-fun b!182183 () Bool)

(assert (=> b!182183 (= e!119978 (contains!1253 (toList!1176 lt!90170) (tuple2!3391 lt!90079 (zeroValue!3567 thiss!1248))))))

(assert (= (and d!54517 res!86227) b!182182))

(assert (= (and b!182182 res!86228) b!182183))

(declare-fun m!210069 () Bool)

(assert (=> d!54517 m!210069))

(declare-fun m!210071 () Bool)

(assert (=> d!54517 m!210071))

(declare-fun m!210073 () Bool)

(assert (=> d!54517 m!210073))

(declare-fun m!210075 () Bool)

(assert (=> d!54517 m!210075))

(declare-fun m!210077 () Bool)

(assert (=> b!182182 m!210077))

(declare-fun m!210079 () Bool)

(assert (=> b!182183 m!210079))

(assert (=> b!182037 d!54517))

(assert (=> d!54457 d!54463))

(declare-fun b!182192 () Bool)

(declare-fun res!86237 () Bool)

(declare-fun e!119981 () Bool)

(assert (=> b!182192 (=> (not res!86237) (not e!119981))))

(assert (=> b!182192 (= res!86237 (and (= (size!3958 (_values!3709 thiss!1248)) (bvadd (mask!8759 thiss!1248) #b00000000000000000000000000000001)) (= (size!3957 (_keys!5633 thiss!1248)) (size!3958 (_values!3709 thiss!1248))) (bvsge (_size!1291 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1291 thiss!1248) (bvadd (mask!8759 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!182193 () Bool)

(declare-fun res!86238 () Bool)

(assert (=> b!182193 (=> (not res!86238) (not e!119981))))

(declare-fun size!3961 (LongMapFixedSize!2484) (_ BitVec 32))

(assert (=> b!182193 (= res!86238 (bvsge (size!3961 thiss!1248) (_size!1291 thiss!1248)))))

(declare-fun b!182195 () Bool)

(assert (=> b!182195 (= e!119981 (and (bvsge (extraKeys!3463 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3463 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1291 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!182194 () Bool)

(declare-fun res!86240 () Bool)

(assert (=> b!182194 (=> (not res!86240) (not e!119981))))

(assert (=> b!182194 (= res!86240 (= (size!3961 thiss!1248) (bvadd (_size!1291 thiss!1248) (bvsdiv (bvadd (extraKeys!3463 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!54519 () Bool)

(declare-fun res!86239 () Bool)

(assert (=> d!54519 (=> (not res!86239) (not e!119981))))

(assert (=> d!54519 (= res!86239 (validMask!0 (mask!8759 thiss!1248)))))

(assert (=> d!54519 (= (simpleValid!169 thiss!1248) e!119981)))

(assert (= (and d!54519 res!86239) b!182192))

(assert (= (and b!182192 res!86237) b!182193))

(assert (= (and b!182193 res!86238) b!182194))

(assert (= (and b!182194 res!86240) b!182195))

(declare-fun m!210081 () Bool)

(assert (=> b!182193 m!210081))

(assert (=> b!182194 m!210081))

(assert (=> d!54519 m!209805))

(assert (=> d!54459 d!54519))

(declare-fun d!54521 () Bool)

(declare-fun lt!90176 () SeekEntryResult!613)

(assert (=> d!54521 (and (or ((_ is Undefined!613) lt!90176) (not ((_ is Found!613) lt!90176)) (and (bvsge (index!4623 lt!90176) #b00000000000000000000000000000000) (bvslt (index!4623 lt!90176) (size!3957 (_keys!5633 thiss!1248))))) (or ((_ is Undefined!613) lt!90176) ((_ is Found!613) lt!90176) (not ((_ is MissingVacant!613) lt!90176)) (not (= (index!4625 lt!90176) (index!4624 lt!90098))) (and (bvsge (index!4625 lt!90176) #b00000000000000000000000000000000) (bvslt (index!4625 lt!90176) (size!3957 (_keys!5633 thiss!1248))))) (or ((_ is Undefined!613) lt!90176) (ite ((_ is Found!613) lt!90176) (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4623 lt!90176)) key!828) (and ((_ is MissingVacant!613) lt!90176) (= (index!4625 lt!90176) (index!4624 lt!90098)) (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4625 lt!90176)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!119989 () SeekEntryResult!613)

(assert (=> d!54521 (= lt!90176 e!119989)))

(declare-fun c!32676 () Bool)

(assert (=> d!54521 (= c!32676 (bvsge (x!19861 lt!90098) #b01111111111111111111111111111110))))

(declare-fun lt!90177 () (_ BitVec 64))

(assert (=> d!54521 (= lt!90177 (select (arr!3646 (_keys!5633 thiss!1248)) (index!4624 lt!90098)))))

(assert (=> d!54521 (validMask!0 (mask!8759 thiss!1248))))

(assert (=> d!54521 (= (seekKeyOrZeroReturnVacant!0 (x!19861 lt!90098) (index!4624 lt!90098) (index!4624 lt!90098) key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)) lt!90176)))

(declare-fun b!182208 () Bool)

(declare-fun e!119988 () SeekEntryResult!613)

(assert (=> b!182208 (= e!119988 (Found!613 (index!4624 lt!90098)))))

(declare-fun e!119990 () SeekEntryResult!613)

(declare-fun b!182209 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!182209 (= e!119990 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19861 lt!90098) #b00000000000000000000000000000001) (nextIndex!0 (index!4624 lt!90098) (x!19861 lt!90098) (mask!8759 thiss!1248)) (index!4624 lt!90098) key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(declare-fun b!182210 () Bool)

(declare-fun c!32675 () Bool)

(assert (=> b!182210 (= c!32675 (= lt!90177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!182210 (= e!119988 e!119990)))

(declare-fun b!182211 () Bool)

(assert (=> b!182211 (= e!119989 e!119988)))

(declare-fun c!32677 () Bool)

(assert (=> b!182211 (= c!32677 (= lt!90177 key!828))))

(declare-fun b!182212 () Bool)

(assert (=> b!182212 (= e!119989 Undefined!613)))

(declare-fun b!182213 () Bool)

(assert (=> b!182213 (= e!119990 (MissingVacant!613 (index!4624 lt!90098)))))

(assert (= (and d!54521 c!32676) b!182212))

(assert (= (and d!54521 (not c!32676)) b!182211))

(assert (= (and b!182211 c!32677) b!182208))

(assert (= (and b!182211 (not c!32677)) b!182210))

(assert (= (and b!182210 c!32675) b!182213))

(assert (= (and b!182210 (not c!32675)) b!182209))

(declare-fun m!210083 () Bool)

(assert (=> d!54521 m!210083))

(declare-fun m!210085 () Bool)

(assert (=> d!54521 m!210085))

(assert (=> d!54521 m!209905))

(assert (=> d!54521 m!209805))

(declare-fun m!210087 () Bool)

(assert (=> b!182209 m!210087))

(assert (=> b!182209 m!210087))

(declare-fun m!210089 () Bool)

(assert (=> b!182209 m!210089))

(assert (=> b!182071 d!54521))

(declare-fun d!54523 () Bool)

(declare-fun e!119991 () Bool)

(assert (=> d!54523 e!119991))

(declare-fun res!86241 () Bool)

(assert (=> d!54523 (=> res!86241 e!119991)))

(declare-fun lt!90181 () Bool)

(assert (=> d!54523 (= res!86241 (not lt!90181))))

(declare-fun lt!90180 () Bool)

(assert (=> d!54523 (= lt!90181 lt!90180)))

(declare-fun lt!90179 () Unit!5521)

(declare-fun e!119992 () Unit!5521)

(assert (=> d!54523 (= lt!90179 e!119992)))

(declare-fun c!32678 () Bool)

(assert (=> d!54523 (= c!32678 lt!90180)))

(assert (=> d!54523 (= lt!90180 (containsKey!214 (toList!1176 lt!90087) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54523 (= (contains!1252 lt!90087 #b1000000000000000000000000000000000000000000000000000000000000000) lt!90181)))

(declare-fun b!182214 () Bool)

(declare-fun lt!90178 () Unit!5521)

(assert (=> b!182214 (= e!119992 lt!90178)))

(assert (=> b!182214 (= lt!90178 (lemmaContainsKeyImpliesGetValueByKeyDefined!163 (toList!1176 lt!90087) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!182214 (isDefined!164 (getValueByKey!210 (toList!1176 lt!90087) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182215 () Bool)

(declare-fun Unit!5528 () Unit!5521)

(assert (=> b!182215 (= e!119992 Unit!5528)))

(declare-fun b!182216 () Bool)

(assert (=> b!182216 (= e!119991 (isDefined!164 (getValueByKey!210 (toList!1176 lt!90087) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54523 c!32678) b!182214))

(assert (= (and d!54523 (not c!32678)) b!182215))

(assert (= (and d!54523 (not res!86241)) b!182216))

(declare-fun m!210091 () Bool)

(assert (=> d!54523 m!210091))

(declare-fun m!210093 () Bool)

(assert (=> b!182214 m!210093))

(declare-fun m!210095 () Bool)

(assert (=> b!182214 m!210095))

(assert (=> b!182214 m!210095))

(declare-fun m!210097 () Bool)

(assert (=> b!182214 m!210097))

(assert (=> b!182216 m!210095))

(assert (=> b!182216 m!210095))

(assert (=> b!182216 m!210097))

(assert (=> bm!18390 d!54523))

(declare-fun d!54525 () Bool)

(assert (=> d!54525 (isDefined!164 (getValueByKey!210 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))

(declare-fun lt!90184 () Unit!5521)

(declare-fun choose!977 (List!2333 (_ BitVec 64)) Unit!5521)

(assert (=> d!54525 (= lt!90184 (choose!977 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))

(declare-fun e!119995 () Bool)

(assert (=> d!54525 e!119995))

(declare-fun res!86244 () Bool)

(assert (=> d!54525 (=> (not res!86244) (not e!119995))))

(declare-fun isStrictlySorted!339 (List!2333) Bool)

(assert (=> d!54525 (= res!86244 (isStrictlySorted!339 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248)))))))

(assert (=> d!54525 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!163 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828) lt!90184)))

(declare-fun b!182219 () Bool)

(assert (=> b!182219 (= e!119995 (containsKey!214 (toList!1176 (getCurrentListMap!819 (_keys!5633 thiss!1248) (_values!3709 thiss!1248) (mask!8759 thiss!1248) (extraKeys!3463 thiss!1248) (zeroValue!3567 thiss!1248) (minValue!3567 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3726 thiss!1248))) key!828))))

(assert (= (and d!54525 res!86244) b!182219))

(assert (=> d!54525 m!209835))

(assert (=> d!54525 m!209835))

(assert (=> d!54525 m!209837))

(declare-fun m!210099 () Bool)

(assert (=> d!54525 m!210099))

(declare-fun m!210101 () Bool)

(assert (=> d!54525 m!210101))

(assert (=> b!182219 m!209831))

(assert (=> b!181979 d!54525))

(assert (=> b!181979 d!54483))

(assert (=> b!181979 d!54485))

(declare-fun d!54527 () Bool)

(declare-fun e!119996 () Bool)

(assert (=> d!54527 e!119996))

(declare-fun res!86245 () Bool)

(assert (=> d!54527 (=> (not res!86245) (not e!119996))))

(declare-fun lt!90187 () ListLongMap!2321)

(assert (=> d!54527 (= res!86245 (contains!1252 lt!90187 (_1!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))))

(declare-fun lt!90188 () List!2333)

(assert (=> d!54527 (= lt!90187 (ListLongMap!2322 lt!90188))))

(declare-fun lt!90186 () Unit!5521)

(declare-fun lt!90185 () Unit!5521)

(assert (=> d!54527 (= lt!90186 lt!90185)))

(assert (=> d!54527 (= (getValueByKey!210 lt!90188 (_1!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))) (Some!215 (_2!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))))

(assert (=> d!54527 (= lt!90185 (lemmaContainsTupThenGetReturnValue!113 lt!90188 (_1!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))) (_2!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))))

(assert (=> d!54527 (= lt!90188 (insertStrictlySorted!115 (toList!1176 (ite c!32626 call!18392 (ite c!32628 call!18389 call!18391))) (_1!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))) (_2!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))))))

(assert (=> d!54527 (= (+!269 (ite c!32626 call!18392 (ite c!32628 call!18389 call!18391)) (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))) lt!90187)))

(declare-fun b!182220 () Bool)

(declare-fun res!86246 () Bool)

(assert (=> b!182220 (=> (not res!86246) (not e!119996))))

(assert (=> b!182220 (= res!86246 (= (getValueByKey!210 (toList!1176 lt!90187) (_1!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248))))) (Some!215 (_2!1705 (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))))

(declare-fun b!182221 () Bool)

(assert (=> b!182221 (= e!119996 (contains!1253 (toList!1176 lt!90187) (ite (or c!32626 c!32628) (tuple2!3391 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3567 thiss!1248)) (tuple2!3391 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3567 thiss!1248)))))))

(assert (= (and d!54527 res!86245) b!182220))

(assert (= (and b!182220 res!86246) b!182221))

(declare-fun m!210103 () Bool)

(assert (=> d!54527 m!210103))

(declare-fun m!210105 () Bool)

(assert (=> d!54527 m!210105))

(declare-fun m!210107 () Bool)

(assert (=> d!54527 m!210107))

(declare-fun m!210109 () Bool)

(assert (=> d!54527 m!210109))

(declare-fun m!210111 () Bool)

(assert (=> b!182220 m!210111))

(declare-fun m!210113 () Bool)

(assert (=> b!182221 m!210113))

(assert (=> bm!18392 d!54527))

(declare-fun d!54529 () Bool)

(assert (=> d!54529 (= (apply!154 lt!90087 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2090 (getValueByKey!210 (toList!1176 lt!90087) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7436 () Bool)

(assert (= bs!7436 d!54529))

(assert (=> bs!7436 m!210095))

(assert (=> bs!7436 m!210095))

(declare-fun m!210115 () Bool)

(assert (=> bs!7436 m!210115))

(assert (=> b!182040 d!54529))

(declare-fun b!182232 () Bool)

(declare-fun e!120008 () Bool)

(declare-fun call!18404 () Bool)

(assert (=> b!182232 (= e!120008 call!18404)))

(declare-fun b!182233 () Bool)

(declare-fun e!120005 () Bool)

(assert (=> b!182233 (= e!120005 e!120008)))

(declare-fun c!32681 () Bool)

(assert (=> b!182233 (= c!32681 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18401 () Bool)

(assert (=> bm!18401 (= call!18404 (arrayNoDuplicates!0 (_keys!5633 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32681 (Cons!2330 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000) Nil!2331) Nil!2331)))))

(declare-fun d!54531 () Bool)

(declare-fun res!86255 () Bool)

(declare-fun e!120006 () Bool)

(assert (=> d!54531 (=> res!86255 e!120006)))

(assert (=> d!54531 (= res!86255 (bvsge #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> d!54531 (= (arrayNoDuplicates!0 (_keys!5633 thiss!1248) #b00000000000000000000000000000000 Nil!2331) e!120006)))

(declare-fun b!182234 () Bool)

(declare-fun e!120007 () Bool)

(declare-fun contains!1254 (List!2334 (_ BitVec 64)) Bool)

(assert (=> b!182234 (= e!120007 (contains!1254 Nil!2331 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182235 () Bool)

(assert (=> b!182235 (= e!120006 e!120005)))

(declare-fun res!86253 () Bool)

(assert (=> b!182235 (=> (not res!86253) (not e!120005))))

(assert (=> b!182235 (= res!86253 (not e!120007))))

(declare-fun res!86254 () Bool)

(assert (=> b!182235 (=> (not res!86254) (not e!120007))))

(assert (=> b!182235 (= res!86254 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182236 () Bool)

(assert (=> b!182236 (= e!120008 call!18404)))

(assert (= (and d!54531 (not res!86255)) b!182235))

(assert (= (and b!182235 res!86254) b!182234))

(assert (= (and b!182235 res!86253) b!182233))

(assert (= (and b!182233 c!32681) b!182236))

(assert (= (and b!182233 (not c!32681)) b!182232))

(assert (= (or b!182236 b!182232) bm!18401))

(assert (=> b!182233 m!209853))

(assert (=> b!182233 m!209853))

(assert (=> b!182233 m!209877))

(assert (=> bm!18401 m!209853))

(declare-fun m!210117 () Bool)

(assert (=> bm!18401 m!210117))

(assert (=> b!182234 m!209853))

(assert (=> b!182234 m!209853))

(declare-fun m!210119 () Bool)

(assert (=> b!182234 m!210119))

(assert (=> b!182235 m!209853))

(assert (=> b!182235 m!209853))

(assert (=> b!182235 m!209877))

(assert (=> b!182055 d!54531))

(declare-fun b!182255 () Bool)

(declare-fun e!120020 () Bool)

(declare-fun lt!90194 () SeekEntryResult!613)

(assert (=> b!182255 (= e!120020 (bvsge (x!19861 lt!90194) #b01111111111111111111111111111110))))

(declare-fun b!182256 () Bool)

(declare-fun e!120023 () SeekEntryResult!613)

(declare-fun e!120019 () SeekEntryResult!613)

(assert (=> b!182256 (= e!120023 e!120019)))

(declare-fun c!32690 () Bool)

(declare-fun lt!90193 () (_ BitVec 64))

(assert (=> b!182256 (= c!32690 (or (= lt!90193 key!828) (= (bvadd lt!90193 lt!90193) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!182257 () Bool)

(assert (=> b!182257 (and (bvsge (index!4624 lt!90194) #b00000000000000000000000000000000) (bvslt (index!4624 lt!90194) (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun res!86263 () Bool)

(assert (=> b!182257 (= res!86263 (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4624 lt!90194)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!120021 () Bool)

(assert (=> b!182257 (=> res!86263 e!120021)))

(declare-fun b!182258 () Bool)

(assert (=> b!182258 (= e!120023 (Intermediate!613 true (toIndex!0 key!828 (mask!8759 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!182259 () Bool)

(assert (=> b!182259 (= e!120019 (Intermediate!613 false (toIndex!0 key!828 (mask!8759 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!182260 () Bool)

(assert (=> b!182260 (and (bvsge (index!4624 lt!90194) #b00000000000000000000000000000000) (bvslt (index!4624 lt!90194) (size!3957 (_keys!5633 thiss!1248))))))

(declare-fun res!86262 () Bool)

(assert (=> b!182260 (= res!86262 (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4624 lt!90194)) key!828))))

(assert (=> b!182260 (=> res!86262 e!120021)))

(declare-fun e!120022 () Bool)

(assert (=> b!182260 (= e!120022 e!120021)))

(declare-fun b!182261 () Bool)

(assert (=> b!182261 (= e!120019 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8759 thiss!1248)) #b00000000000000000000000000000000 (mask!8759 thiss!1248)) key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(declare-fun b!182262 () Bool)

(assert (=> b!182262 (and (bvsge (index!4624 lt!90194) #b00000000000000000000000000000000) (bvslt (index!4624 lt!90194) (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> b!182262 (= e!120021 (= (select (arr!3646 (_keys!5633 thiss!1248)) (index!4624 lt!90194)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!54533 () Bool)

(assert (=> d!54533 e!120020))

(declare-fun c!32688 () Bool)

(assert (=> d!54533 (= c!32688 (and ((_ is Intermediate!613) lt!90194) (undefined!1425 lt!90194)))))

(assert (=> d!54533 (= lt!90194 e!120023)))

(declare-fun c!32689 () Bool)

(assert (=> d!54533 (= c!32689 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!54533 (= lt!90193 (select (arr!3646 (_keys!5633 thiss!1248)) (toIndex!0 key!828 (mask!8759 thiss!1248))))))

(assert (=> d!54533 (validMask!0 (mask!8759 thiss!1248))))

(assert (=> d!54533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8759 thiss!1248)) key!828 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)) lt!90194)))

(declare-fun b!182263 () Bool)

(assert (=> b!182263 (= e!120020 e!120022)))

(declare-fun res!86264 () Bool)

(assert (=> b!182263 (= res!86264 (and ((_ is Intermediate!613) lt!90194) (not (undefined!1425 lt!90194)) (bvslt (x!19861 lt!90194) #b01111111111111111111111111111110) (bvsge (x!19861 lt!90194) #b00000000000000000000000000000000) (bvsge (x!19861 lt!90194) #b00000000000000000000000000000000)))))

(assert (=> b!182263 (=> (not res!86264) (not e!120022))))

(assert (= (and d!54533 c!32689) b!182258))

(assert (= (and d!54533 (not c!32689)) b!182256))

(assert (= (and b!182256 c!32690) b!182259))

(assert (= (and b!182256 (not c!32690)) b!182261))

(assert (= (and d!54533 c!32688) b!182255))

(assert (= (and d!54533 (not c!32688)) b!182263))

(assert (= (and b!182263 res!86264) b!182260))

(assert (= (and b!182260 (not res!86262)) b!182257))

(assert (= (and b!182257 (not res!86263)) b!182262))

(declare-fun m!210121 () Bool)

(assert (=> b!182262 m!210121))

(assert (=> d!54533 m!209909))

(declare-fun m!210123 () Bool)

(assert (=> d!54533 m!210123))

(assert (=> d!54533 m!209805))

(assert (=> b!182261 m!209909))

(declare-fun m!210125 () Bool)

(assert (=> b!182261 m!210125))

(assert (=> b!182261 m!210125))

(declare-fun m!210127 () Bool)

(assert (=> b!182261 m!210127))

(assert (=> b!182257 m!210121))

(assert (=> b!182260 m!210121))

(assert (=> d!54461 d!54533))

(declare-fun d!54535 () Bool)

(declare-fun lt!90200 () (_ BitVec 32))

(declare-fun lt!90199 () (_ BitVec 32))

(assert (=> d!54535 (= lt!90200 (bvmul (bvxor lt!90199 (bvlshr lt!90199 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54535 (= lt!90199 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54535 (and (bvsge (mask!8759 thiss!1248) #b00000000000000000000000000000000) (let ((res!86265 (let ((h!2959 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19879 (bvmul (bvxor h!2959 (bvlshr h!2959 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19879 (bvlshr x!19879 #b00000000000000000000000000001101)) (mask!8759 thiss!1248)))))) (and (bvslt res!86265 (bvadd (mask!8759 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!86265 #b00000000000000000000000000000000))))))

(assert (=> d!54535 (= (toIndex!0 key!828 (mask!8759 thiss!1248)) (bvand (bvxor lt!90200 (bvlshr lt!90200 #b00000000000000000000000000001101)) (mask!8759 thiss!1248)))))

(assert (=> d!54461 d!54535))

(assert (=> d!54461 d!54463))

(declare-fun bm!18404 () Bool)

(declare-fun call!18407 () Bool)

(assert (=> bm!18404 (= call!18407 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5633 thiss!1248) (mask!8759 thiss!1248)))))

(declare-fun b!182272 () Bool)

(declare-fun e!120030 () Bool)

(assert (=> b!182272 (= e!120030 call!18407)))

(declare-fun b!182273 () Bool)

(declare-fun e!120031 () Bool)

(assert (=> b!182273 (= e!120031 call!18407)))

(declare-fun d!54537 () Bool)

(declare-fun res!86271 () Bool)

(declare-fun e!120032 () Bool)

(assert (=> d!54537 (=> res!86271 e!120032)))

(assert (=> d!54537 (= res!86271 (bvsge #b00000000000000000000000000000000 (size!3957 (_keys!5633 thiss!1248))))))

(assert (=> d!54537 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5633 thiss!1248) (mask!8759 thiss!1248)) e!120032)))

(declare-fun b!182274 () Bool)

(assert (=> b!182274 (= e!120032 e!120030)))

(declare-fun c!32693 () Bool)

(assert (=> b!182274 (= c!32693 (validKeyInArray!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182275 () Bool)

(assert (=> b!182275 (= e!120030 e!120031)))

(declare-fun lt!90209 () (_ BitVec 64))

(assert (=> b!182275 (= lt!90209 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90207 () Unit!5521)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7708 (_ BitVec 64) (_ BitVec 32)) Unit!5521)

(assert (=> b!182275 (= lt!90207 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5633 thiss!1248) lt!90209 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!182275 (arrayContainsKey!0 (_keys!5633 thiss!1248) lt!90209 #b00000000000000000000000000000000)))

(declare-fun lt!90208 () Unit!5521)

(assert (=> b!182275 (= lt!90208 lt!90207)))

(declare-fun res!86270 () Bool)

(assert (=> b!182275 (= res!86270 (= (seekEntryOrOpen!0 (select (arr!3646 (_keys!5633 thiss!1248)) #b00000000000000000000000000000000) (_keys!5633 thiss!1248) (mask!8759 thiss!1248)) (Found!613 #b00000000000000000000000000000000)))))

(assert (=> b!182275 (=> (not res!86270) (not e!120031))))

(assert (= (and d!54537 (not res!86271)) b!182274))

(assert (= (and b!182274 c!32693) b!182275))

(assert (= (and b!182274 (not c!32693)) b!182272))

(assert (= (and b!182275 res!86270) b!182273))

(assert (= (or b!182273 b!182272) bm!18404))

(declare-fun m!210129 () Bool)

(assert (=> bm!18404 m!210129))

(assert (=> b!182274 m!209853))

(assert (=> b!182274 m!209853))

(assert (=> b!182274 m!209877))

(assert (=> b!182275 m!209853))

(declare-fun m!210131 () Bool)

(assert (=> b!182275 m!210131))

(declare-fun m!210133 () Bool)

(assert (=> b!182275 m!210133))

(assert (=> b!182275 m!209853))

(declare-fun m!210135 () Bool)

(assert (=> b!182275 m!210135))

(assert (=> b!182054 d!54537))

(declare-fun b!182277 () Bool)

(declare-fun e!120033 () Bool)

(assert (=> b!182277 (= e!120033 tp_is_empty!4263)))

(declare-fun mapNonEmpty!7319 () Bool)

(declare-fun mapRes!7319 () Bool)

(declare-fun tp!16238 () Bool)

(declare-fun e!120034 () Bool)

(assert (=> mapNonEmpty!7319 (= mapRes!7319 (and tp!16238 e!120034))))

(declare-fun mapRest!7319 () (Array (_ BitVec 32) ValueCell!1788))

(declare-fun mapKey!7319 () (_ BitVec 32))

(declare-fun mapValue!7319 () ValueCell!1788)

(assert (=> mapNonEmpty!7319 (= mapRest!7318 (store mapRest!7319 mapKey!7319 mapValue!7319))))

(declare-fun b!182276 () Bool)

(assert (=> b!182276 (= e!120034 tp_is_empty!4263)))

(declare-fun mapIsEmpty!7319 () Bool)

(assert (=> mapIsEmpty!7319 mapRes!7319))

(declare-fun condMapEmpty!7319 () Bool)

(declare-fun mapDefault!7319 () ValueCell!1788)

(assert (=> mapNonEmpty!7318 (= condMapEmpty!7319 (= mapRest!7318 ((as const (Array (_ BitVec 32) ValueCell!1788)) mapDefault!7319)))))

(assert (=> mapNonEmpty!7318 (= tp!16237 (and e!120033 mapRes!7319))))

(assert (= (and mapNonEmpty!7318 condMapEmpty!7319) mapIsEmpty!7319))

(assert (= (and mapNonEmpty!7318 (not condMapEmpty!7319)) mapNonEmpty!7319))

(assert (= (and mapNonEmpty!7319 ((_ is ValueCellFull!1788) mapValue!7319)) b!182276))

(assert (= (and mapNonEmpty!7318 ((_ is ValueCellFull!1788) mapDefault!7319)) b!182277))

(declare-fun m!210137 () Bool)

(assert (=> mapNonEmpty!7319 m!210137))

(declare-fun b_lambda!7201 () Bool)

(assert (= b_lambda!7199 (or (and b!181944 b_free!4491) b_lambda!7201)))

(declare-fun b_lambda!7203 () Bool)

(assert (= b_lambda!7197 (or (and b!181944 b_free!4491) b_lambda!7203)))

(check-sat (not b!182131) (not b!182130) (not bm!18404) (not b!182121) (not b!182193) (not d!54499) (not b!182194) (not b!182178) (not b!182133) (not d!54511) (not d!54489) (not d!54501) (not d!54467) (not b!182179) (not b_lambda!7201) (not b!182127) (not d!54495) (not b!182181) (not b!182141) (not b!182135) (not b!182274) (not d!54483) (not d!54479) (not b!182219) (not mapNonEmpty!7319) (not d!54527) (not b!182175) (not b_next!4491) (not d!54525) (not b!182183) (not d!54509) (not d!54465) (not d!54521) (not d!54477) (not b!182165) (not b!182275) (not d!54505) (not b!182182) (not b!182180) (not b!182221) (not d!54507) (not b!182174) (not b!182087) (not b!182234) (not b!182220) (not d!54493) (not bm!18401) (not b!182261) (not b!182214) (not b!182172) (not b!182235) (not d!54473) (not d!54529) (not b!182093) tp_is_empty!4263 (not b!182170) (not b!182122) (not b_lambda!7203) (not b!182096) (not d!54517) (not b!182125) (not b!182086) (not bm!18395) (not bm!18398) b_and!11073 (not b!182094) (not b!182123) (not d!54491) (not b_lambda!7195) (not d!54519) (not d!54515) (not d!54513) (not b!182216) (not b!182152) (not b!182126) (not d!54497) (not d!54471) (not d!54533) (not d!54523) (not b!182233) (not b!182209) (not d!54503) (not b!182092))
(check-sat b_and!11073 (not b_next!4491))
