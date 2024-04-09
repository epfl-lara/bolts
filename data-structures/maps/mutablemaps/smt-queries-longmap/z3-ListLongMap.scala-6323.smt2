; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81352 () Bool)

(assert start!81352)

(declare-fun b!950995 () Bool)

(declare-fun b_free!18261 () Bool)

(declare-fun b_next!18261 () Bool)

(assert (=> b!950995 (= b_free!18261 (not b_next!18261))))

(declare-fun tp!63390 () Bool)

(declare-fun b_and!29745 () Bool)

(assert (=> b!950995 (= tp!63390 b_and!29745)))

(declare-fun b!950987 () Bool)

(declare-fun res!637519 () Bool)

(declare-fun e!535511 () Bool)

(assert (=> b!950987 (=> (not res!637519) (not e!535511))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32657 0))(
  ( (V!32658 (val!10435 Int)) )
))
(declare-datatypes ((ValueCell!9903 0))(
  ( (ValueCellFull!9903 (v!12981 V!32657)) (EmptyCell!9903) )
))
(declare-datatypes ((array!57584 0))(
  ( (array!57585 (arr!27685 (Array (_ BitVec 32) ValueCell!9903)) (size!28164 (_ BitVec 32))) )
))
(declare-datatypes ((array!57586 0))(
  ( (array!57587 (arr!27686 (Array (_ BitVec 32) (_ BitVec 64))) (size!28165 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4956 0))(
  ( (LongMapFixedSize!4957 (defaultEntry!5797 Int) (mask!27606 (_ BitVec 32)) (extraKeys!5529 (_ BitVec 32)) (zeroValue!5633 V!32657) (minValue!5633 V!32657) (_size!2533 (_ BitVec 32)) (_keys!10735 array!57586) (_values!5820 array!57584) (_vacant!2533 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4956)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9135 0))(
  ( (MissingZero!9135 (index!38910 (_ BitVec 32))) (Found!9135 (index!38911 (_ BitVec 32))) (Intermediate!9135 (undefined!9947 Bool) (index!38912 (_ BitVec 32)) (x!81808 (_ BitVec 32))) (Undefined!9135) (MissingVacant!9135 (index!38913 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57586 (_ BitVec 32)) SeekEntryResult!9135)

(assert (=> b!950987 (= res!637519 (not ((_ is Found!9135) (seekEntry!0 key!756 (_keys!10735 thiss!1141) (mask!27606 thiss!1141)))))))

(declare-fun mapIsEmpty!33075 () Bool)

(declare-fun mapRes!33075 () Bool)

(assert (=> mapIsEmpty!33075 mapRes!33075))

(declare-fun b!950988 () Bool)

(declare-fun e!535513 () Bool)

(declare-fun lt!428347 () (_ BitVec 32))

(assert (=> b!950988 (= e!535513 (or (not (= (size!28165 (_keys!10735 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27606 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))) (and (bvsge lt!428347 #b00000000000000000000000000000000) (bvsle lt!428347 (size!28165 (_keys!10735 thiss!1141))))))))

(declare-fun b!950989 () Bool)

(assert (=> b!950989 (= e!535511 (not e!535513))))

(declare-fun res!637517 () Bool)

(assert (=> b!950989 (=> res!637517 e!535513)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950989 (= res!637517 (not (validMask!0 (mask!27606 thiss!1141))))))

(declare-fun arrayScanForKey!0 (array!57586 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950989 (= lt!428347 (arrayScanForKey!0 (_keys!10735 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950989 (arrayContainsKey!0 (_keys!10735 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!32004 0))(
  ( (Unit!32005) )
))
(declare-fun lt!428348 () Unit!32004)

(declare-fun lemmaKeyInListMapIsInArray!328 (array!57586 array!57584 (_ BitVec 32) (_ BitVec 32) V!32657 V!32657 (_ BitVec 64) Int) Unit!32004)

(assert (=> b!950989 (= lt!428348 (lemmaKeyInListMapIsInArray!328 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) key!756 (defaultEntry!5797 thiss!1141)))))

(declare-fun b!950990 () Bool)

(declare-fun e!535515 () Bool)

(declare-fun tp_is_empty!20769 () Bool)

(assert (=> b!950990 (= e!535515 tp_is_empty!20769)))

(declare-fun b!950991 () Bool)

(declare-fun e!535516 () Bool)

(assert (=> b!950991 (= e!535516 tp_is_empty!20769)))

(declare-fun mapNonEmpty!33075 () Bool)

(declare-fun tp!63389 () Bool)

(assert (=> mapNonEmpty!33075 (= mapRes!33075 (and tp!63389 e!535516))))

(declare-fun mapRest!33075 () (Array (_ BitVec 32) ValueCell!9903))

(declare-fun mapValue!33075 () ValueCell!9903)

(declare-fun mapKey!33075 () (_ BitVec 32))

(assert (=> mapNonEmpty!33075 (= (arr!27685 (_values!5820 thiss!1141)) (store mapRest!33075 mapKey!33075 mapValue!33075))))

(declare-fun b!950992 () Bool)

(declare-fun e!535510 () Bool)

(assert (=> b!950992 (= e!535510 (and e!535515 mapRes!33075))))

(declare-fun condMapEmpty!33075 () Bool)

(declare-fun mapDefault!33075 () ValueCell!9903)

(assert (=> b!950992 (= condMapEmpty!33075 (= (arr!27685 (_values!5820 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9903)) mapDefault!33075)))))

(declare-fun b!950993 () Bool)

(declare-fun res!637518 () Bool)

(assert (=> b!950993 (=> (not res!637518) (not e!535511))))

(assert (=> b!950993 (= res!637518 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!637521 () Bool)

(assert (=> start!81352 (=> (not res!637521) (not e!535511))))

(declare-fun valid!1856 (LongMapFixedSize!4956) Bool)

(assert (=> start!81352 (= res!637521 (valid!1856 thiss!1141))))

(assert (=> start!81352 e!535511))

(declare-fun e!535512 () Bool)

(assert (=> start!81352 e!535512))

(assert (=> start!81352 true))

(declare-fun b!950994 () Bool)

(declare-fun res!637520 () Bool)

(assert (=> b!950994 (=> (not res!637520) (not e!535511))))

(declare-datatypes ((tuple2!13656 0))(
  ( (tuple2!13657 (_1!6838 (_ BitVec 64)) (_2!6838 V!32657)) )
))
(declare-datatypes ((List!19479 0))(
  ( (Nil!19476) (Cons!19475 (h!20636 tuple2!13656) (t!27832 List!19479)) )
))
(declare-datatypes ((ListLongMap!12367 0))(
  ( (ListLongMap!12368 (toList!6199 List!19479)) )
))
(declare-fun contains!5243 (ListLongMap!12367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3384 (array!57586 array!57584 (_ BitVec 32) (_ BitVec 32) V!32657 V!32657 (_ BitVec 32) Int) ListLongMap!12367)

(assert (=> b!950994 (= res!637520 (contains!5243 (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)) key!756))))

(declare-fun array_inv!21430 (array!57586) Bool)

(declare-fun array_inv!21431 (array!57584) Bool)

(assert (=> b!950995 (= e!535512 (and tp!63390 tp_is_empty!20769 (array_inv!21430 (_keys!10735 thiss!1141)) (array_inv!21431 (_values!5820 thiss!1141)) e!535510))))

(assert (= (and start!81352 res!637521) b!950993))

(assert (= (and b!950993 res!637518) b!950987))

(assert (= (and b!950987 res!637519) b!950994))

(assert (= (and b!950994 res!637520) b!950989))

(assert (= (and b!950989 (not res!637517)) b!950988))

(assert (= (and b!950992 condMapEmpty!33075) mapIsEmpty!33075))

(assert (= (and b!950992 (not condMapEmpty!33075)) mapNonEmpty!33075))

(assert (= (and mapNonEmpty!33075 ((_ is ValueCellFull!9903) mapValue!33075)) b!950991))

(assert (= (and b!950992 ((_ is ValueCellFull!9903) mapDefault!33075)) b!950990))

(assert (= b!950995 b!950992))

(assert (= start!81352 b!950995))

(declare-fun m!883415 () Bool)

(assert (=> b!950987 m!883415))

(declare-fun m!883417 () Bool)

(assert (=> start!81352 m!883417))

(declare-fun m!883419 () Bool)

(assert (=> b!950994 m!883419))

(assert (=> b!950994 m!883419))

(declare-fun m!883421 () Bool)

(assert (=> b!950994 m!883421))

(declare-fun m!883423 () Bool)

(assert (=> b!950995 m!883423))

(declare-fun m!883425 () Bool)

(assert (=> b!950995 m!883425))

(declare-fun m!883427 () Bool)

(assert (=> b!950989 m!883427))

(declare-fun m!883429 () Bool)

(assert (=> b!950989 m!883429))

(declare-fun m!883431 () Bool)

(assert (=> b!950989 m!883431))

(declare-fun m!883433 () Bool)

(assert (=> b!950989 m!883433))

(declare-fun m!883435 () Bool)

(assert (=> mapNonEmpty!33075 m!883435))

(check-sat (not b!950994) (not b!950987) (not b_next!18261) (not mapNonEmpty!33075) b_and!29745 (not b!950995) (not start!81352) tp_is_empty!20769 (not b!950989))
(check-sat b_and!29745 (not b_next!18261))
(get-model)

(declare-fun d!115235 () Bool)

(assert (=> d!115235 (= (array_inv!21430 (_keys!10735 thiss!1141)) (bvsge (size!28165 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950995 d!115235))

(declare-fun d!115237 () Bool)

(assert (=> d!115237 (= (array_inv!21431 (_values!5820 thiss!1141)) (bvsge (size!28164 (_values!5820 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950995 d!115237))

(declare-fun d!115239 () Bool)

(declare-fun e!535542 () Bool)

(assert (=> d!115239 e!535542))

(declare-fun res!637539 () Bool)

(assert (=> d!115239 (=> res!637539 e!535542)))

(declare-fun lt!428364 () Bool)

(assert (=> d!115239 (= res!637539 (not lt!428364))))

(declare-fun lt!428365 () Bool)

(assert (=> d!115239 (= lt!428364 lt!428365)))

(declare-fun lt!428366 () Unit!32004)

(declare-fun e!535543 () Unit!32004)

(assert (=> d!115239 (= lt!428366 e!535543)))

(declare-fun c!99305 () Bool)

(assert (=> d!115239 (= c!99305 lt!428365)))

(declare-fun containsKey!468 (List!19479 (_ BitVec 64)) Bool)

(assert (=> d!115239 (= lt!428365 (containsKey!468 (toList!6199 (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141))) key!756))))

(assert (=> d!115239 (= (contains!5243 (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)) key!756) lt!428364)))

(declare-fun b!951029 () Bool)

(declare-fun lt!428363 () Unit!32004)

(assert (=> b!951029 (= e!535543 lt!428363)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!363 (List!19479 (_ BitVec 64)) Unit!32004)

(assert (=> b!951029 (= lt!428363 (lemmaContainsKeyImpliesGetValueByKeyDefined!363 (toList!6199 (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141))) key!756))))

(declare-datatypes ((Option!509 0))(
  ( (Some!508 (v!12983 V!32657)) (None!507) )
))
(declare-fun isDefined!373 (Option!509) Bool)

(declare-fun getValueByKey!503 (List!19479 (_ BitVec 64)) Option!509)

(assert (=> b!951029 (isDefined!373 (getValueByKey!503 (toList!6199 (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141))) key!756))))

(declare-fun b!951030 () Bool)

(declare-fun Unit!32006 () Unit!32004)

(assert (=> b!951030 (= e!535543 Unit!32006)))

(declare-fun b!951031 () Bool)

(assert (=> b!951031 (= e!535542 (isDefined!373 (getValueByKey!503 (toList!6199 (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141))) key!756)))))

(assert (= (and d!115239 c!99305) b!951029))

(assert (= (and d!115239 (not c!99305)) b!951030))

(assert (= (and d!115239 (not res!637539)) b!951031))

(declare-fun m!883459 () Bool)

(assert (=> d!115239 m!883459))

(declare-fun m!883461 () Bool)

(assert (=> b!951029 m!883461))

(declare-fun m!883463 () Bool)

(assert (=> b!951029 m!883463))

(assert (=> b!951029 m!883463))

(declare-fun m!883465 () Bool)

(assert (=> b!951029 m!883465))

(assert (=> b!951031 m!883463))

(assert (=> b!951031 m!883463))

(assert (=> b!951031 m!883465))

(assert (=> b!950994 d!115239))

(declare-fun bm!41457 () Bool)

(declare-fun call!41463 () Bool)

(declare-fun lt!428413 () ListLongMap!12367)

(assert (=> bm!41457 (= call!41463 (contains!5243 lt!428413 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41458 () Bool)

(declare-fun call!41464 () ListLongMap!12367)

(declare-fun call!41460 () ListLongMap!12367)

(declare-fun c!99319 () Bool)

(declare-fun call!41461 () ListLongMap!12367)

(declare-fun c!99322 () Bool)

(declare-fun call!41465 () ListLongMap!12367)

(declare-fun +!2830 (ListLongMap!12367 tuple2!13656) ListLongMap!12367)

(assert (=> bm!41458 (= call!41465 (+!2830 (ite c!99319 call!41464 (ite c!99322 call!41460 call!41461)) (ite (or c!99319 c!99322) (tuple2!13657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5633 thiss!1141)) (tuple2!13657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5633 thiss!1141)))))))

(declare-fun b!951074 () Bool)

(declare-fun e!535582 () Bool)

(declare-fun apply!916 (ListLongMap!12367 (_ BitVec 64)) V!32657)

(assert (=> b!951074 (= e!535582 (= (apply!916 lt!428413 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5633 thiss!1141)))))

(declare-fun bm!41459 () Bool)

(declare-fun call!41462 () ListLongMap!12367)

(assert (=> bm!41459 (= call!41462 call!41465)))

(declare-fun b!951075 () Bool)

(declare-fun e!535575 () Bool)

(assert (=> b!951075 (= e!535575 (not call!41463))))

(declare-fun bm!41460 () Bool)

(assert (=> bm!41460 (= call!41460 call!41464)))

(declare-fun b!951076 () Bool)

(declare-fun c!99320 () Bool)

(assert (=> b!951076 (= c!99320 (and (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!535578 () ListLongMap!12367)

(declare-fun e!535580 () ListLongMap!12367)

(assert (=> b!951076 (= e!535578 e!535580)))

(declare-fun d!115241 () Bool)

(declare-fun e!535579 () Bool)

(assert (=> d!115241 e!535579))

(declare-fun res!637564 () Bool)

(assert (=> d!115241 (=> (not res!637564) (not e!535579))))

(assert (=> d!115241 (= res!637564 (or (bvsge #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))))))))

(declare-fun lt!428418 () ListLongMap!12367)

(assert (=> d!115241 (= lt!428413 lt!428418)))

(declare-fun lt!428425 () Unit!32004)

(declare-fun e!535581 () Unit!32004)

(assert (=> d!115241 (= lt!428425 e!535581)))

(declare-fun c!99321 () Bool)

(declare-fun e!535571 () Bool)

(assert (=> d!115241 (= c!99321 e!535571)))

(declare-fun res!637561 () Bool)

(assert (=> d!115241 (=> (not res!637561) (not e!535571))))

(assert (=> d!115241 (= res!637561 (bvslt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))))))

(declare-fun e!535574 () ListLongMap!12367)

(assert (=> d!115241 (= lt!428418 e!535574)))

(assert (=> d!115241 (= c!99319 (and (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115241 (validMask!0 (mask!27606 thiss!1141))))

(assert (=> d!115241 (= (getCurrentListMap!3384 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)) lt!428413)))

(declare-fun b!951077 () Bool)

(declare-fun e!535577 () Bool)

(assert (=> b!951077 (= e!535575 e!535577)))

(declare-fun res!637562 () Bool)

(assert (=> b!951077 (= res!637562 call!41463)))

(assert (=> b!951077 (=> (not res!637562) (not e!535577))))

(declare-fun b!951078 () Bool)

(declare-fun lt!428416 () Unit!32004)

(assert (=> b!951078 (= e!535581 lt!428416)))

(declare-fun lt!428426 () ListLongMap!12367)

(declare-fun getCurrentListMapNoExtraKeys!3336 (array!57586 array!57584 (_ BitVec 32) (_ BitVec 32) V!32657 V!32657 (_ BitVec 32) Int) ListLongMap!12367)

(assert (=> b!951078 (= lt!428426 (getCurrentListMapNoExtraKeys!3336 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)))))

(declare-fun lt!428428 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428428 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428414 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428414 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428423 () Unit!32004)

(declare-fun addStillContains!586 (ListLongMap!12367 (_ BitVec 64) V!32657 (_ BitVec 64)) Unit!32004)

(assert (=> b!951078 (= lt!428423 (addStillContains!586 lt!428426 lt!428428 (zeroValue!5633 thiss!1141) lt!428414))))

(assert (=> b!951078 (contains!5243 (+!2830 lt!428426 (tuple2!13657 lt!428428 (zeroValue!5633 thiss!1141))) lt!428414)))

(declare-fun lt!428421 () Unit!32004)

(assert (=> b!951078 (= lt!428421 lt!428423)))

(declare-fun lt!428419 () ListLongMap!12367)

(assert (=> b!951078 (= lt!428419 (getCurrentListMapNoExtraKeys!3336 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)))))

(declare-fun lt!428431 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428431 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428415 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428415 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428432 () Unit!32004)

(declare-fun addApplyDifferent!460 (ListLongMap!12367 (_ BitVec 64) V!32657 (_ BitVec 64)) Unit!32004)

(assert (=> b!951078 (= lt!428432 (addApplyDifferent!460 lt!428419 lt!428431 (minValue!5633 thiss!1141) lt!428415))))

(assert (=> b!951078 (= (apply!916 (+!2830 lt!428419 (tuple2!13657 lt!428431 (minValue!5633 thiss!1141))) lt!428415) (apply!916 lt!428419 lt!428415))))

(declare-fun lt!428420 () Unit!32004)

(assert (=> b!951078 (= lt!428420 lt!428432)))

(declare-fun lt!428417 () ListLongMap!12367)

(assert (=> b!951078 (= lt!428417 (getCurrentListMapNoExtraKeys!3336 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)))))

(declare-fun lt!428422 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428422 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428429 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428429 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428427 () Unit!32004)

(assert (=> b!951078 (= lt!428427 (addApplyDifferent!460 lt!428417 lt!428422 (zeroValue!5633 thiss!1141) lt!428429))))

(assert (=> b!951078 (= (apply!916 (+!2830 lt!428417 (tuple2!13657 lt!428422 (zeroValue!5633 thiss!1141))) lt!428429) (apply!916 lt!428417 lt!428429))))

(declare-fun lt!428411 () Unit!32004)

(assert (=> b!951078 (= lt!428411 lt!428427)))

(declare-fun lt!428412 () ListLongMap!12367)

(assert (=> b!951078 (= lt!428412 (getCurrentListMapNoExtraKeys!3336 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)))))

(declare-fun lt!428424 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428424 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428430 () (_ BitVec 64))

(assert (=> b!951078 (= lt!428430 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951078 (= lt!428416 (addApplyDifferent!460 lt!428412 lt!428424 (minValue!5633 thiss!1141) lt!428430))))

(assert (=> b!951078 (= (apply!916 (+!2830 lt!428412 (tuple2!13657 lt!428424 (minValue!5633 thiss!1141))) lt!428430) (apply!916 lt!428412 lt!428430))))

(declare-fun b!951079 () Bool)

(assert (=> b!951079 (= e!535574 (+!2830 call!41465 (tuple2!13657 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5633 thiss!1141))))))

(declare-fun b!951080 () Bool)

(assert (=> b!951080 (= e!535578 call!41462)))

(declare-fun b!951081 () Bool)

(declare-fun e!535572 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!951081 (= e!535572 (validKeyInArray!0 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951082 () Bool)

(declare-fun e!535570 () Bool)

(assert (=> b!951082 (= e!535570 e!535582)))

(declare-fun res!637563 () Bool)

(declare-fun call!41466 () Bool)

(assert (=> b!951082 (= res!637563 call!41466)))

(assert (=> b!951082 (=> (not res!637563) (not e!535582))))

(declare-fun bm!41461 () Bool)

(assert (=> bm!41461 (= call!41461 call!41460)))

(declare-fun b!951083 () Bool)

(assert (=> b!951083 (= e!535574 e!535578)))

(assert (=> b!951083 (= c!99322 (and (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!951084 () Bool)

(declare-fun e!535573 () Bool)

(declare-fun e!535576 () Bool)

(assert (=> b!951084 (= e!535573 e!535576)))

(declare-fun res!637565 () Bool)

(assert (=> b!951084 (=> (not res!637565) (not e!535576))))

(assert (=> b!951084 (= res!637565 (contains!5243 lt!428413 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!951084 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))))))

(declare-fun bm!41462 () Bool)

(assert (=> bm!41462 (= call!41466 (contains!5243 lt!428413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41463 () Bool)

(assert (=> bm!41463 (= call!41464 (getCurrentListMapNoExtraKeys!3336 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5797 thiss!1141)))))

(declare-fun b!951085 () Bool)

(declare-fun res!637559 () Bool)

(assert (=> b!951085 (=> (not res!637559) (not e!535579))))

(assert (=> b!951085 (= res!637559 e!535570)))

(declare-fun c!99318 () Bool)

(assert (=> b!951085 (= c!99318 (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!951086 () Bool)

(assert (=> b!951086 (= e!535571 (validKeyInArray!0 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!951087 () Bool)

(declare-fun get!14568 (ValueCell!9903 V!32657) V!32657)

(declare-fun dynLambda!1669 (Int (_ BitVec 64)) V!32657)

(assert (=> b!951087 (= e!535576 (= (apply!916 lt!428413 (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000)) (get!14568 (select (arr!27685 (_values!5820 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1669 (defaultEntry!5797 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!951087 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28164 (_values!5820 thiss!1141))))))

(assert (=> b!951087 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))))))

(declare-fun b!951088 () Bool)

(assert (=> b!951088 (= e!535570 (not call!41466))))

(declare-fun b!951089 () Bool)

(assert (=> b!951089 (= e!535580 call!41461)))

(declare-fun b!951090 () Bool)

(assert (=> b!951090 (= e!535580 call!41462)))

(declare-fun b!951091 () Bool)

(assert (=> b!951091 (= e!535577 (= (apply!916 lt!428413 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5633 thiss!1141)))))

(declare-fun b!951092 () Bool)

(declare-fun res!637558 () Bool)

(assert (=> b!951092 (=> (not res!637558) (not e!535579))))

(assert (=> b!951092 (= res!637558 e!535573)))

(declare-fun res!637560 () Bool)

(assert (=> b!951092 (=> res!637560 e!535573)))

(assert (=> b!951092 (= res!637560 (not e!535572))))

(declare-fun res!637566 () Bool)

(assert (=> b!951092 (=> (not res!637566) (not e!535572))))

(assert (=> b!951092 (= res!637566 (bvslt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))))))

(declare-fun b!951093 () Bool)

(assert (=> b!951093 (= e!535579 e!535575)))

(declare-fun c!99323 () Bool)

(assert (=> b!951093 (= c!99323 (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!951094 () Bool)

(declare-fun Unit!32007 () Unit!32004)

(assert (=> b!951094 (= e!535581 Unit!32007)))

(assert (= (and d!115241 c!99319) b!951079))

(assert (= (and d!115241 (not c!99319)) b!951083))

(assert (= (and b!951083 c!99322) b!951080))

(assert (= (and b!951083 (not c!99322)) b!951076))

(assert (= (and b!951076 c!99320) b!951090))

(assert (= (and b!951076 (not c!99320)) b!951089))

(assert (= (or b!951090 b!951089) bm!41461))

(assert (= (or b!951080 bm!41461) bm!41460))

(assert (= (or b!951080 b!951090) bm!41459))

(assert (= (or b!951079 bm!41460) bm!41463))

(assert (= (or b!951079 bm!41459) bm!41458))

(assert (= (and d!115241 res!637561) b!951086))

(assert (= (and d!115241 c!99321) b!951078))

(assert (= (and d!115241 (not c!99321)) b!951094))

(assert (= (and d!115241 res!637564) b!951092))

(assert (= (and b!951092 res!637566) b!951081))

(assert (= (and b!951092 (not res!637560)) b!951084))

(assert (= (and b!951084 res!637565) b!951087))

(assert (= (and b!951092 res!637558) b!951085))

(assert (= (and b!951085 c!99318) b!951082))

(assert (= (and b!951085 (not c!99318)) b!951088))

(assert (= (and b!951082 res!637563) b!951074))

(assert (= (or b!951082 b!951088) bm!41462))

(assert (= (and b!951085 res!637559) b!951093))

(assert (= (and b!951093 c!99323) b!951077))

(assert (= (and b!951093 (not c!99323)) b!951075))

(assert (= (and b!951077 res!637562) b!951091))

(assert (= (or b!951077 b!951075) bm!41457))

(declare-fun b_lambda!14417 () Bool)

(assert (=> (not b_lambda!14417) (not b!951087)))

(declare-fun t!27834 () Bool)

(declare-fun tb!6205 () Bool)

(assert (=> (and b!950995 (= (defaultEntry!5797 thiss!1141) (defaultEntry!5797 thiss!1141)) t!27834) tb!6205))

(declare-fun result!12321 () Bool)

(assert (=> tb!6205 (= result!12321 tp_is_empty!20769)))

(assert (=> b!951087 t!27834))

(declare-fun b_and!29749 () Bool)

(assert (= b_and!29745 (and (=> t!27834 result!12321) b_and!29749)))

(declare-fun m!883467 () Bool)

(assert (=> b!951091 m!883467))

(declare-fun m!883469 () Bool)

(assert (=> b!951081 m!883469))

(assert (=> b!951081 m!883469))

(declare-fun m!883471 () Bool)

(assert (=> b!951081 m!883471))

(declare-fun m!883473 () Bool)

(assert (=> bm!41458 m!883473))

(declare-fun m!883475 () Bool)

(assert (=> b!951078 m!883475))

(declare-fun m!883477 () Bool)

(assert (=> b!951078 m!883477))

(declare-fun m!883479 () Bool)

(assert (=> b!951078 m!883479))

(assert (=> b!951078 m!883475))

(declare-fun m!883481 () Bool)

(assert (=> b!951078 m!883481))

(declare-fun m!883483 () Bool)

(assert (=> b!951078 m!883483))

(declare-fun m!883485 () Bool)

(assert (=> b!951078 m!883485))

(declare-fun m!883487 () Bool)

(assert (=> b!951078 m!883487))

(assert (=> b!951078 m!883487))

(declare-fun m!883489 () Bool)

(assert (=> b!951078 m!883489))

(declare-fun m!883491 () Bool)

(assert (=> b!951078 m!883491))

(declare-fun m!883493 () Bool)

(assert (=> b!951078 m!883493))

(declare-fun m!883495 () Bool)

(assert (=> b!951078 m!883495))

(declare-fun m!883497 () Bool)

(assert (=> b!951078 m!883497))

(assert (=> b!951078 m!883469))

(declare-fun m!883499 () Bool)

(assert (=> b!951078 m!883499))

(assert (=> b!951078 m!883493))

(declare-fun m!883501 () Bool)

(assert (=> b!951078 m!883501))

(declare-fun m!883503 () Bool)

(assert (=> b!951078 m!883503))

(assert (=> b!951078 m!883501))

(declare-fun m!883505 () Bool)

(assert (=> b!951078 m!883505))

(declare-fun m!883507 () Bool)

(assert (=> b!951079 m!883507))

(assert (=> d!115241 m!883427))

(assert (=> b!951087 m!883469))

(declare-fun m!883509 () Bool)

(assert (=> b!951087 m!883509))

(declare-fun m!883511 () Bool)

(assert (=> b!951087 m!883511))

(declare-fun m!883513 () Bool)

(assert (=> b!951087 m!883513))

(assert (=> b!951087 m!883469))

(assert (=> b!951087 m!883511))

(assert (=> b!951087 m!883513))

(declare-fun m!883515 () Bool)

(assert (=> b!951087 m!883515))

(assert (=> bm!41463 m!883499))

(assert (=> b!951086 m!883469))

(assert (=> b!951086 m!883469))

(assert (=> b!951086 m!883471))

(declare-fun m!883517 () Bool)

(assert (=> bm!41462 m!883517))

(declare-fun m!883519 () Bool)

(assert (=> bm!41457 m!883519))

(declare-fun m!883521 () Bool)

(assert (=> b!951074 m!883521))

(assert (=> b!951084 m!883469))

(assert (=> b!951084 m!883469))

(declare-fun m!883523 () Bool)

(assert (=> b!951084 m!883523))

(assert (=> b!950994 d!115241))

(declare-fun d!115243 () Bool)

(assert (=> d!115243 (= (validMask!0 (mask!27606 thiss!1141)) (and (or (= (mask!27606 thiss!1141) #b00000000000000000000000000000111) (= (mask!27606 thiss!1141) #b00000000000000000000000000001111) (= (mask!27606 thiss!1141) #b00000000000000000000000000011111) (= (mask!27606 thiss!1141) #b00000000000000000000000000111111) (= (mask!27606 thiss!1141) #b00000000000000000000000001111111) (= (mask!27606 thiss!1141) #b00000000000000000000000011111111) (= (mask!27606 thiss!1141) #b00000000000000000000000111111111) (= (mask!27606 thiss!1141) #b00000000000000000000001111111111) (= (mask!27606 thiss!1141) #b00000000000000000000011111111111) (= (mask!27606 thiss!1141) #b00000000000000000000111111111111) (= (mask!27606 thiss!1141) #b00000000000000000001111111111111) (= (mask!27606 thiss!1141) #b00000000000000000011111111111111) (= (mask!27606 thiss!1141) #b00000000000000000111111111111111) (= (mask!27606 thiss!1141) #b00000000000000001111111111111111) (= (mask!27606 thiss!1141) #b00000000000000011111111111111111) (= (mask!27606 thiss!1141) #b00000000000000111111111111111111) (= (mask!27606 thiss!1141) #b00000000000001111111111111111111) (= (mask!27606 thiss!1141) #b00000000000011111111111111111111) (= (mask!27606 thiss!1141) #b00000000000111111111111111111111) (= (mask!27606 thiss!1141) #b00000000001111111111111111111111) (= (mask!27606 thiss!1141) #b00000000011111111111111111111111) (= (mask!27606 thiss!1141) #b00000000111111111111111111111111) (= (mask!27606 thiss!1141) #b00000001111111111111111111111111) (= (mask!27606 thiss!1141) #b00000011111111111111111111111111) (= (mask!27606 thiss!1141) #b00000111111111111111111111111111) (= (mask!27606 thiss!1141) #b00001111111111111111111111111111) (= (mask!27606 thiss!1141) #b00011111111111111111111111111111) (= (mask!27606 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27606 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!950989 d!115243))

(declare-fun d!115245 () Bool)

(declare-fun lt!428435 () (_ BitVec 32))

(assert (=> d!115245 (and (or (bvslt lt!428435 #b00000000000000000000000000000000) (bvsge lt!428435 (size!28165 (_keys!10735 thiss!1141))) (and (bvsge lt!428435 #b00000000000000000000000000000000) (bvslt lt!428435 (size!28165 (_keys!10735 thiss!1141))))) (bvsge lt!428435 #b00000000000000000000000000000000) (bvslt lt!428435 (size!28165 (_keys!10735 thiss!1141))) (= (select (arr!27686 (_keys!10735 thiss!1141)) lt!428435) key!756))))

(declare-fun e!535585 () (_ BitVec 32))

(assert (=> d!115245 (= lt!428435 e!535585)))

(declare-fun c!99326 () Bool)

(assert (=> d!115245 (= c!99326 (= (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115245 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))) (bvslt (size!28165 (_keys!10735 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115245 (= (arrayScanForKey!0 (_keys!10735 thiss!1141) key!756 #b00000000000000000000000000000000) lt!428435)))

(declare-fun b!951101 () Bool)

(assert (=> b!951101 (= e!535585 #b00000000000000000000000000000000)))

(declare-fun b!951102 () Bool)

(assert (=> b!951102 (= e!535585 (arrayScanForKey!0 (_keys!10735 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115245 c!99326) b!951101))

(assert (= (and d!115245 (not c!99326)) b!951102))

(declare-fun m!883525 () Bool)

(assert (=> d!115245 m!883525))

(assert (=> d!115245 m!883469))

(declare-fun m!883527 () Bool)

(assert (=> b!951102 m!883527))

(assert (=> b!950989 d!115245))

(declare-fun d!115247 () Bool)

(declare-fun res!637571 () Bool)

(declare-fun e!535590 () Bool)

(assert (=> d!115247 (=> res!637571 e!535590)))

(assert (=> d!115247 (= res!637571 (= (select (arr!27686 (_keys!10735 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115247 (= (arrayContainsKey!0 (_keys!10735 thiss!1141) key!756 #b00000000000000000000000000000000) e!535590)))

(declare-fun b!951107 () Bool)

(declare-fun e!535591 () Bool)

(assert (=> b!951107 (= e!535590 e!535591)))

(declare-fun res!637572 () Bool)

(assert (=> b!951107 (=> (not res!637572) (not e!535591))))

(assert (=> b!951107 (= res!637572 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28165 (_keys!10735 thiss!1141))))))

(declare-fun b!951108 () Bool)

(assert (=> b!951108 (= e!535591 (arrayContainsKey!0 (_keys!10735 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115247 (not res!637571)) b!951107))

(assert (= (and b!951107 res!637572) b!951108))

(assert (=> d!115247 m!883469))

(declare-fun m!883529 () Bool)

(assert (=> b!951108 m!883529))

(assert (=> b!950989 d!115247))

(declare-fun d!115249 () Bool)

(declare-fun e!535594 () Bool)

(assert (=> d!115249 e!535594))

(declare-fun c!99329 () Bool)

(assert (=> d!115249 (= c!99329 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!428438 () Unit!32004)

(declare-fun choose!1598 (array!57586 array!57584 (_ BitVec 32) (_ BitVec 32) V!32657 V!32657 (_ BitVec 64) Int) Unit!32004)

(assert (=> d!115249 (= lt!428438 (choose!1598 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) key!756 (defaultEntry!5797 thiss!1141)))))

(assert (=> d!115249 (validMask!0 (mask!27606 thiss!1141))))

(assert (=> d!115249 (= (lemmaKeyInListMapIsInArray!328 (_keys!10735 thiss!1141) (_values!5820 thiss!1141) (mask!27606 thiss!1141) (extraKeys!5529 thiss!1141) (zeroValue!5633 thiss!1141) (minValue!5633 thiss!1141) key!756 (defaultEntry!5797 thiss!1141)) lt!428438)))

(declare-fun b!951113 () Bool)

(assert (=> b!951113 (= e!535594 (arrayContainsKey!0 (_keys!10735 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!951114 () Bool)

(assert (=> b!951114 (= e!535594 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5529 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115249 c!99329) b!951113))

(assert (= (and d!115249 (not c!99329)) b!951114))

(declare-fun m!883531 () Bool)

(assert (=> d!115249 m!883531))

(assert (=> d!115249 m!883427))

(assert (=> b!951113 m!883431))

(assert (=> b!950989 d!115249))

(declare-fun d!115251 () Bool)

(declare-fun res!637579 () Bool)

(declare-fun e!535597 () Bool)

(assert (=> d!115251 (=> (not res!637579) (not e!535597))))

(declare-fun simpleValid!376 (LongMapFixedSize!4956) Bool)

(assert (=> d!115251 (= res!637579 (simpleValid!376 thiss!1141))))

(assert (=> d!115251 (= (valid!1856 thiss!1141) e!535597)))

(declare-fun b!951121 () Bool)

(declare-fun res!637580 () Bool)

(assert (=> b!951121 (=> (not res!637580) (not e!535597))))

(declare-fun arrayCountValidKeys!0 (array!57586 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951121 (= res!637580 (= (arrayCountValidKeys!0 (_keys!10735 thiss!1141) #b00000000000000000000000000000000 (size!28165 (_keys!10735 thiss!1141))) (_size!2533 thiss!1141)))))

(declare-fun b!951122 () Bool)

(declare-fun res!637581 () Bool)

(assert (=> b!951122 (=> (not res!637581) (not e!535597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57586 (_ BitVec 32)) Bool)

(assert (=> b!951122 (= res!637581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10735 thiss!1141) (mask!27606 thiss!1141)))))

(declare-fun b!951123 () Bool)

(declare-datatypes ((List!19480 0))(
  ( (Nil!19477) (Cons!19476 (h!20637 (_ BitVec 64)) (t!27835 List!19480)) )
))
(declare-fun arrayNoDuplicates!0 (array!57586 (_ BitVec 32) List!19480) Bool)

(assert (=> b!951123 (= e!535597 (arrayNoDuplicates!0 (_keys!10735 thiss!1141) #b00000000000000000000000000000000 Nil!19477))))

(assert (= (and d!115251 res!637579) b!951121))

(assert (= (and b!951121 res!637580) b!951122))

(assert (= (and b!951122 res!637581) b!951123))

(declare-fun m!883533 () Bool)

(assert (=> d!115251 m!883533))

(declare-fun m!883535 () Bool)

(assert (=> b!951121 m!883535))

(declare-fun m!883537 () Bool)

(assert (=> b!951122 m!883537))

(declare-fun m!883539 () Bool)

(assert (=> b!951123 m!883539))

(assert (=> start!81352 d!115251))

(declare-fun d!115253 () Bool)

(declare-fun lt!428447 () SeekEntryResult!9135)

(assert (=> d!115253 (and (or ((_ is MissingVacant!9135) lt!428447) (not ((_ is Found!9135) lt!428447)) (and (bvsge (index!38911 lt!428447) #b00000000000000000000000000000000) (bvslt (index!38911 lt!428447) (size!28165 (_keys!10735 thiss!1141))))) (not ((_ is MissingVacant!9135) lt!428447)) (or (not ((_ is Found!9135) lt!428447)) (= (select (arr!27686 (_keys!10735 thiss!1141)) (index!38911 lt!428447)) key!756)))))

(declare-fun e!535604 () SeekEntryResult!9135)

(assert (=> d!115253 (= lt!428447 e!535604)))

(declare-fun c!99336 () Bool)

(declare-fun lt!428448 () SeekEntryResult!9135)

(assert (=> d!115253 (= c!99336 (and ((_ is Intermediate!9135) lt!428448) (undefined!9947 lt!428448)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57586 (_ BitVec 32)) SeekEntryResult!9135)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115253 (= lt!428448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27606 thiss!1141)) key!756 (_keys!10735 thiss!1141) (mask!27606 thiss!1141)))))

(assert (=> d!115253 (validMask!0 (mask!27606 thiss!1141))))

(assert (=> d!115253 (= (seekEntry!0 key!756 (_keys!10735 thiss!1141) (mask!27606 thiss!1141)) lt!428447)))

(declare-fun b!951136 () Bool)

(assert (=> b!951136 (= e!535604 Undefined!9135)))

(declare-fun b!951137 () Bool)

(declare-fun e!535605 () SeekEntryResult!9135)

(assert (=> b!951137 (= e!535604 e!535605)))

(declare-fun lt!428450 () (_ BitVec 64))

(assert (=> b!951137 (= lt!428450 (select (arr!27686 (_keys!10735 thiss!1141)) (index!38912 lt!428448)))))

(declare-fun c!99337 () Bool)

(assert (=> b!951137 (= c!99337 (= lt!428450 key!756))))

(declare-fun b!951138 () Bool)

(declare-fun c!99338 () Bool)

(assert (=> b!951138 (= c!99338 (= lt!428450 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!535606 () SeekEntryResult!9135)

(assert (=> b!951138 (= e!535605 e!535606)))

(declare-fun b!951139 () Bool)

(assert (=> b!951139 (= e!535606 (MissingZero!9135 (index!38912 lt!428448)))))

(declare-fun b!951140 () Bool)

(assert (=> b!951140 (= e!535605 (Found!9135 (index!38912 lt!428448)))))

(declare-fun b!951141 () Bool)

(declare-fun lt!428449 () SeekEntryResult!9135)

(assert (=> b!951141 (= e!535606 (ite ((_ is MissingVacant!9135) lt!428449) (MissingZero!9135 (index!38913 lt!428449)) lt!428449))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57586 (_ BitVec 32)) SeekEntryResult!9135)

(assert (=> b!951141 (= lt!428449 (seekKeyOrZeroReturnVacant!0 (x!81808 lt!428448) (index!38912 lt!428448) (index!38912 lt!428448) key!756 (_keys!10735 thiss!1141) (mask!27606 thiss!1141)))))

(assert (= (and d!115253 c!99336) b!951136))

(assert (= (and d!115253 (not c!99336)) b!951137))

(assert (= (and b!951137 c!99337) b!951140))

(assert (= (and b!951137 (not c!99337)) b!951138))

(assert (= (and b!951138 c!99338) b!951139))

(assert (= (and b!951138 (not c!99338)) b!951141))

(declare-fun m!883541 () Bool)

(assert (=> d!115253 m!883541))

(declare-fun m!883543 () Bool)

(assert (=> d!115253 m!883543))

(assert (=> d!115253 m!883543))

(declare-fun m!883545 () Bool)

(assert (=> d!115253 m!883545))

(assert (=> d!115253 m!883427))

(declare-fun m!883547 () Bool)

(assert (=> b!951137 m!883547))

(declare-fun m!883549 () Bool)

(assert (=> b!951141 m!883549))

(assert (=> b!950987 d!115253))

(declare-fun condMapEmpty!33081 () Bool)

(declare-fun mapDefault!33081 () ValueCell!9903)

(assert (=> mapNonEmpty!33075 (= condMapEmpty!33081 (= mapRest!33075 ((as const (Array (_ BitVec 32) ValueCell!9903)) mapDefault!33081)))))

(declare-fun e!535612 () Bool)

(declare-fun mapRes!33081 () Bool)

(assert (=> mapNonEmpty!33075 (= tp!63389 (and e!535612 mapRes!33081))))

(declare-fun mapIsEmpty!33081 () Bool)

(assert (=> mapIsEmpty!33081 mapRes!33081))

(declare-fun b!951148 () Bool)

(declare-fun e!535611 () Bool)

(assert (=> b!951148 (= e!535611 tp_is_empty!20769)))

(declare-fun mapNonEmpty!33081 () Bool)

(declare-fun tp!63399 () Bool)

(assert (=> mapNonEmpty!33081 (= mapRes!33081 (and tp!63399 e!535611))))

(declare-fun mapKey!33081 () (_ BitVec 32))

(declare-fun mapValue!33081 () ValueCell!9903)

(declare-fun mapRest!33081 () (Array (_ BitVec 32) ValueCell!9903))

(assert (=> mapNonEmpty!33081 (= mapRest!33075 (store mapRest!33081 mapKey!33081 mapValue!33081))))

(declare-fun b!951149 () Bool)

(assert (=> b!951149 (= e!535612 tp_is_empty!20769)))

(assert (= (and mapNonEmpty!33075 condMapEmpty!33081) mapIsEmpty!33081))

(assert (= (and mapNonEmpty!33075 (not condMapEmpty!33081)) mapNonEmpty!33081))

(assert (= (and mapNonEmpty!33081 ((_ is ValueCellFull!9903) mapValue!33081)) b!951148))

(assert (= (and mapNonEmpty!33075 ((_ is ValueCellFull!9903) mapDefault!33081)) b!951149))

(declare-fun m!883551 () Bool)

(assert (=> mapNonEmpty!33081 m!883551))

(declare-fun b_lambda!14419 () Bool)

(assert (= b_lambda!14417 (or (and b!950995 b_free!18261) b_lambda!14419)))

(check-sat (not d!115251) (not bm!41463) (not b!951031) (not b!951122) (not b!951123) (not b!951029) (not bm!41458) (not b!951078) (not mapNonEmpty!33081) (not b_lambda!14419) (not bm!41462) tp_is_empty!20769 (not b!951091) (not b!951074) (not d!115239) (not b!951121) (not b!951086) (not b!951108) (not d!115253) (not d!115249) (not b!951102) (not b_next!18261) (not d!115241) (not b!951084) (not bm!41457) (not b!951087) b_and!29749 (not b!951141) (not b!951113) (not b!951079) (not b!951081))
(check-sat b_and!29749 (not b_next!18261))
