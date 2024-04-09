; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24482 () Bool)

(assert start!24482)

(declare-fun b!256322 () Bool)

(declare-fun b_free!6719 () Bool)

(declare-fun b_next!6719 () Bool)

(assert (=> b!256322 (= b_free!6719 (not b_next!6719))))

(declare-fun tp!23456 () Bool)

(declare-fun b_and!13795 () Bool)

(assert (=> b!256322 (= tp!23456 b_and!13795)))

(declare-fun b!256312 () Bool)

(declare-fun e!166173 () Bool)

(declare-datatypes ((SeekEntryResult!1173 0))(
  ( (MissingZero!1173 (index!6862 (_ BitVec 32))) (Found!1173 (index!6863 (_ BitVec 32))) (Intermediate!1173 (undefined!1985 Bool) (index!6864 (_ BitVec 32)) (x!24969 (_ BitVec 32))) (Undefined!1173) (MissingVacant!1173 (index!6865 (_ BitVec 32))) )
))
(declare-fun lt!128731 () SeekEntryResult!1173)

(assert (=> b!256312 (= e!166173 (is-Undefined!1173 lt!128731))))

(declare-fun mapIsEmpty!11199 () Bool)

(declare-fun mapRes!11199 () Bool)

(assert (=> mapIsEmpty!11199 mapRes!11199))

(declare-fun b!256313 () Bool)

(declare-fun res!125416 () Bool)

(declare-datatypes ((V!8421 0))(
  ( (V!8422 (val!3335 Int)) )
))
(declare-datatypes ((ValueCell!2947 0))(
  ( (ValueCellFull!2947 (v!5417 V!8421)) (EmptyCell!2947) )
))
(declare-datatypes ((array!12500 0))(
  ( (array!12501 (arr!5921 (Array (_ BitVec 32) ValueCell!2947)) (size!6268 (_ BitVec 32))) )
))
(declare-datatypes ((array!12502 0))(
  ( (array!12503 (arr!5922 (Array (_ BitVec 32) (_ BitVec 64))) (size!6269 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3794 0))(
  ( (LongMapFixedSize!3795 (defaultEntry!4730 Int) (mask!11002 (_ BitVec 32)) (extraKeys!4467 (_ BitVec 32)) (zeroValue!4571 V!8421) (minValue!4571 V!8421) (_size!1946 (_ BitVec 32)) (_keys!6892 array!12502) (_values!4713 array!12500) (_vacant!1946 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3794)

(assert (=> b!256313 (= res!125416 (= (select (arr!5922 (_keys!6892 thiss!1504)) (index!6865 lt!128731)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166172 () Bool)

(assert (=> b!256313 (=> (not res!125416) (not e!166172))))

(declare-fun b!256314 () Bool)

(declare-datatypes ((Unit!7954 0))(
  ( (Unit!7955) )
))
(declare-fun e!166160 () Unit!7954)

(declare-fun Unit!7956 () Unit!7954)

(assert (=> b!256314 (= e!166160 Unit!7956)))

(declare-fun lt!128733 () Unit!7954)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!234 (array!12502 array!12500 (_ BitVec 32) (_ BitVec 32) V!8421 V!8421 (_ BitVec 64) (_ BitVec 32) Int) Unit!7954)

(assert (=> b!256314 (= lt!128733 (lemmaArrayContainsKeyThenInListMap!234 (_keys!6892 thiss!1504) (_values!4713 thiss!1504) (mask!11002 thiss!1504) (extraKeys!4467 thiss!1504) (zeroValue!4571 thiss!1504) (minValue!4571 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4730 thiss!1504)))))

(assert (=> b!256314 false))

(declare-fun b!256315 () Bool)

(declare-fun res!125417 () Bool)

(declare-fun e!166161 () Bool)

(assert (=> b!256315 (=> (not res!125417) (not e!166161))))

(assert (=> b!256315 (= res!125417 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!256316 () Bool)

(declare-fun res!125410 () Bool)

(declare-fun e!166168 () Bool)

(assert (=> b!256316 (=> (not res!125410) (not e!166168))))

(declare-fun call!24276 () Bool)

(assert (=> b!256316 (= res!125410 call!24276)))

(declare-fun e!166163 () Bool)

(assert (=> b!256316 (= e!166163 e!166168)))

(declare-fun bm!24273 () Bool)

(declare-fun call!24277 () Bool)

(declare-fun arrayContainsKey!0 (array!12502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24273 (= call!24277 (arrayContainsKey!0 (_keys!6892 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256317 () Bool)

(declare-fun e!166169 () Bool)

(declare-fun e!166159 () Bool)

(assert (=> b!256317 (= e!166169 (not e!166159))))

(declare-fun res!125418 () Bool)

(assert (=> b!256317 (=> res!125418 e!166159)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!256317 (= res!125418 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6269 (_keys!6892 thiss!1504))) (bvsge (size!6269 (_keys!6892 thiss!1504)) #b01111111111111111111111111111111)))))

(declare-fun v!346 () V!8421)

(declare-fun lt!128737 () array!12502)

(declare-datatypes ((tuple2!4906 0))(
  ( (tuple2!4907 (_1!2463 (_ BitVec 64)) (_2!2463 V!8421)) )
))
(declare-datatypes ((List!3810 0))(
  ( (Nil!3807) (Cons!3806 (h!4468 tuple2!4906) (t!8873 List!3810)) )
))
(declare-datatypes ((ListLongMap!3833 0))(
  ( (ListLongMap!3834 (toList!1932 List!3810)) )
))
(declare-fun lt!128729 () ListLongMap!3833)

(declare-fun +!677 (ListLongMap!3833 tuple2!4906) ListLongMap!3833)

(declare-fun getCurrentListMap!1455 (array!12502 array!12500 (_ BitVec 32) (_ BitVec 32) V!8421 V!8421 (_ BitVec 32) Int) ListLongMap!3833)

(assert (=> b!256317 (= (+!677 lt!128729 (tuple2!4907 key!932 v!346)) (getCurrentListMap!1455 lt!128737 (array!12501 (store (arr!5921 (_values!4713 thiss!1504)) index!297 (ValueCellFull!2947 v!346)) (size!6268 (_values!4713 thiss!1504))) (mask!11002 thiss!1504) (extraKeys!4467 thiss!1504) (zeroValue!4571 thiss!1504) (minValue!4571 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4730 thiss!1504)))))

(declare-fun lt!128728 () Unit!7954)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!92 (array!12502 array!12500 (_ BitVec 32) (_ BitVec 32) V!8421 V!8421 (_ BitVec 32) (_ BitVec 64) V!8421 Int) Unit!7954)

(assert (=> b!256317 (= lt!128728 (lemmaAddValidKeyToArrayThenAddPairToListMap!92 (_keys!6892 thiss!1504) (_values!4713 thiss!1504) (mask!11002 thiss!1504) (extraKeys!4467 thiss!1504) (zeroValue!4571 thiss!1504) (minValue!4571 thiss!1504) index!297 key!932 v!346 (defaultEntry!4730 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12502 (_ BitVec 32)) Bool)

(assert (=> b!256317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128737 (mask!11002 thiss!1504))))

(declare-fun lt!128736 () Unit!7954)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12502 (_ BitVec 32) (_ BitVec 32)) Unit!7954)

(assert (=> b!256317 (= lt!128736 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6892 thiss!1504) index!297 (mask!11002 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12502 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!256317 (= (arrayCountValidKeys!0 lt!128737 #b00000000000000000000000000000000 (size!6269 (_keys!6892 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6892 thiss!1504) #b00000000000000000000000000000000 (size!6269 (_keys!6892 thiss!1504)))))))

(declare-fun lt!128730 () Unit!7954)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12502 (_ BitVec 32) (_ BitVec 64)) Unit!7954)

(assert (=> b!256317 (= lt!128730 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6892 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3811 0))(
  ( (Nil!3808) (Cons!3807 (h!4469 (_ BitVec 64)) (t!8874 List!3811)) )
))
(declare-fun arrayNoDuplicates!0 (array!12502 (_ BitVec 32) List!3811) Bool)

(assert (=> b!256317 (arrayNoDuplicates!0 lt!128737 #b00000000000000000000000000000000 Nil!3808)))

(assert (=> b!256317 (= lt!128737 (array!12503 (store (arr!5922 (_keys!6892 thiss!1504)) index!297 key!932) (size!6269 (_keys!6892 thiss!1504))))))

(declare-fun lt!128727 () Unit!7954)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12502 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3811) Unit!7954)

(assert (=> b!256317 (= lt!128727 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6892 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3808))))

(declare-fun lt!128735 () Unit!7954)

(assert (=> b!256317 (= lt!128735 e!166160)))

(declare-fun c!43309 () Bool)

(assert (=> b!256317 (= c!43309 (arrayContainsKey!0 (_keys!6892 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256318 () Bool)

(declare-fun res!125415 () Bool)

(assert (=> b!256318 (=> (not res!125415) (not e!166168))))

(assert (=> b!256318 (= res!125415 (= (select (arr!5922 (_keys!6892 thiss!1504)) (index!6862 lt!128731)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256319 () Bool)

(declare-fun e!166164 () Bool)

(declare-fun tp_is_empty!6581 () Bool)

(assert (=> b!256319 (= e!166164 tp_is_empty!6581)))

(declare-fun b!256320 () Bool)

(assert (=> b!256320 (= e!166159 (arrayContainsKey!0 lt!128737 key!932 index!297))))

(declare-fun b!256321 () Bool)

(assert (=> b!256321 (= e!166173 e!166172)))

(declare-fun res!125413 () Bool)

(assert (=> b!256321 (= res!125413 call!24276)))

(assert (=> b!256321 (=> (not res!125413) (not e!166172))))

(declare-fun e!166171 () Bool)

(declare-fun e!166166 () Bool)

(declare-fun array_inv!3905 (array!12502) Bool)

(declare-fun array_inv!3906 (array!12500) Bool)

(assert (=> b!256322 (= e!166166 (and tp!23456 tp_is_empty!6581 (array_inv!3905 (_keys!6892 thiss!1504)) (array_inv!3906 (_values!4713 thiss!1504)) e!166171))))

(declare-fun b!256323 () Bool)

(assert (=> b!256323 (= e!166168 (not call!24277))))

(declare-fun b!256324 () Bool)

(declare-fun c!43308 () Bool)

(assert (=> b!256324 (= c!43308 (is-MissingVacant!1173 lt!128731))))

(assert (=> b!256324 (= e!166163 e!166173)))

(declare-fun bm!24274 () Bool)

(declare-fun c!43311 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24274 (= call!24276 (inRange!0 (ite c!43311 (index!6862 lt!128731) (index!6865 lt!128731)) (mask!11002 thiss!1504)))))

(declare-fun b!256325 () Bool)

(declare-fun e!166165 () Unit!7954)

(declare-fun Unit!7957 () Unit!7954)

(assert (=> b!256325 (= e!166165 Unit!7957)))

(declare-fun lt!128732 () Unit!7954)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!429 (array!12502 array!12500 (_ BitVec 32) (_ BitVec 32) V!8421 V!8421 (_ BitVec 64) Int) Unit!7954)

(assert (=> b!256325 (= lt!128732 (lemmaInListMapThenSeekEntryOrOpenFindsIt!429 (_keys!6892 thiss!1504) (_values!4713 thiss!1504) (mask!11002 thiss!1504) (extraKeys!4467 thiss!1504) (zeroValue!4571 thiss!1504) (minValue!4571 thiss!1504) key!932 (defaultEntry!4730 thiss!1504)))))

(assert (=> b!256325 false))

(declare-fun b!256326 () Bool)

(declare-fun Unit!7958 () Unit!7954)

(assert (=> b!256326 (= e!166160 Unit!7958)))

(declare-fun b!256327 () Bool)

(assert (=> b!256327 (= e!166172 (not call!24277))))

(declare-fun b!256328 () Bool)

(assert (=> b!256328 (= e!166171 (and e!166164 mapRes!11199))))

(declare-fun condMapEmpty!11199 () Bool)

(declare-fun mapDefault!11199 () ValueCell!2947)

