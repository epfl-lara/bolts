; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22154 () Bool)

(assert start!22154)

(declare-fun b!230907 () Bool)

(declare-fun b_free!6209 () Bool)

(declare-fun b_next!6209 () Bool)

(assert (=> b!230907 (= b_free!6209 (not b_next!6209))))

(declare-fun tp!21769 () Bool)

(declare-fun b_and!13125 () Bool)

(assert (=> b!230907 (= tp!21769 b_and!13125)))

(declare-fun b!230896 () Bool)

(declare-fun e!149878 () Bool)

(declare-datatypes ((SeekEntryResult!954 0))(
  ( (MissingZero!954 (index!5986 (_ BitVec 32))) (Found!954 (index!5987 (_ BitVec 32))) (Intermediate!954 (undefined!1766 Bool) (index!5988 (_ BitVec 32)) (x!23478 (_ BitVec 32))) (Undefined!954) (MissingVacant!954 (index!5989 (_ BitVec 32))) )
))
(declare-fun lt!116350 () SeekEntryResult!954)

(assert (=> b!230896 (= e!149878 (is-Undefined!954 lt!116350))))

(declare-fun b!230897 () Bool)

(declare-fun c!38331 () Bool)

(assert (=> b!230897 (= c!38331 (is-MissingVacant!954 lt!116350))))

(declare-fun e!149880 () Bool)

(assert (=> b!230897 (= e!149880 e!149878)))

(declare-fun b!230899 () Bool)

(declare-fun e!149885 () Bool)

(declare-fun e!149879 () Bool)

(assert (=> b!230899 (= e!149885 e!149879)))

(declare-fun res!113537 () Bool)

(assert (=> b!230899 (=> (not res!113537) (not e!149879))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230899 (= res!113537 (or (= lt!116350 (MissingZero!954 index!297)) (= lt!116350 (MissingVacant!954 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7741 0))(
  ( (V!7742 (val!3080 Int)) )
))
(declare-datatypes ((ValueCell!2692 0))(
  ( (ValueCellFull!2692 (v!5096 V!7741)) (EmptyCell!2692) )
))
(declare-datatypes ((array!11384 0))(
  ( (array!11385 (arr!5411 (Array (_ BitVec 32) ValueCell!2692)) (size!5744 (_ BitVec 32))) )
))
(declare-datatypes ((array!11386 0))(
  ( (array!11387 (arr!5412 (Array (_ BitVec 32) (_ BitVec 64))) (size!5745 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3284 0))(
  ( (LongMapFixedSize!3285 (defaultEntry!4301 Int) (mask!10197 (_ BitVec 32)) (extraKeys!4038 (_ BitVec 32)) (zeroValue!4142 V!7741) (minValue!4142 V!7741) (_size!1691 (_ BitVec 32)) (_keys!6355 array!11386) (_values!4284 array!11384) (_vacant!1691 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3284)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11386 (_ BitVec 32)) SeekEntryResult!954)

(assert (=> b!230899 (= lt!116350 (seekEntryOrOpen!0 key!932 (_keys!6355 thiss!1504) (mask!10197 thiss!1504)))))

(declare-fun call!21459 () Bool)

(declare-fun bm!21456 () Bool)

(declare-fun c!38330 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21456 (= call!21459 (inRange!0 (ite c!38330 (index!5986 lt!116350) (index!5989 lt!116350)) (mask!10197 thiss!1504)))))

(declare-fun b!230900 () Bool)

(declare-datatypes ((Unit!7083 0))(
  ( (Unit!7084) )
))
(declare-fun e!149876 () Unit!7083)

(declare-fun Unit!7085 () Unit!7083)

(assert (=> b!230900 (= e!149876 Unit!7085)))

(declare-fun lt!116345 () Unit!7083)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!296 (array!11386 array!11384 (_ BitVec 32) (_ BitVec 32) V!7741 V!7741 (_ BitVec 64) Int) Unit!7083)

(assert (=> b!230900 (= lt!116345 (lemmaInListMapThenSeekEntryOrOpenFindsIt!296 (_keys!6355 thiss!1504) (_values!4284 thiss!1504) (mask!10197 thiss!1504) (extraKeys!4038 thiss!1504) (zeroValue!4142 thiss!1504) (minValue!4142 thiss!1504) key!932 (defaultEntry!4301 thiss!1504)))))

(assert (=> b!230900 false))

(declare-fun b!230901 () Bool)

(declare-fun res!113535 () Bool)

(assert (=> b!230901 (= res!113535 (= (select (arr!5412 (_keys!6355 thiss!1504)) (index!5989 lt!116350)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149886 () Bool)

(assert (=> b!230901 (=> (not res!113535) (not e!149886))))

(declare-fun mapIsEmpty!10276 () Bool)

(declare-fun mapRes!10276 () Bool)

(assert (=> mapIsEmpty!10276 mapRes!10276))

(declare-fun b!230902 () Bool)

(declare-fun e!149881 () Bool)

(declare-fun call!21460 () Bool)

(assert (=> b!230902 (= e!149881 (not call!21460))))

(declare-fun b!230903 () Bool)

(declare-fun e!149874 () Bool)

(assert (=> b!230903 (= e!149879 e!149874)))

(declare-fun res!113532 () Bool)

(assert (=> b!230903 (=> (not res!113532) (not e!149874))))

(assert (=> b!230903 (= res!113532 (inRange!0 index!297 (mask!10197 thiss!1504)))))

(declare-fun lt!116341 () Unit!7083)

(assert (=> b!230903 (= lt!116341 e!149876)))

(declare-fun c!38332 () Bool)

(declare-datatypes ((tuple2!4540 0))(
  ( (tuple2!4541 (_1!2280 (_ BitVec 64)) (_2!2280 V!7741)) )
))
(declare-datatypes ((List!3485 0))(
  ( (Nil!3482) (Cons!3481 (h!4129 tuple2!4540) (t!8452 List!3485)) )
))
(declare-datatypes ((ListLongMap!3467 0))(
  ( (ListLongMap!3468 (toList!1749 List!3485)) )
))
(declare-fun lt!116352 () ListLongMap!3467)

(declare-fun contains!1615 (ListLongMap!3467 (_ BitVec 64)) Bool)

(assert (=> b!230903 (= c!38332 (contains!1615 lt!116352 key!932))))

(declare-fun getCurrentListMap!1272 (array!11386 array!11384 (_ BitVec 32) (_ BitVec 32) V!7741 V!7741 (_ BitVec 32) Int) ListLongMap!3467)

(assert (=> b!230903 (= lt!116352 (getCurrentListMap!1272 (_keys!6355 thiss!1504) (_values!4284 thiss!1504) (mask!10197 thiss!1504) (extraKeys!4038 thiss!1504) (zeroValue!4142 thiss!1504) (minValue!4142 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4301 thiss!1504)))))

(declare-fun b!230904 () Bool)

(declare-fun e!149887 () Bool)

(declare-fun tp_is_empty!6071 () Bool)

(assert (=> b!230904 (= e!149887 tp_is_empty!6071)))

(declare-fun bm!21457 () Bool)

(declare-fun arrayContainsKey!0 (array!11386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21457 (= call!21460 (arrayContainsKey!0 (_keys!6355 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!113538 () Bool)

(assert (=> start!22154 (=> (not res!113538) (not e!149885))))

(declare-fun valid!1297 (LongMapFixedSize!3284) Bool)

(assert (=> start!22154 (= res!113538 (valid!1297 thiss!1504))))

(assert (=> start!22154 e!149885))

(declare-fun e!149882 () Bool)

(assert (=> start!22154 e!149882))

(assert (=> start!22154 true))

(assert (=> start!22154 tp_is_empty!6071))

(declare-fun b!230898 () Bool)

(declare-fun e!149875 () Unit!7083)

(declare-fun Unit!7086 () Unit!7083)

(assert (=> b!230898 (= e!149875 Unit!7086)))

(declare-fun b!230905 () Bool)

(declare-fun lt!116339 () Unit!7083)

(assert (=> b!230905 (= e!149876 lt!116339)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!311 (array!11386 array!11384 (_ BitVec 32) (_ BitVec 32) V!7741 V!7741 (_ BitVec 64) Int) Unit!7083)

(assert (=> b!230905 (= lt!116339 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!311 (_keys!6355 thiss!1504) (_values!4284 thiss!1504) (mask!10197 thiss!1504) (extraKeys!4038 thiss!1504) (zeroValue!4142 thiss!1504) (minValue!4142 thiss!1504) key!932 (defaultEntry!4301 thiss!1504)))))

(assert (=> b!230905 (= c!38330 (is-MissingZero!954 lt!116350))))

(assert (=> b!230905 e!149880))

(declare-fun b!230906 () Bool)

(declare-fun res!113539 () Bool)

(assert (=> b!230906 (=> (not res!113539) (not e!149881))))

(assert (=> b!230906 (= res!113539 (= (select (arr!5412 (_keys!6355 thiss!1504)) (index!5986 lt!116350)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149884 () Bool)

(declare-fun array_inv!3559 (array!11386) Bool)

(declare-fun array_inv!3560 (array!11384) Bool)

(assert (=> b!230907 (= e!149882 (and tp!21769 tp_is_empty!6071 (array_inv!3559 (_keys!6355 thiss!1504)) (array_inv!3560 (_values!4284 thiss!1504)) e!149884))))

(declare-fun b!230908 () Bool)

(assert (=> b!230908 (= e!149878 e!149886)))

(declare-fun res!113536 () Bool)

(assert (=> b!230908 (= res!113536 call!21459)))

(assert (=> b!230908 (=> (not res!113536) (not e!149886))))

(declare-fun b!230909 () Bool)

(declare-fun e!149877 () Bool)

(assert (=> b!230909 (= e!149884 (and e!149877 mapRes!10276))))

(declare-fun condMapEmpty!10276 () Bool)

(declare-fun mapDefault!10276 () ValueCell!2692)

