; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22094 () Bool)

(assert start!22094)

(declare-fun b!229019 () Bool)

(declare-fun b_free!6149 () Bool)

(declare-fun b_next!6149 () Bool)

(assert (=> b!229019 (= b_free!6149 (not b_next!6149))))

(declare-fun tp!21588 () Bool)

(declare-fun b_and!13065 () Bool)

(assert (=> b!229019 (= tp!21588 b_and!13065)))

(declare-fun mapNonEmpty!10186 () Bool)

(declare-fun mapRes!10186 () Bool)

(declare-fun tp!21589 () Bool)

(declare-fun e!148592 () Bool)

(assert (=> mapNonEmpty!10186 (= mapRes!10186 (and tp!21589 e!148592))))

(declare-datatypes ((V!7661 0))(
  ( (V!7662 (val!3050 Int)) )
))
(declare-datatypes ((ValueCell!2662 0))(
  ( (ValueCellFull!2662 (v!5066 V!7661)) (EmptyCell!2662) )
))
(declare-fun mapRest!10186 () (Array (_ BitVec 32) ValueCell!2662))

(declare-fun mapValue!10186 () ValueCell!2662)

(declare-fun mapKey!10186 () (_ BitVec 32))

(declare-datatypes ((array!11264 0))(
  ( (array!11265 (arr!5351 (Array (_ BitVec 32) ValueCell!2662)) (size!5684 (_ BitVec 32))) )
))
(declare-datatypes ((array!11266 0))(
  ( (array!11267 (arr!5352 (Array (_ BitVec 32) (_ BitVec 64))) (size!5685 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3224 0))(
  ( (LongMapFixedSize!3225 (defaultEntry!4271 Int) (mask!10147 (_ BitVec 32)) (extraKeys!4008 (_ BitVec 32)) (zeroValue!4112 V!7661) (minValue!4112 V!7661) (_size!1661 (_ BitVec 32)) (_keys!6325 array!11266) (_values!4254 array!11264) (_vacant!1661 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3224)

(assert (=> mapNonEmpty!10186 (= (arr!5351 (_values!4254 thiss!1504)) (store mapRest!10186 mapKey!10186 mapValue!10186))))

(declare-fun b!229012 () Bool)

(declare-fun e!148595 () Bool)

(declare-fun tp_is_empty!6011 () Bool)

(assert (=> b!229012 (= e!148595 tp_is_empty!6011)))

(declare-fun res!112733 () Bool)

(declare-fun e!148597 () Bool)

(assert (=> start!22094 (=> (not res!112733) (not e!148597))))

(declare-fun valid!1278 (LongMapFixedSize!3224) Bool)

(assert (=> start!22094 (= res!112733 (valid!1278 thiss!1504))))

(assert (=> start!22094 e!148597))

(declare-fun e!148599 () Bool)

(assert (=> start!22094 e!148599))

(assert (=> start!22094 true))

(declare-fun b!229013 () Bool)

(declare-fun e!148587 () Bool)

(declare-fun call!21279 () Bool)

(assert (=> b!229013 (= e!148587 (not call!21279))))

(declare-fun bm!21276 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21276 (= call!21279 (arrayContainsKey!0 (_keys!6325 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229014 () Bool)

(declare-fun e!148598 () Bool)

(declare-datatypes ((SeekEntryResult!926 0))(
  ( (MissingZero!926 (index!5874 (_ BitVec 32))) (Found!926 (index!5875 (_ BitVec 32))) (Intermediate!926 (undefined!1738 Bool) (index!5876 (_ BitVec 32)) (x!23370 (_ BitVec 32))) (Undefined!926) (MissingVacant!926 (index!5877 (_ BitVec 32))) )
))
(declare-fun lt!115244 () SeekEntryResult!926)

(assert (=> b!229014 (= e!148598 (is-Undefined!926 lt!115244))))

(declare-fun b!229015 () Bool)

(declare-fun e!148596 () Bool)

(assert (=> b!229015 (= e!148597 e!148596)))

(declare-fun res!112735 () Bool)

(assert (=> b!229015 (=> (not res!112735) (not e!148596))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!229015 (= res!112735 (or (= lt!115244 (MissingZero!926 index!297)) (= lt!115244 (MissingVacant!926 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11266 (_ BitVec 32)) SeekEntryResult!926)

(assert (=> b!229015 (= lt!115244 (seekEntryOrOpen!0 key!932 (_keys!6325 thiss!1504) (mask!10147 thiss!1504)))))

(declare-fun b!229016 () Bool)

(declare-datatypes ((Unit!6975 0))(
  ( (Unit!6976) )
))
(declare-fun e!148590 () Unit!6975)

(declare-fun lt!115245 () Unit!6975)

(assert (=> b!229016 (= e!148590 lt!115245)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!292 (array!11266 array!11264 (_ BitVec 32) (_ BitVec 32) V!7661 V!7661 (_ BitVec 64) Int) Unit!6975)

(assert (=> b!229016 (= lt!115245 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!292 (_keys!6325 thiss!1504) (_values!4254 thiss!1504) (mask!10147 thiss!1504) (extraKeys!4008 thiss!1504) (zeroValue!4112 thiss!1504) (minValue!4112 thiss!1504) key!932 (defaultEntry!4271 thiss!1504)))))

(declare-fun c!37973 () Bool)

(assert (=> b!229016 (= c!37973 (is-MissingZero!926 lt!115244))))

(declare-fun e!148586 () Bool)

(assert (=> b!229016 e!148586))

(declare-fun b!229017 () Bool)

(declare-fun e!148594 () Bool)

(assert (=> b!229017 (= e!148594 (not call!21279))))

(declare-fun b!229018 () Bool)

(declare-fun res!112730 () Bool)

(assert (=> b!229018 (= res!112730 (= (select (arr!5352 (_keys!6325 thiss!1504)) (index!5877 lt!115244)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!229018 (=> (not res!112730) (not e!148587))))

(declare-fun e!148591 () Bool)

(declare-fun array_inv!3525 (array!11266) Bool)

(declare-fun array_inv!3526 (array!11264) Bool)

(assert (=> b!229019 (= e!148599 (and tp!21588 tp_is_empty!6011 (array_inv!3525 (_keys!6325 thiss!1504)) (array_inv!3526 (_values!4254 thiss!1504)) e!148591))))

(declare-fun mapIsEmpty!10186 () Bool)

(assert (=> mapIsEmpty!10186 mapRes!10186))

(declare-fun b!229020 () Bool)

(declare-fun res!112732 () Bool)

(declare-fun e!148589 () Bool)

(assert (=> b!229020 (=> res!112732 e!148589)))

(assert (=> b!229020 (= res!112732 (or (not (= (size!5684 (_values!4254 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10147 thiss!1504)))) (not (= (size!5685 (_keys!6325 thiss!1504)) (size!5684 (_values!4254 thiss!1504)))) (bvslt (mask!10147 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4008 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4008 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun call!21280 () Bool)

(declare-fun bm!21277 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21277 (= call!21280 (inRange!0 (ite c!37973 (index!5874 lt!115244) (index!5877 lt!115244)) (mask!10147 thiss!1504)))))

(declare-fun b!229021 () Bool)

(declare-fun res!112738 () Bool)

(assert (=> b!229021 (=> res!112738 e!148589)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11266 (_ BitVec 32)) Bool)

(assert (=> b!229021 (= res!112738 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6325 thiss!1504) (mask!10147 thiss!1504))))))

(declare-fun b!229022 () Bool)

(declare-fun Unit!6977 () Unit!6975)

(assert (=> b!229022 (= e!148590 Unit!6977)))

(declare-fun lt!115252 () Unit!6975)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!279 (array!11266 array!11264 (_ BitVec 32) (_ BitVec 32) V!7661 V!7661 (_ BitVec 64) Int) Unit!6975)

(assert (=> b!229022 (= lt!115252 (lemmaInListMapThenSeekEntryOrOpenFindsIt!279 (_keys!6325 thiss!1504) (_values!4254 thiss!1504) (mask!10147 thiss!1504) (extraKeys!4008 thiss!1504) (zeroValue!4112 thiss!1504) (minValue!4112 thiss!1504) key!932 (defaultEntry!4271 thiss!1504)))))

(assert (=> b!229022 false))

(declare-fun b!229023 () Bool)

(declare-fun c!37972 () Bool)

(assert (=> b!229023 (= c!37972 (is-MissingVacant!926 lt!115244))))

(assert (=> b!229023 (= e!148586 e!148598)))

(declare-fun b!229024 () Bool)

(declare-fun res!112734 () Bool)

(assert (=> b!229024 (=> (not res!112734) (not e!148594))))

(assert (=> b!229024 (= res!112734 (= (select (arr!5352 (_keys!6325 thiss!1504)) (index!5874 lt!115244)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!229025 () Bool)

(declare-fun res!112736 () Bool)

(assert (=> b!229025 (=> (not res!112736) (not e!148594))))

(assert (=> b!229025 (= res!112736 call!21280)))

(assert (=> b!229025 (= e!148586 e!148594)))

(declare-fun b!229026 () Bool)

(declare-fun res!112729 () Bool)

(assert (=> b!229026 (=> (not res!112729) (not e!148597))))

(assert (=> b!229026 (= res!112729 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229027 () Bool)

(declare-fun e!148588 () Bool)

(assert (=> b!229027 (= e!148596 e!148588)))

(declare-fun res!112737 () Bool)

(assert (=> b!229027 (=> (not res!112737) (not e!148588))))

(assert (=> b!229027 (= res!112737 (inRange!0 index!297 (mask!10147 thiss!1504)))))

(declare-fun lt!115250 () Unit!6975)

(assert (=> b!229027 (= lt!115250 e!148590)))

(declare-fun c!37970 () Bool)

(declare-datatypes ((tuple2!4496 0))(
  ( (tuple2!4497 (_1!2258 (_ BitVec 64)) (_2!2258 V!7661)) )
))
(declare-datatypes ((List!3443 0))(
  ( (Nil!3440) (Cons!3439 (h!4087 tuple2!4496) (t!8410 List!3443)) )
))
(declare-datatypes ((ListLongMap!3423 0))(
  ( (ListLongMap!3424 (toList!1727 List!3443)) )
))
(declare-fun contains!1595 (ListLongMap!3423 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1250 (array!11266 array!11264 (_ BitVec 32) (_ BitVec 32) V!7661 V!7661 (_ BitVec 32) Int) ListLongMap!3423)

(assert (=> b!229027 (= c!37970 (contains!1595 (getCurrentListMap!1250 (_keys!6325 thiss!1504) (_values!4254 thiss!1504) (mask!10147 thiss!1504) (extraKeys!4008 thiss!1504) (zeroValue!4112 thiss!1504) (minValue!4112 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4271 thiss!1504)) key!932))))

(declare-fun b!229028 () Bool)

(declare-fun e!148593 () Unit!6975)

(declare-fun Unit!6978 () Unit!6975)

(assert (=> b!229028 (= e!148593 Unit!6978)))

(declare-fun b!229029 () Bool)

(assert (=> b!229029 (= e!148588 (not e!148589))))

(declare-fun res!112731 () Bool)

(assert (=> b!229029 (=> res!112731 e!148589)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229029 (= res!112731 (not (validMask!0 (mask!10147 thiss!1504))))))

(declare-fun lt!115246 () array!11266)

(assert (=> b!229029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115246 (mask!10147 thiss!1504))))

(declare-fun lt!115249 () Unit!6975)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11266 (_ BitVec 32) (_ BitVec 32)) Unit!6975)

(assert (=> b!229029 (= lt!115249 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6325 thiss!1504) index!297 (mask!10147 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11266 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229029 (= (arrayCountValidKeys!0 lt!115246 #b00000000000000000000000000000000 (size!5685 (_keys!6325 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6325 thiss!1504) #b00000000000000000000000000000000 (size!5685 (_keys!6325 thiss!1504)))))))

(declare-fun lt!115251 () Unit!6975)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11266 (_ BitVec 32) (_ BitVec 64)) Unit!6975)

(assert (=> b!229029 (= lt!115251 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6325 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3444 0))(
  ( (Nil!3441) (Cons!3440 (h!4088 (_ BitVec 64)) (t!8411 List!3444)) )
))
(declare-fun arrayNoDuplicates!0 (array!11266 (_ BitVec 32) List!3444) Bool)

(assert (=> b!229029 (arrayNoDuplicates!0 lt!115246 #b00000000000000000000000000000000 Nil!3441)))

(assert (=> b!229029 (= lt!115246 (array!11267 (store (arr!5352 (_keys!6325 thiss!1504)) index!297 key!932) (size!5685 (_keys!6325 thiss!1504))))))

(declare-fun lt!115253 () Unit!6975)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11266 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3444) Unit!6975)

(assert (=> b!229029 (= lt!115253 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6325 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3441))))

(declare-fun lt!115247 () Unit!6975)

(assert (=> b!229029 (= lt!115247 e!148593)))

(declare-fun c!37971 () Bool)

(assert (=> b!229029 (= c!37971 (arrayContainsKey!0 (_keys!6325 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229030 () Bool)

(assert (=> b!229030 (= e!148592 tp_is_empty!6011)))

(declare-fun b!229031 () Bool)

(assert (=> b!229031 (= e!148589 true)))

(declare-fun lt!115254 () Bool)

(assert (=> b!229031 (= lt!115254 (arrayNoDuplicates!0 (_keys!6325 thiss!1504) #b00000000000000000000000000000000 Nil!3441))))

(declare-fun b!229032 () Bool)

(assert (=> b!229032 (= e!148591 (and e!148595 mapRes!10186))))

(declare-fun condMapEmpty!10186 () Bool)

(declare-fun mapDefault!10186 () ValueCell!2662)

