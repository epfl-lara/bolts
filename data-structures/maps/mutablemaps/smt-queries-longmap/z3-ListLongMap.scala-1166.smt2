; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24774 () Bool)

(assert start!24774)

(declare-fun b!258791 () Bool)

(declare-fun b_free!6747 () Bool)

(declare-fun b_next!6747 () Bool)

(assert (=> b!258791 (= b_free!6747 (not b_next!6747))))

(declare-fun tp!23556 () Bool)

(declare-fun b_and!13853 () Bool)

(assert (=> b!258791 (= tp!23556 b_and!13853)))

(declare-fun b!258773 () Bool)

(declare-datatypes ((Unit!8042 0))(
  ( (Unit!8043) )
))
(declare-fun e!167748 () Unit!8042)

(declare-fun Unit!8044 () Unit!8042)

(assert (=> b!258773 (= e!167748 Unit!8044)))

(declare-fun lt!130349 () Unit!8042)

(declare-datatypes ((V!8459 0))(
  ( (V!8460 (val!3349 Int)) )
))
(declare-datatypes ((ValueCell!2961 0))(
  ( (ValueCellFull!2961 (v!5449 V!8459)) (EmptyCell!2961) )
))
(declare-datatypes ((array!12566 0))(
  ( (array!12567 (arr!5949 (Array (_ BitVec 32) ValueCell!2961)) (size!6297 (_ BitVec 32))) )
))
(declare-datatypes ((array!12568 0))(
  ( (array!12569 (arr!5950 (Array (_ BitVec 32) (_ BitVec 64))) (size!6298 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3822 0))(
  ( (LongMapFixedSize!3823 (defaultEntry!4774 Int) (mask!11082 (_ BitVec 32)) (extraKeys!4511 (_ BitVec 32)) (zeroValue!4615 V!8459) (minValue!4615 V!8459) (_size!1960 (_ BitVec 32)) (_keys!6948 array!12568) (_values!4757 array!12566) (_vacant!1960 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3822)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!439 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 64) Int) Unit!8042)

(assert (=> b!258773 (= lt!130349 (lemmaInListMapThenSeekEntryOrOpenFindsIt!439 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)))))

(assert (=> b!258773 false))

(declare-fun b!258774 () Bool)

(declare-fun e!167735 () Unit!8042)

(declare-fun Unit!8045 () Unit!8042)

(assert (=> b!258774 (= e!167735 Unit!8045)))

(declare-fun lt!130352 () Unit!8042)

(declare-fun lemmaArrayContainsKeyThenInListMap!246 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 64) (_ BitVec 32) Int) Unit!8042)

(assert (=> b!258774 (= lt!130352 (lemmaArrayContainsKeyThenInListMap!246 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(assert (=> b!258774 false))

(declare-fun b!258775 () Bool)

(declare-fun lt!130354 () Unit!8042)

(assert (=> b!258775 (= e!167748 lt!130354)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!438 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 64) Int) Unit!8042)

(assert (=> b!258775 (= lt!130354 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!438 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)))))

(declare-fun c!43863 () Bool)

(declare-datatypes ((SeekEntryResult!1187 0))(
  ( (MissingZero!1187 (index!6918 (_ BitVec 32))) (Found!1187 (index!6919 (_ BitVec 32))) (Intermediate!1187 (undefined!1999 Bool) (index!6920 (_ BitVec 32)) (x!25081 (_ BitVec 32))) (Undefined!1187) (MissingVacant!1187 (index!6921 (_ BitVec 32))) )
))
(declare-fun lt!130351 () SeekEntryResult!1187)

(get-info :version)

(assert (=> b!258775 (= c!43863 ((_ is MissingZero!1187) lt!130351))))

(declare-fun e!167749 () Bool)

(assert (=> b!258775 e!167749))

(declare-fun b!258776 () Bool)

(declare-fun e!167740 () Bool)

(declare-fun e!167742 () Bool)

(assert (=> b!258776 (= e!167740 e!167742)))

(declare-fun res!126545 () Bool)

(declare-fun call!24621 () Bool)

(assert (=> b!258776 (= res!126545 call!24621)))

(assert (=> b!258776 (=> (not res!126545) (not e!167742))))

(declare-fun b!258777 () Bool)

(declare-fun e!167737 () Bool)

(declare-fun tp_is_empty!6609 () Bool)

(assert (=> b!258777 (= e!167737 tp_is_empty!6609)))

(declare-fun b!258778 () Bool)

(declare-fun res!126542 () Bool)

(declare-fun e!167741 () Bool)

(assert (=> b!258778 (=> (not res!126542) (not e!167741))))

(assert (=> b!258778 (= res!126542 call!24621)))

(assert (=> b!258778 (= e!167749 e!167741)))

(declare-fun b!258780 () Bool)

(declare-fun res!126543 () Bool)

(declare-fun e!167739 () Bool)

(assert (=> b!258780 (=> (not res!126543) (not e!167739))))

(assert (=> b!258780 (= res!126543 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!258781 () Bool)

(declare-fun res!126548 () Bool)

(assert (=> b!258781 (=> (not res!126548) (not e!167741))))

(assert (=> b!258781 (= res!126548 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6918 lt!130351)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258782 () Bool)

(declare-fun e!167736 () Bool)

(declare-fun e!167746 () Bool)

(assert (=> b!258782 (= e!167736 (not e!167746))))

(declare-fun res!126546 () Bool)

(assert (=> b!258782 (=> res!126546 e!167746)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!258782 (= res!126546 (not (validMask!0 (mask!11082 thiss!1504))))))

(declare-fun lt!130346 () array!12568)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12568 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!258782 (= (arrayCountValidKeys!0 lt!130346 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!130357 () Unit!8042)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12568 (_ BitVec 32)) Unit!8042)

(assert (=> b!258782 (= lt!130357 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130346 index!297))))

(declare-fun arrayContainsKey!0 (array!12568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!258782 (arrayContainsKey!0 lt!130346 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130347 () Unit!8042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12568 (_ BitVec 64) (_ BitVec 32)) Unit!8042)

(assert (=> b!258782 (= lt!130347 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130346 key!932 index!297))))

(declare-fun v!346 () V!8459)

(declare-datatypes ((tuple2!4934 0))(
  ( (tuple2!4935 (_1!2477 (_ BitVec 64)) (_2!2477 V!8459)) )
))
(declare-datatypes ((List!3837 0))(
  ( (Nil!3834) (Cons!3833 (h!4496 tuple2!4934) (t!8910 List!3837)) )
))
(declare-datatypes ((ListLongMap!3861 0))(
  ( (ListLongMap!3862 (toList!1946 List!3837)) )
))
(declare-fun lt!130355 () ListLongMap!3861)

(declare-fun +!690 (ListLongMap!3861 tuple2!4934) ListLongMap!3861)

(declare-fun getCurrentListMap!1469 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 32) Int) ListLongMap!3861)

(assert (=> b!258782 (= (+!690 lt!130355 (tuple2!4935 key!932 v!346)) (getCurrentListMap!1469 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130356 () Unit!8042)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!105 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 32) (_ BitVec 64) V!8459 Int) Unit!8042)

(assert (=> b!258782 (= lt!130356 (lemmaAddValidKeyToArrayThenAddPairToListMap!105 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) index!297 key!932 v!346 (defaultEntry!4774 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12568 (_ BitVec 32)) Bool)

(assert (=> b!258782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130346 (mask!11082 thiss!1504))))

(declare-fun lt!130353 () Unit!8042)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12568 (_ BitVec 32) (_ BitVec 32)) Unit!8042)

(assert (=> b!258782 (= lt!130353 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) index!297 (mask!11082 thiss!1504)))))

(assert (=> b!258782 (= (arrayCountValidKeys!0 lt!130346 #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504)))))))

(declare-fun lt!130348 () Unit!8042)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12568 (_ BitVec 32) (_ BitVec 64)) Unit!8042)

(assert (=> b!258782 (= lt!130348 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6948 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3838 0))(
  ( (Nil!3835) (Cons!3834 (h!4497 (_ BitVec 64)) (t!8911 List!3838)) )
))
(declare-fun arrayNoDuplicates!0 (array!12568 (_ BitVec 32) List!3838) Bool)

(assert (=> b!258782 (arrayNoDuplicates!0 lt!130346 #b00000000000000000000000000000000 Nil!3835)))

(assert (=> b!258782 (= lt!130346 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun lt!130350 () Unit!8042)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3838) Unit!8042)

(assert (=> b!258782 (= lt!130350 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6948 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3835))))

(declare-fun lt!130344 () Unit!8042)

(assert (=> b!258782 (= lt!130344 e!167735)))

(declare-fun c!43866 () Bool)

(assert (=> b!258782 (= c!43866 (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258783 () Bool)

(declare-fun e!167744 () Bool)

(assert (=> b!258783 (= e!167744 e!167736)))

(declare-fun res!126541 () Bool)

(assert (=> b!258783 (=> (not res!126541) (not e!167736))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!258783 (= res!126541 (inRange!0 index!297 (mask!11082 thiss!1504)))))

(declare-fun lt!130345 () Unit!8042)

(assert (=> b!258783 (= lt!130345 e!167748)))

(declare-fun c!43864 () Bool)

(declare-fun contains!1881 (ListLongMap!3861 (_ BitVec 64)) Bool)

(assert (=> b!258783 (= c!43864 (contains!1881 lt!130355 key!932))))

(assert (=> b!258783 (= lt!130355 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun b!258784 () Bool)

(declare-fun res!126547 () Bool)

(assert (=> b!258784 (= res!126547 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6921 lt!130351)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258784 (=> (not res!126547) (not e!167742))))

(declare-fun b!258785 () Bool)

(assert (=> b!258785 (= e!167746 (or (not (= (size!6297 (_values!4757 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11082 thiss!1504)))) (= (size!6298 (_keys!6948 thiss!1504)) (size!6297 (_values!4757 thiss!1504)))))))

(declare-fun b!258786 () Bool)

(declare-fun c!43865 () Bool)

(assert (=> b!258786 (= c!43865 ((_ is MissingVacant!1187) lt!130351))))

(assert (=> b!258786 (= e!167749 e!167740)))

(declare-fun b!258787 () Bool)

(assert (=> b!258787 (= e!167739 e!167744)))

(declare-fun res!126540 () Bool)

(assert (=> b!258787 (=> (not res!126540) (not e!167744))))

(assert (=> b!258787 (= res!126540 (or (= lt!130351 (MissingZero!1187 index!297)) (= lt!130351 (MissingVacant!1187 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12568 (_ BitVec 32)) SeekEntryResult!1187)

(assert (=> b!258787 (= lt!130351 (seekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun b!258788 () Bool)

(declare-fun call!24620 () Bool)

(assert (=> b!258788 (= e!167741 (not call!24620))))

(declare-fun b!258789 () Bool)

(declare-fun Unit!8046 () Unit!8042)

(assert (=> b!258789 (= e!167735 Unit!8046)))

(declare-fun bm!24617 () Bool)

(assert (=> bm!24617 (= call!24620 (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258790 () Bool)

(declare-fun e!167738 () Bool)

(declare-fun e!167747 () Bool)

(declare-fun mapRes!11257 () Bool)

(assert (=> b!258790 (= e!167738 (and e!167747 mapRes!11257))))

(declare-fun condMapEmpty!11257 () Bool)

(declare-fun mapDefault!11257 () ValueCell!2961)

(assert (=> b!258790 (= condMapEmpty!11257 (= (arr!5949 (_values!4757 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2961)) mapDefault!11257)))))

(declare-fun e!167745 () Bool)

(declare-fun array_inv!3921 (array!12568) Bool)

(declare-fun array_inv!3922 (array!12566) Bool)

(assert (=> b!258791 (= e!167745 (and tp!23556 tp_is_empty!6609 (array_inv!3921 (_keys!6948 thiss!1504)) (array_inv!3922 (_values!4757 thiss!1504)) e!167738))))

(declare-fun b!258792 () Bool)

(assert (=> b!258792 (= e!167740 ((_ is Undefined!1187) lt!130351))))

(declare-fun res!126544 () Bool)

(assert (=> start!24774 (=> (not res!126544) (not e!167739))))

(declare-fun valid!1484 (LongMapFixedSize!3822) Bool)

(assert (=> start!24774 (= res!126544 (valid!1484 thiss!1504))))

(assert (=> start!24774 e!167739))

(assert (=> start!24774 e!167745))

(assert (=> start!24774 true))

(assert (=> start!24774 tp_is_empty!6609))

(declare-fun b!258779 () Bool)

(assert (=> b!258779 (= e!167742 (not call!24620))))

(declare-fun bm!24618 () Bool)

(assert (=> bm!24618 (= call!24621 (inRange!0 (ite c!43863 (index!6918 lt!130351) (index!6921 lt!130351)) (mask!11082 thiss!1504)))))

(declare-fun mapIsEmpty!11257 () Bool)

(assert (=> mapIsEmpty!11257 mapRes!11257))

(declare-fun mapNonEmpty!11257 () Bool)

(declare-fun tp!23557 () Bool)

(assert (=> mapNonEmpty!11257 (= mapRes!11257 (and tp!23557 e!167737))))

(declare-fun mapValue!11257 () ValueCell!2961)

(declare-fun mapKey!11257 () (_ BitVec 32))

(declare-fun mapRest!11257 () (Array (_ BitVec 32) ValueCell!2961))

(assert (=> mapNonEmpty!11257 (= (arr!5949 (_values!4757 thiss!1504)) (store mapRest!11257 mapKey!11257 mapValue!11257))))

(declare-fun b!258793 () Bool)

(assert (=> b!258793 (= e!167747 tp_is_empty!6609)))

(assert (= (and start!24774 res!126544) b!258780))

(assert (= (and b!258780 res!126543) b!258787))

(assert (= (and b!258787 res!126540) b!258783))

(assert (= (and b!258783 c!43864) b!258773))

(assert (= (and b!258783 (not c!43864)) b!258775))

(assert (= (and b!258775 c!43863) b!258778))

(assert (= (and b!258775 (not c!43863)) b!258786))

(assert (= (and b!258778 res!126542) b!258781))

(assert (= (and b!258781 res!126548) b!258788))

(assert (= (and b!258786 c!43865) b!258776))

(assert (= (and b!258786 (not c!43865)) b!258792))

(assert (= (and b!258776 res!126545) b!258784))

(assert (= (and b!258784 res!126547) b!258779))

(assert (= (or b!258778 b!258776) bm!24618))

(assert (= (or b!258788 b!258779) bm!24617))

(assert (= (and b!258783 res!126541) b!258782))

(assert (= (and b!258782 c!43866) b!258774))

(assert (= (and b!258782 (not c!43866)) b!258789))

(assert (= (and b!258782 (not res!126546)) b!258785))

(assert (= (and b!258790 condMapEmpty!11257) mapIsEmpty!11257))

(assert (= (and b!258790 (not condMapEmpty!11257)) mapNonEmpty!11257))

(assert (= (and mapNonEmpty!11257 ((_ is ValueCellFull!2961) mapValue!11257)) b!258777))

(assert (= (and b!258790 ((_ is ValueCellFull!2961) mapDefault!11257)) b!258793))

(assert (= b!258791 b!258790))

(assert (= start!24774 b!258791))

(declare-fun m!274299 () Bool)

(assert (=> b!258775 m!274299))

(declare-fun m!274301 () Bool)

(assert (=> b!258782 m!274301))

(declare-fun m!274303 () Bool)

(assert (=> b!258782 m!274303))

(declare-fun m!274305 () Bool)

(assert (=> b!258782 m!274305))

(declare-fun m!274307 () Bool)

(assert (=> b!258782 m!274307))

(declare-fun m!274309 () Bool)

(assert (=> b!258782 m!274309))

(declare-fun m!274311 () Bool)

(assert (=> b!258782 m!274311))

(declare-fun m!274313 () Bool)

(assert (=> b!258782 m!274313))

(declare-fun m!274315 () Bool)

(assert (=> b!258782 m!274315))

(declare-fun m!274317 () Bool)

(assert (=> b!258782 m!274317))

(declare-fun m!274319 () Bool)

(assert (=> b!258782 m!274319))

(declare-fun m!274321 () Bool)

(assert (=> b!258782 m!274321))

(declare-fun m!274323 () Bool)

(assert (=> b!258782 m!274323))

(declare-fun m!274325 () Bool)

(assert (=> b!258782 m!274325))

(declare-fun m!274327 () Bool)

(assert (=> b!258782 m!274327))

(declare-fun m!274329 () Bool)

(assert (=> b!258782 m!274329))

(declare-fun m!274331 () Bool)

(assert (=> b!258782 m!274331))

(declare-fun m!274333 () Bool)

(assert (=> b!258782 m!274333))

(declare-fun m!274335 () Bool)

(assert (=> b!258782 m!274335))

(declare-fun m!274337 () Bool)

(assert (=> b!258784 m!274337))

(declare-fun m!274339 () Bool)

(assert (=> b!258781 m!274339))

(declare-fun m!274341 () Bool)

(assert (=> b!258773 m!274341))

(declare-fun m!274343 () Bool)

(assert (=> b!258774 m!274343))

(declare-fun m!274345 () Bool)

(assert (=> b!258783 m!274345))

(declare-fun m!274347 () Bool)

(assert (=> b!258783 m!274347))

(declare-fun m!274349 () Bool)

(assert (=> b!258783 m!274349))

(assert (=> bm!24617 m!274303))

(declare-fun m!274351 () Bool)

(assert (=> b!258791 m!274351))

(declare-fun m!274353 () Bool)

(assert (=> b!258791 m!274353))

(declare-fun m!274355 () Bool)

(assert (=> start!24774 m!274355))

(declare-fun m!274357 () Bool)

(assert (=> b!258787 m!274357))

(declare-fun m!274359 () Bool)

(assert (=> mapNonEmpty!11257 m!274359))

(declare-fun m!274361 () Bool)

(assert (=> bm!24618 m!274361))

(check-sat tp_is_empty!6609 b_and!13853 (not b!258775) (not bm!24618) (not b!258783) (not b!258773) (not mapNonEmpty!11257) (not b!258774) (not b!258791) (not start!24774) (not bm!24617) (not b!258782) (not b_next!6747) (not b!258787))
(check-sat b_and!13853 (not b_next!6747))
(get-model)

(declare-fun b!258868 () Bool)

(declare-fun e!167799 () Bool)

(assert (=> b!258868 (= e!167799 (= (arrayCountValidKeys!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!258866 () Bool)

(declare-fun res!126586 () Bool)

(declare-fun e!167800 () Bool)

(assert (=> b!258866 (=> (not res!126586) (not e!167800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!258866 (= res!126586 (validKeyInArray!0 key!932))))

(declare-fun b!258865 () Bool)

(declare-fun res!126587 () Bool)

(assert (=> b!258865 (=> (not res!126587) (not e!167800))))

(assert (=> b!258865 (= res!126587 (not (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) index!297))))))

(declare-fun d!62051 () Bool)

(assert (=> d!62051 e!167799))

(declare-fun res!126584 () Bool)

(assert (=> d!62051 (=> (not res!126584) (not e!167799))))

(assert (=> d!62051 (= res!126584 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6298 (_keys!6948 thiss!1504)))))))

(declare-fun lt!130402 () Unit!8042)

(declare-fun choose!1 (array!12568 (_ BitVec 32) (_ BitVec 64)) Unit!8042)

(assert (=> d!62051 (= lt!130402 (choose!1 (_keys!6948 thiss!1504) index!297 key!932))))

(assert (=> d!62051 e!167800))

(declare-fun res!126585 () Bool)

(assert (=> d!62051 (=> (not res!126585) (not e!167800))))

(assert (=> d!62051 (= res!126585 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6298 (_keys!6948 thiss!1504)))))))

(assert (=> d!62051 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6948 thiss!1504) index!297 key!932) lt!130402)))

(declare-fun b!258867 () Bool)

(assert (=> b!258867 (= e!167800 (bvslt (size!6298 (_keys!6948 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!62051 res!126585) b!258865))

(assert (= (and b!258865 res!126587) b!258866))

(assert (= (and b!258866 res!126586) b!258867))

(assert (= (and d!62051 res!126584) b!258868))

(assert (=> b!258868 m!274331))

(declare-fun m!274427 () Bool)

(assert (=> b!258868 m!274427))

(assert (=> b!258868 m!274319))

(declare-fun m!274429 () Bool)

(assert (=> b!258866 m!274429))

(declare-fun m!274431 () Bool)

(assert (=> b!258865 m!274431))

(assert (=> b!258865 m!274431))

(declare-fun m!274433 () Bool)

(assert (=> b!258865 m!274433))

(declare-fun m!274435 () Bool)

(assert (=> d!62051 m!274435))

(assert (=> b!258782 d!62051))

(declare-fun d!62053 () Bool)

(declare-fun e!167803 () Bool)

(assert (=> d!62053 e!167803))

(declare-fun res!126593 () Bool)

(assert (=> d!62053 (=> (not res!126593) (not e!167803))))

(declare-fun lt!130412 () ListLongMap!3861)

(assert (=> d!62053 (= res!126593 (contains!1881 lt!130412 (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun lt!130411 () List!3837)

(assert (=> d!62053 (= lt!130412 (ListLongMap!3862 lt!130411))))

(declare-fun lt!130413 () Unit!8042)

(declare-fun lt!130414 () Unit!8042)

(assert (=> d!62053 (= lt!130413 lt!130414)))

(declare-datatypes ((Option!319 0))(
  ( (Some!318 (v!5453 V!8459)) (None!317) )
))
(declare-fun getValueByKey!313 (List!3837 (_ BitVec 64)) Option!319)

(assert (=> d!62053 (= (getValueByKey!313 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346))) (Some!318 (_2!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!171 (List!3837 (_ BitVec 64) V!8459) Unit!8042)

(assert (=> d!62053 (= lt!130414 (lemmaContainsTupThenGetReturnValue!171 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun insertStrictlySorted!173 (List!3837 (_ BitVec 64) V!8459) List!3837)

(assert (=> d!62053 (= lt!130411 (insertStrictlySorted!173 (toList!1946 lt!130355) (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))

(assert (=> d!62053 (= (+!690 lt!130355 (tuple2!4935 key!932 v!346)) lt!130412)))

(declare-fun b!258873 () Bool)

(declare-fun res!126592 () Bool)

(assert (=> b!258873 (=> (not res!126592) (not e!167803))))

(assert (=> b!258873 (= res!126592 (= (getValueByKey!313 (toList!1946 lt!130412) (_1!2477 (tuple2!4935 key!932 v!346))) (Some!318 (_2!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun b!258874 () Bool)

(declare-fun contains!1883 (List!3837 tuple2!4934) Bool)

(assert (=> b!258874 (= e!167803 (contains!1883 (toList!1946 lt!130412) (tuple2!4935 key!932 v!346)))))

(assert (= (and d!62053 res!126593) b!258873))

(assert (= (and b!258873 res!126592) b!258874))

(declare-fun m!274437 () Bool)

(assert (=> d!62053 m!274437))

(declare-fun m!274439 () Bool)

(assert (=> d!62053 m!274439))

(declare-fun m!274441 () Bool)

(assert (=> d!62053 m!274441))

(declare-fun m!274443 () Bool)

(assert (=> d!62053 m!274443))

(declare-fun m!274445 () Bool)

(assert (=> b!258873 m!274445))

(declare-fun m!274447 () Bool)

(assert (=> b!258874 m!274447))

(assert (=> b!258782 d!62053))

(declare-fun b!258883 () Bool)

(declare-fun e!167808 () (_ BitVec 32))

(declare-fun call!24630 () (_ BitVec 32))

(assert (=> b!258883 (= e!167808 (bvadd #b00000000000000000000000000000001 call!24630))))

(declare-fun d!62055 () Bool)

(declare-fun lt!130417 () (_ BitVec 32))

(assert (=> d!62055 (and (bvsge lt!130417 #b00000000000000000000000000000000) (bvsle lt!130417 (bvsub (size!6298 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!167809 () (_ BitVec 32))

(assert (=> d!62055 (= lt!130417 e!167809)))

(declare-fun c!43884 () Bool)

(assert (=> d!62055 (= c!43884 (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62055 (and (bvsle #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6298 (_keys!6948 thiss!1504)) (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62055 (= (arrayCountValidKeys!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) lt!130417)))

(declare-fun b!258884 () Bool)

(assert (=> b!258884 (= e!167808 call!24630)))

(declare-fun b!258885 () Bool)

(assert (=> b!258885 (= e!167809 e!167808)))

(declare-fun c!43883 () Bool)

(assert (=> b!258885 (= c!43883 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24627 () Bool)

(assert (=> bm!24627 (= call!24630 (arrayCountValidKeys!0 (_keys!6948 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!258886 () Bool)

(assert (=> b!258886 (= e!167809 #b00000000000000000000000000000000)))

(assert (= (and d!62055 c!43884) b!258886))

(assert (= (and d!62055 (not c!43884)) b!258885))

(assert (= (and b!258885 c!43883) b!258883))

(assert (= (and b!258885 (not c!43883)) b!258884))

(assert (= (or b!258883 b!258884) bm!24627))

(declare-fun m!274449 () Bool)

(assert (=> b!258885 m!274449))

(assert (=> b!258885 m!274449))

(declare-fun m!274451 () Bool)

(assert (=> b!258885 m!274451))

(declare-fun m!274453 () Bool)

(assert (=> bm!24627 m!274453))

(assert (=> b!258782 d!62055))

(declare-fun d!62057 () Bool)

(declare-fun e!167812 () Bool)

(assert (=> d!62057 e!167812))

(declare-fun res!126596 () Bool)

(assert (=> d!62057 (=> (not res!126596) (not e!167812))))

(assert (=> d!62057 (= res!126596 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6298 (_keys!6948 thiss!1504))) (bvslt index!297 (size!6297 (_values!4757 thiss!1504)))))))

(declare-fun lt!130420 () Unit!8042)

(declare-fun choose!1260 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 32) (_ BitVec 64) V!8459 Int) Unit!8042)

(assert (=> d!62057 (= lt!130420 (choose!1260 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) index!297 key!932 v!346 (defaultEntry!4774 thiss!1504)))))

(assert (=> d!62057 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62057 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!105 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) index!297 key!932 v!346 (defaultEntry!4774 thiss!1504)) lt!130420)))

(declare-fun b!258889 () Bool)

(assert (=> b!258889 (= e!167812 (= (+!690 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) (tuple2!4935 key!932 v!346)) (getCurrentListMap!1469 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504))))))

(assert (= (and d!62057 res!126596) b!258889))

(declare-fun m!274455 () Bool)

(assert (=> d!62057 m!274455))

(assert (=> d!62057 m!274301))

(assert (=> b!258889 m!274311))

(assert (=> b!258889 m!274349))

(assert (=> b!258889 m!274349))

(declare-fun m!274457 () Bool)

(assert (=> b!258889 m!274457))

(assert (=> b!258889 m!274331))

(declare-fun m!274459 () Bool)

(assert (=> b!258889 m!274459))

(assert (=> b!258782 d!62057))

(declare-fun d!62059 () Bool)

(declare-fun res!126601 () Bool)

(declare-fun e!167817 () Bool)

(assert (=> d!62059 (=> res!126601 e!167817)))

(assert (=> d!62059 (= res!126601 (= (select (arr!5950 lt!130346) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62059 (= (arrayContainsKey!0 lt!130346 key!932 #b00000000000000000000000000000000) e!167817)))

(declare-fun b!258894 () Bool)

(declare-fun e!167818 () Bool)

(assert (=> b!258894 (= e!167817 e!167818)))

(declare-fun res!126602 () Bool)

(assert (=> b!258894 (=> (not res!126602) (not e!167818))))

(assert (=> b!258894 (= res!126602 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 lt!130346)))))

(declare-fun b!258895 () Bool)

(assert (=> b!258895 (= e!167818 (arrayContainsKey!0 lt!130346 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62059 (not res!126601)) b!258894))

(assert (= (and b!258894 res!126602) b!258895))

(declare-fun m!274461 () Bool)

(assert (=> d!62059 m!274461))

(declare-fun m!274463 () Bool)

(assert (=> b!258895 m!274463))

(assert (=> b!258782 d!62059))

(declare-fun b!258896 () Bool)

(declare-fun e!167819 () (_ BitVec 32))

(declare-fun call!24631 () (_ BitVec 32))

(assert (=> b!258896 (= e!167819 (bvadd #b00000000000000000000000000000001 call!24631))))

(declare-fun d!62061 () Bool)

(declare-fun lt!130421 () (_ BitVec 32))

(assert (=> d!62061 (and (bvsge lt!130421 #b00000000000000000000000000000000) (bvsle lt!130421 (bvsub (size!6298 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun e!167820 () (_ BitVec 32))

(assert (=> d!62061 (= lt!130421 e!167820)))

(declare-fun c!43886 () Bool)

(assert (=> d!62061 (= c!43886 (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62061 (and (bvsle #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6298 (_keys!6948 thiss!1504)) (size!6298 lt!130346)))))

(assert (=> d!62061 (= (arrayCountValidKeys!0 lt!130346 #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) lt!130421)))

(declare-fun b!258897 () Bool)

(assert (=> b!258897 (= e!167819 call!24631)))

(declare-fun b!258898 () Bool)

(assert (=> b!258898 (= e!167820 e!167819)))

(declare-fun c!43885 () Bool)

(assert (=> b!258898 (= c!43885 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun bm!24628 () Bool)

(assert (=> bm!24628 (= call!24631 (arrayCountValidKeys!0 lt!130346 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!258899 () Bool)

(assert (=> b!258899 (= e!167820 #b00000000000000000000000000000000)))

(assert (= (and d!62061 c!43886) b!258899))

(assert (= (and d!62061 (not c!43886)) b!258898))

(assert (= (and b!258898 c!43885) b!258896))

(assert (= (and b!258898 (not c!43885)) b!258897))

(assert (= (or b!258896 b!258897) bm!24628))

(assert (=> b!258898 m!274461))

(assert (=> b!258898 m!274461))

(declare-fun m!274465 () Bool)

(assert (=> b!258898 m!274465))

(declare-fun m!274467 () Bool)

(assert (=> bm!24628 m!274467))

(assert (=> b!258782 d!62061))

(declare-fun d!62063 () Bool)

(declare-fun res!126611 () Bool)

(declare-fun e!167832 () Bool)

(assert (=> d!62063 (=> res!126611 e!167832)))

(assert (=> d!62063 (= res!126611 (bvsge #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(assert (=> d!62063 (= (arrayNoDuplicates!0 lt!130346 #b00000000000000000000000000000000 Nil!3835) e!167832)))

(declare-fun b!258910 () Bool)

(declare-fun e!167829 () Bool)

(assert (=> b!258910 (= e!167832 e!167829)))

(declare-fun res!126609 () Bool)

(assert (=> b!258910 (=> (not res!126609) (not e!167829))))

(declare-fun e!167830 () Bool)

(assert (=> b!258910 (= res!126609 (not e!167830))))

(declare-fun res!126610 () Bool)

(assert (=> b!258910 (=> (not res!126610) (not e!167830))))

(assert (=> b!258910 (= res!126610 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!258911 () Bool)

(declare-fun e!167831 () Bool)

(declare-fun call!24634 () Bool)

(assert (=> b!258911 (= e!167831 call!24634)))

(declare-fun b!258912 () Bool)

(declare-fun contains!1884 (List!3838 (_ BitVec 64)) Bool)

(assert (=> b!258912 (= e!167830 (contains!1884 Nil!3835 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!258913 () Bool)

(assert (=> b!258913 (= e!167831 call!24634)))

(declare-fun b!258914 () Bool)

(assert (=> b!258914 (= e!167829 e!167831)))

(declare-fun c!43889 () Bool)

(assert (=> b!258914 (= c!43889 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun bm!24631 () Bool)

(assert (=> bm!24631 (= call!24634 (arrayNoDuplicates!0 lt!130346 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43889 (Cons!3834 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) Nil!3835) Nil!3835)))))

(assert (= (and d!62063 (not res!126611)) b!258910))

(assert (= (and b!258910 res!126610) b!258912))

(assert (= (and b!258910 res!126609) b!258914))

(assert (= (and b!258914 c!43889) b!258911))

(assert (= (and b!258914 (not c!43889)) b!258913))

(assert (= (or b!258911 b!258913) bm!24631))

(assert (=> b!258910 m!274461))

(assert (=> b!258910 m!274461))

(assert (=> b!258910 m!274465))

(assert (=> b!258912 m!274461))

(assert (=> b!258912 m!274461))

(declare-fun m!274469 () Bool)

(assert (=> b!258912 m!274469))

(assert (=> b!258914 m!274461))

(assert (=> b!258914 m!274461))

(assert (=> b!258914 m!274465))

(assert (=> bm!24631 m!274461))

(declare-fun m!274471 () Bool)

(assert (=> bm!24631 m!274471))

(assert (=> b!258782 d!62063))

(declare-fun bm!24634 () Bool)

(declare-fun call!24637 () Bool)

(assert (=> bm!24634 (= call!24637 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!130346 (mask!11082 thiss!1504)))))

(declare-fun d!62065 () Bool)

(declare-fun res!126616 () Bool)

(declare-fun e!167840 () Bool)

(assert (=> d!62065 (=> res!126616 e!167840)))

(assert (=> d!62065 (= res!126616 (bvsge #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(assert (=> d!62065 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130346 (mask!11082 thiss!1504)) e!167840)))

(declare-fun b!258923 () Bool)

(declare-fun e!167841 () Bool)

(declare-fun e!167839 () Bool)

(assert (=> b!258923 (= e!167841 e!167839)))

(declare-fun lt!130428 () (_ BitVec 64))

(assert (=> b!258923 (= lt!130428 (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))

(declare-fun lt!130429 () Unit!8042)

(assert (=> b!258923 (= lt!130429 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130346 lt!130428 #b00000000000000000000000000000000))))

(assert (=> b!258923 (arrayContainsKey!0 lt!130346 lt!130428 #b00000000000000000000000000000000)))

(declare-fun lt!130430 () Unit!8042)

(assert (=> b!258923 (= lt!130430 lt!130429)))

(declare-fun res!126617 () Bool)

(assert (=> b!258923 (= res!126617 (= (seekEntryOrOpen!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) lt!130346 (mask!11082 thiss!1504)) (Found!1187 #b00000000000000000000000000000000)))))

(assert (=> b!258923 (=> (not res!126617) (not e!167839))))

(declare-fun b!258924 () Bool)

(assert (=> b!258924 (= e!167840 e!167841)))

(declare-fun c!43892 () Bool)

(assert (=> b!258924 (= c!43892 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!258925 () Bool)

(assert (=> b!258925 (= e!167839 call!24637)))

(declare-fun b!258926 () Bool)

(assert (=> b!258926 (= e!167841 call!24637)))

(assert (= (and d!62065 (not res!126616)) b!258924))

(assert (= (and b!258924 c!43892) b!258923))

(assert (= (and b!258924 (not c!43892)) b!258926))

(assert (= (and b!258923 res!126617) b!258925))

(assert (= (or b!258925 b!258926) bm!24634))

(declare-fun m!274473 () Bool)

(assert (=> bm!24634 m!274473))

(assert (=> b!258923 m!274461))

(declare-fun m!274475 () Bool)

(assert (=> b!258923 m!274475))

(declare-fun m!274477 () Bool)

(assert (=> b!258923 m!274477))

(assert (=> b!258923 m!274461))

(declare-fun m!274479 () Bool)

(assert (=> b!258923 m!274479))

(assert (=> b!258924 m!274461))

(assert (=> b!258924 m!274461))

(assert (=> b!258924 m!274465))

(assert (=> b!258782 d!62065))

(declare-fun call!24654 () ListLongMap!3861)

(declare-fun bm!24649 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!575 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 32) Int) ListLongMap!3861)

(assert (=> bm!24649 (= call!24654 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun b!258970 () Bool)

(declare-fun c!43910 () Bool)

(assert (=> b!258970 (= c!43910 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167876 () ListLongMap!3861)

(declare-fun e!167878 () ListLongMap!3861)

(assert (=> b!258970 (= e!167876 e!167878)))

(declare-fun b!258971 () Bool)

(declare-fun e!167875 () Bool)

(assert (=> b!258971 (= e!167875 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!258972 () Bool)

(declare-fun e!167880 () Bool)

(declare-fun e!167869 () Bool)

(assert (=> b!258972 (= e!167880 e!167869)))

(declare-fun res!126639 () Bool)

(declare-fun call!24657 () Bool)

(assert (=> b!258972 (= res!126639 call!24657)))

(assert (=> b!258972 (=> (not res!126639) (not e!167869))))

(declare-fun b!258973 () Bool)

(declare-fun call!24655 () ListLongMap!3861)

(assert (=> b!258973 (= e!167878 call!24655)))

(declare-fun b!258974 () Bool)

(declare-fun call!24656 () ListLongMap!3861)

(assert (=> b!258974 (= e!167876 call!24656)))

(declare-fun bm!24650 () Bool)

(declare-fun call!24653 () ListLongMap!3861)

(assert (=> bm!24650 (= call!24655 call!24653)))

(declare-fun bm!24651 () Bool)

(declare-fun lt!130496 () ListLongMap!3861)

(assert (=> bm!24651 (= call!24657 (contains!1881 lt!130496 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258975 () Bool)

(declare-fun e!167871 () Bool)

(declare-fun apply!256 (ListLongMap!3861 (_ BitVec 64)) V!8459)

(declare-fun get!3063 (ValueCell!2961 V!8459) V!8459)

(declare-fun dynLambda!594 (Int (_ BitVec 64)) V!8459)

(assert (=> b!258975 (= e!167871 (= (apply!256 lt!130496 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) (get!3063 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258975 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6297 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))))))))

(assert (=> b!258975 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun call!24652 () ListLongMap!3861)

(declare-fun c!43908 () Bool)

(declare-fun bm!24652 () Bool)

(declare-fun c!43907 () Bool)

(assert (=> bm!24652 (= call!24652 (+!690 (ite c!43908 call!24654 (ite c!43907 call!24653 call!24655)) (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(declare-fun b!258976 () Bool)

(assert (=> b!258976 (= e!167878 call!24656)))

(declare-fun b!258977 () Bool)

(declare-fun res!126643 () Bool)

(declare-fun e!167874 () Bool)

(assert (=> b!258977 (=> (not res!126643) (not e!167874))))

(declare-fun e!167873 () Bool)

(assert (=> b!258977 (= res!126643 e!167873)))

(declare-fun res!126640 () Bool)

(assert (=> b!258977 (=> res!126640 e!167873)))

(assert (=> b!258977 (= res!126640 (not e!167875))))

(declare-fun res!126636 () Bool)

(assert (=> b!258977 (=> (not res!126636) (not e!167875))))

(assert (=> b!258977 (= res!126636 (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun b!258978 () Bool)

(declare-fun e!167879 () Unit!8042)

(declare-fun lt!130486 () Unit!8042)

(assert (=> b!258978 (= e!167879 lt!130486)))

(declare-fun lt!130489 () ListLongMap!3861)

(assert (=> b!258978 (= lt!130489 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130479 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130479 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130475 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130475 (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))

(declare-fun lt!130494 () Unit!8042)

(declare-fun addStillContains!232 (ListLongMap!3861 (_ BitVec 64) V!8459 (_ BitVec 64)) Unit!8042)

(assert (=> b!258978 (= lt!130494 (addStillContains!232 lt!130489 lt!130479 (zeroValue!4615 thiss!1504) lt!130475))))

(assert (=> b!258978 (contains!1881 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))) lt!130475)))

(declare-fun lt!130491 () Unit!8042)

(assert (=> b!258978 (= lt!130491 lt!130494)))

(declare-fun lt!130481 () ListLongMap!3861)

(assert (=> b!258978 (= lt!130481 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130485 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130485 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130488 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130488 (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))

(declare-fun lt!130487 () Unit!8042)

(declare-fun addApplyDifferent!232 (ListLongMap!3861 (_ BitVec 64) V!8459 (_ BitVec 64)) Unit!8042)

(assert (=> b!258978 (= lt!130487 (addApplyDifferent!232 lt!130481 lt!130485 (minValue!4615 thiss!1504) lt!130488))))

(assert (=> b!258978 (= (apply!256 (+!690 lt!130481 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))) lt!130488) (apply!256 lt!130481 lt!130488))))

(declare-fun lt!130492 () Unit!8042)

(assert (=> b!258978 (= lt!130492 lt!130487)))

(declare-fun lt!130480 () ListLongMap!3861)

(assert (=> b!258978 (= lt!130480 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130483 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130483 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130490 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130490 (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))

(declare-fun lt!130495 () Unit!8042)

(assert (=> b!258978 (= lt!130495 (addApplyDifferent!232 lt!130480 lt!130483 (zeroValue!4615 thiss!1504) lt!130490))))

(assert (=> b!258978 (= (apply!256 (+!690 lt!130480 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))) lt!130490) (apply!256 lt!130480 lt!130490))))

(declare-fun lt!130484 () Unit!8042)

(assert (=> b!258978 (= lt!130484 lt!130495)))

(declare-fun lt!130477 () ListLongMap!3861)

(assert (=> b!258978 (= lt!130477 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130493 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130493 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130482 () (_ BitVec 64))

(assert (=> b!258978 (= lt!130482 (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))

(assert (=> b!258978 (= lt!130486 (addApplyDifferent!232 lt!130477 lt!130493 (minValue!4615 thiss!1504) lt!130482))))

(assert (=> b!258978 (= (apply!256 (+!690 lt!130477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))) lt!130482) (apply!256 lt!130477 lt!130482))))

(declare-fun d!62067 () Bool)

(assert (=> d!62067 e!167874))

(declare-fun res!126637 () Bool)

(assert (=> d!62067 (=> (not res!126637) (not e!167874))))

(assert (=> d!62067 (= res!126637 (or (bvsge #b00000000000000000000000000000000 (size!6298 lt!130346)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))))

(declare-fun lt!130476 () ListLongMap!3861)

(assert (=> d!62067 (= lt!130496 lt!130476)))

(declare-fun lt!130478 () Unit!8042)

(assert (=> d!62067 (= lt!130478 e!167879)))

(declare-fun c!43906 () Bool)

(declare-fun e!167870 () Bool)

(assert (=> d!62067 (= c!43906 e!167870)))

(declare-fun res!126644 () Bool)

(assert (=> d!62067 (=> (not res!126644) (not e!167870))))

(assert (=> d!62067 (= res!126644 (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun e!167872 () ListLongMap!3861)

(assert (=> d!62067 (= lt!130476 e!167872)))

(assert (=> d!62067 (= c!43908 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62067 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62067 (= (getCurrentListMap!1469 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) lt!130496)))

(declare-fun b!258969 () Bool)

(assert (=> b!258969 (= e!167872 (+!690 call!24652 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))

(declare-fun b!258979 () Bool)

(declare-fun Unit!8052 () Unit!8042)

(assert (=> b!258979 (= e!167879 Unit!8052)))

(declare-fun b!258980 () Bool)

(assert (=> b!258980 (= e!167869 (= (apply!256 lt!130496 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4615 thiss!1504)))))

(declare-fun b!258981 () Bool)

(declare-fun res!126638 () Bool)

(assert (=> b!258981 (=> (not res!126638) (not e!167874))))

(assert (=> b!258981 (= res!126638 e!167880)))

(declare-fun c!43905 () Bool)

(assert (=> b!258981 (= c!43905 (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24653 () Bool)

(assert (=> bm!24653 (= call!24656 call!24652)))

(declare-fun b!258982 () Bool)

(assert (=> b!258982 (= e!167880 (not call!24657))))

(declare-fun b!258983 () Bool)

(assert (=> b!258983 (= e!167872 e!167876)))

(assert (=> b!258983 (= c!43907 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!258984 () Bool)

(declare-fun e!167868 () Bool)

(declare-fun call!24658 () Bool)

(assert (=> b!258984 (= e!167868 (not call!24658))))

(declare-fun bm!24654 () Bool)

(assert (=> bm!24654 (= call!24653 call!24654)))

(declare-fun bm!24655 () Bool)

(assert (=> bm!24655 (= call!24658 (contains!1881 lt!130496 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258985 () Bool)

(declare-fun e!167877 () Bool)

(assert (=> b!258985 (= e!167877 (= (apply!256 lt!130496 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4615 thiss!1504)))))

(declare-fun b!258986 () Bool)

(assert (=> b!258986 (= e!167873 e!167871)))

(declare-fun res!126641 () Bool)

(assert (=> b!258986 (=> (not res!126641) (not e!167871))))

(assert (=> b!258986 (= res!126641 (contains!1881 lt!130496 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(assert (=> b!258986 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun b!258987 () Bool)

(assert (=> b!258987 (= e!167874 e!167868)))

(declare-fun c!43909 () Bool)

(assert (=> b!258987 (= c!43909 (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!258988 () Bool)

(assert (=> b!258988 (= e!167870 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!258989 () Bool)

(assert (=> b!258989 (= e!167868 e!167877)))

(declare-fun res!126642 () Bool)

(assert (=> b!258989 (= res!126642 call!24658)))

(assert (=> b!258989 (=> (not res!126642) (not e!167877))))

(assert (= (and d!62067 c!43908) b!258969))

(assert (= (and d!62067 (not c!43908)) b!258983))

(assert (= (and b!258983 c!43907) b!258974))

(assert (= (and b!258983 (not c!43907)) b!258970))

(assert (= (and b!258970 c!43910) b!258976))

(assert (= (and b!258970 (not c!43910)) b!258973))

(assert (= (or b!258976 b!258973) bm!24650))

(assert (= (or b!258974 bm!24650) bm!24654))

(assert (= (or b!258974 b!258976) bm!24653))

(assert (= (or b!258969 bm!24654) bm!24649))

(assert (= (or b!258969 bm!24653) bm!24652))

(assert (= (and d!62067 res!126644) b!258988))

(assert (= (and d!62067 c!43906) b!258978))

(assert (= (and d!62067 (not c!43906)) b!258979))

(assert (= (and d!62067 res!126637) b!258977))

(assert (= (and b!258977 res!126636) b!258971))

(assert (= (and b!258977 (not res!126640)) b!258986))

(assert (= (and b!258986 res!126641) b!258975))

(assert (= (and b!258977 res!126643) b!258981))

(assert (= (and b!258981 c!43905) b!258972))

(assert (= (and b!258981 (not c!43905)) b!258982))

(assert (= (and b!258972 res!126639) b!258980))

(assert (= (or b!258972 b!258982) bm!24651))

(assert (= (and b!258981 res!126638) b!258987))

(assert (= (and b!258987 c!43909) b!258989))

(assert (= (and b!258987 (not c!43909)) b!258984))

(assert (= (and b!258989 res!126642) b!258985))

(assert (= (or b!258989 b!258984) bm!24655))

(declare-fun b_lambda!8253 () Bool)

(assert (=> (not b_lambda!8253) (not b!258975)))

(declare-fun t!8914 () Bool)

(declare-fun tb!3033 () Bool)

(assert (=> (and b!258791 (= (defaultEntry!4774 thiss!1504) (defaultEntry!4774 thiss!1504)) t!8914) tb!3033))

(declare-fun result!5405 () Bool)

(assert (=> tb!3033 (= result!5405 tp_is_empty!6609)))

(assert (=> b!258975 t!8914))

(declare-fun b_and!13857 () Bool)

(assert (= b_and!13853 (and (=> t!8914 result!5405) b_and!13857)))

(assert (=> b!258988 m!274461))

(assert (=> b!258988 m!274461))

(assert (=> b!258988 m!274465))

(assert (=> b!258975 m!274461))

(declare-fun m!274481 () Bool)

(assert (=> b!258975 m!274481))

(declare-fun m!274483 () Bool)

(assert (=> b!258975 m!274483))

(assert (=> b!258975 m!274461))

(declare-fun m!274485 () Bool)

(assert (=> b!258975 m!274485))

(assert (=> b!258975 m!274483))

(declare-fun m!274487 () Bool)

(assert (=> b!258975 m!274487))

(assert (=> b!258975 m!274485))

(declare-fun m!274489 () Bool)

(assert (=> bm!24652 m!274489))

(declare-fun m!274491 () Bool)

(assert (=> bm!24651 m!274491))

(declare-fun m!274493 () Bool)

(assert (=> bm!24655 m!274493))

(declare-fun m!274495 () Bool)

(assert (=> b!258985 m!274495))

(assert (=> b!258971 m!274461))

(assert (=> b!258971 m!274461))

(assert (=> b!258971 m!274465))

(declare-fun m!274497 () Bool)

(assert (=> b!258969 m!274497))

(declare-fun m!274499 () Bool)

(assert (=> b!258978 m!274499))

(declare-fun m!274501 () Bool)

(assert (=> b!258978 m!274501))

(assert (=> b!258978 m!274501))

(declare-fun m!274503 () Bool)

(assert (=> b!258978 m!274503))

(declare-fun m!274505 () Bool)

(assert (=> b!258978 m!274505))

(declare-fun m!274507 () Bool)

(assert (=> b!258978 m!274507))

(declare-fun m!274509 () Bool)

(assert (=> b!258978 m!274509))

(assert (=> b!258978 m!274461))

(declare-fun m!274511 () Bool)

(assert (=> b!258978 m!274511))

(declare-fun m!274513 () Bool)

(assert (=> b!258978 m!274513))

(declare-fun m!274515 () Bool)

(assert (=> b!258978 m!274515))

(declare-fun m!274517 () Bool)

(assert (=> b!258978 m!274517))

(declare-fun m!274519 () Bool)

(assert (=> b!258978 m!274519))

(assert (=> b!258978 m!274507))

(declare-fun m!274521 () Bool)

(assert (=> b!258978 m!274521))

(declare-fun m!274523 () Bool)

(assert (=> b!258978 m!274523))

(declare-fun m!274525 () Bool)

(assert (=> b!258978 m!274525))

(declare-fun m!274527 () Bool)

(assert (=> b!258978 m!274527))

(assert (=> b!258978 m!274511))

(assert (=> b!258978 m!274499))

(declare-fun m!274529 () Bool)

(assert (=> b!258978 m!274529))

(assert (=> b!258986 m!274461))

(assert (=> b!258986 m!274461))

(declare-fun m!274531 () Bool)

(assert (=> b!258986 m!274531))

(assert (=> bm!24649 m!274527))

(assert (=> d!62067 m!274301))

(declare-fun m!274533 () Bool)

(assert (=> b!258980 m!274533))

(assert (=> b!258782 d!62067))

(declare-fun d!62069 () Bool)

(assert (=> d!62069 (arrayContainsKey!0 lt!130346 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130499 () Unit!8042)

(declare-fun choose!13 (array!12568 (_ BitVec 64) (_ BitVec 32)) Unit!8042)

(assert (=> d!62069 (= lt!130499 (choose!13 lt!130346 key!932 index!297))))

(assert (=> d!62069 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!62069 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130346 key!932 index!297) lt!130499)))

(declare-fun bs!9125 () Bool)

(assert (= bs!9125 d!62069))

(assert (=> bs!9125 m!274321))

(declare-fun m!274535 () Bool)

(assert (=> bs!9125 m!274535))

(assert (=> b!258782 d!62069))

(declare-fun d!62071 () Bool)

(assert (=> d!62071 (= (arrayCountValidKeys!0 lt!130346 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!130502 () Unit!8042)

(declare-fun choose!2 (array!12568 (_ BitVec 32)) Unit!8042)

(assert (=> d!62071 (= lt!130502 (choose!2 lt!130346 index!297))))

(declare-fun e!167883 () Bool)

(assert (=> d!62071 e!167883))

(declare-fun res!126649 () Bool)

(assert (=> d!62071 (=> (not res!126649) (not e!167883))))

(assert (=> d!62071 (= res!126649 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6298 lt!130346))))))

(assert (=> d!62071 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130346 index!297) lt!130502)))

(declare-fun b!258996 () Bool)

(declare-fun res!126650 () Bool)

(assert (=> b!258996 (=> (not res!126650) (not e!167883))))

(assert (=> b!258996 (= res!126650 (validKeyInArray!0 (select (arr!5950 lt!130346) index!297)))))

(declare-fun b!258997 () Bool)

(assert (=> b!258997 (= e!167883 (bvslt (size!6298 lt!130346) #b01111111111111111111111111111111))))

(assert (= (and d!62071 res!126649) b!258996))

(assert (= (and b!258996 res!126650) b!258997))

(declare-fun m!274537 () Bool)

(assert (=> d!62071 m!274537))

(declare-fun m!274539 () Bool)

(assert (=> d!62071 m!274539))

(declare-fun m!274541 () Bool)

(assert (=> b!258996 m!274541))

(assert (=> b!258996 m!274541))

(declare-fun m!274543 () Bool)

(assert (=> b!258996 m!274543))

(assert (=> b!258782 d!62071))

(declare-fun d!62073 () Bool)

(declare-fun e!167886 () Bool)

(assert (=> d!62073 e!167886))

(declare-fun res!126653 () Bool)

(assert (=> d!62073 (=> (not res!126653) (not e!167886))))

(assert (=> d!62073 (= res!126653 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6298 (_keys!6948 thiss!1504)))))))

(declare-fun lt!130505 () Unit!8042)

(declare-fun choose!41 (array!12568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3838) Unit!8042)

(assert (=> d!62073 (= lt!130505 (choose!41 (_keys!6948 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3835))))

(assert (=> d!62073 (bvslt (size!6298 (_keys!6948 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!62073 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6948 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3835) lt!130505)))

(declare-fun b!259000 () Bool)

(assert (=> b!259000 (= e!167886 (arrayNoDuplicates!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000000 Nil!3835))))

(assert (= (and d!62073 res!126653) b!259000))

(declare-fun m!274545 () Bool)

(assert (=> d!62073 m!274545))

(assert (=> b!259000 m!274331))

(declare-fun m!274547 () Bool)

(assert (=> b!259000 m!274547))

(assert (=> b!258782 d!62073))

(declare-fun d!62075 () Bool)

(declare-fun res!126654 () Bool)

(declare-fun e!167887 () Bool)

(assert (=> d!62075 (=> res!126654 e!167887)))

(assert (=> d!62075 (= res!126654 (= (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62075 (= (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 #b00000000000000000000000000000000) e!167887)))

(declare-fun b!259001 () Bool)

(declare-fun e!167888 () Bool)

(assert (=> b!259001 (= e!167887 e!167888)))

(declare-fun res!126655 () Bool)

(assert (=> b!259001 (=> (not res!126655) (not e!167888))))

(assert (=> b!259001 (= res!126655 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259002 () Bool)

(assert (=> b!259002 (= e!167888 (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62075 (not res!126654)) b!259001))

(assert (= (and b!259001 res!126655) b!259002))

(assert (=> d!62075 m!274449))

(declare-fun m!274549 () Bool)

(assert (=> b!259002 m!274549))

(assert (=> b!258782 d!62075))

(declare-fun d!62077 () Bool)

(declare-fun e!167891 () Bool)

(assert (=> d!62077 e!167891))

(declare-fun res!126658 () Bool)

(assert (=> d!62077 (=> (not res!126658) (not e!167891))))

(assert (=> d!62077 (= res!126658 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6298 (_keys!6948 thiss!1504)))))))

(declare-fun lt!130508 () Unit!8042)

(declare-fun choose!102 ((_ BitVec 64) array!12568 (_ BitVec 32) (_ BitVec 32)) Unit!8042)

(assert (=> d!62077 (= lt!130508 (choose!102 key!932 (_keys!6948 thiss!1504) index!297 (mask!11082 thiss!1504)))))

(assert (=> d!62077 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62077 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) index!297 (mask!11082 thiss!1504)) lt!130508)))

(declare-fun b!259005 () Bool)

(assert (=> b!259005 (= e!167891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (mask!11082 thiss!1504)))))

(assert (= (and d!62077 res!126658) b!259005))

(declare-fun m!274551 () Bool)

(assert (=> d!62077 m!274551))

(assert (=> d!62077 m!274301))

(assert (=> b!259005 m!274331))

(declare-fun m!274553 () Bool)

(assert (=> b!259005 m!274553))

(assert (=> b!258782 d!62077))

(declare-fun d!62079 () Bool)

(assert (=> d!62079 (= (validMask!0 (mask!11082 thiss!1504)) (and (or (= (mask!11082 thiss!1504) #b00000000000000000000000000000111) (= (mask!11082 thiss!1504) #b00000000000000000000000000001111) (= (mask!11082 thiss!1504) #b00000000000000000000000000011111) (= (mask!11082 thiss!1504) #b00000000000000000000000000111111) (= (mask!11082 thiss!1504) #b00000000000000000000000001111111) (= (mask!11082 thiss!1504) #b00000000000000000000000011111111) (= (mask!11082 thiss!1504) #b00000000000000000000000111111111) (= (mask!11082 thiss!1504) #b00000000000000000000001111111111) (= (mask!11082 thiss!1504) #b00000000000000000000011111111111) (= (mask!11082 thiss!1504) #b00000000000000000000111111111111) (= (mask!11082 thiss!1504) #b00000000000000000001111111111111) (= (mask!11082 thiss!1504) #b00000000000000000011111111111111) (= (mask!11082 thiss!1504) #b00000000000000000111111111111111) (= (mask!11082 thiss!1504) #b00000000000000001111111111111111) (= (mask!11082 thiss!1504) #b00000000000000011111111111111111) (= (mask!11082 thiss!1504) #b00000000000000111111111111111111) (= (mask!11082 thiss!1504) #b00000000000001111111111111111111) (= (mask!11082 thiss!1504) #b00000000000011111111111111111111) (= (mask!11082 thiss!1504) #b00000000000111111111111111111111) (= (mask!11082 thiss!1504) #b00000000001111111111111111111111) (= (mask!11082 thiss!1504) #b00000000011111111111111111111111) (= (mask!11082 thiss!1504) #b00000000111111111111111111111111) (= (mask!11082 thiss!1504) #b00000001111111111111111111111111) (= (mask!11082 thiss!1504) #b00000011111111111111111111111111) (= (mask!11082 thiss!1504) #b00000111111111111111111111111111) (= (mask!11082 thiss!1504) #b00001111111111111111111111111111) (= (mask!11082 thiss!1504) #b00011111111111111111111111111111) (= (mask!11082 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11082 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!258782 d!62079))

(declare-fun b!259006 () Bool)

(declare-fun e!167892 () (_ BitVec 32))

(declare-fun call!24659 () (_ BitVec 32))

(assert (=> b!259006 (= e!167892 (bvadd #b00000000000000000000000000000001 call!24659))))

(declare-fun d!62081 () Bool)

(declare-fun lt!130509 () (_ BitVec 32))

(assert (=> d!62081 (and (bvsge lt!130509 #b00000000000000000000000000000000) (bvsle lt!130509 (bvsub (size!6298 lt!130346) index!297)))))

(declare-fun e!167893 () (_ BitVec 32))

(assert (=> d!62081 (= lt!130509 e!167893)))

(declare-fun c!43912 () Bool)

(assert (=> d!62081 (= c!43912 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62081 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6298 lt!130346)))))

(assert (=> d!62081 (= (arrayCountValidKeys!0 lt!130346 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!130509)))

(declare-fun b!259007 () Bool)

(assert (=> b!259007 (= e!167892 call!24659)))

(declare-fun b!259008 () Bool)

(assert (=> b!259008 (= e!167893 e!167892)))

(declare-fun c!43911 () Bool)

(assert (=> b!259008 (= c!43911 (validKeyInArray!0 (select (arr!5950 lt!130346) index!297)))))

(declare-fun bm!24656 () Bool)

(assert (=> bm!24656 (= call!24659 (arrayCountValidKeys!0 lt!130346 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!259009 () Bool)

(assert (=> b!259009 (= e!167893 #b00000000000000000000000000000000)))

(assert (= (and d!62081 c!43912) b!259009))

(assert (= (and d!62081 (not c!43912)) b!259008))

(assert (= (and b!259008 c!43911) b!259006))

(assert (= (and b!259008 (not c!43911)) b!259007))

(assert (= (or b!259006 b!259007) bm!24656))

(assert (=> b!259008 m!274541))

(assert (=> b!259008 m!274541))

(assert (=> b!259008 m!274543))

(declare-fun m!274555 () Bool)

(assert (=> bm!24656 m!274555))

(assert (=> b!258782 d!62081))

(declare-fun d!62083 () Bool)

(assert (=> d!62083 (= (inRange!0 index!297 (mask!11082 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!258783 d!62083))

(declare-fun d!62085 () Bool)

(declare-fun e!167899 () Bool)

(assert (=> d!62085 e!167899))

(declare-fun res!126661 () Bool)

(assert (=> d!62085 (=> res!126661 e!167899)))

(declare-fun lt!130519 () Bool)

(assert (=> d!62085 (= res!126661 (not lt!130519))))

(declare-fun lt!130520 () Bool)

(assert (=> d!62085 (= lt!130519 lt!130520)))

(declare-fun lt!130521 () Unit!8042)

(declare-fun e!167898 () Unit!8042)

(assert (=> d!62085 (= lt!130521 e!167898)))

(declare-fun c!43915 () Bool)

(assert (=> d!62085 (= c!43915 lt!130520)))

(declare-fun containsKey!305 (List!3837 (_ BitVec 64)) Bool)

(assert (=> d!62085 (= lt!130520 (containsKey!305 (toList!1946 lt!130355) key!932))))

(assert (=> d!62085 (= (contains!1881 lt!130355 key!932) lt!130519)))

(declare-fun b!259016 () Bool)

(declare-fun lt!130518 () Unit!8042)

(assert (=> b!259016 (= e!167898 lt!130518)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!254 (List!3837 (_ BitVec 64)) Unit!8042)

(assert (=> b!259016 (= lt!130518 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130355) key!932))))

(declare-fun isDefined!255 (Option!319) Bool)

(assert (=> b!259016 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130355) key!932))))

(declare-fun b!259017 () Bool)

(declare-fun Unit!8053 () Unit!8042)

(assert (=> b!259017 (= e!167898 Unit!8053)))

(declare-fun b!259018 () Bool)

(assert (=> b!259018 (= e!167899 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130355) key!932)))))

(assert (= (and d!62085 c!43915) b!259016))

(assert (= (and d!62085 (not c!43915)) b!259017))

(assert (= (and d!62085 (not res!126661)) b!259018))

(declare-fun m!274557 () Bool)

(assert (=> d!62085 m!274557))

(declare-fun m!274559 () Bool)

(assert (=> b!259016 m!274559))

(declare-fun m!274561 () Bool)

(assert (=> b!259016 m!274561))

(assert (=> b!259016 m!274561))

(declare-fun m!274563 () Bool)

(assert (=> b!259016 m!274563))

(assert (=> b!259018 m!274561))

(assert (=> b!259018 m!274561))

(assert (=> b!259018 m!274563))

(assert (=> b!258783 d!62085))

(declare-fun bm!24657 () Bool)

(declare-fun call!24662 () ListLongMap!3861)

(assert (=> bm!24657 (= call!24662 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun b!259020 () Bool)

(declare-fun c!43921 () Bool)

(assert (=> b!259020 (= c!43921 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167908 () ListLongMap!3861)

(declare-fun e!167910 () ListLongMap!3861)

(assert (=> b!259020 (= e!167908 e!167910)))

(declare-fun b!259021 () Bool)

(declare-fun e!167907 () Bool)

(assert (=> b!259021 (= e!167907 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259022 () Bool)

(declare-fun e!167912 () Bool)

(declare-fun e!167901 () Bool)

(assert (=> b!259022 (= e!167912 e!167901)))

(declare-fun res!126665 () Bool)

(declare-fun call!24665 () Bool)

(assert (=> b!259022 (= res!126665 call!24665)))

(assert (=> b!259022 (=> (not res!126665) (not e!167901))))

(declare-fun b!259023 () Bool)

(declare-fun call!24663 () ListLongMap!3861)

(assert (=> b!259023 (= e!167910 call!24663)))

(declare-fun b!259024 () Bool)

(declare-fun call!24664 () ListLongMap!3861)

(assert (=> b!259024 (= e!167908 call!24664)))

(declare-fun bm!24658 () Bool)

(declare-fun call!24661 () ListLongMap!3861)

(assert (=> bm!24658 (= call!24663 call!24661)))

(declare-fun bm!24659 () Bool)

(declare-fun lt!130543 () ListLongMap!3861)

(assert (=> bm!24659 (= call!24665 (contains!1881 lt!130543 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259025 () Bool)

(declare-fun e!167903 () Bool)

(assert (=> b!259025 (= e!167903 (= (apply!256 lt!130543 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)) (get!3063 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!259025 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6297 (_values!4757 thiss!1504))))))

(assert (=> b!259025 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun c!43919 () Bool)

(declare-fun c!43918 () Bool)

(declare-fun call!24660 () ListLongMap!3861)

(declare-fun bm!24660 () Bool)

(assert (=> bm!24660 (= call!24660 (+!690 (ite c!43919 call!24662 (ite c!43918 call!24661 call!24663)) (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(declare-fun b!259026 () Bool)

(assert (=> b!259026 (= e!167910 call!24664)))

(declare-fun b!259027 () Bool)

(declare-fun res!126669 () Bool)

(declare-fun e!167906 () Bool)

(assert (=> b!259027 (=> (not res!126669) (not e!167906))))

(declare-fun e!167905 () Bool)

(assert (=> b!259027 (= res!126669 e!167905)))

(declare-fun res!126666 () Bool)

(assert (=> b!259027 (=> res!126666 e!167905)))

(assert (=> b!259027 (= res!126666 (not e!167907))))

(declare-fun res!126662 () Bool)

(assert (=> b!259027 (=> (not res!126662) (not e!167907))))

(assert (=> b!259027 (= res!126662 (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259028 () Bool)

(declare-fun e!167911 () Unit!8042)

(declare-fun lt!130533 () Unit!8042)

(assert (=> b!259028 (= e!167911 lt!130533)))

(declare-fun lt!130536 () ListLongMap!3861)

(assert (=> b!259028 (= lt!130536 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130526 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130526 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130522 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130522 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130541 () Unit!8042)

(assert (=> b!259028 (= lt!130541 (addStillContains!232 lt!130536 lt!130526 (zeroValue!4615 thiss!1504) lt!130522))))

(assert (=> b!259028 (contains!1881 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))) lt!130522)))

(declare-fun lt!130538 () Unit!8042)

(assert (=> b!259028 (= lt!130538 lt!130541)))

(declare-fun lt!130528 () ListLongMap!3861)

(assert (=> b!259028 (= lt!130528 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130532 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130532 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130535 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130535 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130534 () Unit!8042)

(assert (=> b!259028 (= lt!130534 (addApplyDifferent!232 lt!130528 lt!130532 (minValue!4615 thiss!1504) lt!130535))))

(assert (=> b!259028 (= (apply!256 (+!690 lt!130528 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))) lt!130535) (apply!256 lt!130528 lt!130535))))

(declare-fun lt!130539 () Unit!8042)

(assert (=> b!259028 (= lt!130539 lt!130534)))

(declare-fun lt!130527 () ListLongMap!3861)

(assert (=> b!259028 (= lt!130527 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130530 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130530 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130537 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130537 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130542 () Unit!8042)

(assert (=> b!259028 (= lt!130542 (addApplyDifferent!232 lt!130527 lt!130530 (zeroValue!4615 thiss!1504) lt!130537))))

(assert (=> b!259028 (= (apply!256 (+!690 lt!130527 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))) lt!130537) (apply!256 lt!130527 lt!130537))))

(declare-fun lt!130531 () Unit!8042)

(assert (=> b!259028 (= lt!130531 lt!130542)))

(declare-fun lt!130524 () ListLongMap!3861)

(assert (=> b!259028 (= lt!130524 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130540 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130540 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130529 () (_ BitVec 64))

(assert (=> b!259028 (= lt!130529 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!259028 (= lt!130533 (addApplyDifferent!232 lt!130524 lt!130540 (minValue!4615 thiss!1504) lt!130529))))

(assert (=> b!259028 (= (apply!256 (+!690 lt!130524 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))) lt!130529) (apply!256 lt!130524 lt!130529))))

(declare-fun d!62087 () Bool)

(assert (=> d!62087 e!167906))

(declare-fun res!126663 () Bool)

(assert (=> d!62087 (=> (not res!126663) (not e!167906))))

(assert (=> d!62087 (= res!126663 (or (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))))

(declare-fun lt!130523 () ListLongMap!3861)

(assert (=> d!62087 (= lt!130543 lt!130523)))

(declare-fun lt!130525 () Unit!8042)

(assert (=> d!62087 (= lt!130525 e!167911)))

(declare-fun c!43917 () Bool)

(declare-fun e!167902 () Bool)

(assert (=> d!62087 (= c!43917 e!167902)))

(declare-fun res!126670 () Bool)

(assert (=> d!62087 (=> (not res!126670) (not e!167902))))

(assert (=> d!62087 (= res!126670 (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun e!167904 () ListLongMap!3861)

(assert (=> d!62087 (= lt!130523 e!167904)))

(assert (=> d!62087 (= c!43919 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62087 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62087 (= (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) lt!130543)))

(declare-fun b!259019 () Bool)

(assert (=> b!259019 (= e!167904 (+!690 call!24660 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))

(declare-fun b!259029 () Bool)

(declare-fun Unit!8054 () Unit!8042)

(assert (=> b!259029 (= e!167911 Unit!8054)))

(declare-fun b!259030 () Bool)

(assert (=> b!259030 (= e!167901 (= (apply!256 lt!130543 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4615 thiss!1504)))))

(declare-fun b!259031 () Bool)

(declare-fun res!126664 () Bool)

(assert (=> b!259031 (=> (not res!126664) (not e!167906))))

(assert (=> b!259031 (= res!126664 e!167912)))

(declare-fun c!43916 () Bool)

(assert (=> b!259031 (= c!43916 (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24661 () Bool)

(assert (=> bm!24661 (= call!24664 call!24660)))

(declare-fun b!259032 () Bool)

(assert (=> b!259032 (= e!167912 (not call!24665))))

(declare-fun b!259033 () Bool)

(assert (=> b!259033 (= e!167904 e!167908)))

(assert (=> b!259033 (= c!43918 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259034 () Bool)

(declare-fun e!167900 () Bool)

(declare-fun call!24666 () Bool)

(assert (=> b!259034 (= e!167900 (not call!24666))))

(declare-fun bm!24662 () Bool)

(assert (=> bm!24662 (= call!24661 call!24662)))

(declare-fun bm!24663 () Bool)

(assert (=> bm!24663 (= call!24666 (contains!1881 lt!130543 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259035 () Bool)

(declare-fun e!167909 () Bool)

(assert (=> b!259035 (= e!167909 (= (apply!256 lt!130543 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4615 thiss!1504)))))

(declare-fun b!259036 () Bool)

(assert (=> b!259036 (= e!167905 e!167903)))

(declare-fun res!126667 () Bool)

(assert (=> b!259036 (=> (not res!126667) (not e!167903))))

(assert (=> b!259036 (= res!126667 (contains!1881 lt!130543 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!259036 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259037 () Bool)

(assert (=> b!259037 (= e!167906 e!167900)))

(declare-fun c!43920 () Bool)

(assert (=> b!259037 (= c!43920 (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259038 () Bool)

(assert (=> b!259038 (= e!167902 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259039 () Bool)

(assert (=> b!259039 (= e!167900 e!167909)))

(declare-fun res!126668 () Bool)

(assert (=> b!259039 (= res!126668 call!24666)))

(assert (=> b!259039 (=> (not res!126668) (not e!167909))))

(assert (= (and d!62087 c!43919) b!259019))

(assert (= (and d!62087 (not c!43919)) b!259033))

(assert (= (and b!259033 c!43918) b!259024))

(assert (= (and b!259033 (not c!43918)) b!259020))

(assert (= (and b!259020 c!43921) b!259026))

(assert (= (and b!259020 (not c!43921)) b!259023))

(assert (= (or b!259026 b!259023) bm!24658))

(assert (= (or b!259024 bm!24658) bm!24662))

(assert (= (or b!259024 b!259026) bm!24661))

(assert (= (or b!259019 bm!24662) bm!24657))

(assert (= (or b!259019 bm!24661) bm!24660))

(assert (= (and d!62087 res!126670) b!259038))

(assert (= (and d!62087 c!43917) b!259028))

(assert (= (and d!62087 (not c!43917)) b!259029))

(assert (= (and d!62087 res!126663) b!259027))

(assert (= (and b!259027 res!126662) b!259021))

(assert (= (and b!259027 (not res!126666)) b!259036))

(assert (= (and b!259036 res!126667) b!259025))

(assert (= (and b!259027 res!126669) b!259031))

(assert (= (and b!259031 c!43916) b!259022))

(assert (= (and b!259031 (not c!43916)) b!259032))

(assert (= (and b!259022 res!126665) b!259030))

(assert (= (or b!259022 b!259032) bm!24659))

(assert (= (and b!259031 res!126664) b!259037))

(assert (= (and b!259037 c!43920) b!259039))

(assert (= (and b!259037 (not c!43920)) b!259034))

(assert (= (and b!259039 res!126668) b!259035))

(assert (= (or b!259039 b!259034) bm!24663))

(declare-fun b_lambda!8255 () Bool)

(assert (=> (not b_lambda!8255) (not b!259025)))

(assert (=> b!259025 t!8914))

(declare-fun b_and!13859 () Bool)

(assert (= b_and!13857 (and (=> t!8914 result!5405) b_and!13859)))

(assert (=> b!259038 m!274449))

(assert (=> b!259038 m!274449))

(assert (=> b!259038 m!274451))

(assert (=> b!259025 m!274449))

(declare-fun m!274565 () Bool)

(assert (=> b!259025 m!274565))

(assert (=> b!259025 m!274483))

(assert (=> b!259025 m!274449))

(declare-fun m!274567 () Bool)

(assert (=> b!259025 m!274567))

(assert (=> b!259025 m!274483))

(declare-fun m!274569 () Bool)

(assert (=> b!259025 m!274569))

(assert (=> b!259025 m!274567))

(declare-fun m!274571 () Bool)

(assert (=> bm!24660 m!274571))

(declare-fun m!274573 () Bool)

(assert (=> bm!24659 m!274573))

(declare-fun m!274575 () Bool)

(assert (=> bm!24663 m!274575))

(declare-fun m!274577 () Bool)

(assert (=> b!259035 m!274577))

(assert (=> b!259021 m!274449))

(assert (=> b!259021 m!274449))

(assert (=> b!259021 m!274451))

(declare-fun m!274579 () Bool)

(assert (=> b!259019 m!274579))

(declare-fun m!274581 () Bool)

(assert (=> b!259028 m!274581))

(declare-fun m!274583 () Bool)

(assert (=> b!259028 m!274583))

(assert (=> b!259028 m!274583))

(declare-fun m!274585 () Bool)

(assert (=> b!259028 m!274585))

(declare-fun m!274587 () Bool)

(assert (=> b!259028 m!274587))

(declare-fun m!274589 () Bool)

(assert (=> b!259028 m!274589))

(declare-fun m!274591 () Bool)

(assert (=> b!259028 m!274591))

(assert (=> b!259028 m!274449))

(declare-fun m!274593 () Bool)

(assert (=> b!259028 m!274593))

(declare-fun m!274595 () Bool)

(assert (=> b!259028 m!274595))

(declare-fun m!274597 () Bool)

(assert (=> b!259028 m!274597))

(declare-fun m!274599 () Bool)

(assert (=> b!259028 m!274599))

(declare-fun m!274601 () Bool)

(assert (=> b!259028 m!274601))

(assert (=> b!259028 m!274589))

(declare-fun m!274603 () Bool)

(assert (=> b!259028 m!274603))

(declare-fun m!274605 () Bool)

(assert (=> b!259028 m!274605))

(declare-fun m!274607 () Bool)

(assert (=> b!259028 m!274607))

(declare-fun m!274609 () Bool)

(assert (=> b!259028 m!274609))

(assert (=> b!259028 m!274593))

(assert (=> b!259028 m!274581))

(declare-fun m!274611 () Bool)

(assert (=> b!259028 m!274611))

(assert (=> b!259036 m!274449))

(assert (=> b!259036 m!274449))

(declare-fun m!274613 () Bool)

(assert (=> b!259036 m!274613))

(assert (=> bm!24657 m!274609))

(assert (=> d!62087 m!274301))

(declare-fun m!274615 () Bool)

(assert (=> b!259030 m!274615))

(assert (=> b!258783 d!62087))

(declare-fun d!62089 () Bool)

(declare-fun res!126677 () Bool)

(declare-fun e!167915 () Bool)

(assert (=> d!62089 (=> (not res!126677) (not e!167915))))

(declare-fun simpleValid!278 (LongMapFixedSize!3822) Bool)

(assert (=> d!62089 (= res!126677 (simpleValid!278 thiss!1504))))

(assert (=> d!62089 (= (valid!1484 thiss!1504) e!167915)))

(declare-fun b!259046 () Bool)

(declare-fun res!126678 () Bool)

(assert (=> b!259046 (=> (not res!126678) (not e!167915))))

(assert (=> b!259046 (= res!126678 (= (arrayCountValidKeys!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (_size!1960 thiss!1504)))))

(declare-fun b!259047 () Bool)

(declare-fun res!126679 () Bool)

(assert (=> b!259047 (=> (not res!126679) (not e!167915))))

(assert (=> b!259047 (= res!126679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun b!259048 () Bool)

(assert (=> b!259048 (= e!167915 (arrayNoDuplicates!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 Nil!3835))))

(assert (= (and d!62089 res!126677) b!259046))

(assert (= (and b!259046 res!126678) b!259047))

(assert (= (and b!259047 res!126679) b!259048))

(declare-fun m!274617 () Bool)

(assert (=> d!62089 m!274617))

(assert (=> b!259046 m!274319))

(declare-fun m!274619 () Bool)

(assert (=> b!259047 m!274619))

(declare-fun m!274621 () Bool)

(assert (=> b!259048 m!274621))

(assert (=> start!24774 d!62089))

(declare-fun d!62091 () Bool)

(declare-fun e!167918 () Bool)

(assert (=> d!62091 e!167918))

(declare-fun res!126685 () Bool)

(assert (=> d!62091 (=> (not res!126685) (not e!167918))))

(declare-fun lt!130548 () SeekEntryResult!1187)

(assert (=> d!62091 (= res!126685 ((_ is Found!1187) lt!130548))))

(assert (=> d!62091 (= lt!130548 (seekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun lt!130549 () Unit!8042)

(declare-fun choose!1261 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 64) Int) Unit!8042)

(assert (=> d!62091 (= lt!130549 (choose!1261 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)))))

(assert (=> d!62091 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62091 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!439 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)) lt!130549)))

(declare-fun b!259053 () Bool)

(declare-fun res!126684 () Bool)

(assert (=> b!259053 (=> (not res!126684) (not e!167918))))

(assert (=> b!259053 (= res!126684 (inRange!0 (index!6919 lt!130548) (mask!11082 thiss!1504)))))

(declare-fun b!259054 () Bool)

(assert (=> b!259054 (= e!167918 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6919 lt!130548)) key!932))))

(assert (=> b!259054 (and (bvsge (index!6919 lt!130548) #b00000000000000000000000000000000) (bvslt (index!6919 lt!130548) (size!6298 (_keys!6948 thiss!1504))))))

(assert (= (and d!62091 res!126685) b!259053))

(assert (= (and b!259053 res!126684) b!259054))

(assert (=> d!62091 m!274357))

(declare-fun m!274623 () Bool)

(assert (=> d!62091 m!274623))

(assert (=> d!62091 m!274301))

(declare-fun m!274625 () Bool)

(assert (=> b!259053 m!274625))

(declare-fun m!274627 () Bool)

(assert (=> b!259054 m!274627))

(assert (=> b!258773 d!62091))

(declare-fun d!62093 () Bool)

(assert (=> d!62093 (= (inRange!0 (ite c!43863 (index!6918 lt!130351) (index!6921 lt!130351)) (mask!11082 thiss!1504)) (and (bvsge (ite c!43863 (index!6918 lt!130351) (index!6921 lt!130351)) #b00000000000000000000000000000000) (bvslt (ite c!43863 (index!6918 lt!130351) (index!6921 lt!130351)) (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24618 d!62093))

(assert (=> bm!24617 d!62075))

(declare-fun d!62095 () Bool)

(assert (=> d!62095 (contains!1881 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) key!932)))

(declare-fun lt!130552 () Unit!8042)

(declare-fun choose!1262 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 64) (_ BitVec 32) Int) Unit!8042)

(assert (=> d!62095 (= lt!130552 (choose!1262 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(assert (=> d!62095 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62095 (= (lemmaArrayContainsKeyThenInListMap!246 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) lt!130552)))

(declare-fun bs!9126 () Bool)

(assert (= bs!9126 d!62095))

(assert (=> bs!9126 m!274349))

(assert (=> bs!9126 m!274349))

(declare-fun m!274629 () Bool)

(assert (=> bs!9126 m!274629))

(declare-fun m!274631 () Bool)

(assert (=> bs!9126 m!274631))

(assert (=> bs!9126 m!274301))

(assert (=> b!258774 d!62095))

(declare-fun b!259071 () Bool)

(declare-fun e!167930 () Bool)

(declare-fun e!167929 () Bool)

(assert (=> b!259071 (= e!167930 e!167929)))

(declare-fun res!126697 () Bool)

(declare-fun call!24672 () Bool)

(assert (=> b!259071 (= res!126697 call!24672)))

(assert (=> b!259071 (=> (not res!126697) (not e!167929))))

(declare-fun b!259072 () Bool)

(declare-fun call!24671 () Bool)

(assert (=> b!259072 (= e!167929 (not call!24671))))

(declare-fun d!62097 () Bool)

(assert (=> d!62097 e!167930))

(declare-fun c!43926 () Bool)

(declare-fun lt!130557 () SeekEntryResult!1187)

(assert (=> d!62097 (= c!43926 ((_ is MissingZero!1187) lt!130557))))

(assert (=> d!62097 (= lt!130557 (seekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun lt!130558 () Unit!8042)

(declare-fun choose!1263 (array!12568 array!12566 (_ BitVec 32) (_ BitVec 32) V!8459 V!8459 (_ BitVec 64) Int) Unit!8042)

(assert (=> d!62097 (= lt!130558 (choose!1263 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)))))

(assert (=> d!62097 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62097 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!438 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)) lt!130558)))

(declare-fun b!259073 () Bool)

(assert (=> b!259073 (and (bvsge (index!6918 lt!130557) #b00000000000000000000000000000000) (bvslt (index!6918 lt!130557) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun res!126695 () Bool)

(assert (=> b!259073 (= res!126695 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6918 lt!130557)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259073 (=> (not res!126695) (not e!167929))))

(declare-fun b!259074 () Bool)

(declare-fun res!126696 () Bool)

(declare-fun e!167928 () Bool)

(assert (=> b!259074 (=> (not res!126696) (not e!167928))))

(assert (=> b!259074 (= res!126696 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6921 lt!130557)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259074 (and (bvsge (index!6921 lt!130557) #b00000000000000000000000000000000) (bvslt (index!6921 lt!130557) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259075 () Bool)

(declare-fun e!167927 () Bool)

(assert (=> b!259075 (= e!167930 e!167927)))

(declare-fun c!43927 () Bool)

(assert (=> b!259075 (= c!43927 ((_ is MissingVacant!1187) lt!130557))))

(declare-fun bm!24668 () Bool)

(assert (=> bm!24668 (= call!24672 (inRange!0 (ite c!43926 (index!6918 lt!130557) (index!6921 lt!130557)) (mask!11082 thiss!1504)))))

(declare-fun b!259076 () Bool)

(assert (=> b!259076 (= e!167927 ((_ is Undefined!1187) lt!130557))))

(declare-fun b!259077 () Bool)

(declare-fun res!126694 () Bool)

(assert (=> b!259077 (=> (not res!126694) (not e!167928))))

(assert (=> b!259077 (= res!126694 call!24672)))

(assert (=> b!259077 (= e!167927 e!167928)))

(declare-fun b!259078 () Bool)

(assert (=> b!259078 (= e!167928 (not call!24671))))

(declare-fun bm!24669 () Bool)

(assert (=> bm!24669 (= call!24671 (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and d!62097 c!43926) b!259071))

(assert (= (and d!62097 (not c!43926)) b!259075))

(assert (= (and b!259071 res!126697) b!259073))

(assert (= (and b!259073 res!126695) b!259072))

(assert (= (and b!259075 c!43927) b!259077))

(assert (= (and b!259075 (not c!43927)) b!259076))

(assert (= (and b!259077 res!126694) b!259074))

(assert (= (and b!259074 res!126696) b!259078))

(assert (= (or b!259071 b!259077) bm!24668))

(assert (= (or b!259072 b!259078) bm!24669))

(assert (=> bm!24669 m!274303))

(declare-fun m!274633 () Bool)

(assert (=> bm!24668 m!274633))

(assert (=> d!62097 m!274357))

(declare-fun m!274635 () Bool)

(assert (=> d!62097 m!274635))

(assert (=> d!62097 m!274301))

(declare-fun m!274637 () Bool)

(assert (=> b!259073 m!274637))

(declare-fun m!274639 () Bool)

(assert (=> b!259074 m!274639))

(assert (=> b!258775 d!62097))

(declare-fun b!259091 () Bool)

(declare-fun e!167939 () SeekEntryResult!1187)

(declare-fun lt!130566 () SeekEntryResult!1187)

(assert (=> b!259091 (= e!167939 (Found!1187 (index!6920 lt!130566)))))

(declare-fun b!259092 () Bool)

(declare-fun e!167938 () SeekEntryResult!1187)

(assert (=> b!259092 (= e!167938 Undefined!1187)))

(declare-fun d!62099 () Bool)

(declare-fun lt!130567 () SeekEntryResult!1187)

(assert (=> d!62099 (and (or ((_ is Undefined!1187) lt!130567) (not ((_ is Found!1187) lt!130567)) (and (bvsge (index!6919 lt!130567) #b00000000000000000000000000000000) (bvslt (index!6919 lt!130567) (size!6298 (_keys!6948 thiss!1504))))) (or ((_ is Undefined!1187) lt!130567) ((_ is Found!1187) lt!130567) (not ((_ is MissingZero!1187) lt!130567)) (and (bvsge (index!6918 lt!130567) #b00000000000000000000000000000000) (bvslt (index!6918 lt!130567) (size!6298 (_keys!6948 thiss!1504))))) (or ((_ is Undefined!1187) lt!130567) ((_ is Found!1187) lt!130567) ((_ is MissingZero!1187) lt!130567) (not ((_ is MissingVacant!1187) lt!130567)) (and (bvsge (index!6921 lt!130567) #b00000000000000000000000000000000) (bvslt (index!6921 lt!130567) (size!6298 (_keys!6948 thiss!1504))))) (or ((_ is Undefined!1187) lt!130567) (ite ((_ is Found!1187) lt!130567) (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6919 lt!130567)) key!932) (ite ((_ is MissingZero!1187) lt!130567) (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6918 lt!130567)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1187) lt!130567) (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6921 lt!130567)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62099 (= lt!130567 e!167938)))

(declare-fun c!43934 () Bool)

(assert (=> d!62099 (= c!43934 (and ((_ is Intermediate!1187) lt!130566) (undefined!1999 lt!130566)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12568 (_ BitVec 32)) SeekEntryResult!1187)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62099 (= lt!130566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11082 thiss!1504)) key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(assert (=> d!62099 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62099 (= (seekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)) lt!130567)))

(declare-fun b!259093 () Bool)

(assert (=> b!259093 (= e!167938 e!167939)))

(declare-fun lt!130565 () (_ BitVec 64))

(assert (=> b!259093 (= lt!130565 (select (arr!5950 (_keys!6948 thiss!1504)) (index!6920 lt!130566)))))

(declare-fun c!43936 () Bool)

(assert (=> b!259093 (= c!43936 (= lt!130565 key!932))))

(declare-fun b!259094 () Bool)

(declare-fun e!167937 () SeekEntryResult!1187)

(assert (=> b!259094 (= e!167937 (MissingZero!1187 (index!6920 lt!130566)))))

(declare-fun b!259095 () Bool)

(declare-fun c!43935 () Bool)

(assert (=> b!259095 (= c!43935 (= lt!130565 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259095 (= e!167939 e!167937)))

(declare-fun b!259096 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12568 (_ BitVec 32)) SeekEntryResult!1187)

(assert (=> b!259096 (= e!167937 (seekKeyOrZeroReturnVacant!0 (x!25081 lt!130566) (index!6920 lt!130566) (index!6920 lt!130566) key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(assert (= (and d!62099 c!43934) b!259092))

(assert (= (and d!62099 (not c!43934)) b!259093))

(assert (= (and b!259093 c!43936) b!259091))

(assert (= (and b!259093 (not c!43936)) b!259095))

(assert (= (and b!259095 c!43935) b!259094))

(assert (= (and b!259095 (not c!43935)) b!259096))

(declare-fun m!274641 () Bool)

(assert (=> d!62099 m!274641))

(declare-fun m!274643 () Bool)

(assert (=> d!62099 m!274643))

(declare-fun m!274645 () Bool)

(assert (=> d!62099 m!274645))

(assert (=> d!62099 m!274641))

(assert (=> d!62099 m!274301))

(declare-fun m!274647 () Bool)

(assert (=> d!62099 m!274647))

(declare-fun m!274649 () Bool)

(assert (=> d!62099 m!274649))

(declare-fun m!274651 () Bool)

(assert (=> b!259093 m!274651))

(declare-fun m!274653 () Bool)

(assert (=> b!259096 m!274653))

(assert (=> b!258787 d!62099))

(declare-fun d!62101 () Bool)

(assert (=> d!62101 (= (array_inv!3921 (_keys!6948 thiss!1504)) (bvsge (size!6298 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!258791 d!62101))

(declare-fun d!62103 () Bool)

(assert (=> d!62103 (= (array_inv!3922 (_values!4757 thiss!1504)) (bvsge (size!6297 (_values!4757 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!258791 d!62103))

(declare-fun mapIsEmpty!11263 () Bool)

(declare-fun mapRes!11263 () Bool)

(assert (=> mapIsEmpty!11263 mapRes!11263))

(declare-fun b!259103 () Bool)

(declare-fun e!167945 () Bool)

(assert (=> b!259103 (= e!167945 tp_is_empty!6609)))

(declare-fun b!259104 () Bool)

(declare-fun e!167944 () Bool)

(assert (=> b!259104 (= e!167944 tp_is_empty!6609)))

(declare-fun condMapEmpty!11263 () Bool)

(declare-fun mapDefault!11263 () ValueCell!2961)

(assert (=> mapNonEmpty!11257 (= condMapEmpty!11263 (= mapRest!11257 ((as const (Array (_ BitVec 32) ValueCell!2961)) mapDefault!11263)))))

(assert (=> mapNonEmpty!11257 (= tp!23557 (and e!167944 mapRes!11263))))

(declare-fun mapNonEmpty!11263 () Bool)

(declare-fun tp!23566 () Bool)

(assert (=> mapNonEmpty!11263 (= mapRes!11263 (and tp!23566 e!167945))))

(declare-fun mapRest!11263 () (Array (_ BitVec 32) ValueCell!2961))

(declare-fun mapKey!11263 () (_ BitVec 32))

(declare-fun mapValue!11263 () ValueCell!2961)

(assert (=> mapNonEmpty!11263 (= mapRest!11257 (store mapRest!11263 mapKey!11263 mapValue!11263))))

(assert (= (and mapNonEmpty!11257 condMapEmpty!11263) mapIsEmpty!11263))

(assert (= (and mapNonEmpty!11257 (not condMapEmpty!11263)) mapNonEmpty!11263))

(assert (= (and mapNonEmpty!11263 ((_ is ValueCellFull!2961) mapValue!11263)) b!259103))

(assert (= (and mapNonEmpty!11257 ((_ is ValueCellFull!2961) mapDefault!11263)) b!259104))

(declare-fun m!274655 () Bool)

(assert (=> mapNonEmpty!11263 m!274655))

(declare-fun b_lambda!8257 () Bool)

(assert (= b_lambda!8255 (or (and b!258791 b_free!6747) b_lambda!8257)))

(declare-fun b_lambda!8259 () Bool)

(assert (= b_lambda!8253 (or (and b!258791 b_free!6747) b_lambda!8259)))

(check-sat (not bm!24669) (not d!62087) (not b!258923) (not b!258924) (not bm!24663) (not bm!24656) (not b!258996) (not b!259036) tp_is_empty!6609 (not b!259000) (not b!259018) (not b!258874) (not b!258985) (not b!258873) (not d!62097) (not b!258971) (not b!258889) (not b!259028) (not mapNonEmpty!11263) (not b!259019) (not b!258912) (not b!259021) (not d!62071) (not bm!24655) (not bm!24628) (not d!62091) (not bm!24627) (not b!258910) (not d!62077) (not b!258986) (not b!258898) (not d!62073) (not bm!24657) (not b!259048) (not b!259035) (not bm!24668) (not b!258885) (not d!62053) (not d!62099) (not b!258895) (not d!62085) (not bm!24652) (not b!258914) (not b_next!6747) (not b!259046) (not bm!24660) (not b!258988) (not bm!24651) (not d!62057) (not b!259096) (not b!258868) (not b!259030) (not b!259025) (not b!259038) (not b!258975) (not b!258980) (not d!62089) (not d!62067) (not b!259008) (not b!258866) (not b!258969) (not b!259005) (not d!62069) b_and!13859 (not bm!24659) (not d!62051) (not bm!24649) (not bm!24634) (not b!259047) (not b!258865) (not b!258978) (not b!259002) (not b_lambda!8257) (not bm!24631) (not b_lambda!8259) (not b!259016) (not b!259053) (not d!62095))
(check-sat b_and!13859 (not b_next!6747))
(get-model)

(declare-fun d!62105 () Bool)

(declare-fun e!167947 () Bool)

(assert (=> d!62105 e!167947))

(declare-fun res!126698 () Bool)

(assert (=> d!62105 (=> res!126698 e!167947)))

(declare-fun lt!130569 () Bool)

(assert (=> d!62105 (= res!126698 (not lt!130569))))

(declare-fun lt!130570 () Bool)

(assert (=> d!62105 (= lt!130569 lt!130570)))

(declare-fun lt!130571 () Unit!8042)

(declare-fun e!167946 () Unit!8042)

(assert (=> d!62105 (= lt!130571 e!167946)))

(declare-fun c!43937 () Bool)

(assert (=> d!62105 (= c!43937 lt!130570)))

(assert (=> d!62105 (= lt!130570 (containsKey!305 (toList!1946 lt!130496) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62105 (= (contains!1881 lt!130496 #b0000000000000000000000000000000000000000000000000000000000000000) lt!130569)))

(declare-fun b!259105 () Bool)

(declare-fun lt!130568 () Unit!8042)

(assert (=> b!259105 (= e!167946 lt!130568)))

(assert (=> b!259105 (= lt!130568 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130496) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259105 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130496) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259106 () Bool)

(declare-fun Unit!8055 () Unit!8042)

(assert (=> b!259106 (= e!167946 Unit!8055)))

(declare-fun b!259107 () Bool)

(assert (=> b!259107 (= e!167947 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130496) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62105 c!43937) b!259105))

(assert (= (and d!62105 (not c!43937)) b!259106))

(assert (= (and d!62105 (not res!126698)) b!259107))

(declare-fun m!274657 () Bool)

(assert (=> d!62105 m!274657))

(declare-fun m!274659 () Bool)

(assert (=> b!259105 m!274659))

(declare-fun m!274661 () Bool)

(assert (=> b!259105 m!274661))

(assert (=> b!259105 m!274661))

(declare-fun m!274663 () Bool)

(assert (=> b!259105 m!274663))

(assert (=> b!259107 m!274661))

(assert (=> b!259107 m!274661))

(assert (=> b!259107 m!274663))

(assert (=> bm!24651 d!62105))

(declare-fun d!62107 () Bool)

(declare-fun e!167948 () Bool)

(assert (=> d!62107 e!167948))

(declare-fun res!126700 () Bool)

(assert (=> d!62107 (=> (not res!126700) (not e!167948))))

(declare-fun lt!130573 () ListLongMap!3861)

(assert (=> d!62107 (= res!126700 (contains!1881 lt!130573 (_1!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(declare-fun lt!130572 () List!3837)

(assert (=> d!62107 (= lt!130573 (ListLongMap!3862 lt!130572))))

(declare-fun lt!130574 () Unit!8042)

(declare-fun lt!130575 () Unit!8042)

(assert (=> d!62107 (= lt!130574 lt!130575)))

(assert (=> d!62107 (= (getValueByKey!313 lt!130572 (_1!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))) (Some!318 (_2!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(assert (=> d!62107 (= lt!130575 (lemmaContainsTupThenGetReturnValue!171 lt!130572 (_1!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (_2!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(assert (=> d!62107 (= lt!130572 (insertStrictlySorted!173 (toList!1946 (ite c!43908 call!24654 (ite c!43907 call!24653 call!24655))) (_1!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (_2!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(assert (=> d!62107 (= (+!690 (ite c!43908 call!24654 (ite c!43907 call!24653 call!24655)) (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) lt!130573)))

(declare-fun b!259108 () Bool)

(declare-fun res!126699 () Bool)

(assert (=> b!259108 (=> (not res!126699) (not e!167948))))

(assert (=> b!259108 (= res!126699 (= (getValueByKey!313 (toList!1946 lt!130573) (_1!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))) (Some!318 (_2!2477 (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))))

(declare-fun b!259109 () Bool)

(assert (=> b!259109 (= e!167948 (contains!1883 (toList!1946 lt!130573) (ite (or c!43908 c!43907) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (= (and d!62107 res!126700) b!259108))

(assert (= (and b!259108 res!126699) b!259109))

(declare-fun m!274665 () Bool)

(assert (=> d!62107 m!274665))

(declare-fun m!274667 () Bool)

(assert (=> d!62107 m!274667))

(declare-fun m!274669 () Bool)

(assert (=> d!62107 m!274669))

(declare-fun m!274671 () Bool)

(assert (=> d!62107 m!274671))

(declare-fun m!274673 () Bool)

(assert (=> b!259108 m!274673))

(declare-fun m!274675 () Bool)

(assert (=> b!259109 m!274675))

(assert (=> bm!24652 d!62107))

(declare-fun bm!24670 () Bool)

(declare-fun call!24673 () Bool)

(assert (=> bm!24670 (= call!24673 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (mask!11082 thiss!1504)))))

(declare-fun d!62109 () Bool)

(declare-fun res!126701 () Bool)

(declare-fun e!167950 () Bool)

(assert (=> d!62109 (=> res!126701 e!167950)))

(assert (=> d!62109 (= res!126701 (bvsge #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(assert (=> d!62109 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (mask!11082 thiss!1504)) e!167950)))

(declare-fun b!259110 () Bool)

(declare-fun e!167951 () Bool)

(declare-fun e!167949 () Bool)

(assert (=> b!259110 (= e!167951 e!167949)))

(declare-fun lt!130576 () (_ BitVec 64))

(assert (=> b!259110 (= lt!130576 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130577 () Unit!8042)

(assert (=> b!259110 (= lt!130577 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) lt!130576 #b00000000000000000000000000000000))))

(assert (=> b!259110 (arrayContainsKey!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) lt!130576 #b00000000000000000000000000000000)))

(declare-fun lt!130578 () Unit!8042)

(assert (=> b!259110 (= lt!130578 lt!130577)))

(declare-fun res!126702 () Bool)

(assert (=> b!259110 (= res!126702 (= (seekEntryOrOpen!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000) (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (mask!11082 thiss!1504)) (Found!1187 #b00000000000000000000000000000000)))))

(assert (=> b!259110 (=> (not res!126702) (not e!167949))))

(declare-fun b!259111 () Bool)

(assert (=> b!259111 (= e!167950 e!167951)))

(declare-fun c!43938 () Bool)

(assert (=> b!259111 (= c!43938 (validKeyInArray!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!259112 () Bool)

(assert (=> b!259112 (= e!167949 call!24673)))

(declare-fun b!259113 () Bool)

(assert (=> b!259113 (= e!167951 call!24673)))

(assert (= (and d!62109 (not res!126701)) b!259111))

(assert (= (and b!259111 c!43938) b!259110))

(assert (= (and b!259111 (not c!43938)) b!259113))

(assert (= (and b!259110 res!126702) b!259112))

(assert (= (or b!259112 b!259113) bm!24670))

(declare-fun m!274677 () Bool)

(assert (=> bm!24670 m!274677))

(declare-fun m!274679 () Bool)

(assert (=> b!259110 m!274679))

(declare-fun m!274681 () Bool)

(assert (=> b!259110 m!274681))

(declare-fun m!274683 () Bool)

(assert (=> b!259110 m!274683))

(assert (=> b!259110 m!274679))

(declare-fun m!274685 () Bool)

(assert (=> b!259110 m!274685))

(assert (=> b!259111 m!274679))

(assert (=> b!259111 m!274679))

(declare-fun m!274687 () Bool)

(assert (=> b!259111 m!274687))

(assert (=> b!259005 d!62109))

(declare-fun d!62111 () Bool)

(assert (=> d!62111 (= (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258885 d!62111))

(declare-fun d!62113 () Bool)

(declare-fun isEmpty!539 (Option!319) Bool)

(assert (=> d!62113 (= (isDefined!255 (getValueByKey!313 (toList!1946 lt!130355) key!932)) (not (isEmpty!539 (getValueByKey!313 (toList!1946 lt!130355) key!932))))))

(declare-fun bs!9127 () Bool)

(assert (= bs!9127 d!62113))

(assert (=> bs!9127 m!274561))

(declare-fun m!274689 () Bool)

(assert (=> bs!9127 m!274689))

(assert (=> b!259018 d!62113))

(declare-fun d!62115 () Bool)

(declare-fun c!43943 () Bool)

(assert (=> d!62115 (= c!43943 (and ((_ is Cons!3833) (toList!1946 lt!130355)) (= (_1!2477 (h!4496 (toList!1946 lt!130355))) key!932)))))

(declare-fun e!167956 () Option!319)

(assert (=> d!62115 (= (getValueByKey!313 (toList!1946 lt!130355) key!932) e!167956)))

(declare-fun b!259124 () Bool)

(declare-fun e!167957 () Option!319)

(assert (=> b!259124 (= e!167957 (getValueByKey!313 (t!8910 (toList!1946 lt!130355)) key!932))))

(declare-fun b!259122 () Bool)

(assert (=> b!259122 (= e!167956 (Some!318 (_2!2477 (h!4496 (toList!1946 lt!130355)))))))

(declare-fun b!259125 () Bool)

(assert (=> b!259125 (= e!167957 None!317)))

(declare-fun b!259123 () Bool)

(assert (=> b!259123 (= e!167956 e!167957)))

(declare-fun c!43944 () Bool)

(assert (=> b!259123 (= c!43944 (and ((_ is Cons!3833) (toList!1946 lt!130355)) (not (= (_1!2477 (h!4496 (toList!1946 lt!130355))) key!932))))))

(assert (= (and d!62115 c!43943) b!259122))

(assert (= (and d!62115 (not c!43943)) b!259123))

(assert (= (and b!259123 c!43944) b!259124))

(assert (= (and b!259123 (not c!43944)) b!259125))

(declare-fun m!274691 () Bool)

(assert (=> b!259124 m!274691))

(assert (=> b!259018 d!62115))

(declare-fun d!62117 () Bool)

(assert (=> d!62117 (= (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) (and (not (= (select (arr!5950 lt!130346) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5950 lt!130346) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258924 d!62117))

(declare-fun d!62119 () Bool)

(assert (=> d!62119 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130355) key!932))))

(declare-fun lt!130581 () Unit!8042)

(declare-fun choose!1264 (List!3837 (_ BitVec 64)) Unit!8042)

(assert (=> d!62119 (= lt!130581 (choose!1264 (toList!1946 lt!130355) key!932))))

(declare-fun e!167960 () Bool)

(assert (=> d!62119 e!167960))

(declare-fun res!126705 () Bool)

(assert (=> d!62119 (=> (not res!126705) (not e!167960))))

(declare-fun isStrictlySorted!369 (List!3837) Bool)

(assert (=> d!62119 (= res!126705 (isStrictlySorted!369 (toList!1946 lt!130355)))))

(assert (=> d!62119 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130355) key!932) lt!130581)))

(declare-fun b!259128 () Bool)

(assert (=> b!259128 (= e!167960 (containsKey!305 (toList!1946 lt!130355) key!932))))

(assert (= (and d!62119 res!126705) b!259128))

(assert (=> d!62119 m!274561))

(assert (=> d!62119 m!274561))

(assert (=> d!62119 m!274563))

(declare-fun m!274693 () Bool)

(assert (=> d!62119 m!274693))

(declare-fun m!274695 () Bool)

(assert (=> d!62119 m!274695))

(assert (=> b!259128 m!274557))

(assert (=> b!259016 d!62119))

(assert (=> b!259016 d!62113))

(assert (=> b!259016 d!62115))

(declare-fun d!62121 () Bool)

(declare-fun lt!130584 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!169 (List!3838) (InoxSet (_ BitVec 64)))

(assert (=> d!62121 (= lt!130584 (select (content!169 Nil!3835) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun e!167966 () Bool)

(assert (=> d!62121 (= lt!130584 e!167966)))

(declare-fun res!126710 () Bool)

(assert (=> d!62121 (=> (not res!126710) (not e!167966))))

(assert (=> d!62121 (= res!126710 ((_ is Cons!3834) Nil!3835))))

(assert (=> d!62121 (= (contains!1884 Nil!3835 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) lt!130584)))

(declare-fun b!259133 () Bool)

(declare-fun e!167965 () Bool)

(assert (=> b!259133 (= e!167966 e!167965)))

(declare-fun res!126711 () Bool)

(assert (=> b!259133 (=> res!126711 e!167965)))

(assert (=> b!259133 (= res!126711 (= (h!4497 Nil!3835) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!259134 () Bool)

(assert (=> b!259134 (= e!167965 (contains!1884 (t!8911 Nil!3835) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(assert (= (and d!62121 res!126710) b!259133))

(assert (= (and b!259133 (not res!126711)) b!259134))

(declare-fun m!274697 () Bool)

(assert (=> d!62121 m!274697))

(assert (=> d!62121 m!274461))

(declare-fun m!274699 () Bool)

(assert (=> d!62121 m!274699))

(assert (=> b!259134 m!274461))

(declare-fun m!274701 () Bool)

(assert (=> b!259134 m!274701))

(assert (=> b!258912 d!62121))

(declare-fun d!62123 () Bool)

(declare-fun res!126714 () Bool)

(declare-fun e!167970 () Bool)

(assert (=> d!62123 (=> res!126714 e!167970)))

(assert (=> d!62123 (= res!126714 (bvsge #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(assert (=> d!62123 (= (arrayNoDuplicates!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000000 Nil!3835) e!167970)))

(declare-fun b!259135 () Bool)

(declare-fun e!167967 () Bool)

(assert (=> b!259135 (= e!167970 e!167967)))

(declare-fun res!126712 () Bool)

(assert (=> b!259135 (=> (not res!126712) (not e!167967))))

(declare-fun e!167968 () Bool)

(assert (=> b!259135 (= res!126712 (not e!167968))))

(declare-fun res!126713 () Bool)

(assert (=> b!259135 (=> (not res!126713) (not e!167968))))

(assert (=> b!259135 (= res!126713 (validKeyInArray!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!259136 () Bool)

(declare-fun e!167969 () Bool)

(declare-fun call!24674 () Bool)

(assert (=> b!259136 (= e!167969 call!24674)))

(declare-fun b!259137 () Bool)

(assert (=> b!259137 (= e!167968 (contains!1884 Nil!3835 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!259138 () Bool)

(assert (=> b!259138 (= e!167969 call!24674)))

(declare-fun b!259139 () Bool)

(assert (=> b!259139 (= e!167967 e!167969)))

(declare-fun c!43945 () Bool)

(assert (=> b!259139 (= c!43945 (validKeyInArray!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun bm!24671 () Bool)

(assert (=> bm!24671 (= call!24674 (arrayNoDuplicates!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43945 (Cons!3834 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000) Nil!3835) Nil!3835)))))

(assert (= (and d!62123 (not res!126714)) b!259135))

(assert (= (and b!259135 res!126713) b!259137))

(assert (= (and b!259135 res!126712) b!259139))

(assert (= (and b!259139 c!43945) b!259136))

(assert (= (and b!259139 (not c!43945)) b!259138))

(assert (= (or b!259136 b!259138) bm!24671))

(assert (=> b!259135 m!274679))

(assert (=> b!259135 m!274679))

(assert (=> b!259135 m!274687))

(assert (=> b!259137 m!274679))

(assert (=> b!259137 m!274679))

(declare-fun m!274703 () Bool)

(assert (=> b!259137 m!274703))

(assert (=> b!259139 m!274679))

(assert (=> b!259139 m!274679))

(assert (=> b!259139 m!274687))

(assert (=> bm!24671 m!274679))

(declare-fun m!274705 () Bool)

(assert (=> bm!24671 m!274705))

(assert (=> b!259000 d!62123))

(assert (=> b!258914 d!62117))

(declare-fun d!62125 () Bool)

(assert (=> d!62125 (= (+!690 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) (tuple2!4935 key!932 v!346)) (getCurrentListMap!1469 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(assert (=> d!62125 true))

(declare-fun _$3!58 () Unit!8042)

(assert (=> d!62125 (= (choose!1260 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) index!297 key!932 v!346 (defaultEntry!4774 thiss!1504)) _$3!58)))

(declare-fun bs!9128 () Bool)

(assert (= bs!9128 d!62125))

(assert (=> bs!9128 m!274459))

(assert (=> bs!9128 m!274349))

(assert (=> bs!9128 m!274457))

(assert (=> bs!9128 m!274331))

(assert (=> bs!9128 m!274349))

(assert (=> bs!9128 m!274311))

(assert (=> d!62057 d!62125))

(assert (=> d!62057 d!62079))

(declare-fun bm!24672 () Bool)

(declare-fun call!24675 () Bool)

(assert (=> bm!24672 (= call!24675 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun d!62127 () Bool)

(declare-fun res!126715 () Bool)

(declare-fun e!167972 () Bool)

(assert (=> d!62127 (=> res!126715 e!167972)))

(assert (=> d!62127 (= res!126715 (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62127 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)) e!167972)))

(declare-fun b!259140 () Bool)

(declare-fun e!167973 () Bool)

(declare-fun e!167971 () Bool)

(assert (=> b!259140 (= e!167973 e!167971)))

(declare-fun lt!130585 () (_ BitVec 64))

(assert (=> b!259140 (= lt!130585 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130586 () Unit!8042)

(assert (=> b!259140 (= lt!130586 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6948 thiss!1504) lt!130585 #b00000000000000000000000000000000))))

(assert (=> b!259140 (arrayContainsKey!0 (_keys!6948 thiss!1504) lt!130585 #b00000000000000000000000000000000)))

(declare-fun lt!130587 () Unit!8042)

(assert (=> b!259140 (= lt!130587 lt!130586)))

(declare-fun res!126716 () Bool)

(assert (=> b!259140 (= res!126716 (= (seekEntryOrOpen!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000) (_keys!6948 thiss!1504) (mask!11082 thiss!1504)) (Found!1187 #b00000000000000000000000000000000)))))

(assert (=> b!259140 (=> (not res!126716) (not e!167971))))

(declare-fun b!259141 () Bool)

(assert (=> b!259141 (= e!167972 e!167973)))

(declare-fun c!43946 () Bool)

(assert (=> b!259141 (= c!43946 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259142 () Bool)

(assert (=> b!259142 (= e!167971 call!24675)))

(declare-fun b!259143 () Bool)

(assert (=> b!259143 (= e!167973 call!24675)))

(assert (= (and d!62127 (not res!126715)) b!259141))

(assert (= (and b!259141 c!43946) b!259140))

(assert (= (and b!259141 (not c!43946)) b!259143))

(assert (= (and b!259140 res!126716) b!259142))

(assert (= (or b!259142 b!259143) bm!24672))

(declare-fun m!274707 () Bool)

(assert (=> bm!24672 m!274707))

(assert (=> b!259140 m!274449))

(declare-fun m!274709 () Bool)

(assert (=> b!259140 m!274709))

(declare-fun m!274711 () Bool)

(assert (=> b!259140 m!274711))

(assert (=> b!259140 m!274449))

(declare-fun m!274713 () Bool)

(assert (=> b!259140 m!274713))

(assert (=> b!259141 m!274449))

(assert (=> b!259141 m!274449))

(assert (=> b!259141 m!274451))

(assert (=> b!259047 d!62127))

(declare-fun d!62129 () Bool)

(assert (=> d!62129 (= (inRange!0 (ite c!43926 (index!6918 lt!130557) (index!6921 lt!130557)) (mask!11082 thiss!1504)) (and (bvsge (ite c!43926 (index!6918 lt!130557) (index!6921 lt!130557)) #b00000000000000000000000000000000) (bvslt (ite c!43926 (index!6918 lt!130557) (index!6921 lt!130557)) (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24668 d!62129))

(declare-fun b!259168 () Bool)

(declare-fun e!167990 () Bool)

(declare-fun lt!130603 () ListLongMap!3861)

(declare-fun isEmpty!540 (ListLongMap!3861) Bool)

(assert (=> b!259168 (= e!167990 (isEmpty!540 lt!130603))))

(declare-fun bm!24675 () Bool)

(declare-fun call!24678 () ListLongMap!3861)

(assert (=> bm!24675 (= call!24678 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4774 thiss!1504)))))

(declare-fun b!259169 () Bool)

(declare-fun e!167988 () Bool)

(declare-fun e!167994 () Bool)

(assert (=> b!259169 (= e!167988 e!167994)))

(assert (=> b!259169 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun res!126725 () Bool)

(assert (=> b!259169 (= res!126725 (contains!1881 lt!130603 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!259169 (=> (not res!126725) (not e!167994))))

(declare-fun b!259170 () Bool)

(declare-fun e!167992 () ListLongMap!3861)

(declare-fun e!167991 () ListLongMap!3861)

(assert (=> b!259170 (= e!167992 e!167991)))

(declare-fun c!43957 () Bool)

(assert (=> b!259170 (= c!43957 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259171 () Bool)

(declare-fun lt!130605 () Unit!8042)

(declare-fun lt!130604 () Unit!8042)

(assert (=> b!259171 (= lt!130605 lt!130604)))

(declare-fun lt!130606 () V!8459)

(declare-fun lt!130607 () (_ BitVec 64))

(declare-fun lt!130602 () (_ BitVec 64))

(declare-fun lt!130608 () ListLongMap!3861)

(assert (=> b!259171 (not (contains!1881 (+!690 lt!130608 (tuple2!4935 lt!130607 lt!130606)) lt!130602))))

(declare-fun addStillNotContains!128 (ListLongMap!3861 (_ BitVec 64) V!8459 (_ BitVec 64)) Unit!8042)

(assert (=> b!259171 (= lt!130604 (addStillNotContains!128 lt!130608 lt!130607 lt!130606 lt!130602))))

(assert (=> b!259171 (= lt!130602 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!259171 (= lt!130606 (get!3063 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!259171 (= lt!130607 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!259171 (= lt!130608 call!24678)))

(assert (=> b!259171 (= e!167991 (+!690 call!24678 (tuple2!4935 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000) (get!3063 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!259172 () Bool)

(assert (=> b!259172 (= e!167991 call!24678)))

(declare-fun b!259173 () Bool)

(declare-fun e!167993 () Bool)

(assert (=> b!259173 (= e!167993 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!259173 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!259174 () Bool)

(assert (=> b!259174 (= e!167992 (ListLongMap!3862 Nil!3834))))

(declare-fun d!62131 () Bool)

(declare-fun e!167989 () Bool)

(assert (=> d!62131 e!167989))

(declare-fun res!126727 () Bool)

(assert (=> d!62131 (=> (not res!126727) (not e!167989))))

(assert (=> d!62131 (= res!126727 (not (contains!1881 lt!130603 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!62131 (= lt!130603 e!167992)))

(declare-fun c!43958 () Bool)

(assert (=> d!62131 (= c!43958 (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62131 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62131 (= (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) lt!130603)))

(declare-fun b!259175 () Bool)

(assert (=> b!259175 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> b!259175 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6297 (_values!4757 thiss!1504))))))

(assert (=> b!259175 (= e!167994 (= (apply!256 lt!130603 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)) (get!3063 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!259176 () Bool)

(assert (=> b!259176 (= e!167990 (= lt!130603 (getCurrentListMapNoExtraKeys!575 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4774 thiss!1504))))))

(declare-fun b!259177 () Bool)

(assert (=> b!259177 (= e!167988 e!167990)))

(declare-fun c!43956 () Bool)

(assert (=> b!259177 (= c!43956 (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259178 () Bool)

(assert (=> b!259178 (= e!167989 e!167988)))

(declare-fun c!43955 () Bool)

(assert (=> b!259178 (= c!43955 e!167993)))

(declare-fun res!126726 () Bool)

(assert (=> b!259178 (=> (not res!126726) (not e!167993))))

(assert (=> b!259178 (= res!126726 (bvslt #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259179 () Bool)

(declare-fun res!126728 () Bool)

(assert (=> b!259179 (=> (not res!126728) (not e!167989))))

(assert (=> b!259179 (= res!126728 (not (contains!1881 lt!130603 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62131 c!43958) b!259174))

(assert (= (and d!62131 (not c!43958)) b!259170))

(assert (= (and b!259170 c!43957) b!259171))

(assert (= (and b!259170 (not c!43957)) b!259172))

(assert (= (or b!259171 b!259172) bm!24675))

(assert (= (and d!62131 res!126727) b!259179))

(assert (= (and b!259179 res!126728) b!259178))

(assert (= (and b!259178 res!126726) b!259173))

(assert (= (and b!259178 c!43955) b!259169))

(assert (= (and b!259178 (not c!43955)) b!259177))

(assert (= (and b!259169 res!126725) b!259175))

(assert (= (and b!259177 c!43956) b!259176))

(assert (= (and b!259177 (not c!43956)) b!259168))

(declare-fun b_lambda!8261 () Bool)

(assert (=> (not b_lambda!8261) (not b!259171)))

(assert (=> b!259171 t!8914))

(declare-fun b_and!13861 () Bool)

(assert (= b_and!13859 (and (=> t!8914 result!5405) b_and!13861)))

(declare-fun b_lambda!8263 () Bool)

(assert (=> (not b_lambda!8263) (not b!259175)))

(assert (=> b!259175 t!8914))

(declare-fun b_and!13863 () Bool)

(assert (= b_and!13861 (and (=> t!8914 result!5405) b_and!13863)))

(declare-fun m!274715 () Bool)

(assert (=> d!62131 m!274715))

(assert (=> d!62131 m!274301))

(assert (=> b!259169 m!274449))

(assert (=> b!259169 m!274449))

(declare-fun m!274717 () Bool)

(assert (=> b!259169 m!274717))

(declare-fun m!274719 () Bool)

(assert (=> b!259176 m!274719))

(declare-fun m!274721 () Bool)

(assert (=> b!259168 m!274721))

(assert (=> b!259173 m!274449))

(assert (=> b!259173 m!274449))

(assert (=> b!259173 m!274451))

(assert (=> b!259170 m!274449))

(assert (=> b!259170 m!274449))

(assert (=> b!259170 m!274451))

(declare-fun m!274723 () Bool)

(assert (=> b!259179 m!274723))

(declare-fun m!274725 () Bool)

(assert (=> b!259171 m!274725))

(declare-fun m!274727 () Bool)

(assert (=> b!259171 m!274727))

(declare-fun m!274729 () Bool)

(assert (=> b!259171 m!274729))

(assert (=> b!259171 m!274483))

(declare-fun m!274731 () Bool)

(assert (=> b!259171 m!274731))

(assert (=> b!259171 m!274449))

(assert (=> b!259171 m!274567))

(assert (=> b!259171 m!274483))

(assert (=> b!259171 m!274569))

(assert (=> b!259171 m!274567))

(assert (=> b!259171 m!274725))

(assert (=> bm!24675 m!274719))

(assert (=> b!259175 m!274449))

(declare-fun m!274733 () Bool)

(assert (=> b!259175 m!274733))

(assert (=> b!259175 m!274483))

(assert (=> b!259175 m!274567))

(assert (=> b!259175 m!274449))

(assert (=> b!259175 m!274567))

(assert (=> b!259175 m!274483))

(assert (=> b!259175 m!274569))

(assert (=> bm!24657 d!62131))

(assert (=> b!258910 d!62117))

(declare-fun d!62133 () Bool)

(declare-fun e!167996 () Bool)

(assert (=> d!62133 e!167996))

(declare-fun res!126729 () Bool)

(assert (=> d!62133 (=> res!126729 e!167996)))

(declare-fun lt!130610 () Bool)

(assert (=> d!62133 (= res!126729 (not lt!130610))))

(declare-fun lt!130611 () Bool)

(assert (=> d!62133 (= lt!130610 lt!130611)))

(declare-fun lt!130612 () Unit!8042)

(declare-fun e!167995 () Unit!8042)

(assert (=> d!62133 (= lt!130612 e!167995)))

(declare-fun c!43959 () Bool)

(assert (=> d!62133 (= c!43959 lt!130611)))

(assert (=> d!62133 (= lt!130611 (containsKey!305 (toList!1946 lt!130543) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62133 (= (contains!1881 lt!130543 #b1000000000000000000000000000000000000000000000000000000000000000) lt!130610)))

(declare-fun b!259180 () Bool)

(declare-fun lt!130609 () Unit!8042)

(assert (=> b!259180 (= e!167995 lt!130609)))

(assert (=> b!259180 (= lt!130609 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130543) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259180 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130543) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259181 () Bool)

(declare-fun Unit!8056 () Unit!8042)

(assert (=> b!259181 (= e!167995 Unit!8056)))

(declare-fun b!259182 () Bool)

(assert (=> b!259182 (= e!167996 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130543) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62133 c!43959) b!259180))

(assert (= (and d!62133 (not c!43959)) b!259181))

(assert (= (and d!62133 (not res!126729)) b!259182))

(declare-fun m!274735 () Bool)

(assert (=> d!62133 m!274735))

(declare-fun m!274737 () Bool)

(assert (=> b!259180 m!274737))

(declare-fun m!274739 () Bool)

(assert (=> b!259180 m!274739))

(assert (=> b!259180 m!274739))

(declare-fun m!274741 () Bool)

(assert (=> b!259180 m!274741))

(assert (=> b!259182 m!274739))

(assert (=> b!259182 m!274739))

(assert (=> b!259182 m!274741))

(assert (=> bm!24663 d!62133))

(declare-fun b!259194 () Bool)

(declare-fun e!167999 () Bool)

(assert (=> b!259194 (= e!167999 (and (bvsge (extraKeys!4511 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4511 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1960 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!259193 () Bool)

(declare-fun res!126739 () Bool)

(assert (=> b!259193 (=> (not res!126739) (not e!167999))))

(declare-fun size!6301 (LongMapFixedSize!3822) (_ BitVec 32))

(assert (=> b!259193 (= res!126739 (= (size!6301 thiss!1504) (bvadd (_size!1960 thiss!1504) (bvsdiv (bvadd (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!62135 () Bool)

(declare-fun res!126741 () Bool)

(assert (=> d!62135 (=> (not res!126741) (not e!167999))))

(assert (=> d!62135 (= res!126741 (validMask!0 (mask!11082 thiss!1504)))))

(assert (=> d!62135 (= (simpleValid!278 thiss!1504) e!167999)))

(declare-fun b!259192 () Bool)

(declare-fun res!126738 () Bool)

(assert (=> b!259192 (=> (not res!126738) (not e!167999))))

(assert (=> b!259192 (= res!126738 (bvsge (size!6301 thiss!1504) (_size!1960 thiss!1504)))))

(declare-fun b!259191 () Bool)

(declare-fun res!126740 () Bool)

(assert (=> b!259191 (=> (not res!126740) (not e!167999))))

(assert (=> b!259191 (= res!126740 (and (= (size!6297 (_values!4757 thiss!1504)) (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001)) (= (size!6298 (_keys!6948 thiss!1504)) (size!6297 (_values!4757 thiss!1504))) (bvsge (_size!1960 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1960 thiss!1504) (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001))))))

(assert (= (and d!62135 res!126741) b!259191))

(assert (= (and b!259191 res!126740) b!259192))

(assert (= (and b!259192 res!126738) b!259193))

(assert (= (and b!259193 res!126739) b!259194))

(declare-fun m!274743 () Bool)

(assert (=> b!259193 m!274743))

(assert (=> d!62135 m!274301))

(assert (=> b!259192 m!274743))

(assert (=> d!62089 d!62135))

(declare-fun d!62137 () Bool)

(declare-fun lt!130615 () Bool)

(declare-fun content!170 (List!3837) (InoxSet tuple2!4934))

(assert (=> d!62137 (= lt!130615 (select (content!170 (toList!1946 lt!130412)) (tuple2!4935 key!932 v!346)))))

(declare-fun e!168005 () Bool)

(assert (=> d!62137 (= lt!130615 e!168005)))

(declare-fun res!126747 () Bool)

(assert (=> d!62137 (=> (not res!126747) (not e!168005))))

(assert (=> d!62137 (= res!126747 ((_ is Cons!3833) (toList!1946 lt!130412)))))

(assert (=> d!62137 (= (contains!1883 (toList!1946 lt!130412) (tuple2!4935 key!932 v!346)) lt!130615)))

(declare-fun b!259199 () Bool)

(declare-fun e!168004 () Bool)

(assert (=> b!259199 (= e!168005 e!168004)))

(declare-fun res!126746 () Bool)

(assert (=> b!259199 (=> res!126746 e!168004)))

(assert (=> b!259199 (= res!126746 (= (h!4496 (toList!1946 lt!130412)) (tuple2!4935 key!932 v!346)))))

(declare-fun b!259200 () Bool)

(assert (=> b!259200 (= e!168004 (contains!1883 (t!8910 (toList!1946 lt!130412)) (tuple2!4935 key!932 v!346)))))

(assert (= (and d!62137 res!126747) b!259199))

(assert (= (and b!259199 (not res!126746)) b!259200))

(declare-fun m!274745 () Bool)

(assert (=> d!62137 m!274745))

(declare-fun m!274747 () Bool)

(assert (=> d!62137 m!274747))

(declare-fun m!274749 () Bool)

(assert (=> b!259200 m!274749))

(assert (=> b!258874 d!62137))

(declare-fun d!62139 () Bool)

(declare-fun res!126750 () Bool)

(declare-fun e!168009 () Bool)

(assert (=> d!62139 (=> res!126750 e!168009)))

(assert (=> d!62139 (= res!126750 (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62139 (= (arrayNoDuplicates!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 Nil!3835) e!168009)))

(declare-fun b!259201 () Bool)

(declare-fun e!168006 () Bool)

(assert (=> b!259201 (= e!168009 e!168006)))

(declare-fun res!126748 () Bool)

(assert (=> b!259201 (=> (not res!126748) (not e!168006))))

(declare-fun e!168007 () Bool)

(assert (=> b!259201 (= res!126748 (not e!168007))))

(declare-fun res!126749 () Bool)

(assert (=> b!259201 (=> (not res!126749) (not e!168007))))

(assert (=> b!259201 (= res!126749 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259202 () Bool)

(declare-fun e!168008 () Bool)

(declare-fun call!24679 () Bool)

(assert (=> b!259202 (= e!168008 call!24679)))

(declare-fun b!259203 () Bool)

(assert (=> b!259203 (= e!168007 (contains!1884 Nil!3835 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259204 () Bool)

(assert (=> b!259204 (= e!168008 call!24679)))

(declare-fun b!259205 () Bool)

(assert (=> b!259205 (= e!168006 e!168008)))

(declare-fun c!43960 () Bool)

(assert (=> b!259205 (= c!43960 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24676 () Bool)

(assert (=> bm!24676 (= call!24679 (arrayNoDuplicates!0 (_keys!6948 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43960 (Cons!3834 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000) Nil!3835) Nil!3835)))))

(assert (= (and d!62139 (not res!126750)) b!259201))

(assert (= (and b!259201 res!126749) b!259203))

(assert (= (and b!259201 res!126748) b!259205))

(assert (= (and b!259205 c!43960) b!259202))

(assert (= (and b!259205 (not c!43960)) b!259204))

(assert (= (or b!259202 b!259204) bm!24676))

(assert (=> b!259201 m!274449))

(assert (=> b!259201 m!274449))

(assert (=> b!259201 m!274451))

(assert (=> b!259203 m!274449))

(assert (=> b!259203 m!274449))

(declare-fun m!274751 () Bool)

(assert (=> b!259203 m!274751))

(assert (=> b!259205 m!274449))

(assert (=> b!259205 m!274449))

(assert (=> b!259205 m!274451))

(assert (=> bm!24676 m!274449))

(declare-fun m!274753 () Bool)

(assert (=> bm!24676 m!274753))

(assert (=> b!259048 d!62139))

(declare-fun d!62141 () Bool)

(declare-fun get!3064 (Option!319) V!8459)

(assert (=> d!62141 (= (apply!256 lt!130543 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3064 (getValueByKey!313 (toList!1946 lt!130543) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9129 () Bool)

(assert (= bs!9129 d!62141))

(assert (=> bs!9129 m!274739))

(assert (=> bs!9129 m!274739))

(declare-fun m!274755 () Bool)

(assert (=> bs!9129 m!274755))

(assert (=> b!259035 d!62141))

(declare-fun d!62143 () Bool)

(declare-fun res!126755 () Bool)

(declare-fun e!168014 () Bool)

(assert (=> d!62143 (=> res!126755 e!168014)))

(assert (=> d!62143 (= res!126755 (and ((_ is Cons!3833) (toList!1946 lt!130355)) (= (_1!2477 (h!4496 (toList!1946 lt!130355))) key!932)))))

(assert (=> d!62143 (= (containsKey!305 (toList!1946 lt!130355) key!932) e!168014)))

(declare-fun b!259210 () Bool)

(declare-fun e!168015 () Bool)

(assert (=> b!259210 (= e!168014 e!168015)))

(declare-fun res!126756 () Bool)

(assert (=> b!259210 (=> (not res!126756) (not e!168015))))

(assert (=> b!259210 (= res!126756 (and (or (not ((_ is Cons!3833) (toList!1946 lt!130355))) (bvsle (_1!2477 (h!4496 (toList!1946 lt!130355))) key!932)) ((_ is Cons!3833) (toList!1946 lt!130355)) (bvslt (_1!2477 (h!4496 (toList!1946 lt!130355))) key!932)))))

(declare-fun b!259211 () Bool)

(assert (=> b!259211 (= e!168015 (containsKey!305 (t!8910 (toList!1946 lt!130355)) key!932))))

(assert (= (and d!62143 (not res!126755)) b!259210))

(assert (= (and b!259210 res!126756) b!259211))

(declare-fun m!274757 () Bool)

(assert (=> b!259211 m!274757))

(assert (=> d!62085 d!62143))

(declare-fun d!62145 () Bool)

(assert (=> d!62145 (= (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) index!297)) (and (not (= (select (arr!5950 (_keys!6948 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5950 (_keys!6948 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258865 d!62145))

(declare-fun d!62147 () Bool)

(declare-fun res!126759 () Bool)

(declare-fun e!168019 () Bool)

(assert (=> d!62147 (=> res!126759 e!168019)))

(assert (=> d!62147 (= res!126759 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 lt!130346)))))

(assert (=> d!62147 (= (arrayNoDuplicates!0 lt!130346 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43889 (Cons!3834 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) Nil!3835) Nil!3835)) e!168019)))

(declare-fun b!259212 () Bool)

(declare-fun e!168016 () Bool)

(assert (=> b!259212 (= e!168019 e!168016)))

(declare-fun res!126757 () Bool)

(assert (=> b!259212 (=> (not res!126757) (not e!168016))))

(declare-fun e!168017 () Bool)

(assert (=> b!259212 (= res!126757 (not e!168017))))

(declare-fun res!126758 () Bool)

(assert (=> b!259212 (=> (not res!126758) (not e!168017))))

(assert (=> b!259212 (= res!126758 (validKeyInArray!0 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!259213 () Bool)

(declare-fun e!168018 () Bool)

(declare-fun call!24680 () Bool)

(assert (=> b!259213 (= e!168018 call!24680)))

(declare-fun b!259214 () Bool)

(assert (=> b!259214 (= e!168017 (contains!1884 (ite c!43889 (Cons!3834 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) Nil!3835) Nil!3835) (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!259215 () Bool)

(assert (=> b!259215 (= e!168018 call!24680)))

(declare-fun b!259216 () Bool)

(assert (=> b!259216 (= e!168016 e!168018)))

(declare-fun c!43961 () Bool)

(assert (=> b!259216 (= c!43961 (validKeyInArray!0 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!24677 () Bool)

(assert (=> bm!24677 (= call!24680 (arrayNoDuplicates!0 lt!130346 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!43961 (Cons!3834 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!43889 (Cons!3834 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) Nil!3835) Nil!3835)) (ite c!43889 (Cons!3834 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) Nil!3835) Nil!3835))))))

(assert (= (and d!62147 (not res!126759)) b!259212))

(assert (= (and b!259212 res!126758) b!259214))

(assert (= (and b!259212 res!126757) b!259216))

(assert (= (and b!259216 c!43961) b!259213))

(assert (= (and b!259216 (not c!43961)) b!259215))

(assert (= (or b!259213 b!259215) bm!24677))

(declare-fun m!274759 () Bool)

(assert (=> b!259212 m!274759))

(assert (=> b!259212 m!274759))

(declare-fun m!274761 () Bool)

(assert (=> b!259212 m!274761))

(assert (=> b!259214 m!274759))

(assert (=> b!259214 m!274759))

(declare-fun m!274763 () Bool)

(assert (=> b!259214 m!274763))

(assert (=> b!259216 m!274759))

(assert (=> b!259216 m!274759))

(assert (=> b!259216 m!274761))

(assert (=> bm!24677 m!274759))

(declare-fun m!274765 () Bool)

(assert (=> bm!24677 m!274765))

(assert (=> bm!24631 d!62147))

(declare-fun d!62149 () Bool)

(declare-fun e!168021 () Bool)

(assert (=> d!62149 e!168021))

(declare-fun res!126760 () Bool)

(assert (=> d!62149 (=> res!126760 e!168021)))

(declare-fun lt!130617 () Bool)

(assert (=> d!62149 (= res!126760 (not lt!130617))))

(declare-fun lt!130618 () Bool)

(assert (=> d!62149 (= lt!130617 lt!130618)))

(declare-fun lt!130619 () Unit!8042)

(declare-fun e!168020 () Unit!8042)

(assert (=> d!62149 (= lt!130619 e!168020)))

(declare-fun c!43962 () Bool)

(assert (=> d!62149 (= c!43962 lt!130618)))

(assert (=> d!62149 (= lt!130618 (containsKey!305 (toList!1946 lt!130543) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62149 (= (contains!1881 lt!130543 #b0000000000000000000000000000000000000000000000000000000000000000) lt!130617)))

(declare-fun b!259217 () Bool)

(declare-fun lt!130616 () Unit!8042)

(assert (=> b!259217 (= e!168020 lt!130616)))

(assert (=> b!259217 (= lt!130616 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130543) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259217 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130543) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259218 () Bool)

(declare-fun Unit!8057 () Unit!8042)

(assert (=> b!259218 (= e!168020 Unit!8057)))

(declare-fun b!259219 () Bool)

(assert (=> b!259219 (= e!168021 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130543) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62149 c!43962) b!259217))

(assert (= (and d!62149 (not c!43962)) b!259218))

(assert (= (and d!62149 (not res!126760)) b!259219))

(declare-fun m!274767 () Bool)

(assert (=> d!62149 m!274767))

(declare-fun m!274769 () Bool)

(assert (=> b!259217 m!274769))

(declare-fun m!274771 () Bool)

(assert (=> b!259217 m!274771))

(assert (=> b!259217 m!274771))

(declare-fun m!274773 () Bool)

(assert (=> b!259217 m!274773))

(assert (=> b!259219 m!274771))

(assert (=> b!259219 m!274771))

(assert (=> b!259219 m!274773))

(assert (=> bm!24659 d!62149))

(declare-fun bm!24678 () Bool)

(declare-fun call!24681 () Bool)

(assert (=> bm!24678 (= call!24681 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!130346 (mask!11082 thiss!1504)))))

(declare-fun d!62151 () Bool)

(declare-fun res!126761 () Bool)

(declare-fun e!168023 () Bool)

(assert (=> d!62151 (=> res!126761 e!168023)))

(assert (=> d!62151 (= res!126761 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 lt!130346)))))

(assert (=> d!62151 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!130346 (mask!11082 thiss!1504)) e!168023)))

(declare-fun b!259220 () Bool)

(declare-fun e!168024 () Bool)

(declare-fun e!168022 () Bool)

(assert (=> b!259220 (= e!168024 e!168022)))

(declare-fun lt!130620 () (_ BitVec 64))

(assert (=> b!259220 (= lt!130620 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!130621 () Unit!8042)

(assert (=> b!259220 (= lt!130621 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130346 lt!130620 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!259220 (arrayContainsKey!0 lt!130346 lt!130620 #b00000000000000000000000000000000)))

(declare-fun lt!130622 () Unit!8042)

(assert (=> b!259220 (= lt!130622 lt!130621)))

(declare-fun res!126762 () Bool)

(assert (=> b!259220 (= res!126762 (= (seekEntryOrOpen!0 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!130346 (mask!11082 thiss!1504)) (Found!1187 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!259220 (=> (not res!126762) (not e!168022))))

(declare-fun b!259221 () Bool)

(assert (=> b!259221 (= e!168023 e!168024)))

(declare-fun c!43963 () Bool)

(assert (=> b!259221 (= c!43963 (validKeyInArray!0 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!259222 () Bool)

(assert (=> b!259222 (= e!168022 call!24681)))

(declare-fun b!259223 () Bool)

(assert (=> b!259223 (= e!168024 call!24681)))

(assert (= (and d!62151 (not res!126761)) b!259221))

(assert (= (and b!259221 c!43963) b!259220))

(assert (= (and b!259221 (not c!43963)) b!259223))

(assert (= (and b!259220 res!126762) b!259222))

(assert (= (or b!259222 b!259223) bm!24678))

(declare-fun m!274775 () Bool)

(assert (=> bm!24678 m!274775))

(assert (=> b!259220 m!274759))

(declare-fun m!274777 () Bool)

(assert (=> b!259220 m!274777))

(declare-fun m!274779 () Bool)

(assert (=> b!259220 m!274779))

(assert (=> b!259220 m!274759))

(declare-fun m!274781 () Bool)

(assert (=> b!259220 m!274781))

(assert (=> b!259221 m!274759))

(assert (=> b!259221 m!274759))

(assert (=> b!259221 m!274761))

(assert (=> bm!24634 d!62151))

(declare-fun b!259224 () Bool)

(declare-fun e!168025 () (_ BitVec 32))

(declare-fun call!24682 () (_ BitVec 32))

(assert (=> b!259224 (= e!168025 (bvadd #b00000000000000000000000000000001 call!24682))))

(declare-fun d!62153 () Bool)

(declare-fun lt!130623 () (_ BitVec 32))

(assert (=> d!62153 (and (bvsge lt!130623 #b00000000000000000000000000000000) (bvsle lt!130623 (bvsub (size!6298 lt!130346) (bvadd index!297 #b00000000000000000000000000000001))))))

(declare-fun e!168026 () (_ BitVec 32))

(assert (=> d!62153 (= lt!130623 e!168026)))

(declare-fun c!43965 () Bool)

(assert (=> d!62153 (= c!43965 (bvsge (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62153 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) (bvsge (bvadd index!297 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6298 lt!130346)))))

(assert (=> d!62153 (= (arrayCountValidKeys!0 lt!130346 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) lt!130623)))

(declare-fun b!259225 () Bool)

(assert (=> b!259225 (= e!168025 call!24682)))

(declare-fun b!259226 () Bool)

(assert (=> b!259226 (= e!168026 e!168025)))

(declare-fun c!43964 () Bool)

(assert (=> b!259226 (= c!43964 (validKeyInArray!0 (select (arr!5950 lt!130346) (bvadd index!297 #b00000000000000000000000000000001))))))

(declare-fun bm!24679 () Bool)

(assert (=> bm!24679 (= call!24682 (arrayCountValidKeys!0 lt!130346 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!259227 () Bool)

(assert (=> b!259227 (= e!168026 #b00000000000000000000000000000000)))

(assert (= (and d!62153 c!43965) b!259227))

(assert (= (and d!62153 (not c!43965)) b!259226))

(assert (= (and b!259226 c!43964) b!259224))

(assert (= (and b!259226 (not c!43964)) b!259225))

(assert (= (or b!259224 b!259225) bm!24679))

(declare-fun m!274783 () Bool)

(assert (=> b!259226 m!274783))

(assert (=> b!259226 m!274783))

(declare-fun m!274785 () Bool)

(assert (=> b!259226 m!274785))

(declare-fun m!274787 () Bool)

(assert (=> bm!24679 m!274787))

(assert (=> bm!24656 d!62153))

(declare-fun d!62155 () Bool)

(declare-fun e!168027 () Bool)

(assert (=> d!62155 e!168027))

(declare-fun res!126764 () Bool)

(assert (=> d!62155 (=> (not res!126764) (not e!168027))))

(declare-fun lt!130625 () ListLongMap!3861)

(assert (=> d!62155 (= res!126764 (contains!1881 lt!130625 (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(declare-fun lt!130624 () List!3837)

(assert (=> d!62155 (= lt!130625 (ListLongMap!3862 lt!130624))))

(declare-fun lt!130626 () Unit!8042)

(declare-fun lt!130627 () Unit!8042)

(assert (=> d!62155 (= lt!130626 lt!130627)))

(assert (=> d!62155 (= (getValueByKey!313 lt!130624 (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (=> d!62155 (= lt!130627 (lemmaContainsTupThenGetReturnValue!171 lt!130624 (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (=> d!62155 (= lt!130624 (insertStrictlySorted!173 (toList!1946 call!24652) (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (=> d!62155 (= (+!690 call!24652 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))) lt!130625)))

(declare-fun b!259228 () Bool)

(declare-fun res!126763 () Bool)

(assert (=> b!259228 (=> (not res!126763) (not e!168027))))

(assert (=> b!259228 (= res!126763 (= (getValueByKey!313 (toList!1946 lt!130625) (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(declare-fun b!259229 () Bool)

(assert (=> b!259229 (= e!168027 (contains!1883 (toList!1946 lt!130625) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))

(assert (= (and d!62155 res!126764) b!259228))

(assert (= (and b!259228 res!126763) b!259229))

(declare-fun m!274789 () Bool)

(assert (=> d!62155 m!274789))

(declare-fun m!274791 () Bool)

(assert (=> d!62155 m!274791))

(declare-fun m!274793 () Bool)

(assert (=> d!62155 m!274793))

(declare-fun m!274795 () Bool)

(assert (=> d!62155 m!274795))

(declare-fun m!274797 () Bool)

(assert (=> b!259228 m!274797))

(declare-fun m!274799 () Bool)

(assert (=> b!259229 m!274799))

(assert (=> b!258969 d!62155))

(assert (=> d!62091 d!62099))

(declare-fun d!62157 () Bool)

(declare-fun e!168030 () Bool)

(assert (=> d!62157 e!168030))

(declare-fun res!126769 () Bool)

(assert (=> d!62157 (=> (not res!126769) (not e!168030))))

(declare-fun lt!130630 () SeekEntryResult!1187)

(assert (=> d!62157 (= res!126769 ((_ is Found!1187) lt!130630))))

(assert (=> d!62157 (= lt!130630 (seekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(assert (=> d!62157 true))

(declare-fun _$33!177 () Unit!8042)

(assert (=> d!62157 (= (choose!1261 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)) _$33!177)))

(declare-fun b!259234 () Bool)

(declare-fun res!126770 () Bool)

(assert (=> b!259234 (=> (not res!126770) (not e!168030))))

(assert (=> b!259234 (= res!126770 (inRange!0 (index!6919 lt!130630) (mask!11082 thiss!1504)))))

(declare-fun b!259235 () Bool)

(assert (=> b!259235 (= e!168030 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6919 lt!130630)) key!932))))

(assert (= (and d!62157 res!126769) b!259234))

(assert (= (and b!259234 res!126770) b!259235))

(assert (=> d!62157 m!274357))

(declare-fun m!274801 () Bool)

(assert (=> b!259234 m!274801))

(declare-fun m!274803 () Bool)

(assert (=> b!259235 m!274803))

(assert (=> d!62091 d!62157))

(assert (=> d!62091 d!62079))

(declare-fun d!62159 () Bool)

(assert (=> d!62159 (= (apply!256 lt!130496 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3064 (getValueByKey!313 (toList!1946 lt!130496) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9130 () Bool)

(assert (= bs!9130 d!62159))

(declare-fun m!274805 () Bool)

(assert (=> bs!9130 m!274805))

(assert (=> bs!9130 m!274805))

(declare-fun m!274807 () Bool)

(assert (=> bs!9130 m!274807))

(assert (=> b!258985 d!62159))

(declare-fun b!259236 () Bool)

(declare-fun e!168031 () (_ BitVec 32))

(declare-fun call!24683 () (_ BitVec 32))

(assert (=> b!259236 (= e!168031 (bvadd #b00000000000000000000000000000001 call!24683))))

(declare-fun d!62161 () Bool)

(declare-fun lt!130631 () (_ BitVec 32))

(assert (=> d!62161 (and (bvsge lt!130631 #b00000000000000000000000000000000) (bvsle lt!130631 (bvsub (size!6298 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!168032 () (_ BitVec 32))

(assert (=> d!62161 (= lt!130631 e!168032)))

(declare-fun c!43967 () Bool)

(assert (=> d!62161 (= c!43967 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62161 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6298 (_keys!6948 thiss!1504)) (size!6298 lt!130346)))))

(assert (=> d!62161 (= (arrayCountValidKeys!0 lt!130346 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))) lt!130631)))

(declare-fun b!259237 () Bool)

(assert (=> b!259237 (= e!168031 call!24683)))

(declare-fun b!259238 () Bool)

(assert (=> b!259238 (= e!168032 e!168031)))

(declare-fun c!43966 () Bool)

(assert (=> b!259238 (= c!43966 (validKeyInArray!0 (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!24680 () Bool)

(assert (=> bm!24680 (= call!24683 (arrayCountValidKeys!0 lt!130346 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259239 () Bool)

(assert (=> b!259239 (= e!168032 #b00000000000000000000000000000000)))

(assert (= (and d!62161 c!43967) b!259239))

(assert (= (and d!62161 (not c!43967)) b!259238))

(assert (= (and b!259238 c!43966) b!259236))

(assert (= (and b!259238 (not c!43966)) b!259237))

(assert (= (or b!259236 b!259237) bm!24680))

(assert (=> b!259238 m!274759))

(assert (=> b!259238 m!274759))

(assert (=> b!259238 m!274761))

(declare-fun m!274809 () Bool)

(assert (=> bm!24680 m!274809))

(assert (=> bm!24628 d!62161))

(declare-fun d!62163 () Bool)

(declare-fun e!168033 () Bool)

(assert (=> d!62163 e!168033))

(declare-fun res!126772 () Bool)

(assert (=> d!62163 (=> (not res!126772) (not e!168033))))

(declare-fun lt!130633 () ListLongMap!3861)

(assert (=> d!62163 (= res!126772 (contains!1881 lt!130633 (_1!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(declare-fun lt!130632 () List!3837)

(assert (=> d!62163 (= lt!130633 (ListLongMap!3862 lt!130632))))

(declare-fun lt!130634 () Unit!8042)

(declare-fun lt!130635 () Unit!8042)

(assert (=> d!62163 (= lt!130634 lt!130635)))

(assert (=> d!62163 (= (getValueByKey!313 lt!130632 (_1!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))) (Some!318 (_2!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(assert (=> d!62163 (= lt!130635 (lemmaContainsTupThenGetReturnValue!171 lt!130632 (_1!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (_2!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(assert (=> d!62163 (= lt!130632 (insertStrictlySorted!173 (toList!1946 (ite c!43919 call!24662 (ite c!43918 call!24661 call!24663))) (_1!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (_2!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(assert (=> d!62163 (= (+!690 (ite c!43919 call!24662 (ite c!43918 call!24661 call!24663)) (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) lt!130633)))

(declare-fun b!259240 () Bool)

(declare-fun res!126771 () Bool)

(assert (=> b!259240 (=> (not res!126771) (not e!168033))))

(assert (=> b!259240 (= res!126771 (= (getValueByKey!313 (toList!1946 lt!130633) (_1!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))) (Some!318 (_2!2477 (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))))

(declare-fun b!259241 () Bool)

(assert (=> b!259241 (= e!168033 (contains!1883 (toList!1946 lt!130633) (ite (or c!43919 c!43918) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (= (and d!62163 res!126772) b!259240))

(assert (= (and b!259240 res!126771) b!259241))

(declare-fun m!274811 () Bool)

(assert (=> d!62163 m!274811))

(declare-fun m!274813 () Bool)

(assert (=> d!62163 m!274813))

(declare-fun m!274815 () Bool)

(assert (=> d!62163 m!274815))

(declare-fun m!274817 () Bool)

(assert (=> d!62163 m!274817))

(declare-fun m!274819 () Bool)

(assert (=> b!259240 m!274819))

(declare-fun m!274821 () Bool)

(assert (=> b!259241 m!274821))

(assert (=> bm!24660 d!62163))

(declare-fun d!62165 () Bool)

(assert (=> d!62165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (mask!11082 thiss!1504))))

(assert (=> d!62165 true))

(declare-fun _$56!36 () Unit!8042)

(assert (=> d!62165 (= (choose!102 key!932 (_keys!6948 thiss!1504) index!297 (mask!11082 thiss!1504)) _$56!36)))

(declare-fun bs!9131 () Bool)

(assert (= bs!9131 d!62165))

(assert (=> bs!9131 m!274331))

(assert (=> bs!9131 m!274553))

(assert (=> d!62077 d!62165))

(assert (=> d!62077 d!62079))

(declare-fun d!62167 () Bool)

(assert (=> d!62167 (= (apply!256 lt!130496 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) (get!3064 (getValueByKey!313 (toList!1946 lt!130496) (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))))

(declare-fun bs!9132 () Bool)

(assert (= bs!9132 d!62167))

(assert (=> bs!9132 m!274461))

(declare-fun m!274823 () Bool)

(assert (=> bs!9132 m!274823))

(assert (=> bs!9132 m!274823))

(declare-fun m!274825 () Bool)

(assert (=> bs!9132 m!274825))

(assert (=> b!258975 d!62167))

(declare-fun c!43970 () Bool)

(declare-fun d!62169 () Bool)

(assert (=> d!62169 (= c!43970 ((_ is ValueCellFull!2961) (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!168036 () V!8459)

(assert (=> d!62169 (= (get!3063 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!168036)))

(declare-fun b!259246 () Bool)

(declare-fun get!3065 (ValueCell!2961 V!8459) V!8459)

(assert (=> b!259246 (= e!168036 (get!3065 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!259247 () Bool)

(declare-fun get!3066 (ValueCell!2961 V!8459) V!8459)

(assert (=> b!259247 (= e!168036 (get!3066 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62169 c!43970) b!259246))

(assert (= (and d!62169 (not c!43970)) b!259247))

(assert (=> b!259246 m!274485))

(assert (=> b!259246 m!274483))

(declare-fun m!274827 () Bool)

(assert (=> b!259246 m!274827))

(assert (=> b!259247 m!274485))

(assert (=> b!259247 m!274483))

(declare-fun m!274829 () Bool)

(assert (=> b!259247 m!274829))

(assert (=> b!258975 d!62169))

(declare-fun d!62171 () Bool)

(declare-fun e!168038 () Bool)

(assert (=> d!62171 e!168038))

(declare-fun res!126773 () Bool)

(assert (=> d!62171 (=> res!126773 e!168038)))

(declare-fun lt!130637 () Bool)

(assert (=> d!62171 (= res!126773 (not lt!130637))))

(declare-fun lt!130638 () Bool)

(assert (=> d!62171 (= lt!130637 lt!130638)))

(declare-fun lt!130639 () Unit!8042)

(declare-fun e!168037 () Unit!8042)

(assert (=> d!62171 (= lt!130639 e!168037)))

(declare-fun c!43971 () Bool)

(assert (=> d!62171 (= c!43971 lt!130638)))

(assert (=> d!62171 (= lt!130638 (containsKey!305 (toList!1946 lt!130412) (_1!2477 (tuple2!4935 key!932 v!346))))))

(assert (=> d!62171 (= (contains!1881 lt!130412 (_1!2477 (tuple2!4935 key!932 v!346))) lt!130637)))

(declare-fun b!259248 () Bool)

(declare-fun lt!130636 () Unit!8042)

(assert (=> b!259248 (= e!168037 lt!130636)))

(assert (=> b!259248 (= lt!130636 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130412) (_1!2477 (tuple2!4935 key!932 v!346))))))

(assert (=> b!259248 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130412) (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun b!259249 () Bool)

(declare-fun Unit!8058 () Unit!8042)

(assert (=> b!259249 (= e!168037 Unit!8058)))

(declare-fun b!259250 () Bool)

(assert (=> b!259250 (= e!168038 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130412) (_1!2477 (tuple2!4935 key!932 v!346)))))))

(assert (= (and d!62171 c!43971) b!259248))

(assert (= (and d!62171 (not c!43971)) b!259249))

(assert (= (and d!62171 (not res!126773)) b!259250))

(declare-fun m!274831 () Bool)

(assert (=> d!62171 m!274831))

(declare-fun m!274833 () Bool)

(assert (=> b!259248 m!274833))

(assert (=> b!259248 m!274445))

(assert (=> b!259248 m!274445))

(declare-fun m!274835 () Bool)

(assert (=> b!259248 m!274835))

(assert (=> b!259250 m!274445))

(assert (=> b!259250 m!274445))

(assert (=> b!259250 m!274835))

(assert (=> d!62053 d!62171))

(declare-fun d!62173 () Bool)

(declare-fun c!43972 () Bool)

(assert (=> d!62173 (= c!43972 (and ((_ is Cons!3833) lt!130411) (= (_1!2477 (h!4496 lt!130411)) (_1!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun e!168039 () Option!319)

(assert (=> d!62173 (= (getValueByKey!313 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346))) e!168039)))

(declare-fun b!259253 () Bool)

(declare-fun e!168040 () Option!319)

(assert (=> b!259253 (= e!168040 (getValueByKey!313 (t!8910 lt!130411) (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun b!259251 () Bool)

(assert (=> b!259251 (= e!168039 (Some!318 (_2!2477 (h!4496 lt!130411))))))

(declare-fun b!259254 () Bool)

(assert (=> b!259254 (= e!168040 None!317)))

(declare-fun b!259252 () Bool)

(assert (=> b!259252 (= e!168039 e!168040)))

(declare-fun c!43973 () Bool)

(assert (=> b!259252 (= c!43973 (and ((_ is Cons!3833) lt!130411) (not (= (_1!2477 (h!4496 lt!130411)) (_1!2477 (tuple2!4935 key!932 v!346))))))))

(assert (= (and d!62173 c!43972) b!259251))

(assert (= (and d!62173 (not c!43972)) b!259252))

(assert (= (and b!259252 c!43973) b!259253))

(assert (= (and b!259252 (not c!43973)) b!259254))

(declare-fun m!274837 () Bool)

(assert (=> b!259253 m!274837))

(assert (=> d!62053 d!62173))

(declare-fun d!62175 () Bool)

(assert (=> d!62175 (= (getValueByKey!313 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346))) (Some!318 (_2!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun lt!130642 () Unit!8042)

(declare-fun choose!1265 (List!3837 (_ BitVec 64) V!8459) Unit!8042)

(assert (=> d!62175 (= lt!130642 (choose!1265 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun e!168043 () Bool)

(assert (=> d!62175 e!168043))

(declare-fun res!126778 () Bool)

(assert (=> d!62175 (=> (not res!126778) (not e!168043))))

(assert (=> d!62175 (= res!126778 (isStrictlySorted!369 lt!130411))))

(assert (=> d!62175 (= (lemmaContainsTupThenGetReturnValue!171 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))) lt!130642)))

(declare-fun b!259259 () Bool)

(declare-fun res!126779 () Bool)

(assert (=> b!259259 (=> (not res!126779) (not e!168043))))

(assert (=> b!259259 (= res!126779 (containsKey!305 lt!130411 (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun b!259260 () Bool)

(assert (=> b!259260 (= e!168043 (contains!1883 lt!130411 (tuple2!4935 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346)))))))

(assert (= (and d!62175 res!126778) b!259259))

(assert (= (and b!259259 res!126779) b!259260))

(assert (=> d!62175 m!274439))

(declare-fun m!274839 () Bool)

(assert (=> d!62175 m!274839))

(declare-fun m!274841 () Bool)

(assert (=> d!62175 m!274841))

(declare-fun m!274843 () Bool)

(assert (=> b!259259 m!274843))

(declare-fun m!274845 () Bool)

(assert (=> b!259260 m!274845))

(assert (=> d!62053 d!62175))

(declare-fun b!259281 () Bool)

(declare-fun e!168058 () List!3837)

(declare-fun call!24691 () List!3837)

(assert (=> b!259281 (= e!168058 call!24691)))

(declare-fun bm!24687 () Bool)

(declare-fun call!24690 () List!3837)

(assert (=> bm!24687 (= call!24691 call!24690)))

(declare-fun b!259283 () Bool)

(declare-fun res!126785 () Bool)

(declare-fun e!168055 () Bool)

(assert (=> b!259283 (=> (not res!126785) (not e!168055))))

(declare-fun lt!130645 () List!3837)

(assert (=> b!259283 (= res!126785 (containsKey!305 lt!130645 (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun b!259284 () Bool)

(declare-fun e!168056 () List!3837)

(assert (=> b!259284 (= e!168056 call!24690)))

(declare-fun bm!24688 () Bool)

(declare-fun call!24692 () List!3837)

(assert (=> bm!24688 (= call!24692 call!24691)))

(declare-fun e!168054 () List!3837)

(declare-fun b!259285 () Bool)

(assert (=> b!259285 (= e!168054 (insertStrictlySorted!173 (t!8910 (toList!1946 lt!130355)) (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun b!259286 () Bool)

(assert (=> b!259286 (= e!168056 e!168058)))

(declare-fun c!43985 () Bool)

(assert (=> b!259286 (= c!43985 (and ((_ is Cons!3833) (toList!1946 lt!130355)) (= (_1!2477 (h!4496 (toList!1946 lt!130355))) (_1!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun b!259287 () Bool)

(assert (=> b!259287 (= e!168055 (contains!1883 lt!130645 (tuple2!4935 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun c!43984 () Bool)

(declare-fun b!259288 () Bool)

(assert (=> b!259288 (= c!43984 (and ((_ is Cons!3833) (toList!1946 lt!130355)) (bvsgt (_1!2477 (h!4496 (toList!1946 lt!130355))) (_1!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun e!168057 () List!3837)

(assert (=> b!259288 (= e!168058 e!168057)))

(declare-fun b!259289 () Bool)

(assert (=> b!259289 (= e!168057 call!24692)))

(declare-fun d!62177 () Bool)

(assert (=> d!62177 e!168055))

(declare-fun res!126784 () Bool)

(assert (=> d!62177 (=> (not res!126784) (not e!168055))))

(assert (=> d!62177 (= res!126784 (isStrictlySorted!369 lt!130645))))

(assert (=> d!62177 (= lt!130645 e!168056)))

(declare-fun c!43983 () Bool)

(assert (=> d!62177 (= c!43983 (and ((_ is Cons!3833) (toList!1946 lt!130355)) (bvslt (_1!2477 (h!4496 (toList!1946 lt!130355))) (_1!2477 (tuple2!4935 key!932 v!346)))))))

(assert (=> d!62177 (isStrictlySorted!369 (toList!1946 lt!130355))))

(assert (=> d!62177 (= (insertStrictlySorted!173 (toList!1946 lt!130355) (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))) lt!130645)))

(declare-fun b!259282 () Bool)

(assert (=> b!259282 (= e!168054 (ite c!43985 (t!8910 (toList!1946 lt!130355)) (ite c!43984 (Cons!3833 (h!4496 (toList!1946 lt!130355)) (t!8910 (toList!1946 lt!130355))) Nil!3834)))))

(declare-fun bm!24689 () Bool)

(declare-fun $colon$colon!104 (List!3837 tuple2!4934) List!3837)

(assert (=> bm!24689 (= call!24690 ($colon$colon!104 e!168054 (ite c!43983 (h!4496 (toList!1946 lt!130355)) (tuple2!4935 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))))

(declare-fun c!43982 () Bool)

(assert (=> bm!24689 (= c!43982 c!43983)))

(declare-fun b!259290 () Bool)

(assert (=> b!259290 (= e!168057 call!24692)))

(assert (= (and d!62177 c!43983) b!259284))

(assert (= (and d!62177 (not c!43983)) b!259286))

(assert (= (and b!259286 c!43985) b!259281))

(assert (= (and b!259286 (not c!43985)) b!259288))

(assert (= (and b!259288 c!43984) b!259290))

(assert (= (and b!259288 (not c!43984)) b!259289))

(assert (= (or b!259290 b!259289) bm!24688))

(assert (= (or b!259281 bm!24688) bm!24687))

(assert (= (or b!259284 bm!24687) bm!24689))

(assert (= (and bm!24689 c!43982) b!259285))

(assert (= (and bm!24689 (not c!43982)) b!259282))

(assert (= (and d!62177 res!126784) b!259283))

(assert (= (and b!259283 res!126785) b!259287))

(declare-fun m!274847 () Bool)

(assert (=> bm!24689 m!274847))

(declare-fun m!274849 () Bool)

(assert (=> d!62177 m!274849))

(assert (=> d!62177 m!274695))

(declare-fun m!274851 () Bool)

(assert (=> b!259285 m!274851))

(declare-fun m!274853 () Bool)

(assert (=> b!259283 m!274853))

(declare-fun m!274855 () Bool)

(assert (=> b!259287 m!274855))

(assert (=> d!62053 d!62177))

(declare-fun d!62179 () Bool)

(assert (=> d!62179 (= (apply!256 (+!690 lt!130527 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))) lt!130537) (get!3064 (getValueByKey!313 (toList!1946 (+!690 lt!130527 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))) lt!130537)))))

(declare-fun bs!9133 () Bool)

(assert (= bs!9133 d!62179))

(declare-fun m!274857 () Bool)

(assert (=> bs!9133 m!274857))

(assert (=> bs!9133 m!274857))

(declare-fun m!274859 () Bool)

(assert (=> bs!9133 m!274859))

(assert (=> b!259028 d!62179))

(declare-fun d!62181 () Bool)

(assert (=> d!62181 (= (apply!256 (+!690 lt!130524 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))) lt!130529) (get!3064 (getValueByKey!313 (toList!1946 (+!690 lt!130524 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))) lt!130529)))))

(declare-fun bs!9134 () Bool)

(assert (= bs!9134 d!62181))

(declare-fun m!274861 () Bool)

(assert (=> bs!9134 m!274861))

(assert (=> bs!9134 m!274861))

(declare-fun m!274863 () Bool)

(assert (=> bs!9134 m!274863))

(assert (=> b!259028 d!62181))

(declare-fun d!62183 () Bool)

(assert (=> d!62183 (= (apply!256 (+!690 lt!130524 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))) lt!130529) (apply!256 lt!130524 lt!130529))))

(declare-fun lt!130648 () Unit!8042)

(declare-fun choose!1266 (ListLongMap!3861 (_ BitVec 64) V!8459 (_ BitVec 64)) Unit!8042)

(assert (=> d!62183 (= lt!130648 (choose!1266 lt!130524 lt!130540 (minValue!4615 thiss!1504) lt!130529))))

(declare-fun e!168061 () Bool)

(assert (=> d!62183 e!168061))

(declare-fun res!126788 () Bool)

(assert (=> d!62183 (=> (not res!126788) (not e!168061))))

(assert (=> d!62183 (= res!126788 (contains!1881 lt!130524 lt!130529))))

(assert (=> d!62183 (= (addApplyDifferent!232 lt!130524 lt!130540 (minValue!4615 thiss!1504) lt!130529) lt!130648)))

(declare-fun b!259294 () Bool)

(assert (=> b!259294 (= e!168061 (not (= lt!130529 lt!130540)))))

(assert (= (and d!62183 res!126788) b!259294))

(declare-fun m!274865 () Bool)

(assert (=> d!62183 m!274865))

(assert (=> d!62183 m!274593))

(declare-fun m!274867 () Bool)

(assert (=> d!62183 m!274867))

(assert (=> d!62183 m!274607))

(assert (=> d!62183 m!274593))

(assert (=> d!62183 m!274595))

(assert (=> b!259028 d!62183))

(declare-fun d!62185 () Bool)

(assert (=> d!62185 (= (apply!256 lt!130524 lt!130529) (get!3064 (getValueByKey!313 (toList!1946 lt!130524) lt!130529)))))

(declare-fun bs!9135 () Bool)

(assert (= bs!9135 d!62185))

(declare-fun m!274869 () Bool)

(assert (=> bs!9135 m!274869))

(assert (=> bs!9135 m!274869))

(declare-fun m!274871 () Bool)

(assert (=> bs!9135 m!274871))

(assert (=> b!259028 d!62185))

(declare-fun d!62187 () Bool)

(declare-fun e!168062 () Bool)

(assert (=> d!62187 e!168062))

(declare-fun res!126790 () Bool)

(assert (=> d!62187 (=> (not res!126790) (not e!168062))))

(declare-fun lt!130650 () ListLongMap!3861)

(assert (=> d!62187 (= res!126790 (contains!1881 lt!130650 (_1!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))))))

(declare-fun lt!130649 () List!3837)

(assert (=> d!62187 (= lt!130650 (ListLongMap!3862 lt!130649))))

(declare-fun lt!130651 () Unit!8042)

(declare-fun lt!130652 () Unit!8042)

(assert (=> d!62187 (= lt!130651 lt!130652)))

(assert (=> d!62187 (= (getValueByKey!313 lt!130649 (_1!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))))))

(assert (=> d!62187 (= lt!130652 (lemmaContainsTupThenGetReturnValue!171 lt!130649 (_1!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))))))

(assert (=> d!62187 (= lt!130649 (insertStrictlySorted!173 (toList!1946 lt!130528) (_1!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))))))

(assert (=> d!62187 (= (+!690 lt!130528 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))) lt!130650)))

(declare-fun b!259295 () Bool)

(declare-fun res!126789 () Bool)

(assert (=> b!259295 (=> (not res!126789) (not e!168062))))

(assert (=> b!259295 (= res!126789 (= (getValueByKey!313 (toList!1946 lt!130650) (_1!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))))))))

(declare-fun b!259296 () Bool)

(assert (=> b!259296 (= e!168062 (contains!1883 (toList!1946 lt!130650) (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))))))

(assert (= (and d!62187 res!126790) b!259295))

(assert (= (and b!259295 res!126789) b!259296))

(declare-fun m!274873 () Bool)

(assert (=> d!62187 m!274873))

(declare-fun m!274875 () Bool)

(assert (=> d!62187 m!274875))

(declare-fun m!274877 () Bool)

(assert (=> d!62187 m!274877))

(declare-fun m!274879 () Bool)

(assert (=> d!62187 m!274879))

(declare-fun m!274881 () Bool)

(assert (=> b!259295 m!274881))

(declare-fun m!274883 () Bool)

(assert (=> b!259296 m!274883))

(assert (=> b!259028 d!62187))

(declare-fun d!62189 () Bool)

(declare-fun e!168063 () Bool)

(assert (=> d!62189 e!168063))

(declare-fun res!126792 () Bool)

(assert (=> d!62189 (=> (not res!126792) (not e!168063))))

(declare-fun lt!130654 () ListLongMap!3861)

(assert (=> d!62189 (= res!126792 (contains!1881 lt!130654 (_1!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))))))

(declare-fun lt!130653 () List!3837)

(assert (=> d!62189 (= lt!130654 (ListLongMap!3862 lt!130653))))

(declare-fun lt!130655 () Unit!8042)

(declare-fun lt!130656 () Unit!8042)

(assert (=> d!62189 (= lt!130655 lt!130656)))

(assert (=> d!62189 (= (getValueByKey!313 lt!130653 (_1!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))))))

(assert (=> d!62189 (= lt!130656 (lemmaContainsTupThenGetReturnValue!171 lt!130653 (_1!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))))))

(assert (=> d!62189 (= lt!130653 (insertStrictlySorted!173 (toList!1946 lt!130524) (_1!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))))))

(assert (=> d!62189 (= (+!690 lt!130524 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))) lt!130654)))

(declare-fun b!259297 () Bool)

(declare-fun res!126791 () Bool)

(assert (=> b!259297 (=> (not res!126791) (not e!168063))))

(assert (=> b!259297 (= res!126791 (= (getValueByKey!313 (toList!1946 lt!130654) (_1!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))))))))

(declare-fun b!259298 () Bool)

(assert (=> b!259298 (= e!168063 (contains!1883 (toList!1946 lt!130654) (tuple2!4935 lt!130540 (minValue!4615 thiss!1504))))))

(assert (= (and d!62189 res!126792) b!259297))

(assert (= (and b!259297 res!126791) b!259298))

(declare-fun m!274885 () Bool)

(assert (=> d!62189 m!274885))

(declare-fun m!274887 () Bool)

(assert (=> d!62189 m!274887))

(declare-fun m!274889 () Bool)

(assert (=> d!62189 m!274889))

(declare-fun m!274891 () Bool)

(assert (=> d!62189 m!274891))

(declare-fun m!274893 () Bool)

(assert (=> b!259297 m!274893))

(declare-fun m!274895 () Bool)

(assert (=> b!259298 m!274895))

(assert (=> b!259028 d!62189))

(declare-fun d!62191 () Bool)

(assert (=> d!62191 (= (apply!256 lt!130527 lt!130537) (get!3064 (getValueByKey!313 (toList!1946 lt!130527) lt!130537)))))

(declare-fun bs!9136 () Bool)

(assert (= bs!9136 d!62191))

(declare-fun m!274897 () Bool)

(assert (=> bs!9136 m!274897))

(assert (=> bs!9136 m!274897))

(declare-fun m!274899 () Bool)

(assert (=> bs!9136 m!274899))

(assert (=> b!259028 d!62191))

(declare-fun d!62193 () Bool)

(assert (=> d!62193 (= (apply!256 lt!130528 lt!130535) (get!3064 (getValueByKey!313 (toList!1946 lt!130528) lt!130535)))))

(declare-fun bs!9137 () Bool)

(assert (= bs!9137 d!62193))

(declare-fun m!274901 () Bool)

(assert (=> bs!9137 m!274901))

(assert (=> bs!9137 m!274901))

(declare-fun m!274903 () Bool)

(assert (=> bs!9137 m!274903))

(assert (=> b!259028 d!62193))

(declare-fun d!62195 () Bool)

(declare-fun e!168065 () Bool)

(assert (=> d!62195 e!168065))

(declare-fun res!126793 () Bool)

(assert (=> d!62195 (=> res!126793 e!168065)))

(declare-fun lt!130658 () Bool)

(assert (=> d!62195 (= res!126793 (not lt!130658))))

(declare-fun lt!130659 () Bool)

(assert (=> d!62195 (= lt!130658 lt!130659)))

(declare-fun lt!130660 () Unit!8042)

(declare-fun e!168064 () Unit!8042)

(assert (=> d!62195 (= lt!130660 e!168064)))

(declare-fun c!43986 () Bool)

(assert (=> d!62195 (= c!43986 lt!130659)))

(assert (=> d!62195 (= lt!130659 (containsKey!305 (toList!1946 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))) lt!130522))))

(assert (=> d!62195 (= (contains!1881 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))) lt!130522) lt!130658)))

(declare-fun b!259299 () Bool)

(declare-fun lt!130657 () Unit!8042)

(assert (=> b!259299 (= e!168064 lt!130657)))

(assert (=> b!259299 (= lt!130657 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))) lt!130522))))

(assert (=> b!259299 (isDefined!255 (getValueByKey!313 (toList!1946 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))) lt!130522))))

(declare-fun b!259300 () Bool)

(declare-fun Unit!8059 () Unit!8042)

(assert (=> b!259300 (= e!168064 Unit!8059)))

(declare-fun b!259301 () Bool)

(assert (=> b!259301 (= e!168065 (isDefined!255 (getValueByKey!313 (toList!1946 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))) lt!130522)))))

(assert (= (and d!62195 c!43986) b!259299))

(assert (= (and d!62195 (not c!43986)) b!259300))

(assert (= (and d!62195 (not res!126793)) b!259301))

(declare-fun m!274905 () Bool)

(assert (=> d!62195 m!274905))

(declare-fun m!274907 () Bool)

(assert (=> b!259299 m!274907))

(declare-fun m!274909 () Bool)

(assert (=> b!259299 m!274909))

(assert (=> b!259299 m!274909))

(declare-fun m!274911 () Bool)

(assert (=> b!259299 m!274911))

(assert (=> b!259301 m!274909))

(assert (=> b!259301 m!274909))

(assert (=> b!259301 m!274911))

(assert (=> b!259028 d!62195))

(declare-fun d!62197 () Bool)

(declare-fun e!168066 () Bool)

(assert (=> d!62197 e!168066))

(declare-fun res!126795 () Bool)

(assert (=> d!62197 (=> (not res!126795) (not e!168066))))

(declare-fun lt!130662 () ListLongMap!3861)

(assert (=> d!62197 (= res!126795 (contains!1881 lt!130662 (_1!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))))))

(declare-fun lt!130661 () List!3837)

(assert (=> d!62197 (= lt!130662 (ListLongMap!3862 lt!130661))))

(declare-fun lt!130663 () Unit!8042)

(declare-fun lt!130664 () Unit!8042)

(assert (=> d!62197 (= lt!130663 lt!130664)))

(assert (=> d!62197 (= (getValueByKey!313 lt!130661 (_1!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62197 (= lt!130664 (lemmaContainsTupThenGetReturnValue!171 lt!130661 (_1!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62197 (= lt!130661 (insertStrictlySorted!173 (toList!1946 lt!130536) (_1!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62197 (= (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))) lt!130662)))

(declare-fun b!259302 () Bool)

(declare-fun res!126794 () Bool)

(assert (=> b!259302 (=> (not res!126794) (not e!168066))))

(assert (=> b!259302 (= res!126794 (= (getValueByKey!313 (toList!1946 lt!130662) (_1!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))))))))

(declare-fun b!259303 () Bool)

(assert (=> b!259303 (= e!168066 (contains!1883 (toList!1946 lt!130662) (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))))))

(assert (= (and d!62197 res!126795) b!259302))

(assert (= (and b!259302 res!126794) b!259303))

(declare-fun m!274913 () Bool)

(assert (=> d!62197 m!274913))

(declare-fun m!274915 () Bool)

(assert (=> d!62197 m!274915))

(declare-fun m!274917 () Bool)

(assert (=> d!62197 m!274917))

(declare-fun m!274919 () Bool)

(assert (=> d!62197 m!274919))

(declare-fun m!274921 () Bool)

(assert (=> b!259302 m!274921))

(declare-fun m!274923 () Bool)

(assert (=> b!259303 m!274923))

(assert (=> b!259028 d!62197))

(declare-fun d!62199 () Bool)

(assert (=> d!62199 (contains!1881 (+!690 lt!130536 (tuple2!4935 lt!130526 (zeroValue!4615 thiss!1504))) lt!130522)))

(declare-fun lt!130667 () Unit!8042)

(declare-fun choose!1267 (ListLongMap!3861 (_ BitVec 64) V!8459 (_ BitVec 64)) Unit!8042)

(assert (=> d!62199 (= lt!130667 (choose!1267 lt!130536 lt!130526 (zeroValue!4615 thiss!1504) lt!130522))))

(assert (=> d!62199 (contains!1881 lt!130536 lt!130522)))

(assert (=> d!62199 (= (addStillContains!232 lt!130536 lt!130526 (zeroValue!4615 thiss!1504) lt!130522) lt!130667)))

(declare-fun bs!9138 () Bool)

(assert (= bs!9138 d!62199))

(assert (=> bs!9138 m!274583))

(assert (=> bs!9138 m!274583))

(assert (=> bs!9138 m!274585))

(declare-fun m!274925 () Bool)

(assert (=> bs!9138 m!274925))

(declare-fun m!274927 () Bool)

(assert (=> bs!9138 m!274927))

(assert (=> b!259028 d!62199))

(declare-fun d!62201 () Bool)

(assert (=> d!62201 (= (apply!256 (+!690 lt!130528 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))) lt!130535) (apply!256 lt!130528 lt!130535))))

(declare-fun lt!130668 () Unit!8042)

(assert (=> d!62201 (= lt!130668 (choose!1266 lt!130528 lt!130532 (minValue!4615 thiss!1504) lt!130535))))

(declare-fun e!168067 () Bool)

(assert (=> d!62201 e!168067))

(declare-fun res!126796 () Bool)

(assert (=> d!62201 (=> (not res!126796) (not e!168067))))

(assert (=> d!62201 (= res!126796 (contains!1881 lt!130528 lt!130535))))

(assert (=> d!62201 (= (addApplyDifferent!232 lt!130528 lt!130532 (minValue!4615 thiss!1504) lt!130535) lt!130668)))

(declare-fun b!259305 () Bool)

(assert (=> b!259305 (= e!168067 (not (= lt!130535 lt!130532)))))

(assert (= (and d!62201 res!126796) b!259305))

(declare-fun m!274929 () Bool)

(assert (=> d!62201 m!274929))

(assert (=> d!62201 m!274581))

(declare-fun m!274931 () Bool)

(assert (=> d!62201 m!274931))

(assert (=> d!62201 m!274587))

(assert (=> d!62201 m!274581))

(assert (=> d!62201 m!274611))

(assert (=> b!259028 d!62201))

(declare-fun d!62203 () Bool)

(declare-fun e!168068 () Bool)

(assert (=> d!62203 e!168068))

(declare-fun res!126798 () Bool)

(assert (=> d!62203 (=> (not res!126798) (not e!168068))))

(declare-fun lt!130670 () ListLongMap!3861)

(assert (=> d!62203 (= res!126798 (contains!1881 lt!130670 (_1!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))))))

(declare-fun lt!130669 () List!3837)

(assert (=> d!62203 (= lt!130670 (ListLongMap!3862 lt!130669))))

(declare-fun lt!130671 () Unit!8042)

(declare-fun lt!130672 () Unit!8042)

(assert (=> d!62203 (= lt!130671 lt!130672)))

(assert (=> d!62203 (= (getValueByKey!313 lt!130669 (_1!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62203 (= lt!130672 (lemmaContainsTupThenGetReturnValue!171 lt!130669 (_1!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62203 (= lt!130669 (insertStrictlySorted!173 (toList!1946 lt!130527) (_1!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62203 (= (+!690 lt!130527 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))) lt!130670)))

(declare-fun b!259306 () Bool)

(declare-fun res!126797 () Bool)

(assert (=> b!259306 (=> (not res!126797) (not e!168068))))

(assert (=> b!259306 (= res!126797 (= (getValueByKey!313 (toList!1946 lt!130670) (_1!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))))))))

(declare-fun b!259307 () Bool)

(assert (=> b!259307 (= e!168068 (contains!1883 (toList!1946 lt!130670) (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))))))

(assert (= (and d!62203 res!126798) b!259306))

(assert (= (and b!259306 res!126797) b!259307))

(declare-fun m!274933 () Bool)

(assert (=> d!62203 m!274933))

(declare-fun m!274935 () Bool)

(assert (=> d!62203 m!274935))

(declare-fun m!274937 () Bool)

(assert (=> d!62203 m!274937))

(declare-fun m!274939 () Bool)

(assert (=> d!62203 m!274939))

(declare-fun m!274941 () Bool)

(assert (=> b!259306 m!274941))

(declare-fun m!274943 () Bool)

(assert (=> b!259307 m!274943))

(assert (=> b!259028 d!62203))

(assert (=> b!259028 d!62131))

(declare-fun d!62205 () Bool)

(assert (=> d!62205 (= (apply!256 (+!690 lt!130527 (tuple2!4935 lt!130530 (zeroValue!4615 thiss!1504))) lt!130537) (apply!256 lt!130527 lt!130537))))

(declare-fun lt!130673 () Unit!8042)

(assert (=> d!62205 (= lt!130673 (choose!1266 lt!130527 lt!130530 (zeroValue!4615 thiss!1504) lt!130537))))

(declare-fun e!168069 () Bool)

(assert (=> d!62205 e!168069))

(declare-fun res!126799 () Bool)

(assert (=> d!62205 (=> (not res!126799) (not e!168069))))

(assert (=> d!62205 (= res!126799 (contains!1881 lt!130527 lt!130537))))

(assert (=> d!62205 (= (addApplyDifferent!232 lt!130527 lt!130530 (zeroValue!4615 thiss!1504) lt!130537) lt!130673)))

(declare-fun b!259308 () Bool)

(assert (=> b!259308 (= e!168069 (not (= lt!130537 lt!130530)))))

(assert (= (and d!62205 res!126799) b!259308))

(declare-fun m!274945 () Bool)

(assert (=> d!62205 m!274945))

(assert (=> d!62205 m!274589))

(declare-fun m!274947 () Bool)

(assert (=> d!62205 m!274947))

(assert (=> d!62205 m!274597))

(assert (=> d!62205 m!274589))

(assert (=> d!62205 m!274603))

(assert (=> b!259028 d!62205))

(declare-fun d!62207 () Bool)

(assert (=> d!62207 (= (apply!256 (+!690 lt!130528 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504))) lt!130535) (get!3064 (getValueByKey!313 (toList!1946 (+!690 lt!130528 (tuple2!4935 lt!130532 (minValue!4615 thiss!1504)))) lt!130535)))))

(declare-fun bs!9139 () Bool)

(assert (= bs!9139 d!62207))

(declare-fun m!274949 () Bool)

(assert (=> bs!9139 m!274949))

(assert (=> bs!9139 m!274949))

(declare-fun m!274951 () Bool)

(assert (=> bs!9139 m!274951))

(assert (=> b!259028 d!62207))

(declare-fun d!62209 () Bool)

(assert (=> d!62209 (= (validKeyInArray!0 (select (arr!5950 lt!130346) index!297)) (and (not (= (select (arr!5950 lt!130346) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5950 lt!130346) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258996 d!62209))

(declare-fun d!62211 () Bool)

(assert (=> d!62211 (arrayContainsKey!0 lt!130346 lt!130428 #b00000000000000000000000000000000)))

(declare-fun lt!130674 () Unit!8042)

(assert (=> d!62211 (= lt!130674 (choose!13 lt!130346 lt!130428 #b00000000000000000000000000000000))))

(assert (=> d!62211 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!62211 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130346 lt!130428 #b00000000000000000000000000000000) lt!130674)))

(declare-fun bs!9140 () Bool)

(assert (= bs!9140 d!62211))

(assert (=> bs!9140 m!274477))

(declare-fun m!274953 () Bool)

(assert (=> bs!9140 m!274953))

(assert (=> b!258923 d!62211))

(declare-fun d!62213 () Bool)

(declare-fun res!126800 () Bool)

(declare-fun e!168070 () Bool)

(assert (=> d!62213 (=> res!126800 e!168070)))

(assert (=> d!62213 (= res!126800 (= (select (arr!5950 lt!130346) #b00000000000000000000000000000000) lt!130428))))

(assert (=> d!62213 (= (arrayContainsKey!0 lt!130346 lt!130428 #b00000000000000000000000000000000) e!168070)))

(declare-fun b!259309 () Bool)

(declare-fun e!168071 () Bool)

(assert (=> b!259309 (= e!168070 e!168071)))

(declare-fun res!126801 () Bool)

(assert (=> b!259309 (=> (not res!126801) (not e!168071))))

(assert (=> b!259309 (= res!126801 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 lt!130346)))))

(declare-fun b!259310 () Bool)

(assert (=> b!259310 (= e!168071 (arrayContainsKey!0 lt!130346 lt!130428 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62213 (not res!126800)) b!259309))

(assert (= (and b!259309 res!126801) b!259310))

(assert (=> d!62213 m!274461))

(declare-fun m!274955 () Bool)

(assert (=> b!259310 m!274955))

(assert (=> b!258923 d!62213))

(declare-fun b!259311 () Bool)

(declare-fun e!168074 () SeekEntryResult!1187)

(declare-fun lt!130676 () SeekEntryResult!1187)

(assert (=> b!259311 (= e!168074 (Found!1187 (index!6920 lt!130676)))))

(declare-fun b!259312 () Bool)

(declare-fun e!168073 () SeekEntryResult!1187)

(assert (=> b!259312 (= e!168073 Undefined!1187)))

(declare-fun d!62215 () Bool)

(declare-fun lt!130677 () SeekEntryResult!1187)

(assert (=> d!62215 (and (or ((_ is Undefined!1187) lt!130677) (not ((_ is Found!1187) lt!130677)) (and (bvsge (index!6919 lt!130677) #b00000000000000000000000000000000) (bvslt (index!6919 lt!130677) (size!6298 lt!130346)))) (or ((_ is Undefined!1187) lt!130677) ((_ is Found!1187) lt!130677) (not ((_ is MissingZero!1187) lt!130677)) (and (bvsge (index!6918 lt!130677) #b00000000000000000000000000000000) (bvslt (index!6918 lt!130677) (size!6298 lt!130346)))) (or ((_ is Undefined!1187) lt!130677) ((_ is Found!1187) lt!130677) ((_ is MissingZero!1187) lt!130677) (not ((_ is MissingVacant!1187) lt!130677)) (and (bvsge (index!6921 lt!130677) #b00000000000000000000000000000000) (bvslt (index!6921 lt!130677) (size!6298 lt!130346)))) (or ((_ is Undefined!1187) lt!130677) (ite ((_ is Found!1187) lt!130677) (= (select (arr!5950 lt!130346) (index!6919 lt!130677)) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1187) lt!130677) (= (select (arr!5950 lt!130346) (index!6918 lt!130677)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1187) lt!130677) (= (select (arr!5950 lt!130346) (index!6921 lt!130677)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62215 (= lt!130677 e!168073)))

(declare-fun c!43987 () Bool)

(assert (=> d!62215 (= c!43987 (and ((_ is Intermediate!1187) lt!130676) (undefined!1999 lt!130676)))))

(assert (=> d!62215 (= lt!130676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) (mask!11082 thiss!1504)) (select (arr!5950 lt!130346) #b00000000000000000000000000000000) lt!130346 (mask!11082 thiss!1504)))))

(assert (=> d!62215 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62215 (= (seekEntryOrOpen!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) lt!130346 (mask!11082 thiss!1504)) lt!130677)))

(declare-fun b!259313 () Bool)

(assert (=> b!259313 (= e!168073 e!168074)))

(declare-fun lt!130675 () (_ BitVec 64))

(assert (=> b!259313 (= lt!130675 (select (arr!5950 lt!130346) (index!6920 lt!130676)))))

(declare-fun c!43989 () Bool)

(assert (=> b!259313 (= c!43989 (= lt!130675 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!259314 () Bool)

(declare-fun e!168072 () SeekEntryResult!1187)

(assert (=> b!259314 (= e!168072 (MissingZero!1187 (index!6920 lt!130676)))))

(declare-fun b!259315 () Bool)

(declare-fun c!43988 () Bool)

(assert (=> b!259315 (= c!43988 (= lt!130675 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259315 (= e!168074 e!168072)))

(declare-fun b!259316 () Bool)

(assert (=> b!259316 (= e!168072 (seekKeyOrZeroReturnVacant!0 (x!25081 lt!130676) (index!6920 lt!130676) (index!6920 lt!130676) (select (arr!5950 lt!130346) #b00000000000000000000000000000000) lt!130346 (mask!11082 thiss!1504)))))

(assert (= (and d!62215 c!43987) b!259312))

(assert (= (and d!62215 (not c!43987)) b!259313))

(assert (= (and b!259313 c!43989) b!259311))

(assert (= (and b!259313 (not c!43989)) b!259315))

(assert (= (and b!259315 c!43988) b!259314))

(assert (= (and b!259315 (not c!43988)) b!259316))

(declare-fun m!274957 () Bool)

(assert (=> d!62215 m!274957))

(assert (=> d!62215 m!274461))

(declare-fun m!274959 () Bool)

(assert (=> d!62215 m!274959))

(declare-fun m!274961 () Bool)

(assert (=> d!62215 m!274961))

(assert (=> d!62215 m!274461))

(assert (=> d!62215 m!274957))

(assert (=> d!62215 m!274301))

(declare-fun m!274963 () Bool)

(assert (=> d!62215 m!274963))

(declare-fun m!274965 () Bool)

(assert (=> d!62215 m!274965))

(declare-fun m!274967 () Bool)

(assert (=> b!259313 m!274967))

(assert (=> b!259316 m!274461))

(declare-fun m!274969 () Bool)

(assert (=> b!259316 m!274969))

(assert (=> b!258923 d!62215))

(declare-fun b!259317 () Bool)

(declare-fun e!168075 () (_ BitVec 32))

(declare-fun call!24693 () (_ BitVec 32))

(assert (=> b!259317 (= e!168075 (bvadd #b00000000000000000000000000000001 call!24693))))

(declare-fun d!62217 () Bool)

(declare-fun lt!130678 () (_ BitVec 32))

(assert (=> d!62217 (and (bvsge lt!130678 #b00000000000000000000000000000000) (bvsle lt!130678 (bvsub (size!6298 lt!130346) index!297)))))

(declare-fun e!168076 () (_ BitVec 32))

(assert (=> d!62217 (= lt!130678 e!168076)))

(declare-fun c!43991 () Bool)

(assert (=> d!62217 (= c!43991 (bvsge index!297 (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (=> d!62217 (and (bvsle index!297 (bvadd index!297 #b00000000000000000000000000000001)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd index!297 #b00000000000000000000000000000001) (size!6298 lt!130346)))))

(assert (=> d!62217 (= (arrayCountValidKeys!0 lt!130346 index!297 (bvadd index!297 #b00000000000000000000000000000001)) lt!130678)))

(declare-fun b!259318 () Bool)

(assert (=> b!259318 (= e!168075 call!24693)))

(declare-fun b!259319 () Bool)

(assert (=> b!259319 (= e!168076 e!168075)))

(declare-fun c!43990 () Bool)

(assert (=> b!259319 (= c!43990 (validKeyInArray!0 (select (arr!5950 lt!130346) index!297)))))

(declare-fun bm!24690 () Bool)

(assert (=> bm!24690 (= call!24693 (arrayCountValidKeys!0 lt!130346 (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(declare-fun b!259320 () Bool)

(assert (=> b!259320 (= e!168076 #b00000000000000000000000000000000)))

(assert (= (and d!62217 c!43991) b!259320))

(assert (= (and d!62217 (not c!43991)) b!259319))

(assert (= (and b!259319 c!43990) b!259317))

(assert (= (and b!259319 (not c!43990)) b!259318))

(assert (= (or b!259317 b!259318) bm!24690))

(assert (=> b!259319 m!274541))

(assert (=> b!259319 m!274541))

(assert (=> b!259319 m!274543))

(declare-fun m!274971 () Bool)

(assert (=> bm!24690 m!274971))

(assert (=> d!62071 d!62217))

(declare-fun d!62219 () Bool)

(assert (=> d!62219 (= (arrayCountValidKeys!0 lt!130346 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(assert (=> d!62219 true))

(declare-fun _$85!24 () Unit!8042)

(assert (=> d!62219 (= (choose!2 lt!130346 index!297) _$85!24)))

(declare-fun bs!9141 () Bool)

(assert (= bs!9141 d!62219))

(assert (=> bs!9141 m!274537))

(assert (=> d!62071 d!62219))

(declare-fun b!259321 () Bool)

(declare-fun e!168077 () (_ BitVec 32))

(declare-fun call!24694 () (_ BitVec 32))

(assert (=> b!259321 (= e!168077 (bvadd #b00000000000000000000000000000001 call!24694))))

(declare-fun d!62221 () Bool)

(declare-fun lt!130679 () (_ BitVec 32))

(assert (=> d!62221 (and (bvsge lt!130679 #b00000000000000000000000000000000) (bvsle lt!130679 (bvsub (size!6298 (_keys!6948 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!168078 () (_ BitVec 32))

(assert (=> d!62221 (= lt!130679 e!168078)))

(declare-fun c!43993 () Bool)

(assert (=> d!62221 (= c!43993 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62221 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6298 (_keys!6948 thiss!1504)) (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62221 (= (arrayCountValidKeys!0 (_keys!6948 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))) lt!130679)))

(declare-fun b!259322 () Bool)

(assert (=> b!259322 (= e!168077 call!24694)))

(declare-fun b!259323 () Bool)

(assert (=> b!259323 (= e!168078 e!168077)))

(declare-fun c!43992 () Bool)

(assert (=> b!259323 (= c!43992 (validKeyInArray!0 (select (arr!5950 (_keys!6948 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!24691 () Bool)

(assert (=> bm!24691 (= call!24694 (arrayCountValidKeys!0 (_keys!6948 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259324 () Bool)

(assert (=> b!259324 (= e!168078 #b00000000000000000000000000000000)))

(assert (= (and d!62221 c!43993) b!259324))

(assert (= (and d!62221 (not c!43993)) b!259323))

(assert (= (and b!259323 c!43992) b!259321))

(assert (= (and b!259323 (not c!43992)) b!259322))

(assert (= (or b!259321 b!259322) bm!24691))

(declare-fun m!274973 () Bool)

(assert (=> b!259323 m!274973))

(assert (=> b!259323 m!274973))

(declare-fun m!274975 () Bool)

(assert (=> b!259323 m!274975))

(declare-fun m!274977 () Bool)

(assert (=> bm!24691 m!274977))

(assert (=> bm!24627 d!62221))

(declare-fun d!62223 () Bool)

(declare-fun res!126802 () Bool)

(declare-fun e!168079 () Bool)

(assert (=> d!62223 (=> res!126802 e!168079)))

(assert (=> d!62223 (= res!126802 (= (select (arr!5950 lt!130346) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!62223 (= (arrayContainsKey!0 lt!130346 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!168079)))

(declare-fun b!259325 () Bool)

(declare-fun e!168080 () Bool)

(assert (=> b!259325 (= e!168079 e!168080)))

(declare-fun res!126803 () Bool)

(assert (=> b!259325 (=> (not res!126803) (not e!168080))))

(assert (=> b!259325 (= res!126803 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6298 lt!130346)))))

(declare-fun b!259326 () Bool)

(assert (=> b!259326 (= e!168080 (arrayContainsKey!0 lt!130346 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!62223 (not res!126802)) b!259325))

(assert (= (and b!259325 res!126803) b!259326))

(assert (=> d!62223 m!274759))

(declare-fun m!274979 () Bool)

(assert (=> b!259326 m!274979))

(assert (=> b!258895 d!62223))

(declare-fun b!259345 () Bool)

(declare-fun lt!130684 () SeekEntryResult!1187)

(assert (=> b!259345 (and (bvsge (index!6920 lt!130684) #b00000000000000000000000000000000) (bvslt (index!6920 lt!130684) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun res!126812 () Bool)

(assert (=> b!259345 (= res!126812 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6920 lt!130684)) key!932))))

(declare-fun e!168091 () Bool)

(assert (=> b!259345 (=> res!126812 e!168091)))

(declare-fun e!168092 () Bool)

(assert (=> b!259345 (= e!168092 e!168091)))

(declare-fun b!259346 () Bool)

(declare-fun e!168093 () Bool)

(assert (=> b!259346 (= e!168093 e!168092)))

(declare-fun res!126811 () Bool)

(assert (=> b!259346 (= res!126811 (and ((_ is Intermediate!1187) lt!130684) (not (undefined!1999 lt!130684)) (bvslt (x!25081 lt!130684) #b01111111111111111111111111111110) (bvsge (x!25081 lt!130684) #b00000000000000000000000000000000) (bvsge (x!25081 lt!130684) #b00000000000000000000000000000000)))))

(assert (=> b!259346 (=> (not res!126811) (not e!168092))))

(declare-fun b!259347 () Bool)

(declare-fun e!168094 () SeekEntryResult!1187)

(assert (=> b!259347 (= e!168094 (Intermediate!1187 true (toIndex!0 key!932 (mask!11082 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!259348 () Bool)

(assert (=> b!259348 (and (bvsge (index!6920 lt!130684) #b00000000000000000000000000000000) (bvslt (index!6920 lt!130684) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun res!126810 () Bool)

(assert (=> b!259348 (= res!126810 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6920 lt!130684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259348 (=> res!126810 e!168091)))

(declare-fun b!259349 () Bool)

(assert (=> b!259349 (and (bvsge (index!6920 lt!130684) #b00000000000000000000000000000000) (bvslt (index!6920 lt!130684) (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> b!259349 (= e!168091 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6920 lt!130684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!62225 () Bool)

(assert (=> d!62225 e!168093))

(declare-fun c!44002 () Bool)

(assert (=> d!62225 (= c!44002 (and ((_ is Intermediate!1187) lt!130684) (undefined!1999 lt!130684)))))

(assert (=> d!62225 (= lt!130684 e!168094)))

(declare-fun c!44000 () Bool)

(assert (=> d!62225 (= c!44000 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!130685 () (_ BitVec 64))

(assert (=> d!62225 (= lt!130685 (select (arr!5950 (_keys!6948 thiss!1504)) (toIndex!0 key!932 (mask!11082 thiss!1504))))))

(assert (=> d!62225 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11082 thiss!1504)) key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)) lt!130684)))

(declare-fun b!259350 () Bool)

(declare-fun e!168095 () SeekEntryResult!1187)

(assert (=> b!259350 (= e!168094 e!168095)))

(declare-fun c!44001 () Bool)

(assert (=> b!259350 (= c!44001 (or (= lt!130685 key!932) (= (bvadd lt!130685 lt!130685) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!259351 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!259351 (= e!168095 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!11082 thiss!1504)) #b00000000000000000000000000000000 (mask!11082 thiss!1504)) key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun b!259352 () Bool)

(assert (=> b!259352 (= e!168095 (Intermediate!1187 false (toIndex!0 key!932 (mask!11082 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!259353 () Bool)

(assert (=> b!259353 (= e!168093 (bvsge (x!25081 lt!130684) #b01111111111111111111111111111110))))

(assert (= (and d!62225 c!44000) b!259347))

(assert (= (and d!62225 (not c!44000)) b!259350))

(assert (= (and b!259350 c!44001) b!259352))

(assert (= (and b!259350 (not c!44001)) b!259351))

(assert (= (and d!62225 c!44002) b!259353))

(assert (= (and d!62225 (not c!44002)) b!259346))

(assert (= (and b!259346 res!126811) b!259345))

(assert (= (and b!259345 (not res!126812)) b!259348))

(assert (= (and b!259348 (not res!126810)) b!259349))

(declare-fun m!274981 () Bool)

(assert (=> b!259348 m!274981))

(assert (=> b!259345 m!274981))

(assert (=> d!62225 m!274641))

(declare-fun m!274983 () Bool)

(assert (=> d!62225 m!274983))

(assert (=> d!62225 m!274301))

(assert (=> b!259351 m!274641))

(declare-fun m!274985 () Bool)

(assert (=> b!259351 m!274985))

(assert (=> b!259351 m!274985))

(declare-fun m!274987 () Bool)

(assert (=> b!259351 m!274987))

(assert (=> b!259349 m!274981))

(assert (=> d!62099 d!62225))

(declare-fun d!62227 () Bool)

(declare-fun lt!130691 () (_ BitVec 32))

(declare-fun lt!130690 () (_ BitVec 32))

(assert (=> d!62227 (= lt!130691 (bvmul (bvxor lt!130690 (bvlshr lt!130690 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!62227 (= lt!130690 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!62227 (and (bvsge (mask!11082 thiss!1504) #b00000000000000000000000000000000) (let ((res!126813 (let ((h!4499 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!25099 (bvmul (bvxor h!4499 (bvlshr h!4499 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!25099 (bvlshr x!25099 #b00000000000000000000000000001101)) (mask!11082 thiss!1504)))))) (and (bvslt res!126813 (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!126813 #b00000000000000000000000000000000))))))

(assert (=> d!62227 (= (toIndex!0 key!932 (mask!11082 thiss!1504)) (bvand (bvxor lt!130691 (bvlshr lt!130691 #b00000000000000000000000000001101)) (mask!11082 thiss!1504)))))

(assert (=> d!62099 d!62227))

(assert (=> d!62099 d!62079))

(declare-fun d!62229 () Bool)

(assert (=> d!62229 (= (apply!256 lt!130543 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3064 (getValueByKey!313 (toList!1946 lt!130543) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9142 () Bool)

(assert (= bs!9142 d!62229))

(assert (=> bs!9142 m!274771))

(assert (=> bs!9142 m!274771))

(declare-fun m!274989 () Bool)

(assert (=> bs!9142 m!274989))

(assert (=> b!259030 d!62229))

(declare-fun d!62231 () Bool)

(assert (=> d!62231 (= (apply!256 (+!690 lt!130481 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))) lt!130488) (apply!256 lt!130481 lt!130488))))

(declare-fun lt!130692 () Unit!8042)

(assert (=> d!62231 (= lt!130692 (choose!1266 lt!130481 lt!130485 (minValue!4615 thiss!1504) lt!130488))))

(declare-fun e!168096 () Bool)

(assert (=> d!62231 e!168096))

(declare-fun res!126814 () Bool)

(assert (=> d!62231 (=> (not res!126814) (not e!168096))))

(assert (=> d!62231 (= res!126814 (contains!1881 lt!130481 lt!130488))))

(assert (=> d!62231 (= (addApplyDifferent!232 lt!130481 lt!130485 (minValue!4615 thiss!1504) lt!130488) lt!130692)))

(declare-fun b!259354 () Bool)

(assert (=> b!259354 (= e!168096 (not (= lt!130488 lt!130485)))))

(assert (= (and d!62231 res!126814) b!259354))

(declare-fun m!274991 () Bool)

(assert (=> d!62231 m!274991))

(assert (=> d!62231 m!274499))

(declare-fun m!274993 () Bool)

(assert (=> d!62231 m!274993))

(assert (=> d!62231 m!274505))

(assert (=> d!62231 m!274499))

(assert (=> d!62231 m!274529))

(assert (=> b!258978 d!62231))

(declare-fun d!62233 () Bool)

(assert (=> d!62233 (contains!1881 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))) lt!130475)))

(declare-fun lt!130693 () Unit!8042)

(assert (=> d!62233 (= lt!130693 (choose!1267 lt!130489 lt!130479 (zeroValue!4615 thiss!1504) lt!130475))))

(assert (=> d!62233 (contains!1881 lt!130489 lt!130475)))

(assert (=> d!62233 (= (addStillContains!232 lt!130489 lt!130479 (zeroValue!4615 thiss!1504) lt!130475) lt!130693)))

(declare-fun bs!9143 () Bool)

(assert (= bs!9143 d!62233))

(assert (=> bs!9143 m!274501))

(assert (=> bs!9143 m!274501))

(assert (=> bs!9143 m!274503))

(declare-fun m!274995 () Bool)

(assert (=> bs!9143 m!274995))

(declare-fun m!274997 () Bool)

(assert (=> bs!9143 m!274997))

(assert (=> b!258978 d!62233))

(declare-fun d!62235 () Bool)

(assert (=> d!62235 (= (apply!256 lt!130477 lt!130482) (get!3064 (getValueByKey!313 (toList!1946 lt!130477) lt!130482)))))

(declare-fun bs!9144 () Bool)

(assert (= bs!9144 d!62235))

(declare-fun m!274999 () Bool)

(assert (=> bs!9144 m!274999))

(assert (=> bs!9144 m!274999))

(declare-fun m!275001 () Bool)

(assert (=> bs!9144 m!275001))

(assert (=> b!258978 d!62235))

(declare-fun d!62237 () Bool)

(declare-fun e!168098 () Bool)

(assert (=> d!62237 e!168098))

(declare-fun res!126815 () Bool)

(assert (=> d!62237 (=> res!126815 e!168098)))

(declare-fun lt!130695 () Bool)

(assert (=> d!62237 (= res!126815 (not lt!130695))))

(declare-fun lt!130696 () Bool)

(assert (=> d!62237 (= lt!130695 lt!130696)))

(declare-fun lt!130697 () Unit!8042)

(declare-fun e!168097 () Unit!8042)

(assert (=> d!62237 (= lt!130697 e!168097)))

(declare-fun c!44003 () Bool)

(assert (=> d!62237 (= c!44003 lt!130696)))

(assert (=> d!62237 (= lt!130696 (containsKey!305 (toList!1946 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))) lt!130475))))

(assert (=> d!62237 (= (contains!1881 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))) lt!130475) lt!130695)))

(declare-fun b!259355 () Bool)

(declare-fun lt!130694 () Unit!8042)

(assert (=> b!259355 (= e!168097 lt!130694)))

(assert (=> b!259355 (= lt!130694 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))) lt!130475))))

(assert (=> b!259355 (isDefined!255 (getValueByKey!313 (toList!1946 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))) lt!130475))))

(declare-fun b!259356 () Bool)

(declare-fun Unit!8060 () Unit!8042)

(assert (=> b!259356 (= e!168097 Unit!8060)))

(declare-fun b!259357 () Bool)

(assert (=> b!259357 (= e!168098 (isDefined!255 (getValueByKey!313 (toList!1946 (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))) lt!130475)))))

(assert (= (and d!62237 c!44003) b!259355))

(assert (= (and d!62237 (not c!44003)) b!259356))

(assert (= (and d!62237 (not res!126815)) b!259357))

(declare-fun m!275003 () Bool)

(assert (=> d!62237 m!275003))

(declare-fun m!275005 () Bool)

(assert (=> b!259355 m!275005))

(declare-fun m!275007 () Bool)

(assert (=> b!259355 m!275007))

(assert (=> b!259355 m!275007))

(declare-fun m!275009 () Bool)

(assert (=> b!259355 m!275009))

(assert (=> b!259357 m!275007))

(assert (=> b!259357 m!275007))

(assert (=> b!259357 m!275009))

(assert (=> b!258978 d!62237))

(declare-fun d!62239 () Bool)

(assert (=> d!62239 (= (apply!256 (+!690 lt!130480 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))) lt!130490) (apply!256 lt!130480 lt!130490))))

(declare-fun lt!130698 () Unit!8042)

(assert (=> d!62239 (= lt!130698 (choose!1266 lt!130480 lt!130483 (zeroValue!4615 thiss!1504) lt!130490))))

(declare-fun e!168099 () Bool)

(assert (=> d!62239 e!168099))

(declare-fun res!126816 () Bool)

(assert (=> d!62239 (=> (not res!126816) (not e!168099))))

(assert (=> d!62239 (= res!126816 (contains!1881 lt!130480 lt!130490))))

(assert (=> d!62239 (= (addApplyDifferent!232 lt!130480 lt!130483 (zeroValue!4615 thiss!1504) lt!130490) lt!130698)))

(declare-fun b!259358 () Bool)

(assert (=> b!259358 (= e!168099 (not (= lt!130490 lt!130483)))))

(assert (= (and d!62239 res!126816) b!259358))

(declare-fun m!275011 () Bool)

(assert (=> d!62239 m!275011))

(assert (=> d!62239 m!274507))

(declare-fun m!275013 () Bool)

(assert (=> d!62239 m!275013))

(assert (=> d!62239 m!274515))

(assert (=> d!62239 m!274507))

(assert (=> d!62239 m!274521))

(assert (=> b!258978 d!62239))

(declare-fun d!62241 () Bool)

(assert (=> d!62241 (= (apply!256 lt!130480 lt!130490) (get!3064 (getValueByKey!313 (toList!1946 lt!130480) lt!130490)))))

(declare-fun bs!9145 () Bool)

(assert (= bs!9145 d!62241))

(declare-fun m!275015 () Bool)

(assert (=> bs!9145 m!275015))

(assert (=> bs!9145 m!275015))

(declare-fun m!275017 () Bool)

(assert (=> bs!9145 m!275017))

(assert (=> b!258978 d!62241))

(declare-fun d!62243 () Bool)

(assert (=> d!62243 (= (apply!256 (+!690 lt!130480 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))) lt!130490) (get!3064 (getValueByKey!313 (toList!1946 (+!690 lt!130480 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))) lt!130490)))))

(declare-fun bs!9146 () Bool)

(assert (= bs!9146 d!62243))

(declare-fun m!275019 () Bool)

(assert (=> bs!9146 m!275019))

(assert (=> bs!9146 m!275019))

(declare-fun m!275021 () Bool)

(assert (=> bs!9146 m!275021))

(assert (=> b!258978 d!62243))

(declare-fun d!62245 () Bool)

(declare-fun e!168100 () Bool)

(assert (=> d!62245 e!168100))

(declare-fun res!126818 () Bool)

(assert (=> d!62245 (=> (not res!126818) (not e!168100))))

(declare-fun lt!130700 () ListLongMap!3861)

(assert (=> d!62245 (= res!126818 (contains!1881 lt!130700 (_1!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))))))

(declare-fun lt!130699 () List!3837)

(assert (=> d!62245 (= lt!130700 (ListLongMap!3862 lt!130699))))

(declare-fun lt!130701 () Unit!8042)

(declare-fun lt!130702 () Unit!8042)

(assert (=> d!62245 (= lt!130701 lt!130702)))

(assert (=> d!62245 (= (getValueByKey!313 lt!130699 (_1!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))))))

(assert (=> d!62245 (= lt!130702 (lemmaContainsTupThenGetReturnValue!171 lt!130699 (_1!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))))))

(assert (=> d!62245 (= lt!130699 (insertStrictlySorted!173 (toList!1946 lt!130481) (_1!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))))))

(assert (=> d!62245 (= (+!690 lt!130481 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))) lt!130700)))

(declare-fun b!259359 () Bool)

(declare-fun res!126817 () Bool)

(assert (=> b!259359 (=> (not res!126817) (not e!168100))))

(assert (=> b!259359 (= res!126817 (= (getValueByKey!313 (toList!1946 lt!130700) (_1!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))))))))

(declare-fun b!259360 () Bool)

(assert (=> b!259360 (= e!168100 (contains!1883 (toList!1946 lt!130700) (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))))))

(assert (= (and d!62245 res!126818) b!259359))

(assert (= (and b!259359 res!126817) b!259360))

(declare-fun m!275023 () Bool)

(assert (=> d!62245 m!275023))

(declare-fun m!275025 () Bool)

(assert (=> d!62245 m!275025))

(declare-fun m!275027 () Bool)

(assert (=> d!62245 m!275027))

(declare-fun m!275029 () Bool)

(assert (=> d!62245 m!275029))

(declare-fun m!275031 () Bool)

(assert (=> b!259359 m!275031))

(declare-fun m!275033 () Bool)

(assert (=> b!259360 m!275033))

(assert (=> b!258978 d!62245))

(declare-fun d!62247 () Bool)

(declare-fun e!168101 () Bool)

(assert (=> d!62247 e!168101))

(declare-fun res!126820 () Bool)

(assert (=> d!62247 (=> (not res!126820) (not e!168101))))

(declare-fun lt!130704 () ListLongMap!3861)

(assert (=> d!62247 (= res!126820 (contains!1881 lt!130704 (_1!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))))))

(declare-fun lt!130703 () List!3837)

(assert (=> d!62247 (= lt!130704 (ListLongMap!3862 lt!130703))))

(declare-fun lt!130705 () Unit!8042)

(declare-fun lt!130706 () Unit!8042)

(assert (=> d!62247 (= lt!130705 lt!130706)))

(assert (=> d!62247 (= (getValueByKey!313 lt!130703 (_1!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62247 (= lt!130706 (lemmaContainsTupThenGetReturnValue!171 lt!130703 (_1!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62247 (= lt!130703 (insertStrictlySorted!173 (toList!1946 lt!130489) (_1!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62247 (= (+!690 lt!130489 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))) lt!130704)))

(declare-fun b!259361 () Bool)

(declare-fun res!126819 () Bool)

(assert (=> b!259361 (=> (not res!126819) (not e!168101))))

(assert (=> b!259361 (= res!126819 (= (getValueByKey!313 (toList!1946 lt!130704) (_1!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))))))))

(declare-fun b!259362 () Bool)

(assert (=> b!259362 (= e!168101 (contains!1883 (toList!1946 lt!130704) (tuple2!4935 lt!130479 (zeroValue!4615 thiss!1504))))))

(assert (= (and d!62247 res!126820) b!259361))

(assert (= (and b!259361 res!126819) b!259362))

(declare-fun m!275035 () Bool)

(assert (=> d!62247 m!275035))

(declare-fun m!275037 () Bool)

(assert (=> d!62247 m!275037))

(declare-fun m!275039 () Bool)

(assert (=> d!62247 m!275039))

(declare-fun m!275041 () Bool)

(assert (=> d!62247 m!275041))

(declare-fun m!275043 () Bool)

(assert (=> b!259361 m!275043))

(declare-fun m!275045 () Bool)

(assert (=> b!259362 m!275045))

(assert (=> b!258978 d!62247))

(declare-fun d!62249 () Bool)

(assert (=> d!62249 (= (apply!256 (+!690 lt!130481 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504))) lt!130488) (get!3064 (getValueByKey!313 (toList!1946 (+!690 lt!130481 (tuple2!4935 lt!130485 (minValue!4615 thiss!1504)))) lt!130488)))))

(declare-fun bs!9147 () Bool)

(assert (= bs!9147 d!62249))

(declare-fun m!275047 () Bool)

(assert (=> bs!9147 m!275047))

(assert (=> bs!9147 m!275047))

(declare-fun m!275049 () Bool)

(assert (=> bs!9147 m!275049))

(assert (=> b!258978 d!62249))

(declare-fun d!62251 () Bool)

(assert (=> d!62251 (= (apply!256 lt!130481 lt!130488) (get!3064 (getValueByKey!313 (toList!1946 lt!130481) lt!130488)))))

(declare-fun bs!9148 () Bool)

(assert (= bs!9148 d!62251))

(declare-fun m!275051 () Bool)

(assert (=> bs!9148 m!275051))

(assert (=> bs!9148 m!275051))

(declare-fun m!275053 () Bool)

(assert (=> bs!9148 m!275053))

(assert (=> b!258978 d!62251))

(declare-fun d!62253 () Bool)

(declare-fun e!168102 () Bool)

(assert (=> d!62253 e!168102))

(declare-fun res!126822 () Bool)

(assert (=> d!62253 (=> (not res!126822) (not e!168102))))

(declare-fun lt!130708 () ListLongMap!3861)

(assert (=> d!62253 (= res!126822 (contains!1881 lt!130708 (_1!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))))))

(declare-fun lt!130707 () List!3837)

(assert (=> d!62253 (= lt!130708 (ListLongMap!3862 lt!130707))))

(declare-fun lt!130709 () Unit!8042)

(declare-fun lt!130710 () Unit!8042)

(assert (=> d!62253 (= lt!130709 lt!130710)))

(assert (=> d!62253 (= (getValueByKey!313 lt!130707 (_1!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62253 (= lt!130710 (lemmaContainsTupThenGetReturnValue!171 lt!130707 (_1!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62253 (= lt!130707 (insertStrictlySorted!173 (toList!1946 lt!130480) (_1!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))))))

(assert (=> d!62253 (= (+!690 lt!130480 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))) lt!130708)))

(declare-fun b!259363 () Bool)

(declare-fun res!126821 () Bool)

(assert (=> b!259363 (=> (not res!126821) (not e!168102))))

(assert (=> b!259363 (= res!126821 (= (getValueByKey!313 (toList!1946 lt!130708) (_1!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))))))))

(declare-fun b!259364 () Bool)

(assert (=> b!259364 (= e!168102 (contains!1883 (toList!1946 lt!130708) (tuple2!4935 lt!130483 (zeroValue!4615 thiss!1504))))))

(assert (= (and d!62253 res!126822) b!259363))

(assert (= (and b!259363 res!126821) b!259364))

(declare-fun m!275055 () Bool)

(assert (=> d!62253 m!275055))

(declare-fun m!275057 () Bool)

(assert (=> d!62253 m!275057))

(declare-fun m!275059 () Bool)

(assert (=> d!62253 m!275059))

(declare-fun m!275061 () Bool)

(assert (=> d!62253 m!275061))

(declare-fun m!275063 () Bool)

(assert (=> b!259363 m!275063))

(declare-fun m!275065 () Bool)

(assert (=> b!259364 m!275065))

(assert (=> b!258978 d!62253))

(declare-fun d!62255 () Bool)

(assert (=> d!62255 (= (apply!256 (+!690 lt!130477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))) lt!130482) (apply!256 lt!130477 lt!130482))))

(declare-fun lt!130711 () Unit!8042)

(assert (=> d!62255 (= lt!130711 (choose!1266 lt!130477 lt!130493 (minValue!4615 thiss!1504) lt!130482))))

(declare-fun e!168103 () Bool)

(assert (=> d!62255 e!168103))

(declare-fun res!126823 () Bool)

(assert (=> d!62255 (=> (not res!126823) (not e!168103))))

(assert (=> d!62255 (= res!126823 (contains!1881 lt!130477 lt!130482))))

(assert (=> d!62255 (= (addApplyDifferent!232 lt!130477 lt!130493 (minValue!4615 thiss!1504) lt!130482) lt!130711)))

(declare-fun b!259365 () Bool)

(assert (=> b!259365 (= e!168103 (not (= lt!130482 lt!130493)))))

(assert (= (and d!62255 res!126823) b!259365))

(declare-fun m!275067 () Bool)

(assert (=> d!62255 m!275067))

(assert (=> d!62255 m!274511))

(declare-fun m!275069 () Bool)

(assert (=> d!62255 m!275069))

(assert (=> d!62255 m!274525))

(assert (=> d!62255 m!274511))

(assert (=> d!62255 m!274513))

(assert (=> b!258978 d!62255))

(declare-fun d!62257 () Bool)

(assert (=> d!62257 (= (apply!256 (+!690 lt!130477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))) lt!130482) (get!3064 (getValueByKey!313 (toList!1946 (+!690 lt!130477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))) lt!130482)))))

(declare-fun bs!9149 () Bool)

(assert (= bs!9149 d!62257))

(declare-fun m!275071 () Bool)

(assert (=> bs!9149 m!275071))

(assert (=> bs!9149 m!275071))

(declare-fun m!275073 () Bool)

(assert (=> bs!9149 m!275073))

(assert (=> b!258978 d!62257))

(declare-fun b!259366 () Bool)

(declare-fun e!168106 () Bool)

(declare-fun lt!130713 () ListLongMap!3861)

(assert (=> b!259366 (= e!168106 (isEmpty!540 lt!130713))))

(declare-fun call!24695 () ListLongMap!3861)

(declare-fun bm!24692 () Bool)

(assert (=> bm!24692 (= call!24695 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4774 thiss!1504)))))

(declare-fun b!259367 () Bool)

(declare-fun e!168104 () Bool)

(declare-fun e!168110 () Bool)

(assert (=> b!259367 (= e!168104 e!168110)))

(assert (=> b!259367 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun res!126824 () Bool)

(assert (=> b!259367 (= res!126824 (contains!1881 lt!130713 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(assert (=> b!259367 (=> (not res!126824) (not e!168110))))

(declare-fun b!259368 () Bool)

(declare-fun e!168108 () ListLongMap!3861)

(declare-fun e!168107 () ListLongMap!3861)

(assert (=> b!259368 (= e!168108 e!168107)))

(declare-fun c!44006 () Bool)

(assert (=> b!259368 (= c!44006 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!259369 () Bool)

(declare-fun lt!130715 () Unit!8042)

(declare-fun lt!130714 () Unit!8042)

(assert (=> b!259369 (= lt!130715 lt!130714)))

(declare-fun lt!130718 () ListLongMap!3861)

(declare-fun lt!130717 () (_ BitVec 64))

(declare-fun lt!130712 () (_ BitVec 64))

(declare-fun lt!130716 () V!8459)

(assert (=> b!259369 (not (contains!1881 (+!690 lt!130718 (tuple2!4935 lt!130717 lt!130716)) lt!130712))))

(assert (=> b!259369 (= lt!130714 (addStillNotContains!128 lt!130718 lt!130717 lt!130716 lt!130712))))

(assert (=> b!259369 (= lt!130712 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!259369 (= lt!130716 (get!3063 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!259369 (= lt!130717 (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))

(assert (=> b!259369 (= lt!130718 call!24695)))

(assert (=> b!259369 (= e!168107 (+!690 call!24695 (tuple2!4935 (select (arr!5950 lt!130346) #b00000000000000000000000000000000) (get!3063 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!259370 () Bool)

(assert (=> b!259370 (= e!168107 call!24695)))

(declare-fun b!259371 () Bool)

(declare-fun e!168109 () Bool)

(assert (=> b!259371 (= e!168109 (validKeyInArray!0 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(assert (=> b!259371 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!259372 () Bool)

(assert (=> b!259372 (= e!168108 (ListLongMap!3862 Nil!3834))))

(declare-fun d!62259 () Bool)

(declare-fun e!168105 () Bool)

(assert (=> d!62259 e!168105))

(declare-fun res!126826 () Bool)

(assert (=> d!62259 (=> (not res!126826) (not e!168105))))

(assert (=> d!62259 (= res!126826 (not (contains!1881 lt!130713 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!62259 (= lt!130713 e!168108)))

(declare-fun c!44007 () Bool)

(assert (=> d!62259 (= c!44007 (bvsge #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(assert (=> d!62259 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62259 (= (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) lt!130713)))

(declare-fun b!259373 () Bool)

(assert (=> b!259373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(assert (=> b!259373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6297 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))))))))

(assert (=> b!259373 (= e!168110 (= (apply!256 lt!130713 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) (get!3063 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!259374 () Bool)

(assert (=> b!259374 (= e!168106 (= lt!130713 (getCurrentListMapNoExtraKeys!575 lt!130346 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4774 thiss!1504))))))

(declare-fun b!259375 () Bool)

(assert (=> b!259375 (= e!168104 e!168106)))

(declare-fun c!44005 () Bool)

(assert (=> b!259375 (= c!44005 (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun b!259376 () Bool)

(assert (=> b!259376 (= e!168105 e!168104)))

(declare-fun c!44004 () Bool)

(assert (=> b!259376 (= c!44004 e!168109)))

(declare-fun res!126825 () Bool)

(assert (=> b!259376 (=> (not res!126825) (not e!168109))))

(assert (=> b!259376 (= res!126825 (bvslt #b00000000000000000000000000000000 (size!6298 lt!130346)))))

(declare-fun b!259377 () Bool)

(declare-fun res!126827 () Bool)

(assert (=> b!259377 (=> (not res!126827) (not e!168105))))

(assert (=> b!259377 (= res!126827 (not (contains!1881 lt!130713 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62259 c!44007) b!259372))

(assert (= (and d!62259 (not c!44007)) b!259368))

(assert (= (and b!259368 c!44006) b!259369))

(assert (= (and b!259368 (not c!44006)) b!259370))

(assert (= (or b!259369 b!259370) bm!24692))

(assert (= (and d!62259 res!126826) b!259377))

(assert (= (and b!259377 res!126827) b!259376))

(assert (= (and b!259376 res!126825) b!259371))

(assert (= (and b!259376 c!44004) b!259367))

(assert (= (and b!259376 (not c!44004)) b!259375))

(assert (= (and b!259367 res!126824) b!259373))

(assert (= (and b!259375 c!44005) b!259374))

(assert (= (and b!259375 (not c!44005)) b!259366))

(declare-fun b_lambda!8265 () Bool)

(assert (=> (not b_lambda!8265) (not b!259369)))

(assert (=> b!259369 t!8914))

(declare-fun b_and!13865 () Bool)

(assert (= b_and!13863 (and (=> t!8914 result!5405) b_and!13865)))

(declare-fun b_lambda!8267 () Bool)

(assert (=> (not b_lambda!8267) (not b!259373)))

(assert (=> b!259373 t!8914))

(declare-fun b_and!13867 () Bool)

(assert (= b_and!13865 (and (=> t!8914 result!5405) b_and!13867)))

(declare-fun m!275075 () Bool)

(assert (=> d!62259 m!275075))

(assert (=> d!62259 m!274301))

(assert (=> b!259367 m!274461))

(assert (=> b!259367 m!274461))

(declare-fun m!275077 () Bool)

(assert (=> b!259367 m!275077))

(declare-fun m!275079 () Bool)

(assert (=> b!259374 m!275079))

(declare-fun m!275081 () Bool)

(assert (=> b!259366 m!275081))

(assert (=> b!259371 m!274461))

(assert (=> b!259371 m!274461))

(assert (=> b!259371 m!274465))

(assert (=> b!259368 m!274461))

(assert (=> b!259368 m!274461))

(assert (=> b!259368 m!274465))

(declare-fun m!275083 () Bool)

(assert (=> b!259377 m!275083))

(declare-fun m!275085 () Bool)

(assert (=> b!259369 m!275085))

(declare-fun m!275087 () Bool)

(assert (=> b!259369 m!275087))

(declare-fun m!275089 () Bool)

(assert (=> b!259369 m!275089))

(assert (=> b!259369 m!274483))

(declare-fun m!275091 () Bool)

(assert (=> b!259369 m!275091))

(assert (=> b!259369 m!274461))

(assert (=> b!259369 m!274485))

(assert (=> b!259369 m!274483))

(assert (=> b!259369 m!274487))

(assert (=> b!259369 m!274485))

(assert (=> b!259369 m!275085))

(assert (=> bm!24692 m!275079))

(assert (=> b!259373 m!274461))

(declare-fun m!275093 () Bool)

(assert (=> b!259373 m!275093))

(assert (=> b!259373 m!274483))

(assert (=> b!259373 m!274485))

(assert (=> b!259373 m!274461))

(assert (=> b!259373 m!274485))

(assert (=> b!259373 m!274483))

(assert (=> b!259373 m!274487))

(assert (=> b!258978 d!62259))

(declare-fun d!62261 () Bool)

(declare-fun e!168111 () Bool)

(assert (=> d!62261 e!168111))

(declare-fun res!126829 () Bool)

(assert (=> d!62261 (=> (not res!126829) (not e!168111))))

(declare-fun lt!130720 () ListLongMap!3861)

(assert (=> d!62261 (= res!126829 (contains!1881 lt!130720 (_1!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))))))

(declare-fun lt!130719 () List!3837)

(assert (=> d!62261 (= lt!130720 (ListLongMap!3862 lt!130719))))

(declare-fun lt!130721 () Unit!8042)

(declare-fun lt!130722 () Unit!8042)

(assert (=> d!62261 (= lt!130721 lt!130722)))

(assert (=> d!62261 (= (getValueByKey!313 lt!130719 (_1!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))))))

(assert (=> d!62261 (= lt!130722 (lemmaContainsTupThenGetReturnValue!171 lt!130719 (_1!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))))))

(assert (=> d!62261 (= lt!130719 (insertStrictlySorted!173 (toList!1946 lt!130477) (_1!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))))))

(assert (=> d!62261 (= (+!690 lt!130477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))) lt!130720)))

(declare-fun b!259378 () Bool)

(declare-fun res!126828 () Bool)

(assert (=> b!259378 (=> (not res!126828) (not e!168111))))

(assert (=> b!259378 (= res!126828 (= (getValueByKey!313 (toList!1946 lt!130720) (_1!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))))))))

(declare-fun b!259379 () Bool)

(assert (=> b!259379 (= e!168111 (contains!1883 (toList!1946 lt!130720) (tuple2!4935 lt!130493 (minValue!4615 thiss!1504))))))

(assert (= (and d!62261 res!126829) b!259378))

(assert (= (and b!259378 res!126828) b!259379))

(declare-fun m!275095 () Bool)

(assert (=> d!62261 m!275095))

(declare-fun m!275097 () Bool)

(assert (=> d!62261 m!275097))

(declare-fun m!275099 () Bool)

(assert (=> d!62261 m!275099))

(declare-fun m!275101 () Bool)

(assert (=> d!62261 m!275101))

(declare-fun m!275103 () Bool)

(assert (=> b!259378 m!275103))

(declare-fun m!275105 () Bool)

(assert (=> b!259379 m!275105))

(assert (=> b!258978 d!62261))

(assert (=> d!62069 d!62059))

(declare-fun d!62263 () Bool)

(assert (=> d!62263 (arrayContainsKey!0 lt!130346 key!932 #b00000000000000000000000000000000)))

(assert (=> d!62263 true))

(declare-fun _$60!381 () Unit!8042)

(assert (=> d!62263 (= (choose!13 lt!130346 key!932 index!297) _$60!381)))

(declare-fun bs!9150 () Bool)

(assert (= bs!9150 d!62263))

(assert (=> bs!9150 m!274321))

(assert (=> d!62069 d!62263))

(declare-fun d!62265 () Bool)

(assert (=> d!62265 (= (inRange!0 (index!6919 lt!130548) (mask!11082 thiss!1504)) (and (bvsge (index!6919 lt!130548) #b00000000000000000000000000000000) (bvslt (index!6919 lt!130548) (bvadd (mask!11082 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!259053 d!62265))

(declare-fun d!62267 () Bool)

(assert (=> d!62267 (= (apply!256 lt!130496 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3064 (getValueByKey!313 (toList!1946 lt!130496) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9151 () Bool)

(assert (= bs!9151 d!62267))

(assert (=> bs!9151 m!274661))

(assert (=> bs!9151 m!274661))

(declare-fun m!275107 () Bool)

(assert (=> bs!9151 m!275107))

(assert (=> b!258980 d!62267))

(assert (=> b!259046 d!62055))

(declare-fun d!62269 () Bool)

(declare-fun e!168112 () Bool)

(assert (=> d!62269 e!168112))

(declare-fun res!126831 () Bool)

(assert (=> d!62269 (=> (not res!126831) (not e!168112))))

(declare-fun lt!130724 () ListLongMap!3861)

(assert (=> d!62269 (= res!126831 (contains!1881 lt!130724 (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(declare-fun lt!130723 () List!3837)

(assert (=> d!62269 (= lt!130724 (ListLongMap!3862 lt!130723))))

(declare-fun lt!130725 () Unit!8042)

(declare-fun lt!130726 () Unit!8042)

(assert (=> d!62269 (= lt!130725 lt!130726)))

(assert (=> d!62269 (= (getValueByKey!313 lt!130723 (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (=> d!62269 (= lt!130726 (lemmaContainsTupThenGetReturnValue!171 lt!130723 (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (=> d!62269 (= lt!130723 (insertStrictlySorted!173 (toList!1946 call!24660) (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))) (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(assert (=> d!62269 (= (+!690 call!24660 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))) lt!130724)))

(declare-fun b!259380 () Bool)

(declare-fun res!126830 () Bool)

(assert (=> b!259380 (=> (not res!126830) (not e!168112))))

(assert (=> b!259380 (= res!126830 (= (getValueByKey!313 (toList!1946 lt!130724) (_1!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))) (Some!318 (_2!2477 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))))

(declare-fun b!259381 () Bool)

(assert (=> b!259381 (= e!168112 (contains!1883 (toList!1946 lt!130724) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))

(assert (= (and d!62269 res!126831) b!259380))

(assert (= (and b!259380 res!126830) b!259381))

(declare-fun m!275109 () Bool)

(assert (=> d!62269 m!275109))

(declare-fun m!275111 () Bool)

(assert (=> d!62269 m!275111))

(declare-fun m!275113 () Bool)

(assert (=> d!62269 m!275113))

(declare-fun m!275115 () Bool)

(assert (=> d!62269 m!275115))

(declare-fun m!275117 () Bool)

(assert (=> b!259380 m!275117))

(declare-fun m!275119 () Bool)

(assert (=> b!259381 m!275119))

(assert (=> b!259019 d!62269))

(declare-fun b!259394 () Bool)

(declare-fun e!168119 () SeekEntryResult!1187)

(assert (=> b!259394 (= e!168119 Undefined!1187)))

(declare-fun b!259395 () Bool)

(declare-fun e!168120 () SeekEntryResult!1187)

(assert (=> b!259395 (= e!168120 (Found!1187 (index!6920 lt!130566)))))

(declare-fun b!259396 () Bool)

(declare-fun c!44016 () Bool)

(declare-fun lt!130731 () (_ BitVec 64))

(assert (=> b!259396 (= c!44016 (= lt!130731 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168121 () SeekEntryResult!1187)

(assert (=> b!259396 (= e!168120 e!168121)))

(declare-fun b!259397 () Bool)

(assert (=> b!259397 (= e!168121 (MissingVacant!1187 (index!6920 lt!130566)))))

(declare-fun b!259398 () Bool)

(assert (=> b!259398 (= e!168121 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25081 lt!130566) #b00000000000000000000000000000001) (nextIndex!0 (index!6920 lt!130566) (x!25081 lt!130566) (mask!11082 thiss!1504)) (index!6920 lt!130566) key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(declare-fun d!62271 () Bool)

(declare-fun lt!130732 () SeekEntryResult!1187)

(assert (=> d!62271 (and (or ((_ is Undefined!1187) lt!130732) (not ((_ is Found!1187) lt!130732)) (and (bvsge (index!6919 lt!130732) #b00000000000000000000000000000000) (bvslt (index!6919 lt!130732) (size!6298 (_keys!6948 thiss!1504))))) (or ((_ is Undefined!1187) lt!130732) ((_ is Found!1187) lt!130732) (not ((_ is MissingVacant!1187) lt!130732)) (not (= (index!6921 lt!130732) (index!6920 lt!130566))) (and (bvsge (index!6921 lt!130732) #b00000000000000000000000000000000) (bvslt (index!6921 lt!130732) (size!6298 (_keys!6948 thiss!1504))))) (or ((_ is Undefined!1187) lt!130732) (ite ((_ is Found!1187) lt!130732) (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6919 lt!130732)) key!932) (and ((_ is MissingVacant!1187) lt!130732) (= (index!6921 lt!130732) (index!6920 lt!130566)) (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6921 lt!130732)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!62271 (= lt!130732 e!168119)))

(declare-fun c!44015 () Bool)

(assert (=> d!62271 (= c!44015 (bvsge (x!25081 lt!130566) #b01111111111111111111111111111110))))

(assert (=> d!62271 (= lt!130731 (select (arr!5950 (_keys!6948 thiss!1504)) (index!6920 lt!130566)))))

(assert (=> d!62271 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62271 (= (seekKeyOrZeroReturnVacant!0 (x!25081 lt!130566) (index!6920 lt!130566) (index!6920 lt!130566) key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)) lt!130732)))

(declare-fun b!259399 () Bool)

(assert (=> b!259399 (= e!168119 e!168120)))

(declare-fun c!44014 () Bool)

(assert (=> b!259399 (= c!44014 (= lt!130731 key!932))))

(assert (= (and d!62271 c!44015) b!259394))

(assert (= (and d!62271 (not c!44015)) b!259399))

(assert (= (and b!259399 c!44014) b!259395))

(assert (= (and b!259399 (not c!44014)) b!259396))

(assert (= (and b!259396 c!44016) b!259397))

(assert (= (and b!259396 (not c!44016)) b!259398))

(declare-fun m!275121 () Bool)

(assert (=> b!259398 m!275121))

(assert (=> b!259398 m!275121))

(declare-fun m!275123 () Bool)

(assert (=> b!259398 m!275123))

(declare-fun m!275125 () Bool)

(assert (=> d!62271 m!275125))

(declare-fun m!275127 () Bool)

(assert (=> d!62271 m!275127))

(assert (=> d!62271 m!274651))

(assert (=> d!62271 m!274301))

(assert (=> b!259096 d!62271))

(declare-fun d!62273 () Bool)

(declare-fun e!168122 () Bool)

(assert (=> d!62273 e!168122))

(declare-fun res!126833 () Bool)

(assert (=> d!62273 (=> (not res!126833) (not e!168122))))

(declare-fun lt!130734 () ListLongMap!3861)

(assert (=> d!62273 (= res!126833 (contains!1881 lt!130734 (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun lt!130733 () List!3837)

(assert (=> d!62273 (= lt!130734 (ListLongMap!3862 lt!130733))))

(declare-fun lt!130735 () Unit!8042)

(declare-fun lt!130736 () Unit!8042)

(assert (=> d!62273 (= lt!130735 lt!130736)))

(assert (=> d!62273 (= (getValueByKey!313 lt!130733 (_1!2477 (tuple2!4935 key!932 v!346))) (Some!318 (_2!2477 (tuple2!4935 key!932 v!346))))))

(assert (=> d!62273 (= lt!130736 (lemmaContainsTupThenGetReturnValue!171 lt!130733 (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))

(assert (=> d!62273 (= lt!130733 (insertStrictlySorted!173 (toList!1946 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504))) (_1!2477 (tuple2!4935 key!932 v!346)) (_2!2477 (tuple2!4935 key!932 v!346))))))

(assert (=> d!62273 (= (+!690 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) (tuple2!4935 key!932 v!346)) lt!130734)))

(declare-fun b!259400 () Bool)

(declare-fun res!126832 () Bool)

(assert (=> b!259400 (=> (not res!126832) (not e!168122))))

(assert (=> b!259400 (= res!126832 (= (getValueByKey!313 (toList!1946 lt!130734) (_1!2477 (tuple2!4935 key!932 v!346))) (Some!318 (_2!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun b!259401 () Bool)

(assert (=> b!259401 (= e!168122 (contains!1883 (toList!1946 lt!130734) (tuple2!4935 key!932 v!346)))))

(assert (= (and d!62273 res!126833) b!259400))

(assert (= (and b!259400 res!126832) b!259401))

(declare-fun m!275129 () Bool)

(assert (=> d!62273 m!275129))

(declare-fun m!275131 () Bool)

(assert (=> d!62273 m!275131))

(declare-fun m!275133 () Bool)

(assert (=> d!62273 m!275133))

(declare-fun m!275135 () Bool)

(assert (=> d!62273 m!275135))

(declare-fun m!275137 () Bool)

(assert (=> b!259400 m!275137))

(declare-fun m!275139 () Bool)

(assert (=> b!259401 m!275139))

(assert (=> b!258889 d!62273))

(assert (=> b!258889 d!62087))

(declare-fun call!24698 () ListLongMap!3861)

(declare-fun bm!24693 () Bool)

(assert (=> bm!24693 (= call!24698 (getCurrentListMapNoExtraKeys!575 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun b!259403 () Bool)

(declare-fun c!44022 () Bool)

(assert (=> b!259403 (= c!44022 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!168131 () ListLongMap!3861)

(declare-fun e!168133 () ListLongMap!3861)

(assert (=> b!259403 (= e!168131 e!168133)))

(declare-fun e!168130 () Bool)

(declare-fun b!259404 () Bool)

(assert (=> b!259404 (= e!168130 (validKeyInArray!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!259405 () Bool)

(declare-fun e!168135 () Bool)

(declare-fun e!168124 () Bool)

(assert (=> b!259405 (= e!168135 e!168124)))

(declare-fun res!126837 () Bool)

(declare-fun call!24701 () Bool)

(assert (=> b!259405 (= res!126837 call!24701)))

(assert (=> b!259405 (=> (not res!126837) (not e!168124))))

(declare-fun b!259406 () Bool)

(declare-fun call!24699 () ListLongMap!3861)

(assert (=> b!259406 (= e!168133 call!24699)))

(declare-fun b!259407 () Bool)

(declare-fun call!24700 () ListLongMap!3861)

(assert (=> b!259407 (= e!168131 call!24700)))

(declare-fun bm!24694 () Bool)

(declare-fun call!24697 () ListLongMap!3861)

(assert (=> bm!24694 (= call!24699 call!24697)))

(declare-fun bm!24695 () Bool)

(declare-fun lt!130758 () ListLongMap!3861)

(assert (=> bm!24695 (= call!24701 (contains!1881 lt!130758 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168126 () Bool)

(declare-fun b!259408 () Bool)

(assert (=> b!259408 (= e!168126 (= (apply!256 lt!130758 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)) (get!3063 (select (arr!5949 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!259408 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6297 (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))))))))

(assert (=> b!259408 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(declare-fun bm!24696 () Bool)

(declare-fun call!24696 () ListLongMap!3861)

(declare-fun c!44020 () Bool)

(declare-fun c!44019 () Bool)

(assert (=> bm!24696 (= call!24696 (+!690 (ite c!44020 call!24698 (ite c!44019 call!24697 call!24699)) (ite (or c!44020 c!44019) (tuple2!4935 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4615 thiss!1504)) (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504)))))))

(declare-fun b!259409 () Bool)

(assert (=> b!259409 (= e!168133 call!24700)))

(declare-fun b!259410 () Bool)

(declare-fun res!126841 () Bool)

(declare-fun e!168129 () Bool)

(assert (=> b!259410 (=> (not res!126841) (not e!168129))))

(declare-fun e!168128 () Bool)

(assert (=> b!259410 (= res!126841 e!168128)))

(declare-fun res!126838 () Bool)

(assert (=> b!259410 (=> res!126838 e!168128)))

(assert (=> b!259410 (= res!126838 (not e!168130))))

(declare-fun res!126834 () Bool)

(assert (=> b!259410 (=> (not res!126834) (not e!168130))))

(assert (=> b!259410 (= res!126834 (bvslt #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(declare-fun b!259411 () Bool)

(declare-fun e!168134 () Unit!8042)

(declare-fun lt!130748 () Unit!8042)

(assert (=> b!259411 (= e!168134 lt!130748)))

(declare-fun lt!130751 () ListLongMap!3861)

(assert (=> b!259411 (= lt!130751 (getCurrentListMapNoExtraKeys!575 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130741 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130741 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130737 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130737 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130756 () Unit!8042)

(assert (=> b!259411 (= lt!130756 (addStillContains!232 lt!130751 lt!130741 (zeroValue!4615 thiss!1504) lt!130737))))

(assert (=> b!259411 (contains!1881 (+!690 lt!130751 (tuple2!4935 lt!130741 (zeroValue!4615 thiss!1504))) lt!130737)))

(declare-fun lt!130753 () Unit!8042)

(assert (=> b!259411 (= lt!130753 lt!130756)))

(declare-fun lt!130743 () ListLongMap!3861)

(assert (=> b!259411 (= lt!130743 (getCurrentListMapNoExtraKeys!575 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130747 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130747 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130750 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130750 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130749 () Unit!8042)

(assert (=> b!259411 (= lt!130749 (addApplyDifferent!232 lt!130743 lt!130747 (minValue!4615 thiss!1504) lt!130750))))

(assert (=> b!259411 (= (apply!256 (+!690 lt!130743 (tuple2!4935 lt!130747 (minValue!4615 thiss!1504))) lt!130750) (apply!256 lt!130743 lt!130750))))

(declare-fun lt!130754 () Unit!8042)

(assert (=> b!259411 (= lt!130754 lt!130749)))

(declare-fun lt!130742 () ListLongMap!3861)

(assert (=> b!259411 (= lt!130742 (getCurrentListMapNoExtraKeys!575 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130745 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130745 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130752 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130752 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130757 () Unit!8042)

(assert (=> b!259411 (= lt!130757 (addApplyDifferent!232 lt!130742 lt!130745 (zeroValue!4615 thiss!1504) lt!130752))))

(assert (=> b!259411 (= (apply!256 (+!690 lt!130742 (tuple2!4935 lt!130745 (zeroValue!4615 thiss!1504))) lt!130752) (apply!256 lt!130742 lt!130752))))

(declare-fun lt!130746 () Unit!8042)

(assert (=> b!259411 (= lt!130746 lt!130757)))

(declare-fun lt!130739 () ListLongMap!3861)

(assert (=> b!259411 (= lt!130739 (getCurrentListMapNoExtraKeys!575 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)))))

(declare-fun lt!130755 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130755 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130744 () (_ BitVec 64))

(assert (=> b!259411 (= lt!130744 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000))))

(assert (=> b!259411 (= lt!130748 (addApplyDifferent!232 lt!130739 lt!130755 (minValue!4615 thiss!1504) lt!130744))))

(assert (=> b!259411 (= (apply!256 (+!690 lt!130739 (tuple2!4935 lt!130755 (minValue!4615 thiss!1504))) lt!130744) (apply!256 lt!130739 lt!130744))))

(declare-fun d!62275 () Bool)

(assert (=> d!62275 e!168129))

(declare-fun res!126835 () Bool)

(assert (=> d!62275 (=> (not res!126835) (not e!168129))))

(assert (=> d!62275 (= res!126835 (or (bvsge #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))))

(declare-fun lt!130738 () ListLongMap!3861)

(assert (=> d!62275 (= lt!130758 lt!130738)))

(declare-fun lt!130740 () Unit!8042)

(assert (=> d!62275 (= lt!130740 e!168134)))

(declare-fun c!44018 () Bool)

(declare-fun e!168125 () Bool)

(assert (=> d!62275 (= c!44018 e!168125)))

(declare-fun res!126842 () Bool)

(assert (=> d!62275 (=> (not res!126842) (not e!168125))))

(assert (=> d!62275 (= res!126842 (bvslt #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(declare-fun e!168127 () ListLongMap!3861)

(assert (=> d!62275 (= lt!130738 e!168127)))

(assert (=> d!62275 (= c!44020 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62275 (validMask!0 (mask!11082 thiss!1504))))

(assert (=> d!62275 (= (getCurrentListMap!1469 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (array!12567 (store (arr!5949 (_values!4757 thiss!1504)) index!297 (ValueCellFull!2961 v!346)) (size!6297 (_values!4757 thiss!1504))) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) lt!130758)))

(declare-fun b!259402 () Bool)

(assert (=> b!259402 (= e!168127 (+!690 call!24696 (tuple2!4935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4615 thiss!1504))))))

(declare-fun b!259412 () Bool)

(declare-fun Unit!8061 () Unit!8042)

(assert (=> b!259412 (= e!168134 Unit!8061)))

(declare-fun b!259413 () Bool)

(assert (=> b!259413 (= e!168124 (= (apply!256 lt!130758 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4615 thiss!1504)))))

(declare-fun b!259414 () Bool)

(declare-fun res!126836 () Bool)

(assert (=> b!259414 (=> (not res!126836) (not e!168129))))

(assert (=> b!259414 (= res!126836 e!168135)))

(declare-fun c!44017 () Bool)

(assert (=> b!259414 (= c!44017 (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24697 () Bool)

(assert (=> bm!24697 (= call!24700 call!24696)))

(declare-fun b!259415 () Bool)

(assert (=> b!259415 (= e!168135 (not call!24701))))

(declare-fun b!259416 () Bool)

(assert (=> b!259416 (= e!168127 e!168131)))

(assert (=> b!259416 (= c!44019 (and (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259417 () Bool)

(declare-fun e!168123 () Bool)

(declare-fun call!24702 () Bool)

(assert (=> b!259417 (= e!168123 (not call!24702))))

(declare-fun bm!24698 () Bool)

(assert (=> bm!24698 (= call!24697 call!24698)))

(declare-fun bm!24699 () Bool)

(assert (=> bm!24699 (= call!24702 (contains!1881 lt!130758 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259418 () Bool)

(declare-fun e!168132 () Bool)

(assert (=> b!259418 (= e!168132 (= (apply!256 lt!130758 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4615 thiss!1504)))))

(declare-fun b!259419 () Bool)

(assert (=> b!259419 (= e!168128 e!168126)))

(declare-fun res!126839 () Bool)

(assert (=> b!259419 (=> (not res!126839) (not e!168126))))

(assert (=> b!259419 (= res!126839 (contains!1881 lt!130758 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!259419 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(declare-fun b!259420 () Bool)

(assert (=> b!259420 (= e!168129 e!168123)))

(declare-fun c!44021 () Bool)

(assert (=> b!259420 (= c!44021 (not (= (bvand (extraKeys!4511 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259421 () Bool)

(assert (=> b!259421 (= e!168125 (validKeyInArray!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!259422 () Bool)

(assert (=> b!259422 (= e!168123 e!168132)))

(declare-fun res!126840 () Bool)

(assert (=> b!259422 (= res!126840 call!24702)))

(assert (=> b!259422 (=> (not res!126840) (not e!168132))))

(assert (= (and d!62275 c!44020) b!259402))

(assert (= (and d!62275 (not c!44020)) b!259416))

(assert (= (and b!259416 c!44019) b!259407))

(assert (= (and b!259416 (not c!44019)) b!259403))

(assert (= (and b!259403 c!44022) b!259409))

(assert (= (and b!259403 (not c!44022)) b!259406))

(assert (= (or b!259409 b!259406) bm!24694))

(assert (= (or b!259407 bm!24694) bm!24698))

(assert (= (or b!259407 b!259409) bm!24697))

(assert (= (or b!259402 bm!24698) bm!24693))

(assert (= (or b!259402 bm!24697) bm!24696))

(assert (= (and d!62275 res!126842) b!259421))

(assert (= (and d!62275 c!44018) b!259411))

(assert (= (and d!62275 (not c!44018)) b!259412))

(assert (= (and d!62275 res!126835) b!259410))

(assert (= (and b!259410 res!126834) b!259404))

(assert (= (and b!259410 (not res!126838)) b!259419))

(assert (= (and b!259419 res!126839) b!259408))

(assert (= (and b!259410 res!126841) b!259414))

(assert (= (and b!259414 c!44017) b!259405))

(assert (= (and b!259414 (not c!44017)) b!259415))

(assert (= (and b!259405 res!126837) b!259413))

(assert (= (or b!259405 b!259415) bm!24695))

(assert (= (and b!259414 res!126836) b!259420))

(assert (= (and b!259420 c!44021) b!259422))

(assert (= (and b!259420 (not c!44021)) b!259417))

(assert (= (and b!259422 res!126840) b!259418))

(assert (= (or b!259422 b!259417) bm!24699))

(declare-fun b_lambda!8269 () Bool)

(assert (=> (not b_lambda!8269) (not b!259408)))

(assert (=> b!259408 t!8914))

(declare-fun b_and!13869 () Bool)

(assert (= b_and!13867 (and (=> t!8914 result!5405) b_and!13869)))

(assert (=> b!259421 m!274679))

(assert (=> b!259421 m!274679))

(assert (=> b!259421 m!274687))

(assert (=> b!259408 m!274679))

(declare-fun m!275141 () Bool)

(assert (=> b!259408 m!275141))

(assert (=> b!259408 m!274483))

(assert (=> b!259408 m!274679))

(assert (=> b!259408 m!274485))

(assert (=> b!259408 m!274483))

(assert (=> b!259408 m!274487))

(assert (=> b!259408 m!274485))

(declare-fun m!275143 () Bool)

(assert (=> bm!24696 m!275143))

(declare-fun m!275145 () Bool)

(assert (=> bm!24695 m!275145))

(declare-fun m!275147 () Bool)

(assert (=> bm!24699 m!275147))

(declare-fun m!275149 () Bool)

(assert (=> b!259418 m!275149))

(assert (=> b!259404 m!274679))

(assert (=> b!259404 m!274679))

(assert (=> b!259404 m!274687))

(declare-fun m!275151 () Bool)

(assert (=> b!259402 m!275151))

(declare-fun m!275153 () Bool)

(assert (=> b!259411 m!275153))

(declare-fun m!275155 () Bool)

(assert (=> b!259411 m!275155))

(assert (=> b!259411 m!275155))

(declare-fun m!275157 () Bool)

(assert (=> b!259411 m!275157))

(declare-fun m!275159 () Bool)

(assert (=> b!259411 m!275159))

(declare-fun m!275161 () Bool)

(assert (=> b!259411 m!275161))

(declare-fun m!275163 () Bool)

(assert (=> b!259411 m!275163))

(assert (=> b!259411 m!274679))

(declare-fun m!275165 () Bool)

(assert (=> b!259411 m!275165))

(declare-fun m!275167 () Bool)

(assert (=> b!259411 m!275167))

(declare-fun m!275169 () Bool)

(assert (=> b!259411 m!275169))

(declare-fun m!275171 () Bool)

(assert (=> b!259411 m!275171))

(declare-fun m!275173 () Bool)

(assert (=> b!259411 m!275173))

(assert (=> b!259411 m!275161))

(declare-fun m!275175 () Bool)

(assert (=> b!259411 m!275175))

(declare-fun m!275177 () Bool)

(assert (=> b!259411 m!275177))

(declare-fun m!275179 () Bool)

(assert (=> b!259411 m!275179))

(declare-fun m!275181 () Bool)

(assert (=> b!259411 m!275181))

(assert (=> b!259411 m!275165))

(assert (=> b!259411 m!275153))

(declare-fun m!275183 () Bool)

(assert (=> b!259411 m!275183))

(assert (=> b!259419 m!274679))

(assert (=> b!259419 m!274679))

(declare-fun m!275185 () Bool)

(assert (=> b!259419 m!275185))

(assert (=> bm!24693 m!275181))

(assert (=> d!62275 m!274301))

(declare-fun m!275187 () Bool)

(assert (=> b!259413 m!275187))

(assert (=> b!258889 d!62275))

(declare-fun b!259423 () Bool)

(declare-fun e!168136 () (_ BitVec 32))

(declare-fun call!24703 () (_ BitVec 32))

(assert (=> b!259423 (= e!168136 (bvadd #b00000000000000000000000000000001 call!24703))))

(declare-fun d!62277 () Bool)

(declare-fun lt!130759 () (_ BitVec 32))

(assert (=> d!62277 (and (bvsge lt!130759 #b00000000000000000000000000000000) (bvsle lt!130759 (bvsub (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!168137 () (_ BitVec 32))

(assert (=> d!62277 (= lt!130759 e!168137)))

(declare-fun c!44024 () Bool)

(assert (=> d!62277 (= c!44024 (bvsge #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))))))

(assert (=> d!62277 (and (bvsle #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6298 (_keys!6948 thiss!1504)) (size!6298 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))))))))

(assert (=> d!62277 (= (arrayCountValidKeys!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) lt!130759)))

(declare-fun b!259424 () Bool)

(assert (=> b!259424 (= e!168136 call!24703)))

(declare-fun b!259425 () Bool)

(assert (=> b!259425 (= e!168137 e!168136)))

(declare-fun c!44023 () Bool)

(assert (=> b!259425 (= c!44023 (validKeyInArray!0 (select (arr!5950 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun bm!24700 () Bool)

(assert (=> bm!24700 (= call!24703 (arrayCountValidKeys!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259426 () Bool)

(assert (=> b!259426 (= e!168137 #b00000000000000000000000000000000)))

(assert (= (and d!62277 c!44024) b!259426))

(assert (= (and d!62277 (not c!44024)) b!259425))

(assert (= (and b!259425 c!44023) b!259423))

(assert (= (and b!259425 (not c!44023)) b!259424))

(assert (= (or b!259423 b!259424) bm!24700))

(assert (=> b!259425 m!274679))

(assert (=> b!259425 m!274679))

(assert (=> b!259425 m!274687))

(declare-fun m!275189 () Bool)

(assert (=> bm!24700 m!275189))

(assert (=> b!258868 d!62277))

(assert (=> b!258868 d!62055))

(assert (=> b!259021 d!62111))

(declare-fun d!62279 () Bool)

(declare-fun e!168139 () Bool)

(assert (=> d!62279 e!168139))

(declare-fun res!126843 () Bool)

(assert (=> d!62279 (=> res!126843 e!168139)))

(declare-fun lt!130761 () Bool)

(assert (=> d!62279 (= res!126843 (not lt!130761))))

(declare-fun lt!130762 () Bool)

(assert (=> d!62279 (= lt!130761 lt!130762)))

(declare-fun lt!130763 () Unit!8042)

(declare-fun e!168138 () Unit!8042)

(assert (=> d!62279 (= lt!130763 e!168138)))

(declare-fun c!44025 () Bool)

(assert (=> d!62279 (= c!44025 lt!130762)))

(assert (=> d!62279 (= lt!130762 (containsKey!305 (toList!1946 lt!130543) (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!62279 (= (contains!1881 lt!130543 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)) lt!130761)))

(declare-fun b!259427 () Bool)

(declare-fun lt!130760 () Unit!8042)

(assert (=> b!259427 (= e!168138 lt!130760)))

(assert (=> b!259427 (= lt!130760 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130543) (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!259427 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130543) (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259428 () Bool)

(declare-fun Unit!8062 () Unit!8042)

(assert (=> b!259428 (= e!168138 Unit!8062)))

(declare-fun b!259429 () Bool)

(assert (=> b!259429 (= e!168139 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130543) (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!62279 c!44025) b!259427))

(assert (= (and d!62279 (not c!44025)) b!259428))

(assert (= (and d!62279 (not res!126843)) b!259429))

(assert (=> d!62279 m!274449))

(declare-fun m!275191 () Bool)

(assert (=> d!62279 m!275191))

(assert (=> b!259427 m!274449))

(declare-fun m!275193 () Bool)

(assert (=> b!259427 m!275193))

(assert (=> b!259427 m!274449))

(declare-fun m!275195 () Bool)

(assert (=> b!259427 m!275195))

(assert (=> b!259427 m!275195))

(declare-fun m!275197 () Bool)

(assert (=> b!259427 m!275197))

(assert (=> b!259429 m!274449))

(assert (=> b!259429 m!275195))

(assert (=> b!259429 m!275195))

(assert (=> b!259429 m!275197))

(assert (=> b!259036 d!62279))

(declare-fun d!62281 () Bool)

(assert (=> d!62281 (arrayNoDuplicates!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000000 Nil!3835)))

(assert (=> d!62281 true))

(declare-fun _$65!89 () Unit!8042)

(assert (=> d!62281 (= (choose!41 (_keys!6948 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3835) _$65!89)))

(declare-fun bs!9152 () Bool)

(assert (= bs!9152 d!62281))

(assert (=> bs!9152 m!274331))

(assert (=> bs!9152 m!274547))

(assert (=> d!62073 d!62281))

(assert (=> d!62087 d!62079))

(declare-fun d!62283 () Bool)

(assert (=> d!62283 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258866 d!62283))

(assert (=> bm!24669 d!62075))

(assert (=> b!259038 d!62111))

(assert (=> d!62067 d!62079))

(declare-fun c!44026 () Bool)

(declare-fun d!62285 () Bool)

(assert (=> d!62285 (= c!44026 (and ((_ is Cons!3833) (toList!1946 lt!130412)) (= (_1!2477 (h!4496 (toList!1946 lt!130412))) (_1!2477 (tuple2!4935 key!932 v!346)))))))

(declare-fun e!168140 () Option!319)

(assert (=> d!62285 (= (getValueByKey!313 (toList!1946 lt!130412) (_1!2477 (tuple2!4935 key!932 v!346))) e!168140)))

(declare-fun b!259432 () Bool)

(declare-fun e!168141 () Option!319)

(assert (=> b!259432 (= e!168141 (getValueByKey!313 (t!8910 (toList!1946 lt!130412)) (_1!2477 (tuple2!4935 key!932 v!346))))))

(declare-fun b!259430 () Bool)

(assert (=> b!259430 (= e!168140 (Some!318 (_2!2477 (h!4496 (toList!1946 lt!130412)))))))

(declare-fun b!259433 () Bool)

(assert (=> b!259433 (= e!168141 None!317)))

(declare-fun b!259431 () Bool)

(assert (=> b!259431 (= e!168140 e!168141)))

(declare-fun c!44027 () Bool)

(assert (=> b!259431 (= c!44027 (and ((_ is Cons!3833) (toList!1946 lt!130412)) (not (= (_1!2477 (h!4496 (toList!1946 lt!130412))) (_1!2477 (tuple2!4935 key!932 v!346))))))))

(assert (= (and d!62285 c!44026) b!259430))

(assert (= (and d!62285 (not c!44026)) b!259431))

(assert (= (and b!259431 c!44027) b!259432))

(assert (= (and b!259431 (not c!44027)) b!259433))

(declare-fun m!275199 () Bool)

(assert (=> b!259432 m!275199))

(assert (=> b!258873 d!62285))

(declare-fun d!62287 () Bool)

(declare-fun e!168143 () Bool)

(assert (=> d!62287 e!168143))

(declare-fun res!126844 () Bool)

(assert (=> d!62287 (=> res!126844 e!168143)))

(declare-fun lt!130765 () Bool)

(assert (=> d!62287 (= res!126844 (not lt!130765))))

(declare-fun lt!130766 () Bool)

(assert (=> d!62287 (= lt!130765 lt!130766)))

(declare-fun lt!130767 () Unit!8042)

(declare-fun e!168142 () Unit!8042)

(assert (=> d!62287 (= lt!130767 e!168142)))

(declare-fun c!44028 () Bool)

(assert (=> d!62287 (= c!44028 lt!130766)))

(assert (=> d!62287 (= lt!130766 (containsKey!305 (toList!1946 lt!130496) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(assert (=> d!62287 (= (contains!1881 lt!130496 (select (arr!5950 lt!130346) #b00000000000000000000000000000000)) lt!130765)))

(declare-fun b!259434 () Bool)

(declare-fun lt!130764 () Unit!8042)

(assert (=> b!259434 (= e!168142 lt!130764)))

(assert (=> b!259434 (= lt!130764 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130496) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(assert (=> b!259434 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130496) (select (arr!5950 lt!130346) #b00000000000000000000000000000000)))))

(declare-fun b!259435 () Bool)

(declare-fun Unit!8063 () Unit!8042)

(assert (=> b!259435 (= e!168142 Unit!8063)))

(declare-fun b!259436 () Bool)

(assert (=> b!259436 (= e!168143 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130496) (select (arr!5950 lt!130346) #b00000000000000000000000000000000))))))

(assert (= (and d!62287 c!44028) b!259434))

(assert (= (and d!62287 (not c!44028)) b!259435))

(assert (= (and d!62287 (not res!126844)) b!259436))

(assert (=> d!62287 m!274461))

(declare-fun m!275201 () Bool)

(assert (=> d!62287 m!275201))

(assert (=> b!259434 m!274461))

(declare-fun m!275203 () Bool)

(assert (=> b!259434 m!275203))

(assert (=> b!259434 m!274461))

(assert (=> b!259434 m!274823))

(assert (=> b!259434 m!274823))

(declare-fun m!275205 () Bool)

(assert (=> b!259434 m!275205))

(assert (=> b!259436 m!274461))

(assert (=> b!259436 m!274823))

(assert (=> b!259436 m!274823))

(assert (=> b!259436 m!275205))

(assert (=> b!258986 d!62287))

(declare-fun d!62289 () Bool)

(assert (=> d!62289 (= (apply!256 lt!130543 (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000)) (get!3064 (getValueByKey!313 (toList!1946 lt!130543) (select (arr!5950 (_keys!6948 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9153 () Bool)

(assert (= bs!9153 d!62289))

(assert (=> bs!9153 m!274449))

(assert (=> bs!9153 m!275195))

(assert (=> bs!9153 m!275195))

(declare-fun m!275207 () Bool)

(assert (=> bs!9153 m!275207))

(assert (=> b!259025 d!62289))

(declare-fun d!62291 () Bool)

(declare-fun c!44029 () Bool)

(assert (=> d!62291 (= c!44029 ((_ is ValueCellFull!2961) (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!168144 () V!8459)

(assert (=> d!62291 (= (get!3063 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!168144)))

(declare-fun b!259437 () Bool)

(assert (=> b!259437 (= e!168144 (get!3065 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!259438 () Bool)

(assert (=> b!259438 (= e!168144 (get!3066 (select (arr!5949 (_values!4757 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!594 (defaultEntry!4774 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62291 c!44029) b!259437))

(assert (= (and d!62291 (not c!44029)) b!259438))

(assert (=> b!259437 m!274567))

(assert (=> b!259437 m!274483))

(declare-fun m!275209 () Bool)

(assert (=> b!259437 m!275209))

(assert (=> b!259438 m!274567))

(assert (=> b!259438 m!274483))

(declare-fun m!275211 () Bool)

(assert (=> b!259438 m!275211))

(assert (=> b!259025 d!62291))

(assert (=> b!258971 d!62117))

(declare-fun d!62293 () Bool)

(declare-fun e!168146 () Bool)

(assert (=> d!62293 e!168146))

(declare-fun res!126845 () Bool)

(assert (=> d!62293 (=> res!126845 e!168146)))

(declare-fun lt!130769 () Bool)

(assert (=> d!62293 (= res!126845 (not lt!130769))))

(declare-fun lt!130770 () Bool)

(assert (=> d!62293 (= lt!130769 lt!130770)))

(declare-fun lt!130771 () Unit!8042)

(declare-fun e!168145 () Unit!8042)

(assert (=> d!62293 (= lt!130771 e!168145)))

(declare-fun c!44030 () Bool)

(assert (=> d!62293 (= c!44030 lt!130770)))

(assert (=> d!62293 (= lt!130770 (containsKey!305 (toList!1946 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504))) key!932))))

(assert (=> d!62293 (= (contains!1881 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) key!932) lt!130769)))

(declare-fun b!259439 () Bool)

(declare-fun lt!130768 () Unit!8042)

(assert (=> b!259439 (= e!168145 lt!130768)))

(assert (=> b!259439 (= lt!130768 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504))) key!932))))

(assert (=> b!259439 (isDefined!255 (getValueByKey!313 (toList!1946 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504))) key!932))))

(declare-fun b!259440 () Bool)

(declare-fun Unit!8064 () Unit!8042)

(assert (=> b!259440 (= e!168145 Unit!8064)))

(declare-fun b!259441 () Bool)

(assert (=> b!259441 (= e!168146 (isDefined!255 (getValueByKey!313 (toList!1946 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504))) key!932)))))

(assert (= (and d!62293 c!44030) b!259439))

(assert (= (and d!62293 (not c!44030)) b!259440))

(assert (= (and d!62293 (not res!126845)) b!259441))

(declare-fun m!275213 () Bool)

(assert (=> d!62293 m!275213))

(declare-fun m!275215 () Bool)

(assert (=> b!259439 m!275215))

(declare-fun m!275217 () Bool)

(assert (=> b!259439 m!275217))

(assert (=> b!259439 m!275217))

(declare-fun m!275219 () Bool)

(assert (=> b!259439 m!275219))

(assert (=> b!259441 m!275217))

(assert (=> b!259441 m!275217))

(assert (=> b!259441 m!275219))

(assert (=> d!62095 d!62293))

(assert (=> d!62095 d!62087))

(declare-fun d!62295 () Bool)

(assert (=> d!62295 (contains!1881 (getCurrentListMap!1469 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) key!932)))

(assert (=> d!62295 true))

(declare-fun _$17!86 () Unit!8042)

(assert (=> d!62295 (= (choose!1262 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4774 thiss!1504)) _$17!86)))

(declare-fun bs!9154 () Bool)

(assert (= bs!9154 d!62295))

(assert (=> bs!9154 m!274349))

(assert (=> bs!9154 m!274349))

(assert (=> bs!9154 m!274629))

(assert (=> d!62095 d!62295))

(assert (=> d!62095 d!62079))

(assert (=> d!62097 d!62099))

(declare-fun b!259458 () Bool)

(declare-fun e!168155 () Bool)

(declare-fun e!168158 () Bool)

(assert (=> b!259458 (= e!168155 e!168158)))

(declare-fun res!126854 () Bool)

(declare-fun call!24708 () Bool)

(assert (=> b!259458 (= res!126854 call!24708)))

(assert (=> b!259458 (=> (not res!126854) (not e!168158))))

(declare-fun b!259459 () Bool)

(declare-fun e!168156 () Bool)

(assert (=> b!259459 (= e!168155 e!168156)))

(declare-fun c!44035 () Bool)

(declare-fun lt!130774 () SeekEntryResult!1187)

(assert (=> b!259459 (= c!44035 ((_ is MissingVacant!1187) lt!130774))))

(declare-fun d!62297 () Bool)

(assert (=> d!62297 e!168155))

(declare-fun c!44036 () Bool)

(assert (=> d!62297 (= c!44036 ((_ is MissingZero!1187) lt!130774))))

(assert (=> d!62297 (= lt!130774 (seekEntryOrOpen!0 key!932 (_keys!6948 thiss!1504) (mask!11082 thiss!1504)))))

(assert (=> d!62297 true))

(declare-fun _$34!1119 () Unit!8042)

(assert (=> d!62297 (= (choose!1263 (_keys!6948 thiss!1504) (_values!4757 thiss!1504) (mask!11082 thiss!1504) (extraKeys!4511 thiss!1504) (zeroValue!4615 thiss!1504) (minValue!4615 thiss!1504) key!932 (defaultEntry!4774 thiss!1504)) _$34!1119)))

(declare-fun b!259460 () Bool)

(declare-fun res!126855 () Bool)

(assert (=> b!259460 (= res!126855 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6918 lt!130774)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259460 (=> (not res!126855) (not e!168158))))

(declare-fun b!259461 () Bool)

(declare-fun res!126857 () Bool)

(declare-fun e!168157 () Bool)

(assert (=> b!259461 (=> (not res!126857) (not e!168157))))

(assert (=> b!259461 (= res!126857 call!24708)))

(assert (=> b!259461 (= e!168156 e!168157)))

(declare-fun bm!24705 () Bool)

(assert (=> bm!24705 (= call!24708 (inRange!0 (ite c!44036 (index!6918 lt!130774) (index!6921 lt!130774)) (mask!11082 thiss!1504)))))

(declare-fun b!259462 () Bool)

(declare-fun res!126856 () Bool)

(assert (=> b!259462 (=> (not res!126856) (not e!168157))))

(assert (=> b!259462 (= res!126856 (= (select (arr!5950 (_keys!6948 thiss!1504)) (index!6921 lt!130774)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24706 () Bool)

(declare-fun call!24709 () Bool)

(assert (=> bm!24706 (= call!24709 (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!259463 () Bool)

(assert (=> b!259463 (= e!168156 ((_ is Undefined!1187) lt!130774))))

(declare-fun b!259464 () Bool)

(assert (=> b!259464 (= e!168157 (not call!24709))))

(declare-fun b!259465 () Bool)

(assert (=> b!259465 (= e!168158 (not call!24709))))

(assert (= (and d!62297 c!44036) b!259458))

(assert (= (and d!62297 (not c!44036)) b!259459))

(assert (= (and b!259458 res!126854) b!259460))

(assert (= (and b!259460 res!126855) b!259465))

(assert (= (and b!259459 c!44035) b!259461))

(assert (= (and b!259459 (not c!44035)) b!259463))

(assert (= (and b!259461 res!126857) b!259462))

(assert (= (and b!259462 res!126856) b!259464))

(assert (= (or b!259458 b!259461) bm!24705))

(assert (= (or b!259465 b!259464) bm!24706))

(declare-fun m!275221 () Bool)

(assert (=> b!259460 m!275221))

(declare-fun m!275223 () Bool)

(assert (=> b!259462 m!275223))

(assert (=> d!62297 m!274357))

(assert (=> bm!24706 m!274303))

(declare-fun m!275225 () Bool)

(assert (=> bm!24705 m!275225))

(assert (=> d!62097 d!62297))

(assert (=> d!62097 d!62079))

(assert (=> b!259008 d!62209))

(declare-fun d!62299 () Bool)

(declare-fun res!126858 () Bool)

(declare-fun e!168159 () Bool)

(assert (=> d!62299 (=> res!126858 e!168159)))

(assert (=> d!62299 (= res!126858 (= (select (arr!5950 (_keys!6948 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!62299 (= (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!168159)))

(declare-fun b!259466 () Bool)

(declare-fun e!168160 () Bool)

(assert (=> b!259466 (= e!168159 e!168160)))

(declare-fun res!126859 () Bool)

(assert (=> b!259466 (=> (not res!126859) (not e!168160))))

(assert (=> b!259466 (= res!126859 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6298 (_keys!6948 thiss!1504))))))

(declare-fun b!259467 () Bool)

(assert (=> b!259467 (= e!168160 (arrayContainsKey!0 (_keys!6948 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!62299 (not res!126858)) b!259466))

(assert (= (and b!259466 res!126859) b!259467))

(assert (=> d!62299 m!274973))

(declare-fun m!275227 () Bool)

(assert (=> b!259467 m!275227))

(assert (=> b!259002 d!62299))

(assert (=> b!258988 d!62117))

(declare-fun d!62301 () Bool)

(declare-fun e!168162 () Bool)

(assert (=> d!62301 e!168162))

(declare-fun res!126860 () Bool)

(assert (=> d!62301 (=> res!126860 e!168162)))

(declare-fun lt!130776 () Bool)

(assert (=> d!62301 (= res!126860 (not lt!130776))))

(declare-fun lt!130777 () Bool)

(assert (=> d!62301 (= lt!130776 lt!130777)))

(declare-fun lt!130778 () Unit!8042)

(declare-fun e!168161 () Unit!8042)

(assert (=> d!62301 (= lt!130778 e!168161)))

(declare-fun c!44037 () Bool)

(assert (=> d!62301 (= c!44037 lt!130777)))

(assert (=> d!62301 (= lt!130777 (containsKey!305 (toList!1946 lt!130496) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62301 (= (contains!1881 lt!130496 #b1000000000000000000000000000000000000000000000000000000000000000) lt!130776)))

(declare-fun b!259468 () Bool)

(declare-fun lt!130775 () Unit!8042)

(assert (=> b!259468 (= e!168161 lt!130775)))

(assert (=> b!259468 (= lt!130775 (lemmaContainsKeyImpliesGetValueByKeyDefined!254 (toList!1946 lt!130496) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259468 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130496) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259469 () Bool)

(declare-fun Unit!8065 () Unit!8042)

(assert (=> b!259469 (= e!168161 Unit!8065)))

(declare-fun b!259470 () Bool)

(assert (=> b!259470 (= e!168162 (isDefined!255 (getValueByKey!313 (toList!1946 lt!130496) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62301 c!44037) b!259468))

(assert (= (and d!62301 (not c!44037)) b!259469))

(assert (= (and d!62301 (not res!126860)) b!259470))

(declare-fun m!275229 () Bool)

(assert (=> d!62301 m!275229))

(declare-fun m!275231 () Bool)

(assert (=> b!259468 m!275231))

(assert (=> b!259468 m!274805))

(assert (=> b!259468 m!274805))

(declare-fun m!275233 () Bool)

(assert (=> b!259468 m!275233))

(assert (=> b!259470 m!274805))

(assert (=> b!259470 m!274805))

(assert (=> b!259470 m!275233))

(assert (=> bm!24655 d!62301))

(assert (=> b!258898 d!62117))

(assert (=> bm!24649 d!62259))

(declare-fun d!62303 () Bool)

(assert (=> d!62303 (= (arrayCountValidKeys!0 (array!12569 (store (arr!5950 (_keys!6948 thiss!1504)) index!297 key!932) (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6948 thiss!1504) #b00000000000000000000000000000000 (size!6298 (_keys!6948 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!62303 true))

(declare-fun _$84!39 () Unit!8042)

(assert (=> d!62303 (= (choose!1 (_keys!6948 thiss!1504) index!297 key!932) _$84!39)))

(declare-fun bs!9155 () Bool)

(assert (= bs!9155 d!62303))

(assert (=> bs!9155 m!274331))

(assert (=> bs!9155 m!274427))

(assert (=> bs!9155 m!274319))

(assert (=> d!62051 d!62303))

(declare-fun mapIsEmpty!11264 () Bool)

(declare-fun mapRes!11264 () Bool)

(assert (=> mapIsEmpty!11264 mapRes!11264))

(declare-fun b!259471 () Bool)

(declare-fun e!168164 () Bool)

(assert (=> b!259471 (= e!168164 tp_is_empty!6609)))

(declare-fun b!259472 () Bool)

(declare-fun e!168163 () Bool)

(assert (=> b!259472 (= e!168163 tp_is_empty!6609)))

(declare-fun condMapEmpty!11264 () Bool)

(declare-fun mapDefault!11264 () ValueCell!2961)

(assert (=> mapNonEmpty!11263 (= condMapEmpty!11264 (= mapRest!11263 ((as const (Array (_ BitVec 32) ValueCell!2961)) mapDefault!11264)))))

(assert (=> mapNonEmpty!11263 (= tp!23566 (and e!168163 mapRes!11264))))

(declare-fun mapNonEmpty!11264 () Bool)

(declare-fun tp!23567 () Bool)

(assert (=> mapNonEmpty!11264 (= mapRes!11264 (and tp!23567 e!168164))))

(declare-fun mapKey!11264 () (_ BitVec 32))

(declare-fun mapRest!11264 () (Array (_ BitVec 32) ValueCell!2961))

(declare-fun mapValue!11264 () ValueCell!2961)

(assert (=> mapNonEmpty!11264 (= mapRest!11263 (store mapRest!11264 mapKey!11264 mapValue!11264))))

(assert (= (and mapNonEmpty!11263 condMapEmpty!11264) mapIsEmpty!11264))

(assert (= (and mapNonEmpty!11263 (not condMapEmpty!11264)) mapNonEmpty!11264))

(assert (= (and mapNonEmpty!11264 ((_ is ValueCellFull!2961) mapValue!11264)) b!259471))

(assert (= (and mapNonEmpty!11263 ((_ is ValueCellFull!2961) mapDefault!11264)) b!259472))

(declare-fun m!275235 () Bool)

(assert (=> mapNonEmpty!11264 m!275235))

(declare-fun b_lambda!8271 () Bool)

(assert (= b_lambda!8267 (or (and b!258791 b_free!6747) b_lambda!8271)))

(declare-fun b_lambda!8273 () Bool)

(assert (= b_lambda!8261 (or (and b!258791 b_free!6747) b_lambda!8273)))

(declare-fun b_lambda!8275 () Bool)

(assert (= b_lambda!8269 (or (and b!258791 b_free!6747) b_lambda!8275)))

(declare-fun b_lambda!8277 () Bool)

(assert (= b_lambda!8265 (or (and b!258791 b_free!6747) b_lambda!8277)))

(declare-fun b_lambda!8279 () Bool)

(assert (= b_lambda!8263 (or (and b!258791 b_free!6747) b_lambda!8279)))

(check-sat (not d!62301) (not b!259176) (not d!62269) (not d!62241) (not d!62259) (not b!259427) (not b!259432) (not b!259323) (not d!62245) (not bm!24671) (not d!62235) (not d!62295) (not b!259379) (not d!62237) (not b!259171) (not b!259371) (not d!62243) (not b!259228) tp_is_empty!6609 (not b!259351) (not d!62247) (not bm!24672) (not d!62165) (not b!259295) (not b!259140) (not b!259374) (not b!259139) (not b!259363) (not d!62171) (not d!62293) (not b!259298) (not bm!24679) (not b!259316) (not b_lambda!8275) (not d!62263) (not b!259402) (not b!259141) (not b!259368) (not b!259107) (not d!62199) (not b!259220) (not b!259180) (not b!259429) (not b!259216) (not b!259378) (not d!62255) (not b!259238) (not b!259211) (not d!62219) (not b!259377) (not d!62183) (not d!62187) (not d!62195) b_and!13869 (not b!259367) (not d!62271) (not b!259362) (not b!259310) (not b!259319) (not b!259212) (not bm!24695) (not b!259217) (not b_lambda!8271) (not b!259170) (not b!259421) (not b!259408) (not b!259201) (not d!62135) (not b!259381) (not b_lambda!8277) (not b!259219) (not b!259283) (not d!62105) (not b!259250) (not b!259134) (not b!259182) (not b!259253) (not b!259438) (not d!62225) (not bm!24676) (not b!259229) (not b!259287) (not b!259468) (not b!259400) (not b!259467) (not d!62125) (not b!259193) (not d!62157) (not bm!24691) (not d!62215) (not b!259128) (not b!259470) (not d!62141) (not b!259301) (not b!259110) (not d!62175) (not d!62207) (not b!259366) (not b!259437) (not b!259361) (not b!259303) (not d!62179) (not b!259169) (not b!259135) (not b!259175) (not b!259179) (not bm!24689) (not b!259373) (not b!259105) (not d!62239) (not d!62297) (not bm!24670) (not d!62287) (not b!259297) (not b!259299) (not d!62137) (not b!259124) (not bm!24692) (not b_next!6747) (not d!62159) (not b!259247) (not d!62253) (not d!62131) (not b!259306) (not b_lambda!8273) (not d!62261) (not d!62191) (not b!259302) (not d!62107) (not b!259192) (not d!62203) (not b!259248) (not d!62289) (not b!259439) (not b!259111) (not d!62211) (not bm!24675) (not b!259203) (not b!259357) (not b!259241) (not d!62281) (not b!259285) (not b!259360) (not d!62275) (not b!259214) (not b!259234) (not bm!24705) (not d!62181) (not b!259436) (not b!259398) (not b_lambda!8279) (not b!259173) (not bm!24680) (not b!259168) (not bm!24706) (not b!259226) (not b!259260) (not b!259411) (not b!259434) (not bm!24696) (not b!259425) (not d!62249) (not d!62177) (not b!259205) (not d!62189) (not d!62163) (not b!259326) (not b!259418) (not b!259404) (not bm!24699) (not d!62121) (not bm!24700) (not b!259246) (not d!62167) (not d!62155) (not d!62233) (not b!259419) (not b!259369) (not bm!24693) (not b!259364) (not d!62279) (not b!259137) (not d!62231) (not d!62193) (not d!62119) (not b!259413) (not b!259380) (not b!259259) (not d!62273) (not b!259307) (not b!259401) (not bm!24678) (not b!259109) (not b!259221) (not b!259441) (not b!259200) (not b!259240) (not d!62205) (not b_lambda!8257) (not bm!24677) (not d!62303) (not bm!24690) (not b!259296) (not d!62197) (not d!62113) (not d!62251) (not d!62229) (not mapNonEmpty!11264) (not d!62149) (not b_lambda!8259) (not b!259355) (not d!62257) (not b!259108) (not b!259359) (not d!62267) (not d!62133) (not d!62185) (not d!62201))
(check-sat b_and!13869 (not b_next!6747))
