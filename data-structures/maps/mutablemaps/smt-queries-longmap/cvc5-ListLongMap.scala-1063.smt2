; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22072 () Bool)

(assert start!22072)

(declare-fun b!228268 () Bool)

(declare-fun b_free!6127 () Bool)

(declare-fun b_next!6127 () Bool)

(assert (=> b!228268 (= b_free!6127 (not b_next!6127))))

(declare-fun tp!21522 () Bool)

(declare-fun b_and!13043 () Bool)

(assert (=> b!228268 (= tp!21522 b_and!13043)))

(declare-fun b!228253 () Bool)

(declare-fun res!112367 () Bool)

(declare-fun e!148094 () Bool)

(assert (=> b!228253 (=> (not res!112367) (not e!148094))))

(declare-datatypes ((V!7633 0))(
  ( (V!7634 (val!3039 Int)) )
))
(declare-datatypes ((ValueCell!2651 0))(
  ( (ValueCellFull!2651 (v!5055 V!7633)) (EmptyCell!2651) )
))
(declare-datatypes ((array!11220 0))(
  ( (array!11221 (arr!5329 (Array (_ BitVec 32) ValueCell!2651)) (size!5662 (_ BitVec 32))) )
))
(declare-datatypes ((array!11222 0))(
  ( (array!11223 (arr!5330 (Array (_ BitVec 32) (_ BitVec 64))) (size!5663 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3202 0))(
  ( (LongMapFixedSize!3203 (defaultEntry!4260 Int) (mask!10130 (_ BitVec 32)) (extraKeys!3997 (_ BitVec 32)) (zeroValue!4101 V!7633) (minValue!4101 V!7633) (_size!1650 (_ BitVec 32)) (_keys!6314 array!11222) (_values!4243 array!11220) (_vacant!1650 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3202)

(declare-datatypes ((SeekEntryResult!916 0))(
  ( (MissingZero!916 (index!5834 (_ BitVec 32))) (Found!916 (index!5835 (_ BitVec 32))) (Intermediate!916 (undefined!1728 Bool) (index!5836 (_ BitVec 32)) (x!23336 (_ BitVec 32))) (Undefined!916) (MissingVacant!916 (index!5837 (_ BitVec 32))) )
))
(declare-fun lt!114882 () SeekEntryResult!916)

(assert (=> b!228253 (= res!112367 (= (select (arr!5330 (_keys!6314 thiss!1504)) (index!5834 lt!114882)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!21213 () Bool)

(declare-fun c!37840 () Bool)

(declare-fun bm!21210 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21210 (= call!21213 (inRange!0 (ite c!37840 (index!5834 lt!114882) (index!5837 lt!114882)) (mask!10130 thiss!1504)))))

(declare-fun b!228254 () Bool)

(declare-fun e!148103 () Bool)

(declare-fun e!148105 () Bool)

(assert (=> b!228254 (= e!148103 e!148105)))

(declare-fun res!112373 () Bool)

(assert (=> b!228254 (=> (not res!112373) (not e!148105))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!228254 (= res!112373 (inRange!0 index!297 (mask!10130 thiss!1504)))))

(declare-datatypes ((Unit!6937 0))(
  ( (Unit!6938) )
))
(declare-fun lt!114881 () Unit!6937)

(declare-fun e!148104 () Unit!6937)

(assert (=> b!228254 (= lt!114881 e!148104)))

(declare-fun c!37839 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4482 0))(
  ( (tuple2!4483 (_1!2251 (_ BitVec 64)) (_2!2251 V!7633)) )
))
(declare-datatypes ((List!3427 0))(
  ( (Nil!3424) (Cons!3423 (h!4071 tuple2!4482) (t!8394 List!3427)) )
))
(declare-datatypes ((ListLongMap!3409 0))(
  ( (ListLongMap!3410 (toList!1720 List!3427)) )
))
(declare-fun contains!1588 (ListLongMap!3409 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1243 (array!11222 array!11220 (_ BitVec 32) (_ BitVec 32) V!7633 V!7633 (_ BitVec 32) Int) ListLongMap!3409)

(assert (=> b!228254 (= c!37839 (contains!1588 (getCurrentListMap!1243 (_keys!6314 thiss!1504) (_values!4243 thiss!1504) (mask!10130 thiss!1504) (extraKeys!3997 thiss!1504) (zeroValue!4101 thiss!1504) (minValue!4101 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4260 thiss!1504)) key!932))))

(declare-fun b!228255 () Bool)

(declare-fun e!148098 () Unit!6937)

(declare-fun Unit!6939 () Unit!6937)

(assert (=> b!228255 (= e!148098 Unit!6939)))

(declare-fun res!112374 () Bool)

(declare-fun e!148099 () Bool)

(assert (=> start!22072 (=> (not res!112374) (not e!148099))))

(declare-fun valid!1273 (LongMapFixedSize!3202) Bool)

(assert (=> start!22072 (= res!112374 (valid!1273 thiss!1504))))

(assert (=> start!22072 e!148099))

(declare-fun e!148095 () Bool)

(assert (=> start!22072 e!148095))

(assert (=> start!22072 true))

(declare-fun b!228256 () Bool)

(declare-fun e!148097 () Bool)

(declare-fun call!21214 () Bool)

(assert (=> b!228256 (= e!148097 (not call!21214))))

(declare-fun b!228257 () Bool)

(declare-fun e!148102 () Bool)

(declare-fun tp_is_empty!5989 () Bool)

(assert (=> b!228257 (= e!148102 tp_is_empty!5989)))

(declare-fun b!228258 () Bool)

(declare-fun res!112370 () Bool)

(assert (=> b!228258 (=> (not res!112370) (not e!148099))))

(assert (=> b!228258 (= res!112370 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!10153 () Bool)

(declare-fun mapRes!10153 () Bool)

(assert (=> mapIsEmpty!10153 mapRes!10153))

(declare-fun b!228259 () Bool)

(declare-fun res!112371 () Bool)

(declare-fun e!148100 () Bool)

(assert (=> b!228259 (=> res!112371 e!148100)))

(assert (=> b!228259 (= res!112371 (or (not (= (size!5662 (_values!4243 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10130 thiss!1504)))) (not (= (size!5663 (_keys!6314 thiss!1504)) (size!5662 (_values!4243 thiss!1504)))) (bvslt (mask!10130 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3997 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3997 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!228260 () Bool)

(assert (=> b!228260 (= e!148099 e!148103)))

(declare-fun res!112369 () Bool)

(assert (=> b!228260 (=> (not res!112369) (not e!148103))))

(assert (=> b!228260 (= res!112369 (or (= lt!114882 (MissingZero!916 index!297)) (= lt!114882 (MissingVacant!916 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11222 (_ BitVec 32)) SeekEntryResult!916)

(assert (=> b!228260 (= lt!114882 (seekEntryOrOpen!0 key!932 (_keys!6314 thiss!1504) (mask!10130 thiss!1504)))))

(declare-fun b!228261 () Bool)

(declare-fun res!112375 () Bool)

(assert (=> b!228261 (= res!112375 (= (select (arr!5330 (_keys!6314 thiss!1504)) (index!5837 lt!114882)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!228261 (=> (not res!112375) (not e!148097))))

(declare-fun b!228262 () Bool)

(declare-fun c!37838 () Bool)

(assert (=> b!228262 (= c!37838 (is-MissingVacant!916 lt!114882))))

(declare-fun e!148092 () Bool)

(declare-fun e!148096 () Bool)

(assert (=> b!228262 (= e!148092 e!148096)))

(declare-fun b!228263 () Bool)

(assert (=> b!228263 (= e!148105 (not e!148100))))

(declare-fun res!112366 () Bool)

(assert (=> b!228263 (=> res!112366 e!148100)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228263 (= res!112366 (not (validMask!0 (mask!10130 thiss!1504))))))

(declare-fun lt!114886 () array!11222)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11222 (_ BitVec 32)) Bool)

(assert (=> b!228263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114886 (mask!10130 thiss!1504))))

(declare-fun lt!114887 () Unit!6937)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11222 (_ BitVec 32) (_ BitVec 32)) Unit!6937)

(assert (=> b!228263 (= lt!114887 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6314 thiss!1504) index!297 (mask!10130 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11222 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228263 (= (arrayCountValidKeys!0 lt!114886 #b00000000000000000000000000000000 (size!5663 (_keys!6314 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6314 thiss!1504) #b00000000000000000000000000000000 (size!5663 (_keys!6314 thiss!1504)))))))

(declare-fun lt!114890 () Unit!6937)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11222 (_ BitVec 32) (_ BitVec 64)) Unit!6937)

(assert (=> b!228263 (= lt!114890 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6314 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3428 0))(
  ( (Nil!3425) (Cons!3424 (h!4072 (_ BitVec 64)) (t!8395 List!3428)) )
))
(declare-fun arrayNoDuplicates!0 (array!11222 (_ BitVec 32) List!3428) Bool)

(assert (=> b!228263 (arrayNoDuplicates!0 lt!114886 #b00000000000000000000000000000000 Nil!3425)))

(assert (=> b!228263 (= lt!114886 (array!11223 (store (arr!5330 (_keys!6314 thiss!1504)) index!297 key!932) (size!5663 (_keys!6314 thiss!1504))))))

(declare-fun lt!114888 () Unit!6937)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11222 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3428) Unit!6937)

(assert (=> b!228263 (= lt!114888 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6314 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3425))))

(declare-fun lt!114883 () Unit!6937)

(assert (=> b!228263 (= lt!114883 e!148098)))

(declare-fun c!37841 () Bool)

(declare-fun arrayContainsKey!0 (array!11222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!228263 (= c!37841 (arrayContainsKey!0 (_keys!6314 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228264 () Bool)

(declare-fun e!148091 () Bool)

(assert (=> b!228264 (= e!148091 (and e!148102 mapRes!10153))))

(declare-fun condMapEmpty!10153 () Bool)

(declare-fun mapDefault!10153 () ValueCell!2651)

