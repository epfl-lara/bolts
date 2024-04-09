; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22080 () Bool)

(assert start!22080)

(declare-fun b!228545 () Bool)

(declare-fun b_free!6135 () Bool)

(declare-fun b_next!6135 () Bool)

(assert (=> b!228545 (= b_free!6135 (not b_next!6135))))

(declare-fun tp!21546 () Bool)

(declare-fun b_and!13051 () Bool)

(assert (=> b!228545 (= tp!21546 b_and!13051)))

(declare-fun b!228529 () Bool)

(declare-fun res!112503 () Bool)

(declare-fun e!148280 () Bool)

(assert (=> b!228529 (=> res!112503 e!148280)))

(declare-datatypes ((V!7643 0))(
  ( (V!7644 (val!3043 Int)) )
))
(declare-datatypes ((ValueCell!2655 0))(
  ( (ValueCellFull!2655 (v!5059 V!7643)) (EmptyCell!2655) )
))
(declare-datatypes ((array!11236 0))(
  ( (array!11237 (arr!5337 (Array (_ BitVec 32) ValueCell!2655)) (size!5670 (_ BitVec 32))) )
))
(declare-datatypes ((array!11238 0))(
  ( (array!11239 (arr!5338 (Array (_ BitVec 32) (_ BitVec 64))) (size!5671 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3210 0))(
  ( (LongMapFixedSize!3211 (defaultEntry!4264 Int) (mask!10136 (_ BitVec 32)) (extraKeys!4001 (_ BitVec 32)) (zeroValue!4105 V!7643) (minValue!4105 V!7643) (_size!1654 (_ BitVec 32)) (_keys!6318 array!11238) (_values!4247 array!11236) (_vacant!1654 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3210)

(assert (=> b!228529 (= res!112503 (or (not (= (size!5670 (_values!4247 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10136 thiss!1504)))) (not (= (size!5671 (_keys!6318 thiss!1504)) (size!5670 (_values!4247 thiss!1504)))) (bvslt (mask!10136 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4001 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4001 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!228530 () Bool)

(declare-fun c!37888 () Bool)

(declare-datatypes ((SeekEntryResult!919 0))(
  ( (MissingZero!919 (index!5846 (_ BitVec 32))) (Found!919 (index!5847 (_ BitVec 32))) (Intermediate!919 (undefined!1731 Bool) (index!5848 (_ BitVec 32)) (x!23347 (_ BitVec 32))) (Undefined!919) (MissingVacant!919 (index!5849 (_ BitVec 32))) )
))
(declare-fun lt!115023 () SeekEntryResult!919)

(get-info :version)

(assert (=> b!228530 (= c!37888 ((_ is MissingVacant!919) lt!115023))))

(declare-fun e!148275 () Bool)

(declare-fun e!148283 () Bool)

(assert (=> b!228530 (= e!148275 e!148283)))

(declare-fun bm!21234 () Bool)

(declare-fun c!37887 () Bool)

(declare-fun call!21238 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21234 (= call!21238 (inRange!0 (ite c!37887 (index!5846 lt!115023) (index!5849 lt!115023)) (mask!10136 thiss!1504)))))

(declare-fun b!228531 () Bool)

(declare-fun res!112498 () Bool)

(assert (=> b!228531 (= res!112498 (= (select (arr!5338 (_keys!6318 thiss!1504)) (index!5849 lt!115023)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148285 () Bool)

(assert (=> b!228531 (=> (not res!112498) (not e!148285))))

(declare-fun b!228532 () Bool)

(declare-fun e!148282 () Bool)

(declare-fun call!21237 () Bool)

(assert (=> b!228532 (= e!148282 (not call!21237))))

(declare-fun res!112497 () Bool)

(declare-fun e!148277 () Bool)

(assert (=> start!22080 (=> (not res!112497) (not e!148277))))

(declare-fun valid!1275 (LongMapFixedSize!3210) Bool)

(assert (=> start!22080 (= res!112497 (valid!1275 thiss!1504))))

(assert (=> start!22080 e!148277))

(declare-fun e!148274 () Bool)

(assert (=> start!22080 e!148274))

(assert (=> start!22080 true))

(declare-fun b!228533 () Bool)

(declare-datatypes ((Unit!6950 0))(
  ( (Unit!6951) )
))
(declare-fun e!148284 () Unit!6950)

(declare-fun lt!115022 () Unit!6950)

(assert (=> b!228533 (= e!148284 lt!115022)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!286 (array!11238 array!11236 (_ BitVec 32) (_ BitVec 32) V!7643 V!7643 (_ BitVec 64) Int) Unit!6950)

(assert (=> b!228533 (= lt!115022 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!286 (_keys!6318 thiss!1504) (_values!4247 thiss!1504) (mask!10136 thiss!1504) (extraKeys!4001 thiss!1504) (zeroValue!4105 thiss!1504) (minValue!4105 thiss!1504) key!932 (defaultEntry!4264 thiss!1504)))))

(assert (=> b!228533 (= c!37887 ((_ is MissingZero!919) lt!115023))))

(assert (=> b!228533 e!148275))

(declare-fun b!228534 () Bool)

(declare-fun res!112504 () Bool)

(assert (=> b!228534 (=> res!112504 e!148280)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11238 (_ BitVec 32)) Bool)

(assert (=> b!228534 (= res!112504 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6318 thiss!1504) (mask!10136 thiss!1504))))))

(declare-fun b!228535 () Bool)

(assert (=> b!228535 (= e!148280 true)))

(declare-fun lt!115021 () Bool)

(declare-datatypes ((List!3434 0))(
  ( (Nil!3431) (Cons!3430 (h!4078 (_ BitVec 64)) (t!8401 List!3434)) )
))
(declare-fun arrayNoDuplicates!0 (array!11238 (_ BitVec 32) List!3434) Bool)

(assert (=> b!228535 (= lt!115021 (arrayNoDuplicates!0 (_keys!6318 thiss!1504) #b00000000000000000000000000000000 Nil!3431))))

(declare-fun b!228536 () Bool)

(assert (=> b!228536 (= e!148285 (not call!21237))))

(declare-fun b!228537 () Bool)

(declare-fun e!148278 () Unit!6950)

(declare-fun Unit!6952 () Unit!6950)

(assert (=> b!228537 (= e!148278 Unit!6952)))

(declare-fun lt!115013 () Unit!6950)

(declare-fun lemmaArrayContainsKeyThenInListMap!110 (array!11238 array!11236 (_ BitVec 32) (_ BitVec 32) V!7643 V!7643 (_ BitVec 64) (_ BitVec 32) Int) Unit!6950)

(assert (=> b!228537 (= lt!115013 (lemmaArrayContainsKeyThenInListMap!110 (_keys!6318 thiss!1504) (_values!4247 thiss!1504) (mask!10136 thiss!1504) (extraKeys!4001 thiss!1504) (zeroValue!4105 thiss!1504) (minValue!4105 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4264 thiss!1504)))))

(assert (=> b!228537 false))

(declare-fun b!228538 () Bool)

(declare-fun e!148272 () Bool)

(assert (=> b!228538 (= e!148272 (not e!148280))))

(declare-fun res!112505 () Bool)

(assert (=> b!228538 (=> res!112505 e!148280)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228538 (= res!112505 (not (validMask!0 (mask!10136 thiss!1504))))))

(declare-fun lt!115016 () array!11238)

(assert (=> b!228538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115016 (mask!10136 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!115017 () Unit!6950)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11238 (_ BitVec 32) (_ BitVec 32)) Unit!6950)

(assert (=> b!228538 (= lt!115017 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6318 thiss!1504) index!297 (mask!10136 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11238 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228538 (= (arrayCountValidKeys!0 lt!115016 #b00000000000000000000000000000000 (size!5671 (_keys!6318 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6318 thiss!1504) #b00000000000000000000000000000000 (size!5671 (_keys!6318 thiss!1504)))))))

(declare-fun lt!115018 () Unit!6950)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11238 (_ BitVec 32) (_ BitVec 64)) Unit!6950)

(assert (=> b!228538 (= lt!115018 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6318 thiss!1504) index!297 key!932))))

(assert (=> b!228538 (arrayNoDuplicates!0 lt!115016 #b00000000000000000000000000000000 Nil!3431)))

(assert (=> b!228538 (= lt!115016 (array!11239 (store (arr!5338 (_keys!6318 thiss!1504)) index!297 key!932) (size!5671 (_keys!6318 thiss!1504))))))

(declare-fun lt!115020 () Unit!6950)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11238 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3434) Unit!6950)

(assert (=> b!228538 (= lt!115020 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6318 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3431))))

(declare-fun lt!115014 () Unit!6950)

(assert (=> b!228538 (= lt!115014 e!148278)))

(declare-fun c!37886 () Bool)

(declare-fun arrayContainsKey!0 (array!11238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!228538 (= c!37886 (arrayContainsKey!0 (_keys!6318 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228539 () Bool)

(declare-fun e!148273 () Bool)

(assert (=> b!228539 (= e!148273 e!148272)))

(declare-fun res!112506 () Bool)

(assert (=> b!228539 (=> (not res!112506) (not e!148272))))

(assert (=> b!228539 (= res!112506 (inRange!0 index!297 (mask!10136 thiss!1504)))))

(declare-fun lt!115019 () Unit!6950)

(assert (=> b!228539 (= lt!115019 e!148284)))

(declare-fun c!37889 () Bool)

(declare-datatypes ((tuple2!4488 0))(
  ( (tuple2!4489 (_1!2254 (_ BitVec 64)) (_2!2254 V!7643)) )
))
(declare-datatypes ((List!3435 0))(
  ( (Nil!3432) (Cons!3431 (h!4079 tuple2!4488) (t!8402 List!3435)) )
))
(declare-datatypes ((ListLongMap!3415 0))(
  ( (ListLongMap!3416 (toList!1723 List!3435)) )
))
(declare-fun contains!1591 (ListLongMap!3415 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1246 (array!11238 array!11236 (_ BitVec 32) (_ BitVec 32) V!7643 V!7643 (_ BitVec 32) Int) ListLongMap!3415)

(assert (=> b!228539 (= c!37889 (contains!1591 (getCurrentListMap!1246 (_keys!6318 thiss!1504) (_values!4247 thiss!1504) (mask!10136 thiss!1504) (extraKeys!4001 thiss!1504) (zeroValue!4105 thiss!1504) (minValue!4105 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4264 thiss!1504)) key!932))))

(declare-fun b!228540 () Bool)

(assert (=> b!228540 (= e!148283 ((_ is Undefined!919) lt!115023))))

(declare-fun b!228541 () Bool)

(declare-fun res!112501 () Bool)

(assert (=> b!228541 (=> (not res!112501) (not e!148282))))

(assert (=> b!228541 (= res!112501 call!21238)))

(assert (=> b!228541 (= e!148275 e!148282)))

(declare-fun b!228542 () Bool)

(declare-fun Unit!6953 () Unit!6950)

(assert (=> b!228542 (= e!148284 Unit!6953)))

(declare-fun lt!115015 () Unit!6950)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!274 (array!11238 array!11236 (_ BitVec 32) (_ BitVec 32) V!7643 V!7643 (_ BitVec 64) Int) Unit!6950)

(assert (=> b!228542 (= lt!115015 (lemmaInListMapThenSeekEntryOrOpenFindsIt!274 (_keys!6318 thiss!1504) (_values!4247 thiss!1504) (mask!10136 thiss!1504) (extraKeys!4001 thiss!1504) (zeroValue!4105 thiss!1504) (minValue!4105 thiss!1504) key!932 (defaultEntry!4264 thiss!1504)))))

(assert (=> b!228542 false))

(declare-fun mapNonEmpty!10165 () Bool)

(declare-fun mapRes!10165 () Bool)

(declare-fun tp!21547 () Bool)

(declare-fun e!148276 () Bool)

(assert (=> mapNonEmpty!10165 (= mapRes!10165 (and tp!21547 e!148276))))

(declare-fun mapRest!10165 () (Array (_ BitVec 32) ValueCell!2655))

(declare-fun mapKey!10165 () (_ BitVec 32))

(declare-fun mapValue!10165 () ValueCell!2655)

(assert (=> mapNonEmpty!10165 (= (arr!5337 (_values!4247 thiss!1504)) (store mapRest!10165 mapKey!10165 mapValue!10165))))

(declare-fun b!228543 () Bool)

(declare-fun e!148271 () Bool)

(declare-fun tp_is_empty!5997 () Bool)

(assert (=> b!228543 (= e!148271 tp_is_empty!5997)))

(declare-fun bm!21235 () Bool)

(assert (=> bm!21235 (= call!21237 (arrayContainsKey!0 (_keys!6318 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228544 () Bool)

(declare-fun Unit!6954 () Unit!6950)

(assert (=> b!228544 (= e!148278 Unit!6954)))

(declare-fun mapIsEmpty!10165 () Bool)

(assert (=> mapIsEmpty!10165 mapRes!10165))

(declare-fun e!148279 () Bool)

(declare-fun array_inv!3517 (array!11238) Bool)

(declare-fun array_inv!3518 (array!11236) Bool)

(assert (=> b!228545 (= e!148274 (and tp!21546 tp_is_empty!5997 (array_inv!3517 (_keys!6318 thiss!1504)) (array_inv!3518 (_values!4247 thiss!1504)) e!148279))))

(declare-fun b!228546 () Bool)

(assert (=> b!228546 (= e!148279 (and e!148271 mapRes!10165))))

(declare-fun condMapEmpty!10165 () Bool)

(declare-fun mapDefault!10165 () ValueCell!2655)

(assert (=> b!228546 (= condMapEmpty!10165 (= (arr!5337 (_values!4247 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2655)) mapDefault!10165)))))

(declare-fun b!228547 () Bool)

(assert (=> b!228547 (= e!148277 e!148273)))

(declare-fun res!112507 () Bool)

(assert (=> b!228547 (=> (not res!112507) (not e!148273))))

(assert (=> b!228547 (= res!112507 (or (= lt!115023 (MissingZero!919 index!297)) (= lt!115023 (MissingVacant!919 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11238 (_ BitVec 32)) SeekEntryResult!919)

(assert (=> b!228547 (= lt!115023 (seekEntryOrOpen!0 key!932 (_keys!6318 thiss!1504) (mask!10136 thiss!1504)))))

(declare-fun b!228548 () Bool)

(assert (=> b!228548 (= e!148276 tp_is_empty!5997)))

(declare-fun b!228549 () Bool)

(declare-fun res!112502 () Bool)

(assert (=> b!228549 (=> (not res!112502) (not e!148277))))

(assert (=> b!228549 (= res!112502 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!228550 () Bool)

(assert (=> b!228550 (= e!148283 e!148285)))

(declare-fun res!112500 () Bool)

(assert (=> b!228550 (= res!112500 call!21238)))

(assert (=> b!228550 (=> (not res!112500) (not e!148285))))

(declare-fun b!228551 () Bool)

(declare-fun res!112499 () Bool)

(assert (=> b!228551 (=> (not res!112499) (not e!148282))))

(assert (=> b!228551 (= res!112499 (= (select (arr!5338 (_keys!6318 thiss!1504)) (index!5846 lt!115023)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!22080 res!112497) b!228549))

(assert (= (and b!228549 res!112502) b!228547))

(assert (= (and b!228547 res!112507) b!228539))

(assert (= (and b!228539 c!37889) b!228542))

(assert (= (and b!228539 (not c!37889)) b!228533))

(assert (= (and b!228533 c!37887) b!228541))

(assert (= (and b!228533 (not c!37887)) b!228530))

(assert (= (and b!228541 res!112501) b!228551))

(assert (= (and b!228551 res!112499) b!228532))

(assert (= (and b!228530 c!37888) b!228550))

(assert (= (and b!228530 (not c!37888)) b!228540))

(assert (= (and b!228550 res!112500) b!228531))

(assert (= (and b!228531 res!112498) b!228536))

(assert (= (or b!228541 b!228550) bm!21234))

(assert (= (or b!228532 b!228536) bm!21235))

(assert (= (and b!228539 res!112506) b!228538))

(assert (= (and b!228538 c!37886) b!228537))

(assert (= (and b!228538 (not c!37886)) b!228544))

(assert (= (and b!228538 (not res!112505)) b!228529))

(assert (= (and b!228529 (not res!112503)) b!228534))

(assert (= (and b!228534 (not res!112504)) b!228535))

(assert (= (and b!228546 condMapEmpty!10165) mapIsEmpty!10165))

(assert (= (and b!228546 (not condMapEmpty!10165)) mapNonEmpty!10165))

(assert (= (and mapNonEmpty!10165 ((_ is ValueCellFull!2655) mapValue!10165)) b!228548))

(assert (= (and b!228546 ((_ is ValueCellFull!2655) mapDefault!10165)) b!228543))

(assert (= b!228545 b!228546))

(assert (= start!22080 b!228545))

(declare-fun m!250277 () Bool)

(assert (=> bm!21235 m!250277))

(declare-fun m!250279 () Bool)

(assert (=> b!228535 m!250279))

(declare-fun m!250281 () Bool)

(assert (=> b!228539 m!250281))

(declare-fun m!250283 () Bool)

(assert (=> b!228539 m!250283))

(assert (=> b!228539 m!250283))

(declare-fun m!250285 () Bool)

(assert (=> b!228539 m!250285))

(declare-fun m!250287 () Bool)

(assert (=> b!228533 m!250287))

(declare-fun m!250289 () Bool)

(assert (=> b!228547 m!250289))

(declare-fun m!250291 () Bool)

(assert (=> mapNonEmpty!10165 m!250291))

(declare-fun m!250293 () Bool)

(assert (=> start!22080 m!250293))

(declare-fun m!250295 () Bool)

(assert (=> b!228538 m!250295))

(assert (=> b!228538 m!250277))

(declare-fun m!250297 () Bool)

(assert (=> b!228538 m!250297))

(declare-fun m!250299 () Bool)

(assert (=> b!228538 m!250299))

(declare-fun m!250301 () Bool)

(assert (=> b!228538 m!250301))

(declare-fun m!250303 () Bool)

(assert (=> b!228538 m!250303))

(declare-fun m!250305 () Bool)

(assert (=> b!228538 m!250305))

(declare-fun m!250307 () Bool)

(assert (=> b!228538 m!250307))

(declare-fun m!250309 () Bool)

(assert (=> b!228538 m!250309))

(declare-fun m!250311 () Bool)

(assert (=> b!228538 m!250311))

(declare-fun m!250313 () Bool)

(assert (=> b!228542 m!250313))

(declare-fun m!250315 () Bool)

(assert (=> b!228531 m!250315))

(declare-fun m!250317 () Bool)

(assert (=> b!228534 m!250317))

(declare-fun m!250319 () Bool)

(assert (=> b!228537 m!250319))

(declare-fun m!250321 () Bool)

(assert (=> b!228551 m!250321))

(declare-fun m!250323 () Bool)

(assert (=> bm!21234 m!250323))

(declare-fun m!250325 () Bool)

(assert (=> b!228545 m!250325))

(declare-fun m!250327 () Bool)

(assert (=> b!228545 m!250327))

(check-sat (not b!228542) (not bm!21234) (not b!228539) (not mapNonEmpty!10165) (not start!22080) (not bm!21235) tp_is_empty!5997 (not b_next!6135) (not b!228538) (not b!228535) (not b!228533) (not b!228547) (not b!228545) (not b!228537) (not b!228534) b_and!13051)
(check-sat b_and!13051 (not b_next!6135))
