; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18210 () Bool)

(assert start!18210)

(declare-fun b!180981 () Bool)

(declare-fun b_free!4473 () Bool)

(declare-fun b_next!4473 () Bool)

(assert (=> b!180981 (= b_free!4473 (not b_next!4473))))

(declare-fun tp!16162 () Bool)

(declare-fun b_and!11033 () Bool)

(assert (=> b!180981 (= tp!16162 b_and!11033)))

(declare-fun res!85715 () Bool)

(declare-fun e!119220 () Bool)

(assert (=> start!18210 (=> (not res!85715) (not e!119220))))

(declare-datatypes ((V!5307 0))(
  ( (V!5308 (val!2167 Int)) )
))
(declare-datatypes ((ValueCell!1779 0))(
  ( (ValueCellFull!1779 (v!4058 V!5307)) (EmptyCell!1779) )
))
(declare-datatypes ((array!7666 0))(
  ( (array!7667 (arr!3628 (Array (_ BitVec 32) (_ BitVec 64))) (size!3937 (_ BitVec 32))) )
))
(declare-datatypes ((array!7668 0))(
  ( (array!7669 (arr!3629 (Array (_ BitVec 32) ValueCell!1779)) (size!3938 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2466 0))(
  ( (LongMapFixedSize!2467 (defaultEntry!3712 Int) (mask!8725 (_ BitVec 32)) (extraKeys!3449 (_ BitVec 32)) (zeroValue!3553 V!5307) (minValue!3553 V!5307) (_size!1282 (_ BitVec 32)) (_keys!5610 array!7666) (_values!3695 array!7668) (_vacant!1282 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2466)

(declare-fun valid!1017 (LongMapFixedSize!2466) Bool)

(assert (=> start!18210 (= res!85715 (valid!1017 thiss!1248))))

(assert (=> start!18210 e!119220))

(declare-fun e!119224 () Bool)

(assert (=> start!18210 e!119224))

(assert (=> start!18210 true))

(declare-fun b!180975 () Bool)

(declare-fun res!85713 () Bool)

(assert (=> b!180975 (=> (not res!85713) (not e!119220))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!180975 (= res!85713 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180976 () Bool)

(declare-fun e!119222 () Bool)

(assert (=> b!180976 (= e!119220 e!119222)))

(declare-fun res!85712 () Bool)

(assert (=> b!180976 (=> (not res!85712) (not e!119222))))

(declare-datatypes ((SeekEntryResult!608 0))(
  ( (MissingZero!608 (index!4602 (_ BitVec 32))) (Found!608 (index!4603 (_ BitVec 32))) (Intermediate!608 (undefined!1420 Bool) (index!4604 (_ BitVec 32)) (x!19786 (_ BitVec 32))) (Undefined!608) (MissingVacant!608 (index!4605 (_ BitVec 32))) )
))
(declare-fun lt!89501 () SeekEntryResult!608)

(get-info :version)

(assert (=> b!180976 (= res!85712 (and (not ((_ is Undefined!608) lt!89501)) (not ((_ is MissingVacant!608) lt!89501)) (not ((_ is MissingZero!608) lt!89501)) ((_ is Found!608) lt!89501)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7666 (_ BitVec 32)) SeekEntryResult!608)

(assert (=> b!180976 (= lt!89501 (seekEntryOrOpen!0 key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(declare-fun mapIsEmpty!7274 () Bool)

(declare-fun mapRes!7274 () Bool)

(assert (=> mapIsEmpty!7274 mapRes!7274))

(declare-fun b!180977 () Bool)

(declare-fun e!119218 () Bool)

(declare-fun tp_is_empty!4245 () Bool)

(assert (=> b!180977 (= e!119218 tp_is_empty!4245)))

(declare-fun mapNonEmpty!7274 () Bool)

(declare-fun tp!16163 () Bool)

(declare-fun e!119223 () Bool)

(assert (=> mapNonEmpty!7274 (= mapRes!7274 (and tp!16163 e!119223))))

(declare-fun mapRest!7274 () (Array (_ BitVec 32) ValueCell!1779))

(declare-fun mapValue!7274 () ValueCell!1779)

(declare-fun mapKey!7274 () (_ BitVec 32))

(assert (=> mapNonEmpty!7274 (= (arr!3629 (_values!3695 thiss!1248)) (store mapRest!7274 mapKey!7274 mapValue!7274))))

(declare-fun b!180978 () Bool)

(declare-fun e!119219 () Bool)

(assert (=> b!180978 (= e!119219 (and e!119218 mapRes!7274))))

(declare-fun condMapEmpty!7274 () Bool)

(declare-fun mapDefault!7274 () ValueCell!1779)

(assert (=> b!180978 (= condMapEmpty!7274 (= (arr!3629 (_values!3695 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1779)) mapDefault!7274)))))

(declare-fun b!180979 () Bool)

(assert (=> b!180979 (= e!119222 (and (= (size!3938 (_values!3695 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8725 thiss!1248))) (not (= (size!3937 (_keys!5610 thiss!1248)) (size!3938 (_values!3695 thiss!1248))))))))

(declare-fun b!180980 () Bool)

(declare-fun res!85714 () Bool)

(assert (=> b!180980 (=> (not res!85714) (not e!119222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!180980 (= res!85714 (validMask!0 (mask!8725 thiss!1248)))))

(declare-fun array_inv!2329 (array!7666) Bool)

(declare-fun array_inv!2330 (array!7668) Bool)

(assert (=> b!180981 (= e!119224 (and tp!16162 tp_is_empty!4245 (array_inv!2329 (_keys!5610 thiss!1248)) (array_inv!2330 (_values!3695 thiss!1248)) e!119219))))

(declare-fun b!180982 () Bool)

(assert (=> b!180982 (= e!119223 tp_is_empty!4245)))

(declare-fun b!180983 () Bool)

(declare-fun res!85716 () Bool)

(assert (=> b!180983 (=> (not res!85716) (not e!119222))))

(declare-datatypes ((tuple2!3376 0))(
  ( (tuple2!3377 (_1!1698 (_ BitVec 64)) (_2!1698 V!5307)) )
))
(declare-datatypes ((List!2323 0))(
  ( (Nil!2320) (Cons!2319 (h!2945 tuple2!3376) (t!7183 List!2323)) )
))
(declare-datatypes ((ListLongMap!2307 0))(
  ( (ListLongMap!2308 (toList!1169 List!2323)) )
))
(declare-fun contains!1241 (ListLongMap!2307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!812 (array!7666 array!7668 (_ BitVec 32) (_ BitVec 32) V!5307 V!5307 (_ BitVec 32) Int) ListLongMap!2307)

(assert (=> b!180983 (= res!85716 (contains!1241 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)) key!828))))

(assert (= (and start!18210 res!85715) b!180975))

(assert (= (and b!180975 res!85713) b!180976))

(assert (= (and b!180976 res!85712) b!180983))

(assert (= (and b!180983 res!85716) b!180980))

(assert (= (and b!180980 res!85714) b!180979))

(assert (= (and b!180978 condMapEmpty!7274) mapIsEmpty!7274))

(assert (= (and b!180978 (not condMapEmpty!7274)) mapNonEmpty!7274))

(assert (= (and mapNonEmpty!7274 ((_ is ValueCellFull!1779) mapValue!7274)) b!180982))

(assert (= (and b!180978 ((_ is ValueCellFull!1779) mapDefault!7274)) b!180977))

(assert (= b!180981 b!180978))

(assert (= start!18210 b!180981))

(declare-fun m!208949 () Bool)

(assert (=> b!180980 m!208949))

(declare-fun m!208951 () Bool)

(assert (=> mapNonEmpty!7274 m!208951))

(declare-fun m!208953 () Bool)

(assert (=> start!18210 m!208953))

(declare-fun m!208955 () Bool)

(assert (=> b!180976 m!208955))

(declare-fun m!208957 () Bool)

(assert (=> b!180983 m!208957))

(assert (=> b!180983 m!208957))

(declare-fun m!208959 () Bool)

(assert (=> b!180983 m!208959))

(declare-fun m!208961 () Bool)

(assert (=> b!180981 m!208961))

(declare-fun m!208963 () Bool)

(assert (=> b!180981 m!208963))

(check-sat (not start!18210) (not b!180976) tp_is_empty!4245 b_and!11033 (not b!180981) (not b_next!4473) (not b!180983) (not mapNonEmpty!7274) (not b!180980))
(check-sat b_and!11033 (not b_next!4473))
(get-model)

(declare-fun d!54255 () Bool)

(declare-fun e!119251 () Bool)

(assert (=> d!54255 e!119251))

(declare-fun res!85734 () Bool)

(assert (=> d!54255 (=> res!85734 e!119251)))

(declare-fun lt!89513 () Bool)

(assert (=> d!54255 (= res!85734 (not lt!89513))))

(declare-fun lt!89514 () Bool)

(assert (=> d!54255 (= lt!89513 lt!89514)))

(declare-datatypes ((Unit!5501 0))(
  ( (Unit!5502) )
))
(declare-fun lt!89516 () Unit!5501)

(declare-fun e!119250 () Unit!5501)

(assert (=> d!54255 (= lt!89516 e!119250)))

(declare-fun c!32411 () Bool)

(assert (=> d!54255 (= c!32411 lt!89514)))

(declare-fun containsKey!211 (List!2323 (_ BitVec 64)) Bool)

(assert (=> d!54255 (= lt!89514 (containsKey!211 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))

(assert (=> d!54255 (= (contains!1241 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)) key!828) lt!89513)))

(declare-fun b!181017 () Bool)

(declare-fun lt!89515 () Unit!5501)

(assert (=> b!181017 (= e!119250 lt!89515)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!160 (List!2323 (_ BitVec 64)) Unit!5501)

(assert (=> b!181017 (= lt!89515 (lemmaContainsKeyImpliesGetValueByKeyDefined!160 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))

(declare-datatypes ((Option!213 0))(
  ( (Some!212 (v!4060 V!5307)) (None!211) )
))
(declare-fun isDefined!161 (Option!213) Bool)

(declare-fun getValueByKey!207 (List!2323 (_ BitVec 64)) Option!213)

(assert (=> b!181017 (isDefined!161 (getValueByKey!207 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))

(declare-fun b!181018 () Bool)

(declare-fun Unit!5503 () Unit!5501)

(assert (=> b!181018 (= e!119250 Unit!5503)))

(declare-fun b!181019 () Bool)

(assert (=> b!181019 (= e!119251 (isDefined!161 (getValueByKey!207 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828)))))

(assert (= (and d!54255 c!32411) b!181017))

(assert (= (and d!54255 (not c!32411)) b!181018))

(assert (= (and d!54255 (not res!85734)) b!181019))

(declare-fun m!208981 () Bool)

(assert (=> d!54255 m!208981))

(declare-fun m!208983 () Bool)

(assert (=> b!181017 m!208983))

(declare-fun m!208985 () Bool)

(assert (=> b!181017 m!208985))

(assert (=> b!181017 m!208985))

(declare-fun m!208987 () Bool)

(assert (=> b!181017 m!208987))

(assert (=> b!181019 m!208985))

(assert (=> b!181019 m!208985))

(assert (=> b!181019 m!208987))

(assert (=> b!180983 d!54255))

(declare-fun bm!18299 () Bool)

(declare-fun call!18302 () ListLongMap!2307)

(declare-fun call!18307 () ListLongMap!2307)

(assert (=> bm!18299 (= call!18302 call!18307)))

(declare-fun b!181062 () Bool)

(declare-fun e!119290 () ListLongMap!2307)

(declare-fun e!119289 () ListLongMap!2307)

(assert (=> b!181062 (= e!119290 e!119289)))

(declare-fun c!32425 () Bool)

(assert (=> b!181062 (= c!32425 (and (not (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!181063 () Bool)

(declare-fun e!119281 () Bool)

(declare-fun e!119278 () Bool)

(assert (=> b!181063 (= e!119281 e!119278)))

(declare-fun res!85753 () Bool)

(declare-fun call!18305 () Bool)

(assert (=> b!181063 (= res!85753 call!18305)))

(assert (=> b!181063 (=> (not res!85753) (not e!119278))))

(declare-fun b!181064 () Bool)

(declare-fun e!119285 () Unit!5501)

(declare-fun Unit!5504 () Unit!5501)

(assert (=> b!181064 (= e!119285 Unit!5504)))

(declare-fun call!18304 () ListLongMap!2307)

(declare-fun call!18306 () ListLongMap!2307)

(declare-fun c!32428 () Bool)

(declare-fun bm!18300 () Bool)

(declare-fun +!266 (ListLongMap!2307 tuple2!3376) ListLongMap!2307)

(assert (=> bm!18300 (= call!18304 (+!266 (ite c!32428 call!18306 (ite c!32425 call!18307 call!18302)) (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))

(declare-fun b!181065 () Bool)

(assert (=> b!181065 (= e!119290 (+!266 call!18304 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))

(declare-fun b!181066 () Bool)

(declare-fun e!119280 () Bool)

(declare-fun e!119282 () Bool)

(assert (=> b!181066 (= e!119280 e!119282)))

(declare-fun res!85759 () Bool)

(declare-fun call!18308 () Bool)

(assert (=> b!181066 (= res!85759 call!18308)))

(assert (=> b!181066 (=> (not res!85759) (not e!119282))))

(declare-fun d!54257 () Bool)

(declare-fun e!119284 () Bool)

(assert (=> d!54257 e!119284))

(declare-fun res!85761 () Bool)

(assert (=> d!54257 (=> (not res!85761) (not e!119284))))

(assert (=> d!54257 (= res!85761 (or (bvsge #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))))

(declare-fun lt!89575 () ListLongMap!2307)

(declare-fun lt!89562 () ListLongMap!2307)

(assert (=> d!54257 (= lt!89575 lt!89562)))

(declare-fun lt!89578 () Unit!5501)

(assert (=> d!54257 (= lt!89578 e!119285)))

(declare-fun c!32429 () Bool)

(declare-fun e!119279 () Bool)

(assert (=> d!54257 (= c!32429 e!119279)))

(declare-fun res!85757 () Bool)

(assert (=> d!54257 (=> (not res!85757) (not e!119279))))

(assert (=> d!54257 (= res!85757 (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> d!54257 (= lt!89562 e!119290)))

(assert (=> d!54257 (= c!32428 (and (not (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54257 (validMask!0 (mask!8725 thiss!1248))))

(assert (=> d!54257 (= (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)) lt!89575)))

(declare-fun b!181067 () Bool)

(declare-fun e!119287 () ListLongMap!2307)

(declare-fun call!18303 () ListLongMap!2307)

(assert (=> b!181067 (= e!119287 call!18303)))

(declare-fun bm!18301 () Bool)

(assert (=> bm!18301 (= call!18308 (contains!1241 lt!89575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181068 () Bool)

(declare-fun res!85760 () Bool)

(assert (=> b!181068 (=> (not res!85760) (not e!119284))))

(declare-fun e!119286 () Bool)

(assert (=> b!181068 (= res!85760 e!119286)))

(declare-fun res!85756 () Bool)

(assert (=> b!181068 (=> res!85756 e!119286)))

(declare-fun e!119288 () Bool)

(assert (=> b!181068 (= res!85756 (not e!119288))))

(declare-fun res!85755 () Bool)

(assert (=> b!181068 (=> (not res!85755) (not e!119288))))

(assert (=> b!181068 (= res!85755 (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun b!181069 () Bool)

(declare-fun lt!89579 () Unit!5501)

(assert (=> b!181069 (= e!119285 lt!89579)))

(declare-fun lt!89563 () ListLongMap!2307)

(declare-fun getCurrentListMapNoExtraKeys!181 (array!7666 array!7668 (_ BitVec 32) (_ BitVec 32) V!5307 V!5307 (_ BitVec 32) Int) ListLongMap!2307)

(assert (=> b!181069 (= lt!89563 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))

(declare-fun lt!89561 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89561 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89576 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89576 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89570 () Unit!5501)

(declare-fun addStillContains!127 (ListLongMap!2307 (_ BitVec 64) V!5307 (_ BitVec 64)) Unit!5501)

(assert (=> b!181069 (= lt!89570 (addStillContains!127 lt!89563 lt!89561 (zeroValue!3553 thiss!1248) lt!89576))))

(assert (=> b!181069 (contains!1241 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))) lt!89576)))

(declare-fun lt!89581 () Unit!5501)

(assert (=> b!181069 (= lt!89581 lt!89570)))

(declare-fun lt!89564 () ListLongMap!2307)

(assert (=> b!181069 (= lt!89564 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))

(declare-fun lt!89574 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89574 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89572 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89572 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89580 () Unit!5501)

(declare-fun addApplyDifferent!127 (ListLongMap!2307 (_ BitVec 64) V!5307 (_ BitVec 64)) Unit!5501)

(assert (=> b!181069 (= lt!89580 (addApplyDifferent!127 lt!89564 lt!89574 (minValue!3553 thiss!1248) lt!89572))))

(declare-fun apply!151 (ListLongMap!2307 (_ BitVec 64)) V!5307)

(assert (=> b!181069 (= (apply!151 (+!266 lt!89564 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))) lt!89572) (apply!151 lt!89564 lt!89572))))

(declare-fun lt!89573 () Unit!5501)

(assert (=> b!181069 (= lt!89573 lt!89580)))

(declare-fun lt!89566 () ListLongMap!2307)

(assert (=> b!181069 (= lt!89566 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))

(declare-fun lt!89569 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89569 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89577 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89577 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89567 () Unit!5501)

(assert (=> b!181069 (= lt!89567 (addApplyDifferent!127 lt!89566 lt!89569 (zeroValue!3553 thiss!1248) lt!89577))))

(assert (=> b!181069 (= (apply!151 (+!266 lt!89566 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))) lt!89577) (apply!151 lt!89566 lt!89577))))

(declare-fun lt!89582 () Unit!5501)

(assert (=> b!181069 (= lt!89582 lt!89567)))

(declare-fun lt!89571 () ListLongMap!2307)

(assert (=> b!181069 (= lt!89571 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))

(declare-fun lt!89565 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89565 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89568 () (_ BitVec 64))

(assert (=> b!181069 (= lt!89568 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181069 (= lt!89579 (addApplyDifferent!127 lt!89571 lt!89565 (minValue!3553 thiss!1248) lt!89568))))

(assert (=> b!181069 (= (apply!151 (+!266 lt!89571 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))) lt!89568) (apply!151 lt!89571 lt!89568))))

(declare-fun b!181070 () Bool)

(declare-fun c!32426 () Bool)

(assert (=> b!181070 (= c!32426 (and (not (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!181070 (= e!119289 e!119287)))

(declare-fun b!181071 () Bool)

(declare-fun e!119283 () Bool)

(declare-fun get!2074 (ValueCell!1779 V!5307) V!5307)

(declare-fun dynLambda!489 (Int (_ BitVec 64)) V!5307)

(assert (=> b!181071 (= e!119283 (= (apply!151 lt!89575 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)) (get!2074 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!181071 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3938 (_values!3695 thiss!1248))))))

(assert (=> b!181071 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun b!181072 () Bool)

(assert (=> b!181072 (= e!119282 (= (apply!151 lt!89575 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3553 thiss!1248)))))

(declare-fun b!181073 () Bool)

(assert (=> b!181073 (= e!119281 (not call!18305))))

(declare-fun bm!18302 () Bool)

(assert (=> bm!18302 (= call!18306 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))

(declare-fun b!181074 () Bool)

(declare-fun res!85754 () Bool)

(assert (=> b!181074 (=> (not res!85754) (not e!119284))))

(assert (=> b!181074 (= res!85754 e!119280)))

(declare-fun c!32424 () Bool)

(assert (=> b!181074 (= c!32424 (not (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!181075 () Bool)

(assert (=> b!181075 (= e!119287 call!18302)))

(declare-fun bm!18303 () Bool)

(assert (=> bm!18303 (= call!18307 call!18306)))

(declare-fun b!181076 () Bool)

(assert (=> b!181076 (= e!119289 call!18303)))

(declare-fun bm!18304 () Bool)

(assert (=> bm!18304 (= call!18305 (contains!1241 lt!89575 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181077 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!181077 (= e!119279 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18305 () Bool)

(assert (=> bm!18305 (= call!18303 call!18304)))

(declare-fun b!181078 () Bool)

(assert (=> b!181078 (= e!119288 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181079 () Bool)

(assert (=> b!181079 (= e!119286 e!119283)))

(declare-fun res!85758 () Bool)

(assert (=> b!181079 (=> (not res!85758) (not e!119283))))

(assert (=> b!181079 (= res!85758 (contains!1241 lt!89575 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181079 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun b!181080 () Bool)

(assert (=> b!181080 (= e!119284 e!119281)))

(declare-fun c!32427 () Bool)

(assert (=> b!181080 (= c!32427 (not (= (bvand (extraKeys!3449 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!181081 () Bool)

(assert (=> b!181081 (= e!119280 (not call!18308))))

(declare-fun b!181082 () Bool)

(assert (=> b!181082 (= e!119278 (= (apply!151 lt!89575 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3553 thiss!1248)))))

(assert (= (and d!54257 c!32428) b!181065))

(assert (= (and d!54257 (not c!32428)) b!181062))

(assert (= (and b!181062 c!32425) b!181076))

(assert (= (and b!181062 (not c!32425)) b!181070))

(assert (= (and b!181070 c!32426) b!181067))

(assert (= (and b!181070 (not c!32426)) b!181075))

(assert (= (or b!181067 b!181075) bm!18299))

(assert (= (or b!181076 bm!18299) bm!18303))

(assert (= (or b!181076 b!181067) bm!18305))

(assert (= (or b!181065 bm!18303) bm!18302))

(assert (= (or b!181065 bm!18305) bm!18300))

(assert (= (and d!54257 res!85757) b!181077))

(assert (= (and d!54257 c!32429) b!181069))

(assert (= (and d!54257 (not c!32429)) b!181064))

(assert (= (and d!54257 res!85761) b!181068))

(assert (= (and b!181068 res!85755) b!181078))

(assert (= (and b!181068 (not res!85756)) b!181079))

(assert (= (and b!181079 res!85758) b!181071))

(assert (= (and b!181068 res!85760) b!181074))

(assert (= (and b!181074 c!32424) b!181066))

(assert (= (and b!181074 (not c!32424)) b!181081))

(assert (= (and b!181066 res!85759) b!181072))

(assert (= (or b!181066 b!181081) bm!18301))

(assert (= (and b!181074 res!85754) b!181080))

(assert (= (and b!181080 c!32427) b!181063))

(assert (= (and b!181080 (not c!32427)) b!181073))

(assert (= (and b!181063 res!85753) b!181082))

(assert (= (or b!181063 b!181073) bm!18304))

(declare-fun b_lambda!7165 () Bool)

(assert (=> (not b_lambda!7165) (not b!181071)))

(declare-fun t!7186 () Bool)

(declare-fun tb!2821 () Bool)

(assert (=> (and b!180981 (= (defaultEntry!3712 thiss!1248) (defaultEntry!3712 thiss!1248)) t!7186) tb!2821))

(declare-fun result!4725 () Bool)

(assert (=> tb!2821 (= result!4725 tp_is_empty!4245)))

(assert (=> b!181071 t!7186))

(declare-fun b_and!11037 () Bool)

(assert (= b_and!11033 (and (=> t!7186 result!4725) b_and!11037)))

(declare-fun m!208989 () Bool)

(assert (=> b!181078 m!208989))

(assert (=> b!181078 m!208989))

(declare-fun m!208991 () Bool)

(assert (=> b!181078 m!208991))

(assert (=> b!181077 m!208989))

(assert (=> b!181077 m!208989))

(assert (=> b!181077 m!208991))

(assert (=> b!181071 m!208989))

(declare-fun m!208993 () Bool)

(assert (=> b!181071 m!208993))

(assert (=> b!181071 m!208989))

(declare-fun m!208995 () Bool)

(assert (=> b!181071 m!208995))

(assert (=> b!181071 m!208995))

(declare-fun m!208997 () Bool)

(assert (=> b!181071 m!208997))

(declare-fun m!208999 () Bool)

(assert (=> b!181071 m!208999))

(assert (=> b!181071 m!208997))

(declare-fun m!209001 () Bool)

(assert (=> b!181065 m!209001))

(assert (=> b!181079 m!208989))

(assert (=> b!181079 m!208989))

(declare-fun m!209003 () Bool)

(assert (=> b!181079 m!209003))

(declare-fun m!209005 () Bool)

(assert (=> b!181072 m!209005))

(declare-fun m!209007 () Bool)

(assert (=> bm!18300 m!209007))

(declare-fun m!209009 () Bool)

(assert (=> b!181082 m!209009))

(assert (=> d!54257 m!208949))

(declare-fun m!209011 () Bool)

(assert (=> b!181069 m!209011))

(declare-fun m!209013 () Bool)

(assert (=> b!181069 m!209013))

(declare-fun m!209015 () Bool)

(assert (=> b!181069 m!209015))

(declare-fun m!209017 () Bool)

(assert (=> b!181069 m!209017))

(declare-fun m!209019 () Bool)

(assert (=> b!181069 m!209019))

(declare-fun m!209021 () Bool)

(assert (=> b!181069 m!209021))

(declare-fun m!209023 () Bool)

(assert (=> b!181069 m!209023))

(declare-fun m!209025 () Bool)

(assert (=> b!181069 m!209025))

(declare-fun m!209027 () Bool)

(assert (=> b!181069 m!209027))

(declare-fun m!209029 () Bool)

(assert (=> b!181069 m!209029))

(declare-fun m!209031 () Bool)

(assert (=> b!181069 m!209031))

(assert (=> b!181069 m!209023))

(declare-fun m!209033 () Bool)

(assert (=> b!181069 m!209033))

(assert (=> b!181069 m!209011))

(assert (=> b!181069 m!208989))

(declare-fun m!209035 () Bool)

(assert (=> b!181069 m!209035))

(assert (=> b!181069 m!209035))

(declare-fun m!209037 () Bool)

(assert (=> b!181069 m!209037))

(declare-fun m!209039 () Bool)

(assert (=> b!181069 m!209039))

(declare-fun m!209041 () Bool)

(assert (=> b!181069 m!209041))

(assert (=> b!181069 m!209015))

(declare-fun m!209043 () Bool)

(assert (=> bm!18301 m!209043))

(declare-fun m!209045 () Bool)

(assert (=> bm!18304 m!209045))

(assert (=> bm!18302 m!209027))

(assert (=> b!180983 d!54257))

(declare-fun d!54259 () Bool)

(assert (=> d!54259 (= (array_inv!2329 (_keys!5610 thiss!1248)) (bvsge (size!3937 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180981 d!54259))

(declare-fun d!54261 () Bool)

(assert (=> d!54261 (= (array_inv!2330 (_values!3695 thiss!1248)) (bvsge (size!3938 (_values!3695 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!180981 d!54261))

(declare-fun d!54263 () Bool)

(declare-fun res!85768 () Bool)

(declare-fun e!119293 () Bool)

(assert (=> d!54263 (=> (not res!85768) (not e!119293))))

(declare-fun simpleValid!166 (LongMapFixedSize!2466) Bool)

(assert (=> d!54263 (= res!85768 (simpleValid!166 thiss!1248))))

(assert (=> d!54263 (= (valid!1017 thiss!1248) e!119293)))

(declare-fun b!181091 () Bool)

(declare-fun res!85769 () Bool)

(assert (=> b!181091 (=> (not res!85769) (not e!119293))))

(declare-fun arrayCountValidKeys!0 (array!7666 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!181091 (= res!85769 (= (arrayCountValidKeys!0 (_keys!5610 thiss!1248) #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))) (_size!1282 thiss!1248)))))

(declare-fun b!181092 () Bool)

(declare-fun res!85770 () Bool)

(assert (=> b!181092 (=> (not res!85770) (not e!119293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7666 (_ BitVec 32)) Bool)

(assert (=> b!181092 (= res!85770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(declare-fun b!181093 () Bool)

(declare-datatypes ((List!2325 0))(
  ( (Nil!2322) (Cons!2321 (h!2947 (_ BitVec 64)) (t!7187 List!2325)) )
))
(declare-fun arrayNoDuplicates!0 (array!7666 (_ BitVec 32) List!2325) Bool)

(assert (=> b!181093 (= e!119293 (arrayNoDuplicates!0 (_keys!5610 thiss!1248) #b00000000000000000000000000000000 Nil!2322))))

(assert (= (and d!54263 res!85768) b!181091))

(assert (= (and b!181091 res!85769) b!181092))

(assert (= (and b!181092 res!85770) b!181093))

(declare-fun m!209047 () Bool)

(assert (=> d!54263 m!209047))

(declare-fun m!209049 () Bool)

(assert (=> b!181091 m!209049))

(declare-fun m!209051 () Bool)

(assert (=> b!181092 m!209051))

(declare-fun m!209053 () Bool)

(assert (=> b!181093 m!209053))

(assert (=> start!18210 d!54263))

(declare-fun b!181106 () Bool)

(declare-fun e!119301 () SeekEntryResult!608)

(declare-fun lt!89590 () SeekEntryResult!608)

(assert (=> b!181106 (= e!119301 (Found!608 (index!4604 lt!89590)))))

(declare-fun b!181107 () Bool)

(declare-fun e!119300 () SeekEntryResult!608)

(assert (=> b!181107 (= e!119300 Undefined!608)))

(declare-fun b!181108 () Bool)

(assert (=> b!181108 (= e!119300 e!119301)))

(declare-fun lt!89589 () (_ BitVec 64))

(assert (=> b!181108 (= lt!89589 (select (arr!3628 (_keys!5610 thiss!1248)) (index!4604 lt!89590)))))

(declare-fun c!32437 () Bool)

(assert (=> b!181108 (= c!32437 (= lt!89589 key!828))))

(declare-fun d!54265 () Bool)

(declare-fun lt!89591 () SeekEntryResult!608)

(assert (=> d!54265 (and (or ((_ is Undefined!608) lt!89591) (not ((_ is Found!608) lt!89591)) (and (bvsge (index!4603 lt!89591) #b00000000000000000000000000000000) (bvslt (index!4603 lt!89591) (size!3937 (_keys!5610 thiss!1248))))) (or ((_ is Undefined!608) lt!89591) ((_ is Found!608) lt!89591) (not ((_ is MissingZero!608) lt!89591)) (and (bvsge (index!4602 lt!89591) #b00000000000000000000000000000000) (bvslt (index!4602 lt!89591) (size!3937 (_keys!5610 thiss!1248))))) (or ((_ is Undefined!608) lt!89591) ((_ is Found!608) lt!89591) ((_ is MissingZero!608) lt!89591) (not ((_ is MissingVacant!608) lt!89591)) (and (bvsge (index!4605 lt!89591) #b00000000000000000000000000000000) (bvslt (index!4605 lt!89591) (size!3937 (_keys!5610 thiss!1248))))) (or ((_ is Undefined!608) lt!89591) (ite ((_ is Found!608) lt!89591) (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4603 lt!89591)) key!828) (ite ((_ is MissingZero!608) lt!89591) (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4602 lt!89591)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!608) lt!89591) (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4605 lt!89591)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54265 (= lt!89591 e!119300)))

(declare-fun c!32438 () Bool)

(assert (=> d!54265 (= c!32438 (and ((_ is Intermediate!608) lt!89590) (undefined!1420 lt!89590)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7666 (_ BitVec 32)) SeekEntryResult!608)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54265 (= lt!89590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8725 thiss!1248)) key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(assert (=> d!54265 (validMask!0 (mask!8725 thiss!1248))))

(assert (=> d!54265 (= (seekEntryOrOpen!0 key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)) lt!89591)))

(declare-fun b!181109 () Bool)

(declare-fun e!119302 () SeekEntryResult!608)

(assert (=> b!181109 (= e!119302 (MissingZero!608 (index!4604 lt!89590)))))

(declare-fun b!181110 () Bool)

(declare-fun c!32436 () Bool)

(assert (=> b!181110 (= c!32436 (= lt!89589 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181110 (= e!119301 e!119302)))

(declare-fun b!181111 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7666 (_ BitVec 32)) SeekEntryResult!608)

(assert (=> b!181111 (= e!119302 (seekKeyOrZeroReturnVacant!0 (x!19786 lt!89590) (index!4604 lt!89590) (index!4604 lt!89590) key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(assert (= (and d!54265 c!32438) b!181107))

(assert (= (and d!54265 (not c!32438)) b!181108))

(assert (= (and b!181108 c!32437) b!181106))

(assert (= (and b!181108 (not c!32437)) b!181110))

(assert (= (and b!181110 c!32436) b!181109))

(assert (= (and b!181110 (not c!32436)) b!181111))

(declare-fun m!209055 () Bool)

(assert (=> b!181108 m!209055))

(assert (=> d!54265 m!208949))

(declare-fun m!209057 () Bool)

(assert (=> d!54265 m!209057))

(declare-fun m!209059 () Bool)

(assert (=> d!54265 m!209059))

(declare-fun m!209061 () Bool)

(assert (=> d!54265 m!209061))

(declare-fun m!209063 () Bool)

(assert (=> d!54265 m!209063))

(declare-fun m!209065 () Bool)

(assert (=> d!54265 m!209065))

(assert (=> d!54265 m!209057))

(declare-fun m!209067 () Bool)

(assert (=> b!181111 m!209067))

(assert (=> b!180976 d!54265))

(declare-fun d!54267 () Bool)

(assert (=> d!54267 (= (validMask!0 (mask!8725 thiss!1248)) (and (or (= (mask!8725 thiss!1248) #b00000000000000000000000000000111) (= (mask!8725 thiss!1248) #b00000000000000000000000000001111) (= (mask!8725 thiss!1248) #b00000000000000000000000000011111) (= (mask!8725 thiss!1248) #b00000000000000000000000000111111) (= (mask!8725 thiss!1248) #b00000000000000000000000001111111) (= (mask!8725 thiss!1248) #b00000000000000000000000011111111) (= (mask!8725 thiss!1248) #b00000000000000000000000111111111) (= (mask!8725 thiss!1248) #b00000000000000000000001111111111) (= (mask!8725 thiss!1248) #b00000000000000000000011111111111) (= (mask!8725 thiss!1248) #b00000000000000000000111111111111) (= (mask!8725 thiss!1248) #b00000000000000000001111111111111) (= (mask!8725 thiss!1248) #b00000000000000000011111111111111) (= (mask!8725 thiss!1248) #b00000000000000000111111111111111) (= (mask!8725 thiss!1248) #b00000000000000001111111111111111) (= (mask!8725 thiss!1248) #b00000000000000011111111111111111) (= (mask!8725 thiss!1248) #b00000000000000111111111111111111) (= (mask!8725 thiss!1248) #b00000000000001111111111111111111) (= (mask!8725 thiss!1248) #b00000000000011111111111111111111) (= (mask!8725 thiss!1248) #b00000000000111111111111111111111) (= (mask!8725 thiss!1248) #b00000000001111111111111111111111) (= (mask!8725 thiss!1248) #b00000000011111111111111111111111) (= (mask!8725 thiss!1248) #b00000000111111111111111111111111) (= (mask!8725 thiss!1248) #b00000001111111111111111111111111) (= (mask!8725 thiss!1248) #b00000011111111111111111111111111) (= (mask!8725 thiss!1248) #b00000111111111111111111111111111) (= (mask!8725 thiss!1248) #b00001111111111111111111111111111) (= (mask!8725 thiss!1248) #b00011111111111111111111111111111) (= (mask!8725 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8725 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!180980 d!54267))

(declare-fun b!181119 () Bool)

(declare-fun e!119307 () Bool)

(assert (=> b!181119 (= e!119307 tp_is_empty!4245)))

(declare-fun b!181118 () Bool)

(declare-fun e!119308 () Bool)

(assert (=> b!181118 (= e!119308 tp_is_empty!4245)))

(declare-fun condMapEmpty!7280 () Bool)

(declare-fun mapDefault!7280 () ValueCell!1779)

(assert (=> mapNonEmpty!7274 (= condMapEmpty!7280 (= mapRest!7274 ((as const (Array (_ BitVec 32) ValueCell!1779)) mapDefault!7280)))))

(declare-fun mapRes!7280 () Bool)

(assert (=> mapNonEmpty!7274 (= tp!16163 (and e!119307 mapRes!7280))))

(declare-fun mapNonEmpty!7280 () Bool)

(declare-fun tp!16172 () Bool)

(assert (=> mapNonEmpty!7280 (= mapRes!7280 (and tp!16172 e!119308))))

(declare-fun mapRest!7280 () (Array (_ BitVec 32) ValueCell!1779))

(declare-fun mapValue!7280 () ValueCell!1779)

(declare-fun mapKey!7280 () (_ BitVec 32))

(assert (=> mapNonEmpty!7280 (= mapRest!7274 (store mapRest!7280 mapKey!7280 mapValue!7280))))

(declare-fun mapIsEmpty!7280 () Bool)

(assert (=> mapIsEmpty!7280 mapRes!7280))

(assert (= (and mapNonEmpty!7274 condMapEmpty!7280) mapIsEmpty!7280))

(assert (= (and mapNonEmpty!7274 (not condMapEmpty!7280)) mapNonEmpty!7280))

(assert (= (and mapNonEmpty!7280 ((_ is ValueCellFull!1779) mapValue!7280)) b!181118))

(assert (= (and mapNonEmpty!7274 ((_ is ValueCellFull!1779) mapDefault!7280)) b!181119))

(declare-fun m!209069 () Bool)

(assert (=> mapNonEmpty!7280 m!209069))

(declare-fun b_lambda!7167 () Bool)

(assert (= b_lambda!7165 (or (and b!180981 b_free!4473) b_lambda!7167)))

(check-sat (not b!181077) (not bm!18304) (not bm!18300) (not d!54255) (not d!54265) (not b!181019) (not bm!18302) (not b!181065) (not d!54263) (not mapNonEmpty!7280) (not d!54257) (not b!181091) (not b!181079) (not b!181017) (not bm!18301) tp_is_empty!4245 (not b!181093) (not b!181082) (not b_lambda!7167) (not b!181078) (not b!181111) (not b!181071) (not b!181069) (not b_next!4473) b_and!11037 (not b!181092) (not b!181072))
(check-sat b_and!11037 (not b_next!4473))
(get-model)

(declare-fun d!54269 () Bool)

(declare-fun e!119311 () Bool)

(assert (=> d!54269 e!119311))

(declare-fun res!85776 () Bool)

(assert (=> d!54269 (=> (not res!85776) (not e!119311))))

(declare-fun lt!89603 () ListLongMap!2307)

(assert (=> d!54269 (= res!85776 (contains!1241 lt!89603 (_1!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))))

(declare-fun lt!89600 () List!2323)

(assert (=> d!54269 (= lt!89603 (ListLongMap!2308 lt!89600))))

(declare-fun lt!89601 () Unit!5501)

(declare-fun lt!89602 () Unit!5501)

(assert (=> d!54269 (= lt!89601 lt!89602)))

(assert (=> d!54269 (= (getValueByKey!207 lt!89600 (_1!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))) (Some!212 (_2!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!111 (List!2323 (_ BitVec 64) V!5307) Unit!5501)

(assert (=> d!54269 (= lt!89602 (lemmaContainsTupThenGetReturnValue!111 lt!89600 (_1!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))) (_2!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))))

(declare-fun insertStrictlySorted!113 (List!2323 (_ BitVec 64) V!5307) List!2323)

(assert (=> d!54269 (= lt!89600 (insertStrictlySorted!113 (toList!1169 (ite c!32428 call!18306 (ite c!32425 call!18307 call!18302))) (_1!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))) (_2!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))))

(assert (=> d!54269 (= (+!266 (ite c!32428 call!18306 (ite c!32425 call!18307 call!18302)) (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))) lt!89603)))

(declare-fun b!181124 () Bool)

(declare-fun res!85775 () Bool)

(assert (=> b!181124 (=> (not res!85775) (not e!119311))))

(assert (=> b!181124 (= res!85775 (= (getValueByKey!207 (toList!1169 lt!89603) (_1!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))) (Some!212 (_2!1698 (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))))

(declare-fun b!181125 () Bool)

(declare-fun contains!1243 (List!2323 tuple2!3376) Bool)

(assert (=> b!181125 (= e!119311 (contains!1243 (toList!1169 lt!89603) (ite (or c!32428 c!32425) (tuple2!3377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3553 thiss!1248)) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))

(assert (= (and d!54269 res!85776) b!181124))

(assert (= (and b!181124 res!85775) b!181125))

(declare-fun m!209071 () Bool)

(assert (=> d!54269 m!209071))

(declare-fun m!209073 () Bool)

(assert (=> d!54269 m!209073))

(declare-fun m!209075 () Bool)

(assert (=> d!54269 m!209075))

(declare-fun m!209077 () Bool)

(assert (=> d!54269 m!209077))

(declare-fun m!209079 () Bool)

(assert (=> b!181124 m!209079))

(declare-fun m!209081 () Bool)

(assert (=> b!181125 m!209081))

(assert (=> bm!18300 d!54269))

(declare-fun b!181150 () Bool)

(assert (=> b!181150 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> b!181150 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3938 (_values!3695 thiss!1248))))))

(declare-fun e!119330 () Bool)

(declare-fun lt!89623 () ListLongMap!2307)

(assert (=> b!181150 (= e!119330 (= (apply!151 lt!89623 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)) (get!2074 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!181151 () Bool)

(declare-fun e!119332 () Bool)

(assert (=> b!181151 (= e!119332 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181151 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!181152 () Bool)

(declare-fun lt!89619 () Unit!5501)

(declare-fun lt!89621 () Unit!5501)

(assert (=> b!181152 (= lt!89619 lt!89621)))

(declare-fun lt!89618 () (_ BitVec 64))

(declare-fun lt!89622 () V!5307)

(declare-fun lt!89624 () (_ BitVec 64))

(declare-fun lt!89620 () ListLongMap!2307)

(assert (=> b!181152 (not (contains!1241 (+!266 lt!89620 (tuple2!3377 lt!89618 lt!89622)) lt!89624))))

(declare-fun addStillNotContains!84 (ListLongMap!2307 (_ BitVec 64) V!5307 (_ BitVec 64)) Unit!5501)

(assert (=> b!181152 (= lt!89621 (addStillNotContains!84 lt!89620 lt!89618 lt!89622 lt!89624))))

(assert (=> b!181152 (= lt!89624 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!181152 (= lt!89622 (get!2074 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!181152 (= lt!89618 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!18311 () ListLongMap!2307)

(assert (=> b!181152 (= lt!89620 call!18311)))

(declare-fun e!119328 () ListLongMap!2307)

(assert (=> b!181152 (= e!119328 (+!266 call!18311 (tuple2!3377 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000) (get!2074 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!181154 () Bool)

(declare-fun res!85788 () Bool)

(declare-fun e!119327 () Bool)

(assert (=> b!181154 (=> (not res!85788) (not e!119327))))

(assert (=> b!181154 (= res!85788 (not (contains!1241 lt!89623 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!181155 () Bool)

(declare-fun e!119331 () ListLongMap!2307)

(assert (=> b!181155 (= e!119331 e!119328)))

(declare-fun c!32447 () Bool)

(assert (=> b!181155 (= c!32447 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181156 () Bool)

(declare-fun e!119329 () Bool)

(assert (=> b!181156 (= e!119329 e!119330)))

(assert (=> b!181156 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun res!85785 () Bool)

(assert (=> b!181156 (= res!85785 (contains!1241 lt!89623 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181156 (=> (not res!85785) (not e!119330))))

(declare-fun b!181157 () Bool)

(assert (=> b!181157 (= e!119327 e!119329)))

(declare-fun c!32449 () Bool)

(assert (=> b!181157 (= c!32449 e!119332)))

(declare-fun res!85786 () Bool)

(assert (=> b!181157 (=> (not res!85786) (not e!119332))))

(assert (=> b!181157 (= res!85786 (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun b!181158 () Bool)

(assert (=> b!181158 (= e!119328 call!18311)))

(declare-fun b!181159 () Bool)

(declare-fun e!119326 () Bool)

(declare-fun isEmpty!462 (ListLongMap!2307) Bool)

(assert (=> b!181159 (= e!119326 (isEmpty!462 lt!89623))))

(declare-fun b!181160 () Bool)

(assert (=> b!181160 (= e!119329 e!119326)))

(declare-fun c!32448 () Bool)

(assert (=> b!181160 (= c!32448 (bvslt #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun b!181153 () Bool)

(assert (=> b!181153 (= e!119326 (= lt!89623 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3712 thiss!1248))))))

(declare-fun d!54271 () Bool)

(assert (=> d!54271 e!119327))

(declare-fun res!85787 () Bool)

(assert (=> d!54271 (=> (not res!85787) (not e!119327))))

(assert (=> d!54271 (= res!85787 (not (contains!1241 lt!89623 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!54271 (= lt!89623 e!119331)))

(declare-fun c!32450 () Bool)

(assert (=> d!54271 (= c!32450 (bvsge #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> d!54271 (validMask!0 (mask!8725 thiss!1248))))

(assert (=> d!54271 (= (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)) lt!89623)))

(declare-fun bm!18308 () Bool)

(assert (=> bm!18308 (= call!18311 (getCurrentListMapNoExtraKeys!181 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3712 thiss!1248)))))

(declare-fun b!181161 () Bool)

(assert (=> b!181161 (= e!119331 (ListLongMap!2308 Nil!2320))))

(assert (= (and d!54271 c!32450) b!181161))

(assert (= (and d!54271 (not c!32450)) b!181155))

(assert (= (and b!181155 c!32447) b!181152))

(assert (= (and b!181155 (not c!32447)) b!181158))

(assert (= (or b!181152 b!181158) bm!18308))

(assert (= (and d!54271 res!85787) b!181154))

(assert (= (and b!181154 res!85788) b!181157))

(assert (= (and b!181157 res!85786) b!181151))

(assert (= (and b!181157 c!32449) b!181156))

(assert (= (and b!181157 (not c!32449)) b!181160))

(assert (= (and b!181156 res!85785) b!181150))

(assert (= (and b!181160 c!32448) b!181153))

(assert (= (and b!181160 (not c!32448)) b!181159))

(declare-fun b_lambda!7169 () Bool)

(assert (=> (not b_lambda!7169) (not b!181150)))

(assert (=> b!181150 t!7186))

(declare-fun b_and!11039 () Bool)

(assert (= b_and!11037 (and (=> t!7186 result!4725) b_and!11039)))

(declare-fun b_lambda!7171 () Bool)

(assert (=> (not b_lambda!7171) (not b!181152)))

(assert (=> b!181152 t!7186))

(declare-fun b_and!11041 () Bool)

(assert (= b_and!11039 (and (=> t!7186 result!4725) b_and!11041)))

(declare-fun m!209083 () Bool)

(assert (=> b!181152 m!209083))

(assert (=> b!181152 m!208997))

(declare-fun m!209085 () Bool)

(assert (=> b!181152 m!209085))

(declare-fun m!209087 () Bool)

(assert (=> b!181152 m!209087))

(declare-fun m!209089 () Bool)

(assert (=> b!181152 m!209089))

(assert (=> b!181152 m!208995))

(assert (=> b!181152 m!208995))

(assert (=> b!181152 m!208997))

(assert (=> b!181152 m!208999))

(assert (=> b!181152 m!209087))

(assert (=> b!181152 m!208989))

(assert (=> b!181150 m!208997))

(assert (=> b!181150 m!208989))

(assert (=> b!181150 m!208995))

(assert (=> b!181150 m!208995))

(assert (=> b!181150 m!208997))

(assert (=> b!181150 m!208999))

(assert (=> b!181150 m!208989))

(declare-fun m!209091 () Bool)

(assert (=> b!181150 m!209091))

(declare-fun m!209093 () Bool)

(assert (=> b!181154 m!209093))

(declare-fun m!209095 () Bool)

(assert (=> b!181153 m!209095))

(assert (=> b!181151 m!208989))

(assert (=> b!181151 m!208989))

(assert (=> b!181151 m!208991))

(declare-fun m!209097 () Bool)

(assert (=> b!181159 m!209097))

(assert (=> b!181156 m!208989))

(assert (=> b!181156 m!208989))

(declare-fun m!209099 () Bool)

(assert (=> b!181156 m!209099))

(declare-fun m!209101 () Bool)

(assert (=> d!54271 m!209101))

(assert (=> d!54271 m!208949))

(assert (=> b!181155 m!208989))

(assert (=> b!181155 m!208989))

(assert (=> b!181155 m!208991))

(assert (=> bm!18308 m!209095))

(assert (=> bm!18302 d!54271))

(declare-fun d!54273 () Bool)

(declare-fun get!2075 (Option!213) V!5307)

(assert (=> d!54273 (= (apply!151 lt!89575 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2075 (getValueByKey!207 (toList!1169 lt!89575) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7395 () Bool)

(assert (= bs!7395 d!54273))

(declare-fun m!209103 () Bool)

(assert (=> bs!7395 m!209103))

(assert (=> bs!7395 m!209103))

(declare-fun m!209105 () Bool)

(assert (=> bs!7395 m!209105))

(assert (=> b!181072 d!54273))

(declare-fun d!54275 () Bool)

(declare-fun res!85793 () Bool)

(declare-fun e!119337 () Bool)

(assert (=> d!54275 (=> res!85793 e!119337)))

(assert (=> d!54275 (= res!85793 (and ((_ is Cons!2319) (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))) (= (_1!1698 (h!2945 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))))) key!828)))))

(assert (=> d!54275 (= (containsKey!211 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828) e!119337)))

(declare-fun b!181166 () Bool)

(declare-fun e!119338 () Bool)

(assert (=> b!181166 (= e!119337 e!119338)))

(declare-fun res!85794 () Bool)

(assert (=> b!181166 (=> (not res!85794) (not e!119338))))

(assert (=> b!181166 (= res!85794 (and (or (not ((_ is Cons!2319) (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))))) (bvsle (_1!1698 (h!2945 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))))) key!828)) ((_ is Cons!2319) (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))) (bvslt (_1!1698 (h!2945 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))))) key!828)))))

(declare-fun b!181167 () Bool)

(assert (=> b!181167 (= e!119338 (containsKey!211 (t!7183 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))) key!828))))

(assert (= (and d!54275 (not res!85793)) b!181166))

(assert (= (and b!181166 res!85794) b!181167))

(declare-fun m!209107 () Bool)

(assert (=> b!181167 m!209107))

(assert (=> d!54255 d!54275))

(declare-fun d!54277 () Bool)

(declare-fun e!119340 () Bool)

(assert (=> d!54277 e!119340))

(declare-fun res!85795 () Bool)

(assert (=> d!54277 (=> res!85795 e!119340)))

(declare-fun lt!89625 () Bool)

(assert (=> d!54277 (= res!85795 (not lt!89625))))

(declare-fun lt!89626 () Bool)

(assert (=> d!54277 (= lt!89625 lt!89626)))

(declare-fun lt!89628 () Unit!5501)

(declare-fun e!119339 () Unit!5501)

(assert (=> d!54277 (= lt!89628 e!119339)))

(declare-fun c!32451 () Bool)

(assert (=> d!54277 (= c!32451 lt!89626)))

(assert (=> d!54277 (= lt!89626 (containsKey!211 (toList!1169 lt!89575) (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54277 (= (contains!1241 lt!89575 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)) lt!89625)))

(declare-fun b!181168 () Bool)

(declare-fun lt!89627 () Unit!5501)

(assert (=> b!181168 (= e!119339 lt!89627)))

(assert (=> b!181168 (= lt!89627 (lemmaContainsKeyImpliesGetValueByKeyDefined!160 (toList!1169 lt!89575) (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181168 (isDefined!161 (getValueByKey!207 (toList!1169 lt!89575) (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181169 () Bool)

(declare-fun Unit!5505 () Unit!5501)

(assert (=> b!181169 (= e!119339 Unit!5505)))

(declare-fun b!181170 () Bool)

(assert (=> b!181170 (= e!119340 (isDefined!161 (getValueByKey!207 (toList!1169 lt!89575) (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54277 c!32451) b!181168))

(assert (= (and d!54277 (not c!32451)) b!181169))

(assert (= (and d!54277 (not res!85795)) b!181170))

(assert (=> d!54277 m!208989))

(declare-fun m!209109 () Bool)

(assert (=> d!54277 m!209109))

(assert (=> b!181168 m!208989))

(declare-fun m!209111 () Bool)

(assert (=> b!181168 m!209111))

(assert (=> b!181168 m!208989))

(declare-fun m!209113 () Bool)

(assert (=> b!181168 m!209113))

(assert (=> b!181168 m!209113))

(declare-fun m!209115 () Bool)

(assert (=> b!181168 m!209115))

(assert (=> b!181170 m!208989))

(assert (=> b!181170 m!209113))

(assert (=> b!181170 m!209113))

(assert (=> b!181170 m!209115))

(assert (=> b!181079 d!54277))

(declare-fun d!54279 () Bool)

(assert (=> d!54279 (= (apply!151 lt!89575 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)) (get!2075 (getValueByKey!207 (toList!1169 lt!89575) (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7396 () Bool)

(assert (= bs!7396 d!54279))

(assert (=> bs!7396 m!208989))

(assert (=> bs!7396 m!209113))

(assert (=> bs!7396 m!209113))

(declare-fun m!209117 () Bool)

(assert (=> bs!7396 m!209117))

(assert (=> b!181071 d!54279))

(declare-fun d!54281 () Bool)

(declare-fun c!32454 () Bool)

(assert (=> d!54281 (= c!32454 ((_ is ValueCellFull!1779) (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119343 () V!5307)

(assert (=> d!54281 (= (get!2074 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!119343)))

(declare-fun b!181175 () Bool)

(declare-fun get!2076 (ValueCell!1779 V!5307) V!5307)

(assert (=> b!181175 (= e!119343 (get!2076 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!181176 () Bool)

(declare-fun get!2077 (ValueCell!1779 V!5307) V!5307)

(assert (=> b!181176 (= e!119343 (get!2077 (select (arr!3629 (_values!3695 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!489 (defaultEntry!3712 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54281 c!32454) b!181175))

(assert (= (and d!54281 (not c!32454)) b!181176))

(assert (=> b!181175 m!208995))

(assert (=> b!181175 m!208997))

(declare-fun m!209119 () Bool)

(assert (=> b!181175 m!209119))

(assert (=> b!181176 m!208995))

(assert (=> b!181176 m!208997))

(declare-fun m!209121 () Bool)

(assert (=> b!181176 m!209121))

(assert (=> b!181071 d!54281))

(declare-fun d!54283 () Bool)

(assert (=> d!54283 (= (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!181078 d!54283))

(declare-fun d!54285 () Bool)

(assert (=> d!54285 (= (apply!151 (+!266 lt!89564 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))) lt!89572) (apply!151 lt!89564 lt!89572))))

(declare-fun lt!89631 () Unit!5501)

(declare-fun choose!969 (ListLongMap!2307 (_ BitVec 64) V!5307 (_ BitVec 64)) Unit!5501)

(assert (=> d!54285 (= lt!89631 (choose!969 lt!89564 lt!89574 (minValue!3553 thiss!1248) lt!89572))))

(declare-fun e!119346 () Bool)

(assert (=> d!54285 e!119346))

(declare-fun res!85798 () Bool)

(assert (=> d!54285 (=> (not res!85798) (not e!119346))))

(assert (=> d!54285 (= res!85798 (contains!1241 lt!89564 lt!89572))))

(assert (=> d!54285 (= (addApplyDifferent!127 lt!89564 lt!89574 (minValue!3553 thiss!1248) lt!89572) lt!89631)))

(declare-fun b!181180 () Bool)

(assert (=> b!181180 (= e!119346 (not (= lt!89572 lt!89574)))))

(assert (= (and d!54285 res!85798) b!181180))

(assert (=> d!54285 m!209011))

(assert (=> d!54285 m!209011))

(assert (=> d!54285 m!209013))

(declare-fun m!209123 () Bool)

(assert (=> d!54285 m!209123))

(declare-fun m!209125 () Bool)

(assert (=> d!54285 m!209125))

(assert (=> d!54285 m!209039))

(assert (=> b!181069 d!54285))

(assert (=> b!181069 d!54271))

(declare-fun d!54287 () Bool)

(assert (=> d!54287 (= (apply!151 lt!89566 lt!89577) (get!2075 (getValueByKey!207 (toList!1169 lt!89566) lt!89577)))))

(declare-fun bs!7397 () Bool)

(assert (= bs!7397 d!54287))

(declare-fun m!209127 () Bool)

(assert (=> bs!7397 m!209127))

(assert (=> bs!7397 m!209127))

(declare-fun m!209129 () Bool)

(assert (=> bs!7397 m!209129))

(assert (=> b!181069 d!54287))

(declare-fun d!54289 () Bool)

(assert (=> d!54289 (= (apply!151 lt!89571 lt!89568) (get!2075 (getValueByKey!207 (toList!1169 lt!89571) lt!89568)))))

(declare-fun bs!7398 () Bool)

(assert (= bs!7398 d!54289))

(declare-fun m!209131 () Bool)

(assert (=> bs!7398 m!209131))

(assert (=> bs!7398 m!209131))

(declare-fun m!209133 () Bool)

(assert (=> bs!7398 m!209133))

(assert (=> b!181069 d!54289))

(declare-fun d!54291 () Bool)

(declare-fun e!119347 () Bool)

(assert (=> d!54291 e!119347))

(declare-fun res!85800 () Bool)

(assert (=> d!54291 (=> (not res!85800) (not e!119347))))

(declare-fun lt!89635 () ListLongMap!2307)

(assert (=> d!54291 (= res!85800 (contains!1241 lt!89635 (_1!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))))))

(declare-fun lt!89632 () List!2323)

(assert (=> d!54291 (= lt!89635 (ListLongMap!2308 lt!89632))))

(declare-fun lt!89633 () Unit!5501)

(declare-fun lt!89634 () Unit!5501)

(assert (=> d!54291 (= lt!89633 lt!89634)))

(assert (=> d!54291 (= (getValueByKey!207 lt!89632 (_1!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))))))

(assert (=> d!54291 (= lt!89634 (lemmaContainsTupThenGetReturnValue!111 lt!89632 (_1!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))))))

(assert (=> d!54291 (= lt!89632 (insertStrictlySorted!113 (toList!1169 lt!89571) (_1!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))))))

(assert (=> d!54291 (= (+!266 lt!89571 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))) lt!89635)))

(declare-fun b!181181 () Bool)

(declare-fun res!85799 () Bool)

(assert (=> b!181181 (=> (not res!85799) (not e!119347))))

(assert (=> b!181181 (= res!85799 (= (getValueByKey!207 (toList!1169 lt!89635) (_1!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))))))))

(declare-fun b!181182 () Bool)

(assert (=> b!181182 (= e!119347 (contains!1243 (toList!1169 lt!89635) (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))))))

(assert (= (and d!54291 res!85800) b!181181))

(assert (= (and b!181181 res!85799) b!181182))

(declare-fun m!209135 () Bool)

(assert (=> d!54291 m!209135))

(declare-fun m!209137 () Bool)

(assert (=> d!54291 m!209137))

(declare-fun m!209139 () Bool)

(assert (=> d!54291 m!209139))

(declare-fun m!209141 () Bool)

(assert (=> d!54291 m!209141))

(declare-fun m!209143 () Bool)

(assert (=> b!181181 m!209143))

(declare-fun m!209145 () Bool)

(assert (=> b!181182 m!209145))

(assert (=> b!181069 d!54291))

(declare-fun d!54293 () Bool)

(assert (=> d!54293 (= (apply!151 (+!266 lt!89566 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))) lt!89577) (get!2075 (getValueByKey!207 (toList!1169 (+!266 lt!89566 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))) lt!89577)))))

(declare-fun bs!7399 () Bool)

(assert (= bs!7399 d!54293))

(declare-fun m!209147 () Bool)

(assert (=> bs!7399 m!209147))

(assert (=> bs!7399 m!209147))

(declare-fun m!209149 () Bool)

(assert (=> bs!7399 m!209149))

(assert (=> b!181069 d!54293))

(declare-fun d!54295 () Bool)

(declare-fun e!119348 () Bool)

(assert (=> d!54295 e!119348))

(declare-fun res!85802 () Bool)

(assert (=> d!54295 (=> (not res!85802) (not e!119348))))

(declare-fun lt!89639 () ListLongMap!2307)

(assert (=> d!54295 (= res!85802 (contains!1241 lt!89639 (_1!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))))))

(declare-fun lt!89636 () List!2323)

(assert (=> d!54295 (= lt!89639 (ListLongMap!2308 lt!89636))))

(declare-fun lt!89637 () Unit!5501)

(declare-fun lt!89638 () Unit!5501)

(assert (=> d!54295 (= lt!89637 lt!89638)))

(assert (=> d!54295 (= (getValueByKey!207 lt!89636 (_1!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))))))

(assert (=> d!54295 (= lt!89638 (lemmaContainsTupThenGetReturnValue!111 lt!89636 (_1!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))))))

(assert (=> d!54295 (= lt!89636 (insertStrictlySorted!113 (toList!1169 lt!89566) (_1!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))))))

(assert (=> d!54295 (= (+!266 lt!89566 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))) lt!89639)))

(declare-fun b!181183 () Bool)

(declare-fun res!85801 () Bool)

(assert (=> b!181183 (=> (not res!85801) (not e!119348))))

(assert (=> b!181183 (= res!85801 (= (getValueByKey!207 (toList!1169 lt!89639) (_1!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))))))))

(declare-fun b!181184 () Bool)

(assert (=> b!181184 (= e!119348 (contains!1243 (toList!1169 lt!89639) (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))))))

(assert (= (and d!54295 res!85802) b!181183))

(assert (= (and b!181183 res!85801) b!181184))

(declare-fun m!209151 () Bool)

(assert (=> d!54295 m!209151))

(declare-fun m!209153 () Bool)

(assert (=> d!54295 m!209153))

(declare-fun m!209155 () Bool)

(assert (=> d!54295 m!209155))

(declare-fun m!209157 () Bool)

(assert (=> d!54295 m!209157))

(declare-fun m!209159 () Bool)

(assert (=> b!181183 m!209159))

(declare-fun m!209161 () Bool)

(assert (=> b!181184 m!209161))

(assert (=> b!181069 d!54295))

(declare-fun d!54297 () Bool)

(declare-fun e!119350 () Bool)

(assert (=> d!54297 e!119350))

(declare-fun res!85803 () Bool)

(assert (=> d!54297 (=> res!85803 e!119350)))

(declare-fun lt!89640 () Bool)

(assert (=> d!54297 (= res!85803 (not lt!89640))))

(declare-fun lt!89641 () Bool)

(assert (=> d!54297 (= lt!89640 lt!89641)))

(declare-fun lt!89643 () Unit!5501)

(declare-fun e!119349 () Unit!5501)

(assert (=> d!54297 (= lt!89643 e!119349)))

(declare-fun c!32455 () Bool)

(assert (=> d!54297 (= c!32455 lt!89641)))

(assert (=> d!54297 (= lt!89641 (containsKey!211 (toList!1169 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))) lt!89576))))

(assert (=> d!54297 (= (contains!1241 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))) lt!89576) lt!89640)))

(declare-fun b!181185 () Bool)

(declare-fun lt!89642 () Unit!5501)

(assert (=> b!181185 (= e!119349 lt!89642)))

(assert (=> b!181185 (= lt!89642 (lemmaContainsKeyImpliesGetValueByKeyDefined!160 (toList!1169 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))) lt!89576))))

(assert (=> b!181185 (isDefined!161 (getValueByKey!207 (toList!1169 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))) lt!89576))))

(declare-fun b!181186 () Bool)

(declare-fun Unit!5506 () Unit!5501)

(assert (=> b!181186 (= e!119349 Unit!5506)))

(declare-fun b!181187 () Bool)

(assert (=> b!181187 (= e!119350 (isDefined!161 (getValueByKey!207 (toList!1169 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))) lt!89576)))))

(assert (= (and d!54297 c!32455) b!181185))

(assert (= (and d!54297 (not c!32455)) b!181186))

(assert (= (and d!54297 (not res!85803)) b!181187))

(declare-fun m!209163 () Bool)

(assert (=> d!54297 m!209163))

(declare-fun m!209165 () Bool)

(assert (=> b!181185 m!209165))

(declare-fun m!209167 () Bool)

(assert (=> b!181185 m!209167))

(assert (=> b!181185 m!209167))

(declare-fun m!209169 () Bool)

(assert (=> b!181185 m!209169))

(assert (=> b!181187 m!209167))

(assert (=> b!181187 m!209167))

(assert (=> b!181187 m!209169))

(assert (=> b!181069 d!54297))

(declare-fun d!54299 () Bool)

(assert (=> d!54299 (= (apply!151 (+!266 lt!89566 (tuple2!3377 lt!89569 (zeroValue!3553 thiss!1248))) lt!89577) (apply!151 lt!89566 lt!89577))))

(declare-fun lt!89644 () Unit!5501)

(assert (=> d!54299 (= lt!89644 (choose!969 lt!89566 lt!89569 (zeroValue!3553 thiss!1248) lt!89577))))

(declare-fun e!119351 () Bool)

(assert (=> d!54299 e!119351))

(declare-fun res!85804 () Bool)

(assert (=> d!54299 (=> (not res!85804) (not e!119351))))

(assert (=> d!54299 (= res!85804 (contains!1241 lt!89566 lt!89577))))

(assert (=> d!54299 (= (addApplyDifferent!127 lt!89566 lt!89569 (zeroValue!3553 thiss!1248) lt!89577) lt!89644)))

(declare-fun b!181188 () Bool)

(assert (=> b!181188 (= e!119351 (not (= lt!89577 lt!89569)))))

(assert (= (and d!54299 res!85804) b!181188))

(assert (=> d!54299 m!209023))

(assert (=> d!54299 m!209023))

(assert (=> d!54299 m!209033))

(declare-fun m!209171 () Bool)

(assert (=> d!54299 m!209171))

(declare-fun m!209173 () Bool)

(assert (=> d!54299 m!209173))

(assert (=> d!54299 m!209019))

(assert (=> b!181069 d!54299))

(declare-fun d!54301 () Bool)

(declare-fun e!119352 () Bool)

(assert (=> d!54301 e!119352))

(declare-fun res!85806 () Bool)

(assert (=> d!54301 (=> (not res!85806) (not e!119352))))

(declare-fun lt!89648 () ListLongMap!2307)

(assert (=> d!54301 (= res!85806 (contains!1241 lt!89648 (_1!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))))))

(declare-fun lt!89645 () List!2323)

(assert (=> d!54301 (= lt!89648 (ListLongMap!2308 lt!89645))))

(declare-fun lt!89646 () Unit!5501)

(declare-fun lt!89647 () Unit!5501)

(assert (=> d!54301 (= lt!89646 lt!89647)))

(assert (=> d!54301 (= (getValueByKey!207 lt!89645 (_1!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))))))

(assert (=> d!54301 (= lt!89647 (lemmaContainsTupThenGetReturnValue!111 lt!89645 (_1!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))))))

(assert (=> d!54301 (= lt!89645 (insertStrictlySorted!113 (toList!1169 lt!89564) (_1!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))))))

(assert (=> d!54301 (= (+!266 lt!89564 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))) lt!89648)))

(declare-fun b!181189 () Bool)

(declare-fun res!85805 () Bool)

(assert (=> b!181189 (=> (not res!85805) (not e!119352))))

(assert (=> b!181189 (= res!85805 (= (getValueByKey!207 (toList!1169 lt!89648) (_1!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))))))))

(declare-fun b!181190 () Bool)

(assert (=> b!181190 (= e!119352 (contains!1243 (toList!1169 lt!89648) (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))))))

(assert (= (and d!54301 res!85806) b!181189))

(assert (= (and b!181189 res!85805) b!181190))

(declare-fun m!209175 () Bool)

(assert (=> d!54301 m!209175))

(declare-fun m!209177 () Bool)

(assert (=> d!54301 m!209177))

(declare-fun m!209179 () Bool)

(assert (=> d!54301 m!209179))

(declare-fun m!209181 () Bool)

(assert (=> d!54301 m!209181))

(declare-fun m!209183 () Bool)

(assert (=> b!181189 m!209183))

(declare-fun m!209185 () Bool)

(assert (=> b!181190 m!209185))

(assert (=> b!181069 d!54301))

(declare-fun d!54303 () Bool)

(assert (=> d!54303 (= (apply!151 (+!266 lt!89564 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248))) lt!89572) (get!2075 (getValueByKey!207 (toList!1169 (+!266 lt!89564 (tuple2!3377 lt!89574 (minValue!3553 thiss!1248)))) lt!89572)))))

(declare-fun bs!7400 () Bool)

(assert (= bs!7400 d!54303))

(declare-fun m!209187 () Bool)

(assert (=> bs!7400 m!209187))

(assert (=> bs!7400 m!209187))

(declare-fun m!209189 () Bool)

(assert (=> bs!7400 m!209189))

(assert (=> b!181069 d!54303))

(declare-fun d!54305 () Bool)

(assert (=> d!54305 (= (apply!151 (+!266 lt!89571 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))) lt!89568) (apply!151 lt!89571 lt!89568))))

(declare-fun lt!89649 () Unit!5501)

(assert (=> d!54305 (= lt!89649 (choose!969 lt!89571 lt!89565 (minValue!3553 thiss!1248) lt!89568))))

(declare-fun e!119353 () Bool)

(assert (=> d!54305 e!119353))

(declare-fun res!85807 () Bool)

(assert (=> d!54305 (=> (not res!85807) (not e!119353))))

(assert (=> d!54305 (= res!85807 (contains!1241 lt!89571 lt!89568))))

(assert (=> d!54305 (= (addApplyDifferent!127 lt!89571 lt!89565 (minValue!3553 thiss!1248) lt!89568) lt!89649)))

(declare-fun b!181191 () Bool)

(assert (=> b!181191 (= e!119353 (not (= lt!89568 lt!89565)))))

(assert (= (and d!54305 res!85807) b!181191))

(assert (=> d!54305 m!209035))

(assert (=> d!54305 m!209035))

(assert (=> d!54305 m!209037))

(declare-fun m!209191 () Bool)

(assert (=> d!54305 m!209191))

(declare-fun m!209193 () Bool)

(assert (=> d!54305 m!209193))

(assert (=> d!54305 m!209025))

(assert (=> b!181069 d!54305))

(declare-fun d!54307 () Bool)

(declare-fun e!119354 () Bool)

(assert (=> d!54307 e!119354))

(declare-fun res!85809 () Bool)

(assert (=> d!54307 (=> (not res!85809) (not e!119354))))

(declare-fun lt!89653 () ListLongMap!2307)

(assert (=> d!54307 (= res!85809 (contains!1241 lt!89653 (_1!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))))))

(declare-fun lt!89650 () List!2323)

(assert (=> d!54307 (= lt!89653 (ListLongMap!2308 lt!89650))))

(declare-fun lt!89651 () Unit!5501)

(declare-fun lt!89652 () Unit!5501)

(assert (=> d!54307 (= lt!89651 lt!89652)))

(assert (=> d!54307 (= (getValueByKey!207 lt!89650 (_1!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))))))

(assert (=> d!54307 (= lt!89652 (lemmaContainsTupThenGetReturnValue!111 lt!89650 (_1!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))))))

(assert (=> d!54307 (= lt!89650 (insertStrictlySorted!113 (toList!1169 lt!89563) (_1!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))))))

(assert (=> d!54307 (= (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))) lt!89653)))

(declare-fun b!181192 () Bool)

(declare-fun res!85808 () Bool)

(assert (=> b!181192 (=> (not res!85808) (not e!119354))))

(assert (=> b!181192 (= res!85808 (= (getValueByKey!207 (toList!1169 lt!89653) (_1!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))))))))

(declare-fun b!181193 () Bool)

(assert (=> b!181193 (= e!119354 (contains!1243 (toList!1169 lt!89653) (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))))))

(assert (= (and d!54307 res!85809) b!181192))

(assert (= (and b!181192 res!85808) b!181193))

(declare-fun m!209195 () Bool)

(assert (=> d!54307 m!209195))

(declare-fun m!209197 () Bool)

(assert (=> d!54307 m!209197))

(declare-fun m!209199 () Bool)

(assert (=> d!54307 m!209199))

(declare-fun m!209201 () Bool)

(assert (=> d!54307 m!209201))

(declare-fun m!209203 () Bool)

(assert (=> b!181192 m!209203))

(declare-fun m!209205 () Bool)

(assert (=> b!181193 m!209205))

(assert (=> b!181069 d!54307))

(declare-fun d!54309 () Bool)

(assert (=> d!54309 (contains!1241 (+!266 lt!89563 (tuple2!3377 lt!89561 (zeroValue!3553 thiss!1248))) lt!89576)))

(declare-fun lt!89656 () Unit!5501)

(declare-fun choose!970 (ListLongMap!2307 (_ BitVec 64) V!5307 (_ BitVec 64)) Unit!5501)

(assert (=> d!54309 (= lt!89656 (choose!970 lt!89563 lt!89561 (zeroValue!3553 thiss!1248) lt!89576))))

(assert (=> d!54309 (contains!1241 lt!89563 lt!89576)))

(assert (=> d!54309 (= (addStillContains!127 lt!89563 lt!89561 (zeroValue!3553 thiss!1248) lt!89576) lt!89656)))

(declare-fun bs!7401 () Bool)

(assert (= bs!7401 d!54309))

(assert (=> bs!7401 m!209015))

(assert (=> bs!7401 m!209015))

(assert (=> bs!7401 m!209017))

(declare-fun m!209207 () Bool)

(assert (=> bs!7401 m!209207))

(declare-fun m!209209 () Bool)

(assert (=> bs!7401 m!209209))

(assert (=> b!181069 d!54309))

(declare-fun d!54311 () Bool)

(assert (=> d!54311 (= (apply!151 (+!266 lt!89571 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248))) lt!89568) (get!2075 (getValueByKey!207 (toList!1169 (+!266 lt!89571 (tuple2!3377 lt!89565 (minValue!3553 thiss!1248)))) lt!89568)))))

(declare-fun bs!7402 () Bool)

(assert (= bs!7402 d!54311))

(declare-fun m!209211 () Bool)

(assert (=> bs!7402 m!209211))

(assert (=> bs!7402 m!209211))

(declare-fun m!209213 () Bool)

(assert (=> bs!7402 m!209213))

(assert (=> b!181069 d!54311))

(declare-fun d!54313 () Bool)

(assert (=> d!54313 (= (apply!151 lt!89564 lt!89572) (get!2075 (getValueByKey!207 (toList!1169 lt!89564) lt!89572)))))

(declare-fun bs!7403 () Bool)

(assert (= bs!7403 d!54313))

(declare-fun m!209215 () Bool)

(assert (=> bs!7403 m!209215))

(assert (=> bs!7403 m!209215))

(declare-fun m!209217 () Bool)

(assert (=> bs!7403 m!209217))

(assert (=> b!181069 d!54313))

(assert (=> b!181077 d!54283))

(declare-fun b!181205 () Bool)

(declare-fun e!119364 () Bool)

(declare-fun call!18314 () Bool)

(assert (=> b!181205 (= e!119364 call!18314)))

(declare-fun b!181207 () Bool)

(assert (=> b!181207 (= e!119364 call!18314)))

(declare-fun b!181208 () Bool)

(declare-fun e!119365 () Bool)

(declare-fun contains!1244 (List!2325 (_ BitVec 64)) Bool)

(assert (=> b!181208 (= e!119365 (contains!1244 Nil!2322 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181209 () Bool)

(declare-fun e!119366 () Bool)

(assert (=> b!181209 (= e!119366 e!119364)))

(declare-fun c!32458 () Bool)

(assert (=> b!181209 (= c!32458 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18311 () Bool)

(assert (=> bm!18311 (= call!18314 (arrayNoDuplicates!0 (_keys!5610 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32458 (Cons!2321 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000) Nil!2322) Nil!2322)))))

(declare-fun b!181206 () Bool)

(declare-fun e!119363 () Bool)

(assert (=> b!181206 (= e!119363 e!119366)))

(declare-fun res!85818 () Bool)

(assert (=> b!181206 (=> (not res!85818) (not e!119366))))

(assert (=> b!181206 (= res!85818 (not e!119365))))

(declare-fun res!85817 () Bool)

(assert (=> b!181206 (=> (not res!85817) (not e!119365))))

(assert (=> b!181206 (= res!85817 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54315 () Bool)

(declare-fun res!85816 () Bool)

(assert (=> d!54315 (=> res!85816 e!119363)))

(assert (=> d!54315 (= res!85816 (bvsge #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> d!54315 (= (arrayNoDuplicates!0 (_keys!5610 thiss!1248) #b00000000000000000000000000000000 Nil!2322) e!119363)))

(assert (= (and d!54315 (not res!85816)) b!181206))

(assert (= (and b!181206 res!85817) b!181208))

(assert (= (and b!181206 res!85818) b!181209))

(assert (= (and b!181209 c!32458) b!181205))

(assert (= (and b!181209 (not c!32458)) b!181207))

(assert (= (or b!181205 b!181207) bm!18311))

(assert (=> b!181208 m!208989))

(assert (=> b!181208 m!208989))

(declare-fun m!209219 () Bool)

(assert (=> b!181208 m!209219))

(assert (=> b!181209 m!208989))

(assert (=> b!181209 m!208989))

(assert (=> b!181209 m!208991))

(assert (=> bm!18311 m!208989))

(declare-fun m!209221 () Bool)

(assert (=> bm!18311 m!209221))

(assert (=> b!181206 m!208989))

(assert (=> b!181206 m!208989))

(assert (=> b!181206 m!208991))

(assert (=> b!181093 d!54315))

(declare-fun d!54317 () Bool)

(declare-fun e!119368 () Bool)

(assert (=> d!54317 e!119368))

(declare-fun res!85819 () Bool)

(assert (=> d!54317 (=> res!85819 e!119368)))

(declare-fun lt!89657 () Bool)

(assert (=> d!54317 (= res!85819 (not lt!89657))))

(declare-fun lt!89658 () Bool)

(assert (=> d!54317 (= lt!89657 lt!89658)))

(declare-fun lt!89660 () Unit!5501)

(declare-fun e!119367 () Unit!5501)

(assert (=> d!54317 (= lt!89660 e!119367)))

(declare-fun c!32459 () Bool)

(assert (=> d!54317 (= c!32459 lt!89658)))

(assert (=> d!54317 (= lt!89658 (containsKey!211 (toList!1169 lt!89575) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54317 (= (contains!1241 lt!89575 #b1000000000000000000000000000000000000000000000000000000000000000) lt!89657)))

(declare-fun b!181210 () Bool)

(declare-fun lt!89659 () Unit!5501)

(assert (=> b!181210 (= e!119367 lt!89659)))

(assert (=> b!181210 (= lt!89659 (lemmaContainsKeyImpliesGetValueByKeyDefined!160 (toList!1169 lt!89575) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181210 (isDefined!161 (getValueByKey!207 (toList!1169 lt!89575) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181211 () Bool)

(declare-fun Unit!5507 () Unit!5501)

(assert (=> b!181211 (= e!119367 Unit!5507)))

(declare-fun b!181212 () Bool)

(assert (=> b!181212 (= e!119368 (isDefined!161 (getValueByKey!207 (toList!1169 lt!89575) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54317 c!32459) b!181210))

(assert (= (and d!54317 (not c!32459)) b!181211))

(assert (= (and d!54317 (not res!85819)) b!181212))

(declare-fun m!209223 () Bool)

(assert (=> d!54317 m!209223))

(declare-fun m!209225 () Bool)

(assert (=> b!181210 m!209225))

(declare-fun m!209227 () Bool)

(assert (=> b!181210 m!209227))

(assert (=> b!181210 m!209227))

(declare-fun m!209229 () Bool)

(assert (=> b!181210 m!209229))

(assert (=> b!181212 m!209227))

(assert (=> b!181212 m!209227))

(assert (=> b!181212 m!209229))

(assert (=> bm!18304 d!54317))

(assert (=> d!54257 d!54267))

(declare-fun b!181225 () Bool)

(declare-fun e!119376 () SeekEntryResult!608)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!181225 (= e!119376 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19786 lt!89590) #b00000000000000000000000000000001) (nextIndex!0 (index!4604 lt!89590) (x!19786 lt!89590) (mask!8725 thiss!1248)) (index!4604 lt!89590) key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(declare-fun b!181226 () Bool)

(declare-fun e!119375 () SeekEntryResult!608)

(declare-fun e!119377 () SeekEntryResult!608)

(assert (=> b!181226 (= e!119375 e!119377)))

(declare-fun c!32467 () Bool)

(declare-fun lt!89665 () (_ BitVec 64))

(assert (=> b!181226 (= c!32467 (= lt!89665 key!828))))

(declare-fun d!54319 () Bool)

(declare-fun lt!89666 () SeekEntryResult!608)

(assert (=> d!54319 (and (or ((_ is Undefined!608) lt!89666) (not ((_ is Found!608) lt!89666)) (and (bvsge (index!4603 lt!89666) #b00000000000000000000000000000000) (bvslt (index!4603 lt!89666) (size!3937 (_keys!5610 thiss!1248))))) (or ((_ is Undefined!608) lt!89666) ((_ is Found!608) lt!89666) (not ((_ is MissingVacant!608) lt!89666)) (not (= (index!4605 lt!89666) (index!4604 lt!89590))) (and (bvsge (index!4605 lt!89666) #b00000000000000000000000000000000) (bvslt (index!4605 lt!89666) (size!3937 (_keys!5610 thiss!1248))))) (or ((_ is Undefined!608) lt!89666) (ite ((_ is Found!608) lt!89666) (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4603 lt!89666)) key!828) (and ((_ is MissingVacant!608) lt!89666) (= (index!4605 lt!89666) (index!4604 lt!89590)) (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4605 lt!89666)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!54319 (= lt!89666 e!119375)))

(declare-fun c!32468 () Bool)

(assert (=> d!54319 (= c!32468 (bvsge (x!19786 lt!89590) #b01111111111111111111111111111110))))

(assert (=> d!54319 (= lt!89665 (select (arr!3628 (_keys!5610 thiss!1248)) (index!4604 lt!89590)))))

(assert (=> d!54319 (validMask!0 (mask!8725 thiss!1248))))

(assert (=> d!54319 (= (seekKeyOrZeroReturnVacant!0 (x!19786 lt!89590) (index!4604 lt!89590) (index!4604 lt!89590) key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)) lt!89666)))

(declare-fun b!181227 () Bool)

(assert (=> b!181227 (= e!119375 Undefined!608)))

(declare-fun b!181228 () Bool)

(assert (=> b!181228 (= e!119376 (MissingVacant!608 (index!4604 lt!89590)))))

(declare-fun b!181229 () Bool)

(declare-fun c!32466 () Bool)

(assert (=> b!181229 (= c!32466 (= lt!89665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181229 (= e!119377 e!119376)))

(declare-fun b!181230 () Bool)

(assert (=> b!181230 (= e!119377 (Found!608 (index!4604 lt!89590)))))

(assert (= (and d!54319 c!32468) b!181227))

(assert (= (and d!54319 (not c!32468)) b!181226))

(assert (= (and b!181226 c!32467) b!181230))

(assert (= (and b!181226 (not c!32467)) b!181229))

(assert (= (and b!181229 c!32466) b!181228))

(assert (= (and b!181229 (not c!32466)) b!181225))

(declare-fun m!209231 () Bool)

(assert (=> b!181225 m!209231))

(assert (=> b!181225 m!209231))

(declare-fun m!209233 () Bool)

(assert (=> b!181225 m!209233))

(declare-fun m!209235 () Bool)

(assert (=> d!54319 m!209235))

(declare-fun m!209237 () Bool)

(assert (=> d!54319 m!209237))

(assert (=> d!54319 m!209055))

(assert (=> d!54319 m!208949))

(assert (=> b!181111 d!54319))

(declare-fun b!181239 () Bool)

(declare-fun e!119385 () Bool)

(declare-fun call!18317 () Bool)

(assert (=> b!181239 (= e!119385 call!18317)))

(declare-fun b!181240 () Bool)

(declare-fun e!119384 () Bool)

(assert (=> b!181240 (= e!119384 e!119385)))

(declare-fun lt!89674 () (_ BitVec 64))

(assert (=> b!181240 (= lt!89674 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89675 () Unit!5501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7666 (_ BitVec 64) (_ BitVec 32)) Unit!5501)

(assert (=> b!181240 (= lt!89675 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5610 thiss!1248) lt!89674 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!181240 (arrayContainsKey!0 (_keys!5610 thiss!1248) lt!89674 #b00000000000000000000000000000000)))

(declare-fun lt!89673 () Unit!5501)

(assert (=> b!181240 (= lt!89673 lt!89675)))

(declare-fun res!85825 () Bool)

(assert (=> b!181240 (= res!85825 (= (seekEntryOrOpen!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000) (_keys!5610 thiss!1248) (mask!8725 thiss!1248)) (Found!608 #b00000000000000000000000000000000)))))

(assert (=> b!181240 (=> (not res!85825) (not e!119385))))

(declare-fun b!181241 () Bool)

(assert (=> b!181241 (= e!119384 call!18317)))

(declare-fun b!181242 () Bool)

(declare-fun e!119386 () Bool)

(assert (=> b!181242 (= e!119386 e!119384)))

(declare-fun c!32471 () Bool)

(assert (=> b!181242 (= c!32471 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18314 () Bool)

(assert (=> bm!18314 (= call!18317 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(declare-fun d!54321 () Bool)

(declare-fun res!85824 () Bool)

(assert (=> d!54321 (=> res!85824 e!119386)))

(assert (=> d!54321 (= res!85824 (bvsge #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> d!54321 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)) e!119386)))

(assert (= (and d!54321 (not res!85824)) b!181242))

(assert (= (and b!181242 c!32471) b!181240))

(assert (= (and b!181242 (not c!32471)) b!181241))

(assert (= (and b!181240 res!85825) b!181239))

(assert (= (or b!181239 b!181241) bm!18314))

(assert (=> b!181240 m!208989))

(declare-fun m!209239 () Bool)

(assert (=> b!181240 m!209239))

(declare-fun m!209241 () Bool)

(assert (=> b!181240 m!209241))

(assert (=> b!181240 m!208989))

(declare-fun m!209243 () Bool)

(assert (=> b!181240 m!209243))

(assert (=> b!181242 m!208989))

(assert (=> b!181242 m!208989))

(assert (=> b!181242 m!208991))

(declare-fun m!209245 () Bool)

(assert (=> bm!18314 m!209245))

(assert (=> b!181092 d!54321))

(declare-fun d!54323 () Bool)

(declare-fun e!119388 () Bool)

(assert (=> d!54323 e!119388))

(declare-fun res!85826 () Bool)

(assert (=> d!54323 (=> res!85826 e!119388)))

(declare-fun lt!89676 () Bool)

(assert (=> d!54323 (= res!85826 (not lt!89676))))

(declare-fun lt!89677 () Bool)

(assert (=> d!54323 (= lt!89676 lt!89677)))

(declare-fun lt!89679 () Unit!5501)

(declare-fun e!119387 () Unit!5501)

(assert (=> d!54323 (= lt!89679 e!119387)))

(declare-fun c!32472 () Bool)

(assert (=> d!54323 (= c!32472 lt!89677)))

(assert (=> d!54323 (= lt!89677 (containsKey!211 (toList!1169 lt!89575) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54323 (= (contains!1241 lt!89575 #b0000000000000000000000000000000000000000000000000000000000000000) lt!89676)))

(declare-fun b!181243 () Bool)

(declare-fun lt!89678 () Unit!5501)

(assert (=> b!181243 (= e!119387 lt!89678)))

(assert (=> b!181243 (= lt!89678 (lemmaContainsKeyImpliesGetValueByKeyDefined!160 (toList!1169 lt!89575) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181243 (isDefined!161 (getValueByKey!207 (toList!1169 lt!89575) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181244 () Bool)

(declare-fun Unit!5508 () Unit!5501)

(assert (=> b!181244 (= e!119387 Unit!5508)))

(declare-fun b!181245 () Bool)

(assert (=> b!181245 (= e!119388 (isDefined!161 (getValueByKey!207 (toList!1169 lt!89575) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54323 c!32472) b!181243))

(assert (= (and d!54323 (not c!32472)) b!181244))

(assert (= (and d!54323 (not res!85826)) b!181245))

(declare-fun m!209247 () Bool)

(assert (=> d!54323 m!209247))

(declare-fun m!209249 () Bool)

(assert (=> b!181243 m!209249))

(assert (=> b!181243 m!209103))

(assert (=> b!181243 m!209103))

(declare-fun m!209251 () Bool)

(assert (=> b!181243 m!209251))

(assert (=> b!181245 m!209103))

(assert (=> b!181245 m!209103))

(assert (=> b!181245 m!209251))

(assert (=> bm!18301 d!54323))

(declare-fun d!54325 () Bool)

(declare-fun isEmpty!463 (Option!213) Bool)

(assert (=> d!54325 (= (isDefined!161 (getValueByKey!207 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828)) (not (isEmpty!463 (getValueByKey!207 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))))

(declare-fun bs!7404 () Bool)

(assert (= bs!7404 d!54325))

(assert (=> bs!7404 m!208985))

(declare-fun m!209253 () Bool)

(assert (=> bs!7404 m!209253))

(assert (=> b!181019 d!54325))

(declare-fun d!54327 () Bool)

(declare-fun c!32477 () Bool)

(assert (=> d!54327 (= c!32477 (and ((_ is Cons!2319) (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))) (= (_1!1698 (h!2945 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))))) key!828)))))

(declare-fun e!119393 () Option!213)

(assert (=> d!54327 (= (getValueByKey!207 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828) e!119393)))

(declare-fun b!181257 () Bool)

(declare-fun e!119394 () Option!213)

(assert (=> b!181257 (= e!119394 None!211)))

(declare-fun b!181254 () Bool)

(assert (=> b!181254 (= e!119393 (Some!212 (_2!1698 (h!2945 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))))))

(declare-fun b!181256 () Bool)

(assert (=> b!181256 (= e!119394 (getValueByKey!207 (t!7183 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))) key!828))))

(declare-fun b!181255 () Bool)

(assert (=> b!181255 (= e!119393 e!119394)))

(declare-fun c!32478 () Bool)

(assert (=> b!181255 (= c!32478 (and ((_ is Cons!2319) (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))) (not (= (_1!1698 (h!2945 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))))) key!828))))))

(assert (= (and d!54327 c!32477) b!181254))

(assert (= (and d!54327 (not c!32477)) b!181255))

(assert (= (and b!181255 c!32478) b!181256))

(assert (= (and b!181255 (not c!32478)) b!181257))

(declare-fun m!209255 () Bool)

(assert (=> b!181256 m!209255))

(assert (=> b!181019 d!54327))

(declare-fun d!54329 () Bool)

(declare-fun e!119407 () Bool)

(assert (=> d!54329 e!119407))

(declare-fun c!32487 () Bool)

(declare-fun lt!89685 () SeekEntryResult!608)

(assert (=> d!54329 (= c!32487 (and ((_ is Intermediate!608) lt!89685) (undefined!1420 lt!89685)))))

(declare-fun e!119408 () SeekEntryResult!608)

(assert (=> d!54329 (= lt!89685 e!119408)))

(declare-fun c!32486 () Bool)

(assert (=> d!54329 (= c!32486 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!89684 () (_ BitVec 64))

(assert (=> d!54329 (= lt!89684 (select (arr!3628 (_keys!5610 thiss!1248)) (toIndex!0 key!828 (mask!8725 thiss!1248))))))

(assert (=> d!54329 (validMask!0 (mask!8725 thiss!1248))))

(assert (=> d!54329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8725 thiss!1248)) key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)) lt!89685)))

(declare-fun b!181276 () Bool)

(assert (=> b!181276 (and (bvsge (index!4604 lt!89685) #b00000000000000000000000000000000) (bvslt (index!4604 lt!89685) (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun res!85835 () Bool)

(assert (=> b!181276 (= res!85835 (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4604 lt!89685)) key!828))))

(declare-fun e!119405 () Bool)

(assert (=> b!181276 (=> res!85835 e!119405)))

(declare-fun e!119409 () Bool)

(assert (=> b!181276 (= e!119409 e!119405)))

(declare-fun b!181277 () Bool)

(assert (=> b!181277 (= e!119407 e!119409)))

(declare-fun res!85833 () Bool)

(assert (=> b!181277 (= res!85833 (and ((_ is Intermediate!608) lt!89685) (not (undefined!1420 lt!89685)) (bvslt (x!19786 lt!89685) #b01111111111111111111111111111110) (bvsge (x!19786 lt!89685) #b00000000000000000000000000000000) (bvsge (x!19786 lt!89685) #b00000000000000000000000000000000)))))

(assert (=> b!181277 (=> (not res!85833) (not e!119409))))

(declare-fun b!181278 () Bool)

(declare-fun e!119406 () SeekEntryResult!608)

(assert (=> b!181278 (= e!119406 (Intermediate!608 false (toIndex!0 key!828 (mask!8725 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!181279 () Bool)

(assert (=> b!181279 (and (bvsge (index!4604 lt!89685) #b00000000000000000000000000000000) (bvslt (index!4604 lt!89685) (size!3937 (_keys!5610 thiss!1248))))))

(declare-fun res!85834 () Bool)

(assert (=> b!181279 (= res!85834 (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4604 lt!89685)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181279 (=> res!85834 e!119405)))

(declare-fun b!181280 () Bool)

(assert (=> b!181280 (= e!119407 (bvsge (x!19786 lt!89685) #b01111111111111111111111111111110))))

(declare-fun b!181281 () Bool)

(assert (=> b!181281 (and (bvsge (index!4604 lt!89685) #b00000000000000000000000000000000) (bvslt (index!4604 lt!89685) (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> b!181281 (= e!119405 (= (select (arr!3628 (_keys!5610 thiss!1248)) (index!4604 lt!89685)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181282 () Bool)

(assert (=> b!181282 (= e!119406 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8725 thiss!1248)) #b00000000000000000000000000000000 (mask!8725 thiss!1248)) key!828 (_keys!5610 thiss!1248) (mask!8725 thiss!1248)))))

(declare-fun b!181283 () Bool)

(assert (=> b!181283 (= e!119408 (Intermediate!608 true (toIndex!0 key!828 (mask!8725 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!181284 () Bool)

(assert (=> b!181284 (= e!119408 e!119406)))

(declare-fun c!32485 () Bool)

(assert (=> b!181284 (= c!32485 (or (= lt!89684 key!828) (= (bvadd lt!89684 lt!89684) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54329 c!32486) b!181283))

(assert (= (and d!54329 (not c!32486)) b!181284))

(assert (= (and b!181284 c!32485) b!181278))

(assert (= (and b!181284 (not c!32485)) b!181282))

(assert (= (and d!54329 c!32487) b!181280))

(assert (= (and d!54329 (not c!32487)) b!181277))

(assert (= (and b!181277 res!85833) b!181276))

(assert (= (and b!181276 (not res!85835)) b!181279))

(assert (= (and b!181279 (not res!85834)) b!181281))

(declare-fun m!209257 () Bool)

(assert (=> b!181281 m!209257))

(assert (=> b!181282 m!209057))

(declare-fun m!209259 () Bool)

(assert (=> b!181282 m!209259))

(assert (=> b!181282 m!209259))

(declare-fun m!209261 () Bool)

(assert (=> b!181282 m!209261))

(assert (=> d!54329 m!209057))

(declare-fun m!209263 () Bool)

(assert (=> d!54329 m!209263))

(assert (=> d!54329 m!208949))

(assert (=> b!181276 m!209257))

(assert (=> b!181279 m!209257))

(assert (=> d!54265 d!54329))

(declare-fun d!54331 () Bool)

(declare-fun lt!89691 () (_ BitVec 32))

(declare-fun lt!89690 () (_ BitVec 32))

(assert (=> d!54331 (= lt!89691 (bvmul (bvxor lt!89690 (bvlshr lt!89690 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54331 (= lt!89690 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54331 (and (bvsge (mask!8725 thiss!1248) #b00000000000000000000000000000000) (let ((res!85836 (let ((h!2948 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19805 (bvmul (bvxor h!2948 (bvlshr h!2948 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19805 (bvlshr x!19805 #b00000000000000000000000000001101)) (mask!8725 thiss!1248)))))) (and (bvslt res!85836 (bvadd (mask!8725 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!85836 #b00000000000000000000000000000000))))))

(assert (=> d!54331 (= (toIndex!0 key!828 (mask!8725 thiss!1248)) (bvand (bvxor lt!89691 (bvlshr lt!89691 #b00000000000000000000000000001101)) (mask!8725 thiss!1248)))))

(assert (=> d!54265 d!54331))

(assert (=> d!54265 d!54267))

(declare-fun d!54333 () Bool)

(assert (=> d!54333 (isDefined!161 (getValueByKey!207 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))

(declare-fun lt!89694 () Unit!5501)

(declare-fun choose!971 (List!2323 (_ BitVec 64)) Unit!5501)

(assert (=> d!54333 (= lt!89694 (choose!971 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))

(declare-fun e!119412 () Bool)

(assert (=> d!54333 e!119412))

(declare-fun res!85839 () Bool)

(assert (=> d!54333 (=> (not res!85839) (not e!119412))))

(declare-fun isStrictlySorted!337 (List!2323) Bool)

(assert (=> d!54333 (= res!85839 (isStrictlySorted!337 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248)))))))

(assert (=> d!54333 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!160 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828) lt!89694)))

(declare-fun b!181287 () Bool)

(assert (=> b!181287 (= e!119412 (containsKey!211 (toList!1169 (getCurrentListMap!812 (_keys!5610 thiss!1248) (_values!3695 thiss!1248) (mask!8725 thiss!1248) (extraKeys!3449 thiss!1248) (zeroValue!3553 thiss!1248) (minValue!3553 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3712 thiss!1248))) key!828))))

(assert (= (and d!54333 res!85839) b!181287))

(assert (=> d!54333 m!208985))

(assert (=> d!54333 m!208985))

(assert (=> d!54333 m!208987))

(declare-fun m!209265 () Bool)

(assert (=> d!54333 m!209265))

(declare-fun m!209267 () Bool)

(assert (=> d!54333 m!209267))

(assert (=> b!181287 m!208981))

(assert (=> b!181017 d!54333))

(assert (=> b!181017 d!54325))

(assert (=> b!181017 d!54327))

(declare-fun b!181297 () Bool)

(declare-fun res!85849 () Bool)

(declare-fun e!119415 () Bool)

(assert (=> b!181297 (=> (not res!85849) (not e!119415))))

(declare-fun size!3941 (LongMapFixedSize!2466) (_ BitVec 32))

(assert (=> b!181297 (= res!85849 (bvsge (size!3941 thiss!1248) (_size!1282 thiss!1248)))))

(declare-fun b!181296 () Bool)

(declare-fun res!85851 () Bool)

(assert (=> b!181296 (=> (not res!85851) (not e!119415))))

(assert (=> b!181296 (= res!85851 (and (= (size!3938 (_values!3695 thiss!1248)) (bvadd (mask!8725 thiss!1248) #b00000000000000000000000000000001)) (= (size!3937 (_keys!5610 thiss!1248)) (size!3938 (_values!3695 thiss!1248))) (bvsge (_size!1282 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1282 thiss!1248) (bvadd (mask!8725 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!181299 () Bool)

(assert (=> b!181299 (= e!119415 (and (bvsge (extraKeys!3449 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3449 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1282 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!181298 () Bool)

(declare-fun res!85848 () Bool)

(assert (=> b!181298 (=> (not res!85848) (not e!119415))))

(assert (=> b!181298 (= res!85848 (= (size!3941 thiss!1248) (bvadd (_size!1282 thiss!1248) (bvsdiv (bvadd (extraKeys!3449 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!54335 () Bool)

(declare-fun res!85850 () Bool)

(assert (=> d!54335 (=> (not res!85850) (not e!119415))))

(assert (=> d!54335 (= res!85850 (validMask!0 (mask!8725 thiss!1248)))))

(assert (=> d!54335 (= (simpleValid!166 thiss!1248) e!119415)))

(assert (= (and d!54335 res!85850) b!181296))

(assert (= (and b!181296 res!85851) b!181297))

(assert (= (and b!181297 res!85849) b!181298))

(assert (= (and b!181298 res!85848) b!181299))

(declare-fun m!209269 () Bool)

(assert (=> b!181297 m!209269))

(assert (=> b!181298 m!209269))

(assert (=> d!54335 m!208949))

(assert (=> d!54263 d!54335))

(declare-fun b!181308 () Bool)

(declare-fun e!119420 () (_ BitVec 32))

(assert (=> b!181308 (= e!119420 #b00000000000000000000000000000000)))

(declare-fun b!181309 () Bool)

(declare-fun e!119421 () (_ BitVec 32))

(declare-fun call!18320 () (_ BitVec 32))

(assert (=> b!181309 (= e!119421 call!18320)))

(declare-fun d!54337 () Bool)

(declare-fun lt!89697 () (_ BitVec 32))

(assert (=> d!54337 (and (bvsge lt!89697 #b00000000000000000000000000000000) (bvsle lt!89697 (bvsub (size!3937 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54337 (= lt!89697 e!119420)))

(declare-fun c!32492 () Bool)

(assert (=> d!54337 (= c!32492 (bvsge #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> d!54337 (and (bvsle #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3937 (_keys!5610 thiss!1248)) (size!3937 (_keys!5610 thiss!1248))))))

(assert (=> d!54337 (= (arrayCountValidKeys!0 (_keys!5610 thiss!1248) #b00000000000000000000000000000000 (size!3937 (_keys!5610 thiss!1248))) lt!89697)))

(declare-fun b!181310 () Bool)

(assert (=> b!181310 (= e!119421 (bvadd #b00000000000000000000000000000001 call!18320))))

(declare-fun b!181311 () Bool)

(assert (=> b!181311 (= e!119420 e!119421)))

(declare-fun c!32493 () Bool)

(assert (=> b!181311 (= c!32493 (validKeyInArray!0 (select (arr!3628 (_keys!5610 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18317 () Bool)

(assert (=> bm!18317 (= call!18320 (arrayCountValidKeys!0 (_keys!5610 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3937 (_keys!5610 thiss!1248))))))

(assert (= (and d!54337 c!32492) b!181308))

(assert (= (and d!54337 (not c!32492)) b!181311))

(assert (= (and b!181311 c!32493) b!181310))

(assert (= (and b!181311 (not c!32493)) b!181309))

(assert (= (or b!181310 b!181309) bm!18317))

(assert (=> b!181311 m!208989))

(assert (=> b!181311 m!208989))

(assert (=> b!181311 m!208991))

(declare-fun m!209271 () Bool)

(assert (=> bm!18317 m!209271))

(assert (=> b!181091 d!54337))

(declare-fun d!54339 () Bool)

(declare-fun e!119422 () Bool)

(assert (=> d!54339 e!119422))

(declare-fun res!85853 () Bool)

(assert (=> d!54339 (=> (not res!85853) (not e!119422))))

(declare-fun lt!89701 () ListLongMap!2307)

(assert (=> d!54339 (= res!85853 (contains!1241 lt!89701 (_1!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))

(declare-fun lt!89698 () List!2323)

(assert (=> d!54339 (= lt!89701 (ListLongMap!2308 lt!89698))))

(declare-fun lt!89699 () Unit!5501)

(declare-fun lt!89700 () Unit!5501)

(assert (=> d!54339 (= lt!89699 lt!89700)))

(assert (=> d!54339 (= (getValueByKey!207 lt!89698 (_1!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))

(assert (=> d!54339 (= lt!89700 (lemmaContainsTupThenGetReturnValue!111 lt!89698 (_1!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))

(assert (=> d!54339 (= lt!89698 (insertStrictlySorted!113 (toList!1169 call!18304) (_1!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))) (_2!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))))))

(assert (=> d!54339 (= (+!266 call!18304 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))) lt!89701)))

(declare-fun b!181312 () Bool)

(declare-fun res!85852 () Bool)

(assert (=> b!181312 (=> (not res!85852) (not e!119422))))

(assert (=> b!181312 (= res!85852 (= (getValueByKey!207 (toList!1169 lt!89701) (_1!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248)))) (Some!212 (_2!1698 (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))))

(declare-fun b!181313 () Bool)

(assert (=> b!181313 (= e!119422 (contains!1243 (toList!1169 lt!89701) (tuple2!3377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3553 thiss!1248))))))

(assert (= (and d!54339 res!85853) b!181312))

(assert (= (and b!181312 res!85852) b!181313))

(declare-fun m!209273 () Bool)

(assert (=> d!54339 m!209273))

(declare-fun m!209275 () Bool)

(assert (=> d!54339 m!209275))

(declare-fun m!209277 () Bool)

(assert (=> d!54339 m!209277))

(declare-fun m!209279 () Bool)

(assert (=> d!54339 m!209279))

(declare-fun m!209281 () Bool)

(assert (=> b!181312 m!209281))

(declare-fun m!209283 () Bool)

(assert (=> b!181313 m!209283))

(assert (=> b!181065 d!54339))

(declare-fun d!54341 () Bool)

(assert (=> d!54341 (= (apply!151 lt!89575 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2075 (getValueByKey!207 (toList!1169 lt!89575) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7405 () Bool)

(assert (= bs!7405 d!54341))

(assert (=> bs!7405 m!209227))

(assert (=> bs!7405 m!209227))

(declare-fun m!209285 () Bool)

(assert (=> bs!7405 m!209285))

(assert (=> b!181082 d!54341))

(declare-fun b!181315 () Bool)

(declare-fun e!119423 () Bool)

(assert (=> b!181315 (= e!119423 tp_is_empty!4245)))

(declare-fun b!181314 () Bool)

(declare-fun e!119424 () Bool)

(assert (=> b!181314 (= e!119424 tp_is_empty!4245)))

(declare-fun condMapEmpty!7281 () Bool)

(declare-fun mapDefault!7281 () ValueCell!1779)

(assert (=> mapNonEmpty!7280 (= condMapEmpty!7281 (= mapRest!7280 ((as const (Array (_ BitVec 32) ValueCell!1779)) mapDefault!7281)))))

(declare-fun mapRes!7281 () Bool)

(assert (=> mapNonEmpty!7280 (= tp!16172 (and e!119423 mapRes!7281))))

(declare-fun mapNonEmpty!7281 () Bool)

(declare-fun tp!16173 () Bool)

(assert (=> mapNonEmpty!7281 (= mapRes!7281 (and tp!16173 e!119424))))

(declare-fun mapRest!7281 () (Array (_ BitVec 32) ValueCell!1779))

(declare-fun mapKey!7281 () (_ BitVec 32))

(declare-fun mapValue!7281 () ValueCell!1779)

(assert (=> mapNonEmpty!7281 (= mapRest!7280 (store mapRest!7281 mapKey!7281 mapValue!7281))))

(declare-fun mapIsEmpty!7281 () Bool)

(assert (=> mapIsEmpty!7281 mapRes!7281))

(assert (= (and mapNonEmpty!7280 condMapEmpty!7281) mapIsEmpty!7281))

(assert (= (and mapNonEmpty!7280 (not condMapEmpty!7281)) mapNonEmpty!7281))

(assert (= (and mapNonEmpty!7281 ((_ is ValueCellFull!1779) mapValue!7281)) b!181314))

(assert (= (and mapNonEmpty!7280 ((_ is ValueCellFull!1779) mapDefault!7281)) b!181315))

(declare-fun m!209287 () Bool)

(assert (=> mapNonEmpty!7281 m!209287))

(declare-fun b_lambda!7173 () Bool)

(assert (= b_lambda!7171 (or (and b!180981 b_free!4473) b_lambda!7173)))

(declare-fun b_lambda!7175 () Bool)

(assert (= b_lambda!7169 (or (and b!180981 b_free!4473) b_lambda!7175)))

(check-sat (not b!181298) (not bm!18314) (not b!181175) (not b!181243) (not b!181187) (not b!181152) (not b!181240) (not b!181192) (not mapNonEmpty!7281) (not d!54291) (not b!181125) (not b_lambda!7173) (not d!54329) (not d!54295) (not b!181210) (not d!54333) (not d!54313) (not d!54273) (not b!181170) (not b!181287) (not b!181212) (not b!181181) (not b!181313) (not b!181150) tp_is_empty!4245 (not d!54285) (not b!181151) (not d!54303) (not b!181182) (not d!54325) (not b_lambda!7167) (not d!54341) (not b!181183) (not b!181297) (not d!54335) (not d!54269) (not b!181124) (not d!54307) (not d!54301) (not b!181209) (not b!181225) (not b!181312) (not bm!18317) (not d!54317) (not b!181189) (not b!181155) (not b!181168) (not b!181184) (not d!54323) (not d!54277) (not d!54309) (not b!181256) (not d!54287) (not b!181193) (not b!181242) (not b!181156) (not b!181190) (not d!54305) (not b!181154) (not b!181282) (not b_next!4473) (not b!181185) (not d!54299) (not b!181176) (not d!54279) (not b_lambda!7175) (not b!181311) (not d!54289) (not b!181159) (not bm!18311) (not b!181245) (not d!54293) (not d!54271) (not d!54319) (not b!181153) (not d!54339) b_and!11041 (not b!181208) (not b!181167) (not bm!18308) (not b!181206) (not d!54311) (not d!54297))
(check-sat b_and!11041 (not b_next!4473))
