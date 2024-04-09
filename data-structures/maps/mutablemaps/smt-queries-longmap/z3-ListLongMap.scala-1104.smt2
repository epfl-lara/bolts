; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22730 () Bool)

(assert start!22730)

(declare-fun b!237055 () Bool)

(declare-fun b_free!6375 () Bool)

(declare-fun b_next!6375 () Bool)

(assert (=> b!237055 (= b_free!6375 (not b_next!6375))))

(declare-fun tp!22311 () Bool)

(declare-fun b_and!13341 () Bool)

(assert (=> b!237055 (= tp!22311 b_and!13341)))

(declare-fun b!237049 () Bool)

(declare-fun res!116220 () Bool)

(declare-fun e!153960 () Bool)

(assert (=> b!237049 (=> (not res!116220) (not e!153960))))

(declare-datatypes ((V!7963 0))(
  ( (V!7964 (val!3163 Int)) )
))
(declare-datatypes ((ValueCell!2775 0))(
  ( (ValueCellFull!2775 (v!5192 V!7963)) (EmptyCell!2775) )
))
(declare-datatypes ((array!11742 0))(
  ( (array!11743 (arr!5577 (Array (_ BitVec 32) ValueCell!2775)) (size!5916 (_ BitVec 32))) )
))
(declare-datatypes ((array!11744 0))(
  ( (array!11745 (arr!5578 (Array (_ BitVec 32) (_ BitVec 64))) (size!5917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3450 0))(
  ( (LongMapFixedSize!3451 (defaultEntry!4403 Int) (mask!10408 (_ BitVec 32)) (extraKeys!4140 (_ BitVec 32)) (zeroValue!4244 V!7963) (minValue!4244 V!7963) (_size!1774 (_ BitVec 32)) (_keys!6491 array!11744) (_values!4386 array!11742) (_vacant!1774 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3450)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!237049 (= res!116220 (validMask!0 (mask!10408 thiss!1504)))))

(declare-fun mapIsEmpty!10570 () Bool)

(declare-fun mapRes!10570 () Bool)

(assert (=> mapIsEmpty!10570 mapRes!10570))

(declare-fun b!237050 () Bool)

(declare-fun e!153956 () Bool)

(declare-fun tp_is_empty!6237 () Bool)

(assert (=> b!237050 (= e!153956 tp_is_empty!6237)))

(declare-fun b!237051 () Bool)

(declare-fun e!153959 () Bool)

(assert (=> b!237051 (= e!153959 tp_is_empty!6237)))

(declare-fun mapNonEmpty!10570 () Bool)

(declare-fun tp!22312 () Bool)

(assert (=> mapNonEmpty!10570 (= mapRes!10570 (and tp!22312 e!153956))))

(declare-fun mapKey!10570 () (_ BitVec 32))

(declare-fun mapValue!10570 () ValueCell!2775)

(declare-fun mapRest!10570 () (Array (_ BitVec 32) ValueCell!2775))

(assert (=> mapNonEmpty!10570 (= (arr!5577 (_values!4386 thiss!1504)) (store mapRest!10570 mapKey!10570 mapValue!10570))))

(declare-fun b!237052 () Bool)

(declare-fun e!153961 () Bool)

(assert (=> b!237052 (= e!153961 (and e!153959 mapRes!10570))))

(declare-fun condMapEmpty!10570 () Bool)

(declare-fun mapDefault!10570 () ValueCell!2775)

(assert (=> b!237052 (= condMapEmpty!10570 (= (arr!5577 (_values!4386 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2775)) mapDefault!10570)))))

(declare-fun b!237053 () Bool)

(declare-fun res!116219 () Bool)

(assert (=> b!237053 (=> (not res!116219) (not e!153960))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4656 0))(
  ( (tuple2!4657 (_1!2338 (_ BitVec 64)) (_2!2338 V!7963)) )
))
(declare-datatypes ((List!3582 0))(
  ( (Nil!3579) (Cons!3578 (h!4232 tuple2!4656) (t!8575 List!3582)) )
))
(declare-datatypes ((ListLongMap!3583 0))(
  ( (ListLongMap!3584 (toList!1807 List!3582)) )
))
(declare-fun contains!1683 (ListLongMap!3583 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1330 (array!11744 array!11742 (_ BitVec 32) (_ BitVec 32) V!7963 V!7963 (_ BitVec 32) Int) ListLongMap!3583)

(assert (=> b!237053 (= res!116219 (not (contains!1683 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)) key!932)))))

(declare-fun res!116218 () Bool)

(declare-fun e!153955 () Bool)

(assert (=> start!22730 (=> (not res!116218) (not e!153955))))

(declare-fun valid!1353 (LongMapFixedSize!3450) Bool)

(assert (=> start!22730 (= res!116218 (valid!1353 thiss!1504))))

(assert (=> start!22730 e!153955))

(declare-fun e!153958 () Bool)

(assert (=> start!22730 e!153958))

(assert (=> start!22730 true))

(declare-fun b!237054 () Bool)

(declare-fun res!116221 () Bool)

(assert (=> b!237054 (=> (not res!116221) (not e!153955))))

(assert (=> b!237054 (= res!116221 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun array_inv!3671 (array!11744) Bool)

(declare-fun array_inv!3672 (array!11742) Bool)

(assert (=> b!237055 (= e!153958 (and tp!22311 tp_is_empty!6237 (array_inv!3671 (_keys!6491 thiss!1504)) (array_inv!3672 (_values!4386 thiss!1504)) e!153961))))

(declare-fun b!237056 () Bool)

(assert (=> b!237056 (= e!153960 (and (= (size!5916 (_values!4386 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10408 thiss!1504))) (= (size!5917 (_keys!6491 thiss!1504)) (size!5916 (_values!4386 thiss!1504))) (bvsge (mask!10408 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4140 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!237057 () Bool)

(assert (=> b!237057 (= e!153955 e!153960)))

(declare-fun res!116217 () Bool)

(assert (=> b!237057 (=> (not res!116217) (not e!153960))))

(declare-datatypes ((SeekEntryResult!1017 0))(
  ( (MissingZero!1017 (index!6238 (_ BitVec 32))) (Found!1017 (index!6239 (_ BitVec 32))) (Intermediate!1017 (undefined!1829 Bool) (index!6240 (_ BitVec 32)) (x!23943 (_ BitVec 32))) (Undefined!1017) (MissingVacant!1017 (index!6241 (_ BitVec 32))) )
))
(declare-fun lt!119904 () SeekEntryResult!1017)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!237057 (= res!116217 (or (= lt!119904 (MissingZero!1017 index!297)) (= lt!119904 (MissingVacant!1017 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11744 (_ BitVec 32)) SeekEntryResult!1017)

(assert (=> b!237057 (= lt!119904 (seekEntryOrOpen!0 key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(assert (= (and start!22730 res!116218) b!237054))

(assert (= (and b!237054 res!116221) b!237057))

(assert (= (and b!237057 res!116217) b!237053))

(assert (= (and b!237053 res!116219) b!237049))

(assert (= (and b!237049 res!116220) b!237056))

(assert (= (and b!237052 condMapEmpty!10570) mapIsEmpty!10570))

(assert (= (and b!237052 (not condMapEmpty!10570)) mapNonEmpty!10570))

(get-info :version)

(assert (= (and mapNonEmpty!10570 ((_ is ValueCellFull!2775) mapValue!10570)) b!237050))

(assert (= (and b!237052 ((_ is ValueCellFull!2775) mapDefault!10570)) b!237051))

(assert (= b!237055 b!237052))

(assert (= start!22730 b!237055))

(declare-fun m!257859 () Bool)

(assert (=> b!237053 m!257859))

(assert (=> b!237053 m!257859))

(declare-fun m!257861 () Bool)

(assert (=> b!237053 m!257861))

(declare-fun m!257863 () Bool)

(assert (=> mapNonEmpty!10570 m!257863))

(declare-fun m!257865 () Bool)

(assert (=> b!237057 m!257865))

(declare-fun m!257867 () Bool)

(assert (=> b!237049 m!257867))

(declare-fun m!257869 () Bool)

(assert (=> start!22730 m!257869))

(declare-fun m!257871 () Bool)

(assert (=> b!237055 m!257871))

(declare-fun m!257873 () Bool)

(assert (=> b!237055 m!257873))

(check-sat (not b!237055) tp_is_empty!6237 (not b!237053) (not b_next!6375) (not b!237049) b_and!13341 (not mapNonEmpty!10570) (not b!237057) (not start!22730))
(check-sat b_and!13341 (not b_next!6375))
(get-model)

(declare-fun d!59447 () Bool)

(declare-fun e!153988 () Bool)

(assert (=> d!59447 e!153988))

(declare-fun res!116239 () Bool)

(assert (=> d!59447 (=> res!116239 e!153988)))

(declare-fun lt!119917 () Bool)

(assert (=> d!59447 (= res!116239 (not lt!119917))))

(declare-fun lt!119916 () Bool)

(assert (=> d!59447 (= lt!119917 lt!119916)))

(declare-datatypes ((Unit!7289 0))(
  ( (Unit!7290) )
))
(declare-fun lt!119918 () Unit!7289)

(declare-fun e!153987 () Unit!7289)

(assert (=> d!59447 (= lt!119918 e!153987)))

(declare-fun c!39494 () Bool)

(assert (=> d!59447 (= c!39494 lt!119916)))

(declare-fun containsKey!265 (List!3582 (_ BitVec 64)) Bool)

(assert (=> d!59447 (= lt!119916 (containsKey!265 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))

(assert (=> d!59447 (= (contains!1683 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)) key!932) lt!119917)))

(declare-fun b!237091 () Bool)

(declare-fun lt!119919 () Unit!7289)

(assert (=> b!237091 (= e!153987 lt!119919)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!214 (List!3582 (_ BitVec 64)) Unit!7289)

(assert (=> b!237091 (= lt!119919 (lemmaContainsKeyImpliesGetValueByKeyDefined!214 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))

(declare-datatypes ((Option!279 0))(
  ( (Some!278 (v!5194 V!7963)) (None!277) )
))
(declare-fun isDefined!215 (Option!279) Bool)

(declare-fun getValueByKey!273 (List!3582 (_ BitVec 64)) Option!279)

(assert (=> b!237091 (isDefined!215 (getValueByKey!273 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))

(declare-fun b!237092 () Bool)

(declare-fun Unit!7291 () Unit!7289)

(assert (=> b!237092 (= e!153987 Unit!7291)))

(declare-fun b!237093 () Bool)

(assert (=> b!237093 (= e!153988 (isDefined!215 (getValueByKey!273 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932)))))

(assert (= (and d!59447 c!39494) b!237091))

(assert (= (and d!59447 (not c!39494)) b!237092))

(assert (= (and d!59447 (not res!116239)) b!237093))

(declare-fun m!257891 () Bool)

(assert (=> d!59447 m!257891))

(declare-fun m!257893 () Bool)

(assert (=> b!237091 m!257893))

(declare-fun m!257895 () Bool)

(assert (=> b!237091 m!257895))

(assert (=> b!237091 m!257895))

(declare-fun m!257897 () Bool)

(assert (=> b!237091 m!257897))

(assert (=> b!237093 m!257895))

(assert (=> b!237093 m!257895))

(assert (=> b!237093 m!257897))

(assert (=> b!237053 d!59447))

(declare-fun b!237136 () Bool)

(declare-fun e!154020 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!237136 (= e!154020 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237137 () Bool)

(declare-fun e!154021 () Bool)

(declare-fun e!154015 () Bool)

(assert (=> b!237137 (= e!154021 e!154015)))

(declare-fun res!116264 () Bool)

(declare-fun call!22054 () Bool)

(assert (=> b!237137 (= res!116264 call!22054)))

(assert (=> b!237137 (=> (not res!116264) (not e!154015))))

(declare-fun b!237138 () Bool)

(assert (=> b!237138 (= e!154021 (not call!22054))))

(declare-fun bm!22048 () Bool)

(declare-fun lt!119968 () ListLongMap!3583)

(assert (=> bm!22048 (= call!22054 (contains!1683 lt!119968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237139 () Bool)

(declare-fun e!154027 () Bool)

(declare-fun call!22057 () Bool)

(assert (=> b!237139 (= e!154027 (not call!22057))))

(declare-fun b!237140 () Bool)

(declare-fun e!154019 () ListLongMap!3583)

(declare-fun e!154016 () ListLongMap!3583)

(assert (=> b!237140 (= e!154019 e!154016)))

(declare-fun c!39510 () Bool)

(assert (=> b!237140 (= c!39510 (and (not (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22049 () Bool)

(declare-fun call!22056 () ListLongMap!3583)

(declare-fun call!22055 () ListLongMap!3583)

(assert (=> bm!22049 (= call!22056 call!22055)))

(declare-fun bm!22050 () Bool)

(declare-fun call!22051 () ListLongMap!3583)

(declare-fun call!22053 () ListLongMap!3583)

(assert (=> bm!22050 (= call!22051 call!22053)))

(declare-fun b!237141 () Bool)

(assert (=> b!237141 (= e!154016 call!22051)))

(declare-fun b!237142 () Bool)

(declare-fun e!154022 () Unit!7289)

(declare-fun lt!119964 () Unit!7289)

(assert (=> b!237142 (= e!154022 lt!119964)))

(declare-fun lt!119969 () ListLongMap!3583)

(declare-fun getCurrentListMapNoExtraKeys!535 (array!11744 array!11742 (_ BitVec 32) (_ BitVec 32) V!7963 V!7963 (_ BitVec 32) Int) ListLongMap!3583)

(assert (=> b!237142 (= lt!119969 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))

(declare-fun lt!119985 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119985 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119976 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119976 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119981 () Unit!7289)

(declare-fun addStillContains!192 (ListLongMap!3583 (_ BitVec 64) V!7963 (_ BitVec 64)) Unit!7289)

(assert (=> b!237142 (= lt!119981 (addStillContains!192 lt!119969 lt!119985 (zeroValue!4244 thiss!1504) lt!119976))))

(declare-fun +!638 (ListLongMap!3583 tuple2!4656) ListLongMap!3583)

(assert (=> b!237142 (contains!1683 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))) lt!119976)))

(declare-fun lt!119983 () Unit!7289)

(assert (=> b!237142 (= lt!119983 lt!119981)))

(declare-fun lt!119971 () ListLongMap!3583)

(assert (=> b!237142 (= lt!119971 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))

(declare-fun lt!119984 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119984 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119975 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119975 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119982 () Unit!7289)

(declare-fun addApplyDifferent!192 (ListLongMap!3583 (_ BitVec 64) V!7963 (_ BitVec 64)) Unit!7289)

(assert (=> b!237142 (= lt!119982 (addApplyDifferent!192 lt!119971 lt!119984 (minValue!4244 thiss!1504) lt!119975))))

(declare-fun apply!216 (ListLongMap!3583 (_ BitVec 64)) V!7963)

(assert (=> b!237142 (= (apply!216 (+!638 lt!119971 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))) lt!119975) (apply!216 lt!119971 lt!119975))))

(declare-fun lt!119979 () Unit!7289)

(assert (=> b!237142 (= lt!119979 lt!119982)))

(declare-fun lt!119978 () ListLongMap!3583)

(assert (=> b!237142 (= lt!119978 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))

(declare-fun lt!119966 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119966 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119965 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119965 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119973 () Unit!7289)

(assert (=> b!237142 (= lt!119973 (addApplyDifferent!192 lt!119978 lt!119966 (zeroValue!4244 thiss!1504) lt!119965))))

(assert (=> b!237142 (= (apply!216 (+!638 lt!119978 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))) lt!119965) (apply!216 lt!119978 lt!119965))))

(declare-fun lt!119977 () Unit!7289)

(assert (=> b!237142 (= lt!119977 lt!119973)))

(declare-fun lt!119980 () ListLongMap!3583)

(assert (=> b!237142 (= lt!119980 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))

(declare-fun lt!119970 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119970 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119974 () (_ BitVec 64))

(assert (=> b!237142 (= lt!119974 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237142 (= lt!119964 (addApplyDifferent!192 lt!119980 lt!119970 (minValue!4244 thiss!1504) lt!119974))))

(assert (=> b!237142 (= (apply!216 (+!638 lt!119980 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))) lt!119974) (apply!216 lt!119980 lt!119974))))

(declare-fun b!237144 () Bool)

(declare-fun e!154017 () Bool)

(assert (=> b!237144 (= e!154017 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22051 () Bool)

(assert (=> bm!22051 (= call!22055 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))

(declare-fun b!237145 () Bool)

(declare-fun e!154018 () Bool)

(assert (=> b!237145 (= e!154018 (= (apply!216 lt!119968 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4244 thiss!1504)))))

(declare-fun b!237146 () Bool)

(declare-fun e!154025 () ListLongMap!3583)

(declare-fun call!22052 () ListLongMap!3583)

(assert (=> b!237146 (= e!154025 call!22052)))

(declare-fun b!237147 () Bool)

(assert (=> b!237147 (= e!154019 (+!638 call!22053 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))

(declare-fun b!237148 () Bool)

(assert (=> b!237148 (= e!154027 e!154018)))

(declare-fun res!116259 () Bool)

(assert (=> b!237148 (= res!116259 call!22057)))

(assert (=> b!237148 (=> (not res!116259) (not e!154018))))

(declare-fun b!237149 () Bool)

(declare-fun e!154024 () Bool)

(assert (=> b!237149 (= e!154024 e!154027)))

(declare-fun c!39508 () Bool)

(assert (=> b!237149 (= c!39508 (not (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!237150 () Bool)

(declare-fun Unit!7292 () Unit!7289)

(assert (=> b!237150 (= e!154022 Unit!7292)))

(declare-fun b!237151 () Bool)

(declare-fun e!154023 () Bool)

(declare-fun e!154026 () Bool)

(assert (=> b!237151 (= e!154023 e!154026)))

(declare-fun res!116265 () Bool)

(assert (=> b!237151 (=> (not res!116265) (not e!154026))))

(assert (=> b!237151 (= res!116265 (contains!1683 lt!119968 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237151 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun b!237152 () Bool)

(declare-fun res!116263 () Bool)

(assert (=> b!237152 (=> (not res!116263) (not e!154024))))

(assert (=> b!237152 (= res!116263 e!154023)))

(declare-fun res!116260 () Bool)

(assert (=> b!237152 (=> res!116260 e!154023)))

(assert (=> b!237152 (= res!116260 (not e!154020))))

(declare-fun res!116266 () Bool)

(assert (=> b!237152 (=> (not res!116266) (not e!154020))))

(assert (=> b!237152 (= res!116266 (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun b!237153 () Bool)

(declare-fun res!116261 () Bool)

(assert (=> b!237153 (=> (not res!116261) (not e!154024))))

(assert (=> b!237153 (= res!116261 e!154021)))

(declare-fun c!39509 () Bool)

(assert (=> b!237153 (= c!39509 (not (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!237154 () Bool)

(assert (=> b!237154 (= e!154025 call!22051)))

(declare-fun bm!22052 () Bool)

(assert (=> bm!22052 (= call!22052 call!22056)))

(declare-fun b!237155 () Bool)

(assert (=> b!237155 (= e!154015 (= (apply!216 lt!119968 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4244 thiss!1504)))))

(declare-fun bm!22053 () Bool)

(assert (=> bm!22053 (= call!22057 (contains!1683 lt!119968 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!39507 () Bool)

(declare-fun bm!22054 () Bool)

(assert (=> bm!22054 (= call!22053 (+!638 (ite c!39507 call!22055 (ite c!39510 call!22056 call!22052)) (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))

(declare-fun b!237156 () Bool)

(declare-fun c!39512 () Bool)

(assert (=> b!237156 (= c!39512 (and (not (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!237156 (= e!154016 e!154025)))

(declare-fun d!59449 () Bool)

(assert (=> d!59449 e!154024))

(declare-fun res!116262 () Bool)

(assert (=> d!59449 (=> (not res!116262) (not e!154024))))

(assert (=> d!59449 (= res!116262 (or (bvsge #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))))

(declare-fun lt!119972 () ListLongMap!3583)

(assert (=> d!59449 (= lt!119968 lt!119972)))

(declare-fun lt!119967 () Unit!7289)

(assert (=> d!59449 (= lt!119967 e!154022)))

(declare-fun c!39511 () Bool)

(assert (=> d!59449 (= c!39511 e!154017)))

(declare-fun res!116258 () Bool)

(assert (=> d!59449 (=> (not res!116258) (not e!154017))))

(assert (=> d!59449 (= res!116258 (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> d!59449 (= lt!119972 e!154019)))

(assert (=> d!59449 (= c!39507 (and (not (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4140 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59449 (validMask!0 (mask!10408 thiss!1504))))

(assert (=> d!59449 (= (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)) lt!119968)))

(declare-fun b!237143 () Bool)

(declare-fun get!2872 (ValueCell!2775 V!7963) V!7963)

(declare-fun dynLambda!554 (Int (_ BitVec 64)) V!7963)

(assert (=> b!237143 (= e!154026 (= (apply!216 lt!119968 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)) (get!2872 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!237143 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5916 (_values!4386 thiss!1504))))))

(assert (=> b!237143 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (= (and d!59449 c!39507) b!237147))

(assert (= (and d!59449 (not c!39507)) b!237140))

(assert (= (and b!237140 c!39510) b!237141))

(assert (= (and b!237140 (not c!39510)) b!237156))

(assert (= (and b!237156 c!39512) b!237154))

(assert (= (and b!237156 (not c!39512)) b!237146))

(assert (= (or b!237154 b!237146) bm!22052))

(assert (= (or b!237141 bm!22052) bm!22049))

(assert (= (or b!237141 b!237154) bm!22050))

(assert (= (or b!237147 bm!22049) bm!22051))

(assert (= (or b!237147 bm!22050) bm!22054))

(assert (= (and d!59449 res!116258) b!237144))

(assert (= (and d!59449 c!39511) b!237142))

(assert (= (and d!59449 (not c!39511)) b!237150))

(assert (= (and d!59449 res!116262) b!237152))

(assert (= (and b!237152 res!116266) b!237136))

(assert (= (and b!237152 (not res!116260)) b!237151))

(assert (= (and b!237151 res!116265) b!237143))

(assert (= (and b!237152 res!116263) b!237153))

(assert (= (and b!237153 c!39509) b!237137))

(assert (= (and b!237153 (not c!39509)) b!237138))

(assert (= (and b!237137 res!116264) b!237155))

(assert (= (or b!237137 b!237138) bm!22048))

(assert (= (and b!237153 res!116261) b!237149))

(assert (= (and b!237149 c!39508) b!237148))

(assert (= (and b!237149 (not c!39508)) b!237139))

(assert (= (and b!237148 res!116259) b!237145))

(assert (= (or b!237148 b!237139) bm!22053))

(declare-fun b_lambda!7973 () Bool)

(assert (=> (not b_lambda!7973) (not b!237143)))

(declare-fun t!8578 () Bool)

(declare-fun tb!2953 () Bool)

(assert (=> (and b!237055 (= (defaultEntry!4403 thiss!1504) (defaultEntry!4403 thiss!1504)) t!8578) tb!2953))

(declare-fun result!5165 () Bool)

(assert (=> tb!2953 (= result!5165 tp_is_empty!6237)))

(assert (=> b!237143 t!8578))

(declare-fun b_and!13345 () Bool)

(assert (= b_and!13341 (and (=> t!8578 result!5165) b_and!13345)))

(declare-fun m!257899 () Bool)

(assert (=> b!237155 m!257899))

(declare-fun m!257901 () Bool)

(assert (=> b!237144 m!257901))

(assert (=> b!237144 m!257901))

(declare-fun m!257903 () Bool)

(assert (=> b!237144 m!257903))

(assert (=> b!237136 m!257901))

(assert (=> b!237136 m!257901))

(assert (=> b!237136 m!257903))

(declare-fun m!257905 () Bool)

(assert (=> bm!22051 m!257905))

(declare-fun m!257907 () Bool)

(assert (=> bm!22054 m!257907))

(assert (=> d!59449 m!257867))

(declare-fun m!257909 () Bool)

(assert (=> b!237147 m!257909))

(assert (=> b!237143 m!257901))

(declare-fun m!257911 () Bool)

(assert (=> b!237143 m!257911))

(assert (=> b!237143 m!257911))

(declare-fun m!257913 () Bool)

(assert (=> b!237143 m!257913))

(declare-fun m!257915 () Bool)

(assert (=> b!237143 m!257915))

(assert (=> b!237143 m!257901))

(declare-fun m!257917 () Bool)

(assert (=> b!237143 m!257917))

(assert (=> b!237143 m!257913))

(declare-fun m!257919 () Bool)

(assert (=> bm!22053 m!257919))

(declare-fun m!257921 () Bool)

(assert (=> bm!22048 m!257921))

(declare-fun m!257923 () Bool)

(assert (=> b!237142 m!257923))

(declare-fun m!257925 () Bool)

(assert (=> b!237142 m!257925))

(declare-fun m!257927 () Bool)

(assert (=> b!237142 m!257927))

(declare-fun m!257929 () Bool)

(assert (=> b!237142 m!257929))

(declare-fun m!257931 () Bool)

(assert (=> b!237142 m!257931))

(assert (=> b!237142 m!257901))

(declare-fun m!257933 () Bool)

(assert (=> b!237142 m!257933))

(declare-fun m!257935 () Bool)

(assert (=> b!237142 m!257935))

(assert (=> b!237142 m!257929))

(declare-fun m!257937 () Bool)

(assert (=> b!237142 m!257937))

(declare-fun m!257939 () Bool)

(assert (=> b!237142 m!257939))

(assert (=> b!237142 m!257937))

(declare-fun m!257941 () Bool)

(assert (=> b!237142 m!257941))

(assert (=> b!237142 m!257935))

(declare-fun m!257943 () Bool)

(assert (=> b!237142 m!257943))

(assert (=> b!237142 m!257925))

(declare-fun m!257945 () Bool)

(assert (=> b!237142 m!257945))

(declare-fun m!257947 () Bool)

(assert (=> b!237142 m!257947))

(assert (=> b!237142 m!257905))

(declare-fun m!257949 () Bool)

(assert (=> b!237142 m!257949))

(declare-fun m!257951 () Bool)

(assert (=> b!237142 m!257951))

(declare-fun m!257953 () Bool)

(assert (=> b!237145 m!257953))

(assert (=> b!237151 m!257901))

(assert (=> b!237151 m!257901))

(declare-fun m!257955 () Bool)

(assert (=> b!237151 m!257955))

(assert (=> b!237053 d!59449))

(declare-fun d!59451 () Bool)

(assert (=> d!59451 (= (validMask!0 (mask!10408 thiss!1504)) (and (or (= (mask!10408 thiss!1504) #b00000000000000000000000000000111) (= (mask!10408 thiss!1504) #b00000000000000000000000000001111) (= (mask!10408 thiss!1504) #b00000000000000000000000000011111) (= (mask!10408 thiss!1504) #b00000000000000000000000000111111) (= (mask!10408 thiss!1504) #b00000000000000000000000001111111) (= (mask!10408 thiss!1504) #b00000000000000000000000011111111) (= (mask!10408 thiss!1504) #b00000000000000000000000111111111) (= (mask!10408 thiss!1504) #b00000000000000000000001111111111) (= (mask!10408 thiss!1504) #b00000000000000000000011111111111) (= (mask!10408 thiss!1504) #b00000000000000000000111111111111) (= (mask!10408 thiss!1504) #b00000000000000000001111111111111) (= (mask!10408 thiss!1504) #b00000000000000000011111111111111) (= (mask!10408 thiss!1504) #b00000000000000000111111111111111) (= (mask!10408 thiss!1504) #b00000000000000001111111111111111) (= (mask!10408 thiss!1504) #b00000000000000011111111111111111) (= (mask!10408 thiss!1504) #b00000000000000111111111111111111) (= (mask!10408 thiss!1504) #b00000000000001111111111111111111) (= (mask!10408 thiss!1504) #b00000000000011111111111111111111) (= (mask!10408 thiss!1504) #b00000000000111111111111111111111) (= (mask!10408 thiss!1504) #b00000000001111111111111111111111) (= (mask!10408 thiss!1504) #b00000000011111111111111111111111) (= (mask!10408 thiss!1504) #b00000000111111111111111111111111) (= (mask!10408 thiss!1504) #b00000001111111111111111111111111) (= (mask!10408 thiss!1504) #b00000011111111111111111111111111) (= (mask!10408 thiss!1504) #b00000111111111111111111111111111) (= (mask!10408 thiss!1504) #b00001111111111111111111111111111) (= (mask!10408 thiss!1504) #b00011111111111111111111111111111) (= (mask!10408 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10408 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!237049 d!59451))

(declare-fun d!59453 () Bool)

(assert (=> d!59453 (= (array_inv!3671 (_keys!6491 thiss!1504)) (bvsge (size!5917 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237055 d!59453))

(declare-fun d!59455 () Bool)

(assert (=> d!59455 (= (array_inv!3672 (_values!4386 thiss!1504)) (bvsge (size!5916 (_values!4386 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237055 d!59455))

(declare-fun d!59457 () Bool)

(declare-fun res!116273 () Bool)

(declare-fun e!154030 () Bool)

(assert (=> d!59457 (=> (not res!116273) (not e!154030))))

(declare-fun simpleValid!238 (LongMapFixedSize!3450) Bool)

(assert (=> d!59457 (= res!116273 (simpleValid!238 thiss!1504))))

(assert (=> d!59457 (= (valid!1353 thiss!1504) e!154030)))

(declare-fun b!237165 () Bool)

(declare-fun res!116274 () Bool)

(assert (=> b!237165 (=> (not res!116274) (not e!154030))))

(declare-fun arrayCountValidKeys!0 (array!11744 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!237165 (= res!116274 (= (arrayCountValidKeys!0 (_keys!6491 thiss!1504) #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))) (_size!1774 thiss!1504)))))

(declare-fun b!237166 () Bool)

(declare-fun res!116275 () Bool)

(assert (=> b!237166 (=> (not res!116275) (not e!154030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11744 (_ BitVec 32)) Bool)

(assert (=> b!237166 (= res!116275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(declare-fun b!237167 () Bool)

(declare-datatypes ((List!3584 0))(
  ( (Nil!3581) (Cons!3580 (h!4234 (_ BitVec 64)) (t!8579 List!3584)) )
))
(declare-fun arrayNoDuplicates!0 (array!11744 (_ BitVec 32) List!3584) Bool)

(assert (=> b!237167 (= e!154030 (arrayNoDuplicates!0 (_keys!6491 thiss!1504) #b00000000000000000000000000000000 Nil!3581))))

(assert (= (and d!59457 res!116273) b!237165))

(assert (= (and b!237165 res!116274) b!237166))

(assert (= (and b!237166 res!116275) b!237167))

(declare-fun m!257957 () Bool)

(assert (=> d!59457 m!257957))

(declare-fun m!257959 () Bool)

(assert (=> b!237165 m!257959))

(declare-fun m!257961 () Bool)

(assert (=> b!237166 m!257961))

(declare-fun m!257963 () Bool)

(assert (=> b!237167 m!257963))

(assert (=> start!22730 d!59457))

(declare-fun b!237180 () Bool)

(declare-fun c!39519 () Bool)

(declare-fun lt!119993 () (_ BitVec 64))

(assert (=> b!237180 (= c!39519 (= lt!119993 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!154039 () SeekEntryResult!1017)

(declare-fun e!154038 () SeekEntryResult!1017)

(assert (=> b!237180 (= e!154039 e!154038)))

(declare-fun d!59459 () Bool)

(declare-fun lt!119992 () SeekEntryResult!1017)

(assert (=> d!59459 (and (or ((_ is Undefined!1017) lt!119992) (not ((_ is Found!1017) lt!119992)) (and (bvsge (index!6239 lt!119992) #b00000000000000000000000000000000) (bvslt (index!6239 lt!119992) (size!5917 (_keys!6491 thiss!1504))))) (or ((_ is Undefined!1017) lt!119992) ((_ is Found!1017) lt!119992) (not ((_ is MissingZero!1017) lt!119992)) (and (bvsge (index!6238 lt!119992) #b00000000000000000000000000000000) (bvslt (index!6238 lt!119992) (size!5917 (_keys!6491 thiss!1504))))) (or ((_ is Undefined!1017) lt!119992) ((_ is Found!1017) lt!119992) ((_ is MissingZero!1017) lt!119992) (not ((_ is MissingVacant!1017) lt!119992)) (and (bvsge (index!6241 lt!119992) #b00000000000000000000000000000000) (bvslt (index!6241 lt!119992) (size!5917 (_keys!6491 thiss!1504))))) (or ((_ is Undefined!1017) lt!119992) (ite ((_ is Found!1017) lt!119992) (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6239 lt!119992)) key!932) (ite ((_ is MissingZero!1017) lt!119992) (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6238 lt!119992)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1017) lt!119992) (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6241 lt!119992)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!154037 () SeekEntryResult!1017)

(assert (=> d!59459 (= lt!119992 e!154037)))

(declare-fun c!39521 () Bool)

(declare-fun lt!119994 () SeekEntryResult!1017)

(assert (=> d!59459 (= c!39521 (and ((_ is Intermediate!1017) lt!119994) (undefined!1829 lt!119994)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11744 (_ BitVec 32)) SeekEntryResult!1017)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59459 (= lt!119994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10408 thiss!1504)) key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(assert (=> d!59459 (validMask!0 (mask!10408 thiss!1504))))

(assert (=> d!59459 (= (seekEntryOrOpen!0 key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)) lt!119992)))

(declare-fun b!237181 () Bool)

(assert (=> b!237181 (= e!154038 (MissingZero!1017 (index!6240 lt!119994)))))

(declare-fun b!237182 () Bool)

(assert (=> b!237182 (= e!154039 (Found!1017 (index!6240 lt!119994)))))

(declare-fun b!237183 () Bool)

(assert (=> b!237183 (= e!154037 Undefined!1017)))

(declare-fun b!237184 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11744 (_ BitVec 32)) SeekEntryResult!1017)

(assert (=> b!237184 (= e!154038 (seekKeyOrZeroReturnVacant!0 (x!23943 lt!119994) (index!6240 lt!119994) (index!6240 lt!119994) key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(declare-fun b!237185 () Bool)

(assert (=> b!237185 (= e!154037 e!154039)))

(assert (=> b!237185 (= lt!119993 (select (arr!5578 (_keys!6491 thiss!1504)) (index!6240 lt!119994)))))

(declare-fun c!39520 () Bool)

(assert (=> b!237185 (= c!39520 (= lt!119993 key!932))))

(assert (= (and d!59459 c!39521) b!237183))

(assert (= (and d!59459 (not c!39521)) b!237185))

(assert (= (and b!237185 c!39520) b!237182))

(assert (= (and b!237185 (not c!39520)) b!237180))

(assert (= (and b!237180 c!39519) b!237181))

(assert (= (and b!237180 (not c!39519)) b!237184))

(declare-fun m!257965 () Bool)

(assert (=> d!59459 m!257965))

(declare-fun m!257967 () Bool)

(assert (=> d!59459 m!257967))

(declare-fun m!257969 () Bool)

(assert (=> d!59459 m!257969))

(assert (=> d!59459 m!257969))

(declare-fun m!257971 () Bool)

(assert (=> d!59459 m!257971))

(assert (=> d!59459 m!257867))

(declare-fun m!257973 () Bool)

(assert (=> d!59459 m!257973))

(declare-fun m!257975 () Bool)

(assert (=> b!237184 m!257975))

(declare-fun m!257977 () Bool)

(assert (=> b!237185 m!257977))

(assert (=> b!237057 d!59459))

(declare-fun b!237192 () Bool)

(declare-fun e!154045 () Bool)

(assert (=> b!237192 (= e!154045 tp_is_empty!6237)))

(declare-fun condMapEmpty!10576 () Bool)

(declare-fun mapDefault!10576 () ValueCell!2775)

(assert (=> mapNonEmpty!10570 (= condMapEmpty!10576 (= mapRest!10570 ((as const (Array (_ BitVec 32) ValueCell!2775)) mapDefault!10576)))))

(declare-fun e!154044 () Bool)

(declare-fun mapRes!10576 () Bool)

(assert (=> mapNonEmpty!10570 (= tp!22312 (and e!154044 mapRes!10576))))

(declare-fun mapIsEmpty!10576 () Bool)

(assert (=> mapIsEmpty!10576 mapRes!10576))

(declare-fun mapNonEmpty!10576 () Bool)

(declare-fun tp!22321 () Bool)

(assert (=> mapNonEmpty!10576 (= mapRes!10576 (and tp!22321 e!154045))))

(declare-fun mapValue!10576 () ValueCell!2775)

(declare-fun mapKey!10576 () (_ BitVec 32))

(declare-fun mapRest!10576 () (Array (_ BitVec 32) ValueCell!2775))

(assert (=> mapNonEmpty!10576 (= mapRest!10570 (store mapRest!10576 mapKey!10576 mapValue!10576))))

(declare-fun b!237193 () Bool)

(assert (=> b!237193 (= e!154044 tp_is_empty!6237)))

(assert (= (and mapNonEmpty!10570 condMapEmpty!10576) mapIsEmpty!10576))

(assert (= (and mapNonEmpty!10570 (not condMapEmpty!10576)) mapNonEmpty!10576))

(assert (= (and mapNonEmpty!10576 ((_ is ValueCellFull!2775) mapValue!10576)) b!237192))

(assert (= (and mapNonEmpty!10570 ((_ is ValueCellFull!2775) mapDefault!10576)) b!237193))

(declare-fun m!257979 () Bool)

(assert (=> mapNonEmpty!10576 m!257979))

(declare-fun b_lambda!7975 () Bool)

(assert (= b_lambda!7973 (or (and b!237055 b_free!6375) b_lambda!7975)))

(check-sat (not bm!22048) (not b_next!6375) (not b!237151) (not b!237147) (not b!237167) b_and!13345 (not bm!22054) (not bm!22053) (not b!237165) (not b!237166) (not d!59459) (not b_lambda!7975) (not b!237143) (not b!237144) (not bm!22051) tp_is_empty!6237 (not d!59457) (not b!237155) (not d!59447) (not b!237184) (not b!237091) (not b!237136) (not d!59449) (not mapNonEmpty!10576) (not b!237142) (not b!237145) (not b!237093))
(check-sat b_and!13345 (not b_next!6375))
(get-model)

(declare-fun d!59461 () Bool)

(assert (=> d!59461 (isDefined!215 (getValueByKey!273 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))

(declare-fun lt!119997 () Unit!7289)

(declare-fun choose!1118 (List!3582 (_ BitVec 64)) Unit!7289)

(assert (=> d!59461 (= lt!119997 (choose!1118 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))

(declare-fun e!154048 () Bool)

(assert (=> d!59461 e!154048))

(declare-fun res!116278 () Bool)

(assert (=> d!59461 (=> (not res!116278) (not e!154048))))

(declare-fun isStrictlySorted!360 (List!3582) Bool)

(assert (=> d!59461 (= res!116278 (isStrictlySorted!360 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))))

(assert (=> d!59461 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!214 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932) lt!119997)))

(declare-fun b!237196 () Bool)

(assert (=> b!237196 (= e!154048 (containsKey!265 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))

(assert (= (and d!59461 res!116278) b!237196))

(assert (=> d!59461 m!257895))

(assert (=> d!59461 m!257895))

(assert (=> d!59461 m!257897))

(declare-fun m!257981 () Bool)

(assert (=> d!59461 m!257981))

(declare-fun m!257983 () Bool)

(assert (=> d!59461 m!257983))

(assert (=> b!237196 m!257891))

(assert (=> b!237091 d!59461))

(declare-fun d!59463 () Bool)

(declare-fun isEmpty!521 (Option!279) Bool)

(assert (=> d!59463 (= (isDefined!215 (getValueByKey!273 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932)) (not (isEmpty!521 (getValueByKey!273 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932))))))

(declare-fun bs!8759 () Bool)

(assert (= bs!8759 d!59463))

(assert (=> bs!8759 m!257895))

(declare-fun m!257985 () Bool)

(assert (=> bs!8759 m!257985))

(assert (=> b!237091 d!59463))

(declare-fun b!237206 () Bool)

(declare-fun e!154053 () Option!279)

(declare-fun e!154054 () Option!279)

(assert (=> b!237206 (= e!154053 e!154054)))

(declare-fun c!39527 () Bool)

(assert (=> b!237206 (= c!39527 (and ((_ is Cons!3578) (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))) (not (= (_1!2338 (h!4232 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))))) key!932))))))

(declare-fun b!237208 () Bool)

(assert (=> b!237208 (= e!154054 None!277)))

(declare-fun d!59465 () Bool)

(declare-fun c!39526 () Bool)

(assert (=> d!59465 (= c!39526 (and ((_ is Cons!3578) (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))) (= (_1!2338 (h!4232 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))))) key!932)))))

(assert (=> d!59465 (= (getValueByKey!273 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932) e!154053)))

(declare-fun b!237207 () Bool)

(assert (=> b!237207 (= e!154054 (getValueByKey!273 (t!8575 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))) key!932))))

(declare-fun b!237205 () Bool)

(assert (=> b!237205 (= e!154053 (Some!278 (_2!2338 (h!4232 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))))))))

(assert (= (and d!59465 c!39526) b!237205))

(assert (= (and d!59465 (not c!39526)) b!237206))

(assert (= (and b!237206 c!39527) b!237207))

(assert (= (and b!237206 (not c!39527)) b!237208))

(declare-fun m!257987 () Bool)

(assert (=> b!237207 m!257987))

(assert (=> b!237091 d!59465))

(assert (=> b!237093 d!59463))

(assert (=> b!237093 d!59465))

(assert (=> d!59449 d!59451))

(declare-fun d!59467 () Bool)

(declare-fun e!154056 () Bool)

(assert (=> d!59467 e!154056))

(declare-fun res!116279 () Bool)

(assert (=> d!59467 (=> res!116279 e!154056)))

(declare-fun lt!119999 () Bool)

(assert (=> d!59467 (= res!116279 (not lt!119999))))

(declare-fun lt!119998 () Bool)

(assert (=> d!59467 (= lt!119999 lt!119998)))

(declare-fun lt!120000 () Unit!7289)

(declare-fun e!154055 () Unit!7289)

(assert (=> d!59467 (= lt!120000 e!154055)))

(declare-fun c!39528 () Bool)

(assert (=> d!59467 (= c!39528 lt!119998)))

(assert (=> d!59467 (= lt!119998 (containsKey!265 (toList!1807 lt!119968) (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59467 (= (contains!1683 lt!119968 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)) lt!119999)))

(declare-fun b!237209 () Bool)

(declare-fun lt!120001 () Unit!7289)

(assert (=> b!237209 (= e!154055 lt!120001)))

(assert (=> b!237209 (= lt!120001 (lemmaContainsKeyImpliesGetValueByKeyDefined!214 (toList!1807 lt!119968) (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237209 (isDefined!215 (getValueByKey!273 (toList!1807 lt!119968) (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237210 () Bool)

(declare-fun Unit!7293 () Unit!7289)

(assert (=> b!237210 (= e!154055 Unit!7293)))

(declare-fun b!237211 () Bool)

(assert (=> b!237211 (= e!154056 (isDefined!215 (getValueByKey!273 (toList!1807 lt!119968) (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59467 c!39528) b!237209))

(assert (= (and d!59467 (not c!39528)) b!237210))

(assert (= (and d!59467 (not res!116279)) b!237211))

(assert (=> d!59467 m!257901))

(declare-fun m!257989 () Bool)

(assert (=> d!59467 m!257989))

(assert (=> b!237209 m!257901))

(declare-fun m!257991 () Bool)

(assert (=> b!237209 m!257991))

(assert (=> b!237209 m!257901))

(declare-fun m!257993 () Bool)

(assert (=> b!237209 m!257993))

(assert (=> b!237209 m!257993))

(declare-fun m!257995 () Bool)

(assert (=> b!237209 m!257995))

(assert (=> b!237211 m!257901))

(assert (=> b!237211 m!257993))

(assert (=> b!237211 m!257993))

(assert (=> b!237211 m!257995))

(assert (=> b!237151 d!59467))

(declare-fun d!59469 () Bool)

(declare-fun e!154058 () Bool)

(assert (=> d!59469 e!154058))

(declare-fun res!116280 () Bool)

(assert (=> d!59469 (=> res!116280 e!154058)))

(declare-fun lt!120003 () Bool)

(assert (=> d!59469 (= res!116280 (not lt!120003))))

(declare-fun lt!120002 () Bool)

(assert (=> d!59469 (= lt!120003 lt!120002)))

(declare-fun lt!120004 () Unit!7289)

(declare-fun e!154057 () Unit!7289)

(assert (=> d!59469 (= lt!120004 e!154057)))

(declare-fun c!39529 () Bool)

(assert (=> d!59469 (= c!39529 lt!120002)))

(assert (=> d!59469 (= lt!120002 (containsKey!265 (toList!1807 lt!119968) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59469 (= (contains!1683 lt!119968 #b1000000000000000000000000000000000000000000000000000000000000000) lt!120003)))

(declare-fun b!237212 () Bool)

(declare-fun lt!120005 () Unit!7289)

(assert (=> b!237212 (= e!154057 lt!120005)))

(assert (=> b!237212 (= lt!120005 (lemmaContainsKeyImpliesGetValueByKeyDefined!214 (toList!1807 lt!119968) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237212 (isDefined!215 (getValueByKey!273 (toList!1807 lt!119968) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237213 () Bool)

(declare-fun Unit!7294 () Unit!7289)

(assert (=> b!237213 (= e!154057 Unit!7294)))

(declare-fun b!237214 () Bool)

(assert (=> b!237214 (= e!154058 (isDefined!215 (getValueByKey!273 (toList!1807 lt!119968) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59469 c!39529) b!237212))

(assert (= (and d!59469 (not c!39529)) b!237213))

(assert (= (and d!59469 (not res!116280)) b!237214))

(declare-fun m!257997 () Bool)

(assert (=> d!59469 m!257997))

(declare-fun m!257999 () Bool)

(assert (=> b!237212 m!257999))

(declare-fun m!258001 () Bool)

(assert (=> b!237212 m!258001))

(assert (=> b!237212 m!258001))

(declare-fun m!258003 () Bool)

(assert (=> b!237212 m!258003))

(assert (=> b!237214 m!258001))

(assert (=> b!237214 m!258001))

(assert (=> b!237214 m!258003))

(assert (=> bm!22053 d!59469))

(declare-fun b!237225 () Bool)

(declare-fun e!154070 () Bool)

(declare-fun call!22060 () Bool)

(assert (=> b!237225 (= e!154070 call!22060)))

(declare-fun b!237226 () Bool)

(declare-fun e!154069 () Bool)

(assert (=> b!237226 (= e!154069 e!154070)))

(declare-fun c!39532 () Bool)

(assert (=> b!237226 (= c!39532 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22057 () Bool)

(assert (=> bm!22057 (= call!22060 (arrayNoDuplicates!0 (_keys!6491 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39532 (Cons!3580 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000) Nil!3581) Nil!3581)))))

(declare-fun b!237228 () Bool)

(declare-fun e!154067 () Bool)

(assert (=> b!237228 (= e!154067 e!154069)))

(declare-fun res!116288 () Bool)

(assert (=> b!237228 (=> (not res!116288) (not e!154069))))

(declare-fun e!154068 () Bool)

(assert (=> b!237228 (= res!116288 (not e!154068))))

(declare-fun res!116289 () Bool)

(assert (=> b!237228 (=> (not res!116289) (not e!154068))))

(assert (=> b!237228 (= res!116289 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237229 () Bool)

(declare-fun contains!1685 (List!3584 (_ BitVec 64)) Bool)

(assert (=> b!237229 (= e!154068 (contains!1685 Nil!3581 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59471 () Bool)

(declare-fun res!116287 () Bool)

(assert (=> d!59471 (=> res!116287 e!154067)))

(assert (=> d!59471 (= res!116287 (bvsge #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> d!59471 (= (arrayNoDuplicates!0 (_keys!6491 thiss!1504) #b00000000000000000000000000000000 Nil!3581) e!154067)))

(declare-fun b!237227 () Bool)

(assert (=> b!237227 (= e!154070 call!22060)))

(assert (= (and d!59471 (not res!116287)) b!237228))

(assert (= (and b!237228 res!116289) b!237229))

(assert (= (and b!237228 res!116288) b!237226))

(assert (= (and b!237226 c!39532) b!237225))

(assert (= (and b!237226 (not c!39532)) b!237227))

(assert (= (or b!237225 b!237227) bm!22057))

(assert (=> b!237226 m!257901))

(assert (=> b!237226 m!257901))

(assert (=> b!237226 m!257903))

(assert (=> bm!22057 m!257901))

(declare-fun m!258005 () Bool)

(assert (=> bm!22057 m!258005))

(assert (=> b!237228 m!257901))

(assert (=> b!237228 m!257901))

(assert (=> b!237228 m!257903))

(assert (=> b!237229 m!257901))

(assert (=> b!237229 m!257901))

(declare-fun m!258007 () Bool)

(assert (=> b!237229 m!258007))

(assert (=> b!237167 d!59471))

(declare-fun d!59473 () Bool)

(declare-fun e!154073 () Bool)

(assert (=> d!59473 e!154073))

(declare-fun res!116295 () Bool)

(assert (=> d!59473 (=> (not res!116295) (not e!154073))))

(declare-fun lt!120017 () ListLongMap!3583)

(assert (=> d!59473 (= res!116295 (contains!1683 lt!120017 (_1!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))

(declare-fun lt!120014 () List!3582)

(assert (=> d!59473 (= lt!120017 (ListLongMap!3584 lt!120014))))

(declare-fun lt!120015 () Unit!7289)

(declare-fun lt!120016 () Unit!7289)

(assert (=> d!59473 (= lt!120015 lt!120016)))

(assert (=> d!59473 (= (getValueByKey!273 lt!120014 (_1!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!154 (List!3582 (_ BitVec 64) V!7963) Unit!7289)

(assert (=> d!59473 (= lt!120016 (lemmaContainsTupThenGetReturnValue!154 lt!120014 (_1!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))

(declare-fun insertStrictlySorted!156 (List!3582 (_ BitVec 64) V!7963) List!3582)

(assert (=> d!59473 (= lt!120014 (insertStrictlySorted!156 (toList!1807 call!22053) (_1!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))

(assert (=> d!59473 (= (+!638 call!22053 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))) lt!120017)))

(declare-fun b!237234 () Bool)

(declare-fun res!116294 () Bool)

(assert (=> b!237234 (=> (not res!116294) (not e!154073))))

(assert (=> b!237234 (= res!116294 (= (getValueByKey!273 (toList!1807 lt!120017) (_1!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))))

(declare-fun b!237235 () Bool)

(declare-fun contains!1686 (List!3582 tuple2!4656) Bool)

(assert (=> b!237235 (= e!154073 (contains!1686 (toList!1807 lt!120017) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))

(assert (= (and d!59473 res!116295) b!237234))

(assert (= (and b!237234 res!116294) b!237235))

(declare-fun m!258009 () Bool)

(assert (=> d!59473 m!258009))

(declare-fun m!258011 () Bool)

(assert (=> d!59473 m!258011))

(declare-fun m!258013 () Bool)

(assert (=> d!59473 m!258013))

(declare-fun m!258015 () Bool)

(assert (=> d!59473 m!258015))

(declare-fun m!258017 () Bool)

(assert (=> b!237234 m!258017))

(declare-fun m!258019 () Bool)

(assert (=> b!237235 m!258019))

(assert (=> b!237147 d!59473))

(declare-fun d!59475 () Bool)

(declare-fun e!154074 () Bool)

(assert (=> d!59475 e!154074))

(declare-fun res!116297 () Bool)

(assert (=> d!59475 (=> (not res!116297) (not e!154074))))

(declare-fun lt!120021 () ListLongMap!3583)

(assert (=> d!59475 (= res!116297 (contains!1683 lt!120021 (_1!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))))

(declare-fun lt!120018 () List!3582)

(assert (=> d!59475 (= lt!120021 (ListLongMap!3584 lt!120018))))

(declare-fun lt!120019 () Unit!7289)

(declare-fun lt!120020 () Unit!7289)

(assert (=> d!59475 (= lt!120019 lt!120020)))

(assert (=> d!59475 (= (getValueByKey!273 lt!120018 (_1!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))) (Some!278 (_2!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))))

(assert (=> d!59475 (= lt!120020 (lemmaContainsTupThenGetReturnValue!154 lt!120018 (_1!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))) (_2!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))))

(assert (=> d!59475 (= lt!120018 (insertStrictlySorted!156 (toList!1807 (ite c!39507 call!22055 (ite c!39510 call!22056 call!22052))) (_1!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))) (_2!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))))))

(assert (=> d!59475 (= (+!638 (ite c!39507 call!22055 (ite c!39510 call!22056 call!22052)) (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))) lt!120021)))

(declare-fun b!237236 () Bool)

(declare-fun res!116296 () Bool)

(assert (=> b!237236 (=> (not res!116296) (not e!154074))))

(assert (=> b!237236 (= res!116296 (= (getValueByKey!273 (toList!1807 lt!120021) (_1!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504))))) (Some!278 (_2!2338 (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))))

(declare-fun b!237237 () Bool)

(assert (=> b!237237 (= e!154074 (contains!1686 (toList!1807 lt!120021) (ite (or c!39507 c!39510) (tuple2!4657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4244 thiss!1504)) (tuple2!4657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4244 thiss!1504)))))))

(assert (= (and d!59475 res!116297) b!237236))

(assert (= (and b!237236 res!116296) b!237237))

(declare-fun m!258021 () Bool)

(assert (=> d!59475 m!258021))

(declare-fun m!258023 () Bool)

(assert (=> d!59475 m!258023))

(declare-fun m!258025 () Bool)

(assert (=> d!59475 m!258025))

(declare-fun m!258027 () Bool)

(assert (=> d!59475 m!258027))

(declare-fun m!258029 () Bool)

(assert (=> b!237236 m!258029))

(declare-fun m!258031 () Bool)

(assert (=> b!237237 m!258031))

(assert (=> bm!22054 d!59475))

(declare-fun b!237249 () Bool)

(declare-fun e!154077 () Bool)

(assert (=> b!237249 (= e!154077 (and (bvsge (extraKeys!4140 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4140 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1774 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!59477 () Bool)

(declare-fun res!116308 () Bool)

(assert (=> d!59477 (=> (not res!116308) (not e!154077))))

(assert (=> d!59477 (= res!116308 (validMask!0 (mask!10408 thiss!1504)))))

(assert (=> d!59477 (= (simpleValid!238 thiss!1504) e!154077)))

(declare-fun b!237246 () Bool)

(declare-fun res!116306 () Bool)

(assert (=> b!237246 (=> (not res!116306) (not e!154077))))

(assert (=> b!237246 (= res!116306 (and (= (size!5916 (_values!4386 thiss!1504)) (bvadd (mask!10408 thiss!1504) #b00000000000000000000000000000001)) (= (size!5917 (_keys!6491 thiss!1504)) (size!5916 (_values!4386 thiss!1504))) (bvsge (_size!1774 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1774 thiss!1504) (bvadd (mask!10408 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!237248 () Bool)

(declare-fun res!116307 () Bool)

(assert (=> b!237248 (=> (not res!116307) (not e!154077))))

(declare-fun size!5920 (LongMapFixedSize!3450) (_ BitVec 32))

(assert (=> b!237248 (= res!116307 (= (size!5920 thiss!1504) (bvadd (_size!1774 thiss!1504) (bvsdiv (bvadd (extraKeys!4140 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!237247 () Bool)

(declare-fun res!116309 () Bool)

(assert (=> b!237247 (=> (not res!116309) (not e!154077))))

(assert (=> b!237247 (= res!116309 (bvsge (size!5920 thiss!1504) (_size!1774 thiss!1504)))))

(assert (= (and d!59477 res!116308) b!237246))

(assert (= (and b!237246 res!116306) b!237247))

(assert (= (and b!237247 res!116309) b!237248))

(assert (= (and b!237248 res!116307) b!237249))

(assert (=> d!59477 m!257867))

(declare-fun m!258033 () Bool)

(assert (=> b!237248 m!258033))

(assert (=> b!237247 m!258033))

(assert (=> d!59457 d!59477))

(declare-fun b!237262 () Bool)

(declare-fun e!154086 () SeekEntryResult!1017)

(assert (=> b!237262 (= e!154086 (MissingVacant!1017 (index!6240 lt!119994)))))

(declare-fun d!59479 () Bool)

(declare-fun lt!120026 () SeekEntryResult!1017)

(assert (=> d!59479 (and (or ((_ is Undefined!1017) lt!120026) (not ((_ is Found!1017) lt!120026)) (and (bvsge (index!6239 lt!120026) #b00000000000000000000000000000000) (bvslt (index!6239 lt!120026) (size!5917 (_keys!6491 thiss!1504))))) (or ((_ is Undefined!1017) lt!120026) ((_ is Found!1017) lt!120026) (not ((_ is MissingVacant!1017) lt!120026)) (not (= (index!6241 lt!120026) (index!6240 lt!119994))) (and (bvsge (index!6241 lt!120026) #b00000000000000000000000000000000) (bvslt (index!6241 lt!120026) (size!5917 (_keys!6491 thiss!1504))))) (or ((_ is Undefined!1017) lt!120026) (ite ((_ is Found!1017) lt!120026) (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6239 lt!120026)) key!932) (and ((_ is MissingVacant!1017) lt!120026) (= (index!6241 lt!120026) (index!6240 lt!119994)) (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6241 lt!120026)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!154085 () SeekEntryResult!1017)

(assert (=> d!59479 (= lt!120026 e!154085)))

(declare-fun c!39539 () Bool)

(assert (=> d!59479 (= c!39539 (bvsge (x!23943 lt!119994) #b01111111111111111111111111111110))))

(declare-fun lt!120027 () (_ BitVec 64))

(assert (=> d!59479 (= lt!120027 (select (arr!5578 (_keys!6491 thiss!1504)) (index!6240 lt!119994)))))

(assert (=> d!59479 (validMask!0 (mask!10408 thiss!1504))))

(assert (=> d!59479 (= (seekKeyOrZeroReturnVacant!0 (x!23943 lt!119994) (index!6240 lt!119994) (index!6240 lt!119994) key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)) lt!120026)))

(declare-fun b!237263 () Bool)

(assert (=> b!237263 (= e!154085 Undefined!1017)))

(declare-fun b!237264 () Bool)

(declare-fun e!154084 () SeekEntryResult!1017)

(assert (=> b!237264 (= e!154084 (Found!1017 (index!6240 lt!119994)))))

(declare-fun b!237265 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!237265 (= e!154086 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23943 lt!119994) #b00000000000000000000000000000001) (nextIndex!0 (index!6240 lt!119994) (x!23943 lt!119994) (mask!10408 thiss!1504)) (index!6240 lt!119994) key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(declare-fun b!237266 () Bool)

(declare-fun c!39541 () Bool)

(assert (=> b!237266 (= c!39541 (= lt!120027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237266 (= e!154084 e!154086)))

(declare-fun b!237267 () Bool)

(assert (=> b!237267 (= e!154085 e!154084)))

(declare-fun c!39540 () Bool)

(assert (=> b!237267 (= c!39540 (= lt!120027 key!932))))

(assert (= (and d!59479 c!39539) b!237263))

(assert (= (and d!59479 (not c!39539)) b!237267))

(assert (= (and b!237267 c!39540) b!237264))

(assert (= (and b!237267 (not c!39540)) b!237266))

(assert (= (and b!237266 c!39541) b!237262))

(assert (= (and b!237266 (not c!39541)) b!237265))

(declare-fun m!258035 () Bool)

(assert (=> d!59479 m!258035))

(declare-fun m!258037 () Bool)

(assert (=> d!59479 m!258037))

(assert (=> d!59479 m!257977))

(assert (=> d!59479 m!257867))

(declare-fun m!258039 () Bool)

(assert (=> b!237265 m!258039))

(assert (=> b!237265 m!258039))

(declare-fun m!258041 () Bool)

(assert (=> b!237265 m!258041))

(assert (=> b!237184 d!59479))

(declare-fun b!237276 () Bool)

(declare-fun e!154092 () (_ BitVec 32))

(declare-fun call!22063 () (_ BitVec 32))

(assert (=> b!237276 (= e!154092 call!22063)))

(declare-fun b!237277 () Bool)

(declare-fun e!154091 () (_ BitVec 32))

(assert (=> b!237277 (= e!154091 e!154092)))

(declare-fun c!39546 () Bool)

(assert (=> b!237277 (= c!39546 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59481 () Bool)

(declare-fun lt!120030 () (_ BitVec 32))

(assert (=> d!59481 (and (bvsge lt!120030 #b00000000000000000000000000000000) (bvsle lt!120030 (bvsub (size!5917 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59481 (= lt!120030 e!154091)))

(declare-fun c!39547 () Bool)

(assert (=> d!59481 (= c!39547 (bvsge #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> d!59481 (and (bvsle #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5917 (_keys!6491 thiss!1504)) (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> d!59481 (= (arrayCountValidKeys!0 (_keys!6491 thiss!1504) #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))) lt!120030)))

(declare-fun b!237278 () Bool)

(assert (=> b!237278 (= e!154092 (bvadd #b00000000000000000000000000000001 call!22063))))

(declare-fun b!237279 () Bool)

(assert (=> b!237279 (= e!154091 #b00000000000000000000000000000000)))

(declare-fun bm!22060 () Bool)

(assert (=> bm!22060 (= call!22063 (arrayCountValidKeys!0 (_keys!6491 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5917 (_keys!6491 thiss!1504))))))

(assert (= (and d!59481 c!39547) b!237279))

(assert (= (and d!59481 (not c!39547)) b!237277))

(assert (= (and b!237277 c!39546) b!237278))

(assert (= (and b!237277 (not c!39546)) b!237276))

(assert (= (or b!237278 b!237276) bm!22060))

(assert (=> b!237277 m!257901))

(assert (=> b!237277 m!257901))

(assert (=> b!237277 m!257903))

(declare-fun m!258043 () Bool)

(assert (=> bm!22060 m!258043))

(assert (=> b!237165 d!59481))

(declare-fun b!237304 () Bool)

(declare-fun res!116319 () Bool)

(declare-fun e!154107 () Bool)

(assert (=> b!237304 (=> (not res!116319) (not e!154107))))

(declare-fun lt!120050 () ListLongMap!3583)

(assert (=> b!237304 (= res!116319 (not (contains!1683 lt!120050 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!237305 () Bool)

(assert (=> b!237305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> b!237305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5916 (_values!4386 thiss!1504))))))

(declare-fun e!154109 () Bool)

(assert (=> b!237305 (= e!154109 (= (apply!216 lt!120050 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)) (get!2872 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237306 () Bool)

(declare-fun e!154108 () Bool)

(declare-fun e!154112 () Bool)

(assert (=> b!237306 (= e!154108 e!154112)))

(declare-fun c!39556 () Bool)

(assert (=> b!237306 (= c!39556 (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun b!237307 () Bool)

(declare-fun e!154111 () Bool)

(assert (=> b!237307 (= e!154111 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237307 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!237308 () Bool)

(declare-fun e!154113 () ListLongMap!3583)

(assert (=> b!237308 (= e!154113 (ListLongMap!3584 Nil!3579))))

(declare-fun b!237309 () Bool)

(assert (=> b!237309 (= e!154107 e!154108)))

(declare-fun c!39557 () Bool)

(assert (=> b!237309 (= c!39557 e!154111)))

(declare-fun res!116321 () Bool)

(assert (=> b!237309 (=> (not res!116321) (not e!154111))))

(assert (=> b!237309 (= res!116321 (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun b!237310 () Bool)

(declare-fun isEmpty!522 (ListLongMap!3583) Bool)

(assert (=> b!237310 (= e!154112 (isEmpty!522 lt!120050))))

(declare-fun b!237311 () Bool)

(assert (=> b!237311 (= e!154108 e!154109)))

(assert (=> b!237311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun res!116318 () Bool)

(assert (=> b!237311 (= res!116318 (contains!1683 lt!120050 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237311 (=> (not res!116318) (not e!154109))))

(declare-fun d!59483 () Bool)

(assert (=> d!59483 e!154107))

(declare-fun res!116320 () Bool)

(assert (=> d!59483 (=> (not res!116320) (not e!154107))))

(assert (=> d!59483 (= res!116320 (not (contains!1683 lt!120050 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!59483 (= lt!120050 e!154113)))

(declare-fun c!39559 () Bool)

(assert (=> d!59483 (= c!39559 (bvsge #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> d!59483 (validMask!0 (mask!10408 thiss!1504))))

(assert (=> d!59483 (= (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)) lt!120050)))

(declare-fun b!237312 () Bool)

(declare-fun lt!120051 () Unit!7289)

(declare-fun lt!120047 () Unit!7289)

(assert (=> b!237312 (= lt!120051 lt!120047)))

(declare-fun lt!120048 () (_ BitVec 64))

(declare-fun lt!120049 () (_ BitVec 64))

(declare-fun lt!120045 () V!7963)

(declare-fun lt!120046 () ListLongMap!3583)

(assert (=> b!237312 (not (contains!1683 (+!638 lt!120046 (tuple2!4657 lt!120048 lt!120045)) lt!120049))))

(declare-fun addStillNotContains!119 (ListLongMap!3583 (_ BitVec 64) V!7963 (_ BitVec 64)) Unit!7289)

(assert (=> b!237312 (= lt!120047 (addStillNotContains!119 lt!120046 lt!120048 lt!120045 lt!120049))))

(assert (=> b!237312 (= lt!120049 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!237312 (= lt!120045 (get!2872 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!237312 (= lt!120048 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun call!22066 () ListLongMap!3583)

(assert (=> b!237312 (= lt!120046 call!22066)))

(declare-fun e!154110 () ListLongMap!3583)

(assert (=> b!237312 (= e!154110 (+!638 call!22066 (tuple2!4657 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000) (get!2872 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!237313 () Bool)

(assert (=> b!237313 (= e!154110 call!22066)))

(declare-fun bm!22063 () Bool)

(assert (=> bm!22063 (= call!22066 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4403 thiss!1504)))))

(declare-fun b!237314 () Bool)

(assert (=> b!237314 (= e!154113 e!154110)))

(declare-fun c!39558 () Bool)

(assert (=> b!237314 (= c!39558 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237315 () Bool)

(assert (=> b!237315 (= e!154112 (= lt!120050 (getCurrentListMapNoExtraKeys!535 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4403 thiss!1504))))))

(assert (= (and d!59483 c!39559) b!237308))

(assert (= (and d!59483 (not c!39559)) b!237314))

(assert (= (and b!237314 c!39558) b!237312))

(assert (= (and b!237314 (not c!39558)) b!237313))

(assert (= (or b!237312 b!237313) bm!22063))

(assert (= (and d!59483 res!116320) b!237304))

(assert (= (and b!237304 res!116319) b!237309))

(assert (= (and b!237309 res!116321) b!237307))

(assert (= (and b!237309 c!39557) b!237311))

(assert (= (and b!237309 (not c!39557)) b!237306))

(assert (= (and b!237311 res!116318) b!237305))

(assert (= (and b!237306 c!39556) b!237315))

(assert (= (and b!237306 (not c!39556)) b!237310))

(declare-fun b_lambda!7977 () Bool)

(assert (=> (not b_lambda!7977) (not b!237305)))

(assert (=> b!237305 t!8578))

(declare-fun b_and!13347 () Bool)

(assert (= b_and!13345 (and (=> t!8578 result!5165) b_and!13347)))

(declare-fun b_lambda!7979 () Bool)

(assert (=> (not b_lambda!7979) (not b!237312)))

(assert (=> b!237312 t!8578))

(declare-fun b_and!13349 () Bool)

(assert (= b_and!13347 (and (=> t!8578 result!5165) b_and!13349)))

(assert (=> b!237307 m!257901))

(assert (=> b!237307 m!257901))

(assert (=> b!237307 m!257903))

(declare-fun m!258045 () Bool)

(assert (=> b!237304 m!258045))

(declare-fun m!258047 () Bool)

(assert (=> bm!22063 m!258047))

(assert (=> b!237312 m!257911))

(assert (=> b!237312 m!257911))

(assert (=> b!237312 m!257913))

(assert (=> b!237312 m!257915))

(assert (=> b!237312 m!257901))

(declare-fun m!258049 () Bool)

(assert (=> b!237312 m!258049))

(declare-fun m!258051 () Bool)

(assert (=> b!237312 m!258051))

(assert (=> b!237312 m!257913))

(declare-fun m!258053 () Bool)

(assert (=> b!237312 m!258053))

(assert (=> b!237312 m!258053))

(declare-fun m!258055 () Bool)

(assert (=> b!237312 m!258055))

(declare-fun m!258057 () Bool)

(assert (=> d!59483 m!258057))

(assert (=> d!59483 m!257867))

(assert (=> b!237311 m!257901))

(assert (=> b!237311 m!257901))

(declare-fun m!258059 () Bool)

(assert (=> b!237311 m!258059))

(assert (=> b!237305 m!257913))

(assert (=> b!237305 m!257901))

(declare-fun m!258061 () Bool)

(assert (=> b!237305 m!258061))

(assert (=> b!237305 m!257911))

(assert (=> b!237305 m!257911))

(assert (=> b!237305 m!257913))

(assert (=> b!237305 m!257915))

(assert (=> b!237305 m!257901))

(assert (=> b!237314 m!257901))

(assert (=> b!237314 m!257901))

(assert (=> b!237314 m!257903))

(assert (=> b!237315 m!258047))

(declare-fun m!258063 () Bool)

(assert (=> b!237310 m!258063))

(assert (=> bm!22051 d!59483))

(declare-fun bm!22066 () Bool)

(declare-fun call!22069 () Bool)

(assert (=> bm!22066 (= call!22069 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(declare-fun b!237324 () Bool)

(declare-fun e!154121 () Bool)

(declare-fun e!154122 () Bool)

(assert (=> b!237324 (= e!154121 e!154122)))

(declare-fun c!39562 () Bool)

(assert (=> b!237324 (= c!39562 (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59485 () Bool)

(declare-fun res!116326 () Bool)

(assert (=> d!59485 (=> res!116326 e!154121)))

(assert (=> d!59485 (= res!116326 (bvsge #b00000000000000000000000000000000 (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> d!59485 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)) e!154121)))

(declare-fun b!237325 () Bool)

(assert (=> b!237325 (= e!154122 call!22069)))

(declare-fun b!237326 () Bool)

(declare-fun e!154120 () Bool)

(assert (=> b!237326 (= e!154120 call!22069)))

(declare-fun b!237327 () Bool)

(assert (=> b!237327 (= e!154122 e!154120)))

(declare-fun lt!120059 () (_ BitVec 64))

(assert (=> b!237327 (= lt!120059 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120060 () Unit!7289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11744 (_ BitVec 64) (_ BitVec 32)) Unit!7289)

(assert (=> b!237327 (= lt!120060 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6491 thiss!1504) lt!120059 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!237327 (arrayContainsKey!0 (_keys!6491 thiss!1504) lt!120059 #b00000000000000000000000000000000)))

(declare-fun lt!120058 () Unit!7289)

(assert (=> b!237327 (= lt!120058 lt!120060)))

(declare-fun res!116327 () Bool)

(assert (=> b!237327 (= res!116327 (= (seekEntryOrOpen!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000) (_keys!6491 thiss!1504) (mask!10408 thiss!1504)) (Found!1017 #b00000000000000000000000000000000)))))

(assert (=> b!237327 (=> (not res!116327) (not e!154120))))

(assert (= (and d!59485 (not res!116326)) b!237324))

(assert (= (and b!237324 c!39562) b!237327))

(assert (= (and b!237324 (not c!39562)) b!237325))

(assert (= (and b!237327 res!116327) b!237326))

(assert (= (or b!237326 b!237325) bm!22066))

(declare-fun m!258065 () Bool)

(assert (=> bm!22066 m!258065))

(assert (=> b!237324 m!257901))

(assert (=> b!237324 m!257901))

(assert (=> b!237324 m!257903))

(assert (=> b!237327 m!257901))

(declare-fun m!258067 () Bool)

(assert (=> b!237327 m!258067))

(declare-fun m!258069 () Bool)

(assert (=> b!237327 m!258069))

(assert (=> b!237327 m!257901))

(declare-fun m!258071 () Bool)

(assert (=> b!237327 m!258071))

(assert (=> b!237166 d!59485))

(declare-fun d!59487 () Bool)

(declare-fun get!2873 (Option!279) V!7963)

(assert (=> d!59487 (= (apply!216 lt!119968 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2873 (getValueByKey!273 (toList!1807 lt!119968) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8760 () Bool)

(assert (= bs!8760 d!59487))

(assert (=> bs!8760 m!258001))

(assert (=> bs!8760 m!258001))

(declare-fun m!258073 () Bool)

(assert (=> bs!8760 m!258073))

(assert (=> b!237145 d!59487))

(declare-fun d!59489 () Bool)

(declare-fun res!116332 () Bool)

(declare-fun e!154127 () Bool)

(assert (=> d!59489 (=> res!116332 e!154127)))

(assert (=> d!59489 (= res!116332 (and ((_ is Cons!3578) (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))) (= (_1!2338 (h!4232 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))))) key!932)))))

(assert (=> d!59489 (= (containsKey!265 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))) key!932) e!154127)))

(declare-fun b!237332 () Bool)

(declare-fun e!154128 () Bool)

(assert (=> b!237332 (= e!154127 e!154128)))

(declare-fun res!116333 () Bool)

(assert (=> b!237332 (=> (not res!116333) (not e!154128))))

(assert (=> b!237332 (= res!116333 (and (or (not ((_ is Cons!3578) (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))))) (bvsle (_1!2338 (h!4232 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))))) key!932)) ((_ is Cons!3578) (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))) (bvslt (_1!2338 (h!4232 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504))))) key!932)))))

(declare-fun b!237333 () Bool)

(assert (=> b!237333 (= e!154128 (containsKey!265 (t!8575 (toList!1807 (getCurrentListMap!1330 (_keys!6491 thiss!1504) (_values!4386 thiss!1504) (mask!10408 thiss!1504) (extraKeys!4140 thiss!1504) (zeroValue!4244 thiss!1504) (minValue!4244 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4403 thiss!1504)))) key!932))))

(assert (= (and d!59489 (not res!116332)) b!237332))

(assert (= (and b!237332 res!116333) b!237333))

(declare-fun m!258075 () Bool)

(assert (=> b!237333 m!258075))

(assert (=> d!59447 d!59489))

(declare-fun d!59491 () Bool)

(declare-fun e!154130 () Bool)

(assert (=> d!59491 e!154130))

(declare-fun res!116334 () Bool)

(assert (=> d!59491 (=> res!116334 e!154130)))

(declare-fun lt!120062 () Bool)

(assert (=> d!59491 (= res!116334 (not lt!120062))))

(declare-fun lt!120061 () Bool)

(assert (=> d!59491 (= lt!120062 lt!120061)))

(declare-fun lt!120063 () Unit!7289)

(declare-fun e!154129 () Unit!7289)

(assert (=> d!59491 (= lt!120063 e!154129)))

(declare-fun c!39563 () Bool)

(assert (=> d!59491 (= c!39563 lt!120061)))

(assert (=> d!59491 (= lt!120061 (containsKey!265 (toList!1807 lt!119968) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59491 (= (contains!1683 lt!119968 #b0000000000000000000000000000000000000000000000000000000000000000) lt!120062)))

(declare-fun b!237334 () Bool)

(declare-fun lt!120064 () Unit!7289)

(assert (=> b!237334 (= e!154129 lt!120064)))

(assert (=> b!237334 (= lt!120064 (lemmaContainsKeyImpliesGetValueByKeyDefined!214 (toList!1807 lt!119968) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237334 (isDefined!215 (getValueByKey!273 (toList!1807 lt!119968) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237335 () Bool)

(declare-fun Unit!7295 () Unit!7289)

(assert (=> b!237335 (= e!154129 Unit!7295)))

(declare-fun b!237336 () Bool)

(assert (=> b!237336 (= e!154130 (isDefined!215 (getValueByKey!273 (toList!1807 lt!119968) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59491 c!39563) b!237334))

(assert (= (and d!59491 (not c!39563)) b!237335))

(assert (= (and d!59491 (not res!116334)) b!237336))

(declare-fun m!258077 () Bool)

(assert (=> d!59491 m!258077))

(declare-fun m!258079 () Bool)

(assert (=> b!237334 m!258079))

(declare-fun m!258081 () Bool)

(assert (=> b!237334 m!258081))

(assert (=> b!237334 m!258081))

(declare-fun m!258083 () Bool)

(assert (=> b!237334 m!258083))

(assert (=> b!237336 m!258081))

(assert (=> b!237336 m!258081))

(assert (=> b!237336 m!258083))

(assert (=> bm!22048 d!59491))

(declare-fun b!237355 () Bool)

(declare-fun e!154141 () SeekEntryResult!1017)

(assert (=> b!237355 (= e!154141 (Intermediate!1017 true (toIndex!0 key!932 (mask!10408 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!237356 () Bool)

(declare-fun lt!120070 () SeekEntryResult!1017)

(assert (=> b!237356 (and (bvsge (index!6240 lt!120070) #b00000000000000000000000000000000) (bvslt (index!6240 lt!120070) (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun res!116341 () Bool)

(assert (=> b!237356 (= res!116341 (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6240 lt!120070)) key!932))))

(declare-fun e!154143 () Bool)

(assert (=> b!237356 (=> res!116341 e!154143)))

(declare-fun e!154142 () Bool)

(assert (=> b!237356 (= e!154142 e!154143)))

(declare-fun b!237357 () Bool)

(declare-fun e!154145 () SeekEntryResult!1017)

(assert (=> b!237357 (= e!154145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10408 thiss!1504)) #b00000000000000000000000000000000 (mask!10408 thiss!1504)) key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)))))

(declare-fun b!237358 () Bool)

(assert (=> b!237358 (= e!154145 (Intermediate!1017 false (toIndex!0 key!932 (mask!10408 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!237360 () Bool)

(assert (=> b!237360 (and (bvsge (index!6240 lt!120070) #b00000000000000000000000000000000) (bvslt (index!6240 lt!120070) (size!5917 (_keys!6491 thiss!1504))))))

(assert (=> b!237360 (= e!154143 (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6240 lt!120070)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!237361 () Bool)

(assert (=> b!237361 (and (bvsge (index!6240 lt!120070) #b00000000000000000000000000000000) (bvslt (index!6240 lt!120070) (size!5917 (_keys!6491 thiss!1504))))))

(declare-fun res!116342 () Bool)

(assert (=> b!237361 (= res!116342 (= (select (arr!5578 (_keys!6491 thiss!1504)) (index!6240 lt!120070)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237361 (=> res!116342 e!154143)))

(declare-fun d!59493 () Bool)

(declare-fun e!154144 () Bool)

(assert (=> d!59493 e!154144))

(declare-fun c!39570 () Bool)

(assert (=> d!59493 (= c!39570 (and ((_ is Intermediate!1017) lt!120070) (undefined!1829 lt!120070)))))

(assert (=> d!59493 (= lt!120070 e!154141)))

(declare-fun c!39572 () Bool)

(assert (=> d!59493 (= c!39572 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!120069 () (_ BitVec 64))

(assert (=> d!59493 (= lt!120069 (select (arr!5578 (_keys!6491 thiss!1504)) (toIndex!0 key!932 (mask!10408 thiss!1504))))))

(assert (=> d!59493 (validMask!0 (mask!10408 thiss!1504))))

(assert (=> d!59493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10408 thiss!1504)) key!932 (_keys!6491 thiss!1504) (mask!10408 thiss!1504)) lt!120070)))

(declare-fun b!237359 () Bool)

(assert (=> b!237359 (= e!154144 e!154142)))

(declare-fun res!116343 () Bool)

(assert (=> b!237359 (= res!116343 (and ((_ is Intermediate!1017) lt!120070) (not (undefined!1829 lt!120070)) (bvslt (x!23943 lt!120070) #b01111111111111111111111111111110) (bvsge (x!23943 lt!120070) #b00000000000000000000000000000000) (bvsge (x!23943 lt!120070) #b00000000000000000000000000000000)))))

(assert (=> b!237359 (=> (not res!116343) (not e!154142))))

(declare-fun b!237362 () Bool)

(assert (=> b!237362 (= e!154144 (bvsge (x!23943 lt!120070) #b01111111111111111111111111111110))))

(declare-fun b!237363 () Bool)

(assert (=> b!237363 (= e!154141 e!154145)))

(declare-fun c!39571 () Bool)

(assert (=> b!237363 (= c!39571 (or (= lt!120069 key!932) (= (bvadd lt!120069 lt!120069) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59493 c!39572) b!237355))

(assert (= (and d!59493 (not c!39572)) b!237363))

(assert (= (and b!237363 c!39571) b!237358))

(assert (= (and b!237363 (not c!39571)) b!237357))

(assert (= (and d!59493 c!39570) b!237362))

(assert (= (and d!59493 (not c!39570)) b!237359))

(assert (= (and b!237359 res!116343) b!237356))

(assert (= (and b!237356 (not res!116341)) b!237361))

(assert (= (and b!237361 (not res!116342)) b!237360))

(declare-fun m!258085 () Bool)

(assert (=> b!237356 m!258085))

(assert (=> b!237357 m!257969))

(declare-fun m!258087 () Bool)

(assert (=> b!237357 m!258087))

(assert (=> b!237357 m!258087))

(declare-fun m!258089 () Bool)

(assert (=> b!237357 m!258089))

(assert (=> b!237360 m!258085))

(assert (=> b!237361 m!258085))

(assert (=> d!59493 m!257969))

(declare-fun m!258091 () Bool)

(assert (=> d!59493 m!258091))

(assert (=> d!59493 m!257867))

(assert (=> d!59459 d!59493))

(declare-fun d!59495 () Bool)

(declare-fun lt!120076 () (_ BitVec 32))

(declare-fun lt!120075 () (_ BitVec 32))

(assert (=> d!59495 (= lt!120076 (bvmul (bvxor lt!120075 (bvlshr lt!120075 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59495 (= lt!120075 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59495 (and (bvsge (mask!10408 thiss!1504) #b00000000000000000000000000000000) (let ((res!116344 (let ((h!4235 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23962 (bvmul (bvxor h!4235 (bvlshr h!4235 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23962 (bvlshr x!23962 #b00000000000000000000000000001101)) (mask!10408 thiss!1504)))))) (and (bvslt res!116344 (bvadd (mask!10408 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!116344 #b00000000000000000000000000000000))))))

(assert (=> d!59495 (= (toIndex!0 key!932 (mask!10408 thiss!1504)) (bvand (bvxor lt!120076 (bvlshr lt!120076 #b00000000000000000000000000001101)) (mask!10408 thiss!1504)))))

(assert (=> d!59459 d!59495))

(assert (=> d!59459 d!59451))

(declare-fun d!59497 () Bool)

(assert (=> d!59497 (= (apply!216 lt!119968 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2873 (getValueByKey!273 (toList!1807 lt!119968) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8761 () Bool)

(assert (= bs!8761 d!59497))

(assert (=> bs!8761 m!258081))

(assert (=> bs!8761 m!258081))

(declare-fun m!258093 () Bool)

(assert (=> bs!8761 m!258093))

(assert (=> b!237155 d!59497))

(declare-fun d!59499 () Bool)

(assert (=> d!59499 (= (apply!216 (+!638 lt!119971 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))) lt!119975) (apply!216 lt!119971 lt!119975))))

(declare-fun lt!120079 () Unit!7289)

(declare-fun choose!1119 (ListLongMap!3583 (_ BitVec 64) V!7963 (_ BitVec 64)) Unit!7289)

(assert (=> d!59499 (= lt!120079 (choose!1119 lt!119971 lt!119984 (minValue!4244 thiss!1504) lt!119975))))

(declare-fun e!154148 () Bool)

(assert (=> d!59499 e!154148))

(declare-fun res!116347 () Bool)

(assert (=> d!59499 (=> (not res!116347) (not e!154148))))

(assert (=> d!59499 (= res!116347 (contains!1683 lt!119971 lt!119975))))

(assert (=> d!59499 (= (addApplyDifferent!192 lt!119971 lt!119984 (minValue!4244 thiss!1504) lt!119975) lt!120079)))

(declare-fun b!237367 () Bool)

(assert (=> b!237367 (= e!154148 (not (= lt!119975 lt!119984)))))

(assert (= (and d!59499 res!116347) b!237367))

(declare-fun m!258095 () Bool)

(assert (=> d!59499 m!258095))

(assert (=> d!59499 m!257927))

(declare-fun m!258097 () Bool)

(assert (=> d!59499 m!258097))

(assert (=> d!59499 m!257929))

(assert (=> d!59499 m!257931))

(assert (=> d!59499 m!257929))

(assert (=> b!237142 d!59499))

(declare-fun d!59501 () Bool)

(declare-fun e!154150 () Bool)

(assert (=> d!59501 e!154150))

(declare-fun res!116348 () Bool)

(assert (=> d!59501 (=> res!116348 e!154150)))

(declare-fun lt!120081 () Bool)

(assert (=> d!59501 (= res!116348 (not lt!120081))))

(declare-fun lt!120080 () Bool)

(assert (=> d!59501 (= lt!120081 lt!120080)))

(declare-fun lt!120082 () Unit!7289)

(declare-fun e!154149 () Unit!7289)

(assert (=> d!59501 (= lt!120082 e!154149)))

(declare-fun c!39573 () Bool)

(assert (=> d!59501 (= c!39573 lt!120080)))

(assert (=> d!59501 (= lt!120080 (containsKey!265 (toList!1807 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))) lt!119976))))

(assert (=> d!59501 (= (contains!1683 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))) lt!119976) lt!120081)))

(declare-fun b!237368 () Bool)

(declare-fun lt!120083 () Unit!7289)

(assert (=> b!237368 (= e!154149 lt!120083)))

(assert (=> b!237368 (= lt!120083 (lemmaContainsKeyImpliesGetValueByKeyDefined!214 (toList!1807 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))) lt!119976))))

(assert (=> b!237368 (isDefined!215 (getValueByKey!273 (toList!1807 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))) lt!119976))))

(declare-fun b!237369 () Bool)

(declare-fun Unit!7296 () Unit!7289)

(assert (=> b!237369 (= e!154149 Unit!7296)))

(declare-fun b!237370 () Bool)

(assert (=> b!237370 (= e!154150 (isDefined!215 (getValueByKey!273 (toList!1807 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))) lt!119976)))))

(assert (= (and d!59501 c!39573) b!237368))

(assert (= (and d!59501 (not c!39573)) b!237369))

(assert (= (and d!59501 (not res!116348)) b!237370))

(declare-fun m!258099 () Bool)

(assert (=> d!59501 m!258099))

(declare-fun m!258101 () Bool)

(assert (=> b!237368 m!258101))

(declare-fun m!258103 () Bool)

(assert (=> b!237368 m!258103))

(assert (=> b!237368 m!258103))

(declare-fun m!258105 () Bool)

(assert (=> b!237368 m!258105))

(assert (=> b!237370 m!258103))

(assert (=> b!237370 m!258103))

(assert (=> b!237370 m!258105))

(assert (=> b!237142 d!59501))

(declare-fun d!59503 () Bool)

(assert (=> d!59503 (= (apply!216 (+!638 lt!119980 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))) lt!119974) (get!2873 (getValueByKey!273 (toList!1807 (+!638 lt!119980 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))) lt!119974)))))

(declare-fun bs!8762 () Bool)

(assert (= bs!8762 d!59503))

(declare-fun m!258107 () Bool)

(assert (=> bs!8762 m!258107))

(assert (=> bs!8762 m!258107))

(declare-fun m!258109 () Bool)

(assert (=> bs!8762 m!258109))

(assert (=> b!237142 d!59503))

(declare-fun d!59505 () Bool)

(assert (=> d!59505 (contains!1683 (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))) lt!119976)))

(declare-fun lt!120086 () Unit!7289)

(declare-fun choose!1120 (ListLongMap!3583 (_ BitVec 64) V!7963 (_ BitVec 64)) Unit!7289)

(assert (=> d!59505 (= lt!120086 (choose!1120 lt!119969 lt!119985 (zeroValue!4244 thiss!1504) lt!119976))))

(assert (=> d!59505 (contains!1683 lt!119969 lt!119976)))

(assert (=> d!59505 (= (addStillContains!192 lt!119969 lt!119985 (zeroValue!4244 thiss!1504) lt!119976) lt!120086)))

(declare-fun bs!8763 () Bool)

(assert (= bs!8763 d!59505))

(assert (=> bs!8763 m!257937))

(assert (=> bs!8763 m!257937))

(assert (=> bs!8763 m!257941))

(declare-fun m!258111 () Bool)

(assert (=> bs!8763 m!258111))

(declare-fun m!258113 () Bool)

(assert (=> bs!8763 m!258113))

(assert (=> b!237142 d!59505))

(declare-fun d!59507 () Bool)

(declare-fun e!154151 () Bool)

(assert (=> d!59507 e!154151))

(declare-fun res!116350 () Bool)

(assert (=> d!59507 (=> (not res!116350) (not e!154151))))

(declare-fun lt!120090 () ListLongMap!3583)

(assert (=> d!59507 (= res!116350 (contains!1683 lt!120090 (_1!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))))))

(declare-fun lt!120087 () List!3582)

(assert (=> d!59507 (= lt!120090 (ListLongMap!3584 lt!120087))))

(declare-fun lt!120088 () Unit!7289)

(declare-fun lt!120089 () Unit!7289)

(assert (=> d!59507 (= lt!120088 lt!120089)))

(assert (=> d!59507 (= (getValueByKey!273 lt!120087 (_1!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))))))

(assert (=> d!59507 (= lt!120089 (lemmaContainsTupThenGetReturnValue!154 lt!120087 (_1!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))))))

(assert (=> d!59507 (= lt!120087 (insertStrictlySorted!156 (toList!1807 lt!119969) (_1!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))))))

(assert (=> d!59507 (= (+!638 lt!119969 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))) lt!120090)))

(declare-fun b!237372 () Bool)

(declare-fun res!116349 () Bool)

(assert (=> b!237372 (=> (not res!116349) (not e!154151))))

(assert (=> b!237372 (= res!116349 (= (getValueByKey!273 (toList!1807 lt!120090) (_1!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))))))))

(declare-fun b!237373 () Bool)

(assert (=> b!237373 (= e!154151 (contains!1686 (toList!1807 lt!120090) (tuple2!4657 lt!119985 (zeroValue!4244 thiss!1504))))))

(assert (= (and d!59507 res!116350) b!237372))

(assert (= (and b!237372 res!116349) b!237373))

(declare-fun m!258115 () Bool)

(assert (=> d!59507 m!258115))

(declare-fun m!258117 () Bool)

(assert (=> d!59507 m!258117))

(declare-fun m!258119 () Bool)

(assert (=> d!59507 m!258119))

(declare-fun m!258121 () Bool)

(assert (=> d!59507 m!258121))

(declare-fun m!258123 () Bool)

(assert (=> b!237372 m!258123))

(declare-fun m!258125 () Bool)

(assert (=> b!237373 m!258125))

(assert (=> b!237142 d!59507))

(declare-fun d!59509 () Bool)

(assert (=> d!59509 (= (apply!216 (+!638 lt!119978 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))) lt!119965) (apply!216 lt!119978 lt!119965))))

(declare-fun lt!120091 () Unit!7289)

(assert (=> d!59509 (= lt!120091 (choose!1119 lt!119978 lt!119966 (zeroValue!4244 thiss!1504) lt!119965))))

(declare-fun e!154152 () Bool)

(assert (=> d!59509 e!154152))

(declare-fun res!116351 () Bool)

(assert (=> d!59509 (=> (not res!116351) (not e!154152))))

(assert (=> d!59509 (= res!116351 (contains!1683 lt!119978 lt!119965))))

(assert (=> d!59509 (= (addApplyDifferent!192 lt!119978 lt!119966 (zeroValue!4244 thiss!1504) lt!119965) lt!120091)))

(declare-fun b!237374 () Bool)

(assert (=> b!237374 (= e!154152 (not (= lt!119965 lt!119966)))))

(assert (= (and d!59509 res!116351) b!237374))

(declare-fun m!258127 () Bool)

(assert (=> d!59509 m!258127))

(assert (=> d!59509 m!257933))

(declare-fun m!258129 () Bool)

(assert (=> d!59509 m!258129))

(assert (=> d!59509 m!257925))

(assert (=> d!59509 m!257945))

(assert (=> d!59509 m!257925))

(assert (=> b!237142 d!59509))

(assert (=> b!237142 d!59483))

(declare-fun d!59511 () Bool)

(assert (=> d!59511 (= (apply!216 lt!119971 lt!119975) (get!2873 (getValueByKey!273 (toList!1807 lt!119971) lt!119975)))))

(declare-fun bs!8764 () Bool)

(assert (= bs!8764 d!59511))

(declare-fun m!258131 () Bool)

(assert (=> bs!8764 m!258131))

(assert (=> bs!8764 m!258131))

(declare-fun m!258133 () Bool)

(assert (=> bs!8764 m!258133))

(assert (=> b!237142 d!59511))

(declare-fun d!59513 () Bool)

(declare-fun e!154153 () Bool)

(assert (=> d!59513 e!154153))

(declare-fun res!116353 () Bool)

(assert (=> d!59513 (=> (not res!116353) (not e!154153))))

(declare-fun lt!120095 () ListLongMap!3583)

(assert (=> d!59513 (= res!116353 (contains!1683 lt!120095 (_1!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))))))

(declare-fun lt!120092 () List!3582)

(assert (=> d!59513 (= lt!120095 (ListLongMap!3584 lt!120092))))

(declare-fun lt!120093 () Unit!7289)

(declare-fun lt!120094 () Unit!7289)

(assert (=> d!59513 (= lt!120093 lt!120094)))

(assert (=> d!59513 (= (getValueByKey!273 lt!120092 (_1!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))))))

(assert (=> d!59513 (= lt!120094 (lemmaContainsTupThenGetReturnValue!154 lt!120092 (_1!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))))))

(assert (=> d!59513 (= lt!120092 (insertStrictlySorted!156 (toList!1807 lt!119978) (_1!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))))))

(assert (=> d!59513 (= (+!638 lt!119978 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))) lt!120095)))

(declare-fun b!237375 () Bool)

(declare-fun res!116352 () Bool)

(assert (=> b!237375 (=> (not res!116352) (not e!154153))))

(assert (=> b!237375 (= res!116352 (= (getValueByKey!273 (toList!1807 lt!120095) (_1!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))))))))

(declare-fun b!237376 () Bool)

(assert (=> b!237376 (= e!154153 (contains!1686 (toList!1807 lt!120095) (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))))))

(assert (= (and d!59513 res!116353) b!237375))

(assert (= (and b!237375 res!116352) b!237376))

(declare-fun m!258135 () Bool)

(assert (=> d!59513 m!258135))

(declare-fun m!258137 () Bool)

(assert (=> d!59513 m!258137))

(declare-fun m!258139 () Bool)

(assert (=> d!59513 m!258139))

(declare-fun m!258141 () Bool)

(assert (=> d!59513 m!258141))

(declare-fun m!258143 () Bool)

(assert (=> b!237375 m!258143))

(declare-fun m!258145 () Bool)

(assert (=> b!237376 m!258145))

(assert (=> b!237142 d!59513))

(declare-fun d!59515 () Bool)

(assert (=> d!59515 (= (apply!216 lt!119980 lt!119974) (get!2873 (getValueByKey!273 (toList!1807 lt!119980) lt!119974)))))

(declare-fun bs!8765 () Bool)

(assert (= bs!8765 d!59515))

(declare-fun m!258147 () Bool)

(assert (=> bs!8765 m!258147))

(assert (=> bs!8765 m!258147))

(declare-fun m!258149 () Bool)

(assert (=> bs!8765 m!258149))

(assert (=> b!237142 d!59515))

(declare-fun d!59517 () Bool)

(assert (=> d!59517 (= (apply!216 (+!638 lt!119978 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504))) lt!119965) (get!2873 (getValueByKey!273 (toList!1807 (+!638 lt!119978 (tuple2!4657 lt!119966 (zeroValue!4244 thiss!1504)))) lt!119965)))))

(declare-fun bs!8766 () Bool)

(assert (= bs!8766 d!59517))

(declare-fun m!258151 () Bool)

(assert (=> bs!8766 m!258151))

(assert (=> bs!8766 m!258151))

(declare-fun m!258153 () Bool)

(assert (=> bs!8766 m!258153))

(assert (=> b!237142 d!59517))

(declare-fun d!59519 () Bool)

(declare-fun e!154154 () Bool)

(assert (=> d!59519 e!154154))

(declare-fun res!116355 () Bool)

(assert (=> d!59519 (=> (not res!116355) (not e!154154))))

(declare-fun lt!120099 () ListLongMap!3583)

(assert (=> d!59519 (= res!116355 (contains!1683 lt!120099 (_1!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))))))

(declare-fun lt!120096 () List!3582)

(assert (=> d!59519 (= lt!120099 (ListLongMap!3584 lt!120096))))

(declare-fun lt!120097 () Unit!7289)

(declare-fun lt!120098 () Unit!7289)

(assert (=> d!59519 (= lt!120097 lt!120098)))

(assert (=> d!59519 (= (getValueByKey!273 lt!120096 (_1!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))))))

(assert (=> d!59519 (= lt!120098 (lemmaContainsTupThenGetReturnValue!154 lt!120096 (_1!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))))))

(assert (=> d!59519 (= lt!120096 (insertStrictlySorted!156 (toList!1807 lt!119980) (_1!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))))))

(assert (=> d!59519 (= (+!638 lt!119980 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))) lt!120099)))

(declare-fun b!237377 () Bool)

(declare-fun res!116354 () Bool)

(assert (=> b!237377 (=> (not res!116354) (not e!154154))))

(assert (=> b!237377 (= res!116354 (= (getValueByKey!273 (toList!1807 lt!120099) (_1!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))))))))

(declare-fun b!237378 () Bool)

(assert (=> b!237378 (= e!154154 (contains!1686 (toList!1807 lt!120099) (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))))))

(assert (= (and d!59519 res!116355) b!237377))

(assert (= (and b!237377 res!116354) b!237378))

(declare-fun m!258155 () Bool)

(assert (=> d!59519 m!258155))

(declare-fun m!258157 () Bool)

(assert (=> d!59519 m!258157))

(declare-fun m!258159 () Bool)

(assert (=> d!59519 m!258159))

(declare-fun m!258161 () Bool)

(assert (=> d!59519 m!258161))

(declare-fun m!258163 () Bool)

(assert (=> b!237377 m!258163))

(declare-fun m!258165 () Bool)

(assert (=> b!237378 m!258165))

(assert (=> b!237142 d!59519))

(declare-fun d!59521 () Bool)

(assert (=> d!59521 (= (apply!216 lt!119978 lt!119965) (get!2873 (getValueByKey!273 (toList!1807 lt!119978) lt!119965)))))

(declare-fun bs!8767 () Bool)

(assert (= bs!8767 d!59521))

(declare-fun m!258167 () Bool)

(assert (=> bs!8767 m!258167))

(assert (=> bs!8767 m!258167))

(declare-fun m!258169 () Bool)

(assert (=> bs!8767 m!258169))

(assert (=> b!237142 d!59521))

(declare-fun d!59523 () Bool)

(declare-fun e!154155 () Bool)

(assert (=> d!59523 e!154155))

(declare-fun res!116357 () Bool)

(assert (=> d!59523 (=> (not res!116357) (not e!154155))))

(declare-fun lt!120103 () ListLongMap!3583)

(assert (=> d!59523 (= res!116357 (contains!1683 lt!120103 (_1!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))))))

(declare-fun lt!120100 () List!3582)

(assert (=> d!59523 (= lt!120103 (ListLongMap!3584 lt!120100))))

(declare-fun lt!120101 () Unit!7289)

(declare-fun lt!120102 () Unit!7289)

(assert (=> d!59523 (= lt!120101 lt!120102)))

(assert (=> d!59523 (= (getValueByKey!273 lt!120100 (_1!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))))))

(assert (=> d!59523 (= lt!120102 (lemmaContainsTupThenGetReturnValue!154 lt!120100 (_1!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))))))

(assert (=> d!59523 (= lt!120100 (insertStrictlySorted!156 (toList!1807 lt!119971) (_1!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))) (_2!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))))))

(assert (=> d!59523 (= (+!638 lt!119971 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))) lt!120103)))

(declare-fun b!237379 () Bool)

(declare-fun res!116356 () Bool)

(assert (=> b!237379 (=> (not res!116356) (not e!154155))))

(assert (=> b!237379 (= res!116356 (= (getValueByKey!273 (toList!1807 lt!120103) (_1!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))) (Some!278 (_2!2338 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))))))))

(declare-fun b!237380 () Bool)

(assert (=> b!237380 (= e!154155 (contains!1686 (toList!1807 lt!120103) (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))))))

(assert (= (and d!59523 res!116357) b!237379))

(assert (= (and b!237379 res!116356) b!237380))

(declare-fun m!258171 () Bool)

(assert (=> d!59523 m!258171))

(declare-fun m!258173 () Bool)

(assert (=> d!59523 m!258173))

(declare-fun m!258175 () Bool)

(assert (=> d!59523 m!258175))

(declare-fun m!258177 () Bool)

(assert (=> d!59523 m!258177))

(declare-fun m!258179 () Bool)

(assert (=> b!237379 m!258179))

(declare-fun m!258181 () Bool)

(assert (=> b!237380 m!258181))

(assert (=> b!237142 d!59523))

(declare-fun d!59525 () Bool)

(assert (=> d!59525 (= (apply!216 (+!638 lt!119971 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504))) lt!119975) (get!2873 (getValueByKey!273 (toList!1807 (+!638 lt!119971 (tuple2!4657 lt!119984 (minValue!4244 thiss!1504)))) lt!119975)))))

(declare-fun bs!8768 () Bool)

(assert (= bs!8768 d!59525))

(declare-fun m!258183 () Bool)

(assert (=> bs!8768 m!258183))

(assert (=> bs!8768 m!258183))

(declare-fun m!258185 () Bool)

(assert (=> bs!8768 m!258185))

(assert (=> b!237142 d!59525))

(declare-fun d!59527 () Bool)

(assert (=> d!59527 (= (apply!216 (+!638 lt!119980 (tuple2!4657 lt!119970 (minValue!4244 thiss!1504))) lt!119974) (apply!216 lt!119980 lt!119974))))

(declare-fun lt!120104 () Unit!7289)

(assert (=> d!59527 (= lt!120104 (choose!1119 lt!119980 lt!119970 (minValue!4244 thiss!1504) lt!119974))))

(declare-fun e!154156 () Bool)

(assert (=> d!59527 e!154156))

(declare-fun res!116358 () Bool)

(assert (=> d!59527 (=> (not res!116358) (not e!154156))))

(assert (=> d!59527 (= res!116358 (contains!1683 lt!119980 lt!119974))))

(assert (=> d!59527 (= (addApplyDifferent!192 lt!119980 lt!119970 (minValue!4244 thiss!1504) lt!119974) lt!120104)))

(declare-fun b!237381 () Bool)

(assert (=> b!237381 (= e!154156 (not (= lt!119974 lt!119970)))))

(assert (= (and d!59527 res!116358) b!237381))

(declare-fun m!258187 () Bool)

(assert (=> d!59527 m!258187))

(assert (=> d!59527 m!257951))

(declare-fun m!258189 () Bool)

(assert (=> d!59527 m!258189))

(assert (=> d!59527 m!257935))

(assert (=> d!59527 m!257943))

(assert (=> d!59527 m!257935))

(assert (=> b!237142 d!59527))

(declare-fun d!59529 () Bool)

(assert (=> d!59529 (= (apply!216 lt!119968 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)) (get!2873 (getValueByKey!273 (toList!1807 lt!119968) (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8769 () Bool)

(assert (= bs!8769 d!59529))

(assert (=> bs!8769 m!257901))

(assert (=> bs!8769 m!257993))

(assert (=> bs!8769 m!257993))

(declare-fun m!258191 () Bool)

(assert (=> bs!8769 m!258191))

(assert (=> b!237143 d!59529))

(declare-fun d!59531 () Bool)

(declare-fun c!39576 () Bool)

(assert (=> d!59531 (= c!39576 ((_ is ValueCellFull!2775) (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!154159 () V!7963)

(assert (=> d!59531 (= (get!2872 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!154159)))

(declare-fun b!237386 () Bool)

(declare-fun get!2874 (ValueCell!2775 V!7963) V!7963)

(assert (=> b!237386 (= e!154159 (get!2874 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!237387 () Bool)

(declare-fun get!2875 (ValueCell!2775 V!7963) V!7963)

(assert (=> b!237387 (= e!154159 (get!2875 (select (arr!5577 (_values!4386 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!554 (defaultEntry!4403 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59531 c!39576) b!237386))

(assert (= (and d!59531 (not c!39576)) b!237387))

(assert (=> b!237386 m!257911))

(assert (=> b!237386 m!257913))

(declare-fun m!258193 () Bool)

(assert (=> b!237386 m!258193))

(assert (=> b!237387 m!257911))

(assert (=> b!237387 m!257913))

(declare-fun m!258195 () Bool)

(assert (=> b!237387 m!258195))

(assert (=> b!237143 d!59531))

(declare-fun d!59533 () Bool)

(assert (=> d!59533 (= (validKeyInArray!0 (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5578 (_keys!6491 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!237144 d!59533))

(assert (=> b!237136 d!59533))

(declare-fun b!237388 () Bool)

(declare-fun e!154161 () Bool)

(assert (=> b!237388 (= e!154161 tp_is_empty!6237)))

(declare-fun condMapEmpty!10577 () Bool)

(declare-fun mapDefault!10577 () ValueCell!2775)

(assert (=> mapNonEmpty!10576 (= condMapEmpty!10577 (= mapRest!10576 ((as const (Array (_ BitVec 32) ValueCell!2775)) mapDefault!10577)))))

(declare-fun e!154160 () Bool)

(declare-fun mapRes!10577 () Bool)

(assert (=> mapNonEmpty!10576 (= tp!22321 (and e!154160 mapRes!10577))))

(declare-fun mapIsEmpty!10577 () Bool)

(assert (=> mapIsEmpty!10577 mapRes!10577))

(declare-fun mapNonEmpty!10577 () Bool)

(declare-fun tp!22322 () Bool)

(assert (=> mapNonEmpty!10577 (= mapRes!10577 (and tp!22322 e!154161))))

(declare-fun mapValue!10577 () ValueCell!2775)

(declare-fun mapRest!10577 () (Array (_ BitVec 32) ValueCell!2775))

(declare-fun mapKey!10577 () (_ BitVec 32))

(assert (=> mapNonEmpty!10577 (= mapRest!10576 (store mapRest!10577 mapKey!10577 mapValue!10577))))

(declare-fun b!237389 () Bool)

(assert (=> b!237389 (= e!154160 tp_is_empty!6237)))

(assert (= (and mapNonEmpty!10576 condMapEmpty!10577) mapIsEmpty!10577))

(assert (= (and mapNonEmpty!10576 (not condMapEmpty!10577)) mapNonEmpty!10577))

(assert (= (and mapNonEmpty!10577 ((_ is ValueCellFull!2775) mapValue!10577)) b!237388))

(assert (= (and mapNonEmpty!10576 ((_ is ValueCellFull!2775) mapDefault!10577)) b!237389))

(declare-fun m!258197 () Bool)

(assert (=> mapNonEmpty!10577 m!258197))

(declare-fun b_lambda!7981 () Bool)

(assert (= b_lambda!7977 (or (and b!237055 b_free!6375) b_lambda!7981)))

(declare-fun b_lambda!7983 () Bool)

(assert (= b_lambda!7979 (or (and b!237055 b_free!6375) b_lambda!7983)))

(check-sat (not d!59511) (not b!237305) (not b!237310) (not b!237248) (not b!237373) (not d!59519) (not b!237236) (not b!237386) (not bm!22066) (not b!237379) (not d!59469) (not d!59505) (not b!237235) (not b!237372) (not d!59499) tp_is_empty!6237 (not d!59487) (not bm!22057) (not b!237304) (not b_lambda!7981) (not d!59501) (not b!237370) (not b!237377) (not b_next!6375) (not b!237212) (not b!237324) (not b!237376) (not b!237375) (not b!237312) (not b!237211) (not d!59463) (not b!237209) (not bm!22063) (not d!59467) (not b!237315) (not b!237237) (not mapNonEmpty!10577) (not d!59497) (not d!59473) (not b!237336) (not d!59529) (not b!237265) (not b!237380) (not b!237327) (not d!59461) (not b!237378) (not b!237307) (not b!237277) (not b!237311) (not b!237387) (not b!237368) (not d!59503) (not b!237229) (not d!59513) (not d!59475) (not d!59527) (not d!59523) (not d!59521) (not b!237333) (not b!237247) (not d!59479) (not b!237234) (not d!59491) (not d!59509) (not d!59515) (not d!59507) (not bm!22060) (not b_lambda!7983) (not b!237334) (not d!59483) (not b!237228) (not b!237214) (not d!59517) (not b!237314) (not b_lambda!7975) (not d!59525) (not d!59477) (not b!237196) (not b!237357) (not b!237207) (not b!237226) b_and!13349 (not d!59493))
(check-sat b_and!13349 (not b_next!6375))
