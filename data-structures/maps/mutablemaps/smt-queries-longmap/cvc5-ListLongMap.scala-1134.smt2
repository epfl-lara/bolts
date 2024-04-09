; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23340 () Bool)

(assert start!23340)

(declare-fun b!245237 () Bool)

(declare-fun b_free!6553 () Bool)

(declare-fun b_next!6553 () Bool)

(assert (=> b!245237 (= b_free!6553 (not b_next!6553))))

(declare-fun tp!22890 () Bool)

(declare-fun b_and!13559 () Bool)

(assert (=> b!245237 (= tp!22890 b_and!13559)))

(declare-fun b!245235 () Bool)

(declare-fun e!159116 () Bool)

(declare-fun call!22891 () Bool)

(assert (=> b!245235 (= e!159116 (not call!22891))))

(declare-fun mapIsEmpty!10882 () Bool)

(declare-fun mapRes!10882 () Bool)

(assert (=> mapIsEmpty!10882 mapRes!10882))

(declare-fun b!245236 () Bool)

(declare-fun e!159118 () Bool)

(declare-fun e!159109 () Bool)

(assert (=> b!245236 (= e!159118 e!159109)))

(declare-fun res!120320 () Bool)

(assert (=> b!245236 (=> (not res!120320) (not e!159109))))

(declare-datatypes ((SeekEntryResult!1097 0))(
  ( (MissingZero!1097 (index!6558 (_ BitVec 32))) (Found!1097 (index!6559 (_ BitVec 32))) (Intermediate!1097 (undefined!1909 Bool) (index!6560 (_ BitVec 32)) (x!24427 (_ BitVec 32))) (Undefined!1097) (MissingVacant!1097 (index!6561 (_ BitVec 32))) )
))
(declare-fun lt!122857 () SeekEntryResult!1097)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!245236 (= res!120320 (or (= lt!122857 (MissingZero!1097 index!297)) (= lt!122857 (MissingVacant!1097 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8201 0))(
  ( (V!8202 (val!3252 Int)) )
))
(declare-datatypes ((ValueCell!2864 0))(
  ( (ValueCellFull!2864 (v!5300 V!8201)) (EmptyCell!2864) )
))
(declare-datatypes ((array!12126 0))(
  ( (array!12127 (arr!5755 (Array (_ BitVec 32) ValueCell!2864)) (size!6097 (_ BitVec 32))) )
))
(declare-datatypes ((array!12128 0))(
  ( (array!12129 (arr!5756 (Array (_ BitVec 32) (_ BitVec 64))) (size!6098 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3628 0))(
  ( (LongMapFixedSize!3629 (defaultEntry!4539 Int) (mask!10648 (_ BitVec 32)) (extraKeys!4276 (_ BitVec 32)) (zeroValue!4380 V!8201) (minValue!4380 V!8201) (_size!1863 (_ BitVec 32)) (_keys!6653 array!12128) (_values!4522 array!12126) (_vacant!1863 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3628)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12128 (_ BitVec 32)) SeekEntryResult!1097)

(assert (=> b!245236 (= lt!122857 (seekEntryOrOpen!0 key!932 (_keys!6653 thiss!1504) (mask!10648 thiss!1504)))))

(declare-fun e!159108 () Bool)

(declare-fun tp_is_empty!6415 () Bool)

(declare-fun e!159114 () Bool)

(declare-fun array_inv!3793 (array!12128) Bool)

(declare-fun array_inv!3794 (array!12126) Bool)

(assert (=> b!245237 (= e!159108 (and tp!22890 tp_is_empty!6415 (array_inv!3793 (_keys!6653 thiss!1504)) (array_inv!3794 (_values!4522 thiss!1504)) e!159114))))

(declare-fun b!245238 () Bool)

(declare-datatypes ((Unit!7568 0))(
  ( (Unit!7569) )
))
(declare-fun e!159110 () Unit!7568)

(declare-fun Unit!7570 () Unit!7568)

(assert (=> b!245238 (= e!159110 Unit!7570)))

(declare-fun lt!122862 () Unit!7568)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!371 (array!12128 array!12126 (_ BitVec 32) (_ BitVec 32) V!8201 V!8201 (_ BitVec 64) Int) Unit!7568)

(assert (=> b!245238 (= lt!122862 (lemmaInListMapThenSeekEntryOrOpenFindsIt!371 (_keys!6653 thiss!1504) (_values!4522 thiss!1504) (mask!10648 thiss!1504) (extraKeys!4276 thiss!1504) (zeroValue!4380 thiss!1504) (minValue!4380 thiss!1504) key!932 (defaultEntry!4539 thiss!1504)))))

(assert (=> b!245238 false))

(declare-fun b!245239 () Bool)

(declare-fun e!159107 () Bool)

(assert (=> b!245239 (= e!159107 (is-Undefined!1097 lt!122857))))

(declare-fun b!245240 () Bool)

(declare-fun e!159119 () Unit!7568)

(declare-fun Unit!7571 () Unit!7568)

(assert (=> b!245240 (= e!159119 Unit!7571)))

(declare-fun b!245241 () Bool)

(declare-fun e!159113 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!245241 (= e!159113 (not (validMask!0 (mask!10648 thiss!1504))))))

(declare-fun lt!122860 () array!12128)

(declare-fun arrayCountValidKeys!0 (array!12128 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!245241 (= (arrayCountValidKeys!0 lt!122860 #b00000000000000000000000000000000 (size!6098 (_keys!6653 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6653 thiss!1504) #b00000000000000000000000000000000 (size!6098 (_keys!6653 thiss!1504)))))))

(declare-fun lt!122861 () Unit!7568)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12128 (_ BitVec 32) (_ BitVec 64)) Unit!7568)

(assert (=> b!245241 (= lt!122861 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6653 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3686 0))(
  ( (Nil!3683) (Cons!3682 (h!4339 (_ BitVec 64)) (t!8707 List!3686)) )
))
(declare-fun arrayNoDuplicates!0 (array!12128 (_ BitVec 32) List!3686) Bool)

(assert (=> b!245241 (arrayNoDuplicates!0 lt!122860 #b00000000000000000000000000000000 Nil!3683)))

(assert (=> b!245241 (= lt!122860 (array!12129 (store (arr!5756 (_keys!6653 thiss!1504)) index!297 key!932) (size!6098 (_keys!6653 thiss!1504))))))

(declare-fun lt!122858 () Unit!7568)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12128 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3686) Unit!7568)

(assert (=> b!245241 (= lt!122858 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6653 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3683))))

(declare-fun lt!122864 () Unit!7568)

(assert (=> b!245241 (= lt!122864 e!159119)))

(declare-fun c!40931 () Bool)

(declare-fun arrayContainsKey!0 (array!12128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!245241 (= c!40931 (arrayContainsKey!0 (_keys!6653 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245243 () Bool)

(declare-fun res!120317 () Bool)

(declare-fun e!159115 () Bool)

(assert (=> b!245243 (=> (not res!120317) (not e!159115))))

(assert (=> b!245243 (= res!120317 (= (select (arr!5756 (_keys!6653 thiss!1504)) (index!6558 lt!122857)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245244 () Bool)

(declare-fun lt!122863 () Unit!7568)

(assert (=> b!245244 (= e!159110 lt!122863)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!374 (array!12128 array!12126 (_ BitVec 32) (_ BitVec 32) V!8201 V!8201 (_ BitVec 64) Int) Unit!7568)

(assert (=> b!245244 (= lt!122863 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!374 (_keys!6653 thiss!1504) (_values!4522 thiss!1504) (mask!10648 thiss!1504) (extraKeys!4276 thiss!1504) (zeroValue!4380 thiss!1504) (minValue!4380 thiss!1504) key!932 (defaultEntry!4539 thiss!1504)))))

(declare-fun c!40929 () Bool)

(assert (=> b!245244 (= c!40929 (is-MissingZero!1097 lt!122857))))

(declare-fun e!159117 () Bool)

(assert (=> b!245244 e!159117))

(declare-fun b!245245 () Bool)

(assert (=> b!245245 (= e!159107 e!159116)))

(declare-fun res!120321 () Bool)

(declare-fun call!22890 () Bool)

(assert (=> b!245245 (= res!120321 call!22890)))

(assert (=> b!245245 (=> (not res!120321) (not e!159116))))

(declare-fun b!245246 () Bool)

(declare-fun e!159120 () Bool)

(assert (=> b!245246 (= e!159120 tp_is_empty!6415)))

(declare-fun bm!22887 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22887 (= call!22890 (inRange!0 (ite c!40929 (index!6558 lt!122857) (index!6561 lt!122857)) (mask!10648 thiss!1504)))))

(declare-fun b!245247 () Bool)

(assert (=> b!245247 (= e!159109 e!159113)))

(declare-fun res!120316 () Bool)

(assert (=> b!245247 (=> (not res!120316) (not e!159113))))

(assert (=> b!245247 (= res!120316 (inRange!0 index!297 (mask!10648 thiss!1504)))))

(declare-fun lt!122859 () Unit!7568)

(assert (=> b!245247 (= lt!122859 e!159110)))

(declare-fun c!40930 () Bool)

(declare-datatypes ((tuple2!4780 0))(
  ( (tuple2!4781 (_1!2400 (_ BitVec 64)) (_2!2400 V!8201)) )
))
(declare-datatypes ((List!3687 0))(
  ( (Nil!3684) (Cons!3683 (h!4340 tuple2!4780) (t!8708 List!3687)) )
))
(declare-datatypes ((ListLongMap!3707 0))(
  ( (ListLongMap!3708 (toList!1869 List!3687)) )
))
(declare-fun contains!1771 (ListLongMap!3707 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1392 (array!12128 array!12126 (_ BitVec 32) (_ BitVec 32) V!8201 V!8201 (_ BitVec 32) Int) ListLongMap!3707)

(assert (=> b!245247 (= c!40930 (contains!1771 (getCurrentListMap!1392 (_keys!6653 thiss!1504) (_values!4522 thiss!1504) (mask!10648 thiss!1504) (extraKeys!4276 thiss!1504) (zeroValue!4380 thiss!1504) (minValue!4380 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4539 thiss!1504)) key!932))))

(declare-fun b!245248 () Bool)

(assert (=> b!245248 (= e!159114 (and e!159120 mapRes!10882))))

(declare-fun condMapEmpty!10882 () Bool)

(declare-fun mapDefault!10882 () ValueCell!2864)

