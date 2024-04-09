; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22088 () Bool)

(assert start!22088)

(declare-fun b!228812 () Bool)

(declare-fun b_free!6143 () Bool)

(declare-fun b_next!6143 () Bool)

(assert (=> b!228812 (= b_free!6143 (not b_next!6143))))

(declare-fun tp!21571 () Bool)

(declare-fun b_and!13059 () Bool)

(assert (=> b!228812 (= tp!21571 b_and!13059)))

(declare-fun b!228805 () Bool)

(declare-fun res!112637 () Bool)

(declare-fun e!148451 () Bool)

(assert (=> b!228805 (=> res!112637 e!148451)))

(declare-datatypes ((V!7653 0))(
  ( (V!7654 (val!3047 Int)) )
))
(declare-datatypes ((ValueCell!2659 0))(
  ( (ValueCellFull!2659 (v!5063 V!7653)) (EmptyCell!2659) )
))
(declare-datatypes ((array!11252 0))(
  ( (array!11253 (arr!5345 (Array (_ BitVec 32) ValueCell!2659)) (size!5678 (_ BitVec 32))) )
))
(declare-datatypes ((array!11254 0))(
  ( (array!11255 (arr!5346 (Array (_ BitVec 32) (_ BitVec 64))) (size!5679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3218 0))(
  ( (LongMapFixedSize!3219 (defaultEntry!4268 Int) (mask!10142 (_ BitVec 32)) (extraKeys!4005 (_ BitVec 32)) (zeroValue!4109 V!7653) (minValue!4109 V!7653) (_size!1658 (_ BitVec 32)) (_keys!6322 array!11254) (_values!4251 array!11252) (_vacant!1658 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3218)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11254 (_ BitVec 32)) Bool)

(assert (=> b!228805 (= res!112637 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6322 thiss!1504) (mask!10142 thiss!1504))))))

(declare-fun b!228806 () Bool)

(declare-fun res!112636 () Bool)

(declare-fun e!148463 () Bool)

(assert (=> b!228806 (=> (not res!112636) (not e!148463))))

(declare-fun call!21262 () Bool)

(assert (=> b!228806 (= res!112636 call!21262)))

(declare-fun e!148462 () Bool)

(assert (=> b!228806 (= e!148462 e!148463)))

(declare-fun mapIsEmpty!10177 () Bool)

(declare-fun mapRes!10177 () Bool)

(assert (=> mapIsEmpty!10177 mapRes!10177))

(declare-fun b!228807 () Bool)

(declare-fun res!112638 () Bool)

(declare-fun e!148454 () Bool)

(assert (=> b!228807 (=> (not res!112638) (not e!148454))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!228807 (= res!112638 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!228808 () Bool)

(declare-datatypes ((Unit!6965 0))(
  ( (Unit!6966) )
))
(declare-fun e!148460 () Unit!6965)

(declare-fun lt!115147 () Unit!6965)

(assert (=> b!228808 (= e!148460 lt!115147)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!289 (array!11254 array!11252 (_ BitVec 32) (_ BitVec 32) V!7653 V!7653 (_ BitVec 64) Int) Unit!6965)

(assert (=> b!228808 (= lt!115147 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!289 (_keys!6322 thiss!1504) (_values!4251 thiss!1504) (mask!10142 thiss!1504) (extraKeys!4005 thiss!1504) (zeroValue!4109 thiss!1504) (minValue!4109 thiss!1504) key!932 (defaultEntry!4268 thiss!1504)))))

(declare-fun c!37937 () Bool)

(declare-datatypes ((SeekEntryResult!923 0))(
  ( (MissingZero!923 (index!5862 (_ BitVec 32))) (Found!923 (index!5863 (_ BitVec 32))) (Intermediate!923 (undefined!1735 Bool) (index!5864 (_ BitVec 32)) (x!23359 (_ BitVec 32))) (Undefined!923) (MissingVacant!923 (index!5865 (_ BitVec 32))) )
))
(declare-fun lt!115146 () SeekEntryResult!923)

(assert (=> b!228808 (= c!37937 (is-MissingZero!923 lt!115146))))

(assert (=> b!228808 e!148462))

(declare-fun b!228809 () Bool)

(declare-fun Unit!6967 () Unit!6965)

(assert (=> b!228809 (= e!148460 Unit!6967)))

(declare-fun lt!115152 () Unit!6965)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!277 (array!11254 array!11252 (_ BitVec 32) (_ BitVec 32) V!7653 V!7653 (_ BitVec 64) Int) Unit!6965)

(assert (=> b!228809 (= lt!115152 (lemmaInListMapThenSeekEntryOrOpenFindsIt!277 (_keys!6322 thiss!1504) (_values!4251 thiss!1504) (mask!10142 thiss!1504) (extraKeys!4005 thiss!1504) (zeroValue!4109 thiss!1504) (minValue!4109 thiss!1504) key!932 (defaultEntry!4268 thiss!1504)))))

(assert (=> b!228809 false))

(declare-fun b!228810 () Bool)

(declare-fun e!148456 () Bool)

(assert (=> b!228810 (= e!148456 (not e!148451))))

(declare-fun res!112630 () Bool)

(assert (=> b!228810 (=> res!112630 e!148451)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228810 (= res!112630 (not (validMask!0 (mask!10142 thiss!1504))))))

(declare-fun lt!115150 () array!11254)

(assert (=> b!228810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115150 (mask!10142 thiss!1504))))

(declare-fun lt!115155 () Unit!6965)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11254 (_ BitVec 32) (_ BitVec 32)) Unit!6965)

(assert (=> b!228810 (= lt!115155 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6322 thiss!1504) index!297 (mask!10142 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11254 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228810 (= (arrayCountValidKeys!0 lt!115150 #b00000000000000000000000000000000 (size!5679 (_keys!6322 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6322 thiss!1504) #b00000000000000000000000000000000 (size!5679 (_keys!6322 thiss!1504)))))))

(declare-fun lt!115148 () Unit!6965)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11254 (_ BitVec 32) (_ BitVec 64)) Unit!6965)

(assert (=> b!228810 (= lt!115148 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6322 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3439 0))(
  ( (Nil!3436) (Cons!3435 (h!4083 (_ BitVec 64)) (t!8406 List!3439)) )
))
(declare-fun arrayNoDuplicates!0 (array!11254 (_ BitVec 32) List!3439) Bool)

(assert (=> b!228810 (arrayNoDuplicates!0 lt!115150 #b00000000000000000000000000000000 Nil!3436)))

(assert (=> b!228810 (= lt!115150 (array!11255 (store (arr!5346 (_keys!6322 thiss!1504)) index!297 key!932) (size!5679 (_keys!6322 thiss!1504))))))

(declare-fun lt!115154 () Unit!6965)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11254 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3439) Unit!6965)

(assert (=> b!228810 (= lt!115154 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6322 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3436))))

(declare-fun lt!115145 () Unit!6965)

(declare-fun e!148457 () Unit!6965)

(assert (=> b!228810 (= lt!115145 e!148457)))

(declare-fun c!37936 () Bool)

(declare-fun arrayContainsKey!0 (array!11254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!228810 (= c!37936 (arrayContainsKey!0 (_keys!6322 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228811 () Bool)

(declare-fun e!148465 () Bool)

(assert (=> b!228811 (= e!148465 e!148456)))

(declare-fun res!112632 () Bool)

(assert (=> b!228811 (=> (not res!112632) (not e!148456))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!228811 (= res!112632 (inRange!0 index!297 (mask!10142 thiss!1504)))))

(declare-fun lt!115149 () Unit!6965)

(assert (=> b!228811 (= lt!115149 e!148460)))

(declare-fun c!37935 () Bool)

(declare-datatypes ((tuple2!4492 0))(
  ( (tuple2!4493 (_1!2256 (_ BitVec 64)) (_2!2256 V!7653)) )
))
(declare-datatypes ((List!3440 0))(
  ( (Nil!3437) (Cons!3436 (h!4084 tuple2!4492) (t!8407 List!3440)) )
))
(declare-datatypes ((ListLongMap!3419 0))(
  ( (ListLongMap!3420 (toList!1725 List!3440)) )
))
(declare-fun contains!1593 (ListLongMap!3419 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1248 (array!11254 array!11252 (_ BitVec 32) (_ BitVec 32) V!7653 V!7653 (_ BitVec 32) Int) ListLongMap!3419)

(assert (=> b!228811 (= c!37935 (contains!1593 (getCurrentListMap!1248 (_keys!6322 thiss!1504) (_values!4251 thiss!1504) (mask!10142 thiss!1504) (extraKeys!4005 thiss!1504) (zeroValue!4109 thiss!1504) (minValue!4109 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4268 thiss!1504)) key!932))))

(declare-fun e!148461 () Bool)

(declare-fun e!148459 () Bool)

(declare-fun tp_is_empty!6005 () Bool)

(declare-fun array_inv!3521 (array!11254) Bool)

(declare-fun array_inv!3522 (array!11252) Bool)

(assert (=> b!228812 (= e!148461 (and tp!21571 tp_is_empty!6005 (array_inv!3521 (_keys!6322 thiss!1504)) (array_inv!3522 (_values!4251 thiss!1504)) e!148459))))

(declare-fun b!228814 () Bool)

(declare-fun e!148455 () Bool)

(assert (=> b!228814 (= e!148455 tp_is_empty!6005)))

(declare-fun b!228815 () Bool)

(assert (=> b!228815 (= e!148454 e!148465)))

(declare-fun res!112631 () Bool)

(assert (=> b!228815 (=> (not res!112631) (not e!148465))))

(assert (=> b!228815 (= res!112631 (or (= lt!115146 (MissingZero!923 index!297)) (= lt!115146 (MissingVacant!923 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11254 (_ BitVec 32)) SeekEntryResult!923)

(assert (=> b!228815 (= lt!115146 (seekEntryOrOpen!0 key!932 (_keys!6322 thiss!1504) (mask!10142 thiss!1504)))))

(declare-fun b!228816 () Bool)

(declare-fun c!37934 () Bool)

(assert (=> b!228816 (= c!37934 (is-MissingVacant!923 lt!115146))))

(declare-fun e!148458 () Bool)

(assert (=> b!228816 (= e!148462 e!148458)))

(declare-fun b!228817 () Bool)

(assert (=> b!228817 (= e!148451 true)))

(declare-fun lt!115153 () Bool)

(assert (=> b!228817 (= lt!115153 (arrayNoDuplicates!0 (_keys!6322 thiss!1504) #b00000000000000000000000000000000 Nil!3436))))

(declare-fun b!228818 () Bool)

(assert (=> b!228818 (= e!148458 (is-Undefined!923 lt!115146))))

(declare-fun b!228819 () Bool)

(declare-fun res!112639 () Bool)

(assert (=> b!228819 (= res!112639 (= (select (arr!5346 (_keys!6322 thiss!1504)) (index!5865 lt!115146)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148453 () Bool)

(assert (=> b!228819 (=> (not res!112639) (not e!148453))))

(declare-fun b!228820 () Bool)

(declare-fun call!21261 () Bool)

(assert (=> b!228820 (= e!148453 (not call!21261))))

(declare-fun bm!21258 () Bool)

(assert (=> bm!21258 (= call!21261 (arrayContainsKey!0 (_keys!6322 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228821 () Bool)

(declare-fun e!148452 () Bool)

(assert (=> b!228821 (= e!148459 (and e!148452 mapRes!10177))))

(declare-fun condMapEmpty!10177 () Bool)

(declare-fun mapDefault!10177 () ValueCell!2659)

