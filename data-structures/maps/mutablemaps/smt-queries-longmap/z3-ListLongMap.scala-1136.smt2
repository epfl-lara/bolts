; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23462 () Bool)

(assert start!23462)

(declare-fun b!246296 () Bool)

(declare-fun b_free!6567 () Bool)

(declare-fun b_next!6567 () Bool)

(assert (=> b!246296 (= b_free!6567 (not b_next!6567))))

(declare-fun tp!22940 () Bool)

(declare-fun b_and!13581 () Bool)

(assert (=> b!246296 (= tp!22940 b_and!13581)))

(declare-fun b!246285 () Bool)

(declare-datatypes ((Unit!7603 0))(
  ( (Unit!7604) )
))
(declare-fun e!159788 () Unit!7603)

(declare-fun Unit!7605 () Unit!7603)

(assert (=> b!246285 (= e!159788 Unit!7605)))

(declare-fun b!246286 () Bool)

(declare-fun res!120779 () Bool)

(declare-fun e!159789 () Bool)

(assert (=> b!246286 (=> (not res!120779) (not e!159789))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!246286 (= res!120779 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!246287 () Bool)

(declare-fun res!120781 () Bool)

(declare-fun e!159783 () Bool)

(assert (=> b!246287 (=> (not res!120781) (not e!159783))))

(declare-datatypes ((V!8219 0))(
  ( (V!8220 (val!3259 Int)) )
))
(declare-datatypes ((ValueCell!2871 0))(
  ( (ValueCellFull!2871 (v!5310 V!8219)) (EmptyCell!2871) )
))
(declare-datatypes ((array!12158 0))(
  ( (array!12159 (arr!5769 (Array (_ BitVec 32) ValueCell!2871)) (size!6112 (_ BitVec 32))) )
))
(declare-datatypes ((array!12160 0))(
  ( (array!12161 (arr!5770 (Array (_ BitVec 32) (_ BitVec 64))) (size!6113 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3642 0))(
  ( (LongMapFixedSize!3643 (defaultEntry!4558 Int) (mask!10681 (_ BitVec 32)) (extraKeys!4295 (_ BitVec 32)) (zeroValue!4399 V!8219) (minValue!4399 V!8219) (_size!1870 (_ BitVec 32)) (_keys!6677 array!12160) (_values!4541 array!12158) (_vacant!1870 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3642)

(declare-datatypes ((SeekEntryResult!1104 0))(
  ( (MissingZero!1104 (index!6586 (_ BitVec 32))) (Found!1104 (index!6587 (_ BitVec 32))) (Intermediate!1104 (undefined!1916 Bool) (index!6588 (_ BitVec 32)) (x!24478 (_ BitVec 32))) (Undefined!1104) (MissingVacant!1104 (index!6589 (_ BitVec 32))) )
))
(declare-fun lt!123396 () SeekEntryResult!1104)

(assert (=> b!246287 (= res!120781 (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6586 lt!123396)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!120783 () Bool)

(assert (=> start!23462 (=> (not res!120783) (not e!159789))))

(declare-fun valid!1418 (LongMapFixedSize!3642) Bool)

(assert (=> start!23462 (= res!120783 (valid!1418 thiss!1504))))

(assert (=> start!23462 e!159789))

(declare-fun e!159784 () Bool)

(assert (=> start!23462 e!159784))

(assert (=> start!23462 true))

(declare-fun call!23019 () Bool)

(declare-fun bm!23015 () Bool)

(declare-fun c!41169 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23015 (= call!23019 (inRange!0 (ite c!41169 (index!6586 lt!123396) (index!6589 lt!123396)) (mask!10681 thiss!1504)))))

(declare-fun b!246288 () Bool)

(declare-fun call!23018 () Bool)

(assert (=> b!246288 (= e!159783 (not call!23018))))

(declare-fun b!246289 () Bool)

(declare-fun e!159793 () Bool)

(assert (=> b!246289 (= e!159793 (not call!23018))))

(declare-fun b!246290 () Bool)

(declare-fun e!159785 () Bool)

(assert (=> b!246290 (= e!159785 e!159793)))

(declare-fun res!120787 () Bool)

(assert (=> b!246290 (= res!120787 call!23019)))

(assert (=> b!246290 (=> (not res!120787) (not e!159793))))

(declare-fun b!246291 () Bool)

(declare-fun e!159791 () Unit!7603)

(declare-fun Unit!7606 () Unit!7603)

(assert (=> b!246291 (= e!159791 Unit!7606)))

(declare-fun lt!123389 () Unit!7603)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!377 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 64) Int) Unit!7603)

(assert (=> b!246291 (= lt!123389 (lemmaInListMapThenSeekEntryOrOpenFindsIt!377 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 (defaultEntry!4558 thiss!1504)))))

(assert (=> b!246291 false))

(declare-fun b!246292 () Bool)

(declare-fun Unit!7607 () Unit!7603)

(assert (=> b!246292 (= e!159788 Unit!7607)))

(declare-fun lt!123390 () Unit!7603)

(declare-fun lemmaArrayContainsKeyThenInListMap!178 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 64) (_ BitVec 32) Int) Unit!7603)

(assert (=> b!246292 (= lt!123390 (lemmaArrayContainsKeyThenInListMap!178 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(assert (=> b!246292 false))

(declare-fun b!246293 () Bool)

(declare-fun res!120784 () Bool)

(assert (=> b!246293 (= res!120784 (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6589 lt!123396)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246293 (=> (not res!120784) (not e!159793))))

(declare-fun b!246294 () Bool)

(declare-fun e!159790 () Bool)

(declare-fun e!159794 () Bool)

(declare-fun mapRes!10910 () Bool)

(assert (=> b!246294 (= e!159790 (and e!159794 mapRes!10910))))

(declare-fun condMapEmpty!10910 () Bool)

(declare-fun mapDefault!10910 () ValueCell!2871)

(assert (=> b!246294 (= condMapEmpty!10910 (= (arr!5769 (_values!4541 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2871)) mapDefault!10910)))))

(declare-fun b!246295 () Bool)

(declare-fun lt!123393 () Unit!7603)

(assert (=> b!246295 (= e!159791 lt!123393)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!379 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 64) Int) Unit!7603)

(assert (=> b!246295 (= lt!123393 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!379 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 (defaultEntry!4558 thiss!1504)))))

(get-info :version)

(assert (=> b!246295 (= c!41169 ((_ is MissingZero!1104) lt!123396))))

(declare-fun e!159782 () Bool)

(assert (=> b!246295 e!159782))

(declare-fun mapNonEmpty!10910 () Bool)

(declare-fun tp!22939 () Bool)

(declare-fun e!159781 () Bool)

(assert (=> mapNonEmpty!10910 (= mapRes!10910 (and tp!22939 e!159781))))

(declare-fun mapValue!10910 () ValueCell!2871)

(declare-fun mapKey!10910 () (_ BitVec 32))

(declare-fun mapRest!10910 () (Array (_ BitVec 32) ValueCell!2871))

(assert (=> mapNonEmpty!10910 (= (arr!5769 (_values!4541 thiss!1504)) (store mapRest!10910 mapKey!10910 mapValue!10910))))

(declare-fun bm!23016 () Bool)

(declare-fun arrayContainsKey!0 (array!12160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23016 (= call!23018 (arrayContainsKey!0 (_keys!6677 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun tp_is_empty!6429 () Bool)

(declare-fun array_inv!3803 (array!12160) Bool)

(declare-fun array_inv!3804 (array!12158) Bool)

(assert (=> b!246296 (= e!159784 (and tp!22940 tp_is_empty!6429 (array_inv!3803 (_keys!6677 thiss!1504)) (array_inv!3804 (_values!4541 thiss!1504)) e!159790))))

(declare-fun b!246297 () Bool)

(declare-fun e!159786 () Bool)

(assert (=> b!246297 (= e!159789 e!159786)))

(declare-fun res!120782 () Bool)

(assert (=> b!246297 (=> (not res!120782) (not e!159786))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!246297 (= res!120782 (or (= lt!123396 (MissingZero!1104 index!297)) (= lt!123396 (MissingVacant!1104 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12160 (_ BitVec 32)) SeekEntryResult!1104)

(assert (=> b!246297 (= lt!123396 (seekEntryOrOpen!0 key!932 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)))))

(declare-fun b!246298 () Bool)

(assert (=> b!246298 (= e!159785 ((_ is Undefined!1104) lt!123396))))

(declare-fun b!246299 () Bool)

(assert (=> b!246299 (= e!159781 tp_is_empty!6429)))

(declare-fun b!246300 () Bool)

(declare-fun e!159787 () Bool)

(assert (=> b!246300 (= e!159786 e!159787)))

(declare-fun res!120785 () Bool)

(assert (=> b!246300 (=> (not res!120785) (not e!159787))))

(assert (=> b!246300 (= res!120785 (inRange!0 index!297 (mask!10681 thiss!1504)))))

(declare-fun lt!123392 () Unit!7603)

(assert (=> b!246300 (= lt!123392 e!159791)))

(declare-fun c!41168 () Bool)

(declare-datatypes ((tuple2!4792 0))(
  ( (tuple2!4793 (_1!2406 (_ BitVec 64)) (_2!2406 V!8219)) )
))
(declare-datatypes ((List!3698 0))(
  ( (Nil!3695) (Cons!3694 (h!4352 tuple2!4792) (t!8723 List!3698)) )
))
(declare-datatypes ((ListLongMap!3719 0))(
  ( (ListLongMap!3720 (toList!1875 List!3698)) )
))
(declare-fun contains!1780 (ListLongMap!3719 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1398 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 32) Int) ListLongMap!3719)

(assert (=> b!246300 (= c!41168 (contains!1780 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)) key!932))))

(declare-fun b!246301 () Bool)

(declare-fun res!120786 () Bool)

(assert (=> b!246301 (=> (not res!120786) (not e!159783))))

(assert (=> b!246301 (= res!120786 call!23019)))

(assert (=> b!246301 (= e!159782 e!159783)))

(declare-fun b!246302 () Bool)

(assert (=> b!246302 (= e!159794 tp_is_empty!6429)))

(declare-fun b!246303 () Bool)

(declare-fun e!159780 () Bool)

(assert (=> b!246303 (= e!159780 (or (not (= (size!6113 (_keys!6677 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10681 thiss!1504)))) (bvsge index!297 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!10910 () Bool)

(assert (=> mapIsEmpty!10910 mapRes!10910))

(declare-fun b!246304 () Bool)

(declare-fun c!41167 () Bool)

(assert (=> b!246304 (= c!41167 ((_ is MissingVacant!1104) lt!123396))))

(assert (=> b!246304 (= e!159782 e!159785)))

(declare-fun b!246305 () Bool)

(assert (=> b!246305 (= e!159787 (not e!159780))))

(declare-fun res!120780 () Bool)

(assert (=> b!246305 (=> res!120780 e!159780)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!246305 (= res!120780 (not (validMask!0 (mask!10681 thiss!1504))))))

(declare-fun lt!123397 () array!12160)

(declare-fun arrayCountValidKeys!0 (array!12160 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!246305 (= (arrayCountValidKeys!0 lt!123397 #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6677 thiss!1504) #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504)))))))

(declare-fun lt!123391 () Unit!7603)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12160 (_ BitVec 32) (_ BitVec 64)) Unit!7603)

(assert (=> b!246305 (= lt!123391 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6677 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3699 0))(
  ( (Nil!3696) (Cons!3695 (h!4353 (_ BitVec 64)) (t!8724 List!3699)) )
))
(declare-fun arrayNoDuplicates!0 (array!12160 (_ BitVec 32) List!3699) Bool)

(assert (=> b!246305 (arrayNoDuplicates!0 lt!123397 #b00000000000000000000000000000000 Nil!3696)))

(assert (=> b!246305 (= lt!123397 (array!12161 (store (arr!5770 (_keys!6677 thiss!1504)) index!297 key!932) (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun lt!123394 () Unit!7603)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12160 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3699) Unit!7603)

(assert (=> b!246305 (= lt!123394 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6677 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3696))))

(declare-fun lt!123395 () Unit!7603)

(assert (=> b!246305 (= lt!123395 e!159788)))

(declare-fun c!41170 () Bool)

(assert (=> b!246305 (= c!41170 (arrayContainsKey!0 (_keys!6677 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!23462 res!120783) b!246286))

(assert (= (and b!246286 res!120779) b!246297))

(assert (= (and b!246297 res!120782) b!246300))

(assert (= (and b!246300 c!41168) b!246291))

(assert (= (and b!246300 (not c!41168)) b!246295))

(assert (= (and b!246295 c!41169) b!246301))

(assert (= (and b!246295 (not c!41169)) b!246304))

(assert (= (and b!246301 res!120786) b!246287))

(assert (= (and b!246287 res!120781) b!246288))

(assert (= (and b!246304 c!41167) b!246290))

(assert (= (and b!246304 (not c!41167)) b!246298))

(assert (= (and b!246290 res!120787) b!246293))

(assert (= (and b!246293 res!120784) b!246289))

(assert (= (or b!246301 b!246290) bm!23015))

(assert (= (or b!246288 b!246289) bm!23016))

(assert (= (and b!246300 res!120785) b!246305))

(assert (= (and b!246305 c!41170) b!246292))

(assert (= (and b!246305 (not c!41170)) b!246285))

(assert (= (and b!246305 (not res!120780)) b!246303))

(assert (= (and b!246294 condMapEmpty!10910) mapIsEmpty!10910))

(assert (= (and b!246294 (not condMapEmpty!10910)) mapNonEmpty!10910))

(assert (= (and mapNonEmpty!10910 ((_ is ValueCellFull!2871) mapValue!10910)) b!246299))

(assert (= (and b!246294 ((_ is ValueCellFull!2871) mapDefault!10910)) b!246302))

(assert (= b!246296 b!246294))

(assert (= start!23462 b!246296))

(declare-fun m!263719 () Bool)

(assert (=> b!246287 m!263719))

(declare-fun m!263721 () Bool)

(assert (=> bm!23016 m!263721))

(declare-fun m!263723 () Bool)

(assert (=> start!23462 m!263723))

(declare-fun m!263725 () Bool)

(assert (=> b!246292 m!263725))

(declare-fun m!263727 () Bool)

(assert (=> b!246295 m!263727))

(declare-fun m!263729 () Bool)

(assert (=> b!246300 m!263729))

(declare-fun m!263731 () Bool)

(assert (=> b!246300 m!263731))

(assert (=> b!246300 m!263731))

(declare-fun m!263733 () Bool)

(assert (=> b!246300 m!263733))

(declare-fun m!263735 () Bool)

(assert (=> b!246305 m!263735))

(assert (=> b!246305 m!263721))

(declare-fun m!263737 () Bool)

(assert (=> b!246305 m!263737))

(declare-fun m!263739 () Bool)

(assert (=> b!246305 m!263739))

(declare-fun m!263741 () Bool)

(assert (=> b!246305 m!263741))

(declare-fun m!263743 () Bool)

(assert (=> b!246305 m!263743))

(declare-fun m!263745 () Bool)

(assert (=> b!246305 m!263745))

(declare-fun m!263747 () Bool)

(assert (=> b!246305 m!263747))

(declare-fun m!263749 () Bool)

(assert (=> bm!23015 m!263749))

(declare-fun m!263751 () Bool)

(assert (=> mapNonEmpty!10910 m!263751))

(declare-fun m!263753 () Bool)

(assert (=> b!246296 m!263753))

(declare-fun m!263755 () Bool)

(assert (=> b!246296 m!263755))

(declare-fun m!263757 () Bool)

(assert (=> b!246293 m!263757))

(declare-fun m!263759 () Bool)

(assert (=> b!246297 m!263759))

(declare-fun m!263761 () Bool)

(assert (=> b!246291 m!263761))

(check-sat (not start!23462) (not b!246296) (not b!246300) (not b!246297) (not b!246305) (not b!246292) (not bm!23015) b_and!13581 (not b!246291) (not bm!23016) (not mapNonEmpty!10910) (not b_next!6567) tp_is_empty!6429 (not b!246295))
(check-sat b_and!13581 (not b_next!6567))
(get-model)

(declare-fun d!60279 () Bool)

(declare-fun e!159842 () Bool)

(assert (=> d!60279 e!159842))

(declare-fun res!120819 () Bool)

(assert (=> d!60279 (=> (not res!120819) (not e!159842))))

(declare-fun lt!123430 () SeekEntryResult!1104)

(assert (=> d!60279 (= res!120819 ((_ is Found!1104) lt!123430))))

(assert (=> d!60279 (= lt!123430 (seekEntryOrOpen!0 key!932 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)))))

(declare-fun lt!123429 () Unit!7603)

(declare-fun choose!1163 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 64) Int) Unit!7603)

(assert (=> d!60279 (= lt!123429 (choose!1163 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 (defaultEntry!4558 thiss!1504)))))

(assert (=> d!60279 (validMask!0 (mask!10681 thiss!1504))))

(assert (=> d!60279 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!377 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 (defaultEntry!4558 thiss!1504)) lt!123429)))

(declare-fun b!246373 () Bool)

(declare-fun res!120820 () Bool)

(assert (=> b!246373 (=> (not res!120820) (not e!159842))))

(assert (=> b!246373 (= res!120820 (inRange!0 (index!6587 lt!123430) (mask!10681 thiss!1504)))))

(declare-fun b!246374 () Bool)

(assert (=> b!246374 (= e!159842 (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6587 lt!123430)) key!932))))

(assert (=> b!246374 (and (bvsge (index!6587 lt!123430) #b00000000000000000000000000000000) (bvslt (index!6587 lt!123430) (size!6113 (_keys!6677 thiss!1504))))))

(assert (= (and d!60279 res!120819) b!246373))

(assert (= (and b!246373 res!120820) b!246374))

(assert (=> d!60279 m!263759))

(declare-fun m!263807 () Bool)

(assert (=> d!60279 m!263807))

(assert (=> d!60279 m!263735))

(declare-fun m!263809 () Bool)

(assert (=> b!246373 m!263809))

(declare-fun m!263811 () Bool)

(assert (=> b!246374 m!263811))

(assert (=> b!246291 d!60279))

(declare-fun d!60281 () Bool)

(assert (=> d!60281 (= (inRange!0 (ite c!41169 (index!6586 lt!123396) (index!6589 lt!123396)) (mask!10681 thiss!1504)) (and (bvsge (ite c!41169 (index!6586 lt!123396) (index!6589 lt!123396)) #b00000000000000000000000000000000) (bvslt (ite c!41169 (index!6586 lt!123396) (index!6589 lt!123396)) (bvadd (mask!10681 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23015 d!60281))

(declare-fun d!60283 () Bool)

(declare-fun e!159847 () Bool)

(assert (=> d!60283 e!159847))

(declare-fun res!120829 () Bool)

(assert (=> d!60283 (=> (not res!120829) (not e!159847))))

(assert (=> d!60283 (= res!120829 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6113 (_keys!6677 thiss!1504)))))))

(declare-fun lt!123433 () Unit!7603)

(declare-fun choose!1 (array!12160 (_ BitVec 32) (_ BitVec 64)) Unit!7603)

(assert (=> d!60283 (= lt!123433 (choose!1 (_keys!6677 thiss!1504) index!297 key!932))))

(declare-fun e!159848 () Bool)

(assert (=> d!60283 e!159848))

(declare-fun res!120832 () Bool)

(assert (=> d!60283 (=> (not res!120832) (not e!159848))))

(assert (=> d!60283 (= res!120832 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6113 (_keys!6677 thiss!1504)))))))

(assert (=> d!60283 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6677 thiss!1504) index!297 key!932) lt!123433)))

(declare-fun b!246383 () Bool)

(declare-fun res!120831 () Bool)

(assert (=> b!246383 (=> (not res!120831) (not e!159848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!246383 (= res!120831 (not (validKeyInArray!0 (select (arr!5770 (_keys!6677 thiss!1504)) index!297))))))

(declare-fun b!246385 () Bool)

(assert (=> b!246385 (= e!159848 (bvslt (size!6113 (_keys!6677 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!246384 () Bool)

(declare-fun res!120830 () Bool)

(assert (=> b!246384 (=> (not res!120830) (not e!159848))))

(assert (=> b!246384 (= res!120830 (validKeyInArray!0 key!932))))

(declare-fun b!246386 () Bool)

(assert (=> b!246386 (= e!159847 (= (arrayCountValidKeys!0 (array!12161 (store (arr!5770 (_keys!6677 thiss!1504)) index!297 key!932) (size!6113 (_keys!6677 thiss!1504))) #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6677 thiss!1504) #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) #b00000000000000000000000000000001)))))

(assert (= (and d!60283 res!120832) b!246383))

(assert (= (and b!246383 res!120831) b!246384))

(assert (= (and b!246384 res!120830) b!246385))

(assert (= (and d!60283 res!120829) b!246386))

(declare-fun m!263813 () Bool)

(assert (=> d!60283 m!263813))

(declare-fun m!263815 () Bool)

(assert (=> b!246383 m!263815))

(assert (=> b!246383 m!263815))

(declare-fun m!263817 () Bool)

(assert (=> b!246383 m!263817))

(declare-fun m!263819 () Bool)

(assert (=> b!246384 m!263819))

(assert (=> b!246386 m!263743))

(declare-fun m!263821 () Bool)

(assert (=> b!246386 m!263821))

(assert (=> b!246386 m!263745))

(assert (=> b!246305 d!60283))

(declare-fun b!246397 () Bool)

(declare-fun e!159859 () Bool)

(declare-fun e!159857 () Bool)

(assert (=> b!246397 (= e!159859 e!159857)))

(declare-fun res!120841 () Bool)

(assert (=> b!246397 (=> (not res!120841) (not e!159857))))

(declare-fun e!159858 () Bool)

(assert (=> b!246397 (= res!120841 (not e!159858))))

(declare-fun res!120839 () Bool)

(assert (=> b!246397 (=> (not res!120839) (not e!159858))))

(assert (=> b!246397 (= res!120839 (validKeyInArray!0 (select (arr!5770 lt!123397) #b00000000000000000000000000000000)))))

(declare-fun b!246398 () Bool)

(declare-fun e!159860 () Bool)

(assert (=> b!246398 (= e!159857 e!159860)))

(declare-fun c!41185 () Bool)

(assert (=> b!246398 (= c!41185 (validKeyInArray!0 (select (arr!5770 lt!123397) #b00000000000000000000000000000000)))))

(declare-fun bm!23025 () Bool)

(declare-fun call!23028 () Bool)

(assert (=> bm!23025 (= call!23028 (arrayNoDuplicates!0 lt!123397 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41185 (Cons!3695 (select (arr!5770 lt!123397) #b00000000000000000000000000000000) Nil!3696) Nil!3696)))))

(declare-fun b!246399 () Bool)

(declare-fun contains!1781 (List!3699 (_ BitVec 64)) Bool)

(assert (=> b!246399 (= e!159858 (contains!1781 Nil!3696 (select (arr!5770 lt!123397) #b00000000000000000000000000000000)))))

(declare-fun d!60285 () Bool)

(declare-fun res!120840 () Bool)

(assert (=> d!60285 (=> res!120840 e!159859)))

(assert (=> d!60285 (= res!120840 (bvsge #b00000000000000000000000000000000 (size!6113 lt!123397)))))

(assert (=> d!60285 (= (arrayNoDuplicates!0 lt!123397 #b00000000000000000000000000000000 Nil!3696) e!159859)))

(declare-fun b!246400 () Bool)

(assert (=> b!246400 (= e!159860 call!23028)))

(declare-fun b!246401 () Bool)

(assert (=> b!246401 (= e!159860 call!23028)))

(assert (= (and d!60285 (not res!120840)) b!246397))

(assert (= (and b!246397 res!120839) b!246399))

(assert (= (and b!246397 res!120841) b!246398))

(assert (= (and b!246398 c!41185) b!246400))

(assert (= (and b!246398 (not c!41185)) b!246401))

(assert (= (or b!246400 b!246401) bm!23025))

(declare-fun m!263823 () Bool)

(assert (=> b!246397 m!263823))

(assert (=> b!246397 m!263823))

(declare-fun m!263825 () Bool)

(assert (=> b!246397 m!263825))

(assert (=> b!246398 m!263823))

(assert (=> b!246398 m!263823))

(assert (=> b!246398 m!263825))

(assert (=> bm!23025 m!263823))

(declare-fun m!263827 () Bool)

(assert (=> bm!23025 m!263827))

(assert (=> b!246399 m!263823))

(assert (=> b!246399 m!263823))

(declare-fun m!263829 () Bool)

(assert (=> b!246399 m!263829))

(assert (=> b!246305 d!60285))

(declare-fun d!60287 () Bool)

(declare-fun res!120846 () Bool)

(declare-fun e!159865 () Bool)

(assert (=> d!60287 (=> res!120846 e!159865)))

(assert (=> d!60287 (= res!120846 (= (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60287 (= (arrayContainsKey!0 (_keys!6677 thiss!1504) key!932 #b00000000000000000000000000000000) e!159865)))

(declare-fun b!246406 () Bool)

(declare-fun e!159866 () Bool)

(assert (=> b!246406 (= e!159865 e!159866)))

(declare-fun res!120847 () Bool)

(assert (=> b!246406 (=> (not res!120847) (not e!159866))))

(assert (=> b!246406 (= res!120847 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun b!246407 () Bool)

(assert (=> b!246407 (= e!159866 (arrayContainsKey!0 (_keys!6677 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60287 (not res!120846)) b!246406))

(assert (= (and b!246406 res!120847) b!246407))

(declare-fun m!263831 () Bool)

(assert (=> d!60287 m!263831))

(declare-fun m!263833 () Bool)

(assert (=> b!246407 m!263833))

(assert (=> b!246305 d!60287))

(declare-fun b!246416 () Bool)

(declare-fun e!159871 () (_ BitVec 32))

(declare-fun call!23031 () (_ BitVec 32))

(assert (=> b!246416 (= e!159871 call!23031)))

(declare-fun d!60289 () Bool)

(declare-fun lt!123436 () (_ BitVec 32))

(assert (=> d!60289 (and (bvsge lt!123436 #b00000000000000000000000000000000) (bvsle lt!123436 (bvsub (size!6113 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!159872 () (_ BitVec 32))

(assert (=> d!60289 (= lt!123436 e!159872)))

(declare-fun c!41191 () Bool)

(assert (=> d!60289 (= c!41191 (bvsge #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))

(assert (=> d!60289 (and (bvsle #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6113 (_keys!6677 thiss!1504)) (size!6113 (_keys!6677 thiss!1504))))))

(assert (=> d!60289 (= (arrayCountValidKeys!0 (_keys!6677 thiss!1504) #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) lt!123436)))

(declare-fun bm!23028 () Bool)

(assert (=> bm!23028 (= call!23031 (arrayCountValidKeys!0 (_keys!6677 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun b!246417 () Bool)

(assert (=> b!246417 (= e!159872 #b00000000000000000000000000000000)))

(declare-fun b!246418 () Bool)

(assert (=> b!246418 (= e!159871 (bvadd #b00000000000000000000000000000001 call!23031))))

(declare-fun b!246419 () Bool)

(assert (=> b!246419 (= e!159872 e!159871)))

(declare-fun c!41190 () Bool)

(assert (=> b!246419 (= c!41190 (validKeyInArray!0 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!60289 c!41191) b!246417))

(assert (= (and d!60289 (not c!41191)) b!246419))

(assert (= (and b!246419 c!41190) b!246418))

(assert (= (and b!246419 (not c!41190)) b!246416))

(assert (= (or b!246418 b!246416) bm!23028))

(declare-fun m!263835 () Bool)

(assert (=> bm!23028 m!263835))

(assert (=> b!246419 m!263831))

(assert (=> b!246419 m!263831))

(declare-fun m!263837 () Bool)

(assert (=> b!246419 m!263837))

(assert (=> b!246305 d!60289))

(declare-fun d!60291 () Bool)

(assert (=> d!60291 (= (validMask!0 (mask!10681 thiss!1504)) (and (or (= (mask!10681 thiss!1504) #b00000000000000000000000000000111) (= (mask!10681 thiss!1504) #b00000000000000000000000000001111) (= (mask!10681 thiss!1504) #b00000000000000000000000000011111) (= (mask!10681 thiss!1504) #b00000000000000000000000000111111) (= (mask!10681 thiss!1504) #b00000000000000000000000001111111) (= (mask!10681 thiss!1504) #b00000000000000000000000011111111) (= (mask!10681 thiss!1504) #b00000000000000000000000111111111) (= (mask!10681 thiss!1504) #b00000000000000000000001111111111) (= (mask!10681 thiss!1504) #b00000000000000000000011111111111) (= (mask!10681 thiss!1504) #b00000000000000000000111111111111) (= (mask!10681 thiss!1504) #b00000000000000000001111111111111) (= (mask!10681 thiss!1504) #b00000000000000000011111111111111) (= (mask!10681 thiss!1504) #b00000000000000000111111111111111) (= (mask!10681 thiss!1504) #b00000000000000001111111111111111) (= (mask!10681 thiss!1504) #b00000000000000011111111111111111) (= (mask!10681 thiss!1504) #b00000000000000111111111111111111) (= (mask!10681 thiss!1504) #b00000000000001111111111111111111) (= (mask!10681 thiss!1504) #b00000000000011111111111111111111) (= (mask!10681 thiss!1504) #b00000000000111111111111111111111) (= (mask!10681 thiss!1504) #b00000000001111111111111111111111) (= (mask!10681 thiss!1504) #b00000000011111111111111111111111) (= (mask!10681 thiss!1504) #b00000000111111111111111111111111) (= (mask!10681 thiss!1504) #b00000001111111111111111111111111) (= (mask!10681 thiss!1504) #b00000011111111111111111111111111) (= (mask!10681 thiss!1504) #b00000111111111111111111111111111) (= (mask!10681 thiss!1504) #b00001111111111111111111111111111) (= (mask!10681 thiss!1504) #b00011111111111111111111111111111) (= (mask!10681 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10681 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!246305 d!60291))

(declare-fun b!246420 () Bool)

(declare-fun e!159873 () (_ BitVec 32))

(declare-fun call!23032 () (_ BitVec 32))

(assert (=> b!246420 (= e!159873 call!23032)))

(declare-fun d!60293 () Bool)

(declare-fun lt!123437 () (_ BitVec 32))

(assert (=> d!60293 (and (bvsge lt!123437 #b00000000000000000000000000000000) (bvsle lt!123437 (bvsub (size!6113 lt!123397) #b00000000000000000000000000000000)))))

(declare-fun e!159874 () (_ BitVec 32))

(assert (=> d!60293 (= lt!123437 e!159874)))

(declare-fun c!41193 () Bool)

(assert (=> d!60293 (= c!41193 (bvsge #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))

(assert (=> d!60293 (and (bvsle #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6113 (_keys!6677 thiss!1504)) (size!6113 lt!123397)))))

(assert (=> d!60293 (= (arrayCountValidKeys!0 lt!123397 #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) lt!123437)))

(declare-fun bm!23029 () Bool)

(assert (=> bm!23029 (= call!23032 (arrayCountValidKeys!0 lt!123397 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun b!246421 () Bool)

(assert (=> b!246421 (= e!159874 #b00000000000000000000000000000000)))

(declare-fun b!246422 () Bool)

(assert (=> b!246422 (= e!159873 (bvadd #b00000000000000000000000000000001 call!23032))))

(declare-fun b!246423 () Bool)

(assert (=> b!246423 (= e!159874 e!159873)))

(declare-fun c!41192 () Bool)

(assert (=> b!246423 (= c!41192 (validKeyInArray!0 (select (arr!5770 lt!123397) #b00000000000000000000000000000000)))))

(assert (= (and d!60293 c!41193) b!246421))

(assert (= (and d!60293 (not c!41193)) b!246423))

(assert (= (and b!246423 c!41192) b!246422))

(assert (= (and b!246423 (not c!41192)) b!246420))

(assert (= (or b!246422 b!246420) bm!23029))

(declare-fun m!263839 () Bool)

(assert (=> bm!23029 m!263839))

(assert (=> b!246423 m!263823))

(assert (=> b!246423 m!263823))

(assert (=> b!246423 m!263825))

(assert (=> b!246305 d!60293))

(declare-fun d!60295 () Bool)

(declare-fun e!159877 () Bool)

(assert (=> d!60295 e!159877))

(declare-fun res!120850 () Bool)

(assert (=> d!60295 (=> (not res!120850) (not e!159877))))

(assert (=> d!60295 (= res!120850 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6113 (_keys!6677 thiss!1504)))))))

(declare-fun lt!123440 () Unit!7603)

(declare-fun choose!41 (array!12160 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3699) Unit!7603)

(assert (=> d!60295 (= lt!123440 (choose!41 (_keys!6677 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3696))))

(assert (=> d!60295 (bvslt (size!6113 (_keys!6677 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60295 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6677 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3696) lt!123440)))

(declare-fun b!246426 () Bool)

(assert (=> b!246426 (= e!159877 (arrayNoDuplicates!0 (array!12161 (store (arr!5770 (_keys!6677 thiss!1504)) index!297 key!932) (size!6113 (_keys!6677 thiss!1504))) #b00000000000000000000000000000000 Nil!3696))))

(assert (= (and d!60295 res!120850) b!246426))

(declare-fun m!263841 () Bool)

(assert (=> d!60295 m!263841))

(assert (=> b!246426 m!263743))

(declare-fun m!263843 () Bool)

(assert (=> b!246426 m!263843))

(assert (=> b!246305 d!60295))

(declare-fun d!60297 () Bool)

(assert (=> d!60297 (contains!1780 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)) key!932)))

(declare-fun lt!123443 () Unit!7603)

(declare-fun choose!1164 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 64) (_ BitVec 32) Int) Unit!7603)

(assert (=> d!60297 (= lt!123443 (choose!1164 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(assert (=> d!60297 (validMask!0 (mask!10681 thiss!1504))))

(assert (=> d!60297 (= (lemmaArrayContainsKeyThenInListMap!178 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)) lt!123443)))

(declare-fun bs!8914 () Bool)

(assert (= bs!8914 d!60297))

(assert (=> bs!8914 m!263731))

(assert (=> bs!8914 m!263731))

(assert (=> bs!8914 m!263733))

(declare-fun m!263845 () Bool)

(assert (=> bs!8914 m!263845))

(assert (=> bs!8914 m!263735))

(assert (=> b!246292 d!60297))

(assert (=> bm!23016 d!60287))

(declare-fun d!60299 () Bool)

(assert (=> d!60299 (= (inRange!0 index!297 (mask!10681 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10681 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!246300 d!60299))

(declare-fun d!60301 () Bool)

(declare-fun e!159883 () Bool)

(assert (=> d!60301 e!159883))

(declare-fun res!120853 () Bool)

(assert (=> d!60301 (=> res!120853 e!159883)))

(declare-fun lt!123453 () Bool)

(assert (=> d!60301 (= res!120853 (not lt!123453))))

(declare-fun lt!123454 () Bool)

(assert (=> d!60301 (= lt!123453 lt!123454)))

(declare-fun lt!123452 () Unit!7603)

(declare-fun e!159882 () Unit!7603)

(assert (=> d!60301 (= lt!123452 e!159882)))

(declare-fun c!41196 () Bool)

(assert (=> d!60301 (= c!41196 lt!123454)))

(declare-fun containsKey!281 (List!3698 (_ BitVec 64)) Bool)

(assert (=> d!60301 (= lt!123454 (containsKey!281 (toList!1875 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504))) key!932))))

(assert (=> d!60301 (= (contains!1780 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)) key!932) lt!123453)))

(declare-fun b!246433 () Bool)

(declare-fun lt!123455 () Unit!7603)

(assert (=> b!246433 (= e!159882 lt!123455)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!230 (List!3698 (_ BitVec 64)) Unit!7603)

(assert (=> b!246433 (= lt!123455 (lemmaContainsKeyImpliesGetValueByKeyDefined!230 (toList!1875 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504))) key!932))))

(declare-datatypes ((Option!295 0))(
  ( (Some!294 (v!5312 V!8219)) (None!293) )
))
(declare-fun isDefined!231 (Option!295) Bool)

(declare-fun getValueByKey!289 (List!3698 (_ BitVec 64)) Option!295)

(assert (=> b!246433 (isDefined!231 (getValueByKey!289 (toList!1875 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504))) key!932))))

(declare-fun b!246434 () Bool)

(declare-fun Unit!7611 () Unit!7603)

(assert (=> b!246434 (= e!159882 Unit!7611)))

(declare-fun b!246435 () Bool)

(assert (=> b!246435 (= e!159883 (isDefined!231 (getValueByKey!289 (toList!1875 (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504))) key!932)))))

(assert (= (and d!60301 c!41196) b!246433))

(assert (= (and d!60301 (not c!41196)) b!246434))

(assert (= (and d!60301 (not res!120853)) b!246435))

(declare-fun m!263847 () Bool)

(assert (=> d!60301 m!263847))

(declare-fun m!263849 () Bool)

(assert (=> b!246433 m!263849))

(declare-fun m!263851 () Bool)

(assert (=> b!246433 m!263851))

(assert (=> b!246433 m!263851))

(declare-fun m!263853 () Bool)

(assert (=> b!246433 m!263853))

(assert (=> b!246435 m!263851))

(assert (=> b!246435 m!263851))

(assert (=> b!246435 m!263853))

(assert (=> b!246300 d!60301))

(declare-fun b!246478 () Bool)

(declare-fun e!159919 () Bool)

(declare-fun call!23052 () Bool)

(assert (=> b!246478 (= e!159919 (not call!23052))))

(declare-fun b!246479 () Bool)

(declare-fun e!159922 () ListLongMap!3719)

(declare-fun e!159918 () ListLongMap!3719)

(assert (=> b!246479 (= e!159922 e!159918)))

(declare-fun c!41214 () Bool)

(assert (=> b!246479 (= c!41214 (and (not (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!23044 () Bool)

(declare-fun lt!123506 () ListLongMap!3719)

(assert (=> bm!23044 (= call!23052 (contains!1780 lt!123506 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246480 () Bool)

(declare-fun res!120878 () Bool)

(declare-fun e!159915 () Bool)

(assert (=> b!246480 (=> (not res!120878) (not e!159915))))

(assert (=> b!246480 (= res!120878 e!159919)))

(declare-fun c!41209 () Bool)

(assert (=> b!246480 (= c!41209 (not (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!246481 () Bool)

(declare-fun e!159911 () Bool)

(declare-fun e!159913 () Bool)

(assert (=> b!246481 (= e!159911 e!159913)))

(declare-fun res!120877 () Bool)

(assert (=> b!246481 (=> (not res!120877) (not e!159913))))

(assert (=> b!246481 (= res!120877 (contains!1780 lt!123506 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!246481 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun b!246483 () Bool)

(declare-fun e!159916 () Bool)

(declare-fun apply!232 (ListLongMap!3719 (_ BitVec 64)) V!8219)

(assert (=> b!246483 (= e!159916 (= (apply!232 lt!123506 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4399 thiss!1504)))))

(declare-fun bm!23045 () Bool)

(declare-fun call!23050 () ListLongMap!3719)

(declare-fun call!23051 () ListLongMap!3719)

(assert (=> bm!23045 (= call!23050 call!23051)))

(declare-fun b!246484 () Bool)

(declare-fun e!159921 () Unit!7603)

(declare-fun Unit!7612 () Unit!7603)

(assert (=> b!246484 (= e!159921 Unit!7612)))

(declare-fun b!246485 () Bool)

(declare-fun call!23048 () ListLongMap!3719)

(declare-fun +!654 (ListLongMap!3719 tuple2!4792) ListLongMap!3719)

(assert (=> b!246485 (= e!159922 (+!654 call!23048 (tuple2!4793 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4399 thiss!1504))))))

(declare-fun bm!23046 () Bool)

(declare-fun call!23053 () ListLongMap!3719)

(assert (=> bm!23046 (= call!23053 call!23048)))

(declare-fun b!246486 () Bool)

(declare-fun e!159920 () Bool)

(assert (=> b!246486 (= e!159920 (validKeyInArray!0 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23047 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!551 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 32) Int) ListLongMap!3719)

(assert (=> bm!23047 (= call!23051 (getCurrentListMapNoExtraKeys!551 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(declare-fun b!246487 () Bool)

(declare-fun e!159910 () Bool)

(assert (=> b!246487 (= e!159910 (validKeyInArray!0 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!246488 () Bool)

(declare-fun e!159912 () Bool)

(assert (=> b!246488 (= e!159915 e!159912)))

(declare-fun c!41213 () Bool)

(assert (=> b!246488 (= c!41213 (not (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!246489 () Bool)

(declare-fun get!2964 (ValueCell!2871 V!8219) V!8219)

(declare-fun dynLambda!570 (Int (_ BitVec 64)) V!8219)

(assert (=> b!246489 (= e!159913 (= (apply!232 lt!123506 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000)) (get!2964 (select (arr!5769 (_values!4541 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!570 (defaultEntry!4558 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!246489 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6112 (_values!4541 thiss!1504))))))

(assert (=> b!246489 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun b!246490 () Bool)

(declare-fun e!159917 () Bool)

(assert (=> b!246490 (= e!159919 e!159917)))

(declare-fun res!120874 () Bool)

(assert (=> b!246490 (= res!120874 call!23052)))

(assert (=> b!246490 (=> (not res!120874) (not e!159917))))

(declare-fun b!246491 () Bool)

(assert (=> b!246491 (= e!159917 (= (apply!232 lt!123506 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4399 thiss!1504)))))

(declare-fun b!246492 () Bool)

(assert (=> b!246492 (= e!159918 call!23053)))

(declare-fun d!60303 () Bool)

(assert (=> d!60303 e!159915))

(declare-fun res!120872 () Bool)

(assert (=> d!60303 (=> (not res!120872) (not e!159915))))

(assert (=> d!60303 (= res!120872 (or (bvsge #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))))

(declare-fun lt!123515 () ListLongMap!3719)

(assert (=> d!60303 (= lt!123506 lt!123515)))

(declare-fun lt!123516 () Unit!7603)

(assert (=> d!60303 (= lt!123516 e!159921)))

(declare-fun c!41212 () Bool)

(assert (=> d!60303 (= c!41212 e!159920)))

(declare-fun res!120873 () Bool)

(assert (=> d!60303 (=> (not res!120873) (not e!159920))))

(assert (=> d!60303 (= res!120873 (bvslt #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))

(assert (=> d!60303 (= lt!123515 e!159922)))

(declare-fun c!41210 () Bool)

(assert (=> d!60303 (= c!41210 (and (not (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60303 (validMask!0 (mask!10681 thiss!1504))))

(assert (=> d!60303 (= (getCurrentListMap!1398 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)) lt!123506)))

(declare-fun b!246482 () Bool)

(declare-fun e!159914 () ListLongMap!3719)

(declare-fun call!23049 () ListLongMap!3719)

(assert (=> b!246482 (= e!159914 call!23049)))

(declare-fun bm!23048 () Bool)

(assert (=> bm!23048 (= call!23048 (+!654 (ite c!41210 call!23051 (ite c!41214 call!23050 call!23049)) (ite (or c!41210 c!41214) (tuple2!4793 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4399 thiss!1504)) (tuple2!4793 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4399 thiss!1504)))))))

(declare-fun bm!23049 () Bool)

(assert (=> bm!23049 (= call!23049 call!23050)))

(declare-fun b!246493 () Bool)

(declare-fun lt!123513 () Unit!7603)

(assert (=> b!246493 (= e!159921 lt!123513)))

(declare-fun lt!123512 () ListLongMap!3719)

(assert (=> b!246493 (= lt!123512 (getCurrentListMapNoExtraKeys!551 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(declare-fun lt!123518 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123518 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123508 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123508 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123507 () Unit!7603)

(declare-fun addStillContains!208 (ListLongMap!3719 (_ BitVec 64) V!8219 (_ BitVec 64)) Unit!7603)

(assert (=> b!246493 (= lt!123507 (addStillContains!208 lt!123512 lt!123518 (zeroValue!4399 thiss!1504) lt!123508))))

(assert (=> b!246493 (contains!1780 (+!654 lt!123512 (tuple2!4793 lt!123518 (zeroValue!4399 thiss!1504))) lt!123508)))

(declare-fun lt!123517 () Unit!7603)

(assert (=> b!246493 (= lt!123517 lt!123507)))

(declare-fun lt!123504 () ListLongMap!3719)

(assert (=> b!246493 (= lt!123504 (getCurrentListMapNoExtraKeys!551 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(declare-fun lt!123509 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123509 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123505 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123505 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123511 () Unit!7603)

(declare-fun addApplyDifferent!208 (ListLongMap!3719 (_ BitVec 64) V!8219 (_ BitVec 64)) Unit!7603)

(assert (=> b!246493 (= lt!123511 (addApplyDifferent!208 lt!123504 lt!123509 (minValue!4399 thiss!1504) lt!123505))))

(assert (=> b!246493 (= (apply!232 (+!654 lt!123504 (tuple2!4793 lt!123509 (minValue!4399 thiss!1504))) lt!123505) (apply!232 lt!123504 lt!123505))))

(declare-fun lt!123520 () Unit!7603)

(assert (=> b!246493 (= lt!123520 lt!123511)))

(declare-fun lt!123502 () ListLongMap!3719)

(assert (=> b!246493 (= lt!123502 (getCurrentListMapNoExtraKeys!551 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(declare-fun lt!123501 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123501 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123521 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123521 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123514 () Unit!7603)

(assert (=> b!246493 (= lt!123514 (addApplyDifferent!208 lt!123502 lt!123501 (zeroValue!4399 thiss!1504) lt!123521))))

(assert (=> b!246493 (= (apply!232 (+!654 lt!123502 (tuple2!4793 lt!123501 (zeroValue!4399 thiss!1504))) lt!123521) (apply!232 lt!123502 lt!123521))))

(declare-fun lt!123500 () Unit!7603)

(assert (=> b!246493 (= lt!123500 lt!123514)))

(declare-fun lt!123519 () ListLongMap!3719)

(assert (=> b!246493 (= lt!123519 (getCurrentListMapNoExtraKeys!551 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4558 thiss!1504)))))

(declare-fun lt!123510 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123510 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123503 () (_ BitVec 64))

(assert (=> b!246493 (= lt!123503 (select (arr!5770 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!246493 (= lt!123513 (addApplyDifferent!208 lt!123519 lt!123510 (minValue!4399 thiss!1504) lt!123503))))

(assert (=> b!246493 (= (apply!232 (+!654 lt!123519 (tuple2!4793 lt!123510 (minValue!4399 thiss!1504))) lt!123503) (apply!232 lt!123519 lt!123503))))

(declare-fun b!246494 () Bool)

(assert (=> b!246494 (= e!159912 e!159916)))

(declare-fun res!120880 () Bool)

(declare-fun call!23047 () Bool)

(assert (=> b!246494 (= res!120880 call!23047)))

(assert (=> b!246494 (=> (not res!120880) (not e!159916))))

(declare-fun b!246495 () Bool)

(declare-fun res!120875 () Bool)

(assert (=> b!246495 (=> (not res!120875) (not e!159915))))

(assert (=> b!246495 (= res!120875 e!159911)))

(declare-fun res!120879 () Bool)

(assert (=> b!246495 (=> res!120879 e!159911)))

(assert (=> b!246495 (= res!120879 (not e!159910))))

(declare-fun res!120876 () Bool)

(assert (=> b!246495 (=> (not res!120876) (not e!159910))))

(assert (=> b!246495 (= res!120876 (bvslt #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun b!246496 () Bool)

(assert (=> b!246496 (= e!159912 (not call!23047))))

(declare-fun bm!23050 () Bool)

(assert (=> bm!23050 (= call!23047 (contains!1780 lt!123506 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246497 () Bool)

(declare-fun c!41211 () Bool)

(assert (=> b!246497 (= c!41211 (and (not (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4295 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!246497 (= e!159918 e!159914)))

(declare-fun b!246498 () Bool)

(assert (=> b!246498 (= e!159914 call!23053)))

(assert (= (and d!60303 c!41210) b!246485))

(assert (= (and d!60303 (not c!41210)) b!246479))

(assert (= (and b!246479 c!41214) b!246492))

(assert (= (and b!246479 (not c!41214)) b!246497))

(assert (= (and b!246497 c!41211) b!246498))

(assert (= (and b!246497 (not c!41211)) b!246482))

(assert (= (or b!246498 b!246482) bm!23049))

(assert (= (or b!246492 bm!23049) bm!23045))

(assert (= (or b!246492 b!246498) bm!23046))

(assert (= (or b!246485 bm!23045) bm!23047))

(assert (= (or b!246485 bm!23046) bm!23048))

(assert (= (and d!60303 res!120873) b!246486))

(assert (= (and d!60303 c!41212) b!246493))

(assert (= (and d!60303 (not c!41212)) b!246484))

(assert (= (and d!60303 res!120872) b!246495))

(assert (= (and b!246495 res!120876) b!246487))

(assert (= (and b!246495 (not res!120879)) b!246481))

(assert (= (and b!246481 res!120877) b!246489))

(assert (= (and b!246495 res!120875) b!246480))

(assert (= (and b!246480 c!41209) b!246490))

(assert (= (and b!246480 (not c!41209)) b!246478))

(assert (= (and b!246490 res!120874) b!246491))

(assert (= (or b!246490 b!246478) bm!23044))

(assert (= (and b!246480 res!120878) b!246488))

(assert (= (and b!246488 c!41213) b!246494))

(assert (= (and b!246488 (not c!41213)) b!246496))

(assert (= (and b!246494 res!120880) b!246483))

(assert (= (or b!246494 b!246496) bm!23050))

(declare-fun b_lambda!8069 () Bool)

(assert (=> (not b_lambda!8069) (not b!246489)))

(declare-fun t!8726 () Bool)

(declare-fun tb!2985 () Bool)

(assert (=> (and b!246296 (= (defaultEntry!4558 thiss!1504) (defaultEntry!4558 thiss!1504)) t!8726) tb!2985))

(declare-fun result!5261 () Bool)

(assert (=> tb!2985 (= result!5261 tp_is_empty!6429)))

(assert (=> b!246489 t!8726))

(declare-fun b_and!13585 () Bool)

(assert (= b_and!13581 (and (=> t!8726 result!5261) b_and!13585)))

(declare-fun m!263855 () Bool)

(assert (=> b!246483 m!263855))

(declare-fun m!263857 () Bool)

(assert (=> b!246485 m!263857))

(assert (=> b!246486 m!263831))

(assert (=> b!246486 m!263831))

(assert (=> b!246486 m!263837))

(declare-fun m!263859 () Bool)

(assert (=> bm!23047 m!263859))

(declare-fun m!263861 () Bool)

(assert (=> bm!23044 m!263861))

(assert (=> b!246487 m!263831))

(assert (=> b!246487 m!263831))

(assert (=> b!246487 m!263837))

(assert (=> b!246481 m!263831))

(assert (=> b!246481 m!263831))

(declare-fun m!263863 () Bool)

(assert (=> b!246481 m!263863))

(declare-fun m!263865 () Bool)

(assert (=> bm!23050 m!263865))

(declare-fun m!263867 () Bool)

(assert (=> b!246493 m!263867))

(declare-fun m!263869 () Bool)

(assert (=> b!246493 m!263869))

(declare-fun m!263871 () Bool)

(assert (=> b!246493 m!263871))

(declare-fun m!263873 () Bool)

(assert (=> b!246493 m!263873))

(declare-fun m!263875 () Bool)

(assert (=> b!246493 m!263875))

(declare-fun m!263877 () Bool)

(assert (=> b!246493 m!263877))

(declare-fun m!263879 () Bool)

(assert (=> b!246493 m!263879))

(declare-fun m!263881 () Bool)

(assert (=> b!246493 m!263881))

(declare-fun m!263883 () Bool)

(assert (=> b!246493 m!263883))

(assert (=> b!246493 m!263875))

(declare-fun m!263885 () Bool)

(assert (=> b!246493 m!263885))

(declare-fun m!263887 () Bool)

(assert (=> b!246493 m!263887))

(declare-fun m!263889 () Bool)

(assert (=> b!246493 m!263889))

(assert (=> b!246493 m!263879))

(declare-fun m!263891 () Bool)

(assert (=> b!246493 m!263891))

(assert (=> b!246493 m!263891))

(declare-fun m!263893 () Bool)

(assert (=> b!246493 m!263893))

(assert (=> b!246493 m!263883))

(declare-fun m!263895 () Bool)

(assert (=> b!246493 m!263895))

(assert (=> b!246493 m!263859))

(assert (=> b!246493 m!263831))

(declare-fun m!263897 () Bool)

(assert (=> b!246489 m!263897))

(declare-fun m!263899 () Bool)

(assert (=> b!246489 m!263899))

(declare-fun m!263901 () Bool)

(assert (=> b!246489 m!263901))

(assert (=> b!246489 m!263897))

(assert (=> b!246489 m!263899))

(assert (=> b!246489 m!263831))

(declare-fun m!263903 () Bool)

(assert (=> b!246489 m!263903))

(assert (=> b!246489 m!263831))

(declare-fun m!263905 () Bool)

(assert (=> bm!23048 m!263905))

(assert (=> d!60303 m!263735))

(declare-fun m!263907 () Bool)

(assert (=> b!246491 m!263907))

(assert (=> b!246300 d!60303))

(declare-fun b!246513 () Bool)

(declare-fun e!159931 () SeekEntryResult!1104)

(declare-fun lt!123529 () SeekEntryResult!1104)

(assert (=> b!246513 (= e!159931 (Found!1104 (index!6588 lt!123529)))))

(declare-fun b!246514 () Bool)

(declare-fun e!159929 () SeekEntryResult!1104)

(assert (=> b!246514 (= e!159929 (MissingZero!1104 (index!6588 lt!123529)))))

(declare-fun b!246515 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12160 (_ BitVec 32)) SeekEntryResult!1104)

(assert (=> b!246515 (= e!159929 (seekKeyOrZeroReturnVacant!0 (x!24478 lt!123529) (index!6588 lt!123529) (index!6588 lt!123529) key!932 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)))))

(declare-fun d!60305 () Bool)

(declare-fun lt!123528 () SeekEntryResult!1104)

(assert (=> d!60305 (and (or ((_ is Undefined!1104) lt!123528) (not ((_ is Found!1104) lt!123528)) (and (bvsge (index!6587 lt!123528) #b00000000000000000000000000000000) (bvslt (index!6587 lt!123528) (size!6113 (_keys!6677 thiss!1504))))) (or ((_ is Undefined!1104) lt!123528) ((_ is Found!1104) lt!123528) (not ((_ is MissingZero!1104) lt!123528)) (and (bvsge (index!6586 lt!123528) #b00000000000000000000000000000000) (bvslt (index!6586 lt!123528) (size!6113 (_keys!6677 thiss!1504))))) (or ((_ is Undefined!1104) lt!123528) ((_ is Found!1104) lt!123528) ((_ is MissingZero!1104) lt!123528) (not ((_ is MissingVacant!1104) lt!123528)) (and (bvsge (index!6589 lt!123528) #b00000000000000000000000000000000) (bvslt (index!6589 lt!123528) (size!6113 (_keys!6677 thiss!1504))))) (or ((_ is Undefined!1104) lt!123528) (ite ((_ is Found!1104) lt!123528) (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6587 lt!123528)) key!932) (ite ((_ is MissingZero!1104) lt!123528) (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6586 lt!123528)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1104) lt!123528) (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6589 lt!123528)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!159930 () SeekEntryResult!1104)

(assert (=> d!60305 (= lt!123528 e!159930)))

(declare-fun c!41223 () Bool)

(assert (=> d!60305 (= c!41223 (and ((_ is Intermediate!1104) lt!123529) (undefined!1916 lt!123529)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12160 (_ BitVec 32)) SeekEntryResult!1104)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60305 (= lt!123529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10681 thiss!1504)) key!932 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)))))

(assert (=> d!60305 (validMask!0 (mask!10681 thiss!1504))))

(assert (=> d!60305 (= (seekEntryOrOpen!0 key!932 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)) lt!123528)))

(declare-fun b!246516 () Bool)

(assert (=> b!246516 (= e!159930 Undefined!1104)))

(declare-fun b!246517 () Bool)

(assert (=> b!246517 (= e!159930 e!159931)))

(declare-fun lt!123530 () (_ BitVec 64))

(assert (=> b!246517 (= lt!123530 (select (arr!5770 (_keys!6677 thiss!1504)) (index!6588 lt!123529)))))

(declare-fun c!41221 () Bool)

(assert (=> b!246517 (= c!41221 (= lt!123530 key!932))))

(declare-fun b!246518 () Bool)

(declare-fun c!41222 () Bool)

(assert (=> b!246518 (= c!41222 (= lt!123530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246518 (= e!159931 e!159929)))

(assert (= (and d!60305 c!41223) b!246516))

(assert (= (and d!60305 (not c!41223)) b!246517))

(assert (= (and b!246517 c!41221) b!246513))

(assert (= (and b!246517 (not c!41221)) b!246518))

(assert (= (and b!246518 c!41222) b!246514))

(assert (= (and b!246518 (not c!41222)) b!246515))

(declare-fun m!263909 () Bool)

(assert (=> b!246515 m!263909))

(declare-fun m!263911 () Bool)

(assert (=> d!60305 m!263911))

(assert (=> d!60305 m!263735))

(declare-fun m!263913 () Bool)

(assert (=> d!60305 m!263913))

(declare-fun m!263915 () Bool)

(assert (=> d!60305 m!263915))

(assert (=> d!60305 m!263915))

(declare-fun m!263917 () Bool)

(assert (=> d!60305 m!263917))

(declare-fun m!263919 () Bool)

(assert (=> d!60305 m!263919))

(declare-fun m!263921 () Bool)

(assert (=> b!246517 m!263921))

(assert (=> b!246297 d!60305))

(declare-fun d!60307 () Bool)

(assert (=> d!60307 (= (array_inv!3803 (_keys!6677 thiss!1504)) (bvsge (size!6113 (_keys!6677 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!246296 d!60307))

(declare-fun d!60309 () Bool)

(assert (=> d!60309 (= (array_inv!3804 (_values!4541 thiss!1504)) (bvsge (size!6112 (_values!4541 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!246296 d!60309))

(declare-fun d!60311 () Bool)

(declare-fun res!120887 () Bool)

(declare-fun e!159934 () Bool)

(assert (=> d!60311 (=> (not res!120887) (not e!159934))))

(declare-fun simpleValid!254 (LongMapFixedSize!3642) Bool)

(assert (=> d!60311 (= res!120887 (simpleValid!254 thiss!1504))))

(assert (=> d!60311 (= (valid!1418 thiss!1504) e!159934)))

(declare-fun b!246525 () Bool)

(declare-fun res!120888 () Bool)

(assert (=> b!246525 (=> (not res!120888) (not e!159934))))

(assert (=> b!246525 (= res!120888 (= (arrayCountValidKeys!0 (_keys!6677 thiss!1504) #b00000000000000000000000000000000 (size!6113 (_keys!6677 thiss!1504))) (_size!1870 thiss!1504)))))

(declare-fun b!246526 () Bool)

(declare-fun res!120889 () Bool)

(assert (=> b!246526 (=> (not res!120889) (not e!159934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12160 (_ BitVec 32)) Bool)

(assert (=> b!246526 (= res!120889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)))))

(declare-fun b!246527 () Bool)

(assert (=> b!246527 (= e!159934 (arrayNoDuplicates!0 (_keys!6677 thiss!1504) #b00000000000000000000000000000000 Nil!3696))))

(assert (= (and d!60311 res!120887) b!246525))

(assert (= (and b!246525 res!120888) b!246526))

(assert (= (and b!246526 res!120889) b!246527))

(declare-fun m!263923 () Bool)

(assert (=> d!60311 m!263923))

(assert (=> b!246525 m!263745))

(declare-fun m!263925 () Bool)

(assert (=> b!246526 m!263925))

(declare-fun m!263927 () Bool)

(assert (=> b!246527 m!263927))

(assert (=> start!23462 d!60311))

(declare-fun bm!23055 () Bool)

(declare-fun call!23058 () Bool)

(assert (=> bm!23055 (= call!23058 (arrayContainsKey!0 (_keys!6677 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!246544 () Bool)

(declare-fun lt!123536 () SeekEntryResult!1104)

(assert (=> b!246544 (and (bvsge (index!6586 lt!123536) #b00000000000000000000000000000000) (bvslt (index!6586 lt!123536) (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun res!120899 () Bool)

(assert (=> b!246544 (= res!120899 (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6586 lt!123536)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159946 () Bool)

(assert (=> b!246544 (=> (not res!120899) (not e!159946))))

(declare-fun b!246545 () Bool)

(declare-fun res!120898 () Bool)

(declare-fun e!159943 () Bool)

(assert (=> b!246545 (=> (not res!120898) (not e!159943))))

(declare-fun call!23059 () Bool)

(assert (=> b!246545 (= res!120898 call!23059)))

(declare-fun e!159944 () Bool)

(assert (=> b!246545 (= e!159944 e!159943)))

(declare-fun b!246547 () Bool)

(assert (=> b!246547 (= e!159946 (not call!23058))))

(declare-fun b!246548 () Bool)

(declare-fun res!120901 () Bool)

(assert (=> b!246548 (=> (not res!120901) (not e!159943))))

(assert (=> b!246548 (= res!120901 (= (select (arr!5770 (_keys!6677 thiss!1504)) (index!6589 lt!123536)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246548 (and (bvsge (index!6589 lt!123536) #b00000000000000000000000000000000) (bvslt (index!6589 lt!123536) (size!6113 (_keys!6677 thiss!1504))))))

(declare-fun d!60313 () Bool)

(declare-fun e!159945 () Bool)

(assert (=> d!60313 e!159945))

(declare-fun c!41228 () Bool)

(assert (=> d!60313 (= c!41228 ((_ is MissingZero!1104) lt!123536))))

(assert (=> d!60313 (= lt!123536 (seekEntryOrOpen!0 key!932 (_keys!6677 thiss!1504) (mask!10681 thiss!1504)))))

(declare-fun lt!123535 () Unit!7603)

(declare-fun choose!1165 (array!12160 array!12158 (_ BitVec 32) (_ BitVec 32) V!8219 V!8219 (_ BitVec 64) Int) Unit!7603)

(assert (=> d!60313 (= lt!123535 (choose!1165 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 (defaultEntry!4558 thiss!1504)))))

(assert (=> d!60313 (validMask!0 (mask!10681 thiss!1504))))

(assert (=> d!60313 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!379 (_keys!6677 thiss!1504) (_values!4541 thiss!1504) (mask!10681 thiss!1504) (extraKeys!4295 thiss!1504) (zeroValue!4399 thiss!1504) (minValue!4399 thiss!1504) key!932 (defaultEntry!4558 thiss!1504)) lt!123535)))

(declare-fun b!246546 () Bool)

(assert (=> b!246546 (= e!159943 (not call!23058))))

(declare-fun b!246549 () Bool)

(assert (=> b!246549 (= e!159945 e!159946)))

(declare-fun res!120900 () Bool)

(assert (=> b!246549 (= res!120900 call!23059)))

(assert (=> b!246549 (=> (not res!120900) (not e!159946))))

(declare-fun bm!23056 () Bool)

(assert (=> bm!23056 (= call!23059 (inRange!0 (ite c!41228 (index!6586 lt!123536) (index!6589 lt!123536)) (mask!10681 thiss!1504)))))

(declare-fun b!246550 () Bool)

(assert (=> b!246550 (= e!159945 e!159944)))

(declare-fun c!41229 () Bool)

(assert (=> b!246550 (= c!41229 ((_ is MissingVacant!1104) lt!123536))))

(declare-fun b!246551 () Bool)

(assert (=> b!246551 (= e!159944 ((_ is Undefined!1104) lt!123536))))

(assert (= (and d!60313 c!41228) b!246549))

(assert (= (and d!60313 (not c!41228)) b!246550))

(assert (= (and b!246549 res!120900) b!246544))

(assert (= (and b!246544 res!120899) b!246547))

(assert (= (and b!246550 c!41229) b!246545))

(assert (= (and b!246550 (not c!41229)) b!246551))

(assert (= (and b!246545 res!120898) b!246548))

(assert (= (and b!246548 res!120901) b!246546))

(assert (= (or b!246549 b!246545) bm!23056))

(assert (= (or b!246547 b!246546) bm!23055))

(declare-fun m!263929 () Bool)

(assert (=> b!246544 m!263929))

(assert (=> d!60313 m!263759))

(declare-fun m!263931 () Bool)

(assert (=> d!60313 m!263931))

(assert (=> d!60313 m!263735))

(declare-fun m!263933 () Bool)

(assert (=> bm!23056 m!263933))

(declare-fun m!263935 () Bool)

(assert (=> b!246548 m!263935))

(assert (=> bm!23055 m!263721))

(assert (=> b!246295 d!60313))

(declare-fun mapIsEmpty!10916 () Bool)

(declare-fun mapRes!10916 () Bool)

(assert (=> mapIsEmpty!10916 mapRes!10916))

(declare-fun b!246558 () Bool)

(declare-fun e!159952 () Bool)

(assert (=> b!246558 (= e!159952 tp_is_empty!6429)))

(declare-fun mapNonEmpty!10916 () Bool)

(declare-fun tp!22949 () Bool)

(assert (=> mapNonEmpty!10916 (= mapRes!10916 (and tp!22949 e!159952))))

(declare-fun mapValue!10916 () ValueCell!2871)

(declare-fun mapRest!10916 () (Array (_ BitVec 32) ValueCell!2871))

(declare-fun mapKey!10916 () (_ BitVec 32))

(assert (=> mapNonEmpty!10916 (= mapRest!10910 (store mapRest!10916 mapKey!10916 mapValue!10916))))

(declare-fun b!246559 () Bool)

(declare-fun e!159951 () Bool)

(assert (=> b!246559 (= e!159951 tp_is_empty!6429)))

(declare-fun condMapEmpty!10916 () Bool)

(declare-fun mapDefault!10916 () ValueCell!2871)

(assert (=> mapNonEmpty!10910 (= condMapEmpty!10916 (= mapRest!10910 ((as const (Array (_ BitVec 32) ValueCell!2871)) mapDefault!10916)))))

(assert (=> mapNonEmpty!10910 (= tp!22939 (and e!159951 mapRes!10916))))

(assert (= (and mapNonEmpty!10910 condMapEmpty!10916) mapIsEmpty!10916))

(assert (= (and mapNonEmpty!10910 (not condMapEmpty!10916)) mapNonEmpty!10916))

(assert (= (and mapNonEmpty!10916 ((_ is ValueCellFull!2871) mapValue!10916)) b!246558))

(assert (= (and mapNonEmpty!10910 ((_ is ValueCellFull!2871) mapDefault!10916)) b!246559))

(declare-fun m!263937 () Bool)

(assert (=> mapNonEmpty!10916 m!263937))

(declare-fun b_lambda!8071 () Bool)

(assert (= b_lambda!8069 (or (and b!246296 b_free!6567) b_lambda!8071)))

(check-sat (not b!246493) (not d!60297) (not b!246373) (not b!246525) (not bm!23047) (not b!246483) (not d!60305) b_and!13585 (not b!246485) (not bm!23025) (not b!246486) (not d!60301) (not b_lambda!8071) (not b!246426) (not bm!23056) (not d!60283) (not b!246481) (not d!60295) (not b!246386) (not b!246397) (not b!246526) (not b!246527) (not bm!23055) (not bm!23044) (not b!246491) (not b!246419) (not bm!23028) (not b!246423) (not d!60313) (not b!246407) (not b!246383) (not b!246489) (not bm!23050) (not bm!23048) (not d!60303) (not b_next!6567) (not mapNonEmpty!10916) (not b!246384) (not d!60279) (not b!246487) (not b!246433) tp_is_empty!6429 (not b!246435) (not d!60311) (not b!246398) (not bm!23029) (not b!246399) (not b!246515))
(check-sat b_and!13585 (not b_next!6567))
