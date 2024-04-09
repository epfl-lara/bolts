; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22150 () Bool)

(assert start!22150)

(declare-fun b!230789 () Bool)

(declare-fun b_free!6205 () Bool)

(declare-fun b_next!6205 () Bool)

(assert (=> b!230789 (= b_free!6205 (not b_next!6205))))

(declare-fun tp!21756 () Bool)

(declare-fun b_and!13121 () Bool)

(assert (=> b!230789 (= tp!21756 b_and!13121)))

(declare-fun mapIsEmpty!10270 () Bool)

(declare-fun mapRes!10270 () Bool)

(assert (=> mapIsEmpty!10270 mapRes!10270))

(declare-fun b!230776 () Bool)

(declare-fun e!149803 () Bool)

(declare-datatypes ((SeekEntryResult!952 0))(
  ( (MissingZero!952 (index!5978 (_ BitVec 32))) (Found!952 (index!5979 (_ BitVec 32))) (Intermediate!952 (undefined!1764 Bool) (index!5980 (_ BitVec 32)) (x!23476 (_ BitVec 32))) (Undefined!952) (MissingVacant!952 (index!5981 (_ BitVec 32))) )
))
(declare-fun lt!116268 () SeekEntryResult!952)

(assert (=> b!230776 (= e!149803 (is-Undefined!952 lt!116268))))

(declare-fun b!230777 () Bool)

(declare-fun res!113484 () Bool)

(declare-fun e!149802 () Bool)

(assert (=> b!230777 (=> (not res!113484) (not e!149802))))

(declare-fun call!21448 () Bool)

(assert (=> b!230777 (= res!113484 call!21448)))

(declare-fun e!149799 () Bool)

(assert (=> b!230777 (= e!149799 e!149802)))

(declare-fun bm!21444 () Bool)

(declare-fun call!21447 () Bool)

(declare-datatypes ((V!7737 0))(
  ( (V!7738 (val!3078 Int)) )
))
(declare-datatypes ((ValueCell!2690 0))(
  ( (ValueCellFull!2690 (v!5094 V!7737)) (EmptyCell!2690) )
))
(declare-datatypes ((array!11376 0))(
  ( (array!11377 (arr!5407 (Array (_ BitVec 32) ValueCell!2690)) (size!5740 (_ BitVec 32))) )
))
(declare-datatypes ((array!11378 0))(
  ( (array!11379 (arr!5408 (Array (_ BitVec 32) (_ BitVec 64))) (size!5741 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3280 0))(
  ( (LongMapFixedSize!3281 (defaultEntry!4299 Int) (mask!10195 (_ BitVec 32)) (extraKeys!4036 (_ BitVec 32)) (zeroValue!4140 V!7737) (minValue!4140 V!7737) (_size!1689 (_ BitVec 32)) (_keys!6353 array!11378) (_values!4282 array!11376) (_vacant!1689 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3280)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21444 (= call!21447 (arrayContainsKey!0 (_keys!6353 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230778 () Bool)

(declare-fun res!113489 () Bool)

(assert (=> b!230778 (=> (not res!113489) (not e!149802))))

(assert (=> b!230778 (= res!113489 (= (select (arr!5408 (_keys!6353 thiss!1504)) (index!5978 lt!116268)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230779 () Bool)

(assert (=> b!230779 (= e!149802 (not call!21447))))

(declare-fun b!230780 () Bool)

(declare-datatypes ((Unit!7073 0))(
  ( (Unit!7074) )
))
(declare-fun e!149794 () Unit!7073)

(declare-fun Unit!7075 () Unit!7073)

(assert (=> b!230780 (= e!149794 Unit!7075)))

(declare-fun lt!116263 () Unit!7073)

(declare-fun lemmaArrayContainsKeyThenInListMap!128 (array!11378 array!11376 (_ BitVec 32) (_ BitVec 32) V!7737 V!7737 (_ BitVec 64) (_ BitVec 32) Int) Unit!7073)

(assert (=> b!230780 (= lt!116263 (lemmaArrayContainsKeyThenInListMap!128 (_keys!6353 thiss!1504) (_values!4282 thiss!1504) (mask!10195 thiss!1504) (extraKeys!4036 thiss!1504) (zeroValue!4140 thiss!1504) (minValue!4140 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4299 thiss!1504)))))

(assert (=> b!230780 false))

(declare-fun b!230781 () Bool)

(declare-fun Unit!7076 () Unit!7073)

(assert (=> b!230781 (= e!149794 Unit!7076)))

(declare-fun b!230782 () Bool)

(declare-fun e!149796 () Unit!7073)

(declare-fun lt!116265 () Unit!7073)

(assert (=> b!230782 (= e!149796 lt!116265)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!309 (array!11378 array!11376 (_ BitVec 32) (_ BitVec 32) V!7737 V!7737 (_ BitVec 64) Int) Unit!7073)

(assert (=> b!230782 (= lt!116265 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!309 (_keys!6353 thiss!1504) (_values!4282 thiss!1504) (mask!10195 thiss!1504) (extraKeys!4036 thiss!1504) (zeroValue!4140 thiss!1504) (minValue!4140 thiss!1504) key!932 (defaultEntry!4299 thiss!1504)))))

(declare-fun c!38308 () Bool)

(assert (=> b!230782 (= c!38308 (is-MissingZero!952 lt!116268))))

(assert (=> b!230782 e!149799))

(declare-fun b!230783 () Bool)

(declare-fun Unit!7077 () Unit!7073)

(assert (=> b!230783 (= e!149796 Unit!7077)))

(declare-fun lt!116266 () Unit!7073)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!294 (array!11378 array!11376 (_ BitVec 32) (_ BitVec 32) V!7737 V!7737 (_ BitVec 64) Int) Unit!7073)

(assert (=> b!230783 (= lt!116266 (lemmaInListMapThenSeekEntryOrOpenFindsIt!294 (_keys!6353 thiss!1504) (_values!4282 thiss!1504) (mask!10195 thiss!1504) (extraKeys!4036 thiss!1504) (zeroValue!4140 thiss!1504) (minValue!4140 thiss!1504) key!932 (defaultEntry!4299 thiss!1504)))))

(assert (=> b!230783 false))

(declare-fun b!230784 () Bool)

(declare-fun e!149795 () Bool)

(declare-fun e!149790 () Bool)

(assert (=> b!230784 (= e!149795 e!149790)))

(declare-fun res!113487 () Bool)

(assert (=> b!230784 (=> (not res!113487) (not e!149790))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230784 (= res!113487 (or (= lt!116268 (MissingZero!952 index!297)) (= lt!116268 (MissingVacant!952 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11378 (_ BitVec 32)) SeekEntryResult!952)

(assert (=> b!230784 (= lt!116268 (seekEntryOrOpen!0 key!932 (_keys!6353 thiss!1504) (mask!10195 thiss!1504)))))

(declare-fun b!230785 () Bool)

(declare-fun e!149791 () Bool)

(assert (=> b!230785 (= e!149790 e!149791)))

(declare-fun res!113491 () Bool)

(assert (=> b!230785 (=> (not res!113491) (not e!149791))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!230785 (= res!113491 (inRange!0 index!297 (mask!10195 thiss!1504)))))

(declare-fun lt!116261 () Unit!7073)

(assert (=> b!230785 (= lt!116261 e!149796)))

(declare-fun c!38307 () Bool)

(declare-datatypes ((tuple2!4536 0))(
  ( (tuple2!4537 (_1!2278 (_ BitVec 64)) (_2!2278 V!7737)) )
))
(declare-datatypes ((List!3482 0))(
  ( (Nil!3479) (Cons!3478 (h!4126 tuple2!4536) (t!8449 List!3482)) )
))
(declare-datatypes ((ListLongMap!3463 0))(
  ( (ListLongMap!3464 (toList!1747 List!3482)) )
))
(declare-fun lt!116258 () ListLongMap!3463)

(declare-fun contains!1613 (ListLongMap!3463 (_ BitVec 64)) Bool)

(assert (=> b!230785 (= c!38307 (contains!1613 lt!116258 key!932))))

(declare-fun getCurrentListMap!1270 (array!11378 array!11376 (_ BitVec 32) (_ BitVec 32) V!7737 V!7737 (_ BitVec 32) Int) ListLongMap!3463)

(assert (=> b!230785 (= lt!116258 (getCurrentListMap!1270 (_keys!6353 thiss!1504) (_values!4282 thiss!1504) (mask!10195 thiss!1504) (extraKeys!4036 thiss!1504) (zeroValue!4140 thiss!1504) (minValue!4140 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4299 thiss!1504)))))

(declare-fun b!230786 () Bool)

(declare-fun e!149801 () Bool)

(assert (=> b!230786 (= e!149803 e!149801)))

(declare-fun res!113488 () Bool)

(assert (=> b!230786 (= res!113488 call!21448)))

(assert (=> b!230786 (=> (not res!113488) (not e!149801))))

(declare-fun b!230787 () Bool)

(declare-fun res!113486 () Bool)

(assert (=> b!230787 (= res!113486 (= (select (arr!5408 (_keys!6353 thiss!1504)) (index!5981 lt!116268)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!230787 (=> (not res!113486) (not e!149801))))

(declare-fun b!230788 () Bool)

(declare-fun c!38309 () Bool)

(assert (=> b!230788 (= c!38309 (is-MissingVacant!952 lt!116268))))

(assert (=> b!230788 (= e!149799 e!149803)))

(declare-fun bm!21445 () Bool)

(assert (=> bm!21445 (= call!21448 (inRange!0 (ite c!38308 (index!5978 lt!116268) (index!5981 lt!116268)) (mask!10195 thiss!1504)))))

(declare-fun b!230790 () Bool)

(assert (=> b!230790 (= e!149801 (not call!21447))))

(declare-fun b!230791 () Bool)

(declare-fun e!149798 () Bool)

(declare-fun e!149793 () Bool)

(assert (=> b!230791 (= e!149798 (and e!149793 mapRes!10270))))

(declare-fun condMapEmpty!10270 () Bool)

(declare-fun mapDefault!10270 () ValueCell!2690)

