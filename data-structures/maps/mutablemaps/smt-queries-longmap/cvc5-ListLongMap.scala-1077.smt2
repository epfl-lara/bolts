; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22156 () Bool)

(assert start!22156)

(declare-fun b!230975 () Bool)

(declare-fun b_free!6211 () Bool)

(declare-fun b_next!6211 () Bool)

(assert (=> b!230975 (= b_free!6211 (not b_next!6211))))

(declare-fun tp!21774 () Bool)

(declare-fun b_and!13127 () Bool)

(assert (=> b!230975 (= tp!21774 b_and!13127)))

(declare-fun b!230956 () Bool)

(declare-datatypes ((Unit!7087 0))(
  ( (Unit!7088) )
))
(declare-fun e!149928 () Unit!7087)

(declare-fun Unit!7089 () Unit!7087)

(assert (=> b!230956 (= e!149928 Unit!7089)))

(declare-fun b!230957 () Bool)

(declare-fun res!113560 () Bool)

(declare-fun e!149929 () Bool)

(assert (=> b!230957 (=> (not res!113560) (not e!149929))))

(declare-fun call!21466 () Bool)

(assert (=> b!230957 (= res!113560 call!21466)))

(declare-fun e!149925 () Bool)

(assert (=> b!230957 (= e!149925 e!149929)))

(declare-fun b!230958 () Bool)

(declare-fun e!149919 () Bool)

(declare-fun e!149922 () Bool)

(assert (=> b!230958 (= e!149919 e!149922)))

(declare-fun res!113557 () Bool)

(assert (=> b!230958 (=> (not res!113557) (not e!149922))))

(declare-datatypes ((SeekEntryResult!955 0))(
  ( (MissingZero!955 (index!5990 (_ BitVec 32))) (Found!955 (index!5991 (_ BitVec 32))) (Intermediate!955 (undefined!1767 Bool) (index!5992 (_ BitVec 32)) (x!23487 (_ BitVec 32))) (Undefined!955) (MissingVacant!955 (index!5993 (_ BitVec 32))) )
))
(declare-fun lt!116388 () SeekEntryResult!955)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230958 (= res!113557 (or (= lt!116388 (MissingZero!955 index!297)) (= lt!116388 (MissingVacant!955 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7745 0))(
  ( (V!7746 (val!3081 Int)) )
))
(declare-datatypes ((ValueCell!2693 0))(
  ( (ValueCellFull!2693 (v!5097 V!7745)) (EmptyCell!2693) )
))
(declare-datatypes ((array!11388 0))(
  ( (array!11389 (arr!5413 (Array (_ BitVec 32) ValueCell!2693)) (size!5746 (_ BitVec 32))) )
))
(declare-datatypes ((array!11390 0))(
  ( (array!11391 (arr!5414 (Array (_ BitVec 32) (_ BitVec 64))) (size!5747 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3286 0))(
  ( (LongMapFixedSize!3287 (defaultEntry!4302 Int) (mask!10200 (_ BitVec 32)) (extraKeys!4039 (_ BitVec 32)) (zeroValue!4143 V!7745) (minValue!4143 V!7745) (_size!1692 (_ BitVec 32)) (_keys!6356 array!11390) (_values!4285 array!11388) (_vacant!1692 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3286)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11390 (_ BitVec 32)) SeekEntryResult!955)

(assert (=> b!230958 (= lt!116388 (seekEntryOrOpen!0 key!932 (_keys!6356 thiss!1504) (mask!10200 thiss!1504)))))

(declare-fun b!230959 () Bool)

(declare-fun e!149926 () Bool)

(declare-fun tp_is_empty!6073 () Bool)

(assert (=> b!230959 (= e!149926 tp_is_empty!6073)))

(declare-fun b!230960 () Bool)

(declare-fun e!149917 () Bool)

(declare-fun call!21465 () Bool)

(assert (=> b!230960 (= e!149917 (not call!21465))))

(declare-fun b!230961 () Bool)

(declare-fun e!149923 () Bool)

(assert (=> b!230961 (= e!149923 e!149917)))

(declare-fun res!113561 () Bool)

(assert (=> b!230961 (= res!113561 call!21466)))

(assert (=> b!230961 (=> (not res!113561) (not e!149917))))

(declare-fun bm!21462 () Bool)

(declare-fun arrayContainsKey!0 (array!11390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21462 (= call!21465 (arrayContainsKey!0 (_keys!6356 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230962 () Bool)

(declare-fun c!38343 () Bool)

(assert (=> b!230962 (= c!38343 (is-MissingVacant!955 lt!116388))))

(assert (=> b!230962 (= e!149925 e!149923)))

(declare-fun b!230964 () Bool)

(declare-fun e!149924 () Bool)

(assert (=> b!230964 (= e!149922 e!149924)))

(declare-fun res!113558 () Bool)

(assert (=> b!230964 (=> (not res!113558) (not e!149924))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!230964 (= res!113558 (inRange!0 index!297 (mask!10200 thiss!1504)))))

(declare-fun lt!116392 () Unit!7087)

(declare-fun e!149916 () Unit!7087)

(assert (=> b!230964 (= lt!116392 e!149916)))

(declare-fun c!38344 () Bool)

(declare-datatypes ((tuple2!4542 0))(
  ( (tuple2!4543 (_1!2281 (_ BitVec 64)) (_2!2281 V!7745)) )
))
(declare-datatypes ((List!3486 0))(
  ( (Nil!3483) (Cons!3482 (h!4130 tuple2!4542) (t!8453 List!3486)) )
))
(declare-datatypes ((ListLongMap!3469 0))(
  ( (ListLongMap!3470 (toList!1750 List!3486)) )
))
(declare-fun lt!116389 () ListLongMap!3469)

(declare-fun contains!1616 (ListLongMap!3469 (_ BitVec 64)) Bool)

(assert (=> b!230964 (= c!38344 (contains!1616 lt!116389 key!932))))

(declare-fun getCurrentListMap!1273 (array!11390 array!11388 (_ BitVec 32) (_ BitVec 32) V!7745 V!7745 (_ BitVec 32) Int) ListLongMap!3469)

(assert (=> b!230964 (= lt!116389 (getCurrentListMap!1273 (_keys!6356 thiss!1504) (_values!4285 thiss!1504) (mask!10200 thiss!1504) (extraKeys!4039 thiss!1504) (zeroValue!4143 thiss!1504) (minValue!4143 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4302 thiss!1504)))))

(declare-fun mapIsEmpty!10279 () Bool)

(declare-fun mapRes!10279 () Bool)

(assert (=> mapIsEmpty!10279 mapRes!10279))

(declare-fun b!230965 () Bool)

(declare-fun Unit!7090 () Unit!7087)

(assert (=> b!230965 (= e!149916 Unit!7090)))

(declare-fun lt!116391 () Unit!7087)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!297 (array!11390 array!11388 (_ BitVec 32) (_ BitVec 32) V!7745 V!7745 (_ BitVec 64) Int) Unit!7087)

(assert (=> b!230965 (= lt!116391 (lemmaInListMapThenSeekEntryOrOpenFindsIt!297 (_keys!6356 thiss!1504) (_values!4285 thiss!1504) (mask!10200 thiss!1504) (extraKeys!4039 thiss!1504) (zeroValue!4143 thiss!1504) (minValue!4143 thiss!1504) key!932 (defaultEntry!4302 thiss!1504)))))

(assert (=> b!230965 false))

(declare-fun b!230966 () Bool)

(declare-fun res!113563 () Bool)

(assert (=> b!230966 (=> (not res!113563) (not e!149919))))

(assert (=> b!230966 (= res!113563 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230967 () Bool)

(assert (=> b!230967 (= e!149924 (not true))))

(declare-fun lt!116381 () array!11390)

(declare-fun arrayCountValidKeys!0 (array!11390 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230967 (= (arrayCountValidKeys!0 lt!116381 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116387 () Unit!7087)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11390 (_ BitVec 32)) Unit!7087)

(assert (=> b!230967 (= lt!116387 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116381 index!297))))

(assert (=> b!230967 (arrayContainsKey!0 lt!116381 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116386 () Unit!7087)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11390 (_ BitVec 64) (_ BitVec 32)) Unit!7087)

(assert (=> b!230967 (= lt!116386 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116381 key!932 index!297))))

(declare-fun v!346 () V!7745)

(declare-fun +!605 (ListLongMap!3469 tuple2!4542) ListLongMap!3469)

(assert (=> b!230967 (= (+!605 lt!116389 (tuple2!4543 key!932 v!346)) (getCurrentListMap!1273 lt!116381 (array!11389 (store (arr!5413 (_values!4285 thiss!1504)) index!297 (ValueCellFull!2693 v!346)) (size!5746 (_values!4285 thiss!1504))) (mask!10200 thiss!1504) (extraKeys!4039 thiss!1504) (zeroValue!4143 thiss!1504) (minValue!4143 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4302 thiss!1504)))))

(declare-fun lt!116383 () Unit!7087)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!64 (array!11390 array!11388 (_ BitVec 32) (_ BitVec 32) V!7745 V!7745 (_ BitVec 32) (_ BitVec 64) V!7745 Int) Unit!7087)

(assert (=> b!230967 (= lt!116383 (lemmaAddValidKeyToArrayThenAddPairToListMap!64 (_keys!6356 thiss!1504) (_values!4285 thiss!1504) (mask!10200 thiss!1504) (extraKeys!4039 thiss!1504) (zeroValue!4143 thiss!1504) (minValue!4143 thiss!1504) index!297 key!932 v!346 (defaultEntry!4302 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11390 (_ BitVec 32)) Bool)

(assert (=> b!230967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116381 (mask!10200 thiss!1504))))

(declare-fun lt!116390 () Unit!7087)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11390 (_ BitVec 32) (_ BitVec 32)) Unit!7087)

(assert (=> b!230967 (= lt!116390 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6356 thiss!1504) index!297 (mask!10200 thiss!1504)))))

(assert (=> b!230967 (= (arrayCountValidKeys!0 lt!116381 #b00000000000000000000000000000000 (size!5747 (_keys!6356 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6356 thiss!1504) #b00000000000000000000000000000000 (size!5747 (_keys!6356 thiss!1504)))))))

(declare-fun lt!116393 () Unit!7087)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11390 (_ BitVec 32) (_ BitVec 64)) Unit!7087)

(assert (=> b!230967 (= lt!116393 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6356 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3487 0))(
  ( (Nil!3484) (Cons!3483 (h!4131 (_ BitVec 64)) (t!8454 List!3487)) )
))
(declare-fun arrayNoDuplicates!0 (array!11390 (_ BitVec 32) List!3487) Bool)

(assert (=> b!230967 (arrayNoDuplicates!0 lt!116381 #b00000000000000000000000000000000 Nil!3484)))

(assert (=> b!230967 (= lt!116381 (array!11391 (store (arr!5414 (_keys!6356 thiss!1504)) index!297 key!932) (size!5747 (_keys!6356 thiss!1504))))))

(declare-fun lt!116385 () Unit!7087)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11390 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3487) Unit!7087)

(assert (=> b!230967 (= lt!116385 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6356 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3484))))

(declare-fun lt!116382 () Unit!7087)

(assert (=> b!230967 (= lt!116382 e!149928)))

(declare-fun c!38345 () Bool)

(assert (=> b!230967 (= c!38345 (arrayContainsKey!0 (_keys!6356 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230968 () Bool)

(declare-fun res!113559 () Bool)

(assert (=> b!230968 (=> (not res!113559) (not e!149929))))

(assert (=> b!230968 (= res!113559 (= (select (arr!5414 (_keys!6356 thiss!1504)) (index!5990 lt!116388)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230969 () Bool)

(declare-fun e!149918 () Bool)

(assert (=> b!230969 (= e!149918 tp_is_empty!6073)))

(declare-fun b!230970 () Bool)

(declare-fun Unit!7091 () Unit!7087)

(assert (=> b!230970 (= e!149928 Unit!7091)))

(declare-fun lt!116384 () Unit!7087)

(declare-fun lemmaArrayContainsKeyThenInListMap!130 (array!11390 array!11388 (_ BitVec 32) (_ BitVec 32) V!7745 V!7745 (_ BitVec 64) (_ BitVec 32) Int) Unit!7087)

(assert (=> b!230970 (= lt!116384 (lemmaArrayContainsKeyThenInListMap!130 (_keys!6356 thiss!1504) (_values!4285 thiss!1504) (mask!10200 thiss!1504) (extraKeys!4039 thiss!1504) (zeroValue!4143 thiss!1504) (minValue!4143 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4302 thiss!1504)))))

(assert (=> b!230970 false))

(declare-fun res!113556 () Bool)

(assert (=> start!22156 (=> (not res!113556) (not e!149919))))

(declare-fun valid!1298 (LongMapFixedSize!3286) Bool)

(assert (=> start!22156 (= res!113556 (valid!1298 thiss!1504))))

(assert (=> start!22156 e!149919))

(declare-fun e!149921 () Bool)

(assert (=> start!22156 e!149921))

(assert (=> start!22156 true))

(assert (=> start!22156 tp_is_empty!6073))

(declare-fun b!230963 () Bool)

(assert (=> b!230963 (= e!149929 (not call!21465))))

(declare-fun b!230971 () Bool)

(assert (=> b!230971 (= e!149923 (is-Undefined!955 lt!116388))))

(declare-fun bm!21463 () Bool)

(declare-fun c!38342 () Bool)

(assert (=> bm!21463 (= call!21466 (inRange!0 (ite c!38342 (index!5990 lt!116388) (index!5993 lt!116388)) (mask!10200 thiss!1504)))))

(declare-fun b!230972 () Bool)

(declare-fun e!149920 () Bool)

(assert (=> b!230972 (= e!149920 (and e!149926 mapRes!10279))))

(declare-fun condMapEmpty!10279 () Bool)

(declare-fun mapDefault!10279 () ValueCell!2693)

