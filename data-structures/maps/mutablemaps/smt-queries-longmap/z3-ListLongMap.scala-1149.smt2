; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24110 () Bool)

(assert start!24110)

(declare-fun b!252018 () Bool)

(declare-fun b_free!6645 () Bool)

(declare-fun b_next!6645 () Bool)

(assert (=> b!252018 (= b_free!6645 (not b_next!6645))))

(declare-fun tp!23210 () Bool)

(declare-fun b_and!13697 () Bool)

(assert (=> b!252018 (= tp!23210 b_and!13697)))

(declare-fun b!252007 () Bool)

(declare-fun e!163437 () Bool)

(declare-fun e!163441 () Bool)

(assert (=> b!252007 (= e!163437 e!163441)))

(declare-fun res!123383 () Bool)

(assert (=> b!252007 (=> (not res!123383) (not e!163441))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8323 0))(
  ( (V!8324 (val!3298 Int)) )
))
(declare-datatypes ((ValueCell!2910 0))(
  ( (ValueCellFull!2910 (v!5364 V!8323)) (EmptyCell!2910) )
))
(declare-datatypes ((array!12336 0))(
  ( (array!12337 (arr!5847 (Array (_ BitVec 32) ValueCell!2910)) (size!6194 (_ BitVec 32))) )
))
(declare-datatypes ((array!12338 0))(
  ( (array!12339 (arr!5848 (Array (_ BitVec 32) (_ BitVec 64))) (size!6195 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3720 0))(
  ( (LongMapFixedSize!3721 (defaultEntry!4657 Int) (mask!10869 (_ BitVec 32)) (extraKeys!4394 (_ BitVec 32)) (zeroValue!4498 V!8323) (minValue!4498 V!8323) (_size!1909 (_ BitVec 32)) (_keys!6803 array!12338) (_values!4640 array!12336) (_vacant!1909 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3720)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!252007 (= res!123383 (inRange!0 index!297 (mask!10869 thiss!1504)))))

(declare-datatypes ((Unit!7796 0))(
  ( (Unit!7797) )
))
(declare-fun lt!126356 () Unit!7796)

(declare-fun e!163430 () Unit!7796)

(assert (=> b!252007 (= lt!126356 e!163430)))

(declare-fun c!42434 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4852 0))(
  ( (tuple2!4853 (_1!2436 (_ BitVec 64)) (_2!2436 V!8323)) )
))
(declare-datatypes ((List!3756 0))(
  ( (Nil!3753) (Cons!3752 (h!4414 tuple2!4852) (t!8803 List!3756)) )
))
(declare-datatypes ((ListLongMap!3779 0))(
  ( (ListLongMap!3780 (toList!1905 List!3756)) )
))
(declare-fun contains!1825 (ListLongMap!3779 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1428 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 32) Int) ListLongMap!3779)

(assert (=> b!252007 (= c!42434 (contains!1825 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)) key!932))))

(declare-fun b!252008 () Bool)

(declare-fun e!163438 () Bool)

(assert (=> b!252008 (= e!163441 (not e!163438))))

(declare-fun res!123388 () Bool)

(assert (=> b!252008 (=> res!123388 e!163438)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252008 (= res!123388 (not (validMask!0 (mask!10869 thiss!1504))))))

(declare-fun lt!126350 () array!12338)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12338 (_ BitVec 32)) Bool)

(assert (=> b!252008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126350 (mask!10869 thiss!1504))))

(declare-fun lt!126358 () Unit!7796)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12338 (_ BitVec 32) (_ BitVec 32)) Unit!7796)

(assert (=> b!252008 (= lt!126358 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6803 thiss!1504) index!297 (mask!10869 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12338 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252008 (= (arrayCountValidKeys!0 lt!126350 #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6803 thiss!1504) #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504)))))))

(declare-fun lt!126357 () Unit!7796)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12338 (_ BitVec 32) (_ BitVec 64)) Unit!7796)

(assert (=> b!252008 (= lt!126357 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6803 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3757 0))(
  ( (Nil!3754) (Cons!3753 (h!4415 (_ BitVec 64)) (t!8804 List!3757)) )
))
(declare-fun arrayNoDuplicates!0 (array!12338 (_ BitVec 32) List!3757) Bool)

(assert (=> b!252008 (arrayNoDuplicates!0 lt!126350 #b00000000000000000000000000000000 Nil!3754)))

(assert (=> b!252008 (= lt!126350 (array!12339 (store (arr!5848 (_keys!6803 thiss!1504)) index!297 key!932) (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun lt!126359 () Unit!7796)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12338 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3757) Unit!7796)

(assert (=> b!252008 (= lt!126359 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6803 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3754))))

(declare-fun lt!126355 () Unit!7796)

(declare-fun e!163439 () Unit!7796)

(assert (=> b!252008 (= lt!126355 e!163439)))

(declare-fun c!42436 () Bool)

(declare-fun arrayContainsKey!0 (array!12338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!252008 (= c!42436 (arrayContainsKey!0 (_keys!6803 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252009 () Bool)

(declare-fun e!163435 () Bool)

(declare-datatypes ((SeekEntryResult!1140 0))(
  ( (MissingZero!1140 (index!6730 (_ BitVec 32))) (Found!1140 (index!6731 (_ BitVec 32))) (Intermediate!1140 (undefined!1952 Bool) (index!6732 (_ BitVec 32)) (x!24760 (_ BitVec 32))) (Undefined!1140) (MissingVacant!1140 (index!6733 (_ BitVec 32))) )
))
(declare-fun lt!126352 () SeekEntryResult!1140)

(get-info :version)

(assert (=> b!252009 (= e!163435 ((_ is Undefined!1140) lt!126352))))

(declare-fun b!252010 () Bool)

(declare-fun e!163433 () Bool)

(declare-fun call!23723 () Bool)

(assert (=> b!252010 (= e!163433 (not call!23723))))

(declare-fun b!252011 () Bool)

(declare-fun e!163440 () Bool)

(assert (=> b!252011 (= e!163440 (not call!23723))))

(declare-fun res!123381 () Bool)

(declare-fun e!163432 () Bool)

(assert (=> start!24110 (=> (not res!123381) (not e!163432))))

(declare-fun valid!1447 (LongMapFixedSize!3720) Bool)

(assert (=> start!24110 (= res!123381 (valid!1447 thiss!1504))))

(assert (=> start!24110 e!163432))

(declare-fun e!163434 () Bool)

(assert (=> start!24110 e!163434))

(assert (=> start!24110 true))

(declare-fun b!252012 () Bool)

(declare-fun c!42435 () Bool)

(assert (=> b!252012 (= c!42435 ((_ is MissingVacant!1140) lt!126352))))

(declare-fun e!163431 () Bool)

(assert (=> b!252012 (= e!163431 e!163435)))

(declare-fun b!252013 () Bool)

(declare-fun res!123380 () Bool)

(assert (=> b!252013 (=> (not res!123380) (not e!163432))))

(assert (=> b!252013 (= res!123380 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!252014 () Bool)

(declare-fun res!123387 () Bool)

(assert (=> b!252014 (=> (not res!123387) (not e!163433))))

(assert (=> b!252014 (= res!123387 (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6730 lt!126352)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252015 () Bool)

(declare-fun Unit!7798 () Unit!7796)

(assert (=> b!252015 (= e!163439 Unit!7798)))

(declare-fun b!252016 () Bool)

(declare-fun e!163444 () Bool)

(declare-fun tp_is_empty!6507 () Bool)

(assert (=> b!252016 (= e!163444 tp_is_empty!6507)))

(declare-fun b!252017 () Bool)

(declare-fun lt!126351 () Unit!7796)

(assert (=> b!252017 (= e!163430 lt!126351)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!406 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 64) Int) Unit!7796)

(assert (=> b!252017 (= lt!126351 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!406 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 (defaultEntry!4657 thiss!1504)))))

(declare-fun c!42433 () Bool)

(assert (=> b!252017 (= c!42433 ((_ is MissingZero!1140) lt!126352))))

(assert (=> b!252017 e!163431))

(declare-fun e!163443 () Bool)

(declare-fun array_inv!3855 (array!12338) Bool)

(declare-fun array_inv!3856 (array!12336) Bool)

(assert (=> b!252018 (= e!163434 (and tp!23210 tp_is_empty!6507 (array_inv!3855 (_keys!6803 thiss!1504)) (array_inv!3856 (_values!4640 thiss!1504)) e!163443))))

(declare-fun b!252019 () Bool)

(declare-fun e!163442 () Bool)

(assert (=> b!252019 (= e!163442 tp_is_empty!6507)))

(declare-fun b!252020 () Bool)

(assert (=> b!252020 (= e!163432 e!163437)))

(declare-fun res!123386 () Bool)

(assert (=> b!252020 (=> (not res!123386) (not e!163437))))

(assert (=> b!252020 (= res!123386 (or (= lt!126352 (MissingZero!1140 index!297)) (= lt!126352 (MissingVacant!1140 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12338 (_ BitVec 32)) SeekEntryResult!1140)

(assert (=> b!252020 (= lt!126352 (seekEntryOrOpen!0 key!932 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(declare-fun b!252021 () Bool)

(declare-fun Unit!7799 () Unit!7796)

(assert (=> b!252021 (= e!163430 Unit!7799)))

(declare-fun lt!126354 () Unit!7796)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!404 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 64) Int) Unit!7796)

(assert (=> b!252021 (= lt!126354 (lemmaInListMapThenSeekEntryOrOpenFindsIt!404 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 (defaultEntry!4657 thiss!1504)))))

(assert (=> b!252021 false))

(declare-fun b!252022 () Bool)

(declare-fun res!123384 () Bool)

(assert (=> b!252022 (=> (not res!123384) (not e!163433))))

(declare-fun call!23724 () Bool)

(assert (=> b!252022 (= res!123384 call!23724)))

(assert (=> b!252022 (= e!163431 e!163433)))

(declare-fun b!252023 () Bool)

(assert (=> b!252023 (= e!163435 e!163440)))

(declare-fun res!123382 () Bool)

(assert (=> b!252023 (= res!123382 call!23724)))

(assert (=> b!252023 (=> (not res!123382) (not e!163440))))

(declare-fun b!252024 () Bool)

(declare-fun mapRes!11064 () Bool)

(assert (=> b!252024 (= e!163443 (and e!163444 mapRes!11064))))

(declare-fun condMapEmpty!11064 () Bool)

(declare-fun mapDefault!11064 () ValueCell!2910)

(assert (=> b!252024 (= condMapEmpty!11064 (= (arr!5847 (_values!4640 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2910)) mapDefault!11064)))))

(declare-fun bm!23720 () Bool)

(assert (=> bm!23720 (= call!23723 (arrayContainsKey!0 (_keys!6803 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252025 () Bool)

(declare-fun res!123379 () Bool)

(assert (=> b!252025 (=> res!123379 e!163438)))

(assert (=> b!252025 (= res!123379 (or (not (= (size!6194 (_values!4640 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10869 thiss!1504)))) (not (= (size!6195 (_keys!6803 thiss!1504)) (size!6194 (_values!4640 thiss!1504)))) (bvslt (mask!10869 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4394 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4394 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11064 () Bool)

(declare-fun tp!23211 () Bool)

(assert (=> mapNonEmpty!11064 (= mapRes!11064 (and tp!23211 e!163442))))

(declare-fun mapKey!11064 () (_ BitVec 32))

(declare-fun mapValue!11064 () ValueCell!2910)

(declare-fun mapRest!11064 () (Array (_ BitVec 32) ValueCell!2910))

(assert (=> mapNonEmpty!11064 (= (arr!5847 (_values!4640 thiss!1504)) (store mapRest!11064 mapKey!11064 mapValue!11064))))

(declare-fun b!252026 () Bool)

(assert (=> b!252026 (= e!163438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(declare-fun mapIsEmpty!11064 () Bool)

(assert (=> mapIsEmpty!11064 mapRes!11064))

(declare-fun b!252027 () Bool)

(declare-fun res!123385 () Bool)

(assert (=> b!252027 (= res!123385 (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6733 lt!126352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252027 (=> (not res!123385) (not e!163440))))

(declare-fun bm!23721 () Bool)

(assert (=> bm!23721 (= call!23724 (inRange!0 (ite c!42433 (index!6730 lt!126352) (index!6733 lt!126352)) (mask!10869 thiss!1504)))))

(declare-fun b!252028 () Bool)

(declare-fun Unit!7800 () Unit!7796)

(assert (=> b!252028 (= e!163439 Unit!7800)))

(declare-fun lt!126353 () Unit!7796)

(declare-fun lemmaArrayContainsKeyThenInListMap!208 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 64) (_ BitVec 32) Int) Unit!7796)

(assert (=> b!252028 (= lt!126353 (lemmaArrayContainsKeyThenInListMap!208 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(assert (=> b!252028 false))

(assert (= (and start!24110 res!123381) b!252013))

(assert (= (and b!252013 res!123380) b!252020))

(assert (= (and b!252020 res!123386) b!252007))

(assert (= (and b!252007 c!42434) b!252021))

(assert (= (and b!252007 (not c!42434)) b!252017))

(assert (= (and b!252017 c!42433) b!252022))

(assert (= (and b!252017 (not c!42433)) b!252012))

(assert (= (and b!252022 res!123384) b!252014))

(assert (= (and b!252014 res!123387) b!252010))

(assert (= (and b!252012 c!42435) b!252023))

(assert (= (and b!252012 (not c!42435)) b!252009))

(assert (= (and b!252023 res!123382) b!252027))

(assert (= (and b!252027 res!123385) b!252011))

(assert (= (or b!252022 b!252023) bm!23721))

(assert (= (or b!252010 b!252011) bm!23720))

(assert (= (and b!252007 res!123383) b!252008))

(assert (= (and b!252008 c!42436) b!252028))

(assert (= (and b!252008 (not c!42436)) b!252015))

(assert (= (and b!252008 (not res!123388)) b!252025))

(assert (= (and b!252025 (not res!123379)) b!252026))

(assert (= (and b!252024 condMapEmpty!11064) mapIsEmpty!11064))

(assert (= (and b!252024 (not condMapEmpty!11064)) mapNonEmpty!11064))

(assert (= (and mapNonEmpty!11064 ((_ is ValueCellFull!2910) mapValue!11064)) b!252019))

(assert (= (and b!252024 ((_ is ValueCellFull!2910) mapDefault!11064)) b!252016))

(assert (= b!252018 b!252024))

(assert (= start!24110 b!252018))

(declare-fun m!268257 () Bool)

(assert (=> b!252026 m!268257))

(declare-fun m!268259 () Bool)

(assert (=> b!252028 m!268259))

(declare-fun m!268261 () Bool)

(assert (=> b!252021 m!268261))

(declare-fun m!268263 () Bool)

(assert (=> b!252014 m!268263))

(declare-fun m!268265 () Bool)

(assert (=> bm!23720 m!268265))

(declare-fun m!268267 () Bool)

(assert (=> b!252008 m!268267))

(assert (=> b!252008 m!268265))

(declare-fun m!268269 () Bool)

(assert (=> b!252008 m!268269))

(declare-fun m!268271 () Bool)

(assert (=> b!252008 m!268271))

(declare-fun m!268273 () Bool)

(assert (=> b!252008 m!268273))

(declare-fun m!268275 () Bool)

(assert (=> b!252008 m!268275))

(declare-fun m!268277 () Bool)

(assert (=> b!252008 m!268277))

(declare-fun m!268279 () Bool)

(assert (=> b!252008 m!268279))

(declare-fun m!268281 () Bool)

(assert (=> b!252008 m!268281))

(declare-fun m!268283 () Bool)

(assert (=> b!252008 m!268283))

(declare-fun m!268285 () Bool)

(assert (=> b!252018 m!268285))

(declare-fun m!268287 () Bool)

(assert (=> b!252018 m!268287))

(declare-fun m!268289 () Bool)

(assert (=> b!252027 m!268289))

(declare-fun m!268291 () Bool)

(assert (=> bm!23721 m!268291))

(declare-fun m!268293 () Bool)

(assert (=> start!24110 m!268293))

(declare-fun m!268295 () Bool)

(assert (=> mapNonEmpty!11064 m!268295))

(declare-fun m!268297 () Bool)

(assert (=> b!252007 m!268297))

(declare-fun m!268299 () Bool)

(assert (=> b!252007 m!268299))

(assert (=> b!252007 m!268299))

(declare-fun m!268301 () Bool)

(assert (=> b!252007 m!268301))

(declare-fun m!268303 () Bool)

(assert (=> b!252017 m!268303))

(declare-fun m!268305 () Bool)

(assert (=> b!252020 m!268305))

(check-sat (not b!252008) (not b!252017) (not start!24110) (not b!252020) (not bm!23720) (not b!252028) b_and!13697 (not b!252026) (not b!252018) (not b!252007) (not b_next!6645) (not bm!23721) tp_is_empty!6507 (not b!252021) (not mapNonEmpty!11064))
(check-sat b_and!13697 (not b_next!6645))
(get-model)

(declare-fun d!61209 () Bool)

(declare-fun res!123423 () Bool)

(declare-fun e!163494 () Bool)

(assert (=> d!61209 (=> res!123423 e!163494)))

(assert (=> d!61209 (= res!123423 (= (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61209 (= (arrayContainsKey!0 (_keys!6803 thiss!1504) key!932 #b00000000000000000000000000000000) e!163494)))

(declare-fun b!252099 () Bool)

(declare-fun e!163495 () Bool)

(assert (=> b!252099 (= e!163494 e!163495)))

(declare-fun res!123424 () Bool)

(assert (=> b!252099 (=> (not res!123424) (not e!163495))))

(assert (=> b!252099 (= res!123424 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun b!252100 () Bool)

(assert (=> b!252100 (= e!163495 (arrayContainsKey!0 (_keys!6803 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61209 (not res!123423)) b!252099))

(assert (= (and b!252099 res!123424) b!252100))

(declare-fun m!268357 () Bool)

(assert (=> d!61209 m!268357))

(declare-fun m!268359 () Bool)

(assert (=> b!252100 m!268359))

(assert (=> bm!23720 d!61209))

(declare-fun d!61211 () Bool)

(assert (=> d!61211 (contains!1825 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)) key!932)))

(declare-fun lt!126392 () Unit!7796)

(declare-fun choose!1208 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 64) (_ BitVec 32) Int) Unit!7796)

(assert (=> d!61211 (= lt!126392 (choose!1208 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(assert (=> d!61211 (validMask!0 (mask!10869 thiss!1504))))

(assert (=> d!61211 (= (lemmaArrayContainsKeyThenInListMap!208 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)) lt!126392)))

(declare-fun bs!9028 () Bool)

(assert (= bs!9028 d!61211))

(assert (=> bs!9028 m!268299))

(assert (=> bs!9028 m!268299))

(assert (=> bs!9028 m!268301))

(declare-fun m!268361 () Bool)

(assert (=> bs!9028 m!268361))

(assert (=> bs!9028 m!268267))

(assert (=> b!252028 d!61211))

(declare-fun d!61213 () Bool)

(assert (=> d!61213 (= (inRange!0 (ite c!42433 (index!6730 lt!126352) (index!6733 lt!126352)) (mask!10869 thiss!1504)) (and (bvsge (ite c!42433 (index!6730 lt!126352) (index!6733 lt!126352)) #b00000000000000000000000000000000) (bvslt (ite c!42433 (index!6730 lt!126352) (index!6733 lt!126352)) (bvadd (mask!10869 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23721 d!61213))

(declare-fun b!252113 () Bool)

(declare-fun e!163504 () SeekEntryResult!1140)

(declare-fun lt!126401 () SeekEntryResult!1140)

(assert (=> b!252113 (= e!163504 (Found!1140 (index!6732 lt!126401)))))

(declare-fun b!252114 () Bool)

(declare-fun e!163503 () SeekEntryResult!1140)

(assert (=> b!252114 (= e!163503 Undefined!1140)))

(declare-fun b!252115 () Bool)

(assert (=> b!252115 (= e!163503 e!163504)))

(declare-fun lt!126400 () (_ BitVec 64))

(assert (=> b!252115 (= lt!126400 (select (arr!5848 (_keys!6803 thiss!1504)) (index!6732 lt!126401)))))

(declare-fun c!42457 () Bool)

(assert (=> b!252115 (= c!42457 (= lt!126400 key!932))))

(declare-fun b!252116 () Bool)

(declare-fun c!42455 () Bool)

(assert (=> b!252116 (= c!42455 (= lt!126400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!163502 () SeekEntryResult!1140)

(assert (=> b!252116 (= e!163504 e!163502)))

(declare-fun b!252117 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12338 (_ BitVec 32)) SeekEntryResult!1140)

(assert (=> b!252117 (= e!163502 (seekKeyOrZeroReturnVacant!0 (x!24760 lt!126401) (index!6732 lt!126401) (index!6732 lt!126401) key!932 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(declare-fun d!61215 () Bool)

(declare-fun lt!126399 () SeekEntryResult!1140)

(assert (=> d!61215 (and (or ((_ is Undefined!1140) lt!126399) (not ((_ is Found!1140) lt!126399)) (and (bvsge (index!6731 lt!126399) #b00000000000000000000000000000000) (bvslt (index!6731 lt!126399) (size!6195 (_keys!6803 thiss!1504))))) (or ((_ is Undefined!1140) lt!126399) ((_ is Found!1140) lt!126399) (not ((_ is MissingZero!1140) lt!126399)) (and (bvsge (index!6730 lt!126399) #b00000000000000000000000000000000) (bvslt (index!6730 lt!126399) (size!6195 (_keys!6803 thiss!1504))))) (or ((_ is Undefined!1140) lt!126399) ((_ is Found!1140) lt!126399) ((_ is MissingZero!1140) lt!126399) (not ((_ is MissingVacant!1140) lt!126399)) (and (bvsge (index!6733 lt!126399) #b00000000000000000000000000000000) (bvslt (index!6733 lt!126399) (size!6195 (_keys!6803 thiss!1504))))) (or ((_ is Undefined!1140) lt!126399) (ite ((_ is Found!1140) lt!126399) (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6731 lt!126399)) key!932) (ite ((_ is MissingZero!1140) lt!126399) (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6730 lt!126399)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1140) lt!126399) (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6733 lt!126399)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61215 (= lt!126399 e!163503)))

(declare-fun c!42456 () Bool)

(assert (=> d!61215 (= c!42456 (and ((_ is Intermediate!1140) lt!126401) (undefined!1952 lt!126401)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12338 (_ BitVec 32)) SeekEntryResult!1140)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61215 (= lt!126401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10869 thiss!1504)) key!932 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(assert (=> d!61215 (validMask!0 (mask!10869 thiss!1504))))

(assert (=> d!61215 (= (seekEntryOrOpen!0 key!932 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)) lt!126399)))

(declare-fun b!252118 () Bool)

(assert (=> b!252118 (= e!163502 (MissingZero!1140 (index!6732 lt!126401)))))

(assert (= (and d!61215 c!42456) b!252114))

(assert (= (and d!61215 (not c!42456)) b!252115))

(assert (= (and b!252115 c!42457) b!252113))

(assert (= (and b!252115 (not c!42457)) b!252116))

(assert (= (and b!252116 c!42455) b!252118))

(assert (= (and b!252116 (not c!42455)) b!252117))

(declare-fun m!268363 () Bool)

(assert (=> b!252115 m!268363))

(declare-fun m!268365 () Bool)

(assert (=> b!252117 m!268365))

(assert (=> d!61215 m!268267))

(declare-fun m!268367 () Bool)

(assert (=> d!61215 m!268367))

(declare-fun m!268369 () Bool)

(assert (=> d!61215 m!268369))

(declare-fun m!268371 () Bool)

(assert (=> d!61215 m!268371))

(declare-fun m!268373 () Bool)

(assert (=> d!61215 m!268373))

(declare-fun m!268375 () Bool)

(assert (=> d!61215 m!268375))

(assert (=> d!61215 m!268369))

(assert (=> b!252020 d!61215))

(declare-fun d!61217 () Bool)

(declare-fun e!163507 () Bool)

(assert (=> d!61217 e!163507))

(declare-fun res!123429 () Bool)

(assert (=> d!61217 (=> (not res!123429) (not e!163507))))

(declare-fun lt!126406 () SeekEntryResult!1140)

(assert (=> d!61217 (= res!123429 ((_ is Found!1140) lt!126406))))

(assert (=> d!61217 (= lt!126406 (seekEntryOrOpen!0 key!932 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(declare-fun lt!126407 () Unit!7796)

(declare-fun choose!1209 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 64) Int) Unit!7796)

(assert (=> d!61217 (= lt!126407 (choose!1209 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 (defaultEntry!4657 thiss!1504)))))

(assert (=> d!61217 (validMask!0 (mask!10869 thiss!1504))))

(assert (=> d!61217 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!404 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 (defaultEntry!4657 thiss!1504)) lt!126407)))

(declare-fun b!252123 () Bool)

(declare-fun res!123430 () Bool)

(assert (=> b!252123 (=> (not res!123430) (not e!163507))))

(assert (=> b!252123 (= res!123430 (inRange!0 (index!6731 lt!126406) (mask!10869 thiss!1504)))))

(declare-fun b!252124 () Bool)

(assert (=> b!252124 (= e!163507 (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6731 lt!126406)) key!932))))

(assert (=> b!252124 (and (bvsge (index!6731 lt!126406) #b00000000000000000000000000000000) (bvslt (index!6731 lt!126406) (size!6195 (_keys!6803 thiss!1504))))))

(assert (= (and d!61217 res!123429) b!252123))

(assert (= (and b!252123 res!123430) b!252124))

(assert (=> d!61217 m!268305))

(declare-fun m!268377 () Bool)

(assert (=> d!61217 m!268377))

(assert (=> d!61217 m!268267))

(declare-fun m!268379 () Bool)

(assert (=> b!252123 m!268379))

(declare-fun m!268381 () Bool)

(assert (=> b!252124 m!268381))

(assert (=> b!252021 d!61217))

(declare-fun d!61219 () Bool)

(declare-fun res!123439 () Bool)

(declare-fun e!163517 () Bool)

(assert (=> d!61219 (=> res!123439 e!163517)))

(assert (=> d!61219 (= res!123439 (bvsge #b00000000000000000000000000000000 (size!6195 lt!126350)))))

(assert (=> d!61219 (= (arrayNoDuplicates!0 lt!126350 #b00000000000000000000000000000000 Nil!3754) e!163517)))

(declare-fun b!252135 () Bool)

(declare-fun e!163519 () Bool)

(declare-fun call!23733 () Bool)

(assert (=> b!252135 (= e!163519 call!23733)))

(declare-fun b!252136 () Bool)

(declare-fun e!163518 () Bool)

(declare-fun contains!1827 (List!3757 (_ BitVec 64)) Bool)

(assert (=> b!252136 (= e!163518 (contains!1827 Nil!3754 (select (arr!5848 lt!126350) #b00000000000000000000000000000000)))))

(declare-fun bm!23730 () Bool)

(declare-fun c!42460 () Bool)

(assert (=> bm!23730 (= call!23733 (arrayNoDuplicates!0 lt!126350 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42460 (Cons!3753 (select (arr!5848 lt!126350) #b00000000000000000000000000000000) Nil!3754) Nil!3754)))))

(declare-fun b!252137 () Bool)

(declare-fun e!163516 () Bool)

(assert (=> b!252137 (= e!163517 e!163516)))

(declare-fun res!123437 () Bool)

(assert (=> b!252137 (=> (not res!123437) (not e!163516))))

(assert (=> b!252137 (= res!123437 (not e!163518))))

(declare-fun res!123438 () Bool)

(assert (=> b!252137 (=> (not res!123438) (not e!163518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!252137 (= res!123438 (validKeyInArray!0 (select (arr!5848 lt!126350) #b00000000000000000000000000000000)))))

(declare-fun b!252138 () Bool)

(assert (=> b!252138 (= e!163516 e!163519)))

(assert (=> b!252138 (= c!42460 (validKeyInArray!0 (select (arr!5848 lt!126350) #b00000000000000000000000000000000)))))

(declare-fun b!252139 () Bool)

(assert (=> b!252139 (= e!163519 call!23733)))

(assert (= (and d!61219 (not res!123439)) b!252137))

(assert (= (and b!252137 res!123438) b!252136))

(assert (= (and b!252137 res!123437) b!252138))

(assert (= (and b!252138 c!42460) b!252135))

(assert (= (and b!252138 (not c!42460)) b!252139))

(assert (= (or b!252135 b!252139) bm!23730))

(declare-fun m!268383 () Bool)

(assert (=> b!252136 m!268383))

(assert (=> b!252136 m!268383))

(declare-fun m!268385 () Bool)

(assert (=> b!252136 m!268385))

(assert (=> bm!23730 m!268383))

(declare-fun m!268387 () Bool)

(assert (=> bm!23730 m!268387))

(assert (=> b!252137 m!268383))

(assert (=> b!252137 m!268383))

(declare-fun m!268389 () Bool)

(assert (=> b!252137 m!268389))

(assert (=> b!252138 m!268383))

(assert (=> b!252138 m!268383))

(assert (=> b!252138 m!268389))

(assert (=> b!252008 d!61219))

(declare-fun b!252151 () Bool)

(declare-fun e!163524 () Bool)

(assert (=> b!252151 (= e!163524 (= (arrayCountValidKeys!0 (array!12339 (store (arr!5848 (_keys!6803 thiss!1504)) index!297 key!932) (size!6195 (_keys!6803 thiss!1504))) #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6803 thiss!1504) #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!252150 () Bool)

(declare-fun e!163525 () Bool)

(assert (=> b!252150 (= e!163525 (bvslt (size!6195 (_keys!6803 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!61221 () Bool)

(assert (=> d!61221 e!163524))

(declare-fun res!123450 () Bool)

(assert (=> d!61221 (=> (not res!123450) (not e!163524))))

(assert (=> d!61221 (= res!123450 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6195 (_keys!6803 thiss!1504)))))))

(declare-fun lt!126410 () Unit!7796)

(declare-fun choose!1 (array!12338 (_ BitVec 32) (_ BitVec 64)) Unit!7796)

(assert (=> d!61221 (= lt!126410 (choose!1 (_keys!6803 thiss!1504) index!297 key!932))))

(assert (=> d!61221 e!163525))

(declare-fun res!123449 () Bool)

(assert (=> d!61221 (=> (not res!123449) (not e!163525))))

(assert (=> d!61221 (= res!123449 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6195 (_keys!6803 thiss!1504)))))))

(assert (=> d!61221 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6803 thiss!1504) index!297 key!932) lt!126410)))

(declare-fun b!252149 () Bool)

(declare-fun res!123448 () Bool)

(assert (=> b!252149 (=> (not res!123448) (not e!163525))))

(assert (=> b!252149 (= res!123448 (validKeyInArray!0 key!932))))

(declare-fun b!252148 () Bool)

(declare-fun res!123451 () Bool)

(assert (=> b!252148 (=> (not res!123451) (not e!163525))))

(assert (=> b!252148 (= res!123451 (not (validKeyInArray!0 (select (arr!5848 (_keys!6803 thiss!1504)) index!297))))))

(assert (= (and d!61221 res!123449) b!252148))

(assert (= (and b!252148 res!123451) b!252149))

(assert (= (and b!252149 res!123448) b!252150))

(assert (= (and d!61221 res!123450) b!252151))

(assert (=> b!252151 m!268279))

(declare-fun m!268391 () Bool)

(assert (=> b!252151 m!268391))

(assert (=> b!252151 m!268281))

(declare-fun m!268393 () Bool)

(assert (=> d!61221 m!268393))

(declare-fun m!268395 () Bool)

(assert (=> b!252149 m!268395))

(declare-fun m!268397 () Bool)

(assert (=> b!252148 m!268397))

(assert (=> b!252148 m!268397))

(declare-fun m!268399 () Bool)

(assert (=> b!252148 m!268399))

(assert (=> b!252008 d!61221))

(declare-fun b!252160 () Bool)

(declare-fun e!163530 () (_ BitVec 32))

(assert (=> b!252160 (= e!163530 #b00000000000000000000000000000000)))

(declare-fun b!252162 () Bool)

(declare-fun e!163531 () (_ BitVec 32))

(declare-fun call!23736 () (_ BitVec 32))

(assert (=> b!252162 (= e!163531 (bvadd #b00000000000000000000000000000001 call!23736))))

(declare-fun bm!23733 () Bool)

(assert (=> bm!23733 (= call!23736 (arrayCountValidKeys!0 (_keys!6803 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun b!252163 () Bool)

(assert (=> b!252163 (= e!163531 call!23736)))

(declare-fun d!61223 () Bool)

(declare-fun lt!126413 () (_ BitVec 32))

(assert (=> d!61223 (and (bvsge lt!126413 #b00000000000000000000000000000000) (bvsle lt!126413 (bvsub (size!6195 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61223 (= lt!126413 e!163530)))

(declare-fun c!42466 () Bool)

(assert (=> d!61223 (= c!42466 (bvsge #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(assert (=> d!61223 (and (bvsle #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6195 (_keys!6803 thiss!1504)) (size!6195 (_keys!6803 thiss!1504))))))

(assert (=> d!61223 (= (arrayCountValidKeys!0 (_keys!6803 thiss!1504) #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) lt!126413)))

(declare-fun b!252161 () Bool)

(assert (=> b!252161 (= e!163530 e!163531)))

(declare-fun c!42465 () Bool)

(assert (=> b!252161 (= c!42465 (validKeyInArray!0 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61223 c!42466) b!252160))

(assert (= (and d!61223 (not c!42466)) b!252161))

(assert (= (and b!252161 c!42465) b!252162))

(assert (= (and b!252161 (not c!42465)) b!252163))

(assert (= (or b!252162 b!252163) bm!23733))

(declare-fun m!268401 () Bool)

(assert (=> bm!23733 m!268401))

(assert (=> b!252161 m!268357))

(assert (=> b!252161 m!268357))

(declare-fun m!268403 () Bool)

(assert (=> b!252161 m!268403))

(assert (=> b!252008 d!61223))

(declare-fun d!61225 () Bool)

(assert (=> d!61225 (= (validMask!0 (mask!10869 thiss!1504)) (and (or (= (mask!10869 thiss!1504) #b00000000000000000000000000000111) (= (mask!10869 thiss!1504) #b00000000000000000000000000001111) (= (mask!10869 thiss!1504) #b00000000000000000000000000011111) (= (mask!10869 thiss!1504) #b00000000000000000000000000111111) (= (mask!10869 thiss!1504) #b00000000000000000000000001111111) (= (mask!10869 thiss!1504) #b00000000000000000000000011111111) (= (mask!10869 thiss!1504) #b00000000000000000000000111111111) (= (mask!10869 thiss!1504) #b00000000000000000000001111111111) (= (mask!10869 thiss!1504) #b00000000000000000000011111111111) (= (mask!10869 thiss!1504) #b00000000000000000000111111111111) (= (mask!10869 thiss!1504) #b00000000000000000001111111111111) (= (mask!10869 thiss!1504) #b00000000000000000011111111111111) (= (mask!10869 thiss!1504) #b00000000000000000111111111111111) (= (mask!10869 thiss!1504) #b00000000000000001111111111111111) (= (mask!10869 thiss!1504) #b00000000000000011111111111111111) (= (mask!10869 thiss!1504) #b00000000000000111111111111111111) (= (mask!10869 thiss!1504) #b00000000000001111111111111111111) (= (mask!10869 thiss!1504) #b00000000000011111111111111111111) (= (mask!10869 thiss!1504) #b00000000000111111111111111111111) (= (mask!10869 thiss!1504) #b00000000001111111111111111111111) (= (mask!10869 thiss!1504) #b00000000011111111111111111111111) (= (mask!10869 thiss!1504) #b00000000111111111111111111111111) (= (mask!10869 thiss!1504) #b00000001111111111111111111111111) (= (mask!10869 thiss!1504) #b00000011111111111111111111111111) (= (mask!10869 thiss!1504) #b00000111111111111111111111111111) (= (mask!10869 thiss!1504) #b00001111111111111111111111111111) (= (mask!10869 thiss!1504) #b00011111111111111111111111111111) (= (mask!10869 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10869 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!252008 d!61225))

(declare-fun b!252172 () Bool)

(declare-fun e!163540 () Bool)

(declare-fun call!23739 () Bool)

(assert (=> b!252172 (= e!163540 call!23739)))

(declare-fun b!252173 () Bool)

(declare-fun e!163539 () Bool)

(assert (=> b!252173 (= e!163539 e!163540)))

(declare-fun lt!126420 () (_ BitVec 64))

(assert (=> b!252173 (= lt!126420 (select (arr!5848 lt!126350) #b00000000000000000000000000000000))))

(declare-fun lt!126421 () Unit!7796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12338 (_ BitVec 64) (_ BitVec 32)) Unit!7796)

(assert (=> b!252173 (= lt!126421 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!126350 lt!126420 #b00000000000000000000000000000000))))

(assert (=> b!252173 (arrayContainsKey!0 lt!126350 lt!126420 #b00000000000000000000000000000000)))

(declare-fun lt!126422 () Unit!7796)

(assert (=> b!252173 (= lt!126422 lt!126421)))

(declare-fun res!123457 () Bool)

(assert (=> b!252173 (= res!123457 (= (seekEntryOrOpen!0 (select (arr!5848 lt!126350) #b00000000000000000000000000000000) lt!126350 (mask!10869 thiss!1504)) (Found!1140 #b00000000000000000000000000000000)))))

(assert (=> b!252173 (=> (not res!123457) (not e!163540))))

(declare-fun d!61227 () Bool)

(declare-fun res!123456 () Bool)

(declare-fun e!163538 () Bool)

(assert (=> d!61227 (=> res!123456 e!163538)))

(assert (=> d!61227 (= res!123456 (bvsge #b00000000000000000000000000000000 (size!6195 lt!126350)))))

(assert (=> d!61227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126350 (mask!10869 thiss!1504)) e!163538)))

(declare-fun b!252174 () Bool)

(assert (=> b!252174 (= e!163538 e!163539)))

(declare-fun c!42469 () Bool)

(assert (=> b!252174 (= c!42469 (validKeyInArray!0 (select (arr!5848 lt!126350) #b00000000000000000000000000000000)))))

(declare-fun b!252175 () Bool)

(assert (=> b!252175 (= e!163539 call!23739)))

(declare-fun bm!23736 () Bool)

(assert (=> bm!23736 (= call!23739 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!126350 (mask!10869 thiss!1504)))))

(assert (= (and d!61227 (not res!123456)) b!252174))

(assert (= (and b!252174 c!42469) b!252173))

(assert (= (and b!252174 (not c!42469)) b!252175))

(assert (= (and b!252173 res!123457) b!252172))

(assert (= (or b!252172 b!252175) bm!23736))

(assert (=> b!252173 m!268383))

(declare-fun m!268405 () Bool)

(assert (=> b!252173 m!268405))

(declare-fun m!268407 () Bool)

(assert (=> b!252173 m!268407))

(assert (=> b!252173 m!268383))

(declare-fun m!268409 () Bool)

(assert (=> b!252173 m!268409))

(assert (=> b!252174 m!268383))

(assert (=> b!252174 m!268383))

(assert (=> b!252174 m!268389))

(declare-fun m!268411 () Bool)

(assert (=> bm!23736 m!268411))

(assert (=> b!252008 d!61227))

(declare-fun b!252176 () Bool)

(declare-fun e!163541 () (_ BitVec 32))

(assert (=> b!252176 (= e!163541 #b00000000000000000000000000000000)))

(declare-fun b!252178 () Bool)

(declare-fun e!163542 () (_ BitVec 32))

(declare-fun call!23740 () (_ BitVec 32))

(assert (=> b!252178 (= e!163542 (bvadd #b00000000000000000000000000000001 call!23740))))

(declare-fun bm!23737 () Bool)

(assert (=> bm!23737 (= call!23740 (arrayCountValidKeys!0 lt!126350 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun b!252179 () Bool)

(assert (=> b!252179 (= e!163542 call!23740)))

(declare-fun d!61229 () Bool)

(declare-fun lt!126423 () (_ BitVec 32))

(assert (=> d!61229 (and (bvsge lt!126423 #b00000000000000000000000000000000) (bvsle lt!126423 (bvsub (size!6195 lt!126350) #b00000000000000000000000000000000)))))

(assert (=> d!61229 (= lt!126423 e!163541)))

(declare-fun c!42471 () Bool)

(assert (=> d!61229 (= c!42471 (bvsge #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(assert (=> d!61229 (and (bvsle #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6195 (_keys!6803 thiss!1504)) (size!6195 lt!126350)))))

(assert (=> d!61229 (= (arrayCountValidKeys!0 lt!126350 #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) lt!126423)))

(declare-fun b!252177 () Bool)

(assert (=> b!252177 (= e!163541 e!163542)))

(declare-fun c!42470 () Bool)

(assert (=> b!252177 (= c!42470 (validKeyInArray!0 (select (arr!5848 lt!126350) #b00000000000000000000000000000000)))))

(assert (= (and d!61229 c!42471) b!252176))

(assert (= (and d!61229 (not c!42471)) b!252177))

(assert (= (and b!252177 c!42470) b!252178))

(assert (= (and b!252177 (not c!42470)) b!252179))

(assert (= (or b!252178 b!252179) bm!23737))

(declare-fun m!268413 () Bool)

(assert (=> bm!23737 m!268413))

(assert (=> b!252177 m!268383))

(assert (=> b!252177 m!268383))

(assert (=> b!252177 m!268389))

(assert (=> b!252008 d!61229))

(declare-fun d!61231 () Bool)

(declare-fun e!163545 () Bool)

(assert (=> d!61231 e!163545))

(declare-fun res!123460 () Bool)

(assert (=> d!61231 (=> (not res!123460) (not e!163545))))

(assert (=> d!61231 (= res!123460 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6195 (_keys!6803 thiss!1504)))))))

(declare-fun lt!126426 () Unit!7796)

(declare-fun choose!41 (array!12338 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3757) Unit!7796)

(assert (=> d!61231 (= lt!126426 (choose!41 (_keys!6803 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3754))))

(assert (=> d!61231 (bvslt (size!6195 (_keys!6803 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61231 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6803 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3754) lt!126426)))

(declare-fun b!252182 () Bool)

(assert (=> b!252182 (= e!163545 (arrayNoDuplicates!0 (array!12339 (store (arr!5848 (_keys!6803 thiss!1504)) index!297 key!932) (size!6195 (_keys!6803 thiss!1504))) #b00000000000000000000000000000000 Nil!3754))))

(assert (= (and d!61231 res!123460) b!252182))

(declare-fun m!268415 () Bool)

(assert (=> d!61231 m!268415))

(assert (=> b!252182 m!268279))

(declare-fun m!268417 () Bool)

(assert (=> b!252182 m!268417))

(assert (=> b!252008 d!61231))

(assert (=> b!252008 d!61209))

(declare-fun d!61233 () Bool)

(declare-fun e!163548 () Bool)

(assert (=> d!61233 e!163548))

(declare-fun res!123463 () Bool)

(assert (=> d!61233 (=> (not res!123463) (not e!163548))))

(assert (=> d!61233 (= res!123463 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6195 (_keys!6803 thiss!1504)))))))

(declare-fun lt!126429 () Unit!7796)

(declare-fun choose!102 ((_ BitVec 64) array!12338 (_ BitVec 32) (_ BitVec 32)) Unit!7796)

(assert (=> d!61233 (= lt!126429 (choose!102 key!932 (_keys!6803 thiss!1504) index!297 (mask!10869 thiss!1504)))))

(assert (=> d!61233 (validMask!0 (mask!10869 thiss!1504))))

(assert (=> d!61233 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6803 thiss!1504) index!297 (mask!10869 thiss!1504)) lt!126429)))

(declare-fun b!252185 () Bool)

(assert (=> b!252185 (= e!163548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12339 (store (arr!5848 (_keys!6803 thiss!1504)) index!297 key!932) (size!6195 (_keys!6803 thiss!1504))) (mask!10869 thiss!1504)))))

(assert (= (and d!61233 res!123463) b!252185))

(declare-fun m!268419 () Bool)

(assert (=> d!61233 m!268419))

(assert (=> d!61233 m!268267))

(assert (=> b!252185 m!268279))

(declare-fun m!268421 () Bool)

(assert (=> b!252185 m!268421))

(assert (=> b!252008 d!61233))

(declare-fun d!61235 () Bool)

(assert (=> d!61235 (= (inRange!0 index!297 (mask!10869 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10869 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!252007 d!61235))

(declare-fun d!61237 () Bool)

(declare-fun e!163554 () Bool)

(assert (=> d!61237 e!163554))

(declare-fun res!123466 () Bool)

(assert (=> d!61237 (=> res!123466 e!163554)))

(declare-fun lt!126441 () Bool)

(assert (=> d!61237 (= res!123466 (not lt!126441))))

(declare-fun lt!126438 () Bool)

(assert (=> d!61237 (= lt!126441 lt!126438)))

(declare-fun lt!126440 () Unit!7796)

(declare-fun e!163553 () Unit!7796)

(assert (=> d!61237 (= lt!126440 e!163553)))

(declare-fun c!42474 () Bool)

(assert (=> d!61237 (= c!42474 lt!126438)))

(declare-fun containsKey!292 (List!3756 (_ BitVec 64)) Bool)

(assert (=> d!61237 (= lt!126438 (containsKey!292 (toList!1905 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504))) key!932))))

(assert (=> d!61237 (= (contains!1825 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)) key!932) lt!126441)))

(declare-fun b!252192 () Bool)

(declare-fun lt!126439 () Unit!7796)

(assert (=> b!252192 (= e!163553 lt!126439)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!241 (List!3756 (_ BitVec 64)) Unit!7796)

(assert (=> b!252192 (= lt!126439 (lemmaContainsKeyImpliesGetValueByKeyDefined!241 (toList!1905 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504))) key!932))))

(declare-datatypes ((Option!306 0))(
  ( (Some!305 (v!5366 V!8323)) (None!304) )
))
(declare-fun isDefined!242 (Option!306) Bool)

(declare-fun getValueByKey!300 (List!3756 (_ BitVec 64)) Option!306)

(assert (=> b!252192 (isDefined!242 (getValueByKey!300 (toList!1905 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504))) key!932))))

(declare-fun b!252193 () Bool)

(declare-fun Unit!7805 () Unit!7796)

(assert (=> b!252193 (= e!163553 Unit!7805)))

(declare-fun b!252194 () Bool)

(assert (=> b!252194 (= e!163554 (isDefined!242 (getValueByKey!300 (toList!1905 (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504))) key!932)))))

(assert (= (and d!61237 c!42474) b!252192))

(assert (= (and d!61237 (not c!42474)) b!252193))

(assert (= (and d!61237 (not res!123466)) b!252194))

(declare-fun m!268423 () Bool)

(assert (=> d!61237 m!268423))

(declare-fun m!268425 () Bool)

(assert (=> b!252192 m!268425))

(declare-fun m!268427 () Bool)

(assert (=> b!252192 m!268427))

(assert (=> b!252192 m!268427))

(declare-fun m!268429 () Bool)

(assert (=> b!252192 m!268429))

(assert (=> b!252194 m!268427))

(assert (=> b!252194 m!268427))

(assert (=> b!252194 m!268429))

(assert (=> b!252007 d!61237))

(declare-fun b!252237 () Bool)

(declare-fun e!163584 () Bool)

(declare-fun e!163582 () Bool)

(assert (=> b!252237 (= e!163584 e!163582)))

(declare-fun res!123492 () Bool)

(declare-fun call!23759 () Bool)

(assert (=> b!252237 (= res!123492 call!23759)))

(assert (=> b!252237 (=> (not res!123492) (not e!163582))))

(declare-fun b!252238 () Bool)

(declare-fun lt!126500 () ListLongMap!3779)

(declare-fun apply!243 (ListLongMap!3779 (_ BitVec 64)) V!8323)

(assert (=> b!252238 (= e!163582 (= (apply!243 lt!126500 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4498 thiss!1504)))))

(declare-fun b!252239 () Bool)

(declare-fun e!163593 () ListLongMap!3779)

(declare-fun e!163587 () ListLongMap!3779)

(assert (=> b!252239 (= e!163593 e!163587)))

(declare-fun c!42488 () Bool)

(assert (=> b!252239 (= c!42488 (and (not (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!252240 () Bool)

(declare-fun e!163589 () Bool)

(declare-fun call!23755 () Bool)

(assert (=> b!252240 (= e!163589 (not call!23755))))

(declare-fun b!252241 () Bool)

(declare-fun e!163592 () Bool)

(declare-fun e!163585 () Bool)

(assert (=> b!252241 (= e!163592 e!163585)))

(declare-fun res!123487 () Bool)

(assert (=> b!252241 (=> (not res!123487) (not e!163585))))

(assert (=> b!252241 (= res!123487 (contains!1825 lt!126500 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!252241 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun bm!23752 () Bool)

(declare-fun call!23761 () ListLongMap!3779)

(declare-fun call!23756 () ListLongMap!3779)

(assert (=> bm!23752 (= call!23761 call!23756)))

(declare-fun d!61239 () Bool)

(declare-fun e!163583 () Bool)

(assert (=> d!61239 e!163583))

(declare-fun res!123488 () Bool)

(assert (=> d!61239 (=> (not res!123488) (not e!163583))))

(assert (=> d!61239 (= res!123488 (or (bvsge #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))))

(declare-fun lt!126498 () ListLongMap!3779)

(assert (=> d!61239 (= lt!126500 lt!126498)))

(declare-fun lt!126505 () Unit!7796)

(declare-fun e!163586 () Unit!7796)

(assert (=> d!61239 (= lt!126505 e!163586)))

(declare-fun c!42490 () Bool)

(declare-fun e!163581 () Bool)

(assert (=> d!61239 (= c!42490 e!163581)))

(declare-fun res!123490 () Bool)

(assert (=> d!61239 (=> (not res!123490) (not e!163581))))

(assert (=> d!61239 (= res!123490 (bvslt #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(assert (=> d!61239 (= lt!126498 e!163593)))

(declare-fun c!42491 () Bool)

(assert (=> d!61239 (= c!42491 (and (not (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61239 (validMask!0 (mask!10869 thiss!1504))))

(assert (=> d!61239 (= (getCurrentListMap!1428 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)) lt!126500)))

(declare-fun b!252242 () Bool)

(assert (=> b!252242 (= e!163584 (not call!23759))))

(declare-fun b!252243 () Bool)

(declare-fun get!3013 (ValueCell!2910 V!8323) V!8323)

(declare-fun dynLambda!581 (Int (_ BitVec 64)) V!8323)

(assert (=> b!252243 (= e!163585 (= (apply!243 lt!126500 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)) (get!3013 (select (arr!5847 (_values!4640 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!581 (defaultEntry!4657 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!252243 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6194 (_values!4640 thiss!1504))))))

(assert (=> b!252243 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun b!252244 () Bool)

(declare-fun e!163588 () Bool)

(assert (=> b!252244 (= e!163589 e!163588)))

(declare-fun res!123491 () Bool)

(assert (=> b!252244 (= res!123491 call!23755)))

(assert (=> b!252244 (=> (not res!123491) (not e!163588))))

(declare-fun b!252245 () Bool)

(assert (=> b!252245 (= e!163581 (validKeyInArray!0 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23753 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!562 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 32) Int) ListLongMap!3779)

(assert (=> bm!23753 (= call!23756 (getCurrentListMapNoExtraKeys!562 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(declare-fun b!252246 () Bool)

(declare-fun e!163590 () ListLongMap!3779)

(declare-fun call!23758 () ListLongMap!3779)

(assert (=> b!252246 (= e!163590 call!23758)))

(declare-fun call!23757 () ListLongMap!3779)

(declare-fun bm!23754 () Bool)

(declare-fun +!665 (ListLongMap!3779 tuple2!4852) ListLongMap!3779)

(assert (=> bm!23754 (= call!23757 (+!665 (ite c!42491 call!23756 (ite c!42488 call!23761 call!23758)) (ite (or c!42491 c!42488) (tuple2!4853 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4498 thiss!1504)) (tuple2!4853 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4498 thiss!1504)))))))

(declare-fun b!252247 () Bool)

(assert (=> b!252247 (= e!163588 (= (apply!243 lt!126500 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4498 thiss!1504)))))

(declare-fun b!252248 () Bool)

(declare-fun lt!126491 () Unit!7796)

(assert (=> b!252248 (= e!163586 lt!126491)))

(declare-fun lt!126487 () ListLongMap!3779)

(assert (=> b!252248 (= lt!126487 (getCurrentListMapNoExtraKeys!562 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(declare-fun lt!126503 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126503 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126497 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126497 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126490 () Unit!7796)

(declare-fun addStillContains!219 (ListLongMap!3779 (_ BitVec 64) V!8323 (_ BitVec 64)) Unit!7796)

(assert (=> b!252248 (= lt!126490 (addStillContains!219 lt!126487 lt!126503 (zeroValue!4498 thiss!1504) lt!126497))))

(assert (=> b!252248 (contains!1825 (+!665 lt!126487 (tuple2!4853 lt!126503 (zeroValue!4498 thiss!1504))) lt!126497)))

(declare-fun lt!126502 () Unit!7796)

(assert (=> b!252248 (= lt!126502 lt!126490)))

(declare-fun lt!126486 () ListLongMap!3779)

(assert (=> b!252248 (= lt!126486 (getCurrentListMapNoExtraKeys!562 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(declare-fun lt!126488 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126488 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126496 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126496 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126492 () Unit!7796)

(declare-fun addApplyDifferent!219 (ListLongMap!3779 (_ BitVec 64) V!8323 (_ BitVec 64)) Unit!7796)

(assert (=> b!252248 (= lt!126492 (addApplyDifferent!219 lt!126486 lt!126488 (minValue!4498 thiss!1504) lt!126496))))

(assert (=> b!252248 (= (apply!243 (+!665 lt!126486 (tuple2!4853 lt!126488 (minValue!4498 thiss!1504))) lt!126496) (apply!243 lt!126486 lt!126496))))

(declare-fun lt!126494 () Unit!7796)

(assert (=> b!252248 (= lt!126494 lt!126492)))

(declare-fun lt!126504 () ListLongMap!3779)

(assert (=> b!252248 (= lt!126504 (getCurrentListMapNoExtraKeys!562 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(declare-fun lt!126489 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126489 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126499 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126499 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126506 () Unit!7796)

(assert (=> b!252248 (= lt!126506 (addApplyDifferent!219 lt!126504 lt!126489 (zeroValue!4498 thiss!1504) lt!126499))))

(assert (=> b!252248 (= (apply!243 (+!665 lt!126504 (tuple2!4853 lt!126489 (zeroValue!4498 thiss!1504))) lt!126499) (apply!243 lt!126504 lt!126499))))

(declare-fun lt!126501 () Unit!7796)

(assert (=> b!252248 (= lt!126501 lt!126506)))

(declare-fun lt!126495 () ListLongMap!3779)

(assert (=> b!252248 (= lt!126495 (getCurrentListMapNoExtraKeys!562 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4657 thiss!1504)))))

(declare-fun lt!126507 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126507 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126493 () (_ BitVec 64))

(assert (=> b!252248 (= lt!126493 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252248 (= lt!126491 (addApplyDifferent!219 lt!126495 lt!126507 (minValue!4498 thiss!1504) lt!126493))))

(assert (=> b!252248 (= (apply!243 (+!665 lt!126495 (tuple2!4853 lt!126507 (minValue!4498 thiss!1504))) lt!126493) (apply!243 lt!126495 lt!126493))))

(declare-fun bm!23755 () Bool)

(assert (=> bm!23755 (= call!23759 (contains!1825 lt!126500 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252249 () Bool)

(declare-fun res!123486 () Bool)

(assert (=> b!252249 (=> (not res!123486) (not e!163583))))

(assert (=> b!252249 (= res!123486 e!163592)))

(declare-fun res!123493 () Bool)

(assert (=> b!252249 (=> res!123493 e!163592)))

(declare-fun e!163591 () Bool)

(assert (=> b!252249 (= res!123493 (not e!163591))))

(declare-fun res!123485 () Bool)

(assert (=> b!252249 (=> (not res!123485) (not e!163591))))

(assert (=> b!252249 (= res!123485 (bvslt #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun b!252250 () Bool)

(declare-fun call!23760 () ListLongMap!3779)

(assert (=> b!252250 (= e!163587 call!23760)))

(declare-fun b!252251 () Bool)

(assert (=> b!252251 (= e!163590 call!23760)))

(declare-fun b!252252 () Bool)

(assert (=> b!252252 (= e!163591 (validKeyInArray!0 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252253 () Bool)

(declare-fun c!42489 () Bool)

(assert (=> b!252253 (= c!42489 (and (not (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!252253 (= e!163587 e!163590)))

(declare-fun b!252254 () Bool)

(declare-fun Unit!7806 () Unit!7796)

(assert (=> b!252254 (= e!163586 Unit!7806)))

(declare-fun bm!23756 () Bool)

(assert (=> bm!23756 (= call!23758 call!23761)))

(declare-fun bm!23757 () Bool)

(assert (=> bm!23757 (= call!23755 (contains!1825 lt!126500 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252255 () Bool)

(declare-fun res!123489 () Bool)

(assert (=> b!252255 (=> (not res!123489) (not e!163583))))

(assert (=> b!252255 (= res!123489 e!163584)))

(declare-fun c!42492 () Bool)

(assert (=> b!252255 (= c!42492 (not (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!23758 () Bool)

(assert (=> bm!23758 (= call!23760 call!23757)))

(declare-fun b!252256 () Bool)

(assert (=> b!252256 (= e!163593 (+!665 call!23757 (tuple2!4853 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4498 thiss!1504))))))

(declare-fun b!252257 () Bool)

(assert (=> b!252257 (= e!163583 e!163589)))

(declare-fun c!42487 () Bool)

(assert (=> b!252257 (= c!42487 (not (= (bvand (extraKeys!4394 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61239 c!42491) b!252256))

(assert (= (and d!61239 (not c!42491)) b!252239))

(assert (= (and b!252239 c!42488) b!252250))

(assert (= (and b!252239 (not c!42488)) b!252253))

(assert (= (and b!252253 c!42489) b!252251))

(assert (= (and b!252253 (not c!42489)) b!252246))

(assert (= (or b!252251 b!252246) bm!23756))

(assert (= (or b!252250 bm!23756) bm!23752))

(assert (= (or b!252250 b!252251) bm!23758))

(assert (= (or b!252256 bm!23752) bm!23753))

(assert (= (or b!252256 bm!23758) bm!23754))

(assert (= (and d!61239 res!123490) b!252245))

(assert (= (and d!61239 c!42490) b!252248))

(assert (= (and d!61239 (not c!42490)) b!252254))

(assert (= (and d!61239 res!123488) b!252249))

(assert (= (and b!252249 res!123485) b!252252))

(assert (= (and b!252249 (not res!123493)) b!252241))

(assert (= (and b!252241 res!123487) b!252243))

(assert (= (and b!252249 res!123486) b!252255))

(assert (= (and b!252255 c!42492) b!252237))

(assert (= (and b!252255 (not c!42492)) b!252242))

(assert (= (and b!252237 res!123492) b!252238))

(assert (= (or b!252237 b!252242) bm!23755))

(assert (= (and b!252255 res!123489) b!252257))

(assert (= (and b!252257 c!42487) b!252244))

(assert (= (and b!252257 (not c!42487)) b!252240))

(assert (= (and b!252244 res!123491) b!252247))

(assert (= (or b!252244 b!252240) bm!23757))

(declare-fun b_lambda!8145 () Bool)

(assert (=> (not b_lambda!8145) (not b!252243)))

(declare-fun t!8808 () Bool)

(declare-fun tb!3007 () Bool)

(assert (=> (and b!252018 (= (defaultEntry!4657 thiss!1504) (defaultEntry!4657 thiss!1504)) t!8808) tb!3007))

(declare-fun result!5327 () Bool)

(assert (=> tb!3007 (= result!5327 tp_is_empty!6507)))

(assert (=> b!252243 t!8808))

(declare-fun b_and!13701 () Bool)

(assert (= b_and!13697 (and (=> t!8808 result!5327) b_and!13701)))

(declare-fun m!268431 () Bool)

(assert (=> b!252247 m!268431))

(declare-fun m!268433 () Bool)

(assert (=> b!252248 m!268433))

(declare-fun m!268435 () Bool)

(assert (=> b!252248 m!268435))

(assert (=> b!252248 m!268433))

(declare-fun m!268437 () Bool)

(assert (=> b!252248 m!268437))

(declare-fun m!268439 () Bool)

(assert (=> b!252248 m!268439))

(declare-fun m!268441 () Bool)

(assert (=> b!252248 m!268441))

(declare-fun m!268443 () Bool)

(assert (=> b!252248 m!268443))

(declare-fun m!268445 () Bool)

(assert (=> b!252248 m!268445))

(declare-fun m!268447 () Bool)

(assert (=> b!252248 m!268447))

(declare-fun m!268449 () Bool)

(assert (=> b!252248 m!268449))

(assert (=> b!252248 m!268357))

(declare-fun m!268451 () Bool)

(assert (=> b!252248 m!268451))

(declare-fun m!268453 () Bool)

(assert (=> b!252248 m!268453))

(assert (=> b!252248 m!268445))

(declare-fun m!268455 () Bool)

(assert (=> b!252248 m!268455))

(declare-fun m!268457 () Bool)

(assert (=> b!252248 m!268457))

(declare-fun m!268459 () Bool)

(assert (=> b!252248 m!268459))

(assert (=> b!252248 m!268451))

(declare-fun m!268461 () Bool)

(assert (=> b!252248 m!268461))

(assert (=> b!252248 m!268455))

(declare-fun m!268463 () Bool)

(assert (=> b!252248 m!268463))

(assert (=> b!252245 m!268357))

(assert (=> b!252245 m!268357))

(assert (=> b!252245 m!268403))

(assert (=> b!252252 m!268357))

(assert (=> b!252252 m!268357))

(assert (=> b!252252 m!268403))

(declare-fun m!268465 () Bool)

(assert (=> b!252243 m!268465))

(assert (=> b!252243 m!268357))

(declare-fun m!268467 () Bool)

(assert (=> b!252243 m!268467))

(assert (=> b!252243 m!268465))

(declare-fun m!268469 () Bool)

(assert (=> b!252243 m!268469))

(declare-fun m!268471 () Bool)

(assert (=> b!252243 m!268471))

(assert (=> b!252243 m!268469))

(assert (=> b!252243 m!268357))

(assert (=> bm!23753 m!268439))

(declare-fun m!268473 () Bool)

(assert (=> bm!23755 m!268473))

(declare-fun m!268475 () Bool)

(assert (=> b!252238 m!268475))

(assert (=> b!252241 m!268357))

(assert (=> b!252241 m!268357))

(declare-fun m!268477 () Bool)

(assert (=> b!252241 m!268477))

(declare-fun m!268479 () Bool)

(assert (=> b!252256 m!268479))

(declare-fun m!268481 () Bool)

(assert (=> bm!23754 m!268481))

(assert (=> d!61239 m!268267))

(declare-fun m!268483 () Bool)

(assert (=> bm!23757 m!268483))

(assert (=> b!252007 d!61239))

(declare-fun b!252260 () Bool)

(declare-fun e!163596 () Bool)

(declare-fun call!23762 () Bool)

(assert (=> b!252260 (= e!163596 call!23762)))

(declare-fun b!252261 () Bool)

(declare-fun e!163595 () Bool)

(assert (=> b!252261 (= e!163595 e!163596)))

(declare-fun lt!126508 () (_ BitVec 64))

(assert (=> b!252261 (= lt!126508 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126509 () Unit!7796)

(assert (=> b!252261 (= lt!126509 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6803 thiss!1504) lt!126508 #b00000000000000000000000000000000))))

(assert (=> b!252261 (arrayContainsKey!0 (_keys!6803 thiss!1504) lt!126508 #b00000000000000000000000000000000)))

(declare-fun lt!126510 () Unit!7796)

(assert (=> b!252261 (= lt!126510 lt!126509)))

(declare-fun res!123495 () Bool)

(assert (=> b!252261 (= res!123495 (= (seekEntryOrOpen!0 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000) (_keys!6803 thiss!1504) (mask!10869 thiss!1504)) (Found!1140 #b00000000000000000000000000000000)))))

(assert (=> b!252261 (=> (not res!123495) (not e!163596))))

(declare-fun d!61241 () Bool)

(declare-fun res!123494 () Bool)

(declare-fun e!163594 () Bool)

(assert (=> d!61241 (=> res!123494 e!163594)))

(assert (=> d!61241 (= res!123494 (bvsge #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))))))

(assert (=> d!61241 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)) e!163594)))

(declare-fun b!252262 () Bool)

(assert (=> b!252262 (= e!163594 e!163595)))

(declare-fun c!42493 () Bool)

(assert (=> b!252262 (= c!42493 (validKeyInArray!0 (select (arr!5848 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!252263 () Bool)

(assert (=> b!252263 (= e!163595 call!23762)))

(declare-fun bm!23759 () Bool)

(assert (=> bm!23759 (= call!23762 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(assert (= (and d!61241 (not res!123494)) b!252262))

(assert (= (and b!252262 c!42493) b!252261))

(assert (= (and b!252262 (not c!42493)) b!252263))

(assert (= (and b!252261 res!123495) b!252260))

(assert (= (or b!252260 b!252263) bm!23759))

(assert (=> b!252261 m!268357))

(declare-fun m!268485 () Bool)

(assert (=> b!252261 m!268485))

(declare-fun m!268487 () Bool)

(assert (=> b!252261 m!268487))

(assert (=> b!252261 m!268357))

(declare-fun m!268489 () Bool)

(assert (=> b!252261 m!268489))

(assert (=> b!252262 m!268357))

(assert (=> b!252262 m!268357))

(assert (=> b!252262 m!268403))

(declare-fun m!268491 () Bool)

(assert (=> bm!23759 m!268491))

(assert (=> b!252026 d!61241))

(declare-fun d!61243 () Bool)

(declare-fun res!123502 () Bool)

(declare-fun e!163599 () Bool)

(assert (=> d!61243 (=> (not res!123502) (not e!163599))))

(declare-fun simpleValid!265 (LongMapFixedSize!3720) Bool)

(assert (=> d!61243 (= res!123502 (simpleValid!265 thiss!1504))))

(assert (=> d!61243 (= (valid!1447 thiss!1504) e!163599)))

(declare-fun b!252270 () Bool)

(declare-fun res!123503 () Bool)

(assert (=> b!252270 (=> (not res!123503) (not e!163599))))

(assert (=> b!252270 (= res!123503 (= (arrayCountValidKeys!0 (_keys!6803 thiss!1504) #b00000000000000000000000000000000 (size!6195 (_keys!6803 thiss!1504))) (_size!1909 thiss!1504)))))

(declare-fun b!252271 () Bool)

(declare-fun res!123504 () Bool)

(assert (=> b!252271 (=> (not res!123504) (not e!163599))))

(assert (=> b!252271 (= res!123504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(declare-fun b!252272 () Bool)

(assert (=> b!252272 (= e!163599 (arrayNoDuplicates!0 (_keys!6803 thiss!1504) #b00000000000000000000000000000000 Nil!3754))))

(assert (= (and d!61243 res!123502) b!252270))

(assert (= (and b!252270 res!123503) b!252271))

(assert (= (and b!252271 res!123504) b!252272))

(declare-fun m!268493 () Bool)

(assert (=> d!61243 m!268493))

(assert (=> b!252270 m!268281))

(assert (=> b!252271 m!268257))

(declare-fun m!268495 () Bool)

(assert (=> b!252272 m!268495))

(assert (=> start!24110 d!61243))

(declare-fun d!61245 () Bool)

(assert (=> d!61245 (= (array_inv!3855 (_keys!6803 thiss!1504)) (bvsge (size!6195 (_keys!6803 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252018 d!61245))

(declare-fun d!61247 () Bool)

(assert (=> d!61247 (= (array_inv!3856 (_values!4640 thiss!1504)) (bvsge (size!6194 (_values!4640 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!252018 d!61247))

(declare-fun b!252289 () Bool)

(declare-fun e!163610 () Bool)

(declare-fun call!23768 () Bool)

(assert (=> b!252289 (= e!163610 (not call!23768))))

(declare-fun b!252290 () Bool)

(declare-fun lt!126516 () SeekEntryResult!1140)

(assert (=> b!252290 (and (bvsge (index!6730 lt!126516) #b00000000000000000000000000000000) (bvslt (index!6730 lt!126516) (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun res!123514 () Bool)

(assert (=> b!252290 (= res!123514 (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6730 lt!126516)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252290 (=> (not res!123514) (not e!163610))))

(declare-fun d!61249 () Bool)

(declare-fun e!163608 () Bool)

(assert (=> d!61249 e!163608))

(declare-fun c!42498 () Bool)

(assert (=> d!61249 (= c!42498 ((_ is MissingZero!1140) lt!126516))))

(assert (=> d!61249 (= lt!126516 (seekEntryOrOpen!0 key!932 (_keys!6803 thiss!1504) (mask!10869 thiss!1504)))))

(declare-fun lt!126515 () Unit!7796)

(declare-fun choose!1210 (array!12338 array!12336 (_ BitVec 32) (_ BitVec 32) V!8323 V!8323 (_ BitVec 64) Int) Unit!7796)

(assert (=> d!61249 (= lt!126515 (choose!1210 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 (defaultEntry!4657 thiss!1504)))))

(assert (=> d!61249 (validMask!0 (mask!10869 thiss!1504))))

(assert (=> d!61249 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!406 (_keys!6803 thiss!1504) (_values!4640 thiss!1504) (mask!10869 thiss!1504) (extraKeys!4394 thiss!1504) (zeroValue!4498 thiss!1504) (minValue!4498 thiss!1504) key!932 (defaultEntry!4657 thiss!1504)) lt!126515)))

(declare-fun bm!23764 () Bool)

(declare-fun call!23767 () Bool)

(assert (=> bm!23764 (= call!23767 (inRange!0 (ite c!42498 (index!6730 lt!126516) (index!6733 lt!126516)) (mask!10869 thiss!1504)))))

(declare-fun b!252291 () Bool)

(declare-fun e!163611 () Bool)

(assert (=> b!252291 (= e!163611 (not call!23768))))

(declare-fun b!252292 () Bool)

(declare-fun e!163609 () Bool)

(assert (=> b!252292 (= e!163608 e!163609)))

(declare-fun c!42499 () Bool)

(assert (=> b!252292 (= c!42499 ((_ is MissingVacant!1140) lt!126516))))

(declare-fun bm!23765 () Bool)

(assert (=> bm!23765 (= call!23768 (arrayContainsKey!0 (_keys!6803 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252293 () Bool)

(declare-fun res!123515 () Bool)

(assert (=> b!252293 (=> (not res!123515) (not e!163611))))

(assert (=> b!252293 (= res!123515 (= (select (arr!5848 (_keys!6803 thiss!1504)) (index!6733 lt!126516)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252293 (and (bvsge (index!6733 lt!126516) #b00000000000000000000000000000000) (bvslt (index!6733 lt!126516) (size!6195 (_keys!6803 thiss!1504))))))

(declare-fun b!252294 () Bool)

(assert (=> b!252294 (= e!163608 e!163610)))

(declare-fun res!123513 () Bool)

(assert (=> b!252294 (= res!123513 call!23767)))

(assert (=> b!252294 (=> (not res!123513) (not e!163610))))

(declare-fun b!252295 () Bool)

(declare-fun res!123516 () Bool)

(assert (=> b!252295 (=> (not res!123516) (not e!163611))))

(assert (=> b!252295 (= res!123516 call!23767)))

(assert (=> b!252295 (= e!163609 e!163611)))

(declare-fun b!252296 () Bool)

(assert (=> b!252296 (= e!163609 ((_ is Undefined!1140) lt!126516))))

(assert (= (and d!61249 c!42498) b!252294))

(assert (= (and d!61249 (not c!42498)) b!252292))

(assert (= (and b!252294 res!123513) b!252290))

(assert (= (and b!252290 res!123514) b!252289))

(assert (= (and b!252292 c!42499) b!252295))

(assert (= (and b!252292 (not c!42499)) b!252296))

(assert (= (and b!252295 res!123516) b!252293))

(assert (= (and b!252293 res!123515) b!252291))

(assert (= (or b!252294 b!252295) bm!23764))

(assert (= (or b!252289 b!252291) bm!23765))

(declare-fun m!268497 () Bool)

(assert (=> b!252293 m!268497))

(assert (=> d!61249 m!268305))

(declare-fun m!268499 () Bool)

(assert (=> d!61249 m!268499))

(assert (=> d!61249 m!268267))

(declare-fun m!268501 () Bool)

(assert (=> b!252290 m!268501))

(declare-fun m!268503 () Bool)

(assert (=> bm!23764 m!268503))

(assert (=> bm!23765 m!268265))

(assert (=> b!252017 d!61249))

(declare-fun mapIsEmpty!11070 () Bool)

(declare-fun mapRes!11070 () Bool)

(assert (=> mapIsEmpty!11070 mapRes!11070))

(declare-fun b!252303 () Bool)

(declare-fun e!163617 () Bool)

(assert (=> b!252303 (= e!163617 tp_is_empty!6507)))

(declare-fun condMapEmpty!11070 () Bool)

(declare-fun mapDefault!11070 () ValueCell!2910)

(assert (=> mapNonEmpty!11064 (= condMapEmpty!11070 (= mapRest!11064 ((as const (Array (_ BitVec 32) ValueCell!2910)) mapDefault!11070)))))

(declare-fun e!163616 () Bool)

(assert (=> mapNonEmpty!11064 (= tp!23211 (and e!163616 mapRes!11070))))

(declare-fun mapNonEmpty!11070 () Bool)

(declare-fun tp!23220 () Bool)

(assert (=> mapNonEmpty!11070 (= mapRes!11070 (and tp!23220 e!163617))))

(declare-fun mapRest!11070 () (Array (_ BitVec 32) ValueCell!2910))

(declare-fun mapKey!11070 () (_ BitVec 32))

(declare-fun mapValue!11070 () ValueCell!2910)

(assert (=> mapNonEmpty!11070 (= mapRest!11064 (store mapRest!11070 mapKey!11070 mapValue!11070))))

(declare-fun b!252304 () Bool)

(assert (=> b!252304 (= e!163616 tp_is_empty!6507)))

(assert (= (and mapNonEmpty!11064 condMapEmpty!11070) mapIsEmpty!11070))

(assert (= (and mapNonEmpty!11064 (not condMapEmpty!11070)) mapNonEmpty!11070))

(assert (= (and mapNonEmpty!11070 ((_ is ValueCellFull!2910) mapValue!11070)) b!252303))

(assert (= (and mapNonEmpty!11064 ((_ is ValueCellFull!2910) mapDefault!11070)) b!252304))

(declare-fun m!268505 () Bool)

(assert (=> mapNonEmpty!11070 m!268505))

(declare-fun b_lambda!8147 () Bool)

(assert (= b_lambda!8145 (or (and b!252018 b_free!6645) b_lambda!8147)))

(check-sat (not bm!23764) (not d!61233) (not b!252177) (not mapNonEmpty!11070) (not d!61215) (not bm!23737) (not d!61211) (not b!252151) (not d!61237) (not b!252256) (not b!252117) (not b!252271) (not d!61239) (not bm!23736) (not b!252192) (not b!252261) (not bm!23757) (not b!252173) (not b!252148) (not b!252136) (not d!61243) (not b!252270) (not b!252243) (not b!252247) (not b!252100) (not bm!23730) (not b!252137) (not d!61217) (not b!252182) (not b!252272) (not b!252194) (not bm!23733) (not bm!23765) (not b!252252) (not b!252248) (not bm!23753) (not b!252123) (not bm!23755) (not bm!23754) (not b!252174) (not b_next!6645) (not b!252245) (not d!61231) (not b!252238) (not b_lambda!8147) (not b!252241) (not b!252161) (not d!61221) (not b!252185) (not b!252149) (not b!252138) (not d!61249) tp_is_empty!6507 (not b!252262) (not bm!23759) b_and!13701)
(check-sat b_and!13701 (not b_next!6645))
