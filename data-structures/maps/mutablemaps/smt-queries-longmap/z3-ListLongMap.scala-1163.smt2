; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24572 () Bool)

(assert start!24572)

(declare-fun b!257119 () Bool)

(declare-fun b_free!6729 () Bool)

(declare-fun b_next!6729 () Bool)

(assert (=> b!257119 (= b_free!6729 (not b_next!6729))))

(declare-fun tp!23492 () Bool)

(declare-fun b_and!13813 () Bool)

(assert (=> b!257119 (= tp!23492 b_and!13813)))

(declare-fun b!257107 () Bool)

(declare-fun res!125784 () Bool)

(declare-fun e!166671 () Bool)

(assert (=> b!257107 (=> (not res!125784) (not e!166671))))

(declare-datatypes ((V!8435 0))(
  ( (V!8436 (val!3340 Int)) )
))
(declare-datatypes ((ValueCell!2952 0))(
  ( (ValueCellFull!2952 (v!5428 V!8435)) (EmptyCell!2952) )
))
(declare-datatypes ((array!12524 0))(
  ( (array!12525 (arr!5931 (Array (_ BitVec 32) ValueCell!2952)) (size!6278 (_ BitVec 32))) )
))
(declare-datatypes ((array!12526 0))(
  ( (array!12527 (arr!5932 (Array (_ BitVec 32) (_ BitVec 64))) (size!6279 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3804 0))(
  ( (LongMapFixedSize!3805 (defaultEntry!4745 Int) (mask!11029 (_ BitVec 32)) (extraKeys!4482 (_ BitVec 32)) (zeroValue!4586 V!8435) (minValue!4586 V!8435) (_size!1951 (_ BitVec 32)) (_keys!6911 array!12526) (_values!4728 array!12524) (_vacant!1951 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3804)

(declare-datatypes ((SeekEntryResult!1178 0))(
  ( (MissingZero!1178 (index!6882 (_ BitVec 32))) (Found!1178 (index!6883 (_ BitVec 32))) (Intermediate!1178 (undefined!1990 Bool) (index!6884 (_ BitVec 32)) (x!25010 (_ BitVec 32))) (Undefined!1178) (MissingVacant!1178 (index!6885 (_ BitVec 32))) )
))
(declare-fun lt!129252 () SeekEntryResult!1178)

(assert (=> b!257107 (= res!125784 (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6882 lt!129252)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257108 () Bool)

(declare-fun call!24395 () Bool)

(assert (=> b!257108 (= e!166671 (not call!24395))))

(declare-fun b!257109 () Bool)

(declare-fun e!166673 () Bool)

(declare-fun e!166675 () Bool)

(assert (=> b!257109 (= e!166673 e!166675)))

(declare-fun res!125786 () Bool)

(assert (=> b!257109 (=> (not res!125786) (not e!166675))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!257109 (= res!125786 (or (= lt!129252 (MissingZero!1178 index!297)) (= lt!129252 (MissingVacant!1178 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12526 (_ BitVec 32)) SeekEntryResult!1178)

(assert (=> b!257109 (= lt!129252 (seekEntryOrOpen!0 key!932 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)))))

(declare-fun c!43481 () Bool)

(declare-fun bm!24391 () Bool)

(declare-fun call!24394 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24391 (= call!24394 (inRange!0 (ite c!43481 (index!6882 lt!129252) (index!6885 lt!129252)) (mask!11029 thiss!1504)))))

(declare-fun b!257110 () Bool)

(declare-datatypes ((Unit!7982 0))(
  ( (Unit!7983) )
))
(declare-fun e!166679 () Unit!7982)

(declare-fun lt!129261 () Unit!7982)

(assert (=> b!257110 (= e!166679 lt!129261)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!432 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 64) Int) Unit!7982)

(assert (=> b!257110 (= lt!129261 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!432 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 (defaultEntry!4745 thiss!1504)))))

(get-info :version)

(assert (=> b!257110 (= c!43481 ((_ is MissingZero!1178) lt!129252))))

(declare-fun e!166682 () Bool)

(assert (=> b!257110 e!166682))

(declare-fun b!257111 () Bool)

(declare-fun e!166681 () Bool)

(assert (=> b!257111 (= e!166675 e!166681)))

(declare-fun res!125782 () Bool)

(assert (=> b!257111 (=> (not res!125782) (not e!166681))))

(assert (=> b!257111 (= res!125782 (inRange!0 index!297 (mask!11029 thiss!1504)))))

(declare-fun lt!129255 () Unit!7982)

(assert (=> b!257111 (= lt!129255 e!166679)))

(declare-fun c!43483 () Bool)

(declare-datatypes ((tuple2!4916 0))(
  ( (tuple2!4917 (_1!2468 (_ BitVec 64)) (_2!2468 V!8435)) )
))
(declare-datatypes ((List!3819 0))(
  ( (Nil!3816) (Cons!3815 (h!4477 tuple2!4916) (t!8886 List!3819)) )
))
(declare-datatypes ((ListLongMap!3843 0))(
  ( (ListLongMap!3844 (toList!1937 List!3819)) )
))
(declare-fun lt!129260 () ListLongMap!3843)

(declare-fun contains!1870 (ListLongMap!3843 (_ BitVec 64)) Bool)

(assert (=> b!257111 (= c!43483 (contains!1870 lt!129260 key!932))))

(declare-fun getCurrentListMap!1460 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 32) Int) ListLongMap!3843)

(assert (=> b!257111 (= lt!129260 (getCurrentListMap!1460 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun b!257112 () Bool)

(declare-fun e!166678 () Bool)

(declare-fun e!166680 () Bool)

(declare-fun mapRes!11220 () Bool)

(assert (=> b!257112 (= e!166678 (and e!166680 mapRes!11220))))

(declare-fun condMapEmpty!11220 () Bool)

(declare-fun mapDefault!11220 () ValueCell!2952)

(assert (=> b!257112 (= condMapEmpty!11220 (= (arr!5931 (_values!4728 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2952)) mapDefault!11220)))))

(declare-fun b!257113 () Bool)

(assert (=> b!257113 (= e!166681 (not (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6278 (_values!4728 thiss!1504))))))))

(declare-fun lt!129259 () array!12526)

(declare-fun arrayCountValidKeys!0 (array!12526 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257113 (= (arrayCountValidKeys!0 lt!129259 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!129254 () Unit!7982)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12526 (_ BitVec 32)) Unit!7982)

(assert (=> b!257113 (= lt!129254 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129259 index!297))))

(declare-fun arrayContainsKey!0 (array!12526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!257113 (arrayContainsKey!0 lt!129259 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129262 () Unit!7982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12526 (_ BitVec 64) (_ BitVec 32)) Unit!7982)

(assert (=> b!257113 (= lt!129262 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129259 key!932 index!297))))

(declare-fun v!346 () V!8435)

(declare-fun +!681 (ListLongMap!3843 tuple2!4916) ListLongMap!3843)

(assert (=> b!257113 (= (+!681 lt!129260 (tuple2!4917 key!932 v!346)) (getCurrentListMap!1460 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129257 () Unit!7982)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!96 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 32) (_ BitVec 64) V!8435 Int) Unit!7982)

(assert (=> b!257113 (= lt!129257 (lemmaAddValidKeyToArrayThenAddPairToListMap!96 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) index!297 key!932 v!346 (defaultEntry!4745 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12526 (_ BitVec 32)) Bool)

(assert (=> b!257113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129259 (mask!11029 thiss!1504))))

(declare-fun lt!129256 () Unit!7982)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12526 (_ BitVec 32) (_ BitVec 32)) Unit!7982)

(assert (=> b!257113 (= lt!129256 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6911 thiss!1504) index!297 (mask!11029 thiss!1504)))))

(assert (=> b!257113 (= (arrayCountValidKeys!0 lt!129259 #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6911 thiss!1504) #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504)))))))

(declare-fun lt!129253 () Unit!7982)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12526 (_ BitVec 32) (_ BitVec 64)) Unit!7982)

(assert (=> b!257113 (= lt!129253 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6911 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3820 0))(
  ( (Nil!3817) (Cons!3816 (h!4478 (_ BitVec 64)) (t!8887 List!3820)) )
))
(declare-fun arrayNoDuplicates!0 (array!12526 (_ BitVec 32) List!3820) Bool)

(assert (=> b!257113 (arrayNoDuplicates!0 lt!129259 #b00000000000000000000000000000000 Nil!3817)))

(assert (=> b!257113 (= lt!129259 (array!12527 (store (arr!5932 (_keys!6911 thiss!1504)) index!297 key!932) (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun lt!129258 () Unit!7982)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12526 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3820) Unit!7982)

(assert (=> b!257113 (= lt!129258 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6911 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3817))))

(declare-fun lt!129263 () Unit!7982)

(declare-fun e!166674 () Unit!7982)

(assert (=> b!257113 (= lt!129263 e!166674)))

(declare-fun c!43482 () Bool)

(assert (=> b!257113 (= c!43482 (arrayContainsKey!0 (_keys!6911 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257114 () Bool)

(declare-fun res!125787 () Bool)

(assert (=> b!257114 (=> (not res!125787) (not e!166671))))

(assert (=> b!257114 (= res!125787 call!24394)))

(assert (=> b!257114 (= e!166682 e!166671)))

(declare-fun mapNonEmpty!11220 () Bool)

(declare-fun tp!23493 () Bool)

(declare-fun e!166677 () Bool)

(assert (=> mapNonEmpty!11220 (= mapRes!11220 (and tp!23493 e!166677))))

(declare-fun mapValue!11220 () ValueCell!2952)

(declare-fun mapKey!11220 () (_ BitVec 32))

(declare-fun mapRest!11220 () (Array (_ BitVec 32) ValueCell!2952))

(assert (=> mapNonEmpty!11220 (= (arr!5931 (_values!4728 thiss!1504)) (store mapRest!11220 mapKey!11220 mapValue!11220))))

(declare-fun b!257116 () Bool)

(declare-fun tp_is_empty!6591 () Bool)

(assert (=> b!257116 (= e!166677 tp_is_empty!6591)))

(declare-fun b!257117 () Bool)

(declare-fun Unit!7984 () Unit!7982)

(assert (=> b!257117 (= e!166679 Unit!7984)))

(declare-fun lt!129251 () Unit!7982)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!432 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 64) Int) Unit!7982)

(assert (=> b!257117 (= lt!129251 (lemmaInListMapThenSeekEntryOrOpenFindsIt!432 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 (defaultEntry!4745 thiss!1504)))))

(assert (=> b!257117 false))

(declare-fun b!257118 () Bool)

(assert (=> b!257118 (= e!166680 tp_is_empty!6591)))

(declare-fun e!166676 () Bool)

(declare-fun array_inv!3909 (array!12526) Bool)

(declare-fun array_inv!3910 (array!12524) Bool)

(assert (=> b!257119 (= e!166676 (and tp!23492 tp_is_empty!6591 (array_inv!3909 (_keys!6911 thiss!1504)) (array_inv!3910 (_values!4728 thiss!1504)) e!166678))))

(declare-fun b!257120 () Bool)

(declare-fun res!125788 () Bool)

(assert (=> b!257120 (=> (not res!125788) (not e!166673))))

(assert (=> b!257120 (= res!125788 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!257121 () Bool)

(declare-fun Unit!7985 () Unit!7982)

(assert (=> b!257121 (= e!166674 Unit!7985)))

(declare-fun b!257122 () Bool)

(declare-fun res!125783 () Bool)

(assert (=> b!257122 (= res!125783 (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6885 lt!129252)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166683 () Bool)

(assert (=> b!257122 (=> (not res!125783) (not e!166683))))

(declare-fun b!257115 () Bool)

(declare-fun c!43480 () Bool)

(assert (=> b!257115 (= c!43480 ((_ is MissingVacant!1178) lt!129252))))

(declare-fun e!166672 () Bool)

(assert (=> b!257115 (= e!166682 e!166672)))

(declare-fun res!125785 () Bool)

(assert (=> start!24572 (=> (not res!125785) (not e!166673))))

(declare-fun valid!1479 (LongMapFixedSize!3804) Bool)

(assert (=> start!24572 (= res!125785 (valid!1479 thiss!1504))))

(assert (=> start!24572 e!166673))

(assert (=> start!24572 e!166676))

(assert (=> start!24572 true))

(assert (=> start!24572 tp_is_empty!6591))

(declare-fun mapIsEmpty!11220 () Bool)

(assert (=> mapIsEmpty!11220 mapRes!11220))

(declare-fun b!257123 () Bool)

(declare-fun Unit!7986 () Unit!7982)

(assert (=> b!257123 (= e!166674 Unit!7986)))

(declare-fun lt!129264 () Unit!7982)

(declare-fun lemmaArrayContainsKeyThenInListMap!238 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 64) (_ BitVec 32) Int) Unit!7982)

(assert (=> b!257123 (= lt!129264 (lemmaArrayContainsKeyThenInListMap!238 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(assert (=> b!257123 false))

(declare-fun b!257124 () Bool)

(assert (=> b!257124 (= e!166672 ((_ is Undefined!1178) lt!129252))))

(declare-fun bm!24392 () Bool)

(assert (=> bm!24392 (= call!24395 (arrayContainsKey!0 (_keys!6911 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257125 () Bool)

(assert (=> b!257125 (= e!166683 (not call!24395))))

(declare-fun b!257126 () Bool)

(assert (=> b!257126 (= e!166672 e!166683)))

(declare-fun res!125781 () Bool)

(assert (=> b!257126 (= res!125781 call!24394)))

(assert (=> b!257126 (=> (not res!125781) (not e!166683))))

(assert (= (and start!24572 res!125785) b!257120))

(assert (= (and b!257120 res!125788) b!257109))

(assert (= (and b!257109 res!125786) b!257111))

(assert (= (and b!257111 c!43483) b!257117))

(assert (= (and b!257111 (not c!43483)) b!257110))

(assert (= (and b!257110 c!43481) b!257114))

(assert (= (and b!257110 (not c!43481)) b!257115))

(assert (= (and b!257114 res!125787) b!257107))

(assert (= (and b!257107 res!125784) b!257108))

(assert (= (and b!257115 c!43480) b!257126))

(assert (= (and b!257115 (not c!43480)) b!257124))

(assert (= (and b!257126 res!125781) b!257122))

(assert (= (and b!257122 res!125783) b!257125))

(assert (= (or b!257114 b!257126) bm!24391))

(assert (= (or b!257108 b!257125) bm!24392))

(assert (= (and b!257111 res!125782) b!257113))

(assert (= (and b!257113 c!43482) b!257123))

(assert (= (and b!257113 (not c!43482)) b!257121))

(assert (= (and b!257112 condMapEmpty!11220) mapIsEmpty!11220))

(assert (= (and b!257112 (not condMapEmpty!11220)) mapNonEmpty!11220))

(assert (= (and mapNonEmpty!11220 ((_ is ValueCellFull!2952) mapValue!11220)) b!257116))

(assert (= (and b!257112 ((_ is ValueCellFull!2952) mapDefault!11220)) b!257118))

(assert (= b!257119 b!257112))

(assert (= start!24572 b!257119))

(declare-fun m!272455 () Bool)

(assert (=> bm!24392 m!272455))

(declare-fun m!272457 () Bool)

(assert (=> mapNonEmpty!11220 m!272457))

(assert (=> b!257113 m!272455))

(declare-fun m!272459 () Bool)

(assert (=> b!257113 m!272459))

(declare-fun m!272461 () Bool)

(assert (=> b!257113 m!272461))

(declare-fun m!272463 () Bool)

(assert (=> b!257113 m!272463))

(declare-fun m!272465 () Bool)

(assert (=> b!257113 m!272465))

(declare-fun m!272467 () Bool)

(assert (=> b!257113 m!272467))

(declare-fun m!272469 () Bool)

(assert (=> b!257113 m!272469))

(declare-fun m!272471 () Bool)

(assert (=> b!257113 m!272471))

(declare-fun m!272473 () Bool)

(assert (=> b!257113 m!272473))

(declare-fun m!272475 () Bool)

(assert (=> b!257113 m!272475))

(declare-fun m!272477 () Bool)

(assert (=> b!257113 m!272477))

(declare-fun m!272479 () Bool)

(assert (=> b!257113 m!272479))

(declare-fun m!272481 () Bool)

(assert (=> b!257113 m!272481))

(declare-fun m!272483 () Bool)

(assert (=> b!257113 m!272483))

(declare-fun m!272485 () Bool)

(assert (=> b!257113 m!272485))

(declare-fun m!272487 () Bool)

(assert (=> b!257113 m!272487))

(declare-fun m!272489 () Bool)

(assert (=> b!257113 m!272489))

(declare-fun m!272491 () Bool)

(assert (=> b!257123 m!272491))

(declare-fun m!272493 () Bool)

(assert (=> b!257111 m!272493))

(declare-fun m!272495 () Bool)

(assert (=> b!257111 m!272495))

(declare-fun m!272497 () Bool)

(assert (=> b!257111 m!272497))

(declare-fun m!272499 () Bool)

(assert (=> b!257122 m!272499))

(declare-fun m!272501 () Bool)

(assert (=> start!24572 m!272501))

(declare-fun m!272503 () Bool)

(assert (=> b!257110 m!272503))

(declare-fun m!272505 () Bool)

(assert (=> b!257119 m!272505))

(declare-fun m!272507 () Bool)

(assert (=> b!257119 m!272507))

(declare-fun m!272509 () Bool)

(assert (=> b!257117 m!272509))

(declare-fun m!272511 () Bool)

(assert (=> bm!24391 m!272511))

(declare-fun m!272513 () Bool)

(assert (=> b!257109 m!272513))

(declare-fun m!272515 () Bool)

(assert (=> b!257107 m!272515))

(check-sat (not b!257110) b_and!13813 (not b!257123) (not mapNonEmpty!11220) (not bm!24391) (not b!257119) (not start!24572) tp_is_empty!6591 (not b!257113) (not b!257117) (not bm!24392) (not b_next!6729) (not b!257111) (not b!257109))
(check-sat b_and!13813 (not b_next!6729))
(get-model)

(declare-fun d!61685 () Bool)

(assert (=> d!61685 (contains!1870 (getCurrentListMap!1460 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)) key!932)))

(declare-fun lt!129309 () Unit!7982)

(declare-fun choose!1244 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 64) (_ BitVec 32) Int) Unit!7982)

(assert (=> d!61685 (= lt!129309 (choose!1244 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61685 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61685 (= (lemmaArrayContainsKeyThenInListMap!238 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)) lt!129309)))

(declare-fun bs!9081 () Bool)

(assert (= bs!9081 d!61685))

(assert (=> bs!9081 m!272497))

(assert (=> bs!9081 m!272497))

(declare-fun m!272579 () Bool)

(assert (=> bs!9081 m!272579))

(declare-fun m!272581 () Bool)

(assert (=> bs!9081 m!272581))

(declare-fun m!272583 () Bool)

(assert (=> bs!9081 m!272583))

(assert (=> b!257123 d!61685))

(declare-fun d!61687 () Bool)

(assert (=> d!61687 (= (inRange!0 (ite c!43481 (index!6882 lt!129252) (index!6885 lt!129252)) (mask!11029 thiss!1504)) (and (bvsge (ite c!43481 (index!6882 lt!129252) (index!6885 lt!129252)) #b00000000000000000000000000000000) (bvslt (ite c!43481 (index!6882 lt!129252) (index!6885 lt!129252)) (bvadd (mask!11029 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24391 d!61687))

(declare-fun d!61689 () Bool)

(assert (=> d!61689 (= (array_inv!3909 (_keys!6911 thiss!1504)) (bvsge (size!6279 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257119 d!61689))

(declare-fun d!61691 () Bool)

(assert (=> d!61691 (= (array_inv!3910 (_values!4728 thiss!1504)) (bvsge (size!6278 (_values!4728 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257119 d!61691))

(declare-fun b!257203 () Bool)

(declare-fun res!125821 () Bool)

(declare-fun e!166736 () Bool)

(assert (=> b!257203 (=> (not res!125821) (not e!166736))))

(declare-fun call!24407 () Bool)

(assert (=> b!257203 (= res!125821 call!24407)))

(declare-fun e!166738 () Bool)

(assert (=> b!257203 (= e!166738 e!166736)))

(declare-fun b!257204 () Bool)

(declare-fun e!166735 () Bool)

(declare-fun call!24406 () Bool)

(assert (=> b!257204 (= e!166735 (not call!24406))))

(declare-fun bm!24403 () Bool)

(assert (=> bm!24403 (= call!24406 (arrayContainsKey!0 (_keys!6911 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257205 () Bool)

(declare-fun e!166737 () Bool)

(assert (=> b!257205 (= e!166737 e!166735)))

(declare-fun res!125823 () Bool)

(assert (=> b!257205 (= res!125823 call!24407)))

(assert (=> b!257205 (=> (not res!125823) (not e!166735))))

(declare-fun c!43501 () Bool)

(declare-fun lt!129315 () SeekEntryResult!1178)

(declare-fun bm!24404 () Bool)

(assert (=> bm!24404 (= call!24407 (inRange!0 (ite c!43501 (index!6882 lt!129315) (index!6885 lt!129315)) (mask!11029 thiss!1504)))))

(declare-fun b!257206 () Bool)

(assert (=> b!257206 (= e!166737 e!166738)))

(declare-fun c!43500 () Bool)

(assert (=> b!257206 (= c!43500 ((_ is MissingVacant!1178) lt!129315))))

(declare-fun b!257207 () Bool)

(assert (=> b!257207 (= e!166738 ((_ is Undefined!1178) lt!129315))))

(declare-fun b!257208 () Bool)

(declare-fun res!125824 () Bool)

(assert (=> b!257208 (=> (not res!125824) (not e!166736))))

(assert (=> b!257208 (= res!125824 (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6885 lt!129315)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257208 (and (bvsge (index!6885 lt!129315) #b00000000000000000000000000000000) (bvslt (index!6885 lt!129315) (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun d!61693 () Bool)

(assert (=> d!61693 e!166737))

(assert (=> d!61693 (= c!43501 ((_ is MissingZero!1178) lt!129315))))

(assert (=> d!61693 (= lt!129315 (seekEntryOrOpen!0 key!932 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)))))

(declare-fun lt!129314 () Unit!7982)

(declare-fun choose!1245 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 64) Int) Unit!7982)

(assert (=> d!61693 (= lt!129314 (choose!1245 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 (defaultEntry!4745 thiss!1504)))))

(assert (=> d!61693 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61693 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!432 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 (defaultEntry!4745 thiss!1504)) lt!129314)))

(declare-fun b!257209 () Bool)

(assert (=> b!257209 (= e!166736 (not call!24406))))

(declare-fun b!257210 () Bool)

(assert (=> b!257210 (and (bvsge (index!6882 lt!129315) #b00000000000000000000000000000000) (bvslt (index!6882 lt!129315) (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun res!125822 () Bool)

(assert (=> b!257210 (= res!125822 (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6882 lt!129315)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257210 (=> (not res!125822) (not e!166735))))

(assert (= (and d!61693 c!43501) b!257205))

(assert (= (and d!61693 (not c!43501)) b!257206))

(assert (= (and b!257205 res!125823) b!257210))

(assert (= (and b!257210 res!125822) b!257204))

(assert (= (and b!257206 c!43500) b!257203))

(assert (= (and b!257206 (not c!43500)) b!257207))

(assert (= (and b!257203 res!125821) b!257208))

(assert (= (and b!257208 res!125824) b!257209))

(assert (= (or b!257205 b!257203) bm!24404))

(assert (= (or b!257204 b!257209) bm!24403))

(declare-fun m!272585 () Bool)

(assert (=> b!257210 m!272585))

(assert (=> d!61693 m!272513))

(declare-fun m!272587 () Bool)

(assert (=> d!61693 m!272587))

(assert (=> d!61693 m!272583))

(declare-fun m!272589 () Bool)

(assert (=> bm!24404 m!272589))

(declare-fun m!272591 () Bool)

(assert (=> b!257208 m!272591))

(assert (=> bm!24403 m!272455))

(assert (=> b!257110 d!61693))

(declare-fun d!61695 () Bool)

(declare-fun res!125829 () Bool)

(declare-fun e!166743 () Bool)

(assert (=> d!61695 (=> res!125829 e!166743)))

(assert (=> d!61695 (= res!125829 (= (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61695 (= (arrayContainsKey!0 (_keys!6911 thiss!1504) key!932 #b00000000000000000000000000000000) e!166743)))

(declare-fun b!257215 () Bool)

(declare-fun e!166744 () Bool)

(assert (=> b!257215 (= e!166743 e!166744)))

(declare-fun res!125830 () Bool)

(assert (=> b!257215 (=> (not res!125830) (not e!166744))))

(assert (=> b!257215 (= res!125830 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun b!257216 () Bool)

(assert (=> b!257216 (= e!166744 (arrayContainsKey!0 (_keys!6911 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61695 (not res!125829)) b!257215))

(assert (= (and b!257215 res!125830) b!257216))

(declare-fun m!272593 () Bool)

(assert (=> d!61695 m!272593))

(declare-fun m!272595 () Bool)

(assert (=> b!257216 m!272595))

(assert (=> bm!24392 d!61695))

(declare-fun d!61697 () Bool)

(assert (=> d!61697 (= (inRange!0 index!297 (mask!11029 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11029 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!257111 d!61697))

(declare-fun d!61699 () Bool)

(declare-fun e!166750 () Bool)

(assert (=> d!61699 e!166750))

(declare-fun res!125833 () Bool)

(assert (=> d!61699 (=> res!125833 e!166750)))

(declare-fun lt!129325 () Bool)

(assert (=> d!61699 (= res!125833 (not lt!129325))))

(declare-fun lt!129327 () Bool)

(assert (=> d!61699 (= lt!129325 lt!129327)))

(declare-fun lt!129326 () Unit!7982)

(declare-fun e!166749 () Unit!7982)

(assert (=> d!61699 (= lt!129326 e!166749)))

(declare-fun c!43504 () Bool)

(assert (=> d!61699 (= c!43504 lt!129327)))

(declare-fun containsKey!302 (List!3819 (_ BitVec 64)) Bool)

(assert (=> d!61699 (= lt!129327 (containsKey!302 (toList!1937 lt!129260) key!932))))

(assert (=> d!61699 (= (contains!1870 lt!129260 key!932) lt!129325)))

(declare-fun b!257223 () Bool)

(declare-fun lt!129324 () Unit!7982)

(assert (=> b!257223 (= e!166749 lt!129324)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!251 (List!3819 (_ BitVec 64)) Unit!7982)

(assert (=> b!257223 (= lt!129324 (lemmaContainsKeyImpliesGetValueByKeyDefined!251 (toList!1937 lt!129260) key!932))))

(declare-datatypes ((Option!316 0))(
  ( (Some!315 (v!5432 V!8435)) (None!314) )
))
(declare-fun isDefined!252 (Option!316) Bool)

(declare-fun getValueByKey!310 (List!3819 (_ BitVec 64)) Option!316)

(assert (=> b!257223 (isDefined!252 (getValueByKey!310 (toList!1937 lt!129260) key!932))))

(declare-fun b!257224 () Bool)

(declare-fun Unit!7992 () Unit!7982)

(assert (=> b!257224 (= e!166749 Unit!7992)))

(declare-fun b!257225 () Bool)

(assert (=> b!257225 (= e!166750 (isDefined!252 (getValueByKey!310 (toList!1937 lt!129260) key!932)))))

(assert (= (and d!61699 c!43504) b!257223))

(assert (= (and d!61699 (not c!43504)) b!257224))

(assert (= (and d!61699 (not res!125833)) b!257225))

(declare-fun m!272597 () Bool)

(assert (=> d!61699 m!272597))

(declare-fun m!272599 () Bool)

(assert (=> b!257223 m!272599))

(declare-fun m!272601 () Bool)

(assert (=> b!257223 m!272601))

(assert (=> b!257223 m!272601))

(declare-fun m!272603 () Bool)

(assert (=> b!257223 m!272603))

(assert (=> b!257225 m!272601))

(assert (=> b!257225 m!272601))

(assert (=> b!257225 m!272603))

(assert (=> b!257111 d!61699))

(declare-fun b!257268 () Bool)

(declare-fun e!166778 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!257268 (= e!166778 (validKeyInArray!0 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!257270 () Bool)

(declare-fun e!166784 () Bool)

(declare-fun e!166785 () Bool)

(assert (=> b!257270 (= e!166784 e!166785)))

(declare-fun c!43519 () Bool)

(assert (=> b!257270 (= c!43519 (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!43517 () Bool)

(declare-fun call!24425 () ListLongMap!3843)

(declare-fun c!43518 () Bool)

(declare-fun call!24428 () ListLongMap!3843)

(declare-fun bm!24419 () Bool)

(declare-fun call!24427 () ListLongMap!3843)

(declare-fun call!24422 () ListLongMap!3843)

(assert (=> bm!24419 (= call!24422 (+!681 (ite c!43517 call!24425 (ite c!43518 call!24428 call!24427)) (ite (or c!43517 c!43518) (tuple2!4917 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4586 thiss!1504)) (tuple2!4917 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4586 thiss!1504)))))))

(declare-fun b!257271 () Bool)

(declare-fun e!166786 () Bool)

(declare-fun e!166788 () Bool)

(assert (=> b!257271 (= e!166786 e!166788)))

(declare-fun res!125852 () Bool)

(assert (=> b!257271 (=> (not res!125852) (not e!166788))))

(declare-fun lt!129392 () ListLongMap!3843)

(assert (=> b!257271 (= res!125852 (contains!1870 lt!129392 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!257271 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun bm!24420 () Bool)

(declare-fun call!24423 () ListLongMap!3843)

(assert (=> bm!24420 (= call!24423 call!24422)))

(declare-fun b!257272 () Bool)

(declare-fun apply!253 (ListLongMap!3843 (_ BitVec 64)) V!8435)

(declare-fun get!3051 (ValueCell!2952 V!8435) V!8435)

(declare-fun dynLambda!591 (Int (_ BitVec 64)) V!8435)

(assert (=> b!257272 (= e!166788 (= (apply!253 lt!129392 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000)) (get!3051 (select (arr!5931 (_values!4728 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!591 (defaultEntry!4745 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!257272 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6278 (_values!4728 thiss!1504))))))

(assert (=> b!257272 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun b!257273 () Bool)

(declare-fun e!166779 () Bool)

(assert (=> b!257273 (= e!166785 e!166779)))

(declare-fun res!125854 () Bool)

(declare-fun call!24426 () Bool)

(assert (=> b!257273 (= res!125854 call!24426)))

(assert (=> b!257273 (=> (not res!125854) (not e!166779))))

(declare-fun bm!24421 () Bool)

(assert (=> bm!24421 (= call!24427 call!24428)))

(declare-fun bm!24422 () Bool)

(declare-fun call!24424 () Bool)

(assert (=> bm!24422 (= call!24424 (contains!1870 lt!129392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257274 () Bool)

(declare-fun e!166781 () Bool)

(assert (=> b!257274 (= e!166781 (not call!24424))))

(declare-fun b!257275 () Bool)

(declare-fun e!166777 () ListLongMap!3843)

(assert (=> b!257275 (= e!166777 call!24423)))

(declare-fun b!257276 () Bool)

(declare-fun e!166782 () Bool)

(assert (=> b!257276 (= e!166781 e!166782)))

(declare-fun res!125857 () Bool)

(assert (=> b!257276 (= res!125857 call!24424)))

(assert (=> b!257276 (=> (not res!125857) (not e!166782))))

(declare-fun b!257277 () Bool)

(declare-fun e!166787 () ListLongMap!3843)

(declare-fun e!166789 () ListLongMap!3843)

(assert (=> b!257277 (= e!166787 e!166789)))

(assert (=> b!257277 (= c!43518 (and (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!61701 () Bool)

(assert (=> d!61701 e!166784))

(declare-fun res!125858 () Bool)

(assert (=> d!61701 (=> (not res!125858) (not e!166784))))

(assert (=> d!61701 (= res!125858 (or (bvsge #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))))

(declare-fun lt!129376 () ListLongMap!3843)

(assert (=> d!61701 (= lt!129392 lt!129376)))

(declare-fun lt!129387 () Unit!7982)

(declare-fun e!166780 () Unit!7982)

(assert (=> d!61701 (= lt!129387 e!166780)))

(declare-fun c!43522 () Bool)

(assert (=> d!61701 (= c!43522 e!166778)))

(declare-fun res!125856 () Bool)

(assert (=> d!61701 (=> (not res!125856) (not e!166778))))

(assert (=> d!61701 (= res!125856 (bvslt #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))

(assert (=> d!61701 (= lt!129376 e!166787)))

(assert (=> d!61701 (= c!43517 (and (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61701 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61701 (= (getCurrentListMap!1460 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)) lt!129392)))

(declare-fun b!257269 () Bool)

(declare-fun e!166783 () Bool)

(assert (=> b!257269 (= e!166783 (validKeyInArray!0 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!257278 () Bool)

(declare-fun Unit!7993 () Unit!7982)

(assert (=> b!257278 (= e!166780 Unit!7993)))

(declare-fun b!257279 () Bool)

(assert (=> b!257279 (= e!166779 (= (apply!253 lt!129392 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4586 thiss!1504)))))

(declare-fun b!257280 () Bool)

(declare-fun res!125853 () Bool)

(assert (=> b!257280 (=> (not res!125853) (not e!166784))))

(assert (=> b!257280 (= res!125853 e!166781)))

(declare-fun c!43520 () Bool)

(assert (=> b!257280 (= c!43520 (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24423 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!572 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 32) Int) ListLongMap!3843)

(assert (=> bm!24423 (= call!24425 (getCurrentListMapNoExtraKeys!572 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun bm!24424 () Bool)

(assert (=> bm!24424 (= call!24426 (contains!1870 lt!129392 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257281 () Bool)

(assert (=> b!257281 (= e!166782 (= (apply!253 lt!129392 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4586 thiss!1504)))))

(declare-fun b!257282 () Bool)

(assert (=> b!257282 (= e!166787 (+!681 call!24422 (tuple2!4917 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4586 thiss!1504))))))

(declare-fun b!257283 () Bool)

(assert (=> b!257283 (= e!166777 call!24427)))

(declare-fun bm!24425 () Bool)

(assert (=> bm!24425 (= call!24428 call!24425)))

(declare-fun b!257284 () Bool)

(assert (=> b!257284 (= e!166785 (not call!24426))))

(declare-fun b!257285 () Bool)

(assert (=> b!257285 (= e!166789 call!24423)))

(declare-fun b!257286 () Bool)

(declare-fun c!43521 () Bool)

(assert (=> b!257286 (= c!43521 (and (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!257286 (= e!166789 e!166777)))

(declare-fun b!257287 () Bool)

(declare-fun res!125860 () Bool)

(assert (=> b!257287 (=> (not res!125860) (not e!166784))))

(assert (=> b!257287 (= res!125860 e!166786)))

(declare-fun res!125859 () Bool)

(assert (=> b!257287 (=> res!125859 e!166786)))

(assert (=> b!257287 (= res!125859 (not e!166783))))

(declare-fun res!125855 () Bool)

(assert (=> b!257287 (=> (not res!125855) (not e!166783))))

(assert (=> b!257287 (= res!125855 (bvslt #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))

(declare-fun b!257288 () Bool)

(declare-fun lt!129379 () Unit!7982)

(assert (=> b!257288 (= e!166780 lt!129379)))

(declare-fun lt!129374 () ListLongMap!3843)

(assert (=> b!257288 (= lt!129374 (getCurrentListMapNoExtraKeys!572 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129384 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129384 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129377 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129377 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129372 () Unit!7982)

(declare-fun addStillContains!229 (ListLongMap!3843 (_ BitVec 64) V!8435 (_ BitVec 64)) Unit!7982)

(assert (=> b!257288 (= lt!129372 (addStillContains!229 lt!129374 lt!129384 (zeroValue!4586 thiss!1504) lt!129377))))

(assert (=> b!257288 (contains!1870 (+!681 lt!129374 (tuple2!4917 lt!129384 (zeroValue!4586 thiss!1504))) lt!129377)))

(declare-fun lt!129391 () Unit!7982)

(assert (=> b!257288 (= lt!129391 lt!129372)))

(declare-fun lt!129382 () ListLongMap!3843)

(assert (=> b!257288 (= lt!129382 (getCurrentListMapNoExtraKeys!572 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129383 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129383 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129385 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129385 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129381 () Unit!7982)

(declare-fun addApplyDifferent!229 (ListLongMap!3843 (_ BitVec 64) V!8435 (_ BitVec 64)) Unit!7982)

(assert (=> b!257288 (= lt!129381 (addApplyDifferent!229 lt!129382 lt!129383 (minValue!4586 thiss!1504) lt!129385))))

(assert (=> b!257288 (= (apply!253 (+!681 lt!129382 (tuple2!4917 lt!129383 (minValue!4586 thiss!1504))) lt!129385) (apply!253 lt!129382 lt!129385))))

(declare-fun lt!129393 () Unit!7982)

(assert (=> b!257288 (= lt!129393 lt!129381)))

(declare-fun lt!129380 () ListLongMap!3843)

(assert (=> b!257288 (= lt!129380 (getCurrentListMapNoExtraKeys!572 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129378 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129378 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129373 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129373 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129389 () Unit!7982)

(assert (=> b!257288 (= lt!129389 (addApplyDifferent!229 lt!129380 lt!129378 (zeroValue!4586 thiss!1504) lt!129373))))

(assert (=> b!257288 (= (apply!253 (+!681 lt!129380 (tuple2!4917 lt!129378 (zeroValue!4586 thiss!1504))) lt!129373) (apply!253 lt!129380 lt!129373))))

(declare-fun lt!129388 () Unit!7982)

(assert (=> b!257288 (= lt!129388 lt!129389)))

(declare-fun lt!129375 () ListLongMap!3843)

(assert (=> b!257288 (= lt!129375 (getCurrentListMapNoExtraKeys!572 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129390 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129390 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129386 () (_ BitVec 64))

(assert (=> b!257288 (= lt!129386 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257288 (= lt!129379 (addApplyDifferent!229 lt!129375 lt!129390 (minValue!4586 thiss!1504) lt!129386))))

(assert (=> b!257288 (= (apply!253 (+!681 lt!129375 (tuple2!4917 lt!129390 (minValue!4586 thiss!1504))) lt!129386) (apply!253 lt!129375 lt!129386))))

(assert (= (and d!61701 c!43517) b!257282))

(assert (= (and d!61701 (not c!43517)) b!257277))

(assert (= (and b!257277 c!43518) b!257285))

(assert (= (and b!257277 (not c!43518)) b!257286))

(assert (= (and b!257286 c!43521) b!257275))

(assert (= (and b!257286 (not c!43521)) b!257283))

(assert (= (or b!257275 b!257283) bm!24421))

(assert (= (or b!257285 bm!24421) bm!24425))

(assert (= (or b!257285 b!257275) bm!24420))

(assert (= (or b!257282 bm!24425) bm!24423))

(assert (= (or b!257282 bm!24420) bm!24419))

(assert (= (and d!61701 res!125856) b!257268))

(assert (= (and d!61701 c!43522) b!257288))

(assert (= (and d!61701 (not c!43522)) b!257278))

(assert (= (and d!61701 res!125858) b!257287))

(assert (= (and b!257287 res!125855) b!257269))

(assert (= (and b!257287 (not res!125859)) b!257271))

(assert (= (and b!257271 res!125852) b!257272))

(assert (= (and b!257287 res!125860) b!257280))

(assert (= (and b!257280 c!43520) b!257276))

(assert (= (and b!257280 (not c!43520)) b!257274))

(assert (= (and b!257276 res!125857) b!257281))

(assert (= (or b!257276 b!257274) bm!24422))

(assert (= (and b!257280 res!125853) b!257270))

(assert (= (and b!257270 c!43519) b!257273))

(assert (= (and b!257270 (not c!43519)) b!257284))

(assert (= (and b!257273 res!125854) b!257279))

(assert (= (or b!257273 b!257284) bm!24424))

(declare-fun b_lambda!8209 () Bool)

(assert (=> (not b_lambda!8209) (not b!257272)))

(declare-fun t!8891 () Bool)

(declare-fun tb!3027 () Bool)

(assert (=> (and b!257119 (= (defaultEntry!4745 thiss!1504) (defaultEntry!4745 thiss!1504)) t!8891) tb!3027))

(declare-fun result!5387 () Bool)

(assert (=> tb!3027 (= result!5387 tp_is_empty!6591)))

(assert (=> b!257272 t!8891))

(declare-fun b_and!13817 () Bool)

(assert (= b_and!13813 (and (=> t!8891 result!5387) b_and!13817)))

(declare-fun m!272605 () Bool)

(assert (=> b!257288 m!272605))

(declare-fun m!272607 () Bool)

(assert (=> b!257288 m!272607))

(declare-fun m!272609 () Bool)

(assert (=> b!257288 m!272609))

(declare-fun m!272611 () Bool)

(assert (=> b!257288 m!272611))

(assert (=> b!257288 m!272593))

(declare-fun m!272613 () Bool)

(assert (=> b!257288 m!272613))

(declare-fun m!272615 () Bool)

(assert (=> b!257288 m!272615))

(declare-fun m!272617 () Bool)

(assert (=> b!257288 m!272617))

(declare-fun m!272619 () Bool)

(assert (=> b!257288 m!272619))

(declare-fun m!272621 () Bool)

(assert (=> b!257288 m!272621))

(declare-fun m!272623 () Bool)

(assert (=> b!257288 m!272623))

(declare-fun m!272625 () Bool)

(assert (=> b!257288 m!272625))

(assert (=> b!257288 m!272613))

(assert (=> b!257288 m!272609))

(declare-fun m!272627 () Bool)

(assert (=> b!257288 m!272627))

(assert (=> b!257288 m!272623))

(declare-fun m!272629 () Bool)

(assert (=> b!257288 m!272629))

(declare-fun m!272631 () Bool)

(assert (=> b!257288 m!272631))

(declare-fun m!272633 () Bool)

(assert (=> b!257288 m!272633))

(assert (=> b!257288 m!272607))

(declare-fun m!272635 () Bool)

(assert (=> b!257288 m!272635))

(assert (=> b!257271 m!272593))

(assert (=> b!257271 m!272593))

(declare-fun m!272637 () Bool)

(assert (=> b!257271 m!272637))

(assert (=> bm!24423 m!272611))

(declare-fun m!272639 () Bool)

(assert (=> b!257272 m!272639))

(declare-fun m!272641 () Bool)

(assert (=> b!257272 m!272641))

(assert (=> b!257272 m!272639))

(declare-fun m!272643 () Bool)

(assert (=> b!257272 m!272643))

(assert (=> b!257272 m!272593))

(declare-fun m!272645 () Bool)

(assert (=> b!257272 m!272645))

(assert (=> b!257272 m!272641))

(assert (=> b!257272 m!272593))

(declare-fun m!272647 () Bool)

(assert (=> b!257281 m!272647))

(assert (=> d!61701 m!272583))

(declare-fun m!272649 () Bool)

(assert (=> b!257282 m!272649))

(declare-fun m!272651 () Bool)

(assert (=> bm!24422 m!272651))

(assert (=> b!257268 m!272593))

(assert (=> b!257268 m!272593))

(declare-fun m!272653 () Bool)

(assert (=> b!257268 m!272653))

(declare-fun m!272655 () Bool)

(assert (=> bm!24419 m!272655))

(declare-fun m!272657 () Bool)

(assert (=> b!257279 m!272657))

(declare-fun m!272659 () Bool)

(assert (=> bm!24424 m!272659))

(assert (=> b!257269 m!272593))

(assert (=> b!257269 m!272593))

(assert (=> b!257269 m!272653))

(assert (=> b!257111 d!61701))

(declare-fun d!61703 () Bool)

(declare-fun e!166792 () Bool)

(assert (=> d!61703 e!166792))

(declare-fun res!125866 () Bool)

(assert (=> d!61703 (=> (not res!125866) (not e!166792))))

(declare-fun lt!129402 () ListLongMap!3843)

(assert (=> d!61703 (= res!125866 (contains!1870 lt!129402 (_1!2468 (tuple2!4917 key!932 v!346))))))

(declare-fun lt!129404 () List!3819)

(assert (=> d!61703 (= lt!129402 (ListLongMap!3844 lt!129404))))

(declare-fun lt!129405 () Unit!7982)

(declare-fun lt!129403 () Unit!7982)

(assert (=> d!61703 (= lt!129405 lt!129403)))

(assert (=> d!61703 (= (getValueByKey!310 lt!129404 (_1!2468 (tuple2!4917 key!932 v!346))) (Some!315 (_2!2468 (tuple2!4917 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!168 (List!3819 (_ BitVec 64) V!8435) Unit!7982)

(assert (=> d!61703 (= lt!129403 (lemmaContainsTupThenGetReturnValue!168 lt!129404 (_1!2468 (tuple2!4917 key!932 v!346)) (_2!2468 (tuple2!4917 key!932 v!346))))))

(declare-fun insertStrictlySorted!170 (List!3819 (_ BitVec 64) V!8435) List!3819)

(assert (=> d!61703 (= lt!129404 (insertStrictlySorted!170 (toList!1937 lt!129260) (_1!2468 (tuple2!4917 key!932 v!346)) (_2!2468 (tuple2!4917 key!932 v!346))))))

(assert (=> d!61703 (= (+!681 lt!129260 (tuple2!4917 key!932 v!346)) lt!129402)))

(declare-fun b!257295 () Bool)

(declare-fun res!125865 () Bool)

(assert (=> b!257295 (=> (not res!125865) (not e!166792))))

(assert (=> b!257295 (= res!125865 (= (getValueByKey!310 (toList!1937 lt!129402) (_1!2468 (tuple2!4917 key!932 v!346))) (Some!315 (_2!2468 (tuple2!4917 key!932 v!346)))))))

(declare-fun b!257296 () Bool)

(declare-fun contains!1872 (List!3819 tuple2!4916) Bool)

(assert (=> b!257296 (= e!166792 (contains!1872 (toList!1937 lt!129402) (tuple2!4917 key!932 v!346)))))

(assert (= (and d!61703 res!125866) b!257295))

(assert (= (and b!257295 res!125865) b!257296))

(declare-fun m!272661 () Bool)

(assert (=> d!61703 m!272661))

(declare-fun m!272663 () Bool)

(assert (=> d!61703 m!272663))

(declare-fun m!272665 () Bool)

(assert (=> d!61703 m!272665))

(declare-fun m!272667 () Bool)

(assert (=> d!61703 m!272667))

(declare-fun m!272669 () Bool)

(assert (=> b!257295 m!272669))

(declare-fun m!272671 () Bool)

(assert (=> b!257296 m!272671))

(assert (=> b!257113 d!61703))

(declare-fun b!257305 () Bool)

(declare-fun res!125878 () Bool)

(declare-fun e!166797 () Bool)

(assert (=> b!257305 (=> (not res!125878) (not e!166797))))

(assert (=> b!257305 (= res!125878 (not (validKeyInArray!0 (select (arr!5932 (_keys!6911 thiss!1504)) index!297))))))

(declare-fun b!257308 () Bool)

(declare-fun e!166798 () Bool)

(assert (=> b!257308 (= e!166798 (= (arrayCountValidKeys!0 (array!12527 (store (arr!5932 (_keys!6911 thiss!1504)) index!297 key!932) (size!6279 (_keys!6911 thiss!1504))) #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6911 thiss!1504) #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!257307 () Bool)

(assert (=> b!257307 (= e!166797 (bvslt (size!6279 (_keys!6911 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!61705 () Bool)

(assert (=> d!61705 e!166798))

(declare-fun res!125877 () Bool)

(assert (=> d!61705 (=> (not res!125877) (not e!166798))))

(assert (=> d!61705 (= res!125877 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6279 (_keys!6911 thiss!1504)))))))

(declare-fun lt!129408 () Unit!7982)

(declare-fun choose!1 (array!12526 (_ BitVec 32) (_ BitVec 64)) Unit!7982)

(assert (=> d!61705 (= lt!129408 (choose!1 (_keys!6911 thiss!1504) index!297 key!932))))

(assert (=> d!61705 e!166797))

(declare-fun res!125876 () Bool)

(assert (=> d!61705 (=> (not res!125876) (not e!166797))))

(assert (=> d!61705 (= res!125876 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6279 (_keys!6911 thiss!1504)))))))

(assert (=> d!61705 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6911 thiss!1504) index!297 key!932) lt!129408)))

(declare-fun b!257306 () Bool)

(declare-fun res!125875 () Bool)

(assert (=> b!257306 (=> (not res!125875) (not e!166797))))

(assert (=> b!257306 (= res!125875 (validKeyInArray!0 key!932))))

(assert (= (and d!61705 res!125876) b!257305))

(assert (= (and b!257305 res!125878) b!257306))

(assert (= (and b!257306 res!125875) b!257307))

(assert (= (and d!61705 res!125877) b!257308))

(declare-fun m!272673 () Bool)

(assert (=> b!257305 m!272673))

(assert (=> b!257305 m!272673))

(declare-fun m!272675 () Bool)

(assert (=> b!257305 m!272675))

(assert (=> b!257308 m!272473))

(declare-fun m!272677 () Bool)

(assert (=> b!257308 m!272677))

(assert (=> b!257308 m!272475))

(declare-fun m!272679 () Bool)

(assert (=> d!61705 m!272679))

(declare-fun m!272681 () Bool)

(assert (=> b!257306 m!272681))

(assert (=> b!257113 d!61705))

(declare-fun d!61707 () Bool)

(declare-fun res!125879 () Bool)

(declare-fun e!166799 () Bool)

(assert (=> d!61707 (=> res!125879 e!166799)))

(assert (=> d!61707 (= res!125879 (= (select (arr!5932 lt!129259) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61707 (= (arrayContainsKey!0 lt!129259 key!932 #b00000000000000000000000000000000) e!166799)))

(declare-fun b!257309 () Bool)

(declare-fun e!166800 () Bool)

(assert (=> b!257309 (= e!166799 e!166800)))

(declare-fun res!125880 () Bool)

(assert (=> b!257309 (=> (not res!125880) (not e!166800))))

(assert (=> b!257309 (= res!125880 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6279 lt!129259)))))

(declare-fun b!257310 () Bool)

(assert (=> b!257310 (= e!166800 (arrayContainsKey!0 lt!129259 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61707 (not res!125879)) b!257309))

(assert (= (and b!257309 res!125880) b!257310))

(declare-fun m!272683 () Bool)

(assert (=> d!61707 m!272683))

(declare-fun m!272685 () Bool)

(assert (=> b!257310 m!272685))

(assert (=> b!257113 d!61707))

(declare-fun b!257319 () Bool)

(declare-fun e!166805 () (_ BitVec 32))

(assert (=> b!257319 (= e!166805 #b00000000000000000000000000000000)))

(declare-fun b!257320 () Bool)

(declare-fun e!166806 () (_ BitVec 32))

(assert (=> b!257320 (= e!166805 e!166806)))

(declare-fun c!43527 () Bool)

(assert (=> b!257320 (= c!43527 (validKeyInArray!0 (select (arr!5932 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61709 () Bool)

(declare-fun lt!129411 () (_ BitVec 32))

(assert (=> d!61709 (and (bvsge lt!129411 #b00000000000000000000000000000000) (bvsle lt!129411 (bvsub (size!6279 (_keys!6911 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61709 (= lt!129411 e!166805)))

(declare-fun c!43528 () Bool)

(assert (=> d!61709 (= c!43528 (bvsge #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))

(assert (=> d!61709 (and (bvsle #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6279 (_keys!6911 thiss!1504)) (size!6279 (_keys!6911 thiss!1504))))))

(assert (=> d!61709 (= (arrayCountValidKeys!0 (_keys!6911 thiss!1504) #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) lt!129411)))

(declare-fun b!257321 () Bool)

(declare-fun call!24431 () (_ BitVec 32))

(assert (=> b!257321 (= e!166806 call!24431)))

(declare-fun b!257322 () Bool)

(assert (=> b!257322 (= e!166806 (bvadd #b00000000000000000000000000000001 call!24431))))

(declare-fun bm!24428 () Bool)

(assert (=> bm!24428 (= call!24431 (arrayCountValidKeys!0 (_keys!6911 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6279 (_keys!6911 thiss!1504))))))

(assert (= (and d!61709 c!43528) b!257319))

(assert (= (and d!61709 (not c!43528)) b!257320))

(assert (= (and b!257320 c!43527) b!257322))

(assert (= (and b!257320 (not c!43527)) b!257321))

(assert (= (or b!257322 b!257321) bm!24428))

(assert (=> b!257320 m!272593))

(assert (=> b!257320 m!272593))

(assert (=> b!257320 m!272653))

(declare-fun m!272687 () Bool)

(assert (=> bm!24428 m!272687))

(assert (=> b!257113 d!61709))

(declare-fun b!257323 () Bool)

(declare-fun e!166807 () (_ BitVec 32))

(assert (=> b!257323 (= e!166807 #b00000000000000000000000000000000)))

(declare-fun b!257324 () Bool)

(declare-fun e!166808 () (_ BitVec 32))

(assert (=> b!257324 (= e!166807 e!166808)))

(declare-fun c!43529 () Bool)

(assert (=> b!257324 (= c!43529 (validKeyInArray!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun d!61711 () Bool)

(declare-fun lt!129412 () (_ BitVec 32))

(assert (=> d!61711 (and (bvsge lt!129412 #b00000000000000000000000000000000) (bvsle lt!129412 (bvsub (size!6279 lt!129259) #b00000000000000000000000000000000)))))

(assert (=> d!61711 (= lt!129412 e!166807)))

(declare-fun c!43530 () Bool)

(assert (=> d!61711 (= c!43530 (bvsge #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))))))

(assert (=> d!61711 (and (bvsle #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6279 (_keys!6911 thiss!1504)) (size!6279 lt!129259)))))

(assert (=> d!61711 (= (arrayCountValidKeys!0 lt!129259 #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) lt!129412)))

(declare-fun b!257325 () Bool)

(declare-fun call!24432 () (_ BitVec 32))

(assert (=> b!257325 (= e!166808 call!24432)))

(declare-fun b!257326 () Bool)

(assert (=> b!257326 (= e!166808 (bvadd #b00000000000000000000000000000001 call!24432))))

(declare-fun bm!24429 () Bool)

(assert (=> bm!24429 (= call!24432 (arrayCountValidKeys!0 lt!129259 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6279 (_keys!6911 thiss!1504))))))

(assert (= (and d!61711 c!43530) b!257323))

(assert (= (and d!61711 (not c!43530)) b!257324))

(assert (= (and b!257324 c!43529) b!257326))

(assert (= (and b!257324 (not c!43529)) b!257325))

(assert (= (or b!257326 b!257325) bm!24429))

(assert (=> b!257324 m!272683))

(assert (=> b!257324 m!272683))

(declare-fun m!272689 () Bool)

(assert (=> b!257324 m!272689))

(declare-fun m!272691 () Bool)

(assert (=> bm!24429 m!272691))

(assert (=> b!257113 d!61711))

(declare-fun b!257327 () Bool)

(declare-fun e!166809 () (_ BitVec 32))

(assert (=> b!257327 (= e!166809 #b00000000000000000000000000000000)))

(declare-fun b!257328 () Bool)

(declare-fun e!166810 () (_ BitVec 32))

(assert (=> b!257328 (= e!166809 e!166810)))

(declare-fun c!43531 () Bool)

(assert (=> b!257328 (= c!43531 (validKeyInArray!0 (select (arr!5932 lt!129259) index!297)))))

(declare-fun d!61713 () Bool)

(declare-fun lt!129413 () (_ BitVec 32))

(assert (=> d!61713 (and (bvsge lt!129413 #b00000000000000000000000000000000) (bvsle lt!129413 (bvsub (size!6279 lt!129259) index!297)))))

(assert (=> d!61713 (= lt!129413 e!166809)))

(declare-fun c!43532 () Bool)

(assert (=> d!61713 (= c!43532 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!61713 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6279 lt!129259)))))

(assert (=> d!61713 (= (arrayCountValidKeys!0 lt!129259 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!129413)))

(declare-fun b!257329 () Bool)

(declare-fun call!24433 () (_ BitVec 32))

(assert (=> b!257329 (= e!166810 call!24433)))

(declare-fun b!257330 () Bool)

(assert (=> b!257330 (= e!166810 (bvadd #b00000000000000000000000000000001 call!24433))))

(declare-fun bm!24430 () Bool)

(assert (=> bm!24430 (= call!24433 (arrayCountValidKeys!0 lt!129259 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (= (and d!61713 c!43532) b!257327))

(assert (= (and d!61713 (not c!43532)) b!257328))

(assert (= (and b!257328 c!43531) b!257330))

(assert (= (and b!257328 (not c!43531)) b!257329))

(assert (= (or b!257330 b!257329) bm!24430))

(declare-fun m!272693 () Bool)

(assert (=> b!257328 m!272693))

(assert (=> b!257328 m!272693))

(declare-fun m!272695 () Bool)

(assert (=> b!257328 m!272695))

(declare-fun m!272697 () Bool)

(assert (=> bm!24430 m!272697))

(assert (=> b!257113 d!61713))

(declare-fun d!61715 () Bool)

(assert (=> d!61715 (arrayContainsKey!0 lt!129259 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129416 () Unit!7982)

(declare-fun choose!13 (array!12526 (_ BitVec 64) (_ BitVec 32)) Unit!7982)

(assert (=> d!61715 (= lt!129416 (choose!13 lt!129259 key!932 index!297))))

(assert (=> d!61715 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!61715 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129259 key!932 index!297) lt!129416)))

(declare-fun bs!9082 () Bool)

(assert (= bs!9082 d!61715))

(assert (=> bs!9082 m!272459))

(declare-fun m!272699 () Bool)

(assert (=> bs!9082 m!272699))

(assert (=> b!257113 d!61715))

(declare-fun b!257339 () Bool)

(declare-fun e!166818 () Bool)

(declare-fun call!24436 () Bool)

(assert (=> b!257339 (= e!166818 call!24436)))

(declare-fun b!257340 () Bool)

(declare-fun e!166817 () Bool)

(assert (=> b!257340 (= e!166817 call!24436)))

(declare-fun d!61717 () Bool)

(declare-fun res!125885 () Bool)

(declare-fun e!166819 () Bool)

(assert (=> d!61717 (=> res!125885 e!166819)))

(assert (=> d!61717 (= res!125885 (bvsge #b00000000000000000000000000000000 (size!6279 lt!129259)))))

(assert (=> d!61717 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129259 (mask!11029 thiss!1504)) e!166819)))

(declare-fun b!257341 () Bool)

(assert (=> b!257341 (= e!166817 e!166818)))

(declare-fun lt!129425 () (_ BitVec 64))

(assert (=> b!257341 (= lt!129425 (select (arr!5932 lt!129259) #b00000000000000000000000000000000))))

(declare-fun lt!129424 () Unit!7982)

(assert (=> b!257341 (= lt!129424 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129259 lt!129425 #b00000000000000000000000000000000))))

(assert (=> b!257341 (arrayContainsKey!0 lt!129259 lt!129425 #b00000000000000000000000000000000)))

(declare-fun lt!129423 () Unit!7982)

(assert (=> b!257341 (= lt!129423 lt!129424)))

(declare-fun res!125886 () Bool)

(assert (=> b!257341 (= res!125886 (= (seekEntryOrOpen!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000) lt!129259 (mask!11029 thiss!1504)) (Found!1178 #b00000000000000000000000000000000)))))

(assert (=> b!257341 (=> (not res!125886) (not e!166818))))

(declare-fun b!257342 () Bool)

(assert (=> b!257342 (= e!166819 e!166817)))

(declare-fun c!43535 () Bool)

(assert (=> b!257342 (= c!43535 (validKeyInArray!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun bm!24433 () Bool)

(assert (=> bm!24433 (= call!24436 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!129259 (mask!11029 thiss!1504)))))

(assert (= (and d!61717 (not res!125885)) b!257342))

(assert (= (and b!257342 c!43535) b!257341))

(assert (= (and b!257342 (not c!43535)) b!257340))

(assert (= (and b!257341 res!125886) b!257339))

(assert (= (or b!257339 b!257340) bm!24433))

(assert (=> b!257341 m!272683))

(declare-fun m!272701 () Bool)

(assert (=> b!257341 m!272701))

(declare-fun m!272703 () Bool)

(assert (=> b!257341 m!272703))

(assert (=> b!257341 m!272683))

(declare-fun m!272705 () Bool)

(assert (=> b!257341 m!272705))

(assert (=> b!257342 m!272683))

(assert (=> b!257342 m!272683))

(assert (=> b!257342 m!272689))

(declare-fun m!272707 () Bool)

(assert (=> bm!24433 m!272707))

(assert (=> b!257113 d!61717))

(declare-fun b!257343 () Bool)

(declare-fun e!166821 () Bool)

(assert (=> b!257343 (= e!166821 (validKeyInArray!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun b!257345 () Bool)

(declare-fun e!166827 () Bool)

(declare-fun e!166828 () Bool)

(assert (=> b!257345 (= e!166827 e!166828)))

(declare-fun c!43538 () Bool)

(assert (=> b!257345 (= c!43538 (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!24437 () ListLongMap!3843)

(declare-fun call!24442 () ListLongMap!3843)

(declare-fun call!24443 () ListLongMap!3843)

(declare-fun bm!24434 () Bool)

(declare-fun c!43537 () Bool)

(declare-fun c!43536 () Bool)

(declare-fun call!24440 () ListLongMap!3843)

(assert (=> bm!24434 (= call!24437 (+!681 (ite c!43536 call!24440 (ite c!43537 call!24443 call!24442)) (ite (or c!43536 c!43537) (tuple2!4917 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4586 thiss!1504)) (tuple2!4917 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4586 thiss!1504)))))))

(declare-fun b!257346 () Bool)

(declare-fun e!166829 () Bool)

(declare-fun e!166831 () Bool)

(assert (=> b!257346 (= e!166829 e!166831)))

(declare-fun res!125887 () Bool)

(assert (=> b!257346 (=> (not res!125887) (not e!166831))))

(declare-fun lt!129446 () ListLongMap!3843)

(assert (=> b!257346 (= res!125887 (contains!1870 lt!129446 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(assert (=> b!257346 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6279 lt!129259)))))

(declare-fun bm!24435 () Bool)

(declare-fun call!24438 () ListLongMap!3843)

(assert (=> bm!24435 (= call!24438 call!24437)))

(declare-fun b!257347 () Bool)

(assert (=> b!257347 (= e!166831 (= (apply!253 lt!129446 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)) (get!3051 (select (arr!5931 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!591 (defaultEntry!4745 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!257347 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6278 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))))))))

(assert (=> b!257347 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6279 lt!129259)))))

(declare-fun b!257348 () Bool)

(declare-fun e!166822 () Bool)

(assert (=> b!257348 (= e!166828 e!166822)))

(declare-fun res!125889 () Bool)

(declare-fun call!24441 () Bool)

(assert (=> b!257348 (= res!125889 call!24441)))

(assert (=> b!257348 (=> (not res!125889) (not e!166822))))

(declare-fun bm!24436 () Bool)

(assert (=> bm!24436 (= call!24442 call!24443)))

(declare-fun bm!24437 () Bool)

(declare-fun call!24439 () Bool)

(assert (=> bm!24437 (= call!24439 (contains!1870 lt!129446 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257349 () Bool)

(declare-fun e!166824 () Bool)

(assert (=> b!257349 (= e!166824 (not call!24439))))

(declare-fun b!257350 () Bool)

(declare-fun e!166820 () ListLongMap!3843)

(assert (=> b!257350 (= e!166820 call!24438)))

(declare-fun b!257351 () Bool)

(declare-fun e!166825 () Bool)

(assert (=> b!257351 (= e!166824 e!166825)))

(declare-fun res!125892 () Bool)

(assert (=> b!257351 (= res!125892 call!24439)))

(assert (=> b!257351 (=> (not res!125892) (not e!166825))))

(declare-fun b!257352 () Bool)

(declare-fun e!166830 () ListLongMap!3843)

(declare-fun e!166832 () ListLongMap!3843)

(assert (=> b!257352 (= e!166830 e!166832)))

(assert (=> b!257352 (= c!43537 (and (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!61719 () Bool)

(assert (=> d!61719 e!166827))

(declare-fun res!125893 () Bool)

(assert (=> d!61719 (=> (not res!125893) (not e!166827))))

(assert (=> d!61719 (= res!125893 (or (bvsge #b00000000000000000000000000000000 (size!6279 lt!129259)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6279 lt!129259)))))))

(declare-fun lt!129430 () ListLongMap!3843)

(assert (=> d!61719 (= lt!129446 lt!129430)))

(declare-fun lt!129441 () Unit!7982)

(declare-fun e!166823 () Unit!7982)

(assert (=> d!61719 (= lt!129441 e!166823)))

(declare-fun c!43541 () Bool)

(assert (=> d!61719 (= c!43541 e!166821)))

(declare-fun res!125891 () Bool)

(assert (=> d!61719 (=> (not res!125891) (not e!166821))))

(assert (=> d!61719 (= res!125891 (bvslt #b00000000000000000000000000000000 (size!6279 lt!129259)))))

(assert (=> d!61719 (= lt!129430 e!166830)))

(assert (=> d!61719 (= c!43536 (and (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61719 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61719 (= (getCurrentListMap!1460 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)) lt!129446)))

(declare-fun b!257344 () Bool)

(declare-fun e!166826 () Bool)

(assert (=> b!257344 (= e!166826 (validKeyInArray!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun b!257353 () Bool)

(declare-fun Unit!7994 () Unit!7982)

(assert (=> b!257353 (= e!166823 Unit!7994)))

(declare-fun b!257354 () Bool)

(assert (=> b!257354 (= e!166822 (= (apply!253 lt!129446 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4586 thiss!1504)))))

(declare-fun b!257355 () Bool)

(declare-fun res!125888 () Bool)

(assert (=> b!257355 (=> (not res!125888) (not e!166827))))

(assert (=> b!257355 (= res!125888 e!166824)))

(declare-fun c!43539 () Bool)

(assert (=> b!257355 (= c!43539 (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24438 () Bool)

(assert (=> bm!24438 (= call!24440 (getCurrentListMapNoExtraKeys!572 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun bm!24439 () Bool)

(assert (=> bm!24439 (= call!24441 (contains!1870 lt!129446 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257356 () Bool)

(assert (=> b!257356 (= e!166825 (= (apply!253 lt!129446 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4586 thiss!1504)))))

(declare-fun b!257357 () Bool)

(assert (=> b!257357 (= e!166830 (+!681 call!24437 (tuple2!4917 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4586 thiss!1504))))))

(declare-fun b!257358 () Bool)

(assert (=> b!257358 (= e!166820 call!24442)))

(declare-fun bm!24440 () Bool)

(assert (=> bm!24440 (= call!24443 call!24440)))

(declare-fun b!257359 () Bool)

(assert (=> b!257359 (= e!166828 (not call!24441))))

(declare-fun b!257360 () Bool)

(assert (=> b!257360 (= e!166832 call!24438)))

(declare-fun b!257361 () Bool)

(declare-fun c!43540 () Bool)

(assert (=> b!257361 (= c!43540 (and (not (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4482 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!257361 (= e!166832 e!166820)))

(declare-fun b!257362 () Bool)

(declare-fun res!125895 () Bool)

(assert (=> b!257362 (=> (not res!125895) (not e!166827))))

(assert (=> b!257362 (= res!125895 e!166829)))

(declare-fun res!125894 () Bool)

(assert (=> b!257362 (=> res!125894 e!166829)))

(assert (=> b!257362 (= res!125894 (not e!166826))))

(declare-fun res!125890 () Bool)

(assert (=> b!257362 (=> (not res!125890) (not e!166826))))

(assert (=> b!257362 (= res!125890 (bvslt #b00000000000000000000000000000000 (size!6279 lt!129259)))))

(declare-fun b!257363 () Bool)

(declare-fun lt!129433 () Unit!7982)

(assert (=> b!257363 (= e!166823 lt!129433)))

(declare-fun lt!129428 () ListLongMap!3843)

(assert (=> b!257363 (= lt!129428 (getCurrentListMapNoExtraKeys!572 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129438 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129438 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129431 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129431 (select (arr!5932 lt!129259) #b00000000000000000000000000000000))))

(declare-fun lt!129426 () Unit!7982)

(assert (=> b!257363 (= lt!129426 (addStillContains!229 lt!129428 lt!129438 (zeroValue!4586 thiss!1504) lt!129431))))

(assert (=> b!257363 (contains!1870 (+!681 lt!129428 (tuple2!4917 lt!129438 (zeroValue!4586 thiss!1504))) lt!129431)))

(declare-fun lt!129445 () Unit!7982)

(assert (=> b!257363 (= lt!129445 lt!129426)))

(declare-fun lt!129436 () ListLongMap!3843)

(assert (=> b!257363 (= lt!129436 (getCurrentListMapNoExtraKeys!572 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129437 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129437 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129439 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129439 (select (arr!5932 lt!129259) #b00000000000000000000000000000000))))

(declare-fun lt!129435 () Unit!7982)

(assert (=> b!257363 (= lt!129435 (addApplyDifferent!229 lt!129436 lt!129437 (minValue!4586 thiss!1504) lt!129439))))

(assert (=> b!257363 (= (apply!253 (+!681 lt!129436 (tuple2!4917 lt!129437 (minValue!4586 thiss!1504))) lt!129439) (apply!253 lt!129436 lt!129439))))

(declare-fun lt!129447 () Unit!7982)

(assert (=> b!257363 (= lt!129447 lt!129435)))

(declare-fun lt!129434 () ListLongMap!3843)

(assert (=> b!257363 (= lt!129434 (getCurrentListMapNoExtraKeys!572 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129432 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129432 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129427 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129427 (select (arr!5932 lt!129259) #b00000000000000000000000000000000))))

(declare-fun lt!129443 () Unit!7982)

(assert (=> b!257363 (= lt!129443 (addApplyDifferent!229 lt!129434 lt!129432 (zeroValue!4586 thiss!1504) lt!129427))))

(assert (=> b!257363 (= (apply!253 (+!681 lt!129434 (tuple2!4917 lt!129432 (zeroValue!4586 thiss!1504))) lt!129427) (apply!253 lt!129434 lt!129427))))

(declare-fun lt!129442 () Unit!7982)

(assert (=> b!257363 (= lt!129442 lt!129443)))

(declare-fun lt!129429 () ListLongMap!3843)

(assert (=> b!257363 (= lt!129429 (getCurrentListMapNoExtraKeys!572 lt!129259 (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)))))

(declare-fun lt!129444 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129444 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129440 () (_ BitVec 64))

(assert (=> b!257363 (= lt!129440 (select (arr!5932 lt!129259) #b00000000000000000000000000000000))))

(assert (=> b!257363 (= lt!129433 (addApplyDifferent!229 lt!129429 lt!129444 (minValue!4586 thiss!1504) lt!129440))))

(assert (=> b!257363 (= (apply!253 (+!681 lt!129429 (tuple2!4917 lt!129444 (minValue!4586 thiss!1504))) lt!129440) (apply!253 lt!129429 lt!129440))))

(assert (= (and d!61719 c!43536) b!257357))

(assert (= (and d!61719 (not c!43536)) b!257352))

(assert (= (and b!257352 c!43537) b!257360))

(assert (= (and b!257352 (not c!43537)) b!257361))

(assert (= (and b!257361 c!43540) b!257350))

(assert (= (and b!257361 (not c!43540)) b!257358))

(assert (= (or b!257350 b!257358) bm!24436))

(assert (= (or b!257360 bm!24436) bm!24440))

(assert (= (or b!257360 b!257350) bm!24435))

(assert (= (or b!257357 bm!24440) bm!24438))

(assert (= (or b!257357 bm!24435) bm!24434))

(assert (= (and d!61719 res!125891) b!257343))

(assert (= (and d!61719 c!43541) b!257363))

(assert (= (and d!61719 (not c!43541)) b!257353))

(assert (= (and d!61719 res!125893) b!257362))

(assert (= (and b!257362 res!125890) b!257344))

(assert (= (and b!257362 (not res!125894)) b!257346))

(assert (= (and b!257346 res!125887) b!257347))

(assert (= (and b!257362 res!125895) b!257355))

(assert (= (and b!257355 c!43539) b!257351))

(assert (= (and b!257355 (not c!43539)) b!257349))

(assert (= (and b!257351 res!125892) b!257356))

(assert (= (or b!257351 b!257349) bm!24437))

(assert (= (and b!257355 res!125888) b!257345))

(assert (= (and b!257345 c!43538) b!257348))

(assert (= (and b!257345 (not c!43538)) b!257359))

(assert (= (and b!257348 res!125889) b!257354))

(assert (= (or b!257348 b!257359) bm!24439))

(declare-fun b_lambda!8211 () Bool)

(assert (=> (not b_lambda!8211) (not b!257347)))

(assert (=> b!257347 t!8891))

(declare-fun b_and!13819 () Bool)

(assert (= b_and!13817 (and (=> t!8891 result!5387) b_and!13819)))

(declare-fun m!272709 () Bool)

(assert (=> b!257363 m!272709))

(declare-fun m!272711 () Bool)

(assert (=> b!257363 m!272711))

(declare-fun m!272713 () Bool)

(assert (=> b!257363 m!272713))

(declare-fun m!272715 () Bool)

(assert (=> b!257363 m!272715))

(assert (=> b!257363 m!272683))

(declare-fun m!272717 () Bool)

(assert (=> b!257363 m!272717))

(declare-fun m!272719 () Bool)

(assert (=> b!257363 m!272719))

(declare-fun m!272721 () Bool)

(assert (=> b!257363 m!272721))

(declare-fun m!272723 () Bool)

(assert (=> b!257363 m!272723))

(declare-fun m!272725 () Bool)

(assert (=> b!257363 m!272725))

(declare-fun m!272727 () Bool)

(assert (=> b!257363 m!272727))

(declare-fun m!272729 () Bool)

(assert (=> b!257363 m!272729))

(assert (=> b!257363 m!272717))

(assert (=> b!257363 m!272713))

(declare-fun m!272731 () Bool)

(assert (=> b!257363 m!272731))

(assert (=> b!257363 m!272727))

(declare-fun m!272733 () Bool)

(assert (=> b!257363 m!272733))

(declare-fun m!272735 () Bool)

(assert (=> b!257363 m!272735))

(declare-fun m!272737 () Bool)

(assert (=> b!257363 m!272737))

(assert (=> b!257363 m!272711))

(declare-fun m!272739 () Bool)

(assert (=> b!257363 m!272739))

(assert (=> b!257346 m!272683))

(assert (=> b!257346 m!272683))

(declare-fun m!272741 () Bool)

(assert (=> b!257346 m!272741))

(assert (=> bm!24438 m!272715))

(assert (=> b!257347 m!272639))

(declare-fun m!272743 () Bool)

(assert (=> b!257347 m!272743))

(assert (=> b!257347 m!272639))

(declare-fun m!272745 () Bool)

(assert (=> b!257347 m!272745))

(assert (=> b!257347 m!272683))

(declare-fun m!272747 () Bool)

(assert (=> b!257347 m!272747))

(assert (=> b!257347 m!272743))

(assert (=> b!257347 m!272683))

(declare-fun m!272749 () Bool)

(assert (=> b!257356 m!272749))

(assert (=> d!61719 m!272583))

(declare-fun m!272751 () Bool)

(assert (=> b!257357 m!272751))

(declare-fun m!272753 () Bool)

(assert (=> bm!24437 m!272753))

(assert (=> b!257343 m!272683))

(assert (=> b!257343 m!272683))

(assert (=> b!257343 m!272689))

(declare-fun m!272755 () Bool)

(assert (=> bm!24434 m!272755))

(declare-fun m!272757 () Bool)

(assert (=> b!257354 m!272757))

(declare-fun m!272759 () Bool)

(assert (=> bm!24439 m!272759))

(assert (=> b!257344 m!272683))

(assert (=> b!257344 m!272683))

(assert (=> b!257344 m!272689))

(assert (=> b!257113 d!61719))

(declare-fun b!257374 () Bool)

(declare-fun e!166842 () Bool)

(declare-fun call!24446 () Bool)

(assert (=> b!257374 (= e!166842 call!24446)))

(declare-fun bm!24443 () Bool)

(declare-fun c!43544 () Bool)

(assert (=> bm!24443 (= call!24446 (arrayNoDuplicates!0 lt!129259 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43544 (Cons!3816 (select (arr!5932 lt!129259) #b00000000000000000000000000000000) Nil!3817) Nil!3817)))))

(declare-fun b!257375 () Bool)

(declare-fun e!166841 () Bool)

(declare-fun contains!1873 (List!3820 (_ BitVec 64)) Bool)

(assert (=> b!257375 (= e!166841 (contains!1873 Nil!3817 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun b!257376 () Bool)

(assert (=> b!257376 (= e!166842 call!24446)))

(declare-fun b!257377 () Bool)

(declare-fun e!166844 () Bool)

(declare-fun e!166843 () Bool)

(assert (=> b!257377 (= e!166844 e!166843)))

(declare-fun res!125903 () Bool)

(assert (=> b!257377 (=> (not res!125903) (not e!166843))))

(assert (=> b!257377 (= res!125903 (not e!166841))))

(declare-fun res!125904 () Bool)

(assert (=> b!257377 (=> (not res!125904) (not e!166841))))

(assert (=> b!257377 (= res!125904 (validKeyInArray!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun b!257378 () Bool)

(assert (=> b!257378 (= e!166843 e!166842)))

(assert (=> b!257378 (= c!43544 (validKeyInArray!0 (select (arr!5932 lt!129259) #b00000000000000000000000000000000)))))

(declare-fun d!61721 () Bool)

(declare-fun res!125902 () Bool)

(assert (=> d!61721 (=> res!125902 e!166844)))

(assert (=> d!61721 (= res!125902 (bvsge #b00000000000000000000000000000000 (size!6279 lt!129259)))))

(assert (=> d!61721 (= (arrayNoDuplicates!0 lt!129259 #b00000000000000000000000000000000 Nil!3817) e!166844)))

(assert (= (and d!61721 (not res!125902)) b!257377))

(assert (= (and b!257377 res!125904) b!257375))

(assert (= (and b!257377 res!125903) b!257378))

(assert (= (and b!257378 c!43544) b!257376))

(assert (= (and b!257378 (not c!43544)) b!257374))

(assert (= (or b!257376 b!257374) bm!24443))

(assert (=> bm!24443 m!272683))

(declare-fun m!272761 () Bool)

(assert (=> bm!24443 m!272761))

(assert (=> b!257375 m!272683))

(assert (=> b!257375 m!272683))

(declare-fun m!272763 () Bool)

(assert (=> b!257375 m!272763))

(assert (=> b!257377 m!272683))

(assert (=> b!257377 m!272683))

(assert (=> b!257377 m!272689))

(assert (=> b!257378 m!272683))

(assert (=> b!257378 m!272683))

(assert (=> b!257378 m!272689))

(assert (=> b!257113 d!61721))

(declare-fun d!61723 () Bool)

(declare-fun e!166847 () Bool)

(assert (=> d!61723 e!166847))

(declare-fun res!125907 () Bool)

(assert (=> d!61723 (=> (not res!125907) (not e!166847))))

(assert (=> d!61723 (= res!125907 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6279 (_keys!6911 thiss!1504)))))))

(declare-fun lt!129450 () Unit!7982)

(declare-fun choose!41 (array!12526 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3820) Unit!7982)

(assert (=> d!61723 (= lt!129450 (choose!41 (_keys!6911 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3817))))

(assert (=> d!61723 (bvslt (size!6279 (_keys!6911 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61723 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6911 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3817) lt!129450)))

(declare-fun b!257381 () Bool)

(assert (=> b!257381 (= e!166847 (arrayNoDuplicates!0 (array!12527 (store (arr!5932 (_keys!6911 thiss!1504)) index!297 key!932) (size!6279 (_keys!6911 thiss!1504))) #b00000000000000000000000000000000 Nil!3817))))

(assert (= (and d!61723 res!125907) b!257381))

(declare-fun m!272765 () Bool)

(assert (=> d!61723 m!272765))

(assert (=> b!257381 m!272473))

(declare-fun m!272767 () Bool)

(assert (=> b!257381 m!272767))

(assert (=> b!257113 d!61723))

(assert (=> b!257113 d!61695))

(declare-fun d!61725 () Bool)

(declare-fun e!166850 () Bool)

(assert (=> d!61725 e!166850))

(declare-fun res!125910 () Bool)

(assert (=> d!61725 (=> (not res!125910) (not e!166850))))

(assert (=> d!61725 (= res!125910 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6279 (_keys!6911 thiss!1504)))))))

(declare-fun lt!129453 () Unit!7982)

(declare-fun choose!102 ((_ BitVec 64) array!12526 (_ BitVec 32) (_ BitVec 32)) Unit!7982)

(assert (=> d!61725 (= lt!129453 (choose!102 key!932 (_keys!6911 thiss!1504) index!297 (mask!11029 thiss!1504)))))

(assert (=> d!61725 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61725 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6911 thiss!1504) index!297 (mask!11029 thiss!1504)) lt!129453)))

(declare-fun b!257384 () Bool)

(assert (=> b!257384 (= e!166850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12527 (store (arr!5932 (_keys!6911 thiss!1504)) index!297 key!932) (size!6279 (_keys!6911 thiss!1504))) (mask!11029 thiss!1504)))))

(assert (= (and d!61725 res!125910) b!257384))

(declare-fun m!272769 () Bool)

(assert (=> d!61725 m!272769))

(assert (=> d!61725 m!272583))

(assert (=> b!257384 m!272473))

(declare-fun m!272771 () Bool)

(assert (=> b!257384 m!272771))

(assert (=> b!257113 d!61725))

(declare-fun d!61727 () Bool)

(declare-fun e!166853 () Bool)

(assert (=> d!61727 e!166853))

(declare-fun res!125913 () Bool)

(assert (=> d!61727 (=> (not res!125913) (not e!166853))))

(assert (=> d!61727 (= res!125913 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6279 (_keys!6911 thiss!1504))) (bvslt index!297 (size!6278 (_values!4728 thiss!1504)))))))

(declare-fun lt!129456 () Unit!7982)

(declare-fun choose!1246 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 32) (_ BitVec 64) V!8435 Int) Unit!7982)

(assert (=> d!61727 (= lt!129456 (choose!1246 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) index!297 key!932 v!346 (defaultEntry!4745 thiss!1504)))))

(assert (=> d!61727 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61727 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!96 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) index!297 key!932 v!346 (defaultEntry!4745 thiss!1504)) lt!129456)))

(declare-fun b!257387 () Bool)

(assert (=> b!257387 (= e!166853 (= (+!681 (getCurrentListMap!1460 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504)) (tuple2!4917 key!932 v!346)) (getCurrentListMap!1460 (array!12527 (store (arr!5932 (_keys!6911 thiss!1504)) index!297 key!932) (size!6279 (_keys!6911 thiss!1504))) (array!12525 (store (arr!5931 (_values!4728 thiss!1504)) index!297 (ValueCellFull!2952 v!346)) (size!6278 (_values!4728 thiss!1504))) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4745 thiss!1504))))))

(assert (= (and d!61727 res!125913) b!257387))

(declare-fun m!272773 () Bool)

(assert (=> d!61727 m!272773))

(assert (=> d!61727 m!272583))

(assert (=> b!257387 m!272481))

(assert (=> b!257387 m!272497))

(assert (=> b!257387 m!272473))

(declare-fun m!272775 () Bool)

(assert (=> b!257387 m!272775))

(assert (=> b!257387 m!272497))

(declare-fun m!272777 () Bool)

(assert (=> b!257387 m!272777))

(assert (=> b!257113 d!61727))

(declare-fun d!61729 () Bool)

(assert (=> d!61729 (= (arrayCountValidKeys!0 lt!129259 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!129459 () Unit!7982)

(declare-fun choose!2 (array!12526 (_ BitVec 32)) Unit!7982)

(assert (=> d!61729 (= lt!129459 (choose!2 lt!129259 index!297))))

(declare-fun e!166856 () Bool)

(assert (=> d!61729 e!166856))

(declare-fun res!125918 () Bool)

(assert (=> d!61729 (=> (not res!125918) (not e!166856))))

(assert (=> d!61729 (= res!125918 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6279 lt!129259))))))

(assert (=> d!61729 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129259 index!297) lt!129459)))

(declare-fun b!257392 () Bool)

(declare-fun res!125919 () Bool)

(assert (=> b!257392 (=> (not res!125919) (not e!166856))))

(assert (=> b!257392 (= res!125919 (validKeyInArray!0 (select (arr!5932 lt!129259) index!297)))))

(declare-fun b!257393 () Bool)

(assert (=> b!257393 (= e!166856 (bvslt (size!6279 lt!129259) #b01111111111111111111111111111111))))

(assert (= (and d!61729 res!125918) b!257392))

(assert (= (and b!257392 res!125919) b!257393))

(declare-fun m!272779 () Bool)

(assert (=> d!61729 m!272779))

(declare-fun m!272781 () Bool)

(assert (=> d!61729 m!272781))

(assert (=> b!257392 m!272693))

(assert (=> b!257392 m!272693))

(assert (=> b!257392 m!272695))

(assert (=> b!257113 d!61729))

(declare-fun d!61731 () Bool)

(declare-fun res!125926 () Bool)

(declare-fun e!166859 () Bool)

(assert (=> d!61731 (=> (not res!125926) (not e!166859))))

(declare-fun simpleValid!275 (LongMapFixedSize!3804) Bool)

(assert (=> d!61731 (= res!125926 (simpleValid!275 thiss!1504))))

(assert (=> d!61731 (= (valid!1479 thiss!1504) e!166859)))

(declare-fun b!257400 () Bool)

(declare-fun res!125927 () Bool)

(assert (=> b!257400 (=> (not res!125927) (not e!166859))))

(assert (=> b!257400 (= res!125927 (= (arrayCountValidKeys!0 (_keys!6911 thiss!1504) #b00000000000000000000000000000000 (size!6279 (_keys!6911 thiss!1504))) (_size!1951 thiss!1504)))))

(declare-fun b!257401 () Bool)

(declare-fun res!125928 () Bool)

(assert (=> b!257401 (=> (not res!125928) (not e!166859))))

(assert (=> b!257401 (= res!125928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)))))

(declare-fun b!257402 () Bool)

(assert (=> b!257402 (= e!166859 (arrayNoDuplicates!0 (_keys!6911 thiss!1504) #b00000000000000000000000000000000 Nil!3817))))

(assert (= (and d!61731 res!125926) b!257400))

(assert (= (and b!257400 res!125927) b!257401))

(assert (= (and b!257401 res!125928) b!257402))

(declare-fun m!272783 () Bool)

(assert (=> d!61731 m!272783))

(assert (=> b!257400 m!272475))

(declare-fun m!272785 () Bool)

(assert (=> b!257401 m!272785))

(declare-fun m!272787 () Bool)

(assert (=> b!257402 m!272787))

(assert (=> start!24572 d!61731))

(declare-fun b!257415 () Bool)

(declare-fun e!166868 () SeekEntryResult!1178)

(declare-fun e!166867 () SeekEntryResult!1178)

(assert (=> b!257415 (= e!166868 e!166867)))

(declare-fun lt!129467 () (_ BitVec 64))

(declare-fun lt!129468 () SeekEntryResult!1178)

(assert (=> b!257415 (= lt!129467 (select (arr!5932 (_keys!6911 thiss!1504)) (index!6884 lt!129468)))))

(declare-fun c!43553 () Bool)

(assert (=> b!257415 (= c!43553 (= lt!129467 key!932))))

(declare-fun d!61733 () Bool)

(declare-fun lt!129466 () SeekEntryResult!1178)

(assert (=> d!61733 (and (or ((_ is Undefined!1178) lt!129466) (not ((_ is Found!1178) lt!129466)) (and (bvsge (index!6883 lt!129466) #b00000000000000000000000000000000) (bvslt (index!6883 lt!129466) (size!6279 (_keys!6911 thiss!1504))))) (or ((_ is Undefined!1178) lt!129466) ((_ is Found!1178) lt!129466) (not ((_ is MissingZero!1178) lt!129466)) (and (bvsge (index!6882 lt!129466) #b00000000000000000000000000000000) (bvslt (index!6882 lt!129466) (size!6279 (_keys!6911 thiss!1504))))) (or ((_ is Undefined!1178) lt!129466) ((_ is Found!1178) lt!129466) ((_ is MissingZero!1178) lt!129466) (not ((_ is MissingVacant!1178) lt!129466)) (and (bvsge (index!6885 lt!129466) #b00000000000000000000000000000000) (bvslt (index!6885 lt!129466) (size!6279 (_keys!6911 thiss!1504))))) (or ((_ is Undefined!1178) lt!129466) (ite ((_ is Found!1178) lt!129466) (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6883 lt!129466)) key!932) (ite ((_ is MissingZero!1178) lt!129466) (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6882 lt!129466)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1178) lt!129466) (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6885 lt!129466)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61733 (= lt!129466 e!166868)))

(declare-fun c!43552 () Bool)

(assert (=> d!61733 (= c!43552 (and ((_ is Intermediate!1178) lt!129468) (undefined!1990 lt!129468)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12526 (_ BitVec 32)) SeekEntryResult!1178)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61733 (= lt!129468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11029 thiss!1504)) key!932 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)))))

(assert (=> d!61733 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61733 (= (seekEntryOrOpen!0 key!932 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)) lt!129466)))

(declare-fun b!257416 () Bool)

(declare-fun e!166866 () SeekEntryResult!1178)

(assert (=> b!257416 (= e!166866 (MissingZero!1178 (index!6884 lt!129468)))))

(declare-fun b!257417 () Bool)

(assert (=> b!257417 (= e!166867 (Found!1178 (index!6884 lt!129468)))))

(declare-fun b!257418 () Bool)

(assert (=> b!257418 (= e!166868 Undefined!1178)))

(declare-fun b!257419 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12526 (_ BitVec 32)) SeekEntryResult!1178)

(assert (=> b!257419 (= e!166866 (seekKeyOrZeroReturnVacant!0 (x!25010 lt!129468) (index!6884 lt!129468) (index!6884 lt!129468) key!932 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)))))

(declare-fun b!257420 () Bool)

(declare-fun c!43551 () Bool)

(assert (=> b!257420 (= c!43551 (= lt!129467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257420 (= e!166867 e!166866)))

(assert (= (and d!61733 c!43552) b!257418))

(assert (= (and d!61733 (not c!43552)) b!257415))

(assert (= (and b!257415 c!43553) b!257417))

(assert (= (and b!257415 (not c!43553)) b!257420))

(assert (= (and b!257420 c!43551) b!257416))

(assert (= (and b!257420 (not c!43551)) b!257419))

(declare-fun m!272789 () Bool)

(assert (=> b!257415 m!272789))

(declare-fun m!272791 () Bool)

(assert (=> d!61733 m!272791))

(declare-fun m!272793 () Bool)

(assert (=> d!61733 m!272793))

(declare-fun m!272795 () Bool)

(assert (=> d!61733 m!272795))

(assert (=> d!61733 m!272583))

(declare-fun m!272797 () Bool)

(assert (=> d!61733 m!272797))

(assert (=> d!61733 m!272795))

(declare-fun m!272799 () Bool)

(assert (=> d!61733 m!272799))

(declare-fun m!272801 () Bool)

(assert (=> b!257419 m!272801))

(assert (=> b!257109 d!61733))

(declare-fun d!61735 () Bool)

(declare-fun e!166871 () Bool)

(assert (=> d!61735 e!166871))

(declare-fun res!125933 () Bool)

(assert (=> d!61735 (=> (not res!125933) (not e!166871))))

(declare-fun lt!129473 () SeekEntryResult!1178)

(assert (=> d!61735 (= res!125933 ((_ is Found!1178) lt!129473))))

(assert (=> d!61735 (= lt!129473 (seekEntryOrOpen!0 key!932 (_keys!6911 thiss!1504) (mask!11029 thiss!1504)))))

(declare-fun lt!129474 () Unit!7982)

(declare-fun choose!1247 (array!12526 array!12524 (_ BitVec 32) (_ BitVec 32) V!8435 V!8435 (_ BitVec 64) Int) Unit!7982)

(assert (=> d!61735 (= lt!129474 (choose!1247 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 (defaultEntry!4745 thiss!1504)))))

(assert (=> d!61735 (validMask!0 (mask!11029 thiss!1504))))

(assert (=> d!61735 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!432 (_keys!6911 thiss!1504) (_values!4728 thiss!1504) (mask!11029 thiss!1504) (extraKeys!4482 thiss!1504) (zeroValue!4586 thiss!1504) (minValue!4586 thiss!1504) key!932 (defaultEntry!4745 thiss!1504)) lt!129474)))

(declare-fun b!257425 () Bool)

(declare-fun res!125934 () Bool)

(assert (=> b!257425 (=> (not res!125934) (not e!166871))))

(assert (=> b!257425 (= res!125934 (inRange!0 (index!6883 lt!129473) (mask!11029 thiss!1504)))))

(declare-fun b!257426 () Bool)

(assert (=> b!257426 (= e!166871 (= (select (arr!5932 (_keys!6911 thiss!1504)) (index!6883 lt!129473)) key!932))))

(assert (=> b!257426 (and (bvsge (index!6883 lt!129473) #b00000000000000000000000000000000) (bvslt (index!6883 lt!129473) (size!6279 (_keys!6911 thiss!1504))))))

(assert (= (and d!61735 res!125933) b!257425))

(assert (= (and b!257425 res!125934) b!257426))

(assert (=> d!61735 m!272513))

(declare-fun m!272803 () Bool)

(assert (=> d!61735 m!272803))

(assert (=> d!61735 m!272583))

(declare-fun m!272805 () Bool)

(assert (=> b!257425 m!272805))

(declare-fun m!272807 () Bool)

(assert (=> b!257426 m!272807))

(assert (=> b!257117 d!61735))

(declare-fun mapIsEmpty!11226 () Bool)

(declare-fun mapRes!11226 () Bool)

(assert (=> mapIsEmpty!11226 mapRes!11226))

(declare-fun b!257433 () Bool)

(declare-fun e!166877 () Bool)

(assert (=> b!257433 (= e!166877 tp_is_empty!6591)))

(declare-fun condMapEmpty!11226 () Bool)

(declare-fun mapDefault!11226 () ValueCell!2952)

(assert (=> mapNonEmpty!11220 (= condMapEmpty!11226 (= mapRest!11220 ((as const (Array (_ BitVec 32) ValueCell!2952)) mapDefault!11226)))))

(declare-fun e!166876 () Bool)

(assert (=> mapNonEmpty!11220 (= tp!23493 (and e!166876 mapRes!11226))))

(declare-fun mapNonEmpty!11226 () Bool)

(declare-fun tp!23502 () Bool)

(assert (=> mapNonEmpty!11226 (= mapRes!11226 (and tp!23502 e!166877))))

(declare-fun mapRest!11226 () (Array (_ BitVec 32) ValueCell!2952))

(declare-fun mapValue!11226 () ValueCell!2952)

(declare-fun mapKey!11226 () (_ BitVec 32))

(assert (=> mapNonEmpty!11226 (= mapRest!11220 (store mapRest!11226 mapKey!11226 mapValue!11226))))

(declare-fun b!257434 () Bool)

(assert (=> b!257434 (= e!166876 tp_is_empty!6591)))

(assert (= (and mapNonEmpty!11220 condMapEmpty!11226) mapIsEmpty!11226))

(assert (= (and mapNonEmpty!11220 (not condMapEmpty!11226)) mapNonEmpty!11226))

(assert (= (and mapNonEmpty!11226 ((_ is ValueCellFull!2952) mapValue!11226)) b!257433))

(assert (= (and mapNonEmpty!11220 ((_ is ValueCellFull!2952) mapDefault!11226)) b!257434))

(declare-fun m!272809 () Bool)

(assert (=> mapNonEmpty!11226 m!272809))

(declare-fun b_lambda!8213 () Bool)

(assert (= b_lambda!8211 (or (and b!257119 b_free!6729) b_lambda!8213)))

(declare-fun b_lambda!8215 () Bool)

(assert (= b_lambda!8209 (or (and b!257119 b_free!6729) b_lambda!8215)))

(check-sat (not bm!24428) (not b!257269) (not d!61727) (not b!257344) (not b!257296) (not b_lambda!8213) (not b!257401) (not b!257356) (not b!257308) (not bm!24419) (not d!61723) (not b_next!6729) (not b!257343) (not bm!24403) (not b!257295) (not b!257320) (not d!61725) (not bm!24434) (not b!257347) (not d!61733) (not b!257381) (not bm!24422) (not b!257384) (not b!257272) (not b!257400) (not d!61701) (not bm!24429) (not bm!24423) (not b!257363) (not b!257357) (not b!257354) (not bm!24424) (not b!257342) (not d!61715) (not b!257425) (not b!257378) (not b!257282) (not b!257419) (not bm!24443) (not b!257392) (not b!257225) (not b!257346) (not b!257306) b_and!13819 (not b!257375) (not mapNonEmpty!11226) (not d!61731) (not b!257341) (not b!257305) (not d!61729) (not b!257288) (not b!257328) (not b!257387) (not d!61735) (not d!61693) (not b!257223) (not b!257402) (not b!257377) (not d!61699) (not bm!24430) (not b!257268) (not b!257279) (not d!61705) tp_is_empty!6591 (not bm!24439) (not d!61703) (not bm!24433) (not b!257271) (not b!257324) (not d!61719) (not b_lambda!8215) (not b!257281) (not bm!24438) (not bm!24404) (not d!61685) (not b!257310) (not b!257216) (not bm!24437))
(check-sat b_and!13819 (not b_next!6729))
