; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22130 () Bool)

(assert start!22130)

(declare-fun b!230185 () Bool)

(declare-fun b_free!6185 () Bool)

(declare-fun b_next!6185 () Bool)

(assert (=> b!230185 (= b_free!6185 (not b_next!6185))))

(declare-fun tp!21696 () Bool)

(declare-fun b_and!13101 () Bool)

(assert (=> b!230185 (= tp!21696 b_and!13101)))

(declare-fun b!230176 () Bool)

(declare-fun e!149374 () Bool)

(declare-fun call!21387 () Bool)

(assert (=> b!230176 (= e!149374 (not call!21387))))

(declare-fun b!230177 () Bool)

(declare-fun c!38187 () Bool)

(declare-datatypes ((SeekEntryResult!944 0))(
  ( (MissingZero!944 (index!5946 (_ BitVec 32))) (Found!944 (index!5947 (_ BitVec 32))) (Intermediate!944 (undefined!1756 Bool) (index!5948 (_ BitVec 32)) (x!23436 (_ BitVec 32))) (Undefined!944) (MissingVacant!944 (index!5949 (_ BitVec 32))) )
))
(declare-fun lt!115869 () SeekEntryResult!944)

(assert (=> b!230177 (= c!38187 (is-MissingVacant!944 lt!115869))))

(declare-fun e!149372 () Bool)

(declare-fun e!149373 () Bool)

(assert (=> b!230177 (= e!149372 e!149373)))

(declare-fun b!230178 () Bool)

(declare-fun res!113250 () Bool)

(declare-fun e!149370 () Bool)

(assert (=> b!230178 (=> (not res!113250) (not e!149370))))

(declare-fun call!21388 () Bool)

(assert (=> b!230178 (= res!113250 call!21388)))

(assert (=> b!230178 (= e!149372 e!149370)))

(declare-datatypes ((V!7709 0))(
  ( (V!7710 (val!3068 Int)) )
))
(declare-datatypes ((ValueCell!2680 0))(
  ( (ValueCellFull!2680 (v!5084 V!7709)) (EmptyCell!2680) )
))
(declare-datatypes ((array!11336 0))(
  ( (array!11337 (arr!5387 (Array (_ BitVec 32) ValueCell!2680)) (size!5720 (_ BitVec 32))) )
))
(declare-datatypes ((array!11338 0))(
  ( (array!11339 (arr!5388 (Array (_ BitVec 32) (_ BitVec 64))) (size!5721 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3260 0))(
  ( (LongMapFixedSize!3261 (defaultEntry!4289 Int) (mask!10177 (_ BitVec 32)) (extraKeys!4026 (_ BitVec 32)) (zeroValue!4130 V!7709) (minValue!4130 V!7709) (_size!1679 (_ BitVec 32)) (_keys!6343 array!11338) (_values!4272 array!11336) (_vacant!1679 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3260)

(declare-fun c!38188 () Bool)

(declare-fun bm!21384 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21384 (= call!21388 (inRange!0 (ite c!38188 (index!5946 lt!115869) (index!5949 lt!115869)) (mask!10177 thiss!1504)))))

(declare-fun b!230179 () Bool)

(declare-datatypes ((Unit!7043 0))(
  ( (Unit!7044) )
))
(declare-fun e!149377 () Unit!7043)

(declare-fun Unit!7045 () Unit!7043)

(assert (=> b!230179 (= e!149377 Unit!7045)))

(declare-fun b!230180 () Bool)

(declare-fun e!149378 () Unit!7043)

(declare-fun Unit!7046 () Unit!7043)

(assert (=> b!230180 (= e!149378 Unit!7046)))

(declare-fun lt!115871 () Unit!7043)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!290 (array!11338 array!11336 (_ BitVec 32) (_ BitVec 32) V!7709 V!7709 (_ BitVec 64) Int) Unit!7043)

(assert (=> b!230180 (= lt!115871 (lemmaInListMapThenSeekEntryOrOpenFindsIt!290 (_keys!6343 thiss!1504) (_values!4272 thiss!1504) (mask!10177 thiss!1504) (extraKeys!4026 thiss!1504) (zeroValue!4130 thiss!1504) (minValue!4130 thiss!1504) key!932 (defaultEntry!4289 thiss!1504)))))

(assert (=> b!230180 false))

(declare-fun b!230181 () Bool)

(declare-fun e!149380 () Bool)

(declare-fun e!149381 () Bool)

(assert (=> b!230181 (= e!149380 e!149381)))

(declare-fun res!113246 () Bool)

(assert (=> b!230181 (=> (not res!113246) (not e!149381))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230181 (= res!113246 (inRange!0 index!297 (mask!10177 thiss!1504)))))

(declare-fun lt!115873 () Unit!7043)

(assert (=> b!230181 (= lt!115873 e!149378)))

(declare-fun c!38186 () Bool)

(declare-datatypes ((tuple2!4524 0))(
  ( (tuple2!4525 (_1!2272 (_ BitVec 64)) (_2!2272 V!7709)) )
))
(declare-datatypes ((List!3471 0))(
  ( (Nil!3468) (Cons!3467 (h!4115 tuple2!4524) (t!8438 List!3471)) )
))
(declare-datatypes ((ListLongMap!3451 0))(
  ( (ListLongMap!3452 (toList!1741 List!3471)) )
))
(declare-fun lt!115865 () ListLongMap!3451)

(declare-fun contains!1608 (ListLongMap!3451 (_ BitVec 64)) Bool)

(assert (=> b!230181 (= c!38186 (contains!1608 lt!115865 key!932))))

(declare-fun getCurrentListMap!1264 (array!11338 array!11336 (_ BitVec 32) (_ BitVec 32) V!7709 V!7709 (_ BitVec 32) Int) ListLongMap!3451)

(assert (=> b!230181 (= lt!115865 (getCurrentListMap!1264 (_keys!6343 thiss!1504) (_values!4272 thiss!1504) (mask!10177 thiss!1504) (extraKeys!4026 thiss!1504) (zeroValue!4130 thiss!1504) (minValue!4130 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4289 thiss!1504)))))

(declare-fun b!230182 () Bool)

(assert (=> b!230182 (= e!149381 (not true))))

(declare-fun lt!115868 () array!11338)

(declare-fun v!346 () V!7709)

(declare-fun +!599 (ListLongMap!3451 tuple2!4524) ListLongMap!3451)

(assert (=> b!230182 (= (+!599 lt!115865 (tuple2!4525 key!932 v!346)) (getCurrentListMap!1264 lt!115868 (array!11337 (store (arr!5387 (_values!4272 thiss!1504)) index!297 (ValueCellFull!2680 v!346)) (size!5720 (_values!4272 thiss!1504))) (mask!10177 thiss!1504) (extraKeys!4026 thiss!1504) (zeroValue!4130 thiss!1504) (minValue!4130 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4289 thiss!1504)))))

(declare-fun lt!115872 () Unit!7043)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!58 (array!11338 array!11336 (_ BitVec 32) (_ BitVec 32) V!7709 V!7709 (_ BitVec 32) (_ BitVec 64) V!7709 Int) Unit!7043)

(assert (=> b!230182 (= lt!115872 (lemmaAddValidKeyToArrayThenAddPairToListMap!58 (_keys!6343 thiss!1504) (_values!4272 thiss!1504) (mask!10177 thiss!1504) (extraKeys!4026 thiss!1504) (zeroValue!4130 thiss!1504) (minValue!4130 thiss!1504) index!297 key!932 v!346 (defaultEntry!4289 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11338 (_ BitVec 32)) Bool)

(assert (=> b!230182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115868 (mask!10177 thiss!1504))))

(declare-fun lt!115867 () Unit!7043)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11338 (_ BitVec 32) (_ BitVec 32)) Unit!7043)

(assert (=> b!230182 (= lt!115867 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6343 thiss!1504) index!297 (mask!10177 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11338 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230182 (= (arrayCountValidKeys!0 lt!115868 #b00000000000000000000000000000000 (size!5721 (_keys!6343 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6343 thiss!1504) #b00000000000000000000000000000000 (size!5721 (_keys!6343 thiss!1504)))))))

(declare-fun lt!115864 () Unit!7043)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11338 (_ BitVec 32) (_ BitVec 64)) Unit!7043)

(assert (=> b!230182 (= lt!115864 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6343 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3472 0))(
  ( (Nil!3469) (Cons!3468 (h!4116 (_ BitVec 64)) (t!8439 List!3472)) )
))
(declare-fun arrayNoDuplicates!0 (array!11338 (_ BitVec 32) List!3472) Bool)

(assert (=> b!230182 (arrayNoDuplicates!0 lt!115868 #b00000000000000000000000000000000 Nil!3469)))

(assert (=> b!230182 (= lt!115868 (array!11339 (store (arr!5388 (_keys!6343 thiss!1504)) index!297 key!932) (size!5721 (_keys!6343 thiss!1504))))))

(declare-fun lt!115875 () Unit!7043)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11338 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3472) Unit!7043)

(assert (=> b!230182 (= lt!115875 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6343 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3469))))

(declare-fun lt!115866 () Unit!7043)

(assert (=> b!230182 (= lt!115866 e!149377)))

(declare-fun c!38189 () Bool)

(declare-fun arrayContainsKey!0 (array!11338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!230182 (= c!38189 (arrayContainsKey!0 (_keys!6343 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230183 () Bool)

(declare-fun e!149379 () Bool)

(declare-fun tp_is_empty!6047 () Bool)

(assert (=> b!230183 (= e!149379 tp_is_empty!6047)))

(declare-fun b!230184 () Bool)

(declare-fun e!149376 () Bool)

(declare-fun e!149382 () Bool)

(declare-fun mapRes!10240 () Bool)

(assert (=> b!230184 (= e!149376 (and e!149382 mapRes!10240))))

(declare-fun condMapEmpty!10240 () Bool)

(declare-fun mapDefault!10240 () ValueCell!2680)

