; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22172 () Bool)

(assert start!22172)

(declare-fun b!231453 () Bool)

(declare-fun b_free!6227 () Bool)

(declare-fun b_next!6227 () Bool)

(assert (=> b!231453 (= b_free!6227 (not b_next!6227))))

(declare-fun tp!21822 () Bool)

(declare-fun b_and!13143 () Bool)

(assert (=> b!231453 (= tp!21822 b_and!13143)))

(declare-fun b!231436 () Bool)

(declare-fun e!150255 () Bool)

(assert (=> b!231436 (= e!150255 (not true))))

(declare-datatypes ((array!11420 0))(
  ( (array!11421 (arr!5429 (Array (_ BitVec 32) (_ BitVec 64))) (size!5762 (_ BitVec 32))) )
))
(declare-fun lt!116718 () array!11420)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11420 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231436 (= (arrayCountValidKeys!0 lt!116718 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7121 0))(
  ( (Unit!7122) )
))
(declare-fun lt!116719 () Unit!7121)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11420 (_ BitVec 32)) Unit!7121)

(assert (=> b!231436 (= lt!116719 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116718 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231436 (arrayContainsKey!0 lt!116718 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116724 () Unit!7121)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11420 (_ BitVec 64) (_ BitVec 32)) Unit!7121)

(assert (=> b!231436 (= lt!116724 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116718 key!932 index!297))))

(declare-datatypes ((V!7765 0))(
  ( (V!7766 (val!3089 Int)) )
))
(declare-datatypes ((ValueCell!2701 0))(
  ( (ValueCellFull!2701 (v!5105 V!7765)) (EmptyCell!2701) )
))
(declare-datatypes ((array!11422 0))(
  ( (array!11423 (arr!5430 (Array (_ BitVec 32) ValueCell!2701)) (size!5763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3302 0))(
  ( (LongMapFixedSize!3303 (defaultEntry!4310 Int) (mask!10212 (_ BitVec 32)) (extraKeys!4047 (_ BitVec 32)) (zeroValue!4151 V!7765) (minValue!4151 V!7765) (_size!1700 (_ BitVec 32)) (_keys!6364 array!11420) (_values!4293 array!11422) (_vacant!1700 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3302)

(declare-fun v!346 () V!7765)

(declare-datatypes ((tuple2!4556 0))(
  ( (tuple2!4557 (_1!2288 (_ BitVec 64)) (_2!2288 V!7765)) )
))
(declare-datatypes ((List!3499 0))(
  ( (Nil!3496) (Cons!3495 (h!4143 tuple2!4556) (t!8466 List!3499)) )
))
(declare-datatypes ((ListLongMap!3483 0))(
  ( (ListLongMap!3484 (toList!1757 List!3499)) )
))
(declare-fun lt!116727 () ListLongMap!3483)

(declare-fun +!611 (ListLongMap!3483 tuple2!4556) ListLongMap!3483)

(declare-fun getCurrentListMap!1280 (array!11420 array!11422 (_ BitVec 32) (_ BitVec 32) V!7765 V!7765 (_ BitVec 32) Int) ListLongMap!3483)

(assert (=> b!231436 (= (+!611 lt!116727 (tuple2!4557 key!932 v!346)) (getCurrentListMap!1280 lt!116718 (array!11423 (store (arr!5430 (_values!4293 thiss!1504)) index!297 (ValueCellFull!2701 v!346)) (size!5763 (_values!4293 thiss!1504))) (mask!10212 thiss!1504) (extraKeys!4047 thiss!1504) (zeroValue!4151 thiss!1504) (minValue!4151 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4310 thiss!1504)))))

(declare-fun lt!116730 () Unit!7121)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!70 (array!11420 array!11422 (_ BitVec 32) (_ BitVec 32) V!7765 V!7765 (_ BitVec 32) (_ BitVec 64) V!7765 Int) Unit!7121)

(assert (=> b!231436 (= lt!116730 (lemmaAddValidKeyToArrayThenAddPairToListMap!70 (_keys!6364 thiss!1504) (_values!4293 thiss!1504) (mask!10212 thiss!1504) (extraKeys!4047 thiss!1504) (zeroValue!4151 thiss!1504) (minValue!4151 thiss!1504) index!297 key!932 v!346 (defaultEntry!4310 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11420 (_ BitVec 32)) Bool)

(assert (=> b!231436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116718 (mask!10212 thiss!1504))))

(declare-fun lt!116717 () Unit!7121)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11420 (_ BitVec 32) (_ BitVec 32)) Unit!7121)

(assert (=> b!231436 (= lt!116717 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6364 thiss!1504) index!297 (mask!10212 thiss!1504)))))

(assert (=> b!231436 (= (arrayCountValidKeys!0 lt!116718 #b00000000000000000000000000000000 (size!5762 (_keys!6364 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6364 thiss!1504) #b00000000000000000000000000000000 (size!5762 (_keys!6364 thiss!1504)))))))

(declare-fun lt!116720 () Unit!7121)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11420 (_ BitVec 32) (_ BitVec 64)) Unit!7121)

(assert (=> b!231436 (= lt!116720 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6364 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3500 0))(
  ( (Nil!3497) (Cons!3496 (h!4144 (_ BitVec 64)) (t!8467 List!3500)) )
))
(declare-fun arrayNoDuplicates!0 (array!11420 (_ BitVec 32) List!3500) Bool)

(assert (=> b!231436 (arrayNoDuplicates!0 lt!116718 #b00000000000000000000000000000000 Nil!3497)))

(assert (=> b!231436 (= lt!116718 (array!11421 (store (arr!5429 (_keys!6364 thiss!1504)) index!297 key!932) (size!5762 (_keys!6364 thiss!1504))))))

(declare-fun lt!116728 () Unit!7121)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11420 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3500) Unit!7121)

(assert (=> b!231436 (= lt!116728 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6364 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3497))))

(declare-fun lt!116721 () Unit!7121)

(declare-fun e!150253 () Unit!7121)

(assert (=> b!231436 (= lt!116721 e!150253)))

(declare-fun c!38441 () Bool)

(assert (=> b!231436 (= c!38441 (arrayContainsKey!0 (_keys!6364 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231437 () Bool)

(declare-fun e!150264 () Bool)

(declare-fun call!21513 () Bool)

(assert (=> b!231437 (= e!150264 (not call!21513))))

(declare-fun b!231438 () Bool)

(declare-fun e!150263 () Bool)

(declare-fun e!150256 () Bool)

(declare-fun mapRes!10303 () Bool)

(assert (=> b!231438 (= e!150263 (and e!150256 mapRes!10303))))

(declare-fun condMapEmpty!10303 () Bool)

(declare-fun mapDefault!10303 () ValueCell!2701)

