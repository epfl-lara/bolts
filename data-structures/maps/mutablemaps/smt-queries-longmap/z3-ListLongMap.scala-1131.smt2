; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23266 () Bool)

(assert start!23266)

(declare-fun b!244261 () Bool)

(declare-fun b_free!6537 () Bool)

(declare-fun b_next!6537 () Bool)

(assert (=> b!244261 (= b_free!6537 (not b_next!6537))))

(declare-fun tp!22837 () Bool)

(declare-fun b_and!13539 () Bool)

(assert (=> b!244261 (= tp!22837 b_and!13539)))

(declare-fun b!244250 () Bool)

(declare-fun res!119802 () Bool)

(declare-fun e!158504 () Bool)

(assert (=> b!244250 (=> (not res!119802) (not e!158504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8179 0))(
  ( (V!8180 (val!3244 Int)) )
))
(declare-datatypes ((ValueCell!2856 0))(
  ( (ValueCellFull!2856 (v!5289 V!8179)) (EmptyCell!2856) )
))
(declare-datatypes ((array!12090 0))(
  ( (array!12091 (arr!5739 (Array (_ BitVec 32) ValueCell!2856)) (size!6081 (_ BitVec 32))) )
))
(declare-datatypes ((array!12092 0))(
  ( (array!12093 (arr!5740 (Array (_ BitVec 32) (_ BitVec 64))) (size!6082 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3612 0))(
  ( (LongMapFixedSize!3613 (defaultEntry!4523 Int) (mask!10622 (_ BitVec 32)) (extraKeys!4260 (_ BitVec 32)) (zeroValue!4364 V!8179) (minValue!4364 V!8179) (_size!1855 (_ BitVec 32)) (_keys!6635 array!12092) (_values!4506 array!12090) (_vacant!1855 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3612)

(assert (=> b!244250 (= res!119802 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6082 (_keys!6635 thiss!1504)))))))

(declare-fun b!244251 () Bool)

(declare-datatypes ((Unit!7537 0))(
  ( (Unit!7538) )
))
(declare-fun e!158501 () Unit!7537)

(declare-fun Unit!7539 () Unit!7537)

(assert (=> b!244251 (= e!158501 Unit!7539)))

(declare-fun lt!122482 () Unit!7537)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!169 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 64) (_ BitVec 32) Int) Unit!7537)

(assert (=> b!244251 (= lt!122482 (lemmaArrayContainsKeyThenInListMap!169 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(assert (=> b!244251 false))

(declare-fun b!244252 () Bool)

(declare-fun e!158502 () Unit!7537)

(declare-fun Unit!7540 () Unit!7537)

(assert (=> b!244252 (= e!158502 Unit!7540)))

(declare-fun lt!122481 () Unit!7537)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!367 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 64) Int) Unit!7537)

(assert (=> b!244252 (= lt!122481 (lemmaInListMapThenSeekEntryOrOpenFindsIt!367 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 (defaultEntry!4523 thiss!1504)))))

(assert (=> b!244252 false))

(declare-fun b!244253 () Bool)

(declare-fun res!119807 () Bool)

(assert (=> b!244253 (=> (not res!119807) (not e!158504))))

(declare-datatypes ((List!3676 0))(
  ( (Nil!3673) (Cons!3672 (h!4329 (_ BitVec 64)) (t!8693 List!3676)) )
))
(declare-fun arrayNoDuplicates!0 (array!12092 (_ BitVec 32) List!3676) Bool)

(assert (=> b!244253 (= res!119807 (arrayNoDuplicates!0 (_keys!6635 thiss!1504) #b00000000000000000000000000000000 Nil!3673))))

(declare-fun b!244255 () Bool)

(declare-fun res!119803 () Bool)

(assert (=> b!244255 (=> (not res!119803) (not e!158504))))

(declare-fun noDuplicate!101 (List!3676) Bool)

(assert (=> b!244255 (= res!119803 (noDuplicate!101 Nil!3673))))

(declare-fun b!244256 () Bool)

(declare-fun e!158511 () Bool)

(declare-fun contains!1761 (List!3676 (_ BitVec 64)) Bool)

(assert (=> b!244256 (= e!158511 (not (contains!1761 Nil!3673 key!932)))))

(declare-fun b!244257 () Bool)

(declare-fun e!158515 () Bool)

(declare-fun e!158508 () Bool)

(assert (=> b!244257 (= e!158515 e!158508)))

(declare-fun res!119798 () Bool)

(declare-fun call!22783 () Bool)

(assert (=> b!244257 (= res!119798 call!22783)))

(assert (=> b!244257 (=> (not res!119798) (not e!158508))))

(declare-fun b!244258 () Bool)

(declare-fun e!158510 () Bool)

(assert (=> b!244258 (= e!158510 e!158511)))

(declare-fun res!119804 () Bool)

(assert (=> b!244258 (=> (not res!119804) (not e!158511))))

(assert (=> b!244258 (= res!119804 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!244259 () Bool)

(declare-fun e!158499 () Bool)

(declare-fun call!22782 () Bool)

(assert (=> b!244259 (= e!158499 (not call!22782))))

(declare-fun mapIsEmpty!10852 () Bool)

(declare-fun mapRes!10852 () Bool)

(assert (=> mapIsEmpty!10852 mapRes!10852))

(declare-fun b!244260 () Bool)

(declare-fun res!119808 () Bool)

(declare-fun e!158505 () Bool)

(assert (=> b!244260 (=> (not res!119808) (not e!158505))))

(assert (=> b!244260 (= res!119808 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!158512 () Bool)

(declare-fun e!158513 () Bool)

(declare-fun tp_is_empty!6399 () Bool)

(declare-fun array_inv!3785 (array!12092) Bool)

(declare-fun array_inv!3786 (array!12090) Bool)

(assert (=> b!244261 (= e!158513 (and tp!22837 tp_is_empty!6399 (array_inv!3785 (_keys!6635 thiss!1504)) (array_inv!3786 (_values!4506 thiss!1504)) e!158512))))

(declare-fun mapNonEmpty!10852 () Bool)

(declare-fun tp!22836 () Bool)

(declare-fun e!158503 () Bool)

(assert (=> mapNonEmpty!10852 (= mapRes!10852 (and tp!22836 e!158503))))

(declare-fun mapKey!10852 () (_ BitVec 32))

(declare-fun mapRest!10852 () (Array (_ BitVec 32) ValueCell!2856))

(declare-fun mapValue!10852 () ValueCell!2856)

(assert (=> mapNonEmpty!10852 (= (arr!5739 (_values!4506 thiss!1504)) (store mapRest!10852 mapKey!10852 mapValue!10852))))

(declare-fun b!244262 () Bool)

(declare-fun e!158507 () Bool)

(assert (=> b!244262 (= e!158507 tp_is_empty!6399)))

(declare-fun b!244263 () Bool)

(declare-fun res!119796 () Bool)

(declare-datatypes ((SeekEntryResult!1089 0))(
  ( (MissingZero!1089 (index!6526 (_ BitVec 32))) (Found!1089 (index!6527 (_ BitVec 32))) (Intermediate!1089 (undefined!1901 Bool) (index!6528 (_ BitVec 32)) (x!24375 (_ BitVec 32))) (Undefined!1089) (MissingVacant!1089 (index!6529 (_ BitVec 32))) )
))
(declare-fun lt!122478 () SeekEntryResult!1089)

(assert (=> b!244263 (= res!119796 (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6529 lt!122478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244263 (=> (not res!119796) (not e!158508))))

(declare-fun b!244254 () Bool)

(declare-fun res!119800 () Bool)

(assert (=> b!244254 (=> (not res!119800) (not e!158499))))

(assert (=> b!244254 (= res!119800 (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6526 lt!122478)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!119794 () Bool)

(assert (=> start!23266 (=> (not res!119794) (not e!158505))))

(declare-fun valid!1407 (LongMapFixedSize!3612) Bool)

(assert (=> start!23266 (= res!119794 (valid!1407 thiss!1504))))

(assert (=> start!23266 e!158505))

(assert (=> start!23266 e!158513))

(assert (=> start!23266 true))

(declare-fun b!244264 () Bool)

(declare-fun res!119806 () Bool)

(assert (=> b!244264 (=> (not res!119806) (not e!158499))))

(assert (=> b!244264 (= res!119806 call!22783)))

(declare-fun e!158516 () Bool)

(assert (=> b!244264 (= e!158516 e!158499)))

(declare-fun b!244265 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244265 (= e!158504 (not (validKeyInArray!0 key!932)))))

(declare-fun b!244266 () Bool)

(declare-fun res!119799 () Bool)

(assert (=> b!244266 (=> (not res!119799) (not e!158504))))

(assert (=> b!244266 (= res!119799 (not (contains!1761 Nil!3673 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244267 () Bool)

(get-info :version)

(assert (=> b!244267 (= e!158515 ((_ is Undefined!1089) lt!122478))))

(declare-fun b!244268 () Bool)

(declare-fun e!158500 () Bool)

(assert (=> b!244268 (= e!158500 (contains!1761 Nil!3673 key!932))))

(declare-fun b!244269 () Bool)

(declare-fun e!158514 () Bool)

(declare-fun e!158509 () Bool)

(assert (=> b!244269 (= e!158514 e!158509)))

(declare-fun res!119810 () Bool)

(assert (=> b!244269 (=> (not res!119810) (not e!158509))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!244269 (= res!119810 (inRange!0 index!297 (mask!10622 thiss!1504)))))

(declare-fun lt!122477 () Unit!7537)

(assert (=> b!244269 (= lt!122477 e!158502)))

(declare-fun c!40754 () Bool)

(declare-datatypes ((tuple2!4770 0))(
  ( (tuple2!4771 (_1!2395 (_ BitVec 64)) (_2!2395 V!8179)) )
))
(declare-datatypes ((List!3677 0))(
  ( (Nil!3674) (Cons!3673 (h!4330 tuple2!4770) (t!8694 List!3677)) )
))
(declare-datatypes ((ListLongMap!3697 0))(
  ( (ListLongMap!3698 (toList!1864 List!3677)) )
))
(declare-fun contains!1762 (ListLongMap!3697 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1387 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 32) Int) ListLongMap!3697)

(assert (=> b!244269 (= c!40754 (contains!1762 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)) key!932))))

(declare-fun b!244270 () Bool)

(declare-fun res!119805 () Bool)

(assert (=> b!244270 (=> (not res!119805) (not e!158504))))

(assert (=> b!244270 (= res!119805 (not (contains!1761 Nil!3673 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244271 () Bool)

(declare-fun Unit!7541 () Unit!7537)

(assert (=> b!244271 (= e!158501 Unit!7541)))

(declare-fun b!244272 () Bool)

(assert (=> b!244272 (= e!158512 (and e!158507 mapRes!10852))))

(declare-fun condMapEmpty!10852 () Bool)

(declare-fun mapDefault!10852 () ValueCell!2856)

(assert (=> b!244272 (= condMapEmpty!10852 (= (arr!5739 (_values!4506 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2856)) mapDefault!10852)))))

(declare-fun b!244273 () Bool)

(assert (=> b!244273 (= e!158509 e!158504)))

(declare-fun res!119809 () Bool)

(assert (=> b!244273 (=> (not res!119809) (not e!158504))))

(assert (=> b!244273 (= res!119809 (and (bvslt (size!6082 (_keys!6635 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504)))))))

(declare-fun lt!122479 () Unit!7537)

(assert (=> b!244273 (= lt!122479 e!158501)))

(declare-fun c!40756 () Bool)

(declare-fun arrayContainsKey!0 (array!12092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!244273 (= c!40756 (arrayContainsKey!0 (_keys!6635 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244274 () Bool)

(assert (=> b!244274 (= e!158508 (not call!22782))))

(declare-fun c!40755 () Bool)

(declare-fun bm!22779 () Bool)

(assert (=> bm!22779 (= call!22783 (inRange!0 (ite c!40755 (index!6526 lt!122478) (index!6529 lt!122478)) (mask!10622 thiss!1504)))))

(declare-fun b!244275 () Bool)

(declare-fun res!119797 () Bool)

(assert (=> b!244275 (=> (not res!119797) (not e!158504))))

(assert (=> b!244275 (= res!119797 e!158510)))

(declare-fun res!119795 () Bool)

(assert (=> b!244275 (=> res!119795 e!158510)))

(assert (=> b!244275 (= res!119795 e!158500)))

(declare-fun res!119793 () Bool)

(assert (=> b!244275 (=> (not res!119793) (not e!158500))))

(assert (=> b!244275 (= res!119793 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun bm!22780 () Bool)

(assert (=> bm!22780 (= call!22782 (arrayContainsKey!0 (_keys!6635 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244276 () Bool)

(declare-fun lt!122480 () Unit!7537)

(assert (=> b!244276 (= e!158502 lt!122480)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!370 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 64) Int) Unit!7537)

(assert (=> b!244276 (= lt!122480 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!370 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 (defaultEntry!4523 thiss!1504)))))

(assert (=> b!244276 (= c!40755 ((_ is MissingZero!1089) lt!122478))))

(assert (=> b!244276 e!158516))

(declare-fun b!244277 () Bool)

(assert (=> b!244277 (= e!158505 e!158514)))

(declare-fun res!119801 () Bool)

(assert (=> b!244277 (=> (not res!119801) (not e!158514))))

(assert (=> b!244277 (= res!119801 (or (= lt!122478 (MissingZero!1089 index!297)) (= lt!122478 (MissingVacant!1089 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12092 (_ BitVec 32)) SeekEntryResult!1089)

(assert (=> b!244277 (= lt!122478 (seekEntryOrOpen!0 key!932 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)))))

(declare-fun b!244278 () Bool)

(declare-fun c!40757 () Bool)

(assert (=> b!244278 (= c!40757 ((_ is MissingVacant!1089) lt!122478))))

(assert (=> b!244278 (= e!158516 e!158515)))

(declare-fun b!244279 () Bool)

(assert (=> b!244279 (= e!158503 tp_is_empty!6399)))

(assert (= (and start!23266 res!119794) b!244260))

(assert (= (and b!244260 res!119808) b!244277))

(assert (= (and b!244277 res!119801) b!244269))

(assert (= (and b!244269 c!40754) b!244252))

(assert (= (and b!244269 (not c!40754)) b!244276))

(assert (= (and b!244276 c!40755) b!244264))

(assert (= (and b!244276 (not c!40755)) b!244278))

(assert (= (and b!244264 res!119806) b!244254))

(assert (= (and b!244254 res!119800) b!244259))

(assert (= (and b!244278 c!40757) b!244257))

(assert (= (and b!244278 (not c!40757)) b!244267))

(assert (= (and b!244257 res!119798) b!244263))

(assert (= (and b!244263 res!119796) b!244274))

(assert (= (or b!244264 b!244257) bm!22779))

(assert (= (or b!244259 b!244274) bm!22780))

(assert (= (and b!244269 res!119810) b!244273))

(assert (= (and b!244273 c!40756) b!244251))

(assert (= (and b!244273 (not c!40756)) b!244271))

(assert (= (and b!244273 res!119809) b!244255))

(assert (= (and b!244255 res!119803) b!244266))

(assert (= (and b!244266 res!119799) b!244270))

(assert (= (and b!244270 res!119805) b!244275))

(assert (= (and b!244275 res!119793) b!244268))

(assert (= (and b!244275 (not res!119795)) b!244258))

(assert (= (and b!244258 res!119804) b!244256))

(assert (= (and b!244275 res!119797) b!244253))

(assert (= (and b!244253 res!119807) b!244250))

(assert (= (and b!244250 res!119802) b!244265))

(assert (= (and b!244272 condMapEmpty!10852) mapIsEmpty!10852))

(assert (= (and b!244272 (not condMapEmpty!10852)) mapNonEmpty!10852))

(assert (= (and mapNonEmpty!10852 ((_ is ValueCellFull!2856) mapValue!10852)) b!244279))

(assert (= (and b!244272 ((_ is ValueCellFull!2856) mapDefault!10852)) b!244262))

(assert (= b!244261 b!244272))

(assert (= start!23266 b!244261))

(declare-fun m!262301 () Bool)

(assert (=> b!244261 m!262301))

(declare-fun m!262303 () Bool)

(assert (=> b!244261 m!262303))

(declare-fun m!262305 () Bool)

(assert (=> b!244256 m!262305))

(declare-fun m!262307 () Bool)

(assert (=> b!244252 m!262307))

(declare-fun m!262309 () Bool)

(assert (=> b!244277 m!262309))

(declare-fun m!262311 () Bool)

(assert (=> b!244270 m!262311))

(declare-fun m!262313 () Bool)

(assert (=> start!23266 m!262313))

(declare-fun m!262315 () Bool)

(assert (=> b!244266 m!262315))

(declare-fun m!262317 () Bool)

(assert (=> mapNonEmpty!10852 m!262317))

(declare-fun m!262319 () Bool)

(assert (=> b!244254 m!262319))

(declare-fun m!262321 () Bool)

(assert (=> b!244265 m!262321))

(declare-fun m!262323 () Bool)

(assert (=> bm!22779 m!262323))

(declare-fun m!262325 () Bool)

(assert (=> b!244251 m!262325))

(declare-fun m!262327 () Bool)

(assert (=> b!244269 m!262327))

(declare-fun m!262329 () Bool)

(assert (=> b!244269 m!262329))

(assert (=> b!244269 m!262329))

(declare-fun m!262331 () Bool)

(assert (=> b!244269 m!262331))

(declare-fun m!262333 () Bool)

(assert (=> b!244276 m!262333))

(declare-fun m!262335 () Bool)

(assert (=> b!244255 m!262335))

(declare-fun m!262337 () Bool)

(assert (=> b!244273 m!262337))

(assert (=> bm!22780 m!262337))

(declare-fun m!262339 () Bool)

(assert (=> b!244253 m!262339))

(assert (=> b!244268 m!262305))

(declare-fun m!262341 () Bool)

(assert (=> b!244263 m!262341))

(check-sat (not b!244256) (not b!244261) (not b!244253) (not b!244273) (not b!244265) (not b!244277) (not b!244266) (not b!244270) (not b!244269) (not b!244255) b_and!13539 (not b!244268) (not b!244276) (not start!23266) (not bm!22779) (not bm!22780) (not b!244251) (not mapNonEmpty!10852) tp_is_empty!6399 (not b!244252) (not b_next!6537))
(check-sat b_and!13539 (not b_next!6537))
(get-model)

(declare-fun b!244380 () Bool)

(declare-fun e!158582 () Bool)

(declare-fun call!22792 () Bool)

(assert (=> b!244380 (= e!158582 call!22792)))

(declare-fun b!244381 () Bool)

(declare-fun e!158579 () Bool)

(declare-fun e!158580 () Bool)

(assert (=> b!244381 (= e!158579 e!158580)))

(declare-fun res!119871 () Bool)

(assert (=> b!244381 (=> (not res!119871) (not e!158580))))

(declare-fun e!158581 () Bool)

(assert (=> b!244381 (= res!119871 (not e!158581))))

(declare-fun res!119873 () Bool)

(assert (=> b!244381 (=> (not res!119873) (not e!158581))))

(assert (=> b!244381 (= res!119873 (validKeyInArray!0 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!244382 () Bool)

(assert (=> b!244382 (= e!158580 e!158582)))

(declare-fun c!40772 () Bool)

(assert (=> b!244382 (= c!40772 (validKeyInArray!0 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!244383 () Bool)

(assert (=> b!244383 (= e!158581 (contains!1761 Nil!3673 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!244384 () Bool)

(assert (=> b!244384 (= e!158582 call!22792)))

(declare-fun d!60023 () Bool)

(declare-fun res!119872 () Bool)

(assert (=> d!60023 (=> res!119872 e!158579)))

(assert (=> d!60023 (= res!119872 (bvsge #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))))))

(assert (=> d!60023 (= (arrayNoDuplicates!0 (_keys!6635 thiss!1504) #b00000000000000000000000000000000 Nil!3673) e!158579)))

(declare-fun bm!22789 () Bool)

(assert (=> bm!22789 (= call!22792 (arrayNoDuplicates!0 (_keys!6635 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!40772 (Cons!3672 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000) Nil!3673) Nil!3673)))))

(assert (= (and d!60023 (not res!119872)) b!244381))

(assert (= (and b!244381 res!119873) b!244383))

(assert (= (and b!244381 res!119871) b!244382))

(assert (= (and b!244382 c!40772) b!244380))

(assert (= (and b!244382 (not c!40772)) b!244384))

(assert (= (or b!244380 b!244384) bm!22789))

(declare-fun m!262385 () Bool)

(assert (=> b!244381 m!262385))

(assert (=> b!244381 m!262385))

(declare-fun m!262387 () Bool)

(assert (=> b!244381 m!262387))

(assert (=> b!244382 m!262385))

(assert (=> b!244382 m!262385))

(assert (=> b!244382 m!262387))

(assert (=> b!244383 m!262385))

(assert (=> b!244383 m!262385))

(declare-fun m!262389 () Bool)

(assert (=> b!244383 m!262389))

(assert (=> bm!22789 m!262385))

(declare-fun m!262391 () Bool)

(assert (=> bm!22789 m!262391))

(assert (=> b!244253 d!60023))

(declare-fun d!60025 () Bool)

(assert (=> d!60025 (= (array_inv!3785 (_keys!6635 thiss!1504)) (bvsge (size!6082 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!244261 d!60025))

(declare-fun d!60027 () Bool)

(assert (=> d!60027 (= (array_inv!3786 (_values!4506 thiss!1504)) (bvsge (size!6081 (_values!4506 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!244261 d!60027))

(declare-fun d!60029 () Bool)

(assert (=> d!60029 (contains!1762 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)) key!932)))

(declare-fun lt!122503 () Unit!7537)

(declare-fun choose!1148 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 64) (_ BitVec 32) Int) Unit!7537)

(assert (=> d!60029 (= lt!122503 (choose!1148 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!60029 (validMask!0 (mask!10622 thiss!1504))))

(assert (=> d!60029 (= (lemmaArrayContainsKeyThenInListMap!169 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)) lt!122503)))

(declare-fun bs!8881 () Bool)

(assert (= bs!8881 d!60029))

(assert (=> bs!8881 m!262329))

(assert (=> bs!8881 m!262329))

(assert (=> bs!8881 m!262331))

(declare-fun m!262393 () Bool)

(assert (=> bs!8881 m!262393))

(declare-fun m!262395 () Bool)

(assert (=> bs!8881 m!262395))

(assert (=> b!244251 d!60029))

(declare-fun d!60031 () Bool)

(declare-fun e!158585 () Bool)

(assert (=> d!60031 e!158585))

(declare-fun res!119879 () Bool)

(assert (=> d!60031 (=> (not res!119879) (not e!158585))))

(declare-fun lt!122509 () SeekEntryResult!1089)

(assert (=> d!60031 (= res!119879 ((_ is Found!1089) lt!122509))))

(assert (=> d!60031 (= lt!122509 (seekEntryOrOpen!0 key!932 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)))))

(declare-fun lt!122508 () Unit!7537)

(declare-fun choose!1149 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 64) Int) Unit!7537)

(assert (=> d!60031 (= lt!122508 (choose!1149 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 (defaultEntry!4523 thiss!1504)))))

(assert (=> d!60031 (validMask!0 (mask!10622 thiss!1504))))

(assert (=> d!60031 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!367 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 (defaultEntry!4523 thiss!1504)) lt!122508)))

(declare-fun b!244389 () Bool)

(declare-fun res!119878 () Bool)

(assert (=> b!244389 (=> (not res!119878) (not e!158585))))

(assert (=> b!244389 (= res!119878 (inRange!0 (index!6527 lt!122509) (mask!10622 thiss!1504)))))

(declare-fun b!244390 () Bool)

(assert (=> b!244390 (= e!158585 (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6527 lt!122509)) key!932))))

(assert (=> b!244390 (and (bvsge (index!6527 lt!122509) #b00000000000000000000000000000000) (bvslt (index!6527 lt!122509) (size!6082 (_keys!6635 thiss!1504))))))

(assert (= (and d!60031 res!119879) b!244389))

(assert (= (and b!244389 res!119878) b!244390))

(assert (=> d!60031 m!262309))

(declare-fun m!262397 () Bool)

(assert (=> d!60031 m!262397))

(assert (=> d!60031 m!262395))

(declare-fun m!262399 () Bool)

(assert (=> b!244389 m!262399))

(declare-fun m!262401 () Bool)

(assert (=> b!244390 m!262401))

(assert (=> b!244252 d!60031))

(declare-fun d!60033 () Bool)

(declare-fun res!119884 () Bool)

(declare-fun e!158590 () Bool)

(assert (=> d!60033 (=> res!119884 e!158590)))

(assert (=> d!60033 (= res!119884 ((_ is Nil!3673) Nil!3673))))

(assert (=> d!60033 (= (noDuplicate!101 Nil!3673) e!158590)))

(declare-fun b!244395 () Bool)

(declare-fun e!158591 () Bool)

(assert (=> b!244395 (= e!158590 e!158591)))

(declare-fun res!119885 () Bool)

(assert (=> b!244395 (=> (not res!119885) (not e!158591))))

(assert (=> b!244395 (= res!119885 (not (contains!1761 (t!8693 Nil!3673) (h!4329 Nil!3673))))))

(declare-fun b!244396 () Bool)

(assert (=> b!244396 (= e!158591 (noDuplicate!101 (t!8693 Nil!3673)))))

(assert (= (and d!60033 (not res!119884)) b!244395))

(assert (= (and b!244395 res!119885) b!244396))

(declare-fun m!262403 () Bool)

(assert (=> b!244395 m!262403))

(declare-fun m!262405 () Bool)

(assert (=> b!244396 m!262405))

(assert (=> b!244255 d!60033))

(declare-fun d!60035 () Bool)

(declare-fun lt!122512 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!161 (List!3676) (InoxSet (_ BitVec 64)))

(assert (=> d!60035 (= lt!122512 (select (content!161 Nil!3673) key!932))))

(declare-fun e!158597 () Bool)

(assert (=> d!60035 (= lt!122512 e!158597)))

(declare-fun res!119890 () Bool)

(assert (=> d!60035 (=> (not res!119890) (not e!158597))))

(assert (=> d!60035 (= res!119890 ((_ is Cons!3672) Nil!3673))))

(assert (=> d!60035 (= (contains!1761 Nil!3673 key!932) lt!122512)))

(declare-fun b!244401 () Bool)

(declare-fun e!158596 () Bool)

(assert (=> b!244401 (= e!158597 e!158596)))

(declare-fun res!119891 () Bool)

(assert (=> b!244401 (=> res!119891 e!158596)))

(assert (=> b!244401 (= res!119891 (= (h!4329 Nil!3673) key!932))))

(declare-fun b!244402 () Bool)

(assert (=> b!244402 (= e!158596 (contains!1761 (t!8693 Nil!3673) key!932))))

(assert (= (and d!60035 res!119890) b!244401))

(assert (= (and b!244401 (not res!119891)) b!244402))

(declare-fun m!262407 () Bool)

(assert (=> d!60035 m!262407))

(declare-fun m!262409 () Bool)

(assert (=> d!60035 m!262409))

(declare-fun m!262411 () Bool)

(assert (=> b!244402 m!262411))

(assert (=> b!244256 d!60035))

(declare-fun d!60037 () Bool)

(assert (=> d!60037 (= (inRange!0 (ite c!40755 (index!6526 lt!122478) (index!6529 lt!122478)) (mask!10622 thiss!1504)) (and (bvsge (ite c!40755 (index!6526 lt!122478) (index!6529 lt!122478)) #b00000000000000000000000000000000) (bvslt (ite c!40755 (index!6526 lt!122478) (index!6529 lt!122478)) (bvadd (mask!10622 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22779 d!60037))

(declare-fun d!60039 () Bool)

(declare-fun res!119896 () Bool)

(declare-fun e!158602 () Bool)

(assert (=> d!60039 (=> res!119896 e!158602)))

(assert (=> d!60039 (= res!119896 (= (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60039 (= (arrayContainsKey!0 (_keys!6635 thiss!1504) key!932 #b00000000000000000000000000000000) e!158602)))

(declare-fun b!244407 () Bool)

(declare-fun e!158603 () Bool)

(assert (=> b!244407 (= e!158602 e!158603)))

(declare-fun res!119897 () Bool)

(assert (=> b!244407 (=> (not res!119897) (not e!158603))))

(assert (=> b!244407 (= res!119897 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6082 (_keys!6635 thiss!1504))))))

(declare-fun b!244408 () Bool)

(assert (=> b!244408 (= e!158603 (arrayContainsKey!0 (_keys!6635 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60039 (not res!119896)) b!244407))

(assert (= (and b!244407 res!119897) b!244408))

(assert (=> d!60039 m!262385))

(declare-fun m!262413 () Bool)

(assert (=> b!244408 m!262413))

(assert (=> b!244273 d!60039))

(assert (=> bm!22780 d!60039))

(declare-fun d!60041 () Bool)

(declare-fun e!158612 () Bool)

(assert (=> d!60041 e!158612))

(declare-fun c!40777 () Bool)

(declare-fun lt!122517 () SeekEntryResult!1089)

(assert (=> d!60041 (= c!40777 ((_ is MissingZero!1089) lt!122517))))

(assert (=> d!60041 (= lt!122517 (seekEntryOrOpen!0 key!932 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)))))

(declare-fun lt!122518 () Unit!7537)

(declare-fun choose!1150 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 64) Int) Unit!7537)

(assert (=> d!60041 (= lt!122518 (choose!1150 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 (defaultEntry!4523 thiss!1504)))))

(assert (=> d!60041 (validMask!0 (mask!10622 thiss!1504))))

(assert (=> d!60041 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!370 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) key!932 (defaultEntry!4523 thiss!1504)) lt!122518)))

(declare-fun b!244425 () Bool)

(declare-fun e!158614 () Bool)

(assert (=> b!244425 (= e!158614 ((_ is Undefined!1089) lt!122517))))

(declare-fun b!244426 () Bool)

(assert (=> b!244426 (and (bvsge (index!6526 lt!122517) #b00000000000000000000000000000000) (bvslt (index!6526 lt!122517) (size!6082 (_keys!6635 thiss!1504))))))

(declare-fun res!119907 () Bool)

(assert (=> b!244426 (= res!119907 (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6526 lt!122517)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158615 () Bool)

(assert (=> b!244426 (=> (not res!119907) (not e!158615))))

(declare-fun b!244427 () Bool)

(declare-fun e!158613 () Bool)

(declare-fun call!22797 () Bool)

(assert (=> b!244427 (= e!158613 (not call!22797))))

(declare-fun b!244428 () Bool)

(assert (=> b!244428 (= e!158612 e!158615)))

(declare-fun res!119908 () Bool)

(declare-fun call!22798 () Bool)

(assert (=> b!244428 (= res!119908 call!22798)))

(assert (=> b!244428 (=> (not res!119908) (not e!158615))))

(declare-fun bm!22794 () Bool)

(assert (=> bm!22794 (= call!22798 (inRange!0 (ite c!40777 (index!6526 lt!122517) (index!6529 lt!122517)) (mask!10622 thiss!1504)))))

(declare-fun b!244429 () Bool)

(declare-fun res!119909 () Bool)

(assert (=> b!244429 (=> (not res!119909) (not e!158613))))

(assert (=> b!244429 (= res!119909 call!22798)))

(assert (=> b!244429 (= e!158614 e!158613)))

(declare-fun bm!22795 () Bool)

(assert (=> bm!22795 (= call!22797 (arrayContainsKey!0 (_keys!6635 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244430 () Bool)

(assert (=> b!244430 (= e!158612 e!158614)))

(declare-fun c!40778 () Bool)

(assert (=> b!244430 (= c!40778 ((_ is MissingVacant!1089) lt!122517))))

(declare-fun b!244431 () Bool)

(assert (=> b!244431 (= e!158615 (not call!22797))))

(declare-fun b!244432 () Bool)

(declare-fun res!119906 () Bool)

(assert (=> b!244432 (=> (not res!119906) (not e!158613))))

(assert (=> b!244432 (= res!119906 (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6529 lt!122517)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244432 (and (bvsge (index!6529 lt!122517) #b00000000000000000000000000000000) (bvslt (index!6529 lt!122517) (size!6082 (_keys!6635 thiss!1504))))))

(assert (= (and d!60041 c!40777) b!244428))

(assert (= (and d!60041 (not c!40777)) b!244430))

(assert (= (and b!244428 res!119908) b!244426))

(assert (= (and b!244426 res!119907) b!244431))

(assert (= (and b!244430 c!40778) b!244429))

(assert (= (and b!244430 (not c!40778)) b!244425))

(assert (= (and b!244429 res!119909) b!244432))

(assert (= (and b!244432 res!119906) b!244427))

(assert (= (or b!244428 b!244429) bm!22794))

(assert (= (or b!244431 b!244427) bm!22795))

(declare-fun m!262415 () Bool)

(assert (=> b!244432 m!262415))

(assert (=> bm!22795 m!262337))

(declare-fun m!262417 () Bool)

(assert (=> bm!22794 m!262417))

(assert (=> d!60041 m!262309))

(declare-fun m!262419 () Bool)

(assert (=> d!60041 m!262419))

(assert (=> d!60041 m!262395))

(declare-fun m!262421 () Bool)

(assert (=> b!244426 m!262421))

(assert (=> b!244276 d!60041))

(declare-fun d!60043 () Bool)

(assert (=> d!60043 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!244265 d!60043))

(declare-fun d!60045 () Bool)

(declare-fun res!119916 () Bool)

(declare-fun e!158618 () Bool)

(assert (=> d!60045 (=> (not res!119916) (not e!158618))))

(declare-fun simpleValid!250 (LongMapFixedSize!3612) Bool)

(assert (=> d!60045 (= res!119916 (simpleValid!250 thiss!1504))))

(assert (=> d!60045 (= (valid!1407 thiss!1504) e!158618)))

(declare-fun b!244439 () Bool)

(declare-fun res!119917 () Bool)

(assert (=> b!244439 (=> (not res!119917) (not e!158618))))

(declare-fun arrayCountValidKeys!0 (array!12092 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!244439 (= res!119917 (= (arrayCountValidKeys!0 (_keys!6635 thiss!1504) #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))) (_size!1855 thiss!1504)))))

(declare-fun b!244440 () Bool)

(declare-fun res!119918 () Bool)

(assert (=> b!244440 (=> (not res!119918) (not e!158618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12092 (_ BitVec 32)) Bool)

(assert (=> b!244440 (= res!119918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)))))

(declare-fun b!244441 () Bool)

(assert (=> b!244441 (= e!158618 (arrayNoDuplicates!0 (_keys!6635 thiss!1504) #b00000000000000000000000000000000 Nil!3673))))

(assert (= (and d!60045 res!119916) b!244439))

(assert (= (and b!244439 res!119917) b!244440))

(assert (= (and b!244440 res!119918) b!244441))

(declare-fun m!262423 () Bool)

(assert (=> d!60045 m!262423))

(declare-fun m!262425 () Bool)

(assert (=> b!244439 m!262425))

(declare-fun m!262427 () Bool)

(assert (=> b!244440 m!262427))

(assert (=> b!244441 m!262339))

(assert (=> start!23266 d!60045))

(declare-fun d!60047 () Bool)

(declare-fun lt!122519 () Bool)

(assert (=> d!60047 (= lt!122519 (select (content!161 Nil!3673) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158620 () Bool)

(assert (=> d!60047 (= lt!122519 e!158620)))

(declare-fun res!119919 () Bool)

(assert (=> d!60047 (=> (not res!119919) (not e!158620))))

(assert (=> d!60047 (= res!119919 ((_ is Cons!3672) Nil!3673))))

(assert (=> d!60047 (= (contains!1761 Nil!3673 #b0000000000000000000000000000000000000000000000000000000000000000) lt!122519)))

(declare-fun b!244442 () Bool)

(declare-fun e!158619 () Bool)

(assert (=> b!244442 (= e!158620 e!158619)))

(declare-fun res!119920 () Bool)

(assert (=> b!244442 (=> res!119920 e!158619)))

(assert (=> b!244442 (= res!119920 (= (h!4329 Nil!3673) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244443 () Bool)

(assert (=> b!244443 (= e!158619 (contains!1761 (t!8693 Nil!3673) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!60047 res!119919) b!244442))

(assert (= (and b!244442 (not res!119920)) b!244443))

(assert (=> d!60047 m!262407))

(declare-fun m!262429 () Bool)

(assert (=> d!60047 m!262429))

(declare-fun m!262431 () Bool)

(assert (=> b!244443 m!262431))

(assert (=> b!244266 d!60047))

(declare-fun d!60049 () Bool)

(assert (=> d!60049 (= (inRange!0 index!297 (mask!10622 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10622 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!244269 d!60049))

(declare-fun d!60051 () Bool)

(declare-fun e!158625 () Bool)

(assert (=> d!60051 e!158625))

(declare-fun res!119923 () Bool)

(assert (=> d!60051 (=> res!119923 e!158625)))

(declare-fun lt!122531 () Bool)

(assert (=> d!60051 (= res!119923 (not lt!122531))))

(declare-fun lt!122529 () Bool)

(assert (=> d!60051 (= lt!122531 lt!122529)))

(declare-fun lt!122530 () Unit!7537)

(declare-fun e!158626 () Unit!7537)

(assert (=> d!60051 (= lt!122530 e!158626)))

(declare-fun c!40781 () Bool)

(assert (=> d!60051 (= c!40781 lt!122529)))

(declare-fun containsKey!277 (List!3677 (_ BitVec 64)) Bool)

(assert (=> d!60051 (= lt!122529 (containsKey!277 (toList!1864 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504))) key!932))))

(assert (=> d!60051 (= (contains!1762 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)) key!932) lt!122531)))

(declare-fun b!244450 () Bool)

(declare-fun lt!122528 () Unit!7537)

(assert (=> b!244450 (= e!158626 lt!122528)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!226 (List!3677 (_ BitVec 64)) Unit!7537)

(assert (=> b!244450 (= lt!122528 (lemmaContainsKeyImpliesGetValueByKeyDefined!226 (toList!1864 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504))) key!932))))

(declare-datatypes ((Option!291 0))(
  ( (Some!290 (v!5292 V!8179)) (None!289) )
))
(declare-fun isDefined!227 (Option!291) Bool)

(declare-fun getValueByKey!285 (List!3677 (_ BitVec 64)) Option!291)

(assert (=> b!244450 (isDefined!227 (getValueByKey!285 (toList!1864 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504))) key!932))))

(declare-fun b!244451 () Bool)

(declare-fun Unit!7546 () Unit!7537)

(assert (=> b!244451 (= e!158626 Unit!7546)))

(declare-fun b!244452 () Bool)

(assert (=> b!244452 (= e!158625 (isDefined!227 (getValueByKey!285 (toList!1864 (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504))) key!932)))))

(assert (= (and d!60051 c!40781) b!244450))

(assert (= (and d!60051 (not c!40781)) b!244451))

(assert (= (and d!60051 (not res!119923)) b!244452))

(declare-fun m!262433 () Bool)

(assert (=> d!60051 m!262433))

(declare-fun m!262435 () Bool)

(assert (=> b!244450 m!262435))

(declare-fun m!262437 () Bool)

(assert (=> b!244450 m!262437))

(assert (=> b!244450 m!262437))

(declare-fun m!262439 () Bool)

(assert (=> b!244450 m!262439))

(assert (=> b!244452 m!262437))

(assert (=> b!244452 m!262437))

(assert (=> b!244452 m!262439))

(assert (=> b!244269 d!60051))

(declare-fun b!244495 () Bool)

(declare-fun e!158659 () Bool)

(declare-fun e!158665 () Bool)

(assert (=> b!244495 (= e!158659 e!158665)))

(declare-fun res!119942 () Bool)

(assert (=> b!244495 (=> (not res!119942) (not e!158665))))

(declare-fun lt!122586 () ListLongMap!3697)

(assert (=> b!244495 (= res!119942 (contains!1762 lt!122586 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!244495 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))))))

(declare-fun bm!22810 () Bool)

(declare-fun call!22815 () ListLongMap!3697)

(declare-fun call!22816 () ListLongMap!3697)

(assert (=> bm!22810 (= call!22815 call!22816)))

(declare-fun b!244496 () Bool)

(declare-fun e!158662 () Unit!7537)

(declare-fun Unit!7547 () Unit!7537)

(assert (=> b!244496 (= e!158662 Unit!7547)))

(declare-fun b!244497 () Bool)

(declare-fun e!158654 () Bool)

(assert (=> b!244497 (= e!158654 (validKeyInArray!0 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22811 () Bool)

(declare-fun call!22818 () ListLongMap!3697)

(declare-fun call!22814 () ListLongMap!3697)

(assert (=> bm!22811 (= call!22818 call!22814)))

(declare-fun b!244498 () Bool)

(declare-fun e!158656 () ListLongMap!3697)

(assert (=> b!244498 (= e!158656 call!22818)))

(declare-fun b!244499 () Bool)

(declare-fun e!158660 () Bool)

(assert (=> b!244499 (= e!158660 (validKeyInArray!0 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!244500 () Bool)

(declare-fun e!158655 () Bool)

(declare-fun e!158661 () Bool)

(assert (=> b!244500 (= e!158655 e!158661)))

(declare-fun c!40796 () Bool)

(assert (=> b!244500 (= c!40796 (not (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!244501 () Bool)

(declare-fun e!158657 () ListLongMap!3697)

(assert (=> b!244501 (= e!158657 call!22818)))

(declare-fun b!244502 () Bool)

(declare-fun c!40799 () Bool)

(assert (=> b!244502 (= c!40799 (and (not (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!244502 (= e!158656 e!158657)))

(declare-fun d!60053 () Bool)

(assert (=> d!60053 e!158655))

(declare-fun res!119949 () Bool)

(assert (=> d!60053 (=> (not res!119949) (not e!158655))))

(assert (=> d!60053 (= res!119949 (or (bvsge #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))))))))

(declare-fun lt!122578 () ListLongMap!3697)

(assert (=> d!60053 (= lt!122586 lt!122578)))

(declare-fun lt!122587 () Unit!7537)

(assert (=> d!60053 (= lt!122587 e!158662)))

(declare-fun c!40794 () Bool)

(assert (=> d!60053 (= c!40794 e!158654)))

(declare-fun res!119948 () Bool)

(assert (=> d!60053 (=> (not res!119948) (not e!158654))))

(assert (=> d!60053 (= res!119948 (bvslt #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))))))

(declare-fun e!158664 () ListLongMap!3697)

(assert (=> d!60053 (= lt!122578 e!158664)))

(declare-fun c!40797 () Bool)

(assert (=> d!60053 (= c!40797 (and (not (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60053 (validMask!0 (mask!10622 thiss!1504))))

(assert (=> d!60053 (= (getCurrentListMap!1387 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)) lt!122586)))

(declare-fun bm!22812 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!547 (array!12092 array!12090 (_ BitVec 32) (_ BitVec 32) V!8179 V!8179 (_ BitVec 32) Int) ListLongMap!3697)

(assert (=> bm!22812 (= call!22816 (getCurrentListMapNoExtraKeys!547 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(declare-fun b!244503 () Bool)

(declare-fun call!22819 () ListLongMap!3697)

(assert (=> b!244503 (= e!158657 call!22819)))

(declare-fun b!244504 () Bool)

(declare-fun lt!122576 () Unit!7537)

(assert (=> b!244504 (= e!158662 lt!122576)))

(declare-fun lt!122588 () ListLongMap!3697)

(assert (=> b!244504 (= lt!122588 (getCurrentListMapNoExtraKeys!547 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(declare-fun lt!122580 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122580 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122591 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122591 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122585 () Unit!7537)

(declare-fun addStillContains!204 (ListLongMap!3697 (_ BitVec 64) V!8179 (_ BitVec 64)) Unit!7537)

(assert (=> b!244504 (= lt!122585 (addStillContains!204 lt!122588 lt!122580 (zeroValue!4364 thiss!1504) lt!122591))))

(declare-fun +!650 (ListLongMap!3697 tuple2!4770) ListLongMap!3697)

(assert (=> b!244504 (contains!1762 (+!650 lt!122588 (tuple2!4771 lt!122580 (zeroValue!4364 thiss!1504))) lt!122591)))

(declare-fun lt!122596 () Unit!7537)

(assert (=> b!244504 (= lt!122596 lt!122585)))

(declare-fun lt!122592 () ListLongMap!3697)

(assert (=> b!244504 (= lt!122592 (getCurrentListMapNoExtraKeys!547 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(declare-fun lt!122583 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122583 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122595 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122595 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122597 () Unit!7537)

(declare-fun addApplyDifferent!204 (ListLongMap!3697 (_ BitVec 64) V!8179 (_ BitVec 64)) Unit!7537)

(assert (=> b!244504 (= lt!122597 (addApplyDifferent!204 lt!122592 lt!122583 (minValue!4364 thiss!1504) lt!122595))))

(declare-fun apply!228 (ListLongMap!3697 (_ BitVec 64)) V!8179)

(assert (=> b!244504 (= (apply!228 (+!650 lt!122592 (tuple2!4771 lt!122583 (minValue!4364 thiss!1504))) lt!122595) (apply!228 lt!122592 lt!122595))))

(declare-fun lt!122582 () Unit!7537)

(assert (=> b!244504 (= lt!122582 lt!122597)))

(declare-fun lt!122584 () ListLongMap!3697)

(assert (=> b!244504 (= lt!122584 (getCurrentListMapNoExtraKeys!547 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(declare-fun lt!122590 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122590 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122579 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122579 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122589 () Unit!7537)

(assert (=> b!244504 (= lt!122589 (addApplyDifferent!204 lt!122584 lt!122590 (zeroValue!4364 thiss!1504) lt!122579))))

(assert (=> b!244504 (= (apply!228 (+!650 lt!122584 (tuple2!4771 lt!122590 (zeroValue!4364 thiss!1504))) lt!122579) (apply!228 lt!122584 lt!122579))))

(declare-fun lt!122594 () Unit!7537)

(assert (=> b!244504 (= lt!122594 lt!122589)))

(declare-fun lt!122577 () ListLongMap!3697)

(assert (=> b!244504 (= lt!122577 (getCurrentListMapNoExtraKeys!547 (_keys!6635 thiss!1504) (_values!4506 thiss!1504) (mask!10622 thiss!1504) (extraKeys!4260 thiss!1504) (zeroValue!4364 thiss!1504) (minValue!4364 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4523 thiss!1504)))))

(declare-fun lt!122593 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122593 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122581 () (_ BitVec 64))

(assert (=> b!244504 (= lt!122581 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!244504 (= lt!122576 (addApplyDifferent!204 lt!122577 lt!122593 (minValue!4364 thiss!1504) lt!122581))))

(assert (=> b!244504 (= (apply!228 (+!650 lt!122577 (tuple2!4771 lt!122593 (minValue!4364 thiss!1504))) lt!122581) (apply!228 lt!122577 lt!122581))))

(declare-fun b!244505 () Bool)

(declare-fun get!2947 (ValueCell!2856 V!8179) V!8179)

(declare-fun dynLambda!566 (Int (_ BitVec 64)) V!8179)

(assert (=> b!244505 (= e!158665 (= (apply!228 lt!122586 (select (arr!5740 (_keys!6635 thiss!1504)) #b00000000000000000000000000000000)) (get!2947 (select (arr!5739 (_values!4506 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!566 (defaultEntry!4523 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!244505 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6081 (_values!4506 thiss!1504))))))

(assert (=> b!244505 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))))))

(declare-fun b!244506 () Bool)

(declare-fun e!158658 () Bool)

(declare-fun call!22817 () Bool)

(assert (=> b!244506 (= e!158658 (not call!22817))))

(declare-fun b!244507 () Bool)

(declare-fun e!158663 () Bool)

(assert (=> b!244507 (= e!158663 (= (apply!228 lt!122586 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4364 thiss!1504)))))

(declare-fun bm!22813 () Bool)

(declare-fun call!22813 () Bool)

(assert (=> bm!22813 (= call!22813 (contains!1762 lt!122586 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!40795 () Bool)

(declare-fun bm!22814 () Bool)

(assert (=> bm!22814 (= call!22814 (+!650 (ite c!40797 call!22816 (ite c!40795 call!22815 call!22819)) (ite (or c!40797 c!40795) (tuple2!4771 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4364 thiss!1504)) (tuple2!4771 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4364 thiss!1504)))))))

(declare-fun b!244508 () Bool)

(assert (=> b!244508 (= e!158661 e!158663)))

(declare-fun res!119945 () Bool)

(assert (=> b!244508 (= res!119945 call!22813)))

(assert (=> b!244508 (=> (not res!119945) (not e!158663))))

(declare-fun bm!22815 () Bool)

(assert (=> bm!22815 (= call!22819 call!22815)))

(declare-fun b!244509 () Bool)

(declare-fun e!158653 () Bool)

(assert (=> b!244509 (= e!158658 e!158653)))

(declare-fun res!119943 () Bool)

(assert (=> b!244509 (= res!119943 call!22817)))

(assert (=> b!244509 (=> (not res!119943) (not e!158653))))

(declare-fun b!244510 () Bool)

(declare-fun res!119947 () Bool)

(assert (=> b!244510 (=> (not res!119947) (not e!158655))))

(assert (=> b!244510 (= res!119947 e!158658)))

(declare-fun c!40798 () Bool)

(assert (=> b!244510 (= c!40798 (not (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!244511 () Bool)

(assert (=> b!244511 (= e!158664 (+!650 call!22814 (tuple2!4771 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4364 thiss!1504))))))

(declare-fun b!244512 () Bool)

(assert (=> b!244512 (= e!158653 (= (apply!228 lt!122586 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4364 thiss!1504)))))

(declare-fun b!244513 () Bool)

(assert (=> b!244513 (= e!158661 (not call!22813))))

(declare-fun b!244514 () Bool)

(declare-fun res!119944 () Bool)

(assert (=> b!244514 (=> (not res!119944) (not e!158655))))

(assert (=> b!244514 (= res!119944 e!158659)))

(declare-fun res!119946 () Bool)

(assert (=> b!244514 (=> res!119946 e!158659)))

(assert (=> b!244514 (= res!119946 (not e!158660))))

(declare-fun res!119950 () Bool)

(assert (=> b!244514 (=> (not res!119950) (not e!158660))))

(assert (=> b!244514 (= res!119950 (bvslt #b00000000000000000000000000000000 (size!6082 (_keys!6635 thiss!1504))))))

(declare-fun b!244515 () Bool)

(assert (=> b!244515 (= e!158664 e!158656)))

(assert (=> b!244515 (= c!40795 (and (not (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4260 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22816 () Bool)

(assert (=> bm!22816 (= call!22817 (contains!1762 lt!122586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!60053 c!40797) b!244511))

(assert (= (and d!60053 (not c!40797)) b!244515))

(assert (= (and b!244515 c!40795) b!244498))

(assert (= (and b!244515 (not c!40795)) b!244502))

(assert (= (and b!244502 c!40799) b!244501))

(assert (= (and b!244502 (not c!40799)) b!244503))

(assert (= (or b!244501 b!244503) bm!22815))

(assert (= (or b!244498 bm!22815) bm!22810))

(assert (= (or b!244498 b!244501) bm!22811))

(assert (= (or b!244511 bm!22810) bm!22812))

(assert (= (or b!244511 bm!22811) bm!22814))

(assert (= (and d!60053 res!119948) b!244497))

(assert (= (and d!60053 c!40794) b!244504))

(assert (= (and d!60053 (not c!40794)) b!244496))

(assert (= (and d!60053 res!119949) b!244514))

(assert (= (and b!244514 res!119950) b!244499))

(assert (= (and b!244514 (not res!119946)) b!244495))

(assert (= (and b!244495 res!119942) b!244505))

(assert (= (and b!244514 res!119944) b!244510))

(assert (= (and b!244510 c!40798) b!244509))

(assert (= (and b!244510 (not c!40798)) b!244506))

(assert (= (and b!244509 res!119943) b!244512))

(assert (= (or b!244509 b!244506) bm!22816))

(assert (= (and b!244510 res!119947) b!244500))

(assert (= (and b!244500 c!40796) b!244508))

(assert (= (and b!244500 (not c!40796)) b!244513))

(assert (= (and b!244508 res!119945) b!244507))

(assert (= (or b!244508 b!244513) bm!22813))

(declare-fun b_lambda!8045 () Bool)

(assert (=> (not b_lambda!8045) (not b!244505)))

(declare-fun t!8698 () Bool)

(declare-fun tb!2977 () Bool)

(assert (=> (and b!244261 (= (defaultEntry!4523 thiss!1504) (defaultEntry!4523 thiss!1504)) t!8698) tb!2977))

(declare-fun result!5237 () Bool)

(assert (=> tb!2977 (= result!5237 tp_is_empty!6399)))

(assert (=> b!244505 t!8698))

(declare-fun b_and!13543 () Bool)

(assert (= b_and!13539 (and (=> t!8698 result!5237) b_and!13543)))

(declare-fun m!262441 () Bool)

(assert (=> b!244511 m!262441))

(declare-fun m!262443 () Bool)

(assert (=> bm!22812 m!262443))

(assert (=> b!244495 m!262385))

(assert (=> b!244495 m!262385))

(declare-fun m!262445 () Bool)

(assert (=> b!244495 m!262445))

(assert (=> b!244497 m!262385))

(assert (=> b!244497 m!262385))

(assert (=> b!244497 m!262387))

(declare-fun m!262447 () Bool)

(assert (=> bm!22813 m!262447))

(assert (=> b!244499 m!262385))

(assert (=> b!244499 m!262385))

(assert (=> b!244499 m!262387))

(declare-fun m!262449 () Bool)

(assert (=> b!244512 m!262449))

(declare-fun m!262451 () Bool)

(assert (=> b!244505 m!262451))

(assert (=> b!244505 m!262385))

(assert (=> b!244505 m!262451))

(declare-fun m!262453 () Bool)

(assert (=> b!244505 m!262453))

(declare-fun m!262455 () Bool)

(assert (=> b!244505 m!262455))

(assert (=> b!244505 m!262385))

(declare-fun m!262457 () Bool)

(assert (=> b!244505 m!262457))

(assert (=> b!244505 m!262453))

(declare-fun m!262459 () Bool)

(assert (=> b!244504 m!262459))

(declare-fun m!262461 () Bool)

(assert (=> b!244504 m!262461))

(declare-fun m!262463 () Bool)

(assert (=> b!244504 m!262463))

(declare-fun m!262465 () Bool)

(assert (=> b!244504 m!262465))

(declare-fun m!262467 () Bool)

(assert (=> b!244504 m!262467))

(declare-fun m!262469 () Bool)

(assert (=> b!244504 m!262469))

(declare-fun m!262471 () Bool)

(assert (=> b!244504 m!262471))

(declare-fun m!262473 () Bool)

(assert (=> b!244504 m!262473))

(declare-fun m!262475 () Bool)

(assert (=> b!244504 m!262475))

(assert (=> b!244504 m!262467))

(declare-fun m!262477 () Bool)

(assert (=> b!244504 m!262477))

(assert (=> b!244504 m!262385))

(declare-fun m!262479 () Bool)

(assert (=> b!244504 m!262479))

(declare-fun m!262481 () Bool)

(assert (=> b!244504 m!262481))

(declare-fun m!262483 () Bool)

(assert (=> b!244504 m!262483))

(assert (=> b!244504 m!262443))

(assert (=> b!244504 m!262461))

(assert (=> b!244504 m!262479))

(declare-fun m!262485 () Bool)

(assert (=> b!244504 m!262485))

(declare-fun m!262487 () Bool)

(assert (=> b!244504 m!262487))

(assert (=> b!244504 m!262481))

(assert (=> d!60053 m!262395))

(declare-fun m!262489 () Bool)

(assert (=> bm!22814 m!262489))

(declare-fun m!262491 () Bool)

(assert (=> b!244507 m!262491))

(declare-fun m!262493 () Bool)

(assert (=> bm!22816 m!262493))

(assert (=> b!244269 d!60053))

(declare-fun d!60055 () Bool)

(declare-fun lt!122598 () Bool)

(assert (=> d!60055 (= lt!122598 (select (content!161 Nil!3673) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158667 () Bool)

(assert (=> d!60055 (= lt!122598 e!158667)))

(declare-fun res!119951 () Bool)

(assert (=> d!60055 (=> (not res!119951) (not e!158667))))

(assert (=> d!60055 (= res!119951 ((_ is Cons!3672) Nil!3673))))

(assert (=> d!60055 (= (contains!1761 Nil!3673 #b1000000000000000000000000000000000000000000000000000000000000000) lt!122598)))

(declare-fun b!244518 () Bool)

(declare-fun e!158666 () Bool)

(assert (=> b!244518 (= e!158667 e!158666)))

(declare-fun res!119952 () Bool)

(assert (=> b!244518 (=> res!119952 e!158666)))

(assert (=> b!244518 (= res!119952 (= (h!4329 Nil!3673) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244519 () Bool)

(assert (=> b!244519 (= e!158666 (contains!1761 (t!8693 Nil!3673) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!60055 res!119951) b!244518))

(assert (= (and b!244518 (not res!119952)) b!244519))

(assert (=> d!60055 m!262407))

(declare-fun m!262495 () Bool)

(assert (=> d!60055 m!262495))

(declare-fun m!262497 () Bool)

(assert (=> b!244519 m!262497))

(assert (=> b!244270 d!60055))

(assert (=> b!244268 d!60035))

(declare-fun b!244532 () Bool)

(declare-fun e!158676 () SeekEntryResult!1089)

(declare-fun e!158675 () SeekEntryResult!1089)

(assert (=> b!244532 (= e!158676 e!158675)))

(declare-fun lt!122605 () (_ BitVec 64))

(declare-fun lt!122607 () SeekEntryResult!1089)

(assert (=> b!244532 (= lt!122605 (select (arr!5740 (_keys!6635 thiss!1504)) (index!6528 lt!122607)))))

(declare-fun c!40807 () Bool)

(assert (=> b!244532 (= c!40807 (= lt!122605 key!932))))

(declare-fun d!60057 () Bool)

(declare-fun lt!122606 () SeekEntryResult!1089)

(assert (=> d!60057 (and (or ((_ is Undefined!1089) lt!122606) (not ((_ is Found!1089) lt!122606)) (and (bvsge (index!6527 lt!122606) #b00000000000000000000000000000000) (bvslt (index!6527 lt!122606) (size!6082 (_keys!6635 thiss!1504))))) (or ((_ is Undefined!1089) lt!122606) ((_ is Found!1089) lt!122606) (not ((_ is MissingZero!1089) lt!122606)) (and (bvsge (index!6526 lt!122606) #b00000000000000000000000000000000) (bvslt (index!6526 lt!122606) (size!6082 (_keys!6635 thiss!1504))))) (or ((_ is Undefined!1089) lt!122606) ((_ is Found!1089) lt!122606) ((_ is MissingZero!1089) lt!122606) (not ((_ is MissingVacant!1089) lt!122606)) (and (bvsge (index!6529 lt!122606) #b00000000000000000000000000000000) (bvslt (index!6529 lt!122606) (size!6082 (_keys!6635 thiss!1504))))) (or ((_ is Undefined!1089) lt!122606) (ite ((_ is Found!1089) lt!122606) (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6527 lt!122606)) key!932) (ite ((_ is MissingZero!1089) lt!122606) (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6526 lt!122606)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1089) lt!122606) (= (select (arr!5740 (_keys!6635 thiss!1504)) (index!6529 lt!122606)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60057 (= lt!122606 e!158676)))

(declare-fun c!40808 () Bool)

(assert (=> d!60057 (= c!40808 (and ((_ is Intermediate!1089) lt!122607) (undefined!1901 lt!122607)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12092 (_ BitVec 32)) SeekEntryResult!1089)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60057 (= lt!122607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10622 thiss!1504)) key!932 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)))))

(assert (=> d!60057 (validMask!0 (mask!10622 thiss!1504))))

(assert (=> d!60057 (= (seekEntryOrOpen!0 key!932 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)) lt!122606)))

(declare-fun b!244533 () Bool)

(assert (=> b!244533 (= e!158675 (Found!1089 (index!6528 lt!122607)))))

(declare-fun b!244534 () Bool)

(declare-fun c!40806 () Bool)

(assert (=> b!244534 (= c!40806 (= lt!122605 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158674 () SeekEntryResult!1089)

(assert (=> b!244534 (= e!158675 e!158674)))

(declare-fun b!244535 () Bool)

(assert (=> b!244535 (= e!158676 Undefined!1089)))

(declare-fun b!244536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12092 (_ BitVec 32)) SeekEntryResult!1089)

(assert (=> b!244536 (= e!158674 (seekKeyOrZeroReturnVacant!0 (x!24375 lt!122607) (index!6528 lt!122607) (index!6528 lt!122607) key!932 (_keys!6635 thiss!1504) (mask!10622 thiss!1504)))))

(declare-fun b!244537 () Bool)

(assert (=> b!244537 (= e!158674 (MissingZero!1089 (index!6528 lt!122607)))))

(assert (= (and d!60057 c!40808) b!244535))

(assert (= (and d!60057 (not c!40808)) b!244532))

(assert (= (and b!244532 c!40807) b!244533))

(assert (= (and b!244532 (not c!40807)) b!244534))

(assert (= (and b!244534 c!40806) b!244537))

(assert (= (and b!244534 (not c!40806)) b!244536))

(declare-fun m!262499 () Bool)

(assert (=> b!244532 m!262499))

(declare-fun m!262501 () Bool)

(assert (=> d!60057 m!262501))

(declare-fun m!262503 () Bool)

(assert (=> d!60057 m!262503))

(declare-fun m!262505 () Bool)

(assert (=> d!60057 m!262505))

(declare-fun m!262507 () Bool)

(assert (=> d!60057 m!262507))

(assert (=> d!60057 m!262507))

(declare-fun m!262509 () Bool)

(assert (=> d!60057 m!262509))

(assert (=> d!60057 m!262395))

(declare-fun m!262511 () Bool)

(assert (=> b!244536 m!262511))

(assert (=> b!244277 d!60057))

(declare-fun b!244545 () Bool)

(declare-fun e!158682 () Bool)

(assert (=> b!244545 (= e!158682 tp_is_empty!6399)))

(declare-fun condMapEmpty!10858 () Bool)

(declare-fun mapDefault!10858 () ValueCell!2856)

(assert (=> mapNonEmpty!10852 (= condMapEmpty!10858 (= mapRest!10852 ((as const (Array (_ BitVec 32) ValueCell!2856)) mapDefault!10858)))))

(declare-fun mapRes!10858 () Bool)

(assert (=> mapNonEmpty!10852 (= tp!22836 (and e!158682 mapRes!10858))))

(declare-fun b!244544 () Bool)

(declare-fun e!158681 () Bool)

(assert (=> b!244544 (= e!158681 tp_is_empty!6399)))

(declare-fun mapIsEmpty!10858 () Bool)

(assert (=> mapIsEmpty!10858 mapRes!10858))

(declare-fun mapNonEmpty!10858 () Bool)

(declare-fun tp!22846 () Bool)

(assert (=> mapNonEmpty!10858 (= mapRes!10858 (and tp!22846 e!158681))))

(declare-fun mapKey!10858 () (_ BitVec 32))

(declare-fun mapValue!10858 () ValueCell!2856)

(declare-fun mapRest!10858 () (Array (_ BitVec 32) ValueCell!2856))

(assert (=> mapNonEmpty!10858 (= mapRest!10852 (store mapRest!10858 mapKey!10858 mapValue!10858))))

(assert (= (and mapNonEmpty!10852 condMapEmpty!10858) mapIsEmpty!10858))

(assert (= (and mapNonEmpty!10852 (not condMapEmpty!10858)) mapNonEmpty!10858))

(assert (= (and mapNonEmpty!10858 ((_ is ValueCellFull!2856) mapValue!10858)) b!244544))

(assert (= (and mapNonEmpty!10852 ((_ is ValueCellFull!2856) mapDefault!10858)) b!244545))

(declare-fun m!262513 () Bool)

(assert (=> mapNonEmpty!10858 m!262513))

(declare-fun b_lambda!8047 () Bool)

(assert (= b_lambda!8045 (or (and b!244261 b_free!6537) b_lambda!8047)))

(check-sat (not b!244505) (not b!244519) (not d!60041) (not b!244383) (not b!244443) (not b!244395) (not b!244408) (not b!244499) (not d!60053) (not d!60047) (not bm!22795) (not d!60031) (not b!244452) (not b!244382) (not bm!22812) (not d!60029) (not bm!22813) (not bm!22814) (not d!60057) (not b!244536) (not b!244512) (not mapNonEmpty!10858) (not bm!22794) (not bm!22816) (not d!60035) (not b_lambda!8047) (not b!244507) (not d!60051) (not b!244402) (not b!244504) (not b!244511) b_and!13543 (not b!244450) (not b!244497) (not b!244440) (not b!244381) (not d!60045) (not b!244495) (not d!60055) (not b!244439) (not b!244389) (not bm!22789) (not b_next!6537) tp_is_empty!6399 (not b!244396) (not b!244441))
(check-sat b_and!13543 (not b_next!6537))
