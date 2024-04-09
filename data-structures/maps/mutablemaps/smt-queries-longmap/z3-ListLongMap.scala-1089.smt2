; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22230 () Bool)

(assert start!22230)

(declare-fun b!233109 () Bool)

(declare-fun b_free!6285 () Bool)

(declare-fun b_next!6285 () Bool)

(assert (=> b!233109 (= b_free!6285 (not b_next!6285))))

(declare-fun tp!21996 () Bool)

(declare-fun b_and!13201 () Bool)

(assert (=> b!233109 (= tp!21996 b_and!13201)))

(declare-fun b!233107 () Bool)

(declare-fun res!114435 () Bool)

(declare-fun e!151436 () Bool)

(assert (=> b!233107 (=> (not res!114435) (not e!151436))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!233107 (= res!114435 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10390 () Bool)

(declare-fun mapRes!10390 () Bool)

(declare-fun tp!21997 () Bool)

(declare-fun e!151438 () Bool)

(assert (=> mapNonEmpty!10390 (= mapRes!10390 (and tp!21997 e!151438))))

(declare-datatypes ((V!7843 0))(
  ( (V!7844 (val!3118 Int)) )
))
(declare-datatypes ((ValueCell!2730 0))(
  ( (ValueCellFull!2730 (v!5134 V!7843)) (EmptyCell!2730) )
))
(declare-fun mapRest!10390 () (Array (_ BitVec 32) ValueCell!2730))

(declare-fun mapKey!10390 () (_ BitVec 32))

(declare-fun mapValue!10390 () ValueCell!2730)

(declare-datatypes ((array!11536 0))(
  ( (array!11537 (arr!5487 (Array (_ BitVec 32) ValueCell!2730)) (size!5820 (_ BitVec 32))) )
))
(declare-datatypes ((array!11538 0))(
  ( (array!11539 (arr!5488 (Array (_ BitVec 32) (_ BitVec 64))) (size!5821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3360 0))(
  ( (LongMapFixedSize!3361 (defaultEntry!4339 Int) (mask!10261 (_ BitVec 32)) (extraKeys!4076 (_ BitVec 32)) (zeroValue!4180 V!7843) (minValue!4180 V!7843) (_size!1729 (_ BitVec 32)) (_keys!6393 array!11538) (_values!4322 array!11536) (_vacant!1729 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3360)

(assert (=> mapNonEmpty!10390 (= (arr!5487 (_values!4322 thiss!1504)) (store mapRest!10390 mapKey!10390 mapValue!10390))))

(declare-fun b!233108 () Bool)

(declare-fun tp_is_empty!6147 () Bool)

(assert (=> b!233108 (= e!151438 tp_is_empty!6147)))

(declare-fun e!151441 () Bool)

(declare-fun e!151435 () Bool)

(declare-fun array_inv!3605 (array!11538) Bool)

(declare-fun array_inv!3606 (array!11536) Bool)

(assert (=> b!233109 (= e!151435 (and tp!21996 tp_is_empty!6147 (array_inv!3605 (_keys!6393 thiss!1504)) (array_inv!3606 (_values!4322 thiss!1504)) e!151441))))

(declare-fun b!233110 () Bool)

(declare-fun e!151439 () Bool)

(assert (=> b!233110 (= e!151441 (and e!151439 mapRes!10390))))

(declare-fun condMapEmpty!10390 () Bool)

(declare-fun mapDefault!10390 () ValueCell!2730)

(assert (=> b!233110 (= condMapEmpty!10390 (= (arr!5487 (_values!4322 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2730)) mapDefault!10390)))))

(declare-fun mapIsEmpty!10390 () Bool)

(assert (=> mapIsEmpty!10390 mapRes!10390))

(declare-fun b!233111 () Bool)

(assert (=> b!233111 (= e!151439 tp_is_empty!6147)))

(declare-fun b!233112 () Bool)

(declare-fun e!151437 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!233112 (= e!151437 (not (validMask!0 (mask!10261 thiss!1504))))))

(declare-fun res!114434 () Bool)

(assert (=> start!22230 (=> (not res!114434) (not e!151436))))

(declare-fun valid!1319 (LongMapFixedSize!3360) Bool)

(assert (=> start!22230 (= res!114434 (valid!1319 thiss!1504))))

(assert (=> start!22230 e!151436))

(assert (=> start!22230 e!151435))

(assert (=> start!22230 true))

(declare-fun b!233113 () Bool)

(declare-fun res!114433 () Bool)

(assert (=> b!233113 (=> (not res!114433) (not e!151437))))

(declare-datatypes ((tuple2!4594 0))(
  ( (tuple2!4595 (_1!2307 (_ BitVec 64)) (_2!2307 V!7843)) )
))
(declare-datatypes ((List!3532 0))(
  ( (Nil!3529) (Cons!3528 (h!4176 tuple2!4594) (t!8499 List!3532)) )
))
(declare-datatypes ((ListLongMap!3521 0))(
  ( (ListLongMap!3522 (toList!1776 List!3532)) )
))
(declare-fun contains!1638 (ListLongMap!3521 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1299 (array!11538 array!11536 (_ BitVec 32) (_ BitVec 32) V!7843 V!7843 (_ BitVec 32) Int) ListLongMap!3521)

(assert (=> b!233113 (= res!114433 (contains!1638 (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)) key!932))))

(declare-fun b!233114 () Bool)

(assert (=> b!233114 (= e!151436 e!151437)))

(declare-fun res!114436 () Bool)

(assert (=> b!233114 (=> (not res!114436) (not e!151437))))

(declare-datatypes ((SeekEntryResult!984 0))(
  ( (MissingZero!984 (index!6106 (_ BitVec 32))) (Found!984 (index!6107 (_ BitVec 32))) (Intermediate!984 (undefined!1796 Bool) (index!6108 (_ BitVec 32)) (x!23612 (_ BitVec 32))) (Undefined!984) (MissingVacant!984 (index!6109 (_ BitVec 32))) )
))
(declare-fun lt!117933 () SeekEntryResult!984)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!233114 (= res!114436 (or (= lt!117933 (MissingZero!984 index!297)) (= lt!117933 (MissingVacant!984 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11538 (_ BitVec 32)) SeekEntryResult!984)

(assert (=> b!233114 (= lt!117933 (seekEntryOrOpen!0 key!932 (_keys!6393 thiss!1504) (mask!10261 thiss!1504)))))

(assert (= (and start!22230 res!114434) b!233107))

(assert (= (and b!233107 res!114435) b!233114))

(assert (= (and b!233114 res!114436) b!233113))

(assert (= (and b!233113 res!114433) b!233112))

(assert (= (and b!233110 condMapEmpty!10390) mapIsEmpty!10390))

(assert (= (and b!233110 (not condMapEmpty!10390)) mapNonEmpty!10390))

(get-info :version)

(assert (= (and mapNonEmpty!10390 ((_ is ValueCellFull!2730) mapValue!10390)) b!233108))

(assert (= (and b!233110 ((_ is ValueCellFull!2730) mapDefault!10390)) b!233111))

(assert (= b!233109 b!233110))

(assert (= start!22230 b!233109))

(declare-fun m!254579 () Bool)

(assert (=> b!233113 m!254579))

(assert (=> b!233113 m!254579))

(declare-fun m!254581 () Bool)

(assert (=> b!233113 m!254581))

(declare-fun m!254583 () Bool)

(assert (=> start!22230 m!254583))

(declare-fun m!254585 () Bool)

(assert (=> b!233114 m!254585))

(declare-fun m!254587 () Bool)

(assert (=> b!233112 m!254587))

(declare-fun m!254589 () Bool)

(assert (=> b!233109 m!254589))

(declare-fun m!254591 () Bool)

(assert (=> b!233109 m!254591))

(declare-fun m!254593 () Bool)

(assert (=> mapNonEmpty!10390 m!254593))

(check-sat (not b_next!6285) b_and!13201 (not b!233114) (not b!233109) tp_is_empty!6147 (not b!233113) (not b!233112) (not start!22230) (not mapNonEmpty!10390))
(check-sat b_and!13201 (not b_next!6285))
(get-model)

(declare-fun d!58779 () Bool)

(assert (=> d!58779 (= (validMask!0 (mask!10261 thiss!1504)) (and (or (= (mask!10261 thiss!1504) #b00000000000000000000000000000111) (= (mask!10261 thiss!1504) #b00000000000000000000000000001111) (= (mask!10261 thiss!1504) #b00000000000000000000000000011111) (= (mask!10261 thiss!1504) #b00000000000000000000000000111111) (= (mask!10261 thiss!1504) #b00000000000000000000000001111111) (= (mask!10261 thiss!1504) #b00000000000000000000000011111111) (= (mask!10261 thiss!1504) #b00000000000000000000000111111111) (= (mask!10261 thiss!1504) #b00000000000000000000001111111111) (= (mask!10261 thiss!1504) #b00000000000000000000011111111111) (= (mask!10261 thiss!1504) #b00000000000000000000111111111111) (= (mask!10261 thiss!1504) #b00000000000000000001111111111111) (= (mask!10261 thiss!1504) #b00000000000000000011111111111111) (= (mask!10261 thiss!1504) #b00000000000000000111111111111111) (= (mask!10261 thiss!1504) #b00000000000000001111111111111111) (= (mask!10261 thiss!1504) #b00000000000000011111111111111111) (= (mask!10261 thiss!1504) #b00000000000000111111111111111111) (= (mask!10261 thiss!1504) #b00000000000001111111111111111111) (= (mask!10261 thiss!1504) #b00000000000011111111111111111111) (= (mask!10261 thiss!1504) #b00000000000111111111111111111111) (= (mask!10261 thiss!1504) #b00000000001111111111111111111111) (= (mask!10261 thiss!1504) #b00000000011111111111111111111111) (= (mask!10261 thiss!1504) #b00000000111111111111111111111111) (= (mask!10261 thiss!1504) #b00000001111111111111111111111111) (= (mask!10261 thiss!1504) #b00000011111111111111111111111111) (= (mask!10261 thiss!1504) #b00000111111111111111111111111111) (= (mask!10261 thiss!1504) #b00001111111111111111111111111111) (= (mask!10261 thiss!1504) #b00011111111111111111111111111111) (= (mask!10261 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10261 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!233112 d!58779))

(declare-fun d!58781 () Bool)

(declare-fun res!114455 () Bool)

(declare-fun e!151465 () Bool)

(assert (=> d!58781 (=> (not res!114455) (not e!151465))))

(declare-fun simpleValid!225 (LongMapFixedSize!3360) Bool)

(assert (=> d!58781 (= res!114455 (simpleValid!225 thiss!1504))))

(assert (=> d!58781 (= (valid!1319 thiss!1504) e!151465)))

(declare-fun b!233145 () Bool)

(declare-fun res!114456 () Bool)

(assert (=> b!233145 (=> (not res!114456) (not e!151465))))

(declare-fun arrayCountValidKeys!0 (array!11538 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!233145 (= res!114456 (= (arrayCountValidKeys!0 (_keys!6393 thiss!1504) #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))) (_size!1729 thiss!1504)))))

(declare-fun b!233146 () Bool)

(declare-fun res!114457 () Bool)

(assert (=> b!233146 (=> (not res!114457) (not e!151465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11538 (_ BitVec 32)) Bool)

(assert (=> b!233146 (= res!114457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6393 thiss!1504) (mask!10261 thiss!1504)))))

(declare-fun b!233147 () Bool)

(declare-datatypes ((List!3534 0))(
  ( (Nil!3531) (Cons!3530 (h!4178 (_ BitVec 64)) (t!8503 List!3534)) )
))
(declare-fun arrayNoDuplicates!0 (array!11538 (_ BitVec 32) List!3534) Bool)

(assert (=> b!233147 (= e!151465 (arrayNoDuplicates!0 (_keys!6393 thiss!1504) #b00000000000000000000000000000000 Nil!3531))))

(assert (= (and d!58781 res!114455) b!233145))

(assert (= (and b!233145 res!114456) b!233146))

(assert (= (and b!233146 res!114457) b!233147))

(declare-fun m!254611 () Bool)

(assert (=> d!58781 m!254611))

(declare-fun m!254613 () Bool)

(assert (=> b!233145 m!254613))

(declare-fun m!254615 () Bool)

(assert (=> b!233146 m!254615))

(declare-fun m!254617 () Bool)

(assert (=> b!233147 m!254617))

(assert (=> start!22230 d!58781))

(declare-fun d!58783 () Bool)

(declare-fun e!151470 () Bool)

(assert (=> d!58783 e!151470))

(declare-fun res!114460 () Bool)

(assert (=> d!58783 (=> res!114460 e!151470)))

(declare-fun lt!117947 () Bool)

(assert (=> d!58783 (= res!114460 (not lt!117947))))

(declare-fun lt!117945 () Bool)

(assert (=> d!58783 (= lt!117947 lt!117945)))

(declare-datatypes ((Unit!7207 0))(
  ( (Unit!7208) )
))
(declare-fun lt!117946 () Unit!7207)

(declare-fun e!151471 () Unit!7207)

(assert (=> d!58783 (= lt!117946 e!151471)))

(declare-fun c!38759 () Bool)

(assert (=> d!58783 (= c!38759 lt!117945)))

(declare-fun containsKey!252 (List!3532 (_ BitVec 64)) Bool)

(assert (=> d!58783 (= lt!117945 (containsKey!252 (toList!1776 (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504))) key!932))))

(assert (=> d!58783 (= (contains!1638 (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)) key!932) lt!117947)))

(declare-fun b!233154 () Bool)

(declare-fun lt!117948 () Unit!7207)

(assert (=> b!233154 (= e!151471 lt!117948)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!201 (List!3532 (_ BitVec 64)) Unit!7207)

(assert (=> b!233154 (= lt!117948 (lemmaContainsKeyImpliesGetValueByKeyDefined!201 (toList!1776 (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504))) key!932))))

(declare-datatypes ((Option!266 0))(
  ( (Some!265 (v!5136 V!7843)) (None!264) )
))
(declare-fun isDefined!202 (Option!266) Bool)

(declare-fun getValueByKey!260 (List!3532 (_ BitVec 64)) Option!266)

(assert (=> b!233154 (isDefined!202 (getValueByKey!260 (toList!1776 (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504))) key!932))))

(declare-fun b!233155 () Bool)

(declare-fun Unit!7209 () Unit!7207)

(assert (=> b!233155 (= e!151471 Unit!7209)))

(declare-fun b!233156 () Bool)

(assert (=> b!233156 (= e!151470 (isDefined!202 (getValueByKey!260 (toList!1776 (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504))) key!932)))))

(assert (= (and d!58783 c!38759) b!233154))

(assert (= (and d!58783 (not c!38759)) b!233155))

(assert (= (and d!58783 (not res!114460)) b!233156))

(declare-fun m!254619 () Bool)

(assert (=> d!58783 m!254619))

(declare-fun m!254621 () Bool)

(assert (=> b!233154 m!254621))

(declare-fun m!254623 () Bool)

(assert (=> b!233154 m!254623))

(assert (=> b!233154 m!254623))

(declare-fun m!254625 () Bool)

(assert (=> b!233154 m!254625))

(assert (=> b!233156 m!254623))

(assert (=> b!233156 m!254623))

(assert (=> b!233156 m!254625))

(assert (=> b!233113 d!58783))

(declare-fun b!233199 () Bool)

(declare-fun e!151506 () ListLongMap!3521)

(declare-fun call!21693 () ListLongMap!3521)

(declare-fun +!625 (ListLongMap!3521 tuple2!4594) ListLongMap!3521)

(assert (=> b!233199 (= e!151506 (+!625 call!21693 (tuple2!4595 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4180 thiss!1504))))))

(declare-fun bm!21688 () Bool)

(declare-fun call!21692 () ListLongMap!3521)

(assert (=> bm!21688 (= call!21692 call!21693)))

(declare-fun b!233200 () Bool)

(declare-fun e!151505 () ListLongMap!3521)

(assert (=> b!233200 (= e!151506 e!151505)))

(declare-fun c!38775 () Bool)

(assert (=> b!233200 (= c!38775 (and (not (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21689 () Bool)

(declare-fun call!21697 () Bool)

(declare-fun lt!117995 () ListLongMap!3521)

(assert (=> bm!21689 (= call!21697 (contains!1638 lt!117995 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233201 () Bool)

(declare-fun e!151504 () Unit!7207)

(declare-fun Unit!7210 () Unit!7207)

(assert (=> b!233201 (= e!151504 Unit!7210)))

(declare-fun b!233202 () Bool)

(declare-fun e!151500 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!233202 (= e!151500 (validKeyInArray!0 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21690 () Bool)

(declare-fun call!21691 () ListLongMap!3521)

(declare-fun call!21695 () ListLongMap!3521)

(assert (=> bm!21690 (= call!21691 call!21695)))

(declare-fun b!233203 () Bool)

(declare-fun e!151498 () ListLongMap!3521)

(assert (=> b!233203 (= e!151498 call!21692)))

(declare-fun b!233204 () Bool)

(declare-fun e!151507 () Bool)

(declare-fun call!21696 () Bool)

(assert (=> b!233204 (= e!151507 (not call!21696))))

(declare-fun b!233205 () Bool)

(assert (=> b!233205 (= e!151505 call!21692)))

(declare-fun b!233206 () Bool)

(declare-fun e!151508 () Bool)

(assert (=> b!233206 (= e!151507 e!151508)))

(declare-fun res!114480 () Bool)

(assert (=> b!233206 (= res!114480 call!21696)))

(assert (=> b!233206 (=> (not res!114480) (not e!151508))))

(declare-fun b!233207 () Bool)

(declare-fun e!151509 () Bool)

(assert (=> b!233207 (= e!151509 (not call!21697))))

(declare-fun b!233208 () Bool)

(declare-fun res!114479 () Bool)

(declare-fun e!151503 () Bool)

(assert (=> b!233208 (=> (not res!114479) (not e!151503))))

(declare-fun e!151499 () Bool)

(assert (=> b!233208 (= res!114479 e!151499)))

(declare-fun res!114485 () Bool)

(assert (=> b!233208 (=> res!114485 e!151499)))

(declare-fun e!151502 () Bool)

(assert (=> b!233208 (= res!114485 (not e!151502))))

(declare-fun res!114482 () Bool)

(assert (=> b!233208 (=> (not res!114482) (not e!151502))))

(assert (=> b!233208 (= res!114482 (bvslt #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))))))

(declare-fun d!58785 () Bool)

(assert (=> d!58785 e!151503))

(declare-fun res!114484 () Bool)

(assert (=> d!58785 (=> (not res!114484) (not e!151503))))

(assert (=> d!58785 (= res!114484 (or (bvsge #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))))))))

(declare-fun lt!118002 () ListLongMap!3521)

(assert (=> d!58785 (= lt!117995 lt!118002)))

(declare-fun lt!118000 () Unit!7207)

(assert (=> d!58785 (= lt!118000 e!151504)))

(declare-fun c!38777 () Bool)

(assert (=> d!58785 (= c!38777 e!151500)))

(declare-fun res!114483 () Bool)

(assert (=> d!58785 (=> (not res!114483) (not e!151500))))

(assert (=> d!58785 (= res!114483 (bvslt #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))))))

(assert (=> d!58785 (= lt!118002 e!151506)))

(declare-fun c!38772 () Bool)

(assert (=> d!58785 (= c!38772 (and (not (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58785 (validMask!0 (mask!10261 thiss!1504))))

(assert (=> d!58785 (= (getCurrentListMap!1299 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)) lt!117995)))

(declare-fun b!233209 () Bool)

(assert (=> b!233209 (= e!151498 call!21691)))

(declare-fun b!233210 () Bool)

(declare-fun apply!203 (ListLongMap!3521 (_ BitVec 64)) V!7843)

(assert (=> b!233210 (= e!151508 (= (apply!203 lt!117995 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4180 thiss!1504)))))

(declare-fun bm!21691 () Bool)

(assert (=> bm!21691 (= call!21696 (contains!1638 lt!117995 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233211 () Bool)

(assert (=> b!233211 (= e!151503 e!151509)))

(declare-fun c!38776 () Bool)

(assert (=> b!233211 (= c!38776 (not (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21692 () Bool)

(declare-fun call!21694 () ListLongMap!3521)

(declare-fun getCurrentListMapNoExtraKeys!522 (array!11538 array!11536 (_ BitVec 32) (_ BitVec 32) V!7843 V!7843 (_ BitVec 32) Int) ListLongMap!3521)

(assert (=> bm!21692 (= call!21694 (getCurrentListMapNoExtraKeys!522 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)))))

(declare-fun b!233212 () Bool)

(declare-fun c!38773 () Bool)

(assert (=> b!233212 (= c!38773 (and (not (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!233212 (= e!151505 e!151498)))

(declare-fun bm!21693 () Bool)

(assert (=> bm!21693 (= call!21693 (+!625 (ite c!38772 call!21694 (ite c!38775 call!21695 call!21691)) (ite (or c!38772 c!38775) (tuple2!4595 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4180 thiss!1504)) (tuple2!4595 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4180 thiss!1504)))))))

(declare-fun b!233213 () Bool)

(declare-fun e!151510 () Bool)

(assert (=> b!233213 (= e!151499 e!151510)))

(declare-fun res!114486 () Bool)

(assert (=> b!233213 (=> (not res!114486) (not e!151510))))

(assert (=> b!233213 (= res!114486 (contains!1638 lt!117995 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233213 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))))))

(declare-fun b!233214 () Bool)

(declare-fun get!2811 (ValueCell!2730 V!7843) V!7843)

(declare-fun dynLambda!541 (Int (_ BitVec 64)) V!7843)

(assert (=> b!233214 (= e!151510 (= (apply!203 lt!117995 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000)) (get!2811 (select (arr!5487 (_values!4322 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!541 (defaultEntry!4339 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!233214 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5820 (_values!4322 thiss!1504))))))

(assert (=> b!233214 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5821 (_keys!6393 thiss!1504))))))

(declare-fun b!233215 () Bool)

(declare-fun lt!118007 () Unit!7207)

(assert (=> b!233215 (= e!151504 lt!118007)))

(declare-fun lt!117997 () ListLongMap!3521)

(assert (=> b!233215 (= lt!117997 (getCurrentListMapNoExtraKeys!522 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)))))

(declare-fun lt!117993 () (_ BitVec 64))

(assert (=> b!233215 (= lt!117993 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!117999 () (_ BitVec 64))

(assert (=> b!233215 (= lt!117999 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118006 () Unit!7207)

(declare-fun addStillContains!179 (ListLongMap!3521 (_ BitVec 64) V!7843 (_ BitVec 64)) Unit!7207)

(assert (=> b!233215 (= lt!118006 (addStillContains!179 lt!117997 lt!117993 (zeroValue!4180 thiss!1504) lt!117999))))

(assert (=> b!233215 (contains!1638 (+!625 lt!117997 (tuple2!4595 lt!117993 (zeroValue!4180 thiss!1504))) lt!117999)))

(declare-fun lt!118003 () Unit!7207)

(assert (=> b!233215 (= lt!118003 lt!118006)))

(declare-fun lt!118004 () ListLongMap!3521)

(assert (=> b!233215 (= lt!118004 (getCurrentListMapNoExtraKeys!522 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)))))

(declare-fun lt!118009 () (_ BitVec 64))

(assert (=> b!233215 (= lt!118009 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!117994 () (_ BitVec 64))

(assert (=> b!233215 (= lt!117994 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118010 () Unit!7207)

(declare-fun addApplyDifferent!179 (ListLongMap!3521 (_ BitVec 64) V!7843 (_ BitVec 64)) Unit!7207)

(assert (=> b!233215 (= lt!118010 (addApplyDifferent!179 lt!118004 lt!118009 (minValue!4180 thiss!1504) lt!117994))))

(assert (=> b!233215 (= (apply!203 (+!625 lt!118004 (tuple2!4595 lt!118009 (minValue!4180 thiss!1504))) lt!117994) (apply!203 lt!118004 lt!117994))))

(declare-fun lt!117996 () Unit!7207)

(assert (=> b!233215 (= lt!117996 lt!118010)))

(declare-fun lt!117998 () ListLongMap!3521)

(assert (=> b!233215 (= lt!117998 (getCurrentListMapNoExtraKeys!522 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)))))

(declare-fun lt!118014 () (_ BitVec 64))

(assert (=> b!233215 (= lt!118014 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118011 () (_ BitVec 64))

(assert (=> b!233215 (= lt!118011 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118013 () Unit!7207)

(assert (=> b!233215 (= lt!118013 (addApplyDifferent!179 lt!117998 lt!118014 (zeroValue!4180 thiss!1504) lt!118011))))

(assert (=> b!233215 (= (apply!203 (+!625 lt!117998 (tuple2!4595 lt!118014 (zeroValue!4180 thiss!1504))) lt!118011) (apply!203 lt!117998 lt!118011))))

(declare-fun lt!118012 () Unit!7207)

(assert (=> b!233215 (= lt!118012 lt!118013)))

(declare-fun lt!118001 () ListLongMap!3521)

(assert (=> b!233215 (= lt!118001 (getCurrentListMapNoExtraKeys!522 (_keys!6393 thiss!1504) (_values!4322 thiss!1504) (mask!10261 thiss!1504) (extraKeys!4076 thiss!1504) (zeroValue!4180 thiss!1504) (minValue!4180 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4339 thiss!1504)))))

(declare-fun lt!118005 () (_ BitVec 64))

(assert (=> b!233215 (= lt!118005 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118008 () (_ BitVec 64))

(assert (=> b!233215 (= lt!118008 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233215 (= lt!118007 (addApplyDifferent!179 lt!118001 lt!118005 (minValue!4180 thiss!1504) lt!118008))))

(assert (=> b!233215 (= (apply!203 (+!625 lt!118001 (tuple2!4595 lt!118005 (minValue!4180 thiss!1504))) lt!118008) (apply!203 lt!118001 lt!118008))))

(declare-fun b!233216 () Bool)

(declare-fun e!151501 () Bool)

(assert (=> b!233216 (= e!151509 e!151501)))

(declare-fun res!114481 () Bool)

(assert (=> b!233216 (= res!114481 call!21697)))

(assert (=> b!233216 (=> (not res!114481) (not e!151501))))

(declare-fun b!233217 () Bool)

(assert (=> b!233217 (= e!151501 (= (apply!203 lt!117995 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4180 thiss!1504)))))

(declare-fun bm!21694 () Bool)

(assert (=> bm!21694 (= call!21695 call!21694)))

(declare-fun b!233218 () Bool)

(declare-fun res!114487 () Bool)

(assert (=> b!233218 (=> (not res!114487) (not e!151503))))

(assert (=> b!233218 (= res!114487 e!151507)))

(declare-fun c!38774 () Bool)

(assert (=> b!233218 (= c!38774 (not (= (bvand (extraKeys!4076 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!233219 () Bool)

(assert (=> b!233219 (= e!151502 (validKeyInArray!0 (select (arr!5488 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58785 c!38772) b!233199))

(assert (= (and d!58785 (not c!38772)) b!233200))

(assert (= (and b!233200 c!38775) b!233205))

(assert (= (and b!233200 (not c!38775)) b!233212))

(assert (= (and b!233212 c!38773) b!233203))

(assert (= (and b!233212 (not c!38773)) b!233209))

(assert (= (or b!233203 b!233209) bm!21690))

(assert (= (or b!233205 bm!21690) bm!21694))

(assert (= (or b!233205 b!233203) bm!21688))

(assert (= (or b!233199 bm!21694) bm!21692))

(assert (= (or b!233199 bm!21688) bm!21693))

(assert (= (and d!58785 res!114483) b!233202))

(assert (= (and d!58785 c!38777) b!233215))

(assert (= (and d!58785 (not c!38777)) b!233201))

(assert (= (and d!58785 res!114484) b!233208))

(assert (= (and b!233208 res!114482) b!233219))

(assert (= (and b!233208 (not res!114485)) b!233213))

(assert (= (and b!233213 res!114486) b!233214))

(assert (= (and b!233208 res!114479) b!233218))

(assert (= (and b!233218 c!38774) b!233206))

(assert (= (and b!233218 (not c!38774)) b!233204))

(assert (= (and b!233206 res!114480) b!233210))

(assert (= (or b!233206 b!233204) bm!21691))

(assert (= (and b!233218 res!114487) b!233211))

(assert (= (and b!233211 c!38776) b!233216))

(assert (= (and b!233211 (not c!38776)) b!233207))

(assert (= (and b!233216 res!114481) b!233217))

(assert (= (or b!233216 b!233207) bm!21689))

(declare-fun b_lambda!7873 () Bool)

(assert (=> (not b_lambda!7873) (not b!233214)))

(declare-fun t!8502 () Bool)

(declare-fun tb!2927 () Bool)

(assert (=> (and b!233109 (= (defaultEntry!4339 thiss!1504) (defaultEntry!4339 thiss!1504)) t!8502) tb!2927))

(declare-fun result!5087 () Bool)

(assert (=> tb!2927 (= result!5087 tp_is_empty!6147)))

(assert (=> b!233214 t!8502))

(declare-fun b_and!13205 () Bool)

(assert (= b_and!13201 (and (=> t!8502 result!5087) b_and!13205)))

(declare-fun m!254627 () Bool)

(assert (=> b!233219 m!254627))

(assert (=> b!233219 m!254627))

(declare-fun m!254629 () Bool)

(assert (=> b!233219 m!254629))

(declare-fun m!254631 () Bool)

(assert (=> bm!21692 m!254631))

(declare-fun m!254633 () Bool)

(assert (=> bm!21693 m!254633))

(declare-fun m!254635 () Bool)

(assert (=> bm!21691 m!254635))

(declare-fun m!254637 () Bool)

(assert (=> b!233215 m!254637))

(declare-fun m!254639 () Bool)

(assert (=> b!233215 m!254639))

(declare-fun m!254641 () Bool)

(assert (=> b!233215 m!254641))

(declare-fun m!254643 () Bool)

(assert (=> b!233215 m!254643))

(declare-fun m!254645 () Bool)

(assert (=> b!233215 m!254645))

(assert (=> b!233215 m!254631))

(declare-fun m!254647 () Bool)

(assert (=> b!233215 m!254647))

(declare-fun m!254649 () Bool)

(assert (=> b!233215 m!254649))

(declare-fun m!254651 () Bool)

(assert (=> b!233215 m!254651))

(declare-fun m!254653 () Bool)

(assert (=> b!233215 m!254653))

(assert (=> b!233215 m!254643))

(assert (=> b!233215 m!254641))

(declare-fun m!254655 () Bool)

(assert (=> b!233215 m!254655))

(declare-fun m!254657 () Bool)

(assert (=> b!233215 m!254657))

(declare-fun m!254659 () Bool)

(assert (=> b!233215 m!254659))

(assert (=> b!233215 m!254627))

(declare-fun m!254661 () Bool)

(assert (=> b!233215 m!254661))

(declare-fun m!254663 () Bool)

(assert (=> b!233215 m!254663))

(assert (=> b!233215 m!254661))

(declare-fun m!254665 () Bool)

(assert (=> b!233215 m!254665))

(assert (=> b!233215 m!254637))

(declare-fun m!254667 () Bool)

(assert (=> b!233199 m!254667))

(assert (=> d!58785 m!254587))

(declare-fun m!254669 () Bool)

(assert (=> b!233217 m!254669))

(assert (=> b!233202 m!254627))

(assert (=> b!233202 m!254627))

(assert (=> b!233202 m!254629))

(declare-fun m!254671 () Bool)

(assert (=> bm!21689 m!254671))

(assert (=> b!233214 m!254627))

(declare-fun m!254673 () Bool)

(assert (=> b!233214 m!254673))

(assert (=> b!233214 m!254673))

(declare-fun m!254675 () Bool)

(assert (=> b!233214 m!254675))

(declare-fun m!254677 () Bool)

(assert (=> b!233214 m!254677))

(assert (=> b!233214 m!254675))

(assert (=> b!233214 m!254627))

(declare-fun m!254679 () Bool)

(assert (=> b!233214 m!254679))

(declare-fun m!254681 () Bool)

(assert (=> b!233210 m!254681))

(assert (=> b!233213 m!254627))

(assert (=> b!233213 m!254627))

(declare-fun m!254683 () Bool)

(assert (=> b!233213 m!254683))

(assert (=> b!233113 d!58785))

(declare-fun d!58787 () Bool)

(assert (=> d!58787 (= (array_inv!3605 (_keys!6393 thiss!1504)) (bvsge (size!5821 (_keys!6393 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233109 d!58787))

(declare-fun d!58789 () Bool)

(assert (=> d!58789 (= (array_inv!3606 (_values!4322 thiss!1504)) (bvsge (size!5820 (_values!4322 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233109 d!58789))

(declare-fun b!233234 () Bool)

(declare-fun e!151519 () SeekEntryResult!984)

(declare-fun lt!118021 () SeekEntryResult!984)

(assert (=> b!233234 (= e!151519 (Found!984 (index!6108 lt!118021)))))

(declare-fun e!151517 () SeekEntryResult!984)

(declare-fun b!233235 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11538 (_ BitVec 32)) SeekEntryResult!984)

(assert (=> b!233235 (= e!151517 (seekKeyOrZeroReturnVacant!0 (x!23612 lt!118021) (index!6108 lt!118021) (index!6108 lt!118021) key!932 (_keys!6393 thiss!1504) (mask!10261 thiss!1504)))))

(declare-fun b!233236 () Bool)

(assert (=> b!233236 (= e!151517 (MissingZero!984 (index!6108 lt!118021)))))

(declare-fun b!233237 () Bool)

(declare-fun e!151518 () SeekEntryResult!984)

(assert (=> b!233237 (= e!151518 e!151519)))

(declare-fun lt!118023 () (_ BitVec 64))

(assert (=> b!233237 (= lt!118023 (select (arr!5488 (_keys!6393 thiss!1504)) (index!6108 lt!118021)))))

(declare-fun c!38784 () Bool)

(assert (=> b!233237 (= c!38784 (= lt!118023 key!932))))

(declare-fun d!58791 () Bool)

(declare-fun lt!118022 () SeekEntryResult!984)

(assert (=> d!58791 (and (or ((_ is Undefined!984) lt!118022) (not ((_ is Found!984) lt!118022)) (and (bvsge (index!6107 lt!118022) #b00000000000000000000000000000000) (bvslt (index!6107 lt!118022) (size!5821 (_keys!6393 thiss!1504))))) (or ((_ is Undefined!984) lt!118022) ((_ is Found!984) lt!118022) (not ((_ is MissingZero!984) lt!118022)) (and (bvsge (index!6106 lt!118022) #b00000000000000000000000000000000) (bvslt (index!6106 lt!118022) (size!5821 (_keys!6393 thiss!1504))))) (or ((_ is Undefined!984) lt!118022) ((_ is Found!984) lt!118022) ((_ is MissingZero!984) lt!118022) (not ((_ is MissingVacant!984) lt!118022)) (and (bvsge (index!6109 lt!118022) #b00000000000000000000000000000000) (bvslt (index!6109 lt!118022) (size!5821 (_keys!6393 thiss!1504))))) (or ((_ is Undefined!984) lt!118022) (ite ((_ is Found!984) lt!118022) (= (select (arr!5488 (_keys!6393 thiss!1504)) (index!6107 lt!118022)) key!932) (ite ((_ is MissingZero!984) lt!118022) (= (select (arr!5488 (_keys!6393 thiss!1504)) (index!6106 lt!118022)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!984) lt!118022) (= (select (arr!5488 (_keys!6393 thiss!1504)) (index!6109 lt!118022)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58791 (= lt!118022 e!151518)))

(declare-fun c!38786 () Bool)

(assert (=> d!58791 (= c!38786 (and ((_ is Intermediate!984) lt!118021) (undefined!1796 lt!118021)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11538 (_ BitVec 32)) SeekEntryResult!984)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58791 (= lt!118021 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10261 thiss!1504)) key!932 (_keys!6393 thiss!1504) (mask!10261 thiss!1504)))))

(assert (=> d!58791 (validMask!0 (mask!10261 thiss!1504))))

(assert (=> d!58791 (= (seekEntryOrOpen!0 key!932 (_keys!6393 thiss!1504) (mask!10261 thiss!1504)) lt!118022)))

(declare-fun b!233238 () Bool)

(assert (=> b!233238 (= e!151518 Undefined!984)))

(declare-fun b!233239 () Bool)

(declare-fun c!38785 () Bool)

(assert (=> b!233239 (= c!38785 (= lt!118023 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233239 (= e!151519 e!151517)))

(assert (= (and d!58791 c!38786) b!233238))

(assert (= (and d!58791 (not c!38786)) b!233237))

(assert (= (and b!233237 c!38784) b!233234))

(assert (= (and b!233237 (not c!38784)) b!233239))

(assert (= (and b!233239 c!38785) b!233236))

(assert (= (and b!233239 (not c!38785)) b!233235))

(declare-fun m!254685 () Bool)

(assert (=> b!233235 m!254685))

(declare-fun m!254687 () Bool)

(assert (=> b!233237 m!254687))

(assert (=> d!58791 m!254587))

(declare-fun m!254689 () Bool)

(assert (=> d!58791 m!254689))

(declare-fun m!254691 () Bool)

(assert (=> d!58791 m!254691))

(declare-fun m!254693 () Bool)

(assert (=> d!58791 m!254693))

(declare-fun m!254695 () Bool)

(assert (=> d!58791 m!254695))

(declare-fun m!254697 () Bool)

(assert (=> d!58791 m!254697))

(assert (=> d!58791 m!254689))

(assert (=> b!233114 d!58791))

(declare-fun condMapEmpty!10396 () Bool)

(declare-fun mapDefault!10396 () ValueCell!2730)

(assert (=> mapNonEmpty!10390 (= condMapEmpty!10396 (= mapRest!10390 ((as const (Array (_ BitVec 32) ValueCell!2730)) mapDefault!10396)))))

(declare-fun e!151525 () Bool)

(declare-fun mapRes!10396 () Bool)

(assert (=> mapNonEmpty!10390 (= tp!21997 (and e!151525 mapRes!10396))))

(declare-fun b!233246 () Bool)

(declare-fun e!151524 () Bool)

(assert (=> b!233246 (= e!151524 tp_is_empty!6147)))

(declare-fun b!233247 () Bool)

(assert (=> b!233247 (= e!151525 tp_is_empty!6147)))

(declare-fun mapIsEmpty!10396 () Bool)

(assert (=> mapIsEmpty!10396 mapRes!10396))

(declare-fun mapNonEmpty!10396 () Bool)

(declare-fun tp!22006 () Bool)

(assert (=> mapNonEmpty!10396 (= mapRes!10396 (and tp!22006 e!151524))))

(declare-fun mapKey!10396 () (_ BitVec 32))

(declare-fun mapValue!10396 () ValueCell!2730)

(declare-fun mapRest!10396 () (Array (_ BitVec 32) ValueCell!2730))

(assert (=> mapNonEmpty!10396 (= mapRest!10390 (store mapRest!10396 mapKey!10396 mapValue!10396))))

(assert (= (and mapNonEmpty!10390 condMapEmpty!10396) mapIsEmpty!10396))

(assert (= (and mapNonEmpty!10390 (not condMapEmpty!10396)) mapNonEmpty!10396))

(assert (= (and mapNonEmpty!10396 ((_ is ValueCellFull!2730) mapValue!10396)) b!233246))

(assert (= (and mapNonEmpty!10390 ((_ is ValueCellFull!2730) mapDefault!10396)) b!233247))

(declare-fun m!254699 () Bool)

(assert (=> mapNonEmpty!10396 m!254699))

(declare-fun b_lambda!7875 () Bool)

(assert (= b_lambda!7873 (or (and b!233109 b_free!6285) b_lambda!7875)))

(check-sat (not d!58785) (not b!233145) (not b!233235) (not b!233154) (not bm!21692) (not b!233217) (not b!233199) (not d!58781) tp_is_empty!6147 (not b_lambda!7875) (not b!233219) (not mapNonEmpty!10396) (not d!58783) (not b_next!6285) (not b!233210) (not d!58791) (not bm!21689) (not b!233146) (not b!233156) (not b!233147) (not b!233213) b_and!13205 (not bm!21691) (not b!233214) (not bm!21693) (not b!233215) (not b!233202))
(check-sat b_and!13205 (not b_next!6285))
