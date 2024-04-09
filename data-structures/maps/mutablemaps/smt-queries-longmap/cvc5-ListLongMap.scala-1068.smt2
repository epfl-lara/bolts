; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22102 () Bool)

(assert start!22102)

(declare-fun b!229301 () Bool)

(declare-fun b_free!6157 () Bool)

(declare-fun b_next!6157 () Bool)

(assert (=> b!229301 (= b_free!6157 (not b_next!6157))))

(declare-fun tp!21613 () Bool)

(declare-fun b_and!13073 () Bool)

(assert (=> b!229301 (= tp!21613 b_and!13073)))

(declare-fun b!229288 () Bool)

(declare-fun e!148766 () Bool)

(declare-fun e!148768 () Bool)

(assert (=> b!229288 (= e!148766 (not e!148768))))

(declare-fun res!112862 () Bool)

(assert (=> b!229288 (=> res!112862 e!148768)))

(declare-datatypes ((V!7673 0))(
  ( (V!7674 (val!3054 Int)) )
))
(declare-datatypes ((ValueCell!2666 0))(
  ( (ValueCellFull!2666 (v!5070 V!7673)) (EmptyCell!2666) )
))
(declare-datatypes ((array!11280 0))(
  ( (array!11281 (arr!5359 (Array (_ BitVec 32) ValueCell!2666)) (size!5692 (_ BitVec 32))) )
))
(declare-datatypes ((array!11282 0))(
  ( (array!11283 (arr!5360 (Array (_ BitVec 32) (_ BitVec 64))) (size!5693 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3232 0))(
  ( (LongMapFixedSize!3233 (defaultEntry!4275 Int) (mask!10155 (_ BitVec 32)) (extraKeys!4012 (_ BitVec 32)) (zeroValue!4116 V!7673) (minValue!4116 V!7673) (_size!1665 (_ BitVec 32)) (_keys!6329 array!11282) (_values!4258 array!11280) (_vacant!1665 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3232)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229288 (= res!112862 (not (validMask!0 (mask!10155 thiss!1504))))))

(declare-fun lt!115378 () array!11282)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11282 (_ BitVec 32)) Bool)

(assert (=> b!229288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115378 (mask!10155 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((Unit!6991 0))(
  ( (Unit!6992) )
))
(declare-fun lt!115385 () Unit!6991)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11282 (_ BitVec 32) (_ BitVec 32)) Unit!6991)

(assert (=> b!229288 (= lt!115385 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6329 thiss!1504) index!297 (mask!10155 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11282 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229288 (= (arrayCountValidKeys!0 lt!115378 #b00000000000000000000000000000000 (size!5693 (_keys!6329 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6329 thiss!1504) #b00000000000000000000000000000000 (size!5693 (_keys!6329 thiss!1504)))))))

(declare-fun lt!115384 () Unit!6991)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11282 (_ BitVec 32) (_ BitVec 64)) Unit!6991)

(assert (=> b!229288 (= lt!115384 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6329 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3451 0))(
  ( (Nil!3448) (Cons!3447 (h!4095 (_ BitVec 64)) (t!8418 List!3451)) )
))
(declare-fun arrayNoDuplicates!0 (array!11282 (_ BitVec 32) List!3451) Bool)

(assert (=> b!229288 (arrayNoDuplicates!0 lt!115378 #b00000000000000000000000000000000 Nil!3448)))

(assert (=> b!229288 (= lt!115378 (array!11283 (store (arr!5360 (_keys!6329 thiss!1504)) index!297 key!932) (size!5693 (_keys!6329 thiss!1504))))))

(declare-fun lt!115376 () Unit!6991)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3451) Unit!6991)

(assert (=> b!229288 (= lt!115376 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6329 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3448))))

(declare-fun lt!115382 () Unit!6991)

(declare-fun e!148776 () Unit!6991)

(assert (=> b!229288 (= lt!115382 e!148776)))

(declare-fun c!38020 () Bool)

(declare-fun arrayContainsKey!0 (array!11282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!229288 (= c!38020 (arrayContainsKey!0 (_keys!6329 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!21300 () Bool)

(declare-fun call!21303 () Bool)

(assert (=> bm!21300 (= call!21303 (arrayContainsKey!0 (_keys!6329 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229289 () Bool)

(declare-fun res!112866 () Bool)

(declare-fun e!148780 () Bool)

(assert (=> b!229289 (=> (not res!112866) (not e!148780))))

(declare-fun call!21304 () Bool)

(assert (=> b!229289 (= res!112866 call!21304)))

(declare-fun e!148773 () Bool)

(assert (=> b!229289 (= e!148773 e!148780)))

(declare-fun b!229290 () Bool)

(declare-fun res!112867 () Bool)

(declare-datatypes ((SeekEntryResult!930 0))(
  ( (MissingZero!930 (index!5890 (_ BitVec 32))) (Found!930 (index!5891 (_ BitVec 32))) (Intermediate!930 (undefined!1742 Bool) (index!5892 (_ BitVec 32)) (x!23390 (_ BitVec 32))) (Undefined!930) (MissingVacant!930 (index!5893 (_ BitVec 32))) )
))
(declare-fun lt!115386 () SeekEntryResult!930)

(assert (=> b!229290 (= res!112867 (= (select (arr!5360 (_keys!6329 thiss!1504)) (index!5893 lt!115386)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148767 () Bool)

(assert (=> b!229290 (=> (not res!112867) (not e!148767))))

(declare-fun b!229291 () Bool)

(declare-fun e!148777 () Unit!6991)

(declare-fun Unit!6993 () Unit!6991)

(assert (=> b!229291 (= e!148777 Unit!6993)))

(declare-fun lt!115377 () Unit!6991)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!281 (array!11282 array!11280 (_ BitVec 32) (_ BitVec 32) V!7673 V!7673 (_ BitVec 64) Int) Unit!6991)

(assert (=> b!229291 (= lt!115377 (lemmaInListMapThenSeekEntryOrOpenFindsIt!281 (_keys!6329 thiss!1504) (_values!4258 thiss!1504) (mask!10155 thiss!1504) (extraKeys!4012 thiss!1504) (zeroValue!4116 thiss!1504) (minValue!4116 thiss!1504) key!932 (defaultEntry!4275 thiss!1504)))))

(assert (=> b!229291 false))

(declare-fun b!229292 () Bool)

(assert (=> b!229292 (= e!148768 true)))

(declare-fun lt!115383 () Bool)

(assert (=> b!229292 (= lt!115383 (arrayNoDuplicates!0 (_keys!6329 thiss!1504) #b00000000000000000000000000000000 Nil!3448))))

(declare-fun b!229293 () Bool)

(declare-fun e!148779 () Bool)

(assert (=> b!229293 (= e!148779 (is-Undefined!930 lt!115386))))

(declare-fun b!229294 () Bool)

(declare-fun e!148770 () Bool)

(declare-fun e!148771 () Bool)

(declare-fun mapRes!10198 () Bool)

(assert (=> b!229294 (= e!148770 (and e!148771 mapRes!10198))))

(declare-fun condMapEmpty!10198 () Bool)

(declare-fun mapDefault!10198 () ValueCell!2666)

