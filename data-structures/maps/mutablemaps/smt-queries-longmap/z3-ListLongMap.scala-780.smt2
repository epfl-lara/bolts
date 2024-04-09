; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18476 () Bool)

(assert start!18476)

(declare-fun b!183112 () Bool)

(declare-fun b_free!4521 () Bool)

(declare-fun b_next!4521 () Bool)

(assert (=> b!183112 (= b_free!4521 (not b_next!4521))))

(declare-fun tp!16330 () Bool)

(declare-fun b_and!11107 () Bool)

(assert (=> b!183112 (= tp!16330 b_and!11107)))

(declare-fun b!183107 () Bool)

(declare-fun res!86698 () Bool)

(declare-fun e!120567 () Bool)

(assert (=> b!183107 (=> (not res!86698) (not e!120567))))

(declare-datatypes ((V!5371 0))(
  ( (V!5372 (val!2191 Int)) )
))
(declare-datatypes ((ValueCell!1803 0))(
  ( (ValueCellFull!1803 (v!4089 V!5371)) (EmptyCell!1803) )
))
(declare-datatypes ((array!7776 0))(
  ( (array!7777 (arr!3676 (Array (_ BitVec 32) (_ BitVec 64))) (size!3988 (_ BitVec 32))) )
))
(declare-datatypes ((array!7778 0))(
  ( (array!7779 (arr!3677 (Array (_ BitVec 32) ValueCell!1803)) (size!3989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2514 0))(
  ( (LongMapFixedSize!2515 (defaultEntry!3746 Int) (mask!8804 (_ BitVec 32)) (extraKeys!3483 (_ BitVec 32)) (zeroValue!3587 V!5371) (minValue!3587 V!5371) (_size!1306 (_ BitVec 32)) (_keys!5663 array!7776) (_values!3729 array!7778) (_vacant!1306 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2514)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3410 0))(
  ( (tuple2!3411 (_1!1715 (_ BitVec 64)) (_2!1715 V!5371)) )
))
(declare-datatypes ((List!2353 0))(
  ( (Nil!2350) (Cons!2349 (h!2978 tuple2!3410) (t!7227 List!2353)) )
))
(declare-datatypes ((ListLongMap!2341 0))(
  ( (ListLongMap!2342 (toList!1186 List!2353)) )
))
(declare-fun contains!1266 (ListLongMap!2341 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!829 (array!7776 array!7778 (_ BitVec 32) (_ BitVec 32) V!5371 V!5371 (_ BitVec 32) Int) ListLongMap!2341)

(assert (=> b!183107 (= res!86698 (not (contains!1266 (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)) key!828)))))

(declare-fun b!183108 () Bool)

(declare-fun e!120565 () Bool)

(declare-fun tp_is_empty!4293 () Bool)

(assert (=> b!183108 (= e!120565 tp_is_empty!4293)))

(declare-fun b!183109 () Bool)

(declare-fun e!120564 () Bool)

(declare-fun mapRes!7370 () Bool)

(assert (=> b!183109 (= e!120564 (and e!120565 mapRes!7370))))

(declare-fun condMapEmpty!7370 () Bool)

(declare-fun mapDefault!7370 () ValueCell!1803)

(assert (=> b!183109 (= condMapEmpty!7370 (= (arr!3677 (_values!3729 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1803)) mapDefault!7370)))))

(declare-fun res!86697 () Bool)

(declare-fun e!120568 () Bool)

(assert (=> start!18476 (=> (not res!86697) (not e!120568))))

(declare-fun valid!1033 (LongMapFixedSize!2514) Bool)

(assert (=> start!18476 (= res!86697 (valid!1033 thiss!1248))))

(assert (=> start!18476 e!120568))

(declare-fun e!120563 () Bool)

(assert (=> start!18476 e!120563))

(assert (=> start!18476 true))

(declare-fun b!183110 () Bool)

(declare-fun e!120566 () Bool)

(assert (=> b!183110 (= e!120566 tp_is_empty!4293)))

(declare-fun b!183111 () Bool)

(declare-fun res!86699 () Bool)

(assert (=> b!183111 (=> (not res!86699) (not e!120568))))

(assert (=> b!183111 (= res!86699 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2367 (array!7776) Bool)

(declare-fun array_inv!2368 (array!7778) Bool)

(assert (=> b!183112 (= e!120563 (and tp!16330 tp_is_empty!4293 (array_inv!2367 (_keys!5663 thiss!1248)) (array_inv!2368 (_values!3729 thiss!1248)) e!120564))))

(declare-fun b!183113 () Bool)

(assert (=> b!183113 (= e!120568 e!120567)))

(declare-fun res!86700 () Bool)

(assert (=> b!183113 (=> (not res!86700) (not e!120567))))

(declare-datatypes ((SeekEntryResult!627 0))(
  ( (MissingZero!627 (index!4678 (_ BitVec 32))) (Found!627 (index!4679 (_ BitVec 32))) (Intermediate!627 (undefined!1439 Bool) (index!4680 (_ BitVec 32)) (x!19963 (_ BitVec 32))) (Undefined!627) (MissingVacant!627 (index!4681 (_ BitVec 32))) )
))
(declare-fun lt!90548 () SeekEntryResult!627)

(get-info :version)

(assert (=> b!183113 (= res!86700 (and (not ((_ is Undefined!627) lt!90548)) (not ((_ is MissingVacant!627) lt!90548)) (not ((_ is MissingZero!627) lt!90548)) ((_ is Found!627) lt!90548)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7776 (_ BitVec 32)) SeekEntryResult!627)

(assert (=> b!183113 (= lt!90548 (seekEntryOrOpen!0 key!828 (_keys!5663 thiss!1248) (mask!8804 thiss!1248)))))

(declare-fun b!183114 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!183114 (= e!120567 (not (validMask!0 (mask!8804 thiss!1248))))))

(declare-fun mapNonEmpty!7370 () Bool)

(declare-fun tp!16331 () Bool)

(assert (=> mapNonEmpty!7370 (= mapRes!7370 (and tp!16331 e!120566))))

(declare-fun mapValue!7370 () ValueCell!1803)

(declare-fun mapKey!7370 () (_ BitVec 32))

(declare-fun mapRest!7370 () (Array (_ BitVec 32) ValueCell!1803))

(assert (=> mapNonEmpty!7370 (= (arr!3677 (_values!3729 thiss!1248)) (store mapRest!7370 mapKey!7370 mapValue!7370))))

(declare-fun mapIsEmpty!7370 () Bool)

(assert (=> mapIsEmpty!7370 mapRes!7370))

(assert (= (and start!18476 res!86697) b!183111))

(assert (= (and b!183111 res!86699) b!183113))

(assert (= (and b!183113 res!86700) b!183107))

(assert (= (and b!183107 res!86698) b!183114))

(assert (= (and b!183109 condMapEmpty!7370) mapIsEmpty!7370))

(assert (= (and b!183109 (not condMapEmpty!7370)) mapNonEmpty!7370))

(assert (= (and mapNonEmpty!7370 ((_ is ValueCellFull!1803) mapValue!7370)) b!183110))

(assert (= (and b!183109 ((_ is ValueCellFull!1803) mapDefault!7370)) b!183108))

(assert (= b!183112 b!183109))

(assert (= start!18476 b!183112))

(declare-fun m!210687 () Bool)

(assert (=> mapNonEmpty!7370 m!210687))

(declare-fun m!210689 () Bool)

(assert (=> b!183113 m!210689))

(declare-fun m!210691 () Bool)

(assert (=> b!183107 m!210691))

(assert (=> b!183107 m!210691))

(declare-fun m!210693 () Bool)

(assert (=> b!183107 m!210693))

(declare-fun m!210695 () Bool)

(assert (=> start!18476 m!210695))

(declare-fun m!210697 () Bool)

(assert (=> b!183112 m!210697))

(declare-fun m!210699 () Bool)

(assert (=> b!183112 m!210699))

(declare-fun m!210701 () Bool)

(assert (=> b!183114 m!210701))

(check-sat (not b!183113) (not b!183112) b_and!11107 (not b!183114) (not b!183107) tp_is_empty!4293 (not mapNonEmpty!7370) (not start!18476) (not b_next!4521))
(check-sat b_and!11107 (not b_next!4521))
(get-model)

(declare-fun d!54603 () Bool)

(assert (=> d!54603 (= (array_inv!2367 (_keys!5663 thiss!1248)) (bvsge (size!3988 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183112 d!54603))

(declare-fun d!54605 () Bool)

(assert (=> d!54605 (= (array_inv!2368 (_values!3729 thiss!1248)) (bvsge (size!3989 (_values!3729 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183112 d!54605))

(declare-fun d!54607 () Bool)

(declare-fun e!120595 () Bool)

(assert (=> d!54607 e!120595))

(declare-fun res!86715 () Bool)

(assert (=> d!54607 (=> res!86715 e!120595)))

(declare-fun lt!90563 () Bool)

(assert (=> d!54607 (= res!86715 (not lt!90563))))

(declare-fun lt!90562 () Bool)

(assert (=> d!54607 (= lt!90563 lt!90562)))

(declare-datatypes ((Unit!5541 0))(
  ( (Unit!5542) )
))
(declare-fun lt!90560 () Unit!5541)

(declare-fun e!120594 () Unit!5541)

(assert (=> d!54607 (= lt!90560 e!120594)))

(declare-fun c!32801 () Bool)

(assert (=> d!54607 (= c!32801 lt!90562)))

(declare-fun containsKey!218 (List!2353 (_ BitVec 64)) Bool)

(assert (=> d!54607 (= lt!90562 (containsKey!218 (toList!1186 (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248))) key!828))))

(assert (=> d!54607 (= (contains!1266 (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)) key!828) lt!90563)))

(declare-fun b!183145 () Bool)

(declare-fun lt!90561 () Unit!5541)

(assert (=> b!183145 (= e!120594 lt!90561)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!167 (List!2353 (_ BitVec 64)) Unit!5541)

(assert (=> b!183145 (= lt!90561 (lemmaContainsKeyImpliesGetValueByKeyDefined!167 (toList!1186 (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248))) key!828))))

(declare-datatypes ((Option!220 0))(
  ( (Some!219 (v!4091 V!5371)) (None!218) )
))
(declare-fun isDefined!168 (Option!220) Bool)

(declare-fun getValueByKey!214 (List!2353 (_ BitVec 64)) Option!220)

(assert (=> b!183145 (isDefined!168 (getValueByKey!214 (toList!1186 (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248))) key!828))))

(declare-fun b!183146 () Bool)

(declare-fun Unit!5543 () Unit!5541)

(assert (=> b!183146 (= e!120594 Unit!5543)))

(declare-fun b!183147 () Bool)

(assert (=> b!183147 (= e!120595 (isDefined!168 (getValueByKey!214 (toList!1186 (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248))) key!828)))))

(assert (= (and d!54607 c!32801) b!183145))

(assert (= (and d!54607 (not c!32801)) b!183146))

(assert (= (and d!54607 (not res!86715)) b!183147))

(declare-fun m!210719 () Bool)

(assert (=> d!54607 m!210719))

(declare-fun m!210721 () Bool)

(assert (=> b!183145 m!210721))

(declare-fun m!210723 () Bool)

(assert (=> b!183145 m!210723))

(assert (=> b!183145 m!210723))

(declare-fun m!210725 () Bool)

(assert (=> b!183145 m!210725))

(assert (=> b!183147 m!210723))

(assert (=> b!183147 m!210723))

(assert (=> b!183147 m!210725))

(assert (=> b!183107 d!54607))

(declare-fun b!183190 () Bool)

(declare-fun e!120630 () Bool)

(declare-fun e!120631 () Bool)

(assert (=> b!183190 (= e!120630 e!120631)))

(declare-fun c!32816 () Bool)

(assert (=> b!183190 (= c!32816 (not (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18497 () Bool)

(declare-fun call!18506 () ListLongMap!2341)

(declare-fun call!18500 () ListLongMap!2341)

(assert (=> bm!18497 (= call!18506 call!18500)))

(declare-fun call!18503 () ListLongMap!2341)

(declare-fun bm!18499 () Bool)

(declare-fun c!32819 () Bool)

(declare-fun c!32818 () Bool)

(declare-fun call!18501 () ListLongMap!2341)

(declare-fun +!273 (ListLongMap!2341 tuple2!3410) ListLongMap!2341)

(assert (=> bm!18499 (= call!18503 (+!273 (ite c!32819 call!18500 (ite c!32818 call!18506 call!18501)) (ite (or c!32819 c!32818) (tuple2!3411 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3587 thiss!1248)) (tuple2!3411 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3587 thiss!1248)))))))

(declare-fun bm!18500 () Bool)

(declare-fun call!18505 () ListLongMap!2341)

(assert (=> bm!18500 (= call!18505 call!18503)))

(declare-fun b!183191 () Bool)

(declare-fun e!120632 () Bool)

(declare-fun e!120628 () Bool)

(assert (=> b!183191 (= e!120632 e!120628)))

(declare-fun res!86739 () Bool)

(declare-fun call!18502 () Bool)

(assert (=> b!183191 (= res!86739 call!18502)))

(assert (=> b!183191 (=> (not res!86739) (not e!120628))))

(declare-fun b!183192 () Bool)

(declare-fun e!120622 () Unit!5541)

(declare-fun lt!90622 () Unit!5541)

(assert (=> b!183192 (= e!120622 lt!90622)))

(declare-fun lt!90621 () ListLongMap!2341)

(declare-fun getCurrentListMapNoExtraKeys!188 (array!7776 array!7778 (_ BitVec 32) (_ BitVec 32) V!5371 V!5371 (_ BitVec 32) Int) ListLongMap!2341)

(assert (=> b!183192 (= lt!90621 (getCurrentListMapNoExtraKeys!188 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)))))

(declare-fun lt!90620 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90620 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90627 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90627 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90625 () Unit!5541)

(declare-fun addStillContains!134 (ListLongMap!2341 (_ BitVec 64) V!5371 (_ BitVec 64)) Unit!5541)

(assert (=> b!183192 (= lt!90625 (addStillContains!134 lt!90621 lt!90620 (zeroValue!3587 thiss!1248) lt!90627))))

(assert (=> b!183192 (contains!1266 (+!273 lt!90621 (tuple2!3411 lt!90620 (zeroValue!3587 thiss!1248))) lt!90627)))

(declare-fun lt!90610 () Unit!5541)

(assert (=> b!183192 (= lt!90610 lt!90625)))

(declare-fun lt!90612 () ListLongMap!2341)

(assert (=> b!183192 (= lt!90612 (getCurrentListMapNoExtraKeys!188 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)))))

(declare-fun lt!90611 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90611 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90624 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90624 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90623 () Unit!5541)

(declare-fun addApplyDifferent!134 (ListLongMap!2341 (_ BitVec 64) V!5371 (_ BitVec 64)) Unit!5541)

(assert (=> b!183192 (= lt!90623 (addApplyDifferent!134 lt!90612 lt!90611 (minValue!3587 thiss!1248) lt!90624))))

(declare-fun apply!158 (ListLongMap!2341 (_ BitVec 64)) V!5371)

(assert (=> b!183192 (= (apply!158 (+!273 lt!90612 (tuple2!3411 lt!90611 (minValue!3587 thiss!1248))) lt!90624) (apply!158 lt!90612 lt!90624))))

(declare-fun lt!90628 () Unit!5541)

(assert (=> b!183192 (= lt!90628 lt!90623)))

(declare-fun lt!90618 () ListLongMap!2341)

(assert (=> b!183192 (= lt!90618 (getCurrentListMapNoExtraKeys!188 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)))))

(declare-fun lt!90609 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90609 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90614 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90614 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90619 () Unit!5541)

(assert (=> b!183192 (= lt!90619 (addApplyDifferent!134 lt!90618 lt!90609 (zeroValue!3587 thiss!1248) lt!90614))))

(assert (=> b!183192 (= (apply!158 (+!273 lt!90618 (tuple2!3411 lt!90609 (zeroValue!3587 thiss!1248))) lt!90614) (apply!158 lt!90618 lt!90614))))

(declare-fun lt!90617 () Unit!5541)

(assert (=> b!183192 (= lt!90617 lt!90619)))

(declare-fun lt!90616 () ListLongMap!2341)

(assert (=> b!183192 (= lt!90616 (getCurrentListMapNoExtraKeys!188 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)))))

(declare-fun lt!90613 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90613 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90615 () (_ BitVec 64))

(assert (=> b!183192 (= lt!90615 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183192 (= lt!90622 (addApplyDifferent!134 lt!90616 lt!90613 (minValue!3587 thiss!1248) lt!90615))))

(assert (=> b!183192 (= (apply!158 (+!273 lt!90616 (tuple2!3411 lt!90613 (minValue!3587 thiss!1248))) lt!90615) (apply!158 lt!90616 lt!90615))))

(declare-fun b!183193 () Bool)

(declare-fun e!120624 () Bool)

(declare-fun lt!90608 () ListLongMap!2341)

(declare-fun get!2106 (ValueCell!1803 V!5371) V!5371)

(declare-fun dynLambda!496 (Int (_ BitVec 64)) V!5371)

(assert (=> b!183193 (= e!120624 (= (apply!158 lt!90608 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000)) (get!2106 (select (arr!3677 (_values!3729 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!496 (defaultEntry!3746 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!183193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3989 (_values!3729 thiss!1248))))))

(assert (=> b!183193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))))))

(declare-fun b!183194 () Bool)

(declare-fun e!120627 () ListLongMap!2341)

(assert (=> b!183194 (= e!120627 call!18501)))

(declare-fun b!183195 () Bool)

(declare-fun c!32815 () Bool)

(assert (=> b!183195 (= c!32815 (and (not (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!120623 () ListLongMap!2341)

(assert (=> b!183195 (= e!120623 e!120627)))

(declare-fun b!183196 () Bool)

(assert (=> b!183196 (= e!120623 call!18505)))

(declare-fun bm!18501 () Bool)

(assert (=> bm!18501 (= call!18501 call!18506)))

(declare-fun b!183197 () Bool)

(declare-fun call!18504 () Bool)

(assert (=> b!183197 (= e!120631 (not call!18504))))

(declare-fun b!183198 () Bool)

(declare-fun e!120626 () ListLongMap!2341)

(assert (=> b!183198 (= e!120626 e!120623)))

(assert (=> b!183198 (= c!32818 (and (not (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!183199 () Bool)

(declare-fun Unit!5544 () Unit!5541)

(assert (=> b!183199 (= e!120622 Unit!5544)))

(declare-fun b!183200 () Bool)

(assert (=> b!183200 (= e!120632 (not call!18502))))

(declare-fun bm!18498 () Bool)

(assert (=> bm!18498 (= call!18502 (contains!1266 lt!90608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!54609 () Bool)

(assert (=> d!54609 e!120630))

(declare-fun res!86737 () Bool)

(assert (=> d!54609 (=> (not res!86737) (not e!120630))))

(assert (=> d!54609 (= res!86737 (or (bvsge #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))))))))

(declare-fun lt!90626 () ListLongMap!2341)

(assert (=> d!54609 (= lt!90608 lt!90626)))

(declare-fun lt!90629 () Unit!5541)

(assert (=> d!54609 (= lt!90629 e!120622)))

(declare-fun c!32814 () Bool)

(declare-fun e!120633 () Bool)

(assert (=> d!54609 (= c!32814 e!120633)))

(declare-fun res!86734 () Bool)

(assert (=> d!54609 (=> (not res!86734) (not e!120633))))

(assert (=> d!54609 (= res!86734 (bvslt #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))))))

(assert (=> d!54609 (= lt!90626 e!120626)))

(assert (=> d!54609 (= c!32819 (and (not (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54609 (validMask!0 (mask!8804 thiss!1248))))

(assert (=> d!54609 (= (getCurrentListMap!829 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)) lt!90608)))

(declare-fun b!183201 () Bool)

(assert (=> b!183201 (= e!120628 (= (apply!158 lt!90608 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3587 thiss!1248)))))

(declare-fun b!183202 () Bool)

(declare-fun e!120634 () Bool)

(assert (=> b!183202 (= e!120634 e!120624)))

(declare-fun res!86741 () Bool)

(assert (=> b!183202 (=> (not res!86741) (not e!120624))))

(assert (=> b!183202 (= res!86741 (contains!1266 lt!90608 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183202 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))))))

(declare-fun b!183203 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!183203 (= e!120633 (validKeyInArray!0 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18502 () Bool)

(assert (=> bm!18502 (= call!18500 (getCurrentListMapNoExtraKeys!188 (_keys!5663 thiss!1248) (_values!3729 thiss!1248) (mask!8804 thiss!1248) (extraKeys!3483 thiss!1248) (zeroValue!3587 thiss!1248) (minValue!3587 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3746 thiss!1248)))))

(declare-fun b!183204 () Bool)

(declare-fun e!120629 () Bool)

(assert (=> b!183204 (= e!120629 (validKeyInArray!0 (select (arr!3676 (_keys!5663 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183205 () Bool)

(declare-fun e!120625 () Bool)

(assert (=> b!183205 (= e!120625 (= (apply!158 lt!90608 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3587 thiss!1248)))))

(declare-fun bm!18503 () Bool)

(assert (=> bm!18503 (= call!18504 (contains!1266 lt!90608 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183206 () Bool)

(declare-fun res!86742 () Bool)

(assert (=> b!183206 (=> (not res!86742) (not e!120630))))

(assert (=> b!183206 (= res!86742 e!120634)))

(declare-fun res!86740 () Bool)

(assert (=> b!183206 (=> res!86740 e!120634)))

(assert (=> b!183206 (= res!86740 (not e!120629))))

(declare-fun res!86738 () Bool)

(assert (=> b!183206 (=> (not res!86738) (not e!120629))))

(assert (=> b!183206 (= res!86738 (bvslt #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))))))

(declare-fun b!183207 () Bool)

(assert (=> b!183207 (= e!120631 e!120625)))

(declare-fun res!86735 () Bool)

(assert (=> b!183207 (= res!86735 call!18504)))

(assert (=> b!183207 (=> (not res!86735) (not e!120625))))

(declare-fun b!183208 () Bool)

(assert (=> b!183208 (= e!120626 (+!273 call!18503 (tuple2!3411 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3587 thiss!1248))))))

(declare-fun b!183209 () Bool)

(declare-fun res!86736 () Bool)

(assert (=> b!183209 (=> (not res!86736) (not e!120630))))

(assert (=> b!183209 (= res!86736 e!120632)))

(declare-fun c!32817 () Bool)

(assert (=> b!183209 (= c!32817 (not (= (bvand (extraKeys!3483 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!183210 () Bool)

(assert (=> b!183210 (= e!120627 call!18505)))

(assert (= (and d!54609 c!32819) b!183208))

(assert (= (and d!54609 (not c!32819)) b!183198))

(assert (= (and b!183198 c!32818) b!183196))

(assert (= (and b!183198 (not c!32818)) b!183195))

(assert (= (and b!183195 c!32815) b!183210))

(assert (= (and b!183195 (not c!32815)) b!183194))

(assert (= (or b!183210 b!183194) bm!18501))

(assert (= (or b!183196 bm!18501) bm!18497))

(assert (= (or b!183196 b!183210) bm!18500))

(assert (= (or b!183208 bm!18497) bm!18502))

(assert (= (or b!183208 bm!18500) bm!18499))

(assert (= (and d!54609 res!86734) b!183203))

(assert (= (and d!54609 c!32814) b!183192))

(assert (= (and d!54609 (not c!32814)) b!183199))

(assert (= (and d!54609 res!86737) b!183206))

(assert (= (and b!183206 res!86738) b!183204))

(assert (= (and b!183206 (not res!86740)) b!183202))

(assert (= (and b!183202 res!86741) b!183193))

(assert (= (and b!183206 res!86742) b!183209))

(assert (= (and b!183209 c!32817) b!183191))

(assert (= (and b!183209 (not c!32817)) b!183200))

(assert (= (and b!183191 res!86739) b!183201))

(assert (= (or b!183191 b!183200) bm!18498))

(assert (= (and b!183209 res!86736) b!183190))

(assert (= (and b!183190 c!32816) b!183207))

(assert (= (and b!183190 (not c!32816)) b!183197))

(assert (= (and b!183207 res!86735) b!183205))

(assert (= (or b!183207 b!183197) bm!18503))

(declare-fun b_lambda!7217 () Bool)

(assert (=> (not b_lambda!7217) (not b!183193)))

(declare-fun t!7230 () Bool)

(declare-fun tb!2835 () Bool)

(assert (=> (and b!183112 (= (defaultEntry!3746 thiss!1248) (defaultEntry!3746 thiss!1248)) t!7230) tb!2835))

(declare-fun result!4767 () Bool)

(assert (=> tb!2835 (= result!4767 tp_is_empty!4293)))

(assert (=> b!183193 t!7230))

(declare-fun b_and!11111 () Bool)

(assert (= b_and!11107 (and (=> t!7230 result!4767) b_and!11111)))

(declare-fun m!210727 () Bool)

(assert (=> b!183192 m!210727))

(declare-fun m!210729 () Bool)

(assert (=> b!183192 m!210729))

(declare-fun m!210731 () Bool)

(assert (=> b!183192 m!210731))

(declare-fun m!210733 () Bool)

(assert (=> b!183192 m!210733))

(declare-fun m!210735 () Bool)

(assert (=> b!183192 m!210735))

(declare-fun m!210737 () Bool)

(assert (=> b!183192 m!210737))

(assert (=> b!183192 m!210731))

(assert (=> b!183192 m!210727))

(declare-fun m!210739 () Bool)

(assert (=> b!183192 m!210739))

(declare-fun m!210741 () Bool)

(assert (=> b!183192 m!210741))

(declare-fun m!210743 () Bool)

(assert (=> b!183192 m!210743))

(declare-fun m!210745 () Bool)

(assert (=> b!183192 m!210745))

(declare-fun m!210747 () Bool)

(assert (=> b!183192 m!210747))

(assert (=> b!183192 m!210741))

(declare-fun m!210749 () Bool)

(assert (=> b!183192 m!210749))

(assert (=> b!183192 m!210745))

(declare-fun m!210751 () Bool)

(assert (=> b!183192 m!210751))

(declare-fun m!210753 () Bool)

(assert (=> b!183192 m!210753))

(declare-fun m!210755 () Bool)

(assert (=> b!183192 m!210755))

(declare-fun m!210757 () Bool)

(assert (=> b!183192 m!210757))

(declare-fun m!210759 () Bool)

(assert (=> b!183192 m!210759))

(declare-fun m!210761 () Bool)

(assert (=> bm!18499 m!210761))

(assert (=> b!183203 m!210729))

(assert (=> b!183203 m!210729))

(declare-fun m!210763 () Bool)

(assert (=> b!183203 m!210763))

(assert (=> d!54609 m!210701))

(declare-fun m!210765 () Bool)

(assert (=> bm!18498 m!210765))

(declare-fun m!210767 () Bool)

(assert (=> bm!18503 m!210767))

(assert (=> b!183204 m!210729))

(assert (=> b!183204 m!210729))

(assert (=> b!183204 m!210763))

(declare-fun m!210769 () Bool)

(assert (=> b!183201 m!210769))

(assert (=> b!183202 m!210729))

(assert (=> b!183202 m!210729))

(declare-fun m!210771 () Bool)

(assert (=> b!183202 m!210771))

(declare-fun m!210773 () Bool)

(assert (=> b!183205 m!210773))

(assert (=> b!183193 m!210729))

(declare-fun m!210775 () Bool)

(assert (=> b!183193 m!210775))

(declare-fun m!210777 () Bool)

(assert (=> b!183193 m!210777))

(assert (=> b!183193 m!210775))

(assert (=> b!183193 m!210777))

(declare-fun m!210779 () Bool)

(assert (=> b!183193 m!210779))

(assert (=> b!183193 m!210729))

(declare-fun m!210781 () Bool)

(assert (=> b!183193 m!210781))

(declare-fun m!210783 () Bool)

(assert (=> b!183208 m!210783))

(assert (=> bm!18502 m!210735))

(assert (=> b!183107 d!54609))

(declare-fun e!120642 () SeekEntryResult!627)

(declare-fun lt!90636 () SeekEntryResult!627)

(declare-fun b!183225 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7776 (_ BitVec 32)) SeekEntryResult!627)

(assert (=> b!183225 (= e!120642 (seekKeyOrZeroReturnVacant!0 (x!19963 lt!90636) (index!4680 lt!90636) (index!4680 lt!90636) key!828 (_keys!5663 thiss!1248) (mask!8804 thiss!1248)))))

(declare-fun d!54611 () Bool)

(declare-fun lt!90637 () SeekEntryResult!627)

(assert (=> d!54611 (and (or ((_ is Undefined!627) lt!90637) (not ((_ is Found!627) lt!90637)) (and (bvsge (index!4679 lt!90637) #b00000000000000000000000000000000) (bvslt (index!4679 lt!90637) (size!3988 (_keys!5663 thiss!1248))))) (or ((_ is Undefined!627) lt!90637) ((_ is Found!627) lt!90637) (not ((_ is MissingZero!627) lt!90637)) (and (bvsge (index!4678 lt!90637) #b00000000000000000000000000000000) (bvslt (index!4678 lt!90637) (size!3988 (_keys!5663 thiss!1248))))) (or ((_ is Undefined!627) lt!90637) ((_ is Found!627) lt!90637) ((_ is MissingZero!627) lt!90637) (not ((_ is MissingVacant!627) lt!90637)) (and (bvsge (index!4681 lt!90637) #b00000000000000000000000000000000) (bvslt (index!4681 lt!90637) (size!3988 (_keys!5663 thiss!1248))))) (or ((_ is Undefined!627) lt!90637) (ite ((_ is Found!627) lt!90637) (= (select (arr!3676 (_keys!5663 thiss!1248)) (index!4679 lt!90637)) key!828) (ite ((_ is MissingZero!627) lt!90637) (= (select (arr!3676 (_keys!5663 thiss!1248)) (index!4678 lt!90637)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!627) lt!90637) (= (select (arr!3676 (_keys!5663 thiss!1248)) (index!4681 lt!90637)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!120643 () SeekEntryResult!627)

(assert (=> d!54611 (= lt!90637 e!120643)))

(declare-fun c!32827 () Bool)

(assert (=> d!54611 (= c!32827 (and ((_ is Intermediate!627) lt!90636) (undefined!1439 lt!90636)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7776 (_ BitVec 32)) SeekEntryResult!627)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54611 (= lt!90636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8804 thiss!1248)) key!828 (_keys!5663 thiss!1248) (mask!8804 thiss!1248)))))

(assert (=> d!54611 (validMask!0 (mask!8804 thiss!1248))))

(assert (=> d!54611 (= (seekEntryOrOpen!0 key!828 (_keys!5663 thiss!1248) (mask!8804 thiss!1248)) lt!90637)))

(declare-fun b!183226 () Bool)

(assert (=> b!183226 (= e!120643 Undefined!627)))

(declare-fun b!183227 () Bool)

(declare-fun e!120641 () SeekEntryResult!627)

(assert (=> b!183227 (= e!120643 e!120641)))

(declare-fun lt!90638 () (_ BitVec 64))

(assert (=> b!183227 (= lt!90638 (select (arr!3676 (_keys!5663 thiss!1248)) (index!4680 lt!90636)))))

(declare-fun c!32826 () Bool)

(assert (=> b!183227 (= c!32826 (= lt!90638 key!828))))

(declare-fun b!183228 () Bool)

(assert (=> b!183228 (= e!120642 (MissingZero!627 (index!4680 lt!90636)))))

(declare-fun b!183229 () Bool)

(assert (=> b!183229 (= e!120641 (Found!627 (index!4680 lt!90636)))))

(declare-fun b!183230 () Bool)

(declare-fun c!32828 () Bool)

(assert (=> b!183230 (= c!32828 (= lt!90638 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183230 (= e!120641 e!120642)))

(assert (= (and d!54611 c!32827) b!183226))

(assert (= (and d!54611 (not c!32827)) b!183227))

(assert (= (and b!183227 c!32826) b!183229))

(assert (= (and b!183227 (not c!32826)) b!183230))

(assert (= (and b!183230 c!32828) b!183228))

(assert (= (and b!183230 (not c!32828)) b!183225))

(declare-fun m!210785 () Bool)

(assert (=> b!183225 m!210785))

(declare-fun m!210787 () Bool)

(assert (=> d!54611 m!210787))

(declare-fun m!210789 () Bool)

(assert (=> d!54611 m!210789))

(declare-fun m!210791 () Bool)

(assert (=> d!54611 m!210791))

(assert (=> d!54611 m!210701))

(declare-fun m!210793 () Bool)

(assert (=> d!54611 m!210793))

(assert (=> d!54611 m!210793))

(declare-fun m!210795 () Bool)

(assert (=> d!54611 m!210795))

(declare-fun m!210797 () Bool)

(assert (=> b!183227 m!210797))

(assert (=> b!183113 d!54611))

(declare-fun d!54613 () Bool)

(assert (=> d!54613 (= (validMask!0 (mask!8804 thiss!1248)) (and (or (= (mask!8804 thiss!1248) #b00000000000000000000000000000111) (= (mask!8804 thiss!1248) #b00000000000000000000000000001111) (= (mask!8804 thiss!1248) #b00000000000000000000000000011111) (= (mask!8804 thiss!1248) #b00000000000000000000000000111111) (= (mask!8804 thiss!1248) #b00000000000000000000000001111111) (= (mask!8804 thiss!1248) #b00000000000000000000000011111111) (= (mask!8804 thiss!1248) #b00000000000000000000000111111111) (= (mask!8804 thiss!1248) #b00000000000000000000001111111111) (= (mask!8804 thiss!1248) #b00000000000000000000011111111111) (= (mask!8804 thiss!1248) #b00000000000000000000111111111111) (= (mask!8804 thiss!1248) #b00000000000000000001111111111111) (= (mask!8804 thiss!1248) #b00000000000000000011111111111111) (= (mask!8804 thiss!1248) #b00000000000000000111111111111111) (= (mask!8804 thiss!1248) #b00000000000000001111111111111111) (= (mask!8804 thiss!1248) #b00000000000000011111111111111111) (= (mask!8804 thiss!1248) #b00000000000000111111111111111111) (= (mask!8804 thiss!1248) #b00000000000001111111111111111111) (= (mask!8804 thiss!1248) #b00000000000011111111111111111111) (= (mask!8804 thiss!1248) #b00000000000111111111111111111111) (= (mask!8804 thiss!1248) #b00000000001111111111111111111111) (= (mask!8804 thiss!1248) #b00000000011111111111111111111111) (= (mask!8804 thiss!1248) #b00000000111111111111111111111111) (= (mask!8804 thiss!1248) #b00000001111111111111111111111111) (= (mask!8804 thiss!1248) #b00000011111111111111111111111111) (= (mask!8804 thiss!1248) #b00000111111111111111111111111111) (= (mask!8804 thiss!1248) #b00001111111111111111111111111111) (= (mask!8804 thiss!1248) #b00011111111111111111111111111111) (= (mask!8804 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8804 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!183114 d!54613))

(declare-fun d!54615 () Bool)

(declare-fun res!86749 () Bool)

(declare-fun e!120646 () Bool)

(assert (=> d!54615 (=> (not res!86749) (not e!120646))))

(declare-fun simpleValid!173 (LongMapFixedSize!2514) Bool)

(assert (=> d!54615 (= res!86749 (simpleValid!173 thiss!1248))))

(assert (=> d!54615 (= (valid!1033 thiss!1248) e!120646)))

(declare-fun b!183237 () Bool)

(declare-fun res!86750 () Bool)

(assert (=> b!183237 (=> (not res!86750) (not e!120646))))

(declare-fun arrayCountValidKeys!0 (array!7776 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!183237 (= res!86750 (= (arrayCountValidKeys!0 (_keys!5663 thiss!1248) #b00000000000000000000000000000000 (size!3988 (_keys!5663 thiss!1248))) (_size!1306 thiss!1248)))))

(declare-fun b!183238 () Bool)

(declare-fun res!86751 () Bool)

(assert (=> b!183238 (=> (not res!86751) (not e!120646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7776 (_ BitVec 32)) Bool)

(assert (=> b!183238 (= res!86751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5663 thiss!1248) (mask!8804 thiss!1248)))))

(declare-fun b!183239 () Bool)

(declare-datatypes ((List!2355 0))(
  ( (Nil!2352) (Cons!2351 (h!2980 (_ BitVec 64)) (t!7231 List!2355)) )
))
(declare-fun arrayNoDuplicates!0 (array!7776 (_ BitVec 32) List!2355) Bool)

(assert (=> b!183239 (= e!120646 (arrayNoDuplicates!0 (_keys!5663 thiss!1248) #b00000000000000000000000000000000 Nil!2352))))

(assert (= (and d!54615 res!86749) b!183237))

(assert (= (and b!183237 res!86750) b!183238))

(assert (= (and b!183238 res!86751) b!183239))

(declare-fun m!210799 () Bool)

(assert (=> d!54615 m!210799))

(declare-fun m!210801 () Bool)

(assert (=> b!183237 m!210801))

(declare-fun m!210803 () Bool)

(assert (=> b!183238 m!210803))

(declare-fun m!210805 () Bool)

(assert (=> b!183239 m!210805))

(assert (=> start!18476 d!54615))

(declare-fun b!183247 () Bool)

(declare-fun e!120652 () Bool)

(assert (=> b!183247 (= e!120652 tp_is_empty!4293)))

(declare-fun b!183246 () Bool)

(declare-fun e!120651 () Bool)

(assert (=> b!183246 (= e!120651 tp_is_empty!4293)))

(declare-fun mapNonEmpty!7376 () Bool)

(declare-fun mapRes!7376 () Bool)

(declare-fun tp!16340 () Bool)

(assert (=> mapNonEmpty!7376 (= mapRes!7376 (and tp!16340 e!120651))))

(declare-fun mapValue!7376 () ValueCell!1803)

(declare-fun mapRest!7376 () (Array (_ BitVec 32) ValueCell!1803))

(declare-fun mapKey!7376 () (_ BitVec 32))

(assert (=> mapNonEmpty!7376 (= mapRest!7370 (store mapRest!7376 mapKey!7376 mapValue!7376))))

(declare-fun condMapEmpty!7376 () Bool)

(declare-fun mapDefault!7376 () ValueCell!1803)

(assert (=> mapNonEmpty!7370 (= condMapEmpty!7376 (= mapRest!7370 ((as const (Array (_ BitVec 32) ValueCell!1803)) mapDefault!7376)))))

(assert (=> mapNonEmpty!7370 (= tp!16331 (and e!120652 mapRes!7376))))

(declare-fun mapIsEmpty!7376 () Bool)

(assert (=> mapIsEmpty!7376 mapRes!7376))

(assert (= (and mapNonEmpty!7370 condMapEmpty!7376) mapIsEmpty!7376))

(assert (= (and mapNonEmpty!7370 (not condMapEmpty!7376)) mapNonEmpty!7376))

(assert (= (and mapNonEmpty!7376 ((_ is ValueCellFull!1803) mapValue!7376)) b!183246))

(assert (= (and mapNonEmpty!7370 ((_ is ValueCellFull!1803) mapDefault!7376)) b!183247))

(declare-fun m!210807 () Bool)

(assert (=> mapNonEmpty!7376 m!210807))

(declare-fun b_lambda!7219 () Bool)

(assert (= b_lambda!7217 (or (and b!183112 b_free!4521) b_lambda!7219)))

(check-sat (not b!183237) (not b!183203) (not d!54609) (not b!183204) (not b!183193) (not b!183225) (not bm!18503) (not b!183192) (not b_lambda!7219) (not mapNonEmpty!7376) (not b!183238) (not bm!18502) (not d!54607) (not b!183147) (not b_next!4521) (not b!183145) (not d!54611) (not bm!18499) (not b!183208) b_and!11111 (not b!183205) (not d!54615) (not b!183202) (not bm!18498) tp_is_empty!4293 (not b!183201) (not b!183239))
(check-sat b_and!11111 (not b_next!4521))
