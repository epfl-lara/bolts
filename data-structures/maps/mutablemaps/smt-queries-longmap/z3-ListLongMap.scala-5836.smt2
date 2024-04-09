; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75396 () Bool)

(assert start!75396)

(declare-fun b!887416 () Bool)

(declare-fun b_free!15519 () Bool)

(declare-fun b_next!15519 () Bool)

(assert (=> b!887416 (= b_free!15519 (not b_next!15519))))

(declare-fun tp!54495 () Bool)

(declare-fun b_and!25759 () Bool)

(assert (=> b!887416 (= tp!54495 b_and!25759)))

(declare-fun b!887411 () Bool)

(declare-fun e!494251 () Bool)

(declare-fun tp_is_empty!17847 () Bool)

(assert (=> b!887411 (= e!494251 tp_is_empty!17847)))

(declare-fun b!887412 () Bool)

(declare-fun e!494252 () Bool)

(declare-fun e!494253 () Bool)

(assert (=> b!887412 (= e!494252 e!494253)))

(declare-fun b!887413 () Bool)

(declare-fun e!494246 () Bool)

(assert (=> b!887413 (= e!494246 e!494252)))

(declare-fun res!602181 () Bool)

(declare-fun e!494250 () Bool)

(assert (=> start!75396 (=> (not res!602181) (not e!494250))))

(declare-datatypes ((V!28761 0))(
  ( (V!28762 (val!8974 Int)) )
))
(declare-datatypes ((ValueCell!8442 0))(
  ( (ValueCellFull!8442 (v!11426 V!28761)) (EmptyCell!8442) )
))
(declare-datatypes ((array!51642 0))(
  ( (array!51643 (arr!24832 (Array (_ BitVec 32) ValueCell!8442)) (size!25273 (_ BitVec 32))) )
))
(declare-datatypes ((array!51644 0))(
  ( (array!51645 (arr!24833 (Array (_ BitVec 32) (_ BitVec 64))) (size!25274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3900 0))(
  ( (LongMapFixedSize!3901 (defaultEntry!5141 Int) (mask!25534 (_ BitVec 32)) (extraKeys!4835 (_ BitVec 32)) (zeroValue!4939 V!28761) (minValue!4939 V!28761) (_size!2005 (_ BitVec 32)) (_keys!9814 array!51644) (_values!5126 array!51642) (_vacant!2005 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1054 0))(
  ( (Cell!1055 (v!11427 LongMapFixedSize!3900)) )
))
(declare-datatypes ((LongMap!1054 0))(
  ( (LongMap!1055 (underlying!538 Cell!1054)) )
))
(declare-fun thiss!833 () LongMap!1054)

(declare-fun valid!1509 (LongMap!1054) Bool)

(assert (=> start!75396 (= res!602181 (valid!1509 thiss!833))))

(assert (=> start!75396 e!494250))

(assert (=> start!75396 e!494246))

(assert (=> start!75396 true))

(declare-fun mapIsEmpty!28294 () Bool)

(declare-fun mapRes!28294 () Bool)

(assert (=> mapIsEmpty!28294 mapRes!28294))

(declare-fun b!887414 () Bool)

(declare-fun e!494247 () Bool)

(assert (=> b!887414 (= e!494247 tp_is_empty!17847)))

(declare-fun lt!401359 () V!28761)

(declare-fun key!673 () (_ BitVec 64))

(declare-fun e!494249 () Bool)

(declare-fun b!887415 () Bool)

(declare-fun dynLambda!1283 (Int (_ BitVec 64)) V!28761)

(assert (=> b!887415 (= e!494249 (not (= lt!401359 (dynLambda!1283 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) key!673))))))

(declare-fun e!494254 () Bool)

(declare-fun array_inv!19520 (array!51644) Bool)

(declare-fun array_inv!19521 (array!51642) Bool)

(assert (=> b!887416 (= e!494253 (and tp!54495 tp_is_empty!17847 (array_inv!19520 (_keys!9814 (v!11427 (underlying!538 thiss!833)))) (array_inv!19521 (_values!5126 (v!11427 (underlying!538 thiss!833)))) e!494254))))

(declare-fun b!887417 () Bool)

(assert (=> b!887417 (= e!494250 e!494249)))

(declare-fun c!93624 () Bool)

(declare-fun contains!4304 (LongMap!1054 (_ BitVec 64)) Bool)

(assert (=> b!887417 (= c!93624 (contains!4304 thiss!833 key!673))))

(declare-fun apply!394 (LongMapFixedSize!3900 (_ BitVec 64)) V!28761)

(assert (=> b!887417 (= lt!401359 (apply!394 (v!11427 (underlying!538 thiss!833)) key!673))))

(declare-fun mapNonEmpty!28294 () Bool)

(declare-fun tp!54496 () Bool)

(assert (=> mapNonEmpty!28294 (= mapRes!28294 (and tp!54496 e!494251))))

(declare-fun mapRest!28294 () (Array (_ BitVec 32) ValueCell!8442))

(declare-fun mapValue!28294 () ValueCell!8442)

(declare-fun mapKey!28294 () (_ BitVec 32))

(assert (=> mapNonEmpty!28294 (= (arr!24832 (_values!5126 (v!11427 (underlying!538 thiss!833)))) (store mapRest!28294 mapKey!28294 mapValue!28294))))

(declare-fun b!887418 () Bool)

(declare-datatypes ((Option!439 0))(
  ( (Some!438 (v!11428 V!28761)) (None!437) )
))
(declare-fun get!13129 (Option!439) V!28761)

(declare-datatypes ((tuple2!11946 0))(
  ( (tuple2!11947 (_1!5983 (_ BitVec 64)) (_2!5983 V!28761)) )
))
(declare-datatypes ((List!17765 0))(
  ( (Nil!17762) (Cons!17761 (h!18892 tuple2!11946) (t!25064 List!17765)) )
))
(declare-fun getValueByKey!433 (List!17765 (_ BitVec 64)) Option!439)

(declare-datatypes ((ListLongMap!10657 0))(
  ( (ListLongMap!10658 (toList!5344 List!17765)) )
))
(declare-fun map!12086 (LongMap!1054) ListLongMap!10657)

(assert (=> b!887418 (= e!494249 (not (= lt!401359 (get!13129 (getValueByKey!433 (toList!5344 (map!12086 thiss!833)) key!673)))))))

(declare-fun b!887419 () Bool)

(assert (=> b!887419 (= e!494254 (and e!494247 mapRes!28294))))

(declare-fun condMapEmpty!28294 () Bool)

(declare-fun mapDefault!28294 () ValueCell!8442)

(assert (=> b!887419 (= condMapEmpty!28294 (= (arr!24832 (_values!5126 (v!11427 (underlying!538 thiss!833)))) ((as const (Array (_ BitVec 32) ValueCell!8442)) mapDefault!28294)))))

(assert (= (and start!75396 res!602181) b!887417))

(assert (= (and b!887417 c!93624) b!887418))

(assert (= (and b!887417 (not c!93624)) b!887415))

(assert (= (and b!887419 condMapEmpty!28294) mapIsEmpty!28294))

(assert (= (and b!887419 (not condMapEmpty!28294)) mapNonEmpty!28294))

(get-info :version)

(assert (= (and mapNonEmpty!28294 ((_ is ValueCellFull!8442) mapValue!28294)) b!887411))

(assert (= (and b!887419 ((_ is ValueCellFull!8442) mapDefault!28294)) b!887414))

(assert (= b!887416 b!887419))

(assert (= b!887412 b!887416))

(assert (= b!887413 b!887412))

(assert (= start!75396 b!887413))

(declare-fun b_lambda!12879 () Bool)

(assert (=> (not b_lambda!12879) (not b!887415)))

(declare-fun t!25063 () Bool)

(declare-fun tb!5149 () Bool)

(assert (=> (and b!887416 (= (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) (defaultEntry!5141 (v!11427 (underlying!538 thiss!833)))) t!25063) tb!5149))

(declare-fun result!9985 () Bool)

(assert (=> tb!5149 (= result!9985 tp_is_empty!17847)))

(assert (=> b!887415 t!25063))

(declare-fun b_and!25761 () Bool)

(assert (= b_and!25759 (and (=> t!25063 result!9985) b_and!25761)))

(declare-fun m!827121 () Bool)

(assert (=> b!887418 m!827121))

(declare-fun m!827123 () Bool)

(assert (=> b!887418 m!827123))

(assert (=> b!887418 m!827123))

(declare-fun m!827125 () Bool)

(assert (=> b!887418 m!827125))

(declare-fun m!827127 () Bool)

(assert (=> start!75396 m!827127))

(declare-fun m!827129 () Bool)

(assert (=> b!887417 m!827129))

(declare-fun m!827131 () Bool)

(assert (=> b!887417 m!827131))

(declare-fun m!827133 () Bool)

(assert (=> b!887416 m!827133))

(declare-fun m!827135 () Bool)

(assert (=> b!887416 m!827135))

(declare-fun m!827137 () Bool)

(assert (=> mapNonEmpty!28294 m!827137))

(declare-fun m!827139 () Bool)

(assert (=> b!887415 m!827139))

(check-sat (not start!75396) (not b_lambda!12879) tp_is_empty!17847 (not b_next!15519) (not b!887416) (not mapNonEmpty!28294) b_and!25761 (not b!887418) (not b!887417))
(check-sat b_and!25761 (not b_next!15519))
(get-model)

(declare-fun b_lambda!12883 () Bool)

(assert (= b_lambda!12879 (or (and b!887416 b_free!15519) b_lambda!12883)))

(check-sat (not start!75396) tp_is_empty!17847 (not b_next!15519) (not b!887416) (not b_lambda!12883) (not mapNonEmpty!28294) b_and!25761 (not b!887418) (not b!887417))
(check-sat b_and!25761 (not b_next!15519))
(get-model)

(declare-fun d!109865 () Bool)

(assert (=> d!109865 (= (array_inv!19520 (_keys!9814 (v!11427 (underlying!538 thiss!833)))) (bvsge (size!25274 (_keys!9814 (v!11427 (underlying!538 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!887416 d!109865))

(declare-fun d!109867 () Bool)

(assert (=> d!109867 (= (array_inv!19521 (_values!5126 (v!11427 (underlying!538 thiss!833)))) (bvsge (size!25273 (_values!5126 (v!11427 (underlying!538 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!887416 d!109867))

(declare-fun d!109869 () Bool)

(declare-fun valid!1511 (LongMapFixedSize!3900) Bool)

(assert (=> d!109869 (= (valid!1509 thiss!833) (valid!1511 (v!11427 (underlying!538 thiss!833))))))

(declare-fun bs!24873 () Bool)

(assert (= bs!24873 d!109869))

(declare-fun m!827161 () Bool)

(assert (=> bs!24873 m!827161))

(assert (=> start!75396 d!109869))

(declare-fun d!109871 () Bool)

(declare-fun lt!401365 () Bool)

(declare-fun contains!4306 (ListLongMap!10657 (_ BitVec 64)) Bool)

(assert (=> d!109871 (= lt!401365 (contains!4306 (map!12086 thiss!833) key!673))))

(declare-fun contains!4307 (LongMapFixedSize!3900 (_ BitVec 64)) Bool)

(assert (=> d!109871 (= lt!401365 (contains!4307 (v!11427 (underlying!538 thiss!833)) key!673))))

(assert (=> d!109871 (valid!1509 thiss!833)))

(assert (=> d!109871 (= (contains!4304 thiss!833 key!673) lt!401365)))

(declare-fun bs!24874 () Bool)

(assert (= bs!24874 d!109871))

(assert (=> bs!24874 m!827121))

(assert (=> bs!24874 m!827121))

(declare-fun m!827163 () Bool)

(assert (=> bs!24874 m!827163))

(declare-fun m!827165 () Bool)

(assert (=> bs!24874 m!827165))

(assert (=> bs!24874 m!827127))

(assert (=> b!887417 d!109871))

(declare-fun bm!39388 () Bool)

(declare-fun call!39393 () ListLongMap!10657)

(declare-fun call!39391 () ListLongMap!10657)

(assert (=> bm!39388 (= call!39393 call!39391)))

(declare-fun lt!401389 () V!28761)

(declare-fun e!494310 () Bool)

(declare-fun b!887487 () Bool)

(assert (=> b!887487 (= e!494310 (= lt!401389 (dynLambda!1283 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) key!673)))))

(declare-fun b!887488 () Bool)

(declare-fun e!494306 () Bool)

(declare-fun call!39392 () V!28761)

(assert (=> b!887488 (= e!494306 (= call!39392 (zeroValue!4939 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun b!887489 () Bool)

(declare-fun e!494304 () Bool)

(declare-datatypes ((SeekEntryResult!8753 0))(
  ( (MissingZero!8753 (index!37382 (_ BitVec 32))) (Found!8753 (index!37383 (_ BitVec 32))) (Intermediate!8753 (undefined!9565 Bool) (index!37384 (_ BitVec 32)) (x!75254 (_ BitVec 32))) (Undefined!8753) (MissingVacant!8753 (index!37385 (_ BitVec 32))) )
))
(declare-fun lt!401388 () SeekEntryResult!8753)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!887489 (= e!494304 (inRange!0 (index!37383 lt!401388) (mask!25534 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun d!109873 () Bool)

(assert (=> d!109873 e!494310))

(declare-fun c!93643 () Bool)

(assert (=> d!109873 (= c!93643 (contains!4307 (v!11427 (underlying!538 thiss!833)) key!673))))

(declare-fun e!494307 () V!28761)

(assert (=> d!109873 (= lt!401389 e!494307)))

(declare-fun c!93648 () Bool)

(assert (=> d!109873 (= c!93648 (= key!673 (bvneg key!673)))))

(assert (=> d!109873 (valid!1511 (v!11427 (underlying!538 thiss!833)))))

(assert (=> d!109873 (= (apply!394 (v!11427 (underlying!538 thiss!833)) key!673) lt!401389)))

(declare-fun b!887490 () Bool)

(declare-fun map!12088 (LongMapFixedSize!3900) ListLongMap!10657)

(assert (=> b!887490 (= e!494310 (= lt!401389 (get!13129 (getValueByKey!433 (toList!5344 (map!12088 (v!11427 (underlying!538 thiss!833)))) key!673))))))

(declare-fun b!887491 () Bool)

(declare-fun res!602193 () Bool)

(declare-fun e!494305 () Bool)

(assert (=> b!887491 (=> (not res!602193) (not e!494305))))

(assert (=> b!887491 (= res!602193 (not (= (bvand (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!494311 () Bool)

(assert (=> b!887491 (= e!494311 e!494305)))

(declare-fun b!887492 () Bool)

(declare-fun e!494313 () V!28761)

(assert (=> b!887492 (= e!494307 e!494313)))

(declare-fun lt!401390 () SeekEntryResult!8753)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51644 (_ BitVec 32)) SeekEntryResult!8753)

(assert (=> b!887492 (= lt!401390 (seekEntry!0 key!673 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833)))))))

(declare-datatypes ((Unit!30218 0))(
  ( (Unit!30219) )
))
(declare-fun lt!401391 () Unit!30218)

(declare-fun lemmaSeekEntryGivesInRangeIndex!2 (array!51644 array!51642 (_ BitVec 32) (_ BitVec 32) V!28761 V!28761 (_ BitVec 64)) Unit!30218)

(assert (=> b!887492 (= lt!401391 (lemmaSeekEntryGivesInRangeIndex!2 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (_values!5126 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833))) (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) (zeroValue!4939 (v!11427 (underlying!538 thiss!833))) (minValue!4939 (v!11427 (underlying!538 thiss!833))) key!673))))

(assert (=> b!887492 (= lt!401388 (seekEntry!0 key!673 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun res!602196 () Bool)

(assert (=> b!887492 (= res!602196 (not ((_ is Found!8753) lt!401388)))))

(assert (=> b!887492 (=> res!602196 e!494304)))

(assert (=> b!887492 e!494304))

(declare-fun lt!401393 () Unit!30218)

(assert (=> b!887492 (= lt!401393 lt!401391)))

(declare-fun c!93642 () Bool)

(assert (=> b!887492 (= c!93642 ((_ is Found!8753) lt!401390))))

(declare-fun b!887493 () Bool)

(declare-fun c!93644 () Bool)

(assert (=> b!887493 (= c!93644 (and (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!494314 () V!28761)

(declare-fun e!494312 () V!28761)

(assert (=> b!887493 (= e!494314 e!494312)))

(declare-fun b!887494 () Bool)

(declare-fun e!494309 () Bool)

(assert (=> b!887494 (= e!494309 e!494306)))

(declare-fun res!602195 () Bool)

(assert (=> b!887494 (= res!602195 (not (= (bvand (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!887494 (=> (not res!602195) (not e!494306))))

(declare-fun b!887495 () Bool)

(declare-fun call!39394 () V!28761)

(assert (=> b!887495 (= e!494305 (= call!39394 (minValue!4939 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun b!887496 () Bool)

(assert (=> b!887496 (= e!494307 e!494314)))

(declare-fun c!93645 () Bool)

(assert (=> b!887496 (= c!93645 (and (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!887497 () Bool)

(declare-fun lt!401397 () Unit!30218)

(declare-fun lt!401396 () Unit!30218)

(assert (=> b!887497 (= lt!401397 lt!401396)))

(assert (=> b!887497 e!494309))

(declare-fun c!93646 () Bool)

(assert (=> b!887497 (= c!93646 (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!2 (array!51644 array!51642 (_ BitVec 32) (_ BitVec 32) V!28761 V!28761 (_ BitVec 64) (_ BitVec 32) Int) Unit!30218)

(assert (=> b!887497 (= lt!401396 (lemmaKeyInListMapThenSameValueInArray!2 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (_values!5126 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833))) (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) (zeroValue!4939 (v!11427 (underlying!538 thiss!833))) (minValue!4939 (v!11427 (underlying!538 thiss!833))) key!673 (index!37383 lt!401390) (defaultEntry!5141 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun lt!401395 () Unit!30218)

(declare-fun lt!401392 () Unit!30218)

(assert (=> b!887497 (= lt!401395 lt!401392)))

(declare-fun getCurrentListMap!2602 (array!51644 array!51642 (_ BitVec 32) (_ BitVec 32) V!28761 V!28761 (_ BitVec 32) Int) ListLongMap!10657)

(assert (=> b!887497 (contains!4306 (getCurrentListMap!2602 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (_values!5126 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833))) (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) (zeroValue!4939 (v!11427 (underlying!538 thiss!833))) (minValue!4939 (v!11427 (underlying!538 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833)))) (select (arr!24833 (_keys!9814 (v!11427 (underlying!538 thiss!833)))) (index!37383 lt!401390)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!195 (array!51644 array!51642 (_ BitVec 32) (_ BitVec 32) V!28761 V!28761 (_ BitVec 32) Int) Unit!30218)

(assert (=> b!887497 (= lt!401392 (lemmaValidKeyInArrayIsInListMap!195 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (_values!5126 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833))) (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) (zeroValue!4939 (v!11427 (underlying!538 thiss!833))) (minValue!4939 (v!11427 (underlying!538 thiss!833))) (index!37383 lt!401390) (defaultEntry!5141 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun lt!401394 () Unit!30218)

(declare-fun lt!401398 () Unit!30218)

(assert (=> b!887497 (= lt!401394 lt!401398)))

(declare-fun arrayContainsKey!0 (array!51644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!887497 (arrayContainsKey!0 (_keys!9814 (v!11427 (underlying!538 thiss!833))) key!673 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51644 (_ BitVec 64) (_ BitVec 32)) Unit!30218)

(assert (=> b!887497 (= lt!401398 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9814 (v!11427 (underlying!538 thiss!833))) key!673 (index!37383 lt!401390)))))

(declare-fun get!13131 (ValueCell!8442 V!28761) V!28761)

(assert (=> b!887497 (= e!494313 (get!13131 (select (arr!24832 (_values!5126 (v!11427 (underlying!538 thiss!833)))) (index!37383 lt!401390)) (dynLambda!1283 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!887498 () Bool)

(assert (=> b!887498 (= e!494312 (dynLambda!1283 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) key!673))))

(declare-fun bm!39389 () Bool)

(declare-fun apply!396 (ListLongMap!10657 (_ BitVec 64)) V!28761)

(assert (=> bm!39389 (= call!39392 (apply!396 (ite c!93646 call!39391 call!39393) key!673))))

(declare-fun b!887499 () Bool)

(assert (=> b!887499 (= e!494313 (dynLambda!1283 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) key!673))))

(declare-fun b!887500 () Bool)

(declare-fun res!602194 () Bool)

(declare-fun e!494308 () Bool)

(assert (=> b!887500 (=> (not res!602194) (not e!494308))))

(assert (=> b!887500 (= res!602194 (arrayContainsKey!0 (_keys!9814 (v!11427 (underlying!538 thiss!833))) key!673 #b00000000000000000000000000000000))))

(assert (=> b!887500 (= e!494311 e!494308)))

(declare-fun b!887501 () Bool)

(assert (=> b!887501 (= e!494312 (minValue!4939 (v!11427 (underlying!538 thiss!833))))))

(declare-fun b!887502 () Bool)

(assert (=> b!887502 (= e!494309 e!494311)))

(declare-fun c!93647 () Bool)

(assert (=> b!887502 (= c!93647 (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39390 () Bool)

(assert (=> bm!39390 (= call!39391 (getCurrentListMap!2602 (_keys!9814 (v!11427 (underlying!538 thiss!833))) (_values!5126 (v!11427 (underlying!538 thiss!833))) (mask!25534 (v!11427 (underlying!538 thiss!833))) (extraKeys!4835 (v!11427 (underlying!538 thiss!833))) (zeroValue!4939 (v!11427 (underlying!538 thiss!833))) (minValue!4939 (v!11427 (underlying!538 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833)))))))

(declare-fun b!887503 () Bool)

(assert (=> b!887503 (= e!494308 (= call!39394 (get!13131 (select (arr!24832 (_values!5126 (v!11427 (underlying!538 thiss!833)))) (index!37383 lt!401390)) (dynLambda!1283 (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!39391 () Bool)

(assert (=> bm!39391 (= call!39394 call!39392)))

(declare-fun b!887504 () Bool)

(assert (=> b!887504 (= e!494314 (zeroValue!4939 (v!11427 (underlying!538 thiss!833))))))

(assert (= (and d!109873 c!93648) b!887496))

(assert (= (and d!109873 (not c!93648)) b!887492))

(assert (= (and b!887496 c!93645) b!887504))

(assert (= (and b!887496 (not c!93645)) b!887493))

(assert (= (and b!887493 c!93644) b!887501))

(assert (= (and b!887493 (not c!93644)) b!887498))

(assert (= (and b!887492 (not res!602196)) b!887489))

(assert (= (and b!887492 c!93642) b!887497))

(assert (= (and b!887492 (not c!93642)) b!887499))

(assert (= (and b!887497 c!93646) b!887494))

(assert (= (and b!887497 (not c!93646)) b!887502))

(assert (= (and b!887494 res!602195) b!887488))

(assert (= (and b!887502 c!93647) b!887491))

(assert (= (and b!887502 (not c!93647)) b!887500))

(assert (= (and b!887491 res!602193) b!887495))

(assert (= (and b!887500 res!602194) b!887503))

(assert (= (or b!887495 b!887503) bm!39388))

(assert (= (or b!887495 b!887503) bm!39391))

(assert (= (or b!887488 bm!39388) bm!39390))

(assert (= (or b!887488 bm!39391) bm!39389))

(assert (= (and d!109873 c!93643) b!887490))

(assert (= (and d!109873 (not c!93643)) b!887487))

(declare-fun b_lambda!12885 () Bool)

(assert (=> (not b_lambda!12885) (not b!887503)))

(declare-fun t!25069 () Bool)

(declare-fun tb!5153 () Bool)

(assert (=> (and b!887416 (= (defaultEntry!5141 (v!11427 (underlying!538 thiss!833))) (defaultEntry!5141 (v!11427 (underlying!538 thiss!833)))) t!25069) tb!5153))

(declare-fun result!9993 () Bool)

(assert (=> tb!5153 (= result!9993 tp_is_empty!17847)))

(assert (=> b!887503 t!25069))

(declare-fun b_and!25767 () Bool)

(assert (= b_and!25761 (and (=> t!25069 result!9993) b_and!25767)))

(declare-fun b_lambda!12887 () Bool)

(assert (=> (not b_lambda!12887) (not b!887487)))

(assert (=> b!887487 t!25063))

(declare-fun b_and!25769 () Bool)

(assert (= b_and!25767 (and (=> t!25063 result!9985) b_and!25769)))

(declare-fun b_lambda!12889 () Bool)

(assert (=> (not b_lambda!12889) (not b!887498)))

(assert (=> b!887498 t!25063))

(declare-fun b_and!25771 () Bool)

(assert (= b_and!25769 (and (=> t!25063 result!9985) b_and!25771)))

(declare-fun b_lambda!12891 () Bool)

(assert (=> (not b_lambda!12891) (not b!887497)))

(assert (=> b!887497 t!25069))

(declare-fun b_and!25773 () Bool)

(assert (= b_and!25771 (and (=> t!25069 result!9993) b_and!25773)))

(declare-fun b_lambda!12893 () Bool)

(assert (=> (not b_lambda!12893) (not b!887499)))

(assert (=> b!887499 t!25063))

(declare-fun b_and!25775 () Bool)

(assert (= b_and!25773 (and (=> t!25063 result!9985) b_and!25775)))

(declare-fun m!827167 () Bool)

(assert (=> b!887489 m!827167))

(declare-fun m!827169 () Bool)

(assert (=> b!887490 m!827169))

(declare-fun m!827171 () Bool)

(assert (=> b!887490 m!827171))

(assert (=> b!887490 m!827171))

(declare-fun m!827173 () Bool)

(assert (=> b!887490 m!827173))

(assert (=> b!887498 m!827139))

(declare-fun m!827175 () Bool)

(assert (=> bm!39389 m!827175))

(declare-fun m!827177 () Bool)

(assert (=> b!887492 m!827177))

(declare-fun m!827179 () Bool)

(assert (=> b!887492 m!827179))

(declare-fun m!827181 () Bool)

(assert (=> bm!39390 m!827181))

(assert (=> d!109873 m!827165))

(assert (=> d!109873 m!827161))

(declare-fun m!827183 () Bool)

(assert (=> b!887500 m!827183))

(declare-fun m!827185 () Bool)

(assert (=> b!887503 m!827185))

(declare-fun m!827187 () Bool)

(assert (=> b!887503 m!827187))

(assert (=> b!887503 m!827185))

(assert (=> b!887503 m!827187))

(declare-fun m!827189 () Bool)

(assert (=> b!887503 m!827189))

(assert (=> b!887497 m!827181))

(declare-fun m!827191 () Bool)

(assert (=> b!887497 m!827191))

(declare-fun m!827193 () Bool)

(assert (=> b!887497 m!827193))

(declare-fun m!827195 () Bool)

(assert (=> b!887497 m!827195))

(declare-fun m!827197 () Bool)

(assert (=> b!887497 m!827197))

(assert (=> b!887497 m!827191))

(assert (=> b!887497 m!827185))

(assert (=> b!887497 m!827185))

(assert (=> b!887497 m!827187))

(assert (=> b!887497 m!827189))

(assert (=> b!887497 m!827181))

(assert (=> b!887497 m!827187))

(declare-fun m!827199 () Bool)

(assert (=> b!887497 m!827199))

(assert (=> b!887497 m!827183))

(assert (=> b!887499 m!827139))

(assert (=> b!887487 m!827139))

(assert (=> b!887417 d!109873))

(declare-fun d!109875 () Bool)

(assert (=> d!109875 (= (get!13129 (getValueByKey!433 (toList!5344 (map!12086 thiss!833)) key!673)) (v!11428 (getValueByKey!433 (toList!5344 (map!12086 thiss!833)) key!673)))))

(assert (=> b!887418 d!109875))

(declare-fun b!887513 () Bool)

(declare-fun e!494319 () Option!439)

(assert (=> b!887513 (= e!494319 (Some!438 (_2!5983 (h!18892 (toList!5344 (map!12086 thiss!833))))))))

(declare-fun b!887516 () Bool)

(declare-fun e!494320 () Option!439)

(assert (=> b!887516 (= e!494320 None!437)))

(declare-fun b!887514 () Bool)

(assert (=> b!887514 (= e!494319 e!494320)))

(declare-fun c!93654 () Bool)

(assert (=> b!887514 (= c!93654 (and ((_ is Cons!17761) (toList!5344 (map!12086 thiss!833))) (not (= (_1!5983 (h!18892 (toList!5344 (map!12086 thiss!833)))) key!673))))))

(declare-fun d!109877 () Bool)

(declare-fun c!93653 () Bool)

(assert (=> d!109877 (= c!93653 (and ((_ is Cons!17761) (toList!5344 (map!12086 thiss!833))) (= (_1!5983 (h!18892 (toList!5344 (map!12086 thiss!833)))) key!673)))))

(assert (=> d!109877 (= (getValueByKey!433 (toList!5344 (map!12086 thiss!833)) key!673) e!494319)))

(declare-fun b!887515 () Bool)

(assert (=> b!887515 (= e!494320 (getValueByKey!433 (t!25064 (toList!5344 (map!12086 thiss!833))) key!673))))

(assert (= (and d!109877 c!93653) b!887513))

(assert (= (and d!109877 (not c!93653)) b!887514))

(assert (= (and b!887514 c!93654) b!887515))

(assert (= (and b!887514 (not c!93654)) b!887516))

(declare-fun m!827201 () Bool)

(assert (=> b!887515 m!827201))

(assert (=> b!887418 d!109877))

(declare-fun d!109879 () Bool)

(assert (=> d!109879 (= (map!12086 thiss!833) (map!12088 (v!11427 (underlying!538 thiss!833))))))

(declare-fun bs!24875 () Bool)

(assert (= bs!24875 d!109879))

(assert (=> bs!24875 m!827169))

(assert (=> b!887418 d!109879))

(declare-fun b!887523 () Bool)

(declare-fun e!494326 () Bool)

(assert (=> b!887523 (= e!494326 tp_is_empty!17847)))

(declare-fun mapNonEmpty!28300 () Bool)

(declare-fun mapRes!28300 () Bool)

(declare-fun tp!54505 () Bool)

(assert (=> mapNonEmpty!28300 (= mapRes!28300 (and tp!54505 e!494326))))

(declare-fun mapValue!28300 () ValueCell!8442)

(declare-fun mapKey!28300 () (_ BitVec 32))

(declare-fun mapRest!28300 () (Array (_ BitVec 32) ValueCell!8442))

(assert (=> mapNonEmpty!28300 (= mapRest!28294 (store mapRest!28300 mapKey!28300 mapValue!28300))))

(declare-fun b!887524 () Bool)

(declare-fun e!494325 () Bool)

(assert (=> b!887524 (= e!494325 tp_is_empty!17847)))

(declare-fun condMapEmpty!28300 () Bool)

(declare-fun mapDefault!28300 () ValueCell!8442)

(assert (=> mapNonEmpty!28294 (= condMapEmpty!28300 (= mapRest!28294 ((as const (Array (_ BitVec 32) ValueCell!8442)) mapDefault!28300)))))

(assert (=> mapNonEmpty!28294 (= tp!54496 (and e!494325 mapRes!28300))))

(declare-fun mapIsEmpty!28300 () Bool)

(assert (=> mapIsEmpty!28300 mapRes!28300))

(assert (= (and mapNonEmpty!28294 condMapEmpty!28300) mapIsEmpty!28300))

(assert (= (and mapNonEmpty!28294 (not condMapEmpty!28300)) mapNonEmpty!28300))

(assert (= (and mapNonEmpty!28300 ((_ is ValueCellFull!8442) mapValue!28300)) b!887523))

(assert (= (and mapNonEmpty!28294 ((_ is ValueCellFull!8442) mapDefault!28300)) b!887524))

(declare-fun m!827203 () Bool)

(assert (=> mapNonEmpty!28300 m!827203))

(declare-fun b_lambda!12895 () Bool)

(assert (= b_lambda!12893 (or (and b!887416 b_free!15519) b_lambda!12895)))

(declare-fun b_lambda!12897 () Bool)

(assert (= b_lambda!12885 (or (and b!887416 b_free!15519) b_lambda!12897)))

(declare-fun b_lambda!12899 () Bool)

(assert (= b_lambda!12887 (or (and b!887416 b_free!15519) b_lambda!12899)))

(declare-fun b_lambda!12901 () Bool)

(assert (= b_lambda!12889 (or (and b!887416 b_free!15519) b_lambda!12901)))

(declare-fun b_lambda!12903 () Bool)

(assert (= b_lambda!12891 (or (and b!887416 b_free!15519) b_lambda!12903)))

(check-sat (not b!887497) (not b_lambda!12899) (not d!109869) (not b!887503) (not b_next!15519) (not b_lambda!12901) (not b!887500) (not b!887515) (not d!109871) (not bm!39390) (not d!109879) (not b_lambda!12883) (not b_lambda!12903) (not mapNonEmpty!28300) (not b_lambda!12897) (not b_lambda!12895) (not bm!39389) tp_is_empty!17847 (not b!887489) (not b!887490) (not b!887492) (not d!109873) b_and!25775)
(check-sat b_and!25775 (not b_next!15519))
