; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22192 () Bool)

(assert start!22192)

(declare-fun b!232044 () Bool)

(declare-fun b_free!6247 () Bool)

(declare-fun b_next!6247 () Bool)

(assert (=> b!232044 (= b_free!6247 (not b_next!6247))))

(declare-fun tp!21882 () Bool)

(declare-fun b_and!13163 () Bool)

(assert (=> b!232044 (= tp!21882 b_and!13163)))

(declare-fun b!232036 () Bool)

(declare-fun e!150674 () Bool)

(assert (=> b!232036 (= e!150674 (not true))))

(declare-datatypes ((array!11460 0))(
  ( (array!11461 (arr!5449 (Array (_ BitVec 32) (_ BitVec 64))) (size!5782 (_ BitVec 32))) )
))
(declare-fun lt!117142 () array!11460)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11460 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232036 (= (arrayCountValidKeys!0 lt!117142 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7157 0))(
  ( (Unit!7158) )
))
(declare-fun lt!117140 () Unit!7157)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11460 (_ BitVec 32)) Unit!7157)

(assert (=> b!232036 (= lt!117140 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117142 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!232036 (arrayContainsKey!0 lt!117142 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117149 () Unit!7157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11460 (_ BitVec 64) (_ BitVec 32)) Unit!7157)

(assert (=> b!232036 (= lt!117149 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117142 key!932 index!297))))

(declare-datatypes ((V!7793 0))(
  ( (V!7794 (val!3099 Int)) )
))
(declare-datatypes ((tuple2!4570 0))(
  ( (tuple2!4571 (_1!2295 (_ BitVec 64)) (_2!2295 V!7793)) )
))
(declare-datatypes ((List!3512 0))(
  ( (Nil!3509) (Cons!3508 (h!4156 tuple2!4570) (t!8479 List!3512)) )
))
(declare-datatypes ((ListLongMap!3497 0))(
  ( (ListLongMap!3498 (toList!1764 List!3512)) )
))
(declare-fun lt!117148 () ListLongMap!3497)

(declare-datatypes ((ValueCell!2711 0))(
  ( (ValueCellFull!2711 (v!5115 V!7793)) (EmptyCell!2711) )
))
(declare-datatypes ((array!11462 0))(
  ( (array!11463 (arr!5450 (Array (_ BitVec 32) ValueCell!2711)) (size!5783 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3322 0))(
  ( (LongMapFixedSize!3323 (defaultEntry!4320 Int) (mask!10230 (_ BitVec 32)) (extraKeys!4057 (_ BitVec 32)) (zeroValue!4161 V!7793) (minValue!4161 V!7793) (_size!1710 (_ BitVec 32)) (_keys!6374 array!11460) (_values!4303 array!11462) (_vacant!1710 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3322)

(declare-fun v!346 () V!7793)

(declare-fun +!617 (ListLongMap!3497 tuple2!4570) ListLongMap!3497)

(declare-fun getCurrentListMap!1287 (array!11460 array!11462 (_ BitVec 32) (_ BitVec 32) V!7793 V!7793 (_ BitVec 32) Int) ListLongMap!3497)

(assert (=> b!232036 (= (+!617 lt!117148 (tuple2!4571 key!932 v!346)) (getCurrentListMap!1287 lt!117142 (array!11463 (store (arr!5450 (_values!4303 thiss!1504)) index!297 (ValueCellFull!2711 v!346)) (size!5783 (_values!4303 thiss!1504))) (mask!10230 thiss!1504) (extraKeys!4057 thiss!1504) (zeroValue!4161 thiss!1504) (minValue!4161 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4320 thiss!1504)))))

(declare-fun lt!117141 () Unit!7157)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!76 (array!11460 array!11462 (_ BitVec 32) (_ BitVec 32) V!7793 V!7793 (_ BitVec 32) (_ BitVec 64) V!7793 Int) Unit!7157)

(assert (=> b!232036 (= lt!117141 (lemmaAddValidKeyToArrayThenAddPairToListMap!76 (_keys!6374 thiss!1504) (_values!4303 thiss!1504) (mask!10230 thiss!1504) (extraKeys!4057 thiss!1504) (zeroValue!4161 thiss!1504) (minValue!4161 thiss!1504) index!297 key!932 v!346 (defaultEntry!4320 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11460 (_ BitVec 32)) Bool)

(assert (=> b!232036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117142 (mask!10230 thiss!1504))))

(declare-fun lt!117138 () Unit!7157)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11460 (_ BitVec 32) (_ BitVec 32)) Unit!7157)

(assert (=> b!232036 (= lt!117138 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6374 thiss!1504) index!297 (mask!10230 thiss!1504)))))

(assert (=> b!232036 (= (arrayCountValidKeys!0 lt!117142 #b00000000000000000000000000000000 (size!5782 (_keys!6374 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6374 thiss!1504) #b00000000000000000000000000000000 (size!5782 (_keys!6374 thiss!1504)))))))

(declare-fun lt!117137 () Unit!7157)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11460 (_ BitVec 32) (_ BitVec 64)) Unit!7157)

(assert (=> b!232036 (= lt!117137 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6374 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3513 0))(
  ( (Nil!3510) (Cons!3509 (h!4157 (_ BitVec 64)) (t!8480 List!3513)) )
))
(declare-fun arrayNoDuplicates!0 (array!11460 (_ BitVec 32) List!3513) Bool)

(assert (=> b!232036 (arrayNoDuplicates!0 lt!117142 #b00000000000000000000000000000000 Nil!3510)))

(assert (=> b!232036 (= lt!117142 (array!11461 (store (arr!5449 (_keys!6374 thiss!1504)) index!297 key!932) (size!5782 (_keys!6374 thiss!1504))))))

(declare-fun lt!117139 () Unit!7157)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11460 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3513) Unit!7157)

(assert (=> b!232036 (= lt!117139 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6374 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3510))))

(declare-fun lt!117145 () Unit!7157)

(declare-fun e!150685 () Unit!7157)

(assert (=> b!232036 (= lt!117145 e!150685)))

(declare-fun c!38558 () Bool)

(assert (=> b!232036 (= c!38558 (arrayContainsKey!0 (_keys!6374 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232037 () Bool)

(declare-fun res!113990 () Bool)

(declare-fun e!150675 () Bool)

(assert (=> b!232037 (=> (not res!113990) (not e!150675))))

(assert (=> b!232037 (= res!113990 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232038 () Bool)

(declare-fun e!150673 () Bool)

(declare-fun e!150678 () Bool)

(declare-fun mapRes!10333 () Bool)

(assert (=> b!232038 (= e!150673 (and e!150678 mapRes!10333))))

(declare-fun condMapEmpty!10333 () Bool)

(declare-fun mapDefault!10333 () ValueCell!2711)

