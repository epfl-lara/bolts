; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76804 () Bool)

(assert start!76804)

(declare-fun b!898113 () Bool)

(declare-fun b_free!16011 () Bool)

(declare-fun b_next!16011 () Bool)

(assert (=> b!898113 (= b_free!16011 (not b_next!16011))))

(declare-fun tp!56099 () Bool)

(declare-fun b_and!26321 () Bool)

(assert (=> b!898113 (= tp!56099 b_and!26321)))

(declare-fun mapIsEmpty!29160 () Bool)

(declare-fun mapRes!29160 () Bool)

(assert (=> mapIsEmpty!29160 mapRes!29160))

(declare-fun res!607085 () Bool)

(declare-fun e!502390 () Bool)

(assert (=> start!76804 (=> (not res!607085) (not e!502390))))

(declare-datatypes ((array!52700 0))(
  ( (array!52701 (arr!25324 (Array (_ BitVec 32) (_ BitVec 64))) (size!25780 (_ BitVec 32))) )
))
(declare-datatypes ((V!29417 0))(
  ( (V!29418 (val!9220 Int)) )
))
(declare-datatypes ((ValueCell!8688 0))(
  ( (ValueCellFull!8688 (v!11707 V!29417)) (EmptyCell!8688) )
))
(declare-datatypes ((array!52702 0))(
  ( (array!52703 (arr!25325 (Array (_ BitVec 32) ValueCell!8688)) (size!25781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4392 0))(
  ( (LongMapFixedSize!4393 (defaultEntry!5408 Int) (mask!26125 (_ BitVec 32)) (extraKeys!5123 (_ BitVec 32)) (zeroValue!5227 V!29417) (minValue!5227 V!29417) (_size!2251 (_ BitVec 32)) (_keys!10177 array!52700) (_values!5414 array!52702) (_vacant!2251 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4392)

(declare-fun valid!1675 (LongMapFixedSize!4392) Bool)

(assert (=> start!76804 (= res!607085 (valid!1675 thiss!1181))))

(assert (=> start!76804 e!502390))

(declare-fun e!502392 () Bool)

(assert (=> start!76804 e!502392))

(assert (=> start!76804 true))

(declare-fun b!898111 () Bool)

(declare-fun e!502391 () Bool)

(declare-fun e!502394 () Bool)

(assert (=> b!898111 (= e!502391 (and e!502394 mapRes!29160))))

(declare-fun condMapEmpty!29160 () Bool)

(declare-fun mapDefault!29160 () ValueCell!8688)

(assert (=> b!898111 (= condMapEmpty!29160 (= (arr!25325 (_values!5414 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8688)) mapDefault!29160)))))

(declare-fun b!898112 () Bool)

(declare-fun e!502393 () Bool)

(assert (=> b!898112 (= e!502390 (not e!502393))))

(declare-fun res!607087 () Bool)

(assert (=> b!898112 (=> res!607087 e!502393)))

(declare-datatypes ((SeekEntryResult!8910 0))(
  ( (MissingZero!8910 (index!38010 (_ BitVec 32))) (Found!8910 (index!38011 (_ BitVec 32))) (Intermediate!8910 (undefined!9722 Bool) (index!38012 (_ BitVec 32)) (x!76532 (_ BitVec 32))) (Undefined!8910) (MissingVacant!8910 (index!38013 (_ BitVec 32))) )
))
(declare-fun lt!405411 () SeekEntryResult!8910)

(get-info :version)

(assert (=> b!898112 (= res!607087 (not ((_ is Found!8910) lt!405411)))))

(declare-fun e!502395 () Bool)

(assert (=> b!898112 e!502395))

(declare-fun res!607086 () Bool)

(assert (=> b!898112 (=> res!607086 e!502395)))

(assert (=> b!898112 (= res!607086 (not ((_ is Found!8910) lt!405411)))))

(declare-datatypes ((Unit!30501 0))(
  ( (Unit!30502) )
))
(declare-fun lt!405412 () Unit!30501)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!95 (array!52700 array!52702 (_ BitVec 32) (_ BitVec 32) V!29417 V!29417 (_ BitVec 64)) Unit!30501)

(assert (=> b!898112 (= lt!405412 (lemmaSeekEntryGivesInRangeIndex!95 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52700 (_ BitVec 32)) SeekEntryResult!8910)

(assert (=> b!898112 (= lt!405411 (seekEntry!0 key!785 (_keys!10177 thiss!1181) (mask!26125 thiss!1181)))))

(declare-fun mapNonEmpty!29160 () Bool)

(declare-fun tp!56100 () Bool)

(declare-fun e!502396 () Bool)

(assert (=> mapNonEmpty!29160 (= mapRes!29160 (and tp!56100 e!502396))))

(declare-fun mapRest!29160 () (Array (_ BitVec 32) ValueCell!8688))

(declare-fun mapKey!29160 () (_ BitVec 32))

(declare-fun mapValue!29160 () ValueCell!8688)

(assert (=> mapNonEmpty!29160 (= (arr!25325 (_values!5414 thiss!1181)) (store mapRest!29160 mapKey!29160 mapValue!29160))))

(declare-fun tp_is_empty!18339 () Bool)

(declare-fun array_inv!19848 (array!52700) Bool)

(declare-fun array_inv!19849 (array!52702) Bool)

(assert (=> b!898113 (= e!502392 (and tp!56099 tp_is_empty!18339 (array_inv!19848 (_keys!10177 thiss!1181)) (array_inv!19849 (_values!5414 thiss!1181)) e!502391))))

(declare-fun b!898114 () Bool)

(declare-fun res!607084 () Bool)

(assert (=> b!898114 (=> (not res!607084) (not e!502390))))

(assert (=> b!898114 (= res!607084 (not (= key!785 (bvneg key!785))))))

(declare-fun b!898115 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!898115 (= e!502393 (validMask!0 (mask!26125 thiss!1181)))))

(declare-datatypes ((tuple2!12052 0))(
  ( (tuple2!12053 (_1!6036 (_ BitVec 64)) (_2!6036 V!29417)) )
))
(declare-datatypes ((List!17914 0))(
  ( (Nil!17911) (Cons!17910 (h!19052 tuple2!12052) (t!25261 List!17914)) )
))
(declare-datatypes ((ListLongMap!10763 0))(
  ( (ListLongMap!10764 (toList!5397 List!17914)) )
))
(declare-fun contains!4396 (ListLongMap!10763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2640 (array!52700 array!52702 (_ BitVec 32) (_ BitVec 32) V!29417 V!29417 (_ BitVec 32) Int) ListLongMap!10763)

(assert (=> b!898115 (contains!4396 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411)))))

(declare-fun lt!405413 () Unit!30501)

(declare-fun lemmaValidKeyInArrayIsInListMap!233 (array!52700 array!52702 (_ BitVec 32) (_ BitVec 32) V!29417 V!29417 (_ BitVec 32) Int) Unit!30501)

(assert (=> b!898115 (= lt!405413 (lemmaValidKeyInArrayIsInListMap!233 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) (index!38011 lt!405411) (defaultEntry!5408 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!898115 (arrayContainsKey!0 (_keys!10177 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405414 () Unit!30501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52700 (_ BitVec 64) (_ BitVec 32)) Unit!30501)

(assert (=> b!898115 (= lt!405414 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10177 thiss!1181) key!785 (index!38011 lt!405411)))))

(declare-fun b!898116 () Bool)

(assert (=> b!898116 (= e!502396 tp_is_empty!18339)))

(declare-fun b!898117 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!898117 (= e!502395 (inRange!0 (index!38011 lt!405411) (mask!26125 thiss!1181)))))

(declare-fun b!898118 () Bool)

(assert (=> b!898118 (= e!502394 tp_is_empty!18339)))

(assert (= (and start!76804 res!607085) b!898114))

(assert (= (and b!898114 res!607084) b!898112))

(assert (= (and b!898112 (not res!607086)) b!898117))

(assert (= (and b!898112 (not res!607087)) b!898115))

(assert (= (and b!898111 condMapEmpty!29160) mapIsEmpty!29160))

(assert (= (and b!898111 (not condMapEmpty!29160)) mapNonEmpty!29160))

(assert (= (and mapNonEmpty!29160 ((_ is ValueCellFull!8688) mapValue!29160)) b!898116))

(assert (= (and b!898111 ((_ is ValueCellFull!8688) mapDefault!29160)) b!898118))

(assert (= b!898113 b!898111))

(assert (= start!76804 b!898113))

(declare-fun m!834733 () Bool)

(assert (=> b!898112 m!834733))

(declare-fun m!834735 () Bool)

(assert (=> b!898112 m!834735))

(declare-fun m!834737 () Bool)

(assert (=> b!898115 m!834737))

(declare-fun m!834739 () Bool)

(assert (=> b!898115 m!834739))

(declare-fun m!834741 () Bool)

(assert (=> b!898115 m!834741))

(declare-fun m!834743 () Bool)

(assert (=> b!898115 m!834743))

(assert (=> b!898115 m!834741))

(declare-fun m!834745 () Bool)

(assert (=> b!898115 m!834745))

(declare-fun m!834747 () Bool)

(assert (=> b!898115 m!834747))

(declare-fun m!834749 () Bool)

(assert (=> b!898115 m!834749))

(assert (=> b!898115 m!834745))

(declare-fun m!834751 () Bool)

(assert (=> mapNonEmpty!29160 m!834751))

(declare-fun m!834753 () Bool)

(assert (=> start!76804 m!834753))

(declare-fun m!834755 () Bool)

(assert (=> b!898113 m!834755))

(declare-fun m!834757 () Bool)

(assert (=> b!898113 m!834757))

(declare-fun m!834759 () Bool)

(assert (=> b!898117 m!834759))

(check-sat (not mapNonEmpty!29160) (not start!76804) (not b!898117) (not b!898115) (not b!898113) (not b_next!16011) b_and!26321 tp_is_empty!18339 (not b!898112))
(check-sat b_and!26321 (not b_next!16011))
(get-model)

(declare-fun d!111135 () Bool)

(assert (=> d!111135 (= (inRange!0 (index!38011 lt!405411) (mask!26125 thiss!1181)) (and (bvsge (index!38011 lt!405411) #b00000000000000000000000000000000) (bvslt (index!38011 lt!405411) (bvadd (mask!26125 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!898117 d!111135))

(declare-fun d!111137 () Bool)

(assert (=> d!111137 (= (array_inv!19848 (_keys!10177 thiss!1181)) (bvsge (size!25780 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898113 d!111137))

(declare-fun d!111139 () Bool)

(assert (=> d!111139 (= (array_inv!19849 (_values!5414 thiss!1181)) (bvsge (size!25781 (_values!5414 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898113 d!111139))

(declare-fun d!111141 () Bool)

(declare-fun res!607104 () Bool)

(declare-fun e!502425 () Bool)

(assert (=> d!111141 (=> res!607104 e!502425)))

(assert (=> d!111141 (= res!607104 (= (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111141 (= (arrayContainsKey!0 (_keys!10177 thiss!1181) key!785 #b00000000000000000000000000000000) e!502425)))

(declare-fun b!898147 () Bool)

(declare-fun e!502426 () Bool)

(assert (=> b!898147 (= e!502425 e!502426)))

(declare-fun res!607105 () Bool)

(assert (=> b!898147 (=> (not res!607105) (not e!502426))))

(assert (=> b!898147 (= res!607105 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25780 (_keys!10177 thiss!1181))))))

(declare-fun b!898148 () Bool)

(assert (=> b!898148 (= e!502426 (arrayContainsKey!0 (_keys!10177 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111141 (not res!607104)) b!898147))

(assert (= (and b!898147 res!607105) b!898148))

(declare-fun m!834789 () Bool)

(assert (=> d!111141 m!834789))

(declare-fun m!834791 () Bool)

(assert (=> b!898148 m!834791))

(assert (=> b!898115 d!111141))

(declare-fun d!111143 () Bool)

(assert (=> d!111143 (arrayContainsKey!0 (_keys!10177 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!405429 () Unit!30501)

(declare-fun choose!13 (array!52700 (_ BitVec 64) (_ BitVec 32)) Unit!30501)

(assert (=> d!111143 (= lt!405429 (choose!13 (_keys!10177 thiss!1181) key!785 (index!38011 lt!405411)))))

(assert (=> d!111143 (bvsge (index!38011 lt!405411) #b00000000000000000000000000000000)))

(assert (=> d!111143 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10177 thiss!1181) key!785 (index!38011 lt!405411)) lt!405429)))

(declare-fun bs!25202 () Bool)

(assert (= bs!25202 d!111143))

(assert (=> bs!25202 m!834737))

(declare-fun m!834793 () Bool)

(assert (=> bs!25202 m!834793))

(assert (=> b!898115 d!111143))

(declare-fun d!111145 () Bool)

(declare-fun e!502431 () Bool)

(assert (=> d!111145 e!502431))

(declare-fun res!607108 () Bool)

(assert (=> d!111145 (=> res!607108 e!502431)))

(declare-fun lt!405438 () Bool)

(assert (=> d!111145 (= res!607108 (not lt!405438))))

(declare-fun lt!405439 () Bool)

(assert (=> d!111145 (= lt!405438 lt!405439)))

(declare-fun lt!405441 () Unit!30501)

(declare-fun e!502432 () Unit!30501)

(assert (=> d!111145 (= lt!405441 e!502432)))

(declare-fun c!94834 () Bool)

(assert (=> d!111145 (= c!94834 lt!405439)))

(declare-fun containsKey!425 (List!17914 (_ BitVec 64)) Bool)

(assert (=> d!111145 (= lt!405439 (containsKey!425 (toList!5397 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181))) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411))))))

(assert (=> d!111145 (= (contains!4396 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411))) lt!405438)))

(declare-fun b!898155 () Bool)

(declare-fun lt!405440 () Unit!30501)

(assert (=> b!898155 (= e!502432 lt!405440)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!320 (List!17914 (_ BitVec 64)) Unit!30501)

(assert (=> b!898155 (= lt!405440 (lemmaContainsKeyImpliesGetValueByKeyDefined!320 (toList!5397 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181))) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411))))))

(declare-datatypes ((Option!461 0))(
  ( (Some!460 (v!11709 V!29417)) (None!459) )
))
(declare-fun isDefined!330 (Option!461) Bool)

(declare-fun getValueByKey!455 (List!17914 (_ BitVec 64)) Option!461)

(assert (=> b!898155 (isDefined!330 (getValueByKey!455 (toList!5397 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181))) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411))))))

(declare-fun b!898156 () Bool)

(declare-fun Unit!30505 () Unit!30501)

(assert (=> b!898156 (= e!502432 Unit!30505)))

(declare-fun b!898157 () Bool)

(assert (=> b!898157 (= e!502431 (isDefined!330 (getValueByKey!455 (toList!5397 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181))) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411)))))))

(assert (= (and d!111145 c!94834) b!898155))

(assert (= (and d!111145 (not c!94834)) b!898156))

(assert (= (and d!111145 (not res!607108)) b!898157))

(assert (=> d!111145 m!834745))

(declare-fun m!834795 () Bool)

(assert (=> d!111145 m!834795))

(assert (=> b!898155 m!834745))

(declare-fun m!834797 () Bool)

(assert (=> b!898155 m!834797))

(assert (=> b!898155 m!834745))

(declare-fun m!834799 () Bool)

(assert (=> b!898155 m!834799))

(assert (=> b!898155 m!834799))

(declare-fun m!834801 () Bool)

(assert (=> b!898155 m!834801))

(assert (=> b!898157 m!834745))

(assert (=> b!898157 m!834799))

(assert (=> b!898157 m!834799))

(assert (=> b!898157 m!834801))

(assert (=> b!898115 d!111145))

(declare-fun b!898200 () Bool)

(declare-fun e!502470 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!898200 (= e!502470 (validKeyInArray!0 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!898201 () Bool)

(declare-fun e!502459 () Bool)

(declare-fun lt!405488 () ListLongMap!10763)

(declare-fun apply!409 (ListLongMap!10763 (_ BitVec 64)) V!29417)

(declare-fun get!13324 (ValueCell!8688 V!29417) V!29417)

(declare-fun dynLambda!1304 (Int (_ BitVec 64)) V!29417)

(assert (=> b!898201 (= e!502459 (= (apply!409 lt!405488 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000)) (get!13324 (select (arr!25325 (_values!5414 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1304 (defaultEntry!5408 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!898201 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25781 (_values!5414 thiss!1181))))))

(assert (=> b!898201 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))))))

(declare-fun bm!39847 () Bool)

(declare-fun call!39856 () Bool)

(assert (=> bm!39847 (= call!39856 (contains!4396 lt!405488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898202 () Bool)

(declare-fun e!502463 () Bool)

(declare-fun call!39850 () Bool)

(assert (=> b!898202 (= e!502463 (not call!39850))))

(declare-fun b!898203 () Bool)

(declare-fun e!502464 () Unit!30501)

(declare-fun Unit!30506 () Unit!30501)

(assert (=> b!898203 (= e!502464 Unit!30506)))

(declare-fun b!898204 () Bool)

(declare-fun e!502462 () Bool)

(assert (=> b!898204 (= e!502462 (= (apply!409 lt!405488 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5227 thiss!1181)))))

(declare-fun b!898205 () Bool)

(declare-fun lt!405486 () Unit!30501)

(assert (=> b!898205 (= e!502464 lt!405486)))

(declare-fun lt!405504 () ListLongMap!10763)

(declare-fun getCurrentListMapNoExtraKeys!3293 (array!52700 array!52702 (_ BitVec 32) (_ BitVec 32) V!29417 V!29417 (_ BitVec 32) Int) ListLongMap!10763)

(assert (=> b!898205 (= lt!405504 (getCurrentListMapNoExtraKeys!3293 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)))))

(declare-fun lt!405502 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405502 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405503 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405503 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405501 () Unit!30501)

(declare-fun addStillContains!331 (ListLongMap!10763 (_ BitVec 64) V!29417 (_ BitVec 64)) Unit!30501)

(assert (=> b!898205 (= lt!405501 (addStillContains!331 lt!405504 lt!405502 (zeroValue!5227 thiss!1181) lt!405503))))

(declare-fun +!2545 (ListLongMap!10763 tuple2!12052) ListLongMap!10763)

(assert (=> b!898205 (contains!4396 (+!2545 lt!405504 (tuple2!12053 lt!405502 (zeroValue!5227 thiss!1181))) lt!405503)))

(declare-fun lt!405500 () Unit!30501)

(assert (=> b!898205 (= lt!405500 lt!405501)))

(declare-fun lt!405490 () ListLongMap!10763)

(assert (=> b!898205 (= lt!405490 (getCurrentListMapNoExtraKeys!3293 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)))))

(declare-fun lt!405507 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405507 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405487 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405487 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405505 () Unit!30501)

(declare-fun addApplyDifferent!331 (ListLongMap!10763 (_ BitVec 64) V!29417 (_ BitVec 64)) Unit!30501)

(assert (=> b!898205 (= lt!405505 (addApplyDifferent!331 lt!405490 lt!405507 (minValue!5227 thiss!1181) lt!405487))))

(assert (=> b!898205 (= (apply!409 (+!2545 lt!405490 (tuple2!12053 lt!405507 (minValue!5227 thiss!1181))) lt!405487) (apply!409 lt!405490 lt!405487))))

(declare-fun lt!405499 () Unit!30501)

(assert (=> b!898205 (= lt!405499 lt!405505)))

(declare-fun lt!405493 () ListLongMap!10763)

(assert (=> b!898205 (= lt!405493 (getCurrentListMapNoExtraKeys!3293 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)))))

(declare-fun lt!405497 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405497 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405489 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405489 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!405496 () Unit!30501)

(assert (=> b!898205 (= lt!405496 (addApplyDifferent!331 lt!405493 lt!405497 (zeroValue!5227 thiss!1181) lt!405489))))

(assert (=> b!898205 (= (apply!409 (+!2545 lt!405493 (tuple2!12053 lt!405497 (zeroValue!5227 thiss!1181))) lt!405489) (apply!409 lt!405493 lt!405489))))

(declare-fun lt!405498 () Unit!30501)

(assert (=> b!898205 (= lt!405498 lt!405496)))

(declare-fun lt!405491 () ListLongMap!10763)

(assert (=> b!898205 (= lt!405491 (getCurrentListMapNoExtraKeys!3293 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)))))

(declare-fun lt!405506 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405506 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!405495 () (_ BitVec 64))

(assert (=> b!898205 (= lt!405495 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!898205 (= lt!405486 (addApplyDifferent!331 lt!405491 lt!405506 (minValue!5227 thiss!1181) lt!405495))))

(assert (=> b!898205 (= (apply!409 (+!2545 lt!405491 (tuple2!12053 lt!405506 (minValue!5227 thiss!1181))) lt!405495) (apply!409 lt!405491 lt!405495))))

(declare-fun b!898206 () Bool)

(declare-fun e!502466 () ListLongMap!10763)

(declare-fun e!502471 () ListLongMap!10763)

(assert (=> b!898206 (= e!502466 e!502471)))

(declare-fun c!94848 () Bool)

(assert (=> b!898206 (= c!94848 (and (not (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!898207 () Bool)

(declare-fun e!502460 () Bool)

(assert (=> b!898207 (= e!502460 e!502459)))

(declare-fun res!607134 () Bool)

(assert (=> b!898207 (=> (not res!607134) (not e!502459))))

(assert (=> b!898207 (= res!607134 (contains!4396 lt!405488 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!898207 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))))))

(declare-fun b!898208 () Bool)

(declare-fun call!39853 () ListLongMap!10763)

(assert (=> b!898208 (= e!502471 call!39853)))

(declare-fun b!898209 () Bool)

(declare-fun c!94852 () Bool)

(assert (=> b!898209 (= c!94852 (and (not (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!502469 () ListLongMap!10763)

(assert (=> b!898209 (= e!502471 e!502469)))

(declare-fun d!111147 () Bool)

(declare-fun e!502467 () Bool)

(assert (=> d!111147 e!502467))

(declare-fun res!607133 () Bool)

(assert (=> d!111147 (=> (not res!607133) (not e!502467))))

(assert (=> d!111147 (= res!607133 (or (bvsge #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))))))))

(declare-fun lt!405492 () ListLongMap!10763)

(assert (=> d!111147 (= lt!405488 lt!405492)))

(declare-fun lt!405494 () Unit!30501)

(assert (=> d!111147 (= lt!405494 e!502464)))

(declare-fun c!94847 () Bool)

(declare-fun e!502468 () Bool)

(assert (=> d!111147 (= c!94847 e!502468)))

(declare-fun res!607132 () Bool)

(assert (=> d!111147 (=> (not res!607132) (not e!502468))))

(assert (=> d!111147 (= res!607132 (bvslt #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))))))

(assert (=> d!111147 (= lt!405492 e!502466)))

(declare-fun c!94851 () Bool)

(assert (=> d!111147 (= c!94851 (and (not (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111147 (validMask!0 (mask!26125 thiss!1181))))

(assert (=> d!111147 (= (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)) lt!405488)))

(declare-fun b!898210 () Bool)

(declare-fun call!39851 () ListLongMap!10763)

(assert (=> b!898210 (= e!502466 (+!2545 call!39851 (tuple2!12053 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5227 thiss!1181))))))

(declare-fun bm!39848 () Bool)

(assert (=> bm!39848 (= call!39850 (contains!4396 lt!405488 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!898211 () Bool)

(assert (=> b!898211 (= e!502469 call!39853)))

(declare-fun b!898212 () Bool)

(assert (=> b!898212 (= e!502468 (validKeyInArray!0 (select (arr!25324 (_keys!10177 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39849 () Bool)

(assert (=> bm!39849 (= call!39853 call!39851)))

(declare-fun call!39855 () ListLongMap!10763)

(declare-fun call!39854 () ListLongMap!10763)

(declare-fun bm!39850 () Bool)

(declare-fun call!39852 () ListLongMap!10763)

(assert (=> bm!39850 (= call!39851 (+!2545 (ite c!94851 call!39854 (ite c!94848 call!39852 call!39855)) (ite (or c!94851 c!94848) (tuple2!12053 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5227 thiss!1181)) (tuple2!12053 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5227 thiss!1181)))))))

(declare-fun bm!39851 () Bool)

(assert (=> bm!39851 (= call!39854 (getCurrentListMapNoExtraKeys!3293 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)))))

(declare-fun bm!39852 () Bool)

(assert (=> bm!39852 (= call!39852 call!39854)))

(declare-fun b!898213 () Bool)

(declare-fun res!607127 () Bool)

(assert (=> b!898213 (=> (not res!607127) (not e!502467))))

(declare-fun e!502461 () Bool)

(assert (=> b!898213 (= res!607127 e!502461)))

(declare-fun c!94849 () Bool)

(assert (=> b!898213 (= c!94849 (not (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!898214 () Bool)

(declare-fun e!502465 () Bool)

(assert (=> b!898214 (= e!502465 (= (apply!409 lt!405488 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5227 thiss!1181)))))

(declare-fun bm!39853 () Bool)

(assert (=> bm!39853 (= call!39855 call!39852)))

(declare-fun b!898215 () Bool)

(assert (=> b!898215 (= e!502461 e!502465)))

(declare-fun res!607128 () Bool)

(assert (=> b!898215 (= res!607128 call!39856)))

(assert (=> b!898215 (=> (not res!607128) (not e!502465))))

(declare-fun b!898216 () Bool)

(assert (=> b!898216 (= e!502469 call!39855)))

(declare-fun b!898217 () Bool)

(declare-fun res!607129 () Bool)

(assert (=> b!898217 (=> (not res!607129) (not e!502467))))

(assert (=> b!898217 (= res!607129 e!502460)))

(declare-fun res!607131 () Bool)

(assert (=> b!898217 (=> res!607131 e!502460)))

(assert (=> b!898217 (= res!607131 (not e!502470))))

(declare-fun res!607130 () Bool)

(assert (=> b!898217 (=> (not res!607130) (not e!502470))))

(assert (=> b!898217 (= res!607130 (bvslt #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))))))

(declare-fun b!898218 () Bool)

(assert (=> b!898218 (= e!502463 e!502462)))

(declare-fun res!607135 () Bool)

(assert (=> b!898218 (= res!607135 call!39850)))

(assert (=> b!898218 (=> (not res!607135) (not e!502462))))

(declare-fun b!898219 () Bool)

(assert (=> b!898219 (= e!502461 (not call!39856))))

(declare-fun b!898220 () Bool)

(assert (=> b!898220 (= e!502467 e!502463)))

(declare-fun c!94850 () Bool)

(assert (=> b!898220 (= c!94850 (not (= (bvand (extraKeys!5123 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!111147 c!94851) b!898210))

(assert (= (and d!111147 (not c!94851)) b!898206))

(assert (= (and b!898206 c!94848) b!898208))

(assert (= (and b!898206 (not c!94848)) b!898209))

(assert (= (and b!898209 c!94852) b!898211))

(assert (= (and b!898209 (not c!94852)) b!898216))

(assert (= (or b!898211 b!898216) bm!39853))

(assert (= (or b!898208 bm!39853) bm!39852))

(assert (= (or b!898208 b!898211) bm!39849))

(assert (= (or b!898210 bm!39852) bm!39851))

(assert (= (or b!898210 bm!39849) bm!39850))

(assert (= (and d!111147 res!607132) b!898212))

(assert (= (and d!111147 c!94847) b!898205))

(assert (= (and d!111147 (not c!94847)) b!898203))

(assert (= (and d!111147 res!607133) b!898217))

(assert (= (and b!898217 res!607130) b!898200))

(assert (= (and b!898217 (not res!607131)) b!898207))

(assert (= (and b!898207 res!607134) b!898201))

(assert (= (and b!898217 res!607129) b!898213))

(assert (= (and b!898213 c!94849) b!898215))

(assert (= (and b!898213 (not c!94849)) b!898219))

(assert (= (and b!898215 res!607128) b!898214))

(assert (= (or b!898215 b!898219) bm!39847))

(assert (= (and b!898213 res!607127) b!898220))

(assert (= (and b!898220 c!94850) b!898218))

(assert (= (and b!898220 (not c!94850)) b!898202))

(assert (= (and b!898218 res!607135) b!898204))

(assert (= (or b!898218 b!898202) bm!39848))

(declare-fun b_lambda!12989 () Bool)

(assert (=> (not b_lambda!12989) (not b!898201)))

(declare-fun t!25263 () Bool)

(declare-fun tb!5199 () Bool)

(assert (=> (and b!898113 (= (defaultEntry!5408 thiss!1181) (defaultEntry!5408 thiss!1181)) t!25263) tb!5199))

(declare-fun result!10153 () Bool)

(assert (=> tb!5199 (= result!10153 tp_is_empty!18339)))

(assert (=> b!898201 t!25263))

(declare-fun b_and!26325 () Bool)

(assert (= b_and!26321 (and (=> t!25263 result!10153) b_and!26325)))

(declare-fun m!834803 () Bool)

(assert (=> bm!39850 m!834803))

(declare-fun m!834805 () Bool)

(assert (=> bm!39851 m!834805))

(declare-fun m!834807 () Bool)

(assert (=> bm!39848 m!834807))

(declare-fun m!834809 () Bool)

(assert (=> bm!39847 m!834809))

(declare-fun m!834811 () Bool)

(assert (=> b!898214 m!834811))

(declare-fun m!834813 () Bool)

(assert (=> b!898210 m!834813))

(assert (=> b!898200 m!834789))

(assert (=> b!898200 m!834789))

(declare-fun m!834815 () Bool)

(assert (=> b!898200 m!834815))

(assert (=> b!898212 m!834789))

(assert (=> b!898212 m!834789))

(assert (=> b!898212 m!834815))

(assert (=> d!111147 m!834739))

(assert (=> b!898207 m!834789))

(assert (=> b!898207 m!834789))

(declare-fun m!834817 () Bool)

(assert (=> b!898207 m!834817))

(declare-fun m!834819 () Bool)

(assert (=> b!898205 m!834819))

(declare-fun m!834821 () Bool)

(assert (=> b!898205 m!834821))

(declare-fun m!834823 () Bool)

(assert (=> b!898205 m!834823))

(declare-fun m!834825 () Bool)

(assert (=> b!898205 m!834825))

(declare-fun m!834827 () Bool)

(assert (=> b!898205 m!834827))

(declare-fun m!834829 () Bool)

(assert (=> b!898205 m!834829))

(declare-fun m!834831 () Bool)

(assert (=> b!898205 m!834831))

(declare-fun m!834833 () Bool)

(assert (=> b!898205 m!834833))

(declare-fun m!834835 () Bool)

(assert (=> b!898205 m!834835))

(assert (=> b!898205 m!834831))

(declare-fun m!834837 () Bool)

(assert (=> b!898205 m!834837))

(assert (=> b!898205 m!834835))

(declare-fun m!834839 () Bool)

(assert (=> b!898205 m!834839))

(assert (=> b!898205 m!834805))

(declare-fun m!834841 () Bool)

(assert (=> b!898205 m!834841))

(declare-fun m!834843 () Bool)

(assert (=> b!898205 m!834843))

(assert (=> b!898205 m!834789))

(assert (=> b!898205 m!834843))

(declare-fun m!834845 () Bool)

(assert (=> b!898205 m!834845))

(declare-fun m!834847 () Bool)

(assert (=> b!898205 m!834847))

(assert (=> b!898205 m!834823))

(declare-fun m!834849 () Bool)

(assert (=> b!898204 m!834849))

(assert (=> b!898201 m!834789))

(declare-fun m!834851 () Bool)

(assert (=> b!898201 m!834851))

(assert (=> b!898201 m!834789))

(declare-fun m!834853 () Bool)

(assert (=> b!898201 m!834853))

(declare-fun m!834855 () Bool)

(assert (=> b!898201 m!834855))

(declare-fun m!834857 () Bool)

(assert (=> b!898201 m!834857))

(assert (=> b!898201 m!834853))

(assert (=> b!898201 m!834855))

(assert (=> b!898115 d!111147))

(declare-fun d!111149 () Bool)

(declare-fun e!502474 () Bool)

(assert (=> d!111149 e!502474))

(declare-fun res!607138 () Bool)

(assert (=> d!111149 (=> (not res!607138) (not e!502474))))

(assert (=> d!111149 (= res!607138 (and (bvsge (index!38011 lt!405411) #b00000000000000000000000000000000) (bvslt (index!38011 lt!405411) (size!25780 (_keys!10177 thiss!1181)))))))

(declare-fun lt!405510 () Unit!30501)

(declare-fun choose!1496 (array!52700 array!52702 (_ BitVec 32) (_ BitVec 32) V!29417 V!29417 (_ BitVec 32) Int) Unit!30501)

(assert (=> d!111149 (= lt!405510 (choose!1496 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) (index!38011 lt!405411) (defaultEntry!5408 thiss!1181)))))

(assert (=> d!111149 (validMask!0 (mask!26125 thiss!1181))))

(assert (=> d!111149 (= (lemmaValidKeyInArrayIsInListMap!233 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) (index!38011 lt!405411) (defaultEntry!5408 thiss!1181)) lt!405510)))

(declare-fun b!898225 () Bool)

(assert (=> b!898225 (= e!502474 (contains!4396 (getCurrentListMap!2640 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5408 thiss!1181)) (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405411))))))

(assert (= (and d!111149 res!607138) b!898225))

(declare-fun m!834859 () Bool)

(assert (=> d!111149 m!834859))

(assert (=> d!111149 m!834739))

(assert (=> b!898225 m!834741))

(assert (=> b!898225 m!834745))

(assert (=> b!898225 m!834741))

(assert (=> b!898225 m!834745))

(assert (=> b!898225 m!834747))

(assert (=> b!898115 d!111149))

(declare-fun d!111151 () Bool)

(assert (=> d!111151 (= (validMask!0 (mask!26125 thiss!1181)) (and (or (= (mask!26125 thiss!1181) #b00000000000000000000000000000111) (= (mask!26125 thiss!1181) #b00000000000000000000000000001111) (= (mask!26125 thiss!1181) #b00000000000000000000000000011111) (= (mask!26125 thiss!1181) #b00000000000000000000000000111111) (= (mask!26125 thiss!1181) #b00000000000000000000000001111111) (= (mask!26125 thiss!1181) #b00000000000000000000000011111111) (= (mask!26125 thiss!1181) #b00000000000000000000000111111111) (= (mask!26125 thiss!1181) #b00000000000000000000001111111111) (= (mask!26125 thiss!1181) #b00000000000000000000011111111111) (= (mask!26125 thiss!1181) #b00000000000000000000111111111111) (= (mask!26125 thiss!1181) #b00000000000000000001111111111111) (= (mask!26125 thiss!1181) #b00000000000000000011111111111111) (= (mask!26125 thiss!1181) #b00000000000000000111111111111111) (= (mask!26125 thiss!1181) #b00000000000000001111111111111111) (= (mask!26125 thiss!1181) #b00000000000000011111111111111111) (= (mask!26125 thiss!1181) #b00000000000000111111111111111111) (= (mask!26125 thiss!1181) #b00000000000001111111111111111111) (= (mask!26125 thiss!1181) #b00000000000011111111111111111111) (= (mask!26125 thiss!1181) #b00000000000111111111111111111111) (= (mask!26125 thiss!1181) #b00000000001111111111111111111111) (= (mask!26125 thiss!1181) #b00000000011111111111111111111111) (= (mask!26125 thiss!1181) #b00000000111111111111111111111111) (= (mask!26125 thiss!1181) #b00000001111111111111111111111111) (= (mask!26125 thiss!1181) #b00000011111111111111111111111111) (= (mask!26125 thiss!1181) #b00000111111111111111111111111111) (= (mask!26125 thiss!1181) #b00001111111111111111111111111111) (= (mask!26125 thiss!1181) #b00011111111111111111111111111111) (= (mask!26125 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26125 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!898115 d!111151))

(declare-fun d!111153 () Bool)

(declare-fun e!502477 () Bool)

(assert (=> d!111153 e!502477))

(declare-fun res!607141 () Bool)

(assert (=> d!111153 (=> res!607141 e!502477)))

(declare-fun lt!405516 () SeekEntryResult!8910)

(assert (=> d!111153 (= res!607141 (not ((_ is Found!8910) lt!405516)))))

(assert (=> d!111153 (= lt!405516 (seekEntry!0 key!785 (_keys!10177 thiss!1181) (mask!26125 thiss!1181)))))

(declare-fun lt!405515 () Unit!30501)

(declare-fun choose!1497 (array!52700 array!52702 (_ BitVec 32) (_ BitVec 32) V!29417 V!29417 (_ BitVec 64)) Unit!30501)

(assert (=> d!111153 (= lt!405515 (choose!1497 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) key!785))))

(assert (=> d!111153 (validMask!0 (mask!26125 thiss!1181))))

(assert (=> d!111153 (= (lemmaSeekEntryGivesInRangeIndex!95 (_keys!10177 thiss!1181) (_values!5414 thiss!1181) (mask!26125 thiss!1181) (extraKeys!5123 thiss!1181) (zeroValue!5227 thiss!1181) (minValue!5227 thiss!1181) key!785) lt!405515)))

(declare-fun b!898228 () Bool)

(assert (=> b!898228 (= e!502477 (inRange!0 (index!38011 lt!405516) (mask!26125 thiss!1181)))))

(assert (= (and d!111153 (not res!607141)) b!898228))

(assert (=> d!111153 m!834735))

(declare-fun m!834861 () Bool)

(assert (=> d!111153 m!834861))

(assert (=> d!111153 m!834739))

(declare-fun m!834863 () Bool)

(assert (=> b!898228 m!834863))

(assert (=> b!898112 d!111153))

(declare-fun b!898241 () Bool)

(declare-fun e!502486 () SeekEntryResult!8910)

(declare-fun e!502485 () SeekEntryResult!8910)

(assert (=> b!898241 (= e!502486 e!502485)))

(declare-fun lt!405525 () (_ BitVec 64))

(declare-fun lt!405528 () SeekEntryResult!8910)

(assert (=> b!898241 (= lt!405525 (select (arr!25324 (_keys!10177 thiss!1181)) (index!38012 lt!405528)))))

(declare-fun c!94861 () Bool)

(assert (=> b!898241 (= c!94861 (= lt!405525 key!785))))

(declare-fun b!898242 () Bool)

(declare-fun c!94860 () Bool)

(assert (=> b!898242 (= c!94860 (= lt!405525 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!502484 () SeekEntryResult!8910)

(assert (=> b!898242 (= e!502485 e!502484)))

(declare-fun b!898243 () Bool)

(assert (=> b!898243 (= e!502484 (MissingZero!8910 (index!38012 lt!405528)))))

(declare-fun b!898244 () Bool)

(declare-fun lt!405527 () SeekEntryResult!8910)

(assert (=> b!898244 (= e!502484 (ite ((_ is MissingVacant!8910) lt!405527) (MissingZero!8910 (index!38013 lt!405527)) lt!405527))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52700 (_ BitVec 32)) SeekEntryResult!8910)

(assert (=> b!898244 (= lt!405527 (seekKeyOrZeroReturnVacant!0 (x!76532 lt!405528) (index!38012 lt!405528) (index!38012 lt!405528) key!785 (_keys!10177 thiss!1181) (mask!26125 thiss!1181)))))

(declare-fun b!898246 () Bool)

(assert (=> b!898246 (= e!502485 (Found!8910 (index!38012 lt!405528)))))

(declare-fun d!111155 () Bool)

(declare-fun lt!405526 () SeekEntryResult!8910)

(assert (=> d!111155 (and (or ((_ is MissingVacant!8910) lt!405526) (not ((_ is Found!8910) lt!405526)) (and (bvsge (index!38011 lt!405526) #b00000000000000000000000000000000) (bvslt (index!38011 lt!405526) (size!25780 (_keys!10177 thiss!1181))))) (not ((_ is MissingVacant!8910) lt!405526)) (or (not ((_ is Found!8910) lt!405526)) (= (select (arr!25324 (_keys!10177 thiss!1181)) (index!38011 lt!405526)) key!785)))))

(assert (=> d!111155 (= lt!405526 e!502486)))

(declare-fun c!94859 () Bool)

(assert (=> d!111155 (= c!94859 (and ((_ is Intermediate!8910) lt!405528) (undefined!9722 lt!405528)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52700 (_ BitVec 32)) SeekEntryResult!8910)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111155 (= lt!405528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26125 thiss!1181)) key!785 (_keys!10177 thiss!1181) (mask!26125 thiss!1181)))))

(assert (=> d!111155 (validMask!0 (mask!26125 thiss!1181))))

(assert (=> d!111155 (= (seekEntry!0 key!785 (_keys!10177 thiss!1181) (mask!26125 thiss!1181)) lt!405526)))

(declare-fun b!898245 () Bool)

(assert (=> b!898245 (= e!502486 Undefined!8910)))

(assert (= (and d!111155 c!94859) b!898245))

(assert (= (and d!111155 (not c!94859)) b!898241))

(assert (= (and b!898241 c!94861) b!898246))

(assert (= (and b!898241 (not c!94861)) b!898242))

(assert (= (and b!898242 c!94860) b!898243))

(assert (= (and b!898242 (not c!94860)) b!898244))

(declare-fun m!834865 () Bool)

(assert (=> b!898241 m!834865))

(declare-fun m!834867 () Bool)

(assert (=> b!898244 m!834867))

(declare-fun m!834869 () Bool)

(assert (=> d!111155 m!834869))

(declare-fun m!834871 () Bool)

(assert (=> d!111155 m!834871))

(assert (=> d!111155 m!834871))

(declare-fun m!834873 () Bool)

(assert (=> d!111155 m!834873))

(assert (=> d!111155 m!834739))

(assert (=> b!898112 d!111155))

(declare-fun d!111157 () Bool)

(declare-fun res!607148 () Bool)

(declare-fun e!502489 () Bool)

(assert (=> d!111157 (=> (not res!607148) (not e!502489))))

(declare-fun simpleValid!322 (LongMapFixedSize!4392) Bool)

(assert (=> d!111157 (= res!607148 (simpleValid!322 thiss!1181))))

(assert (=> d!111157 (= (valid!1675 thiss!1181) e!502489)))

(declare-fun b!898253 () Bool)

(declare-fun res!607149 () Bool)

(assert (=> b!898253 (=> (not res!607149) (not e!502489))))

(declare-fun arrayCountValidKeys!0 (array!52700 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!898253 (= res!607149 (= (arrayCountValidKeys!0 (_keys!10177 thiss!1181) #b00000000000000000000000000000000 (size!25780 (_keys!10177 thiss!1181))) (_size!2251 thiss!1181)))))

(declare-fun b!898254 () Bool)

(declare-fun res!607150 () Bool)

(assert (=> b!898254 (=> (not res!607150) (not e!502489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52700 (_ BitVec 32)) Bool)

(assert (=> b!898254 (= res!607150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10177 thiss!1181) (mask!26125 thiss!1181)))))

(declare-fun b!898255 () Bool)

(declare-datatypes ((List!17915 0))(
  ( (Nil!17912) (Cons!17911 (h!19053 (_ BitVec 64)) (t!25264 List!17915)) )
))
(declare-fun arrayNoDuplicates!0 (array!52700 (_ BitVec 32) List!17915) Bool)

(assert (=> b!898255 (= e!502489 (arrayNoDuplicates!0 (_keys!10177 thiss!1181) #b00000000000000000000000000000000 Nil!17912))))

(assert (= (and d!111157 res!607148) b!898253))

(assert (= (and b!898253 res!607149) b!898254))

(assert (= (and b!898254 res!607150) b!898255))

(declare-fun m!834875 () Bool)

(assert (=> d!111157 m!834875))

(declare-fun m!834877 () Bool)

(assert (=> b!898253 m!834877))

(declare-fun m!834879 () Bool)

(assert (=> b!898254 m!834879))

(declare-fun m!834881 () Bool)

(assert (=> b!898255 m!834881))

(assert (=> start!76804 d!111157))

(declare-fun b!898262 () Bool)

(declare-fun e!502494 () Bool)

(assert (=> b!898262 (= e!502494 tp_is_empty!18339)))

(declare-fun condMapEmpty!29166 () Bool)

(declare-fun mapDefault!29166 () ValueCell!8688)

(assert (=> mapNonEmpty!29160 (= condMapEmpty!29166 (= mapRest!29160 ((as const (Array (_ BitVec 32) ValueCell!8688)) mapDefault!29166)))))

(declare-fun e!502495 () Bool)

(declare-fun mapRes!29166 () Bool)

(assert (=> mapNonEmpty!29160 (= tp!56100 (and e!502495 mapRes!29166))))

(declare-fun b!898263 () Bool)

(assert (=> b!898263 (= e!502495 tp_is_empty!18339)))

(declare-fun mapNonEmpty!29166 () Bool)

(declare-fun tp!56109 () Bool)

(assert (=> mapNonEmpty!29166 (= mapRes!29166 (and tp!56109 e!502494))))

(declare-fun mapKey!29166 () (_ BitVec 32))

(declare-fun mapValue!29166 () ValueCell!8688)

(declare-fun mapRest!29166 () (Array (_ BitVec 32) ValueCell!8688))

(assert (=> mapNonEmpty!29166 (= mapRest!29160 (store mapRest!29166 mapKey!29166 mapValue!29166))))

(declare-fun mapIsEmpty!29166 () Bool)

(assert (=> mapIsEmpty!29166 mapRes!29166))

(assert (= (and mapNonEmpty!29160 condMapEmpty!29166) mapIsEmpty!29166))

(assert (= (and mapNonEmpty!29160 (not condMapEmpty!29166)) mapNonEmpty!29166))

(assert (= (and mapNonEmpty!29166 ((_ is ValueCellFull!8688) mapValue!29166)) b!898262))

(assert (= (and mapNonEmpty!29160 ((_ is ValueCellFull!8688) mapDefault!29166)) b!898263))

(declare-fun m!834883 () Bool)

(assert (=> mapNonEmpty!29166 m!834883))

(declare-fun b_lambda!12991 () Bool)

(assert (= b_lambda!12989 (or (and b!898113 b_free!16011) b_lambda!12991)))

(check-sat (not bm!39850) (not b!898201) (not b!898212) (not bm!39847) (not b!898254) (not b!898157) (not d!111143) (not b!898214) (not b!898225) (not bm!39851) (not mapNonEmpty!29166) (not bm!39848) (not b!898205) (not d!111157) (not b!898207) (not b!898255) (not b!898228) (not b!898204) (not d!111149) (not d!111155) (not d!111153) (not b!898200) (not d!111145) (not b_next!16011) (not d!111147) (not b!898210) (not b!898253) tp_is_empty!18339 b_and!26325 (not b!898155) (not b!898244) (not b!898148) (not b_lambda!12991))
(check-sat b_and!26325 (not b_next!16011))
