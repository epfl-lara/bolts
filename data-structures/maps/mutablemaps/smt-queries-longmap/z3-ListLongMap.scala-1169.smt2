; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25032 () Bool)

(assert start!25032)

(declare-fun b!260823 () Bool)

(declare-fun b_free!6765 () Bool)

(declare-fun b_next!6765 () Bool)

(assert (=> b!260823 (= b_free!6765 (not b_next!6765))))

(declare-fun tp!23621 () Bool)

(declare-fun b_and!13903 () Bool)

(assert (=> b!260823 (= tp!23621 b_and!13903)))

(declare-fun b!260820 () Bool)

(declare-fun res!127480 () Bool)

(declare-datatypes ((V!8483 0))(
  ( (V!8484 (val!3358 Int)) )
))
(declare-datatypes ((ValueCell!2970 0))(
  ( (ValueCellFull!2970 (v!5473 V!8483)) (EmptyCell!2970) )
))
(declare-datatypes ((array!12608 0))(
  ( (array!12609 (arr!5967 (Array (_ BitVec 32) ValueCell!2970)) (size!6317 (_ BitVec 32))) )
))
(declare-datatypes ((array!12610 0))(
  ( (array!12611 (arr!5968 (Array (_ BitVec 32) (_ BitVec 64))) (size!6318 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3840 0))(
  ( (LongMapFixedSize!3841 (defaultEntry!4808 Int) (mask!11145 (_ BitVec 32)) (extraKeys!4545 (_ BitVec 32)) (zeroValue!4649 V!8483) (minValue!4649 V!8483) (_size!1969 (_ BitVec 32)) (_keys!6992 array!12610) (_values!4791 array!12608) (_vacant!1969 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3840)

(declare-datatypes ((SeekEntryResult!1195 0))(
  ( (MissingZero!1195 (index!6950 (_ BitVec 32))) (Found!1195 (index!6951 (_ BitVec 32))) (Intermediate!1195 (undefined!2007 Bool) (index!6952 (_ BitVec 32)) (x!25159 (_ BitVec 32))) (Undefined!1195) (MissingVacant!1195 (index!6953 (_ BitVec 32))) )
))
(declare-fun lt!131648 () SeekEntryResult!1195)

(assert (=> b!260820 (= res!127480 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6953 lt!131648)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169034 () Bool)

(assert (=> b!260820 (=> (not res!127480) (not e!169034))))

(declare-fun b!260821 () Bool)

(declare-datatypes ((Unit!8105 0))(
  ( (Unit!8106) )
))
(declare-fun e!169040 () Unit!8105)

(declare-fun Unit!8107 () Unit!8105)

(assert (=> b!260821 (= e!169040 Unit!8107)))

(declare-fun lt!131659 () Unit!8105)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!444 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 64) Int) Unit!8105)

(assert (=> b!260821 (= lt!131659 (lemmaInListMapThenSeekEntryOrOpenFindsIt!444 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)))))

(assert (=> b!260821 false))

(declare-fun b!260822 () Bool)

(declare-fun res!127479 () Bool)

(declare-fun e!169033 () Bool)

(assert (=> b!260822 (=> (not res!127479) (not e!169033))))

(assert (=> b!260822 (= res!127479 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun tp_is_empty!6627 () Bool)

(declare-fun e!169039 () Bool)

(declare-fun e!169038 () Bool)

(declare-fun array_inv!3931 (array!12610) Bool)

(declare-fun array_inv!3932 (array!12608) Bool)

(assert (=> b!260823 (= e!169039 (and tp!23621 tp_is_empty!6627 (array_inv!3931 (_keys!6992 thiss!1504)) (array_inv!3932 (_values!4791 thiss!1504)) e!169038))))

(declare-fun b!260825 () Bool)

(declare-fun e!169045 () Bool)

(assert (=> b!260825 (= e!169045 (or (not (= (size!6317 (_values!4791 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11145 thiss!1504)))) (not (= (size!6318 (_keys!6992 thiss!1504)) (size!6317 (_values!4791 thiss!1504)))) (bvslt (mask!11145 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4545 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4545 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11295 () Bool)

(declare-fun mapRes!11295 () Bool)

(assert (=> mapIsEmpty!11295 mapRes!11295))

(declare-fun b!260826 () Bool)

(declare-fun e!169042 () Unit!8105)

(declare-fun Unit!8108 () Unit!8105)

(assert (=> b!260826 (= e!169042 Unit!8108)))

(declare-fun mapNonEmpty!11295 () Bool)

(declare-fun tp!23622 () Bool)

(declare-fun e!169031 () Bool)

(assert (=> mapNonEmpty!11295 (= mapRes!11295 (and tp!23622 e!169031))))

(declare-fun mapRest!11295 () (Array (_ BitVec 32) ValueCell!2970))

(declare-fun mapValue!11295 () ValueCell!2970)

(declare-fun mapKey!11295 () (_ BitVec 32))

(assert (=> mapNonEmpty!11295 (= (arr!5967 (_values!4791 thiss!1504)) (store mapRest!11295 mapKey!11295 mapValue!11295))))

(declare-fun b!260827 () Bool)

(declare-fun e!169043 () Bool)

(declare-fun call!24884 () Bool)

(assert (=> b!260827 (= e!169043 (not call!24884))))

(declare-fun b!260828 () Bool)

(declare-fun e!169032 () Bool)

(assert (=> b!260828 (= e!169038 (and e!169032 mapRes!11295))))

(declare-fun condMapEmpty!11295 () Bool)

(declare-fun mapDefault!11295 () ValueCell!2970)

(assert (=> b!260828 (= condMapEmpty!11295 (= (arr!5967 (_values!4791 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2970)) mapDefault!11295)))))

(declare-fun b!260829 () Bool)

(declare-fun e!169035 () Bool)

(declare-fun e!169036 () Bool)

(assert (=> b!260829 (= e!169035 e!169036)))

(declare-fun res!127475 () Bool)

(assert (=> b!260829 (=> (not res!127475) (not e!169036))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!260829 (= res!127475 (inRange!0 index!297 (mask!11145 thiss!1504)))))

(declare-fun lt!131652 () Unit!8105)

(assert (=> b!260829 (= lt!131652 e!169040)))

(declare-fun c!44347 () Bool)

(declare-datatypes ((tuple2!4948 0))(
  ( (tuple2!4949 (_1!2484 (_ BitVec 64)) (_2!2484 V!8483)) )
))
(declare-datatypes ((List!3850 0))(
  ( (Nil!3847) (Cons!3846 (h!4511 tuple2!4948) (t!8929 List!3850)) )
))
(declare-datatypes ((ListLongMap!3875 0))(
  ( (ListLongMap!3876 (toList!1953 List!3850)) )
))
(declare-fun lt!131656 () ListLongMap!3875)

(declare-fun contains!1893 (ListLongMap!3875 (_ BitVec 64)) Bool)

(assert (=> b!260829 (= c!44347 (contains!1893 lt!131656 key!932))))

(declare-fun getCurrentListMap!1476 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 32) Int) ListLongMap!3875)

(assert (=> b!260829 (= lt!131656 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun b!260830 () Bool)

(declare-fun c!44348 () Bool)

(get-info :version)

(assert (=> b!260830 (= c!44348 ((_ is MissingVacant!1195) lt!131648))))

(declare-fun e!169037 () Bool)

(declare-fun e!169044 () Bool)

(assert (=> b!260830 (= e!169037 e!169044)))

(declare-fun b!260831 () Bool)

(declare-fun lt!131651 () Unit!8105)

(assert (=> b!260831 (= e!169040 lt!131651)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!445 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 64) Int) Unit!8105)

(assert (=> b!260831 (= lt!131651 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!445 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)))))

(declare-fun c!44349 () Bool)

(assert (=> b!260831 (= c!44349 ((_ is MissingZero!1195) lt!131648))))

(assert (=> b!260831 e!169037))

(declare-fun b!260832 () Bool)

(declare-fun Unit!8109 () Unit!8105)

(assert (=> b!260832 (= e!169042 Unit!8109)))

(declare-fun lt!131657 () Unit!8105)

(declare-fun lemmaArrayContainsKeyThenInListMap!252 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 64) (_ BitVec 32) Int) Unit!8105)

(assert (=> b!260832 (= lt!131657 (lemmaArrayContainsKeyThenInListMap!252 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(assert (=> b!260832 false))

(declare-fun b!260833 () Bool)

(assert (=> b!260833 (= e!169031 tp_is_empty!6627)))

(declare-fun b!260834 () Bool)

(assert (=> b!260834 (= e!169044 e!169034)))

(declare-fun res!127477 () Bool)

(declare-fun call!24883 () Bool)

(assert (=> b!260834 (= res!127477 call!24883)))

(assert (=> b!260834 (=> (not res!127477) (not e!169034))))

(declare-fun b!260835 () Bool)

(assert (=> b!260835 (= e!169032 tp_is_empty!6627)))

(declare-fun bm!24880 () Bool)

(declare-fun arrayContainsKey!0 (array!12610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24880 (= call!24884 (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!260836 () Bool)

(assert (=> b!260836 (= e!169036 (not e!169045))))

(declare-fun res!127483 () Bool)

(assert (=> b!260836 (=> res!127483 e!169045)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!260836 (= res!127483 (not (validMask!0 (mask!11145 thiss!1504))))))

(declare-fun lt!131653 () array!12610)

(declare-fun arrayCountValidKeys!0 (array!12610 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!260836 (= (arrayCountValidKeys!0 lt!131653 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!131649 () Unit!8105)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12610 (_ BitVec 32)) Unit!8105)

(assert (=> b!260836 (= lt!131649 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!131653 index!297))))

(assert (=> b!260836 (arrayContainsKey!0 lt!131653 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!131658 () Unit!8105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12610 (_ BitVec 64) (_ BitVec 32)) Unit!8105)

(assert (=> b!260836 (= lt!131658 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131653 key!932 index!297))))

(declare-fun v!346 () V!8483)

(declare-fun +!696 (ListLongMap!3875 tuple2!4948) ListLongMap!3875)

(assert (=> b!260836 (= (+!696 lt!131656 (tuple2!4949 key!932 v!346)) (getCurrentListMap!1476 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131654 () Unit!8105)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!111 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 32) (_ BitVec 64) V!8483 Int) Unit!8105)

(assert (=> b!260836 (= lt!131654 (lemmaAddValidKeyToArrayThenAddPairToListMap!111 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) index!297 key!932 v!346 (defaultEntry!4808 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12610 (_ BitVec 32)) Bool)

(assert (=> b!260836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!131653 (mask!11145 thiss!1504))))

(declare-fun lt!131660 () Unit!8105)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12610 (_ BitVec 32) (_ BitVec 32)) Unit!8105)

(assert (=> b!260836 (= lt!131660 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) index!297 (mask!11145 thiss!1504)))))

(assert (=> b!260836 (= (arrayCountValidKeys!0 lt!131653 #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504)))))))

(declare-fun lt!131655 () Unit!8105)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12610 (_ BitVec 32) (_ BitVec 64)) Unit!8105)

(assert (=> b!260836 (= lt!131655 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6992 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3851 0))(
  ( (Nil!3848) (Cons!3847 (h!4512 (_ BitVec 64)) (t!8930 List!3851)) )
))
(declare-fun arrayNoDuplicates!0 (array!12610 (_ BitVec 32) List!3851) Bool)

(assert (=> b!260836 (arrayNoDuplicates!0 lt!131653 #b00000000000000000000000000000000 Nil!3848)))

(assert (=> b!260836 (= lt!131653 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun lt!131650 () Unit!8105)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12610 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3851) Unit!8105)

(assert (=> b!260836 (= lt!131650 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6992 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3848))))

(declare-fun lt!131661 () Unit!8105)

(assert (=> b!260836 (= lt!131661 e!169042)))

(declare-fun c!44350 () Bool)

(assert (=> b!260836 (= c!44350 (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!24881 () Bool)

(assert (=> bm!24881 (= call!24883 (inRange!0 (ite c!44349 (index!6950 lt!131648) (index!6953 lt!131648)) (mask!11145 thiss!1504)))))

(declare-fun b!260824 () Bool)

(assert (=> b!260824 (= e!169044 ((_ is Undefined!1195) lt!131648))))

(declare-fun res!127476 () Bool)

(assert (=> start!25032 (=> (not res!127476) (not e!169033))))

(declare-fun valid!1490 (LongMapFixedSize!3840) Bool)

(assert (=> start!25032 (= res!127476 (valid!1490 thiss!1504))))

(assert (=> start!25032 e!169033))

(assert (=> start!25032 e!169039))

(assert (=> start!25032 true))

(assert (=> start!25032 tp_is_empty!6627))

(declare-fun b!260837 () Bool)

(declare-fun res!127478 () Bool)

(assert (=> b!260837 (=> (not res!127478) (not e!169043))))

(assert (=> b!260837 (= res!127478 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6950 lt!131648)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260838 () Bool)

(assert (=> b!260838 (= e!169033 e!169035)))

(declare-fun res!127481 () Bool)

(assert (=> b!260838 (=> (not res!127481) (not e!169035))))

(assert (=> b!260838 (= res!127481 (or (= lt!131648 (MissingZero!1195 index!297)) (= lt!131648 (MissingVacant!1195 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12610 (_ BitVec 32)) SeekEntryResult!1195)

(assert (=> b!260838 (= lt!131648 (seekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun b!260839 () Bool)

(declare-fun res!127482 () Bool)

(assert (=> b!260839 (=> (not res!127482) (not e!169043))))

(assert (=> b!260839 (= res!127482 call!24883)))

(assert (=> b!260839 (= e!169037 e!169043)))

(declare-fun b!260840 () Bool)

(assert (=> b!260840 (= e!169034 (not call!24884))))

(assert (= (and start!25032 res!127476) b!260822))

(assert (= (and b!260822 res!127479) b!260838))

(assert (= (and b!260838 res!127481) b!260829))

(assert (= (and b!260829 c!44347) b!260821))

(assert (= (and b!260829 (not c!44347)) b!260831))

(assert (= (and b!260831 c!44349) b!260839))

(assert (= (and b!260831 (not c!44349)) b!260830))

(assert (= (and b!260839 res!127482) b!260837))

(assert (= (and b!260837 res!127478) b!260827))

(assert (= (and b!260830 c!44348) b!260834))

(assert (= (and b!260830 (not c!44348)) b!260824))

(assert (= (and b!260834 res!127477) b!260820))

(assert (= (and b!260820 res!127480) b!260840))

(assert (= (or b!260839 b!260834) bm!24881))

(assert (= (or b!260827 b!260840) bm!24880))

(assert (= (and b!260829 res!127475) b!260836))

(assert (= (and b!260836 c!44350) b!260832))

(assert (= (and b!260836 (not c!44350)) b!260826))

(assert (= (and b!260836 (not res!127483)) b!260825))

(assert (= (and b!260828 condMapEmpty!11295) mapIsEmpty!11295))

(assert (= (and b!260828 (not condMapEmpty!11295)) mapNonEmpty!11295))

(assert (= (and mapNonEmpty!11295 ((_ is ValueCellFull!2970) mapValue!11295)) b!260833))

(assert (= (and b!260828 ((_ is ValueCellFull!2970) mapDefault!11295)) b!260835))

(assert (= b!260823 b!260828))

(assert (= start!25032 b!260823))

(declare-fun m!276725 () Bool)

(assert (=> b!260821 m!276725))

(declare-fun m!276727 () Bool)

(assert (=> b!260831 m!276727))

(declare-fun m!276729 () Bool)

(assert (=> mapNonEmpty!11295 m!276729))

(declare-fun m!276731 () Bool)

(assert (=> b!260838 m!276731))

(declare-fun m!276733 () Bool)

(assert (=> start!25032 m!276733))

(declare-fun m!276735 () Bool)

(assert (=> bm!24880 m!276735))

(declare-fun m!276737 () Bool)

(assert (=> b!260837 m!276737))

(assert (=> b!260836 m!276735))

(declare-fun m!276739 () Bool)

(assert (=> b!260836 m!276739))

(declare-fun m!276741 () Bool)

(assert (=> b!260836 m!276741))

(declare-fun m!276743 () Bool)

(assert (=> b!260836 m!276743))

(declare-fun m!276745 () Bool)

(assert (=> b!260836 m!276745))

(declare-fun m!276747 () Bool)

(assert (=> b!260836 m!276747))

(declare-fun m!276749 () Bool)

(assert (=> b!260836 m!276749))

(declare-fun m!276751 () Bool)

(assert (=> b!260836 m!276751))

(declare-fun m!276753 () Bool)

(assert (=> b!260836 m!276753))

(declare-fun m!276755 () Bool)

(assert (=> b!260836 m!276755))

(declare-fun m!276757 () Bool)

(assert (=> b!260836 m!276757))

(declare-fun m!276759 () Bool)

(assert (=> b!260836 m!276759))

(declare-fun m!276761 () Bool)

(assert (=> b!260836 m!276761))

(declare-fun m!276763 () Bool)

(assert (=> b!260836 m!276763))

(declare-fun m!276765 () Bool)

(assert (=> b!260836 m!276765))

(declare-fun m!276767 () Bool)

(assert (=> b!260836 m!276767))

(declare-fun m!276769 () Bool)

(assert (=> b!260836 m!276769))

(declare-fun m!276771 () Bool)

(assert (=> b!260836 m!276771))

(declare-fun m!276773 () Bool)

(assert (=> bm!24881 m!276773))

(declare-fun m!276775 () Bool)

(assert (=> b!260832 m!276775))

(declare-fun m!276777 () Bool)

(assert (=> b!260829 m!276777))

(declare-fun m!276779 () Bool)

(assert (=> b!260829 m!276779))

(declare-fun m!276781 () Bool)

(assert (=> b!260829 m!276781))

(declare-fun m!276783 () Bool)

(assert (=> b!260820 m!276783))

(declare-fun m!276785 () Bool)

(assert (=> b!260823 m!276785))

(declare-fun m!276787 () Bool)

(assert (=> b!260823 m!276787))

(check-sat (not bm!24881) tp_is_empty!6627 (not b!260821) (not b!260829) (not b!260831) (not b!260838) (not start!25032) b_and!13903 (not b!260823) (not b_next!6765) (not mapNonEmpty!11295) (not b!260836) (not b!260832) (not bm!24880))
(check-sat b_and!13903 (not b_next!6765))
(get-model)

(declare-fun d!62619 () Bool)

(assert (=> d!62619 (= (inRange!0 (ite c!44349 (index!6950 lt!131648) (index!6953 lt!131648)) (mask!11145 thiss!1504)) (and (bvsge (ite c!44349 (index!6950 lt!131648) (index!6953 lt!131648)) #b00000000000000000000000000000000) (bvslt (ite c!44349 (index!6950 lt!131648) (index!6953 lt!131648)) (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24881 d!62619))

(declare-fun d!62621 () Bool)

(declare-fun res!127517 () Bool)

(declare-fun e!169093 () Bool)

(assert (=> d!62621 (=> (not res!127517) (not e!169093))))

(declare-fun simpleValid!281 (LongMapFixedSize!3840) Bool)

(assert (=> d!62621 (= res!127517 (simpleValid!281 thiss!1504))))

(assert (=> d!62621 (= (valid!1490 thiss!1504) e!169093)))

(declare-fun b!260910 () Bool)

(declare-fun res!127518 () Bool)

(assert (=> b!260910 (=> (not res!127518) (not e!169093))))

(assert (=> b!260910 (= res!127518 (= (arrayCountValidKeys!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (_size!1969 thiss!1504)))))

(declare-fun b!260911 () Bool)

(declare-fun res!127519 () Bool)

(assert (=> b!260911 (=> (not res!127519) (not e!169093))))

(assert (=> b!260911 (= res!127519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun b!260912 () Bool)

(assert (=> b!260912 (= e!169093 (arrayNoDuplicates!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 Nil!3848))))

(assert (= (and d!62621 res!127517) b!260910))

(assert (= (and b!260910 res!127518) b!260911))

(assert (= (and b!260911 res!127519) b!260912))

(declare-fun m!276853 () Bool)

(assert (=> d!62621 m!276853))

(assert (=> b!260910 m!276755))

(declare-fun m!276855 () Bool)

(assert (=> b!260911 m!276855))

(declare-fun m!276857 () Bool)

(assert (=> b!260912 m!276857))

(assert (=> start!25032 d!62621))

(declare-fun d!62623 () Bool)

(declare-fun lt!131706 () (_ BitVec 32))

(assert (=> d!62623 (and (bvsge lt!131706 #b00000000000000000000000000000000) (bvsle lt!131706 (bvsub (size!6318 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun e!169099 () (_ BitVec 32))

(assert (=> d!62623 (= lt!131706 e!169099)))

(declare-fun c!44367 () Bool)

(assert (=> d!62623 (= c!44367 (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62623 (and (bvsle #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6318 (_keys!6992 thiss!1504)) (size!6318 lt!131653)))))

(assert (=> d!62623 (= (arrayCountValidKeys!0 lt!131653 #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) lt!131706)))

(declare-fun bm!24890 () Bool)

(declare-fun call!24893 () (_ BitVec 32))

(assert (=> bm!24890 (= call!24893 (arrayCountValidKeys!0 lt!131653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!260921 () Bool)

(declare-fun e!169098 () (_ BitVec 32))

(assert (=> b!260921 (= e!169098 (bvadd #b00000000000000000000000000000001 call!24893))))

(declare-fun b!260922 () Bool)

(assert (=> b!260922 (= e!169099 #b00000000000000000000000000000000)))

(declare-fun b!260923 () Bool)

(assert (=> b!260923 (= e!169098 call!24893)))

(declare-fun b!260924 () Bool)

(assert (=> b!260924 (= e!169099 e!169098)))

(declare-fun c!44368 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!260924 (= c!44368 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (= (and d!62623 c!44367) b!260922))

(assert (= (and d!62623 (not c!44367)) b!260924))

(assert (= (and b!260924 c!44368) b!260921))

(assert (= (and b!260924 (not c!44368)) b!260923))

(assert (= (or b!260921 b!260923) bm!24890))

(declare-fun m!276859 () Bool)

(assert (=> bm!24890 m!276859))

(declare-fun m!276861 () Bool)

(assert (=> b!260924 m!276861))

(assert (=> b!260924 m!276861))

(declare-fun m!276863 () Bool)

(assert (=> b!260924 m!276863))

(assert (=> b!260836 d!62623))

(declare-fun d!62625 () Bool)

(declare-fun res!127524 () Bool)

(declare-fun e!169104 () Bool)

(assert (=> d!62625 (=> res!127524 e!169104)))

(assert (=> d!62625 (= res!127524 (= (select (arr!5968 lt!131653) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62625 (= (arrayContainsKey!0 lt!131653 key!932 #b00000000000000000000000000000000) e!169104)))

(declare-fun b!260929 () Bool)

(declare-fun e!169105 () Bool)

(assert (=> b!260929 (= e!169104 e!169105)))

(declare-fun res!127525 () Bool)

(assert (=> b!260929 (=> (not res!127525) (not e!169105))))

(assert (=> b!260929 (= res!127525 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 lt!131653)))))

(declare-fun b!260930 () Bool)

(assert (=> b!260930 (= e!169105 (arrayContainsKey!0 lt!131653 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62625 (not res!127524)) b!260929))

(assert (= (and b!260929 res!127525) b!260930))

(assert (=> d!62625 m!276861))

(declare-fun m!276865 () Bool)

(assert (=> b!260930 m!276865))

(assert (=> b!260836 d!62625))

(declare-fun d!62627 () Bool)

(assert (=> d!62627 (arrayContainsKey!0 lt!131653 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!131709 () Unit!8105)

(declare-fun choose!13 (array!12610 (_ BitVec 64) (_ BitVec 32)) Unit!8105)

(assert (=> d!62627 (= lt!131709 (choose!13 lt!131653 key!932 index!297))))

(assert (=> d!62627 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!62627 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131653 key!932 index!297) lt!131709)))

(declare-fun bs!9198 () Bool)

(assert (= bs!9198 d!62627))

(assert (=> bs!9198 m!276751))

(declare-fun m!276867 () Bool)

(assert (=> bs!9198 m!276867))

(assert (=> b!260836 d!62627))

(declare-fun d!62629 () Bool)

(declare-fun lt!131710 () (_ BitVec 32))

(assert (=> d!62629 (and (bvsge lt!131710 #b00000000000000000000000000000000) (bvsle lt!131710 (bvsub (size!6318 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!169107 () (_ BitVec 32))

(assert (=> d!62629 (= lt!131710 e!169107)))

(declare-fun c!44369 () Bool)

(assert (=> d!62629 (= c!44369 (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62629 (and (bvsle #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6318 (_keys!6992 thiss!1504)) (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62629 (= (arrayCountValidKeys!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) lt!131710)))

(declare-fun bm!24891 () Bool)

(declare-fun call!24894 () (_ BitVec 32))

(assert (=> bm!24891 (= call!24894 (arrayCountValidKeys!0 (_keys!6992 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!260931 () Bool)

(declare-fun e!169106 () (_ BitVec 32))

(assert (=> b!260931 (= e!169106 (bvadd #b00000000000000000000000000000001 call!24894))))

(declare-fun b!260932 () Bool)

(assert (=> b!260932 (= e!169107 #b00000000000000000000000000000000)))

(declare-fun b!260933 () Bool)

(assert (=> b!260933 (= e!169106 call!24894)))

(declare-fun b!260934 () Bool)

(assert (=> b!260934 (= e!169107 e!169106)))

(declare-fun c!44370 () Bool)

(assert (=> b!260934 (= c!44370 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!62629 c!44369) b!260932))

(assert (= (and d!62629 (not c!44369)) b!260934))

(assert (= (and b!260934 c!44370) b!260931))

(assert (= (and b!260934 (not c!44370)) b!260933))

(assert (= (or b!260931 b!260933) bm!24891))

(declare-fun m!276869 () Bool)

(assert (=> bm!24891 m!276869))

(declare-fun m!276871 () Bool)

(assert (=> b!260934 m!276871))

(assert (=> b!260934 m!276871))

(declare-fun m!276873 () Bool)

(assert (=> b!260934 m!276873))

(assert (=> b!260836 d!62629))

(declare-fun d!62631 () Bool)

(assert (=> d!62631 (= (validMask!0 (mask!11145 thiss!1504)) (and (or (= (mask!11145 thiss!1504) #b00000000000000000000000000000111) (= (mask!11145 thiss!1504) #b00000000000000000000000000001111) (= (mask!11145 thiss!1504) #b00000000000000000000000000011111) (= (mask!11145 thiss!1504) #b00000000000000000000000000111111) (= (mask!11145 thiss!1504) #b00000000000000000000000001111111) (= (mask!11145 thiss!1504) #b00000000000000000000000011111111) (= (mask!11145 thiss!1504) #b00000000000000000000000111111111) (= (mask!11145 thiss!1504) #b00000000000000000000001111111111) (= (mask!11145 thiss!1504) #b00000000000000000000011111111111) (= (mask!11145 thiss!1504) #b00000000000000000000111111111111) (= (mask!11145 thiss!1504) #b00000000000000000001111111111111) (= (mask!11145 thiss!1504) #b00000000000000000011111111111111) (= (mask!11145 thiss!1504) #b00000000000000000111111111111111) (= (mask!11145 thiss!1504) #b00000000000000001111111111111111) (= (mask!11145 thiss!1504) #b00000000000000011111111111111111) (= (mask!11145 thiss!1504) #b00000000000000111111111111111111) (= (mask!11145 thiss!1504) #b00000000000001111111111111111111) (= (mask!11145 thiss!1504) #b00000000000011111111111111111111) (= (mask!11145 thiss!1504) #b00000000000111111111111111111111) (= (mask!11145 thiss!1504) #b00000000001111111111111111111111) (= (mask!11145 thiss!1504) #b00000000011111111111111111111111) (= (mask!11145 thiss!1504) #b00000000111111111111111111111111) (= (mask!11145 thiss!1504) #b00000001111111111111111111111111) (= (mask!11145 thiss!1504) #b00000011111111111111111111111111) (= (mask!11145 thiss!1504) #b00000111111111111111111111111111) (= (mask!11145 thiss!1504) #b00001111111111111111111111111111) (= (mask!11145 thiss!1504) #b00011111111111111111111111111111) (= (mask!11145 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11145 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!260836 d!62631))

(declare-fun b!260943 () Bool)

(declare-fun e!169114 () Bool)

(declare-fun call!24897 () Bool)

(assert (=> b!260943 (= e!169114 call!24897)))

(declare-fun bm!24894 () Bool)

(assert (=> bm!24894 (= call!24897 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!131653 (mask!11145 thiss!1504)))))

(declare-fun b!260944 () Bool)

(declare-fun e!169116 () Bool)

(declare-fun e!169115 () Bool)

(assert (=> b!260944 (= e!169116 e!169115)))

(declare-fun c!44373 () Bool)

(assert (=> b!260944 (= c!44373 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun d!62633 () Bool)

(declare-fun res!127531 () Bool)

(assert (=> d!62633 (=> res!127531 e!169116)))

(assert (=> d!62633 (= res!127531 (bvsge #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(assert (=> d!62633 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!131653 (mask!11145 thiss!1504)) e!169116)))

(declare-fun b!260945 () Bool)

(assert (=> b!260945 (= e!169115 call!24897)))

(declare-fun b!260946 () Bool)

(assert (=> b!260946 (= e!169115 e!169114)))

(declare-fun lt!131718 () (_ BitVec 64))

(assert (=> b!260946 (= lt!131718 (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))

(declare-fun lt!131717 () Unit!8105)

(assert (=> b!260946 (= lt!131717 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131653 lt!131718 #b00000000000000000000000000000000))))

(assert (=> b!260946 (arrayContainsKey!0 lt!131653 lt!131718 #b00000000000000000000000000000000)))

(declare-fun lt!131719 () Unit!8105)

(assert (=> b!260946 (= lt!131719 lt!131717)))

(declare-fun res!127530 () Bool)

(assert (=> b!260946 (= res!127530 (= (seekEntryOrOpen!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) lt!131653 (mask!11145 thiss!1504)) (Found!1195 #b00000000000000000000000000000000)))))

(assert (=> b!260946 (=> (not res!127530) (not e!169114))))

(assert (= (and d!62633 (not res!127531)) b!260944))

(assert (= (and b!260944 c!44373) b!260946))

(assert (= (and b!260944 (not c!44373)) b!260945))

(assert (= (and b!260946 res!127530) b!260943))

(assert (= (or b!260943 b!260945) bm!24894))

(declare-fun m!276875 () Bool)

(assert (=> bm!24894 m!276875))

(assert (=> b!260944 m!276861))

(assert (=> b!260944 m!276861))

(assert (=> b!260944 m!276863))

(assert (=> b!260946 m!276861))

(declare-fun m!276877 () Bool)

(assert (=> b!260946 m!276877))

(declare-fun m!276879 () Bool)

(assert (=> b!260946 m!276879))

(assert (=> b!260946 m!276861))

(declare-fun m!276881 () Bool)

(assert (=> b!260946 m!276881))

(assert (=> b!260836 d!62633))

(declare-fun d!62635 () Bool)

(declare-fun e!169119 () Bool)

(assert (=> d!62635 e!169119))

(declare-fun res!127534 () Bool)

(assert (=> d!62635 (=> (not res!127534) (not e!169119))))

(assert (=> d!62635 (= res!127534 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6318 (_keys!6992 thiss!1504)))))))

(declare-fun lt!131722 () Unit!8105)

(declare-fun choose!41 (array!12610 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3851) Unit!8105)

(assert (=> d!62635 (= lt!131722 (choose!41 (_keys!6992 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3848))))

(assert (=> d!62635 (bvslt (size!6318 (_keys!6992 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!62635 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6992 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3848) lt!131722)))

(declare-fun b!260949 () Bool)

(assert (=> b!260949 (= e!169119 (arrayNoDuplicates!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000000 Nil!3848))))

(assert (= (and d!62635 res!127534) b!260949))

(declare-fun m!276883 () Bool)

(assert (=> d!62635 m!276883))

(assert (=> b!260949 m!276753))

(declare-fun m!276885 () Bool)

(assert (=> b!260949 m!276885))

(assert (=> b!260836 d!62635))

(declare-fun b!260959 () Bool)

(declare-fun res!127546 () Bool)

(declare-fun e!169124 () Bool)

(assert (=> b!260959 (=> (not res!127546) (not e!169124))))

(assert (=> b!260959 (= res!127546 (validKeyInArray!0 key!932))))

(declare-fun b!260958 () Bool)

(declare-fun res!127543 () Bool)

(assert (=> b!260958 (=> (not res!127543) (not e!169124))))

(assert (=> b!260958 (= res!127543 (not (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) index!297))))))

(declare-fun b!260961 () Bool)

(declare-fun e!169125 () Bool)

(assert (=> b!260961 (= e!169125 (= (arrayCountValidKeys!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!260960 () Bool)

(assert (=> b!260960 (= e!169124 (bvslt (size!6318 (_keys!6992 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!62637 () Bool)

(assert (=> d!62637 e!169125))

(declare-fun res!127545 () Bool)

(assert (=> d!62637 (=> (not res!127545) (not e!169125))))

(assert (=> d!62637 (= res!127545 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6318 (_keys!6992 thiss!1504)))))))

(declare-fun lt!131725 () Unit!8105)

(declare-fun choose!1 (array!12610 (_ BitVec 32) (_ BitVec 64)) Unit!8105)

(assert (=> d!62637 (= lt!131725 (choose!1 (_keys!6992 thiss!1504) index!297 key!932))))

(assert (=> d!62637 e!169124))

(declare-fun res!127544 () Bool)

(assert (=> d!62637 (=> (not res!127544) (not e!169124))))

(assert (=> d!62637 (= res!127544 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6318 (_keys!6992 thiss!1504)))))))

(assert (=> d!62637 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6992 thiss!1504) index!297 key!932) lt!131725)))

(assert (= (and d!62637 res!127544) b!260958))

(assert (= (and b!260958 res!127543) b!260959))

(assert (= (and b!260959 res!127546) b!260960))

(assert (= (and d!62637 res!127545) b!260961))

(declare-fun m!276887 () Bool)

(assert (=> b!260959 m!276887))

(declare-fun m!276889 () Bool)

(assert (=> b!260958 m!276889))

(assert (=> b!260958 m!276889))

(declare-fun m!276891 () Bool)

(assert (=> b!260958 m!276891))

(assert (=> b!260961 m!276753))

(declare-fun m!276893 () Bool)

(assert (=> b!260961 m!276893))

(assert (=> b!260961 m!276755))

(declare-fun m!276895 () Bool)

(assert (=> d!62637 m!276895))

(assert (=> b!260836 d!62637))

(declare-fun bm!24909 () Bool)

(declare-fun call!24916 () ListLongMap!3875)

(declare-fun call!24918 () ListLongMap!3875)

(assert (=> bm!24909 (= call!24916 call!24918)))

(declare-fun d!62639 () Bool)

(declare-fun e!169153 () Bool)

(assert (=> d!62639 e!169153))

(declare-fun res!127566 () Bool)

(assert (=> d!62639 (=> (not res!127566) (not e!169153))))

(assert (=> d!62639 (= res!127566 (or (bvsge #b00000000000000000000000000000000 (size!6318 lt!131653)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))))

(declare-fun lt!131791 () ListLongMap!3875)

(declare-fun lt!131782 () ListLongMap!3875)

(assert (=> d!62639 (= lt!131791 lt!131782)))

(declare-fun lt!131774 () Unit!8105)

(declare-fun e!169157 () Unit!8105)

(assert (=> d!62639 (= lt!131774 e!169157)))

(declare-fun c!44387 () Bool)

(declare-fun e!169163 () Bool)

(assert (=> d!62639 (= c!44387 e!169163)))

(declare-fun res!127567 () Bool)

(assert (=> d!62639 (=> (not res!127567) (not e!169163))))

(assert (=> d!62639 (= res!127567 (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun e!169158 () ListLongMap!3875)

(assert (=> d!62639 (= lt!131782 e!169158)))

(declare-fun c!44390 () Bool)

(assert (=> d!62639 (= c!44390 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62639 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62639 (= (getCurrentListMap!1476 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) lt!131791)))

(declare-fun call!24912 () ListLongMap!3875)

(declare-fun c!44388 () Bool)

(declare-fun call!24915 () ListLongMap!3875)

(declare-fun bm!24910 () Bool)

(assert (=> bm!24910 (= call!24912 (+!696 (ite c!44390 call!24918 (ite c!44388 call!24916 call!24915)) (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(declare-fun b!261004 () Bool)

(declare-fun e!169161 () ListLongMap!3875)

(assert (=> b!261004 (= e!169158 e!169161)))

(assert (=> b!261004 (= c!44388 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!261005 () Bool)

(declare-fun call!24914 () ListLongMap!3875)

(assert (=> b!261005 (= e!169161 call!24914)))

(declare-fun bm!24911 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!578 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 32) Int) ListLongMap!3875)

(assert (=> bm!24911 (= call!24918 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun b!261006 () Bool)

(assert (=> b!261006 (= e!169163 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun bm!24912 () Bool)

(assert (=> bm!24912 (= call!24915 call!24916)))

(declare-fun b!261007 () Bool)

(declare-fun e!169155 () Bool)

(declare-fun apply!259 (ListLongMap!3875 (_ BitVec 64)) V!8483)

(assert (=> b!261007 (= e!169155 (= (apply!259 lt!131791 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4649 thiss!1504)))))

(declare-fun bm!24913 () Bool)

(declare-fun call!24913 () Bool)

(assert (=> bm!24913 (= call!24913 (contains!1893 lt!131791 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261008 () Bool)

(declare-fun e!169164 () Bool)

(declare-fun get!3078 (ValueCell!2970 V!8483) V!8483)

(declare-fun dynLambda!597 (Int (_ BitVec 64)) V!8483)

(assert (=> b!261008 (= e!169164 (= (apply!259 lt!131791 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) (get!3078 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!261008 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6317 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))))))))

(assert (=> b!261008 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun b!261009 () Bool)

(declare-fun e!169154 () Bool)

(assert (=> b!261009 (= e!169154 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun b!261010 () Bool)

(declare-fun c!44389 () Bool)

(assert (=> b!261010 (= c!44389 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!169160 () ListLongMap!3875)

(assert (=> b!261010 (= e!169161 e!169160)))

(declare-fun b!261011 () Bool)

(assert (=> b!261011 (= e!169160 call!24914)))

(declare-fun b!261012 () Bool)

(declare-fun e!169159 () Bool)

(declare-fun e!169152 () Bool)

(assert (=> b!261012 (= e!169159 e!169152)))

(declare-fun res!127570 () Bool)

(assert (=> b!261012 (= res!127570 call!24913)))

(assert (=> b!261012 (=> (not res!127570) (not e!169152))))

(declare-fun b!261013 () Bool)

(assert (=> b!261013 (= e!169160 call!24915)))

(declare-fun b!261014 () Bool)

(declare-fun lt!131784 () Unit!8105)

(assert (=> b!261014 (= e!169157 lt!131784)))

(declare-fun lt!131771 () ListLongMap!3875)

(assert (=> b!261014 (= lt!131771 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131788 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131788 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131776 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131776 (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))

(declare-fun lt!131790 () Unit!8105)

(declare-fun addStillContains!235 (ListLongMap!3875 (_ BitVec 64) V!8483 (_ BitVec 64)) Unit!8105)

(assert (=> b!261014 (= lt!131790 (addStillContains!235 lt!131771 lt!131788 (zeroValue!4649 thiss!1504) lt!131776))))

(assert (=> b!261014 (contains!1893 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))) lt!131776)))

(declare-fun lt!131773 () Unit!8105)

(assert (=> b!261014 (= lt!131773 lt!131790)))

(declare-fun lt!131779 () ListLongMap!3875)

(assert (=> b!261014 (= lt!131779 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131775 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131775 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131786 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131786 (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))

(declare-fun lt!131783 () Unit!8105)

(declare-fun addApplyDifferent!235 (ListLongMap!3875 (_ BitVec 64) V!8483 (_ BitVec 64)) Unit!8105)

(assert (=> b!261014 (= lt!131783 (addApplyDifferent!235 lt!131779 lt!131775 (minValue!4649 thiss!1504) lt!131786))))

(assert (=> b!261014 (= (apply!259 (+!696 lt!131779 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))) lt!131786) (apply!259 lt!131779 lt!131786))))

(declare-fun lt!131772 () Unit!8105)

(assert (=> b!261014 (= lt!131772 lt!131783)))

(declare-fun lt!131781 () ListLongMap!3875)

(assert (=> b!261014 (= lt!131781 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131787 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131787 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131770 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131770 (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))

(declare-fun lt!131780 () Unit!8105)

(assert (=> b!261014 (= lt!131780 (addApplyDifferent!235 lt!131781 lt!131787 (zeroValue!4649 thiss!1504) lt!131770))))

(assert (=> b!261014 (= (apply!259 (+!696 lt!131781 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))) lt!131770) (apply!259 lt!131781 lt!131770))))

(declare-fun lt!131789 () Unit!8105)

(assert (=> b!261014 (= lt!131789 lt!131780)))

(declare-fun lt!131785 () ListLongMap!3875)

(assert (=> b!261014 (= lt!131785 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131778 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131778 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131777 () (_ BitVec 64))

(assert (=> b!261014 (= lt!131777 (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))

(assert (=> b!261014 (= lt!131784 (addApplyDifferent!235 lt!131785 lt!131778 (minValue!4649 thiss!1504) lt!131777))))

(assert (=> b!261014 (= (apply!259 (+!696 lt!131785 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))) lt!131777) (apply!259 lt!131785 lt!131777))))

(declare-fun b!261015 () Bool)

(declare-fun Unit!8113 () Unit!8105)

(assert (=> b!261015 (= e!169157 Unit!8113)))

(declare-fun b!261016 () Bool)

(declare-fun res!127572 () Bool)

(assert (=> b!261016 (=> (not res!127572) (not e!169153))))

(assert (=> b!261016 (= res!127572 e!169159)))

(declare-fun c!44391 () Bool)

(assert (=> b!261016 (= c!44391 (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!261017 () Bool)

(assert (=> b!261017 (= e!169159 (not call!24913))))

(declare-fun b!261018 () Bool)

(declare-fun e!169162 () Bool)

(assert (=> b!261018 (= e!169153 e!169162)))

(declare-fun c!44386 () Bool)

(assert (=> b!261018 (= c!44386 (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!261019 () Bool)

(assert (=> b!261019 (= e!169152 (= (apply!259 lt!131791 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4649 thiss!1504)))))

(declare-fun bm!24914 () Bool)

(assert (=> bm!24914 (= call!24914 call!24912)))

(declare-fun b!261020 () Bool)

(declare-fun e!169156 () Bool)

(assert (=> b!261020 (= e!169156 e!169164)))

(declare-fun res!127565 () Bool)

(assert (=> b!261020 (=> (not res!127565) (not e!169164))))

(assert (=> b!261020 (= res!127565 (contains!1893 lt!131791 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (=> b!261020 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun b!261021 () Bool)

(declare-fun res!127568 () Bool)

(assert (=> b!261021 (=> (not res!127568) (not e!169153))))

(assert (=> b!261021 (= res!127568 e!169156)))

(declare-fun res!127569 () Bool)

(assert (=> b!261021 (=> res!127569 e!169156)))

(assert (=> b!261021 (= res!127569 (not e!169154))))

(declare-fun res!127571 () Bool)

(assert (=> b!261021 (=> (not res!127571) (not e!169154))))

(assert (=> b!261021 (= res!127571 (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun bm!24915 () Bool)

(declare-fun call!24917 () Bool)

(assert (=> bm!24915 (= call!24917 (contains!1893 lt!131791 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261022 () Bool)

(assert (=> b!261022 (= e!169158 (+!696 call!24912 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))

(declare-fun b!261023 () Bool)

(assert (=> b!261023 (= e!169162 e!169155)))

(declare-fun res!127573 () Bool)

(assert (=> b!261023 (= res!127573 call!24917)))

(assert (=> b!261023 (=> (not res!127573) (not e!169155))))

(declare-fun b!261024 () Bool)

(assert (=> b!261024 (= e!169162 (not call!24917))))

(assert (= (and d!62639 c!44390) b!261022))

(assert (= (and d!62639 (not c!44390)) b!261004))

(assert (= (and b!261004 c!44388) b!261005))

(assert (= (and b!261004 (not c!44388)) b!261010))

(assert (= (and b!261010 c!44389) b!261011))

(assert (= (and b!261010 (not c!44389)) b!261013))

(assert (= (or b!261011 b!261013) bm!24912))

(assert (= (or b!261005 bm!24912) bm!24909))

(assert (= (or b!261005 b!261011) bm!24914))

(assert (= (or b!261022 bm!24909) bm!24911))

(assert (= (or b!261022 bm!24914) bm!24910))

(assert (= (and d!62639 res!127567) b!261006))

(assert (= (and d!62639 c!44387) b!261014))

(assert (= (and d!62639 (not c!44387)) b!261015))

(assert (= (and d!62639 res!127566) b!261021))

(assert (= (and b!261021 res!127571) b!261009))

(assert (= (and b!261021 (not res!127569)) b!261020))

(assert (= (and b!261020 res!127565) b!261008))

(assert (= (and b!261021 res!127568) b!261016))

(assert (= (and b!261016 c!44391) b!261012))

(assert (= (and b!261016 (not c!44391)) b!261017))

(assert (= (and b!261012 res!127570) b!261019))

(assert (= (or b!261012 b!261017) bm!24913))

(assert (= (and b!261016 res!127572) b!261018))

(assert (= (and b!261018 c!44386) b!261023))

(assert (= (and b!261018 (not c!44386)) b!261024))

(assert (= (and b!261023 res!127573) b!261007))

(assert (= (or b!261023 b!261024) bm!24915))

(declare-fun b_lambda!8317 () Bool)

(assert (=> (not b_lambda!8317) (not b!261008)))

(declare-fun t!8933 () Bool)

(declare-fun tb!3039 () Bool)

(assert (=> (and b!260823 (= (defaultEntry!4808 thiss!1504) (defaultEntry!4808 thiss!1504)) t!8933) tb!3039))

(declare-fun result!5423 () Bool)

(assert (=> tb!3039 (= result!5423 tp_is_empty!6627)))

(assert (=> b!261008 t!8933))

(declare-fun b_and!13907 () Bool)

(assert (= b_and!13903 (and (=> t!8933 result!5423) b_and!13907)))

(declare-fun m!276897 () Bool)

(assert (=> b!261014 m!276897))

(declare-fun m!276899 () Bool)

(assert (=> b!261014 m!276899))

(declare-fun m!276901 () Bool)

(assert (=> b!261014 m!276901))

(declare-fun m!276903 () Bool)

(assert (=> b!261014 m!276903))

(declare-fun m!276905 () Bool)

(assert (=> b!261014 m!276905))

(assert (=> b!261014 m!276897))

(assert (=> b!261014 m!276861))

(declare-fun m!276907 () Bool)

(assert (=> b!261014 m!276907))

(declare-fun m!276909 () Bool)

(assert (=> b!261014 m!276909))

(declare-fun m!276911 () Bool)

(assert (=> b!261014 m!276911))

(declare-fun m!276913 () Bool)

(assert (=> b!261014 m!276913))

(declare-fun m!276915 () Bool)

(assert (=> b!261014 m!276915))

(declare-fun m!276917 () Bool)

(assert (=> b!261014 m!276917))

(assert (=> b!261014 m!276915))

(declare-fun m!276919 () Bool)

(assert (=> b!261014 m!276919))

(declare-fun m!276921 () Bool)

(assert (=> b!261014 m!276921))

(assert (=> b!261014 m!276911))

(declare-fun m!276923 () Bool)

(assert (=> b!261014 m!276923))

(assert (=> b!261014 m!276909))

(declare-fun m!276925 () Bool)

(assert (=> b!261014 m!276925))

(declare-fun m!276927 () Bool)

(assert (=> b!261014 m!276927))

(declare-fun m!276929 () Bool)

(assert (=> bm!24910 m!276929))

(declare-fun m!276931 () Bool)

(assert (=> bm!24913 m!276931))

(declare-fun m!276933 () Bool)

(assert (=> b!261022 m!276933))

(assert (=> bm!24911 m!276927))

(declare-fun m!276935 () Bool)

(assert (=> b!261008 m!276935))

(assert (=> b!261008 m!276861))

(declare-fun m!276937 () Bool)

(assert (=> b!261008 m!276937))

(assert (=> b!261008 m!276935))

(assert (=> b!261008 m!276937))

(declare-fun m!276939 () Bool)

(assert (=> b!261008 m!276939))

(assert (=> b!261008 m!276861))

(declare-fun m!276941 () Bool)

(assert (=> b!261008 m!276941))

(declare-fun m!276943 () Bool)

(assert (=> b!261007 m!276943))

(assert (=> b!261020 m!276861))

(assert (=> b!261020 m!276861))

(declare-fun m!276945 () Bool)

(assert (=> b!261020 m!276945))

(assert (=> b!261006 m!276861))

(assert (=> b!261006 m!276861))

(assert (=> b!261006 m!276863))

(assert (=> d!62639 m!276763))

(assert (=> b!261009 m!276861))

(assert (=> b!261009 m!276861))

(assert (=> b!261009 m!276863))

(declare-fun m!276947 () Bool)

(assert (=> b!261019 m!276947))

(declare-fun m!276949 () Bool)

(assert (=> bm!24915 m!276949))

(assert (=> b!260836 d!62639))

(declare-fun d!62641 () Bool)

(declare-fun res!127574 () Bool)

(declare-fun e!169165 () Bool)

(assert (=> d!62641 (=> res!127574 e!169165)))

(assert (=> d!62641 (= res!127574 (= (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62641 (= (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 #b00000000000000000000000000000000) e!169165)))

(declare-fun b!261027 () Bool)

(declare-fun e!169166 () Bool)

(assert (=> b!261027 (= e!169165 e!169166)))

(declare-fun res!127575 () Bool)

(assert (=> b!261027 (=> (not res!127575) (not e!169166))))

(assert (=> b!261027 (= res!127575 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261028 () Bool)

(assert (=> b!261028 (= e!169166 (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62641 (not res!127574)) b!261027))

(assert (= (and b!261027 res!127575) b!261028))

(assert (=> d!62641 m!276871))

(declare-fun m!276951 () Bool)

(assert (=> b!261028 m!276951))

(assert (=> b!260836 d!62641))

(declare-fun d!62643 () Bool)

(declare-fun e!169169 () Bool)

(assert (=> d!62643 e!169169))

(declare-fun res!127578 () Bool)

(assert (=> d!62643 (=> (not res!127578) (not e!169169))))

(assert (=> d!62643 (= res!127578 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6318 (_keys!6992 thiss!1504)))))))

(declare-fun lt!131794 () Unit!8105)

(declare-fun choose!102 ((_ BitVec 64) array!12610 (_ BitVec 32) (_ BitVec 32)) Unit!8105)

(assert (=> d!62643 (= lt!131794 (choose!102 key!932 (_keys!6992 thiss!1504) index!297 (mask!11145 thiss!1504)))))

(assert (=> d!62643 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62643 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) index!297 (mask!11145 thiss!1504)) lt!131794)))

(declare-fun b!261031 () Bool)

(assert (=> b!261031 (= e!169169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (mask!11145 thiss!1504)))))

(assert (= (and d!62643 res!127578) b!261031))

(declare-fun m!276953 () Bool)

(assert (=> d!62643 m!276953))

(assert (=> d!62643 m!276763))

(assert (=> b!261031 m!276753))

(declare-fun m!276955 () Bool)

(assert (=> b!261031 m!276955))

(assert (=> b!260836 d!62643))

(declare-fun d!62645 () Bool)

(declare-fun e!169172 () Bool)

(assert (=> d!62645 e!169172))

(declare-fun res!127581 () Bool)

(assert (=> d!62645 (=> (not res!127581) (not e!169172))))

(assert (=> d!62645 (= res!127581 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6318 (_keys!6992 thiss!1504))) (bvslt index!297 (size!6317 (_values!4791 thiss!1504)))))))

(declare-fun lt!131797 () Unit!8105)

(declare-fun choose!1280 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 32) (_ BitVec 64) V!8483 Int) Unit!8105)

(assert (=> d!62645 (= lt!131797 (choose!1280 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) index!297 key!932 v!346 (defaultEntry!4808 thiss!1504)))))

(assert (=> d!62645 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62645 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!111 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) index!297 key!932 v!346 (defaultEntry!4808 thiss!1504)) lt!131797)))

(declare-fun b!261034 () Bool)

(assert (=> b!261034 (= e!169172 (= (+!696 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) (tuple2!4949 key!932 v!346)) (getCurrentListMap!1476 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504))))))

(assert (= (and d!62645 res!127581) b!261034))

(declare-fun m!276957 () Bool)

(assert (=> d!62645 m!276957))

(assert (=> d!62645 m!276763))

(assert (=> b!261034 m!276781))

(declare-fun m!276959 () Bool)

(assert (=> b!261034 m!276959))

(declare-fun m!276961 () Bool)

(assert (=> b!261034 m!276961))

(assert (=> b!261034 m!276753))

(assert (=> b!261034 m!276743))

(assert (=> b!261034 m!276781))

(assert (=> b!260836 d!62645))

(declare-fun d!62647 () Bool)

(assert (=> d!62647 (= (arrayCountValidKeys!0 lt!131653 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!131800 () Unit!8105)

(declare-fun choose!2 (array!12610 (_ BitVec 32)) Unit!8105)

(assert (=> d!62647 (= lt!131800 (choose!2 lt!131653 index!297))))

(declare-fun e!169175 () Bool)

(assert (=> d!62647 e!169175))

(declare-fun res!127586 () Bool)

(assert (=> d!62647 (=> (not res!127586) (not e!169175))))

(assert (=> d!62647 (= res!127586 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6318 lt!131653))))))

(assert (=> d!62647 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!131653 index!297) lt!131800)))

(declare-fun b!261039 () Bool)

(declare-fun res!127587 () Bool)

(assert (=> b!261039 (=> (not res!127587) (not e!169175))))

(assert (=> b!261039 (= res!127587 (validKeyInArray!0 (select (arr!5968 lt!131653) index!297)))))

(declare-fun b!261040 () Bool)

(assert (=> b!261040 (= e!169175 (bvslt (size!6318 lt!131653) #b01111111111111111111111111111111))))

(assert (= (and d!62647 res!127586) b!261039))

(assert (= (and b!261039 res!127587) b!261040))

(declare-fun m!276963 () Bool)

(assert (=> d!62647 m!276963))

(declare-fun m!276965 () Bool)

(assert (=> d!62647 m!276965))

(declare-fun m!276967 () Bool)

(assert (=> b!261039 m!276967))

(assert (=> b!261039 m!276967))

(declare-fun m!276969 () Bool)

(assert (=> b!261039 m!276969))

(assert (=> b!260836 d!62647))

(declare-fun d!62649 () Bool)

(declare-fun lt!131801 () (_ BitVec 32))

(assert (=> d!62649 (and (bvsge lt!131801 #b00000000000000000000000000000000) (bvsle lt!131801 (bvsub (size!6318 lt!131653) index!297)))))

(declare-fun e!169177 () (_ BitVec 32))

(assert (=> d!62649 (= lt!131801 e!169177)))

(declare-fun c!44392 () Bool)

(assert (=> d!62649 (= c!44392 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62649 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6318 lt!131653)))))

(assert (=> d!62649 (= (arrayCountValidKeys!0 lt!131653 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!131801)))

(declare-fun bm!24916 () Bool)

(declare-fun call!24919 () (_ BitVec 32))

(assert (=> bm!24916 (= call!24919 (arrayCountValidKeys!0 lt!131653 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!261041 () Bool)

(declare-fun e!169176 () (_ BitVec 32))

(assert (=> b!261041 (= e!169176 (bvadd #b00000000000000000000000000000001 call!24919))))

(declare-fun b!261042 () Bool)

(assert (=> b!261042 (= e!169177 #b00000000000000000000000000000000)))

(declare-fun b!261043 () Bool)

(assert (=> b!261043 (= e!169176 call!24919)))

(declare-fun b!261044 () Bool)

(assert (=> b!261044 (= e!169177 e!169176)))

(declare-fun c!44393 () Bool)

(assert (=> b!261044 (= c!44393 (validKeyInArray!0 (select (arr!5968 lt!131653) index!297)))))

(assert (= (and d!62649 c!44392) b!261042))

(assert (= (and d!62649 (not c!44392)) b!261044))

(assert (= (and b!261044 c!44393) b!261041))

(assert (= (and b!261044 (not c!44393)) b!261043))

(assert (= (or b!261041 b!261043) bm!24916))

(declare-fun m!276971 () Bool)

(assert (=> bm!24916 m!276971))

(assert (=> b!261044 m!276967))

(assert (=> b!261044 m!276967))

(assert (=> b!261044 m!276969))

(assert (=> b!260836 d!62649))

(declare-fun d!62651 () Bool)

(declare-fun e!169180 () Bool)

(assert (=> d!62651 e!169180))

(declare-fun res!127592 () Bool)

(assert (=> d!62651 (=> (not res!127592) (not e!169180))))

(declare-fun lt!131813 () ListLongMap!3875)

(assert (=> d!62651 (= res!127592 (contains!1893 lt!131813 (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun lt!131810 () List!3850)

(assert (=> d!62651 (= lt!131813 (ListLongMap!3876 lt!131810))))

(declare-fun lt!131811 () Unit!8105)

(declare-fun lt!131812 () Unit!8105)

(assert (=> d!62651 (= lt!131811 lt!131812)))

(declare-datatypes ((Option!322 0))(
  ( (Some!321 (v!5477 V!8483)) (None!320) )
))
(declare-fun getValueByKey!316 (List!3850 (_ BitVec 64)) Option!322)

(assert (=> d!62651 (= (getValueByKey!316 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346))) (Some!321 (_2!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!174 (List!3850 (_ BitVec 64) V!8483) Unit!8105)

(assert (=> d!62651 (= lt!131812 (lemmaContainsTupThenGetReturnValue!174 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun insertStrictlySorted!176 (List!3850 (_ BitVec 64) V!8483) List!3850)

(assert (=> d!62651 (= lt!131810 (insertStrictlySorted!176 (toList!1953 lt!131656) (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))

(assert (=> d!62651 (= (+!696 lt!131656 (tuple2!4949 key!932 v!346)) lt!131813)))

(declare-fun b!261049 () Bool)

(declare-fun res!127593 () Bool)

(assert (=> b!261049 (=> (not res!127593) (not e!169180))))

(assert (=> b!261049 (= res!127593 (= (getValueByKey!316 (toList!1953 lt!131813) (_1!2484 (tuple2!4949 key!932 v!346))) (Some!321 (_2!2484 (tuple2!4949 key!932 v!346)))))))

(declare-fun b!261050 () Bool)

(declare-fun contains!1895 (List!3850 tuple2!4948) Bool)

(assert (=> b!261050 (= e!169180 (contains!1895 (toList!1953 lt!131813) (tuple2!4949 key!932 v!346)))))

(assert (= (and d!62651 res!127592) b!261049))

(assert (= (and b!261049 res!127593) b!261050))

(declare-fun m!276973 () Bool)

(assert (=> d!62651 m!276973))

(declare-fun m!276975 () Bool)

(assert (=> d!62651 m!276975))

(declare-fun m!276977 () Bool)

(assert (=> d!62651 m!276977))

(declare-fun m!276979 () Bool)

(assert (=> d!62651 m!276979))

(declare-fun m!276981 () Bool)

(assert (=> b!261049 m!276981))

(declare-fun m!276983 () Bool)

(assert (=> b!261050 m!276983))

(assert (=> b!260836 d!62651))

(declare-fun b!261061 () Bool)

(declare-fun e!169191 () Bool)

(declare-fun e!169190 () Bool)

(assert (=> b!261061 (= e!169191 e!169190)))

(declare-fun c!44396 () Bool)

(assert (=> b!261061 (= c!44396 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun bm!24919 () Bool)

(declare-fun call!24922 () Bool)

(assert (=> bm!24919 (= call!24922 (arrayNoDuplicates!0 lt!131653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44396 (Cons!3847 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) Nil!3848) Nil!3848)))))

(declare-fun b!261062 () Bool)

(assert (=> b!261062 (= e!169190 call!24922)))

(declare-fun b!261063 () Bool)

(declare-fun e!169192 () Bool)

(declare-fun contains!1896 (List!3851 (_ BitVec 64)) Bool)

(assert (=> b!261063 (= e!169192 (contains!1896 Nil!3848 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun b!261064 () Bool)

(declare-fun e!169189 () Bool)

(assert (=> b!261064 (= e!169189 e!169191)))

(declare-fun res!127600 () Bool)

(assert (=> b!261064 (=> (not res!127600) (not e!169191))))

(assert (=> b!261064 (= res!127600 (not e!169192))))

(declare-fun res!127602 () Bool)

(assert (=> b!261064 (=> (not res!127602) (not e!169192))))

(assert (=> b!261064 (= res!127602 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun d!62653 () Bool)

(declare-fun res!127601 () Bool)

(assert (=> d!62653 (=> res!127601 e!169189)))

(assert (=> d!62653 (= res!127601 (bvsge #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(assert (=> d!62653 (= (arrayNoDuplicates!0 lt!131653 #b00000000000000000000000000000000 Nil!3848) e!169189)))

(declare-fun b!261065 () Bool)

(assert (=> b!261065 (= e!169190 call!24922)))

(assert (= (and d!62653 (not res!127601)) b!261064))

(assert (= (and b!261064 res!127602) b!261063))

(assert (= (and b!261064 res!127600) b!261061))

(assert (= (and b!261061 c!44396) b!261065))

(assert (= (and b!261061 (not c!44396)) b!261062))

(assert (= (or b!261065 b!261062) bm!24919))

(assert (=> b!261061 m!276861))

(assert (=> b!261061 m!276861))

(assert (=> b!261061 m!276863))

(assert (=> bm!24919 m!276861))

(declare-fun m!276985 () Bool)

(assert (=> bm!24919 m!276985))

(assert (=> b!261063 m!276861))

(assert (=> b!261063 m!276861))

(declare-fun m!276987 () Bool)

(assert (=> b!261063 m!276987))

(assert (=> b!261064 m!276861))

(assert (=> b!261064 m!276861))

(assert (=> b!261064 m!276863))

(assert (=> b!260836 d!62653))

(declare-fun d!62655 () Bool)

(assert (=> d!62655 (= (array_inv!3931 (_keys!6992 thiss!1504)) (bvsge (size!6318 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!260823 d!62655))

(declare-fun d!62657 () Bool)

(assert (=> d!62657 (= (array_inv!3932 (_values!4791 thiss!1504)) (bvsge (size!6317 (_values!4791 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!260823 d!62657))

(declare-fun d!62659 () Bool)

(assert (=> d!62659 (contains!1893 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) key!932)))

(declare-fun lt!131816 () Unit!8105)

(declare-fun choose!1281 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 64) (_ BitVec 32) Int) Unit!8105)

(assert (=> d!62659 (= lt!131816 (choose!1281 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(assert (=> d!62659 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62659 (= (lemmaArrayContainsKeyThenInListMap!252 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) lt!131816)))

(declare-fun bs!9199 () Bool)

(assert (= bs!9199 d!62659))

(assert (=> bs!9199 m!276781))

(assert (=> bs!9199 m!276781))

(declare-fun m!276989 () Bool)

(assert (=> bs!9199 m!276989))

(declare-fun m!276991 () Bool)

(assert (=> bs!9199 m!276991))

(assert (=> bs!9199 m!276763))

(assert (=> b!260832 d!62659))

(declare-fun b!261082 () Bool)

(declare-fun lt!131822 () SeekEntryResult!1195)

(assert (=> b!261082 (and (bvsge (index!6950 lt!131822) #b00000000000000000000000000000000) (bvslt (index!6950 lt!131822) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun res!127611 () Bool)

(assert (=> b!261082 (= res!127611 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6950 lt!131822)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169201 () Bool)

(assert (=> b!261082 (=> (not res!127611) (not e!169201))))

(declare-fun b!261083 () Bool)

(declare-fun e!169204 () Bool)

(assert (=> b!261083 (= e!169204 ((_ is Undefined!1195) lt!131822))))

(declare-fun b!261084 () Bool)

(declare-fun call!24928 () Bool)

(assert (=> b!261084 (= e!169201 (not call!24928))))

(declare-fun b!261085 () Bool)

(declare-fun res!127614 () Bool)

(declare-fun e!169203 () Bool)

(assert (=> b!261085 (=> (not res!127614) (not e!169203))))

(assert (=> b!261085 (= res!127614 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6953 lt!131822)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261085 (and (bvsge (index!6953 lt!131822) #b00000000000000000000000000000000) (bvslt (index!6953 lt!131822) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261086 () Bool)

(declare-fun e!169202 () Bool)

(assert (=> b!261086 (= e!169202 e!169204)))

(declare-fun c!44401 () Bool)

(assert (=> b!261086 (= c!44401 ((_ is MissingVacant!1195) lt!131822))))

(declare-fun b!261087 () Bool)

(declare-fun res!127612 () Bool)

(assert (=> b!261087 (=> (not res!127612) (not e!169203))))

(declare-fun call!24927 () Bool)

(assert (=> b!261087 (= res!127612 call!24927)))

(assert (=> b!261087 (= e!169204 e!169203)))

(declare-fun bm!24925 () Bool)

(assert (=> bm!24925 (= call!24928 (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun c!44402 () Bool)

(declare-fun bm!24924 () Bool)

(assert (=> bm!24924 (= call!24927 (inRange!0 (ite c!44402 (index!6950 lt!131822) (index!6953 lt!131822)) (mask!11145 thiss!1504)))))

(declare-fun d!62661 () Bool)

(assert (=> d!62661 e!169202))

(assert (=> d!62661 (= c!44402 ((_ is MissingZero!1195) lt!131822))))

(assert (=> d!62661 (= lt!131822 (seekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun lt!131821 () Unit!8105)

(declare-fun choose!1282 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 64) Int) Unit!8105)

(assert (=> d!62661 (= lt!131821 (choose!1282 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)))))

(assert (=> d!62661 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62661 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!445 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)) lt!131821)))

(declare-fun b!261088 () Bool)

(assert (=> b!261088 (= e!169203 (not call!24928))))

(declare-fun b!261089 () Bool)

(assert (=> b!261089 (= e!169202 e!169201)))

(declare-fun res!127613 () Bool)

(assert (=> b!261089 (= res!127613 call!24927)))

(assert (=> b!261089 (=> (not res!127613) (not e!169201))))

(assert (= (and d!62661 c!44402) b!261089))

(assert (= (and d!62661 (not c!44402)) b!261086))

(assert (= (and b!261089 res!127613) b!261082))

(assert (= (and b!261082 res!127611) b!261084))

(assert (= (and b!261086 c!44401) b!261087))

(assert (= (and b!261086 (not c!44401)) b!261083))

(assert (= (and b!261087 res!127612) b!261085))

(assert (= (and b!261085 res!127614) b!261088))

(assert (= (or b!261089 b!261087) bm!24924))

(assert (= (or b!261084 b!261088) bm!24925))

(declare-fun m!276993 () Bool)

(assert (=> bm!24924 m!276993))

(declare-fun m!276995 () Bool)

(assert (=> b!261082 m!276995))

(assert (=> d!62661 m!276731))

(declare-fun m!276997 () Bool)

(assert (=> d!62661 m!276997))

(assert (=> d!62661 m!276763))

(declare-fun m!276999 () Bool)

(assert (=> b!261085 m!276999))

(assert (=> bm!24925 m!276735))

(assert (=> b!260831 d!62661))

(assert (=> bm!24880 d!62641))

(declare-fun d!62663 () Bool)

(assert (=> d!62663 (= (inRange!0 index!297 (mask!11145 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!260829 d!62663))

(declare-fun d!62665 () Bool)

(declare-fun e!169209 () Bool)

(assert (=> d!62665 e!169209))

(declare-fun res!127617 () Bool)

(assert (=> d!62665 (=> res!127617 e!169209)))

(declare-fun lt!131832 () Bool)

(assert (=> d!62665 (= res!127617 (not lt!131832))))

(declare-fun lt!131831 () Bool)

(assert (=> d!62665 (= lt!131832 lt!131831)))

(declare-fun lt!131833 () Unit!8105)

(declare-fun e!169210 () Unit!8105)

(assert (=> d!62665 (= lt!131833 e!169210)))

(declare-fun c!44405 () Bool)

(assert (=> d!62665 (= c!44405 lt!131831)))

(declare-fun containsKey!308 (List!3850 (_ BitVec 64)) Bool)

(assert (=> d!62665 (= lt!131831 (containsKey!308 (toList!1953 lt!131656) key!932))))

(assert (=> d!62665 (= (contains!1893 lt!131656 key!932) lt!131832)))

(declare-fun b!261096 () Bool)

(declare-fun lt!131834 () Unit!8105)

(assert (=> b!261096 (= e!169210 lt!131834)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!257 (List!3850 (_ BitVec 64)) Unit!8105)

(assert (=> b!261096 (= lt!131834 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131656) key!932))))

(declare-fun isDefined!258 (Option!322) Bool)

(assert (=> b!261096 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131656) key!932))))

(declare-fun b!261097 () Bool)

(declare-fun Unit!8114 () Unit!8105)

(assert (=> b!261097 (= e!169210 Unit!8114)))

(declare-fun b!261098 () Bool)

(assert (=> b!261098 (= e!169209 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131656) key!932)))))

(assert (= (and d!62665 c!44405) b!261096))

(assert (= (and d!62665 (not c!44405)) b!261097))

(assert (= (and d!62665 (not res!127617)) b!261098))

(declare-fun m!277001 () Bool)

(assert (=> d!62665 m!277001))

(declare-fun m!277003 () Bool)

(assert (=> b!261096 m!277003))

(declare-fun m!277005 () Bool)

(assert (=> b!261096 m!277005))

(assert (=> b!261096 m!277005))

(declare-fun m!277007 () Bool)

(assert (=> b!261096 m!277007))

(assert (=> b!261098 m!277005))

(assert (=> b!261098 m!277005))

(assert (=> b!261098 m!277007))

(assert (=> b!260829 d!62665))

(declare-fun bm!24926 () Bool)

(declare-fun call!24933 () ListLongMap!3875)

(declare-fun call!24935 () ListLongMap!3875)

(assert (=> bm!24926 (= call!24933 call!24935)))

(declare-fun d!62667 () Bool)

(declare-fun e!169212 () Bool)

(assert (=> d!62667 e!169212))

(declare-fun res!127619 () Bool)

(assert (=> d!62667 (=> (not res!127619) (not e!169212))))

(assert (=> d!62667 (= res!127619 (or (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))))

(declare-fun lt!131856 () ListLongMap!3875)

(declare-fun lt!131847 () ListLongMap!3875)

(assert (=> d!62667 (= lt!131856 lt!131847)))

(declare-fun lt!131839 () Unit!8105)

(declare-fun e!169216 () Unit!8105)

(assert (=> d!62667 (= lt!131839 e!169216)))

(declare-fun c!44407 () Bool)

(declare-fun e!169222 () Bool)

(assert (=> d!62667 (= c!44407 e!169222)))

(declare-fun res!127620 () Bool)

(assert (=> d!62667 (=> (not res!127620) (not e!169222))))

(assert (=> d!62667 (= res!127620 (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun e!169217 () ListLongMap!3875)

(assert (=> d!62667 (= lt!131847 e!169217)))

(declare-fun c!44410 () Bool)

(assert (=> d!62667 (= c!44410 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62667 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62667 (= (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) lt!131856)))

(declare-fun c!44408 () Bool)

(declare-fun call!24929 () ListLongMap!3875)

(declare-fun call!24932 () ListLongMap!3875)

(declare-fun bm!24927 () Bool)

(assert (=> bm!24927 (= call!24929 (+!696 (ite c!44410 call!24935 (ite c!44408 call!24933 call!24932)) (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(declare-fun b!261099 () Bool)

(declare-fun e!169220 () ListLongMap!3875)

(assert (=> b!261099 (= e!169217 e!169220)))

(assert (=> b!261099 (= c!44408 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!261100 () Bool)

(declare-fun call!24931 () ListLongMap!3875)

(assert (=> b!261100 (= e!169220 call!24931)))

(declare-fun bm!24928 () Bool)

(assert (=> bm!24928 (= call!24935 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun b!261101 () Bool)

(assert (=> b!261101 (= e!169222 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24929 () Bool)

(assert (=> bm!24929 (= call!24932 call!24933)))

(declare-fun b!261102 () Bool)

(declare-fun e!169214 () Bool)

(assert (=> b!261102 (= e!169214 (= (apply!259 lt!131856 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4649 thiss!1504)))))

(declare-fun bm!24930 () Bool)

(declare-fun call!24930 () Bool)

(assert (=> bm!24930 (= call!24930 (contains!1893 lt!131856 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261103 () Bool)

(declare-fun e!169223 () Bool)

(assert (=> b!261103 (= e!169223 (= (apply!259 lt!131856 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)) (get!3078 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!261103 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6317 (_values!4791 thiss!1504))))))

(assert (=> b!261103 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261104 () Bool)

(declare-fun e!169213 () Bool)

(assert (=> b!261104 (= e!169213 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!261105 () Bool)

(declare-fun c!44409 () Bool)

(assert (=> b!261105 (= c!44409 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!169219 () ListLongMap!3875)

(assert (=> b!261105 (= e!169220 e!169219)))

(declare-fun b!261106 () Bool)

(assert (=> b!261106 (= e!169219 call!24931)))

(declare-fun b!261107 () Bool)

(declare-fun e!169218 () Bool)

(declare-fun e!169211 () Bool)

(assert (=> b!261107 (= e!169218 e!169211)))

(declare-fun res!127623 () Bool)

(assert (=> b!261107 (= res!127623 call!24930)))

(assert (=> b!261107 (=> (not res!127623) (not e!169211))))

(declare-fun b!261108 () Bool)

(assert (=> b!261108 (= e!169219 call!24932)))

(declare-fun b!261109 () Bool)

(declare-fun lt!131849 () Unit!8105)

(assert (=> b!261109 (= e!169216 lt!131849)))

(declare-fun lt!131836 () ListLongMap!3875)

(assert (=> b!261109 (= lt!131836 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131853 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131853 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131841 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131841 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131855 () Unit!8105)

(assert (=> b!261109 (= lt!131855 (addStillContains!235 lt!131836 lt!131853 (zeroValue!4649 thiss!1504) lt!131841))))

(assert (=> b!261109 (contains!1893 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))) lt!131841)))

(declare-fun lt!131838 () Unit!8105)

(assert (=> b!261109 (= lt!131838 lt!131855)))

(declare-fun lt!131844 () ListLongMap!3875)

(assert (=> b!261109 (= lt!131844 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131840 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131840 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131851 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131851 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131848 () Unit!8105)

(assert (=> b!261109 (= lt!131848 (addApplyDifferent!235 lt!131844 lt!131840 (minValue!4649 thiss!1504) lt!131851))))

(assert (=> b!261109 (= (apply!259 (+!696 lt!131844 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))) lt!131851) (apply!259 lt!131844 lt!131851))))

(declare-fun lt!131837 () Unit!8105)

(assert (=> b!261109 (= lt!131837 lt!131848)))

(declare-fun lt!131846 () ListLongMap!3875)

(assert (=> b!261109 (= lt!131846 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131852 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131835 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131835 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131845 () Unit!8105)

(assert (=> b!261109 (= lt!131845 (addApplyDifferent!235 lt!131846 lt!131852 (zeroValue!4649 thiss!1504) lt!131835))))

(assert (=> b!261109 (= (apply!259 (+!696 lt!131846 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))) lt!131835) (apply!259 lt!131846 lt!131835))))

(declare-fun lt!131854 () Unit!8105)

(assert (=> b!261109 (= lt!131854 lt!131845)))

(declare-fun lt!131850 () ListLongMap!3875)

(assert (=> b!261109 (= lt!131850 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131843 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131843 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131842 () (_ BitVec 64))

(assert (=> b!261109 (= lt!131842 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!261109 (= lt!131849 (addApplyDifferent!235 lt!131850 lt!131843 (minValue!4649 thiss!1504) lt!131842))))

(assert (=> b!261109 (= (apply!259 (+!696 lt!131850 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))) lt!131842) (apply!259 lt!131850 lt!131842))))

(declare-fun b!261110 () Bool)

(declare-fun Unit!8115 () Unit!8105)

(assert (=> b!261110 (= e!169216 Unit!8115)))

(declare-fun b!261111 () Bool)

(declare-fun res!127625 () Bool)

(assert (=> b!261111 (=> (not res!127625) (not e!169212))))

(assert (=> b!261111 (= res!127625 e!169218)))

(declare-fun c!44411 () Bool)

(assert (=> b!261111 (= c!44411 (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!261112 () Bool)

(assert (=> b!261112 (= e!169218 (not call!24930))))

(declare-fun b!261113 () Bool)

(declare-fun e!169221 () Bool)

(assert (=> b!261113 (= e!169212 e!169221)))

(declare-fun c!44406 () Bool)

(assert (=> b!261113 (= c!44406 (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!261114 () Bool)

(assert (=> b!261114 (= e!169211 (= (apply!259 lt!131856 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4649 thiss!1504)))))

(declare-fun bm!24931 () Bool)

(assert (=> bm!24931 (= call!24931 call!24929)))

(declare-fun b!261115 () Bool)

(declare-fun e!169215 () Bool)

(assert (=> b!261115 (= e!169215 e!169223)))

(declare-fun res!127618 () Bool)

(assert (=> b!261115 (=> (not res!127618) (not e!169223))))

(assert (=> b!261115 (= res!127618 (contains!1893 lt!131856 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!261115 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261116 () Bool)

(declare-fun res!127621 () Bool)

(assert (=> b!261116 (=> (not res!127621) (not e!169212))))

(assert (=> b!261116 (= res!127621 e!169215)))

(declare-fun res!127622 () Bool)

(assert (=> b!261116 (=> res!127622 e!169215)))

(assert (=> b!261116 (= res!127622 (not e!169213))))

(declare-fun res!127624 () Bool)

(assert (=> b!261116 (=> (not res!127624) (not e!169213))))

(assert (=> b!261116 (= res!127624 (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun bm!24932 () Bool)

(declare-fun call!24934 () Bool)

(assert (=> bm!24932 (= call!24934 (contains!1893 lt!131856 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261117 () Bool)

(assert (=> b!261117 (= e!169217 (+!696 call!24929 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))

(declare-fun b!261118 () Bool)

(assert (=> b!261118 (= e!169221 e!169214)))

(declare-fun res!127626 () Bool)

(assert (=> b!261118 (= res!127626 call!24934)))

(assert (=> b!261118 (=> (not res!127626) (not e!169214))))

(declare-fun b!261119 () Bool)

(assert (=> b!261119 (= e!169221 (not call!24934))))

(assert (= (and d!62667 c!44410) b!261117))

(assert (= (and d!62667 (not c!44410)) b!261099))

(assert (= (and b!261099 c!44408) b!261100))

(assert (= (and b!261099 (not c!44408)) b!261105))

(assert (= (and b!261105 c!44409) b!261106))

(assert (= (and b!261105 (not c!44409)) b!261108))

(assert (= (or b!261106 b!261108) bm!24929))

(assert (= (or b!261100 bm!24929) bm!24926))

(assert (= (or b!261100 b!261106) bm!24931))

(assert (= (or b!261117 bm!24926) bm!24928))

(assert (= (or b!261117 bm!24931) bm!24927))

(assert (= (and d!62667 res!127620) b!261101))

(assert (= (and d!62667 c!44407) b!261109))

(assert (= (and d!62667 (not c!44407)) b!261110))

(assert (= (and d!62667 res!127619) b!261116))

(assert (= (and b!261116 res!127624) b!261104))

(assert (= (and b!261116 (not res!127622)) b!261115))

(assert (= (and b!261115 res!127618) b!261103))

(assert (= (and b!261116 res!127621) b!261111))

(assert (= (and b!261111 c!44411) b!261107))

(assert (= (and b!261111 (not c!44411)) b!261112))

(assert (= (and b!261107 res!127623) b!261114))

(assert (= (or b!261107 b!261112) bm!24930))

(assert (= (and b!261111 res!127625) b!261113))

(assert (= (and b!261113 c!44406) b!261118))

(assert (= (and b!261113 (not c!44406)) b!261119))

(assert (= (and b!261118 res!127626) b!261102))

(assert (= (or b!261118 b!261119) bm!24932))

(declare-fun b_lambda!8319 () Bool)

(assert (=> (not b_lambda!8319) (not b!261103)))

(assert (=> b!261103 t!8933))

(declare-fun b_and!13909 () Bool)

(assert (= b_and!13907 (and (=> t!8933 result!5423) b_and!13909)))

(declare-fun m!277009 () Bool)

(assert (=> b!261109 m!277009))

(declare-fun m!277011 () Bool)

(assert (=> b!261109 m!277011))

(declare-fun m!277013 () Bool)

(assert (=> b!261109 m!277013))

(declare-fun m!277015 () Bool)

(assert (=> b!261109 m!277015))

(declare-fun m!277017 () Bool)

(assert (=> b!261109 m!277017))

(assert (=> b!261109 m!277009))

(assert (=> b!261109 m!276871))

(declare-fun m!277019 () Bool)

(assert (=> b!261109 m!277019))

(declare-fun m!277021 () Bool)

(assert (=> b!261109 m!277021))

(declare-fun m!277023 () Bool)

(assert (=> b!261109 m!277023))

(declare-fun m!277025 () Bool)

(assert (=> b!261109 m!277025))

(declare-fun m!277027 () Bool)

(assert (=> b!261109 m!277027))

(declare-fun m!277029 () Bool)

(assert (=> b!261109 m!277029))

(assert (=> b!261109 m!277027))

(declare-fun m!277031 () Bool)

(assert (=> b!261109 m!277031))

(declare-fun m!277033 () Bool)

(assert (=> b!261109 m!277033))

(assert (=> b!261109 m!277023))

(declare-fun m!277035 () Bool)

(assert (=> b!261109 m!277035))

(assert (=> b!261109 m!277021))

(declare-fun m!277037 () Bool)

(assert (=> b!261109 m!277037))

(declare-fun m!277039 () Bool)

(assert (=> b!261109 m!277039))

(declare-fun m!277041 () Bool)

(assert (=> bm!24927 m!277041))

(declare-fun m!277043 () Bool)

(assert (=> bm!24930 m!277043))

(declare-fun m!277045 () Bool)

(assert (=> b!261117 m!277045))

(assert (=> bm!24928 m!277039))

(declare-fun m!277047 () Bool)

(assert (=> b!261103 m!277047))

(assert (=> b!261103 m!276871))

(assert (=> b!261103 m!276937))

(assert (=> b!261103 m!277047))

(assert (=> b!261103 m!276937))

(declare-fun m!277049 () Bool)

(assert (=> b!261103 m!277049))

(assert (=> b!261103 m!276871))

(declare-fun m!277051 () Bool)

(assert (=> b!261103 m!277051))

(declare-fun m!277053 () Bool)

(assert (=> b!261102 m!277053))

(assert (=> b!261115 m!276871))

(assert (=> b!261115 m!276871))

(declare-fun m!277055 () Bool)

(assert (=> b!261115 m!277055))

(assert (=> b!261101 m!276871))

(assert (=> b!261101 m!276871))

(assert (=> b!261101 m!276873))

(assert (=> d!62667 m!276763))

(assert (=> b!261104 m!276871))

(assert (=> b!261104 m!276871))

(assert (=> b!261104 m!276873))

(declare-fun m!277057 () Bool)

(assert (=> b!261114 m!277057))

(declare-fun m!277059 () Bool)

(assert (=> bm!24932 m!277059))

(assert (=> b!260829 d!62667))

(declare-fun d!62669 () Bool)

(declare-fun e!169226 () Bool)

(assert (=> d!62669 e!169226))

(declare-fun res!127632 () Bool)

(assert (=> d!62669 (=> (not res!127632) (not e!169226))))

(declare-fun lt!131861 () SeekEntryResult!1195)

(assert (=> d!62669 (= res!127632 ((_ is Found!1195) lt!131861))))

(assert (=> d!62669 (= lt!131861 (seekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun lt!131862 () Unit!8105)

(declare-fun choose!1283 (array!12610 array!12608 (_ BitVec 32) (_ BitVec 32) V!8483 V!8483 (_ BitVec 64) Int) Unit!8105)

(assert (=> d!62669 (= lt!131862 (choose!1283 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)))))

(assert (=> d!62669 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62669 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!444 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)) lt!131862)))

(declare-fun b!261124 () Bool)

(declare-fun res!127631 () Bool)

(assert (=> b!261124 (=> (not res!127631) (not e!169226))))

(assert (=> b!261124 (= res!127631 (inRange!0 (index!6951 lt!131861) (mask!11145 thiss!1504)))))

(declare-fun b!261125 () Bool)

(assert (=> b!261125 (= e!169226 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6951 lt!131861)) key!932))))

(assert (=> b!261125 (and (bvsge (index!6951 lt!131861) #b00000000000000000000000000000000) (bvslt (index!6951 lt!131861) (size!6318 (_keys!6992 thiss!1504))))))

(assert (= (and d!62669 res!127632) b!261124))

(assert (= (and b!261124 res!127631) b!261125))

(assert (=> d!62669 m!276731))

(declare-fun m!277061 () Bool)

(assert (=> d!62669 m!277061))

(assert (=> d!62669 m!276763))

(declare-fun m!277063 () Bool)

(assert (=> b!261124 m!277063))

(declare-fun m!277065 () Bool)

(assert (=> b!261125 m!277065))

(assert (=> b!260821 d!62669))

(declare-fun b!261138 () Bool)

(declare-fun e!169234 () SeekEntryResult!1195)

(declare-fun lt!131869 () SeekEntryResult!1195)

(assert (=> b!261138 (= e!169234 (MissingZero!1195 (index!6952 lt!131869)))))

(declare-fun b!261139 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12610 (_ BitVec 32)) SeekEntryResult!1195)

(assert (=> b!261139 (= e!169234 (seekKeyOrZeroReturnVacant!0 (x!25159 lt!131869) (index!6952 lt!131869) (index!6952 lt!131869) key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun b!261140 () Bool)

(declare-fun e!169233 () SeekEntryResult!1195)

(assert (=> b!261140 (= e!169233 Undefined!1195)))

(declare-fun d!62671 () Bool)

(declare-fun lt!131870 () SeekEntryResult!1195)

(assert (=> d!62671 (and (or ((_ is Undefined!1195) lt!131870) (not ((_ is Found!1195) lt!131870)) (and (bvsge (index!6951 lt!131870) #b00000000000000000000000000000000) (bvslt (index!6951 lt!131870) (size!6318 (_keys!6992 thiss!1504))))) (or ((_ is Undefined!1195) lt!131870) ((_ is Found!1195) lt!131870) (not ((_ is MissingZero!1195) lt!131870)) (and (bvsge (index!6950 lt!131870) #b00000000000000000000000000000000) (bvslt (index!6950 lt!131870) (size!6318 (_keys!6992 thiss!1504))))) (or ((_ is Undefined!1195) lt!131870) ((_ is Found!1195) lt!131870) ((_ is MissingZero!1195) lt!131870) (not ((_ is MissingVacant!1195) lt!131870)) (and (bvsge (index!6953 lt!131870) #b00000000000000000000000000000000) (bvslt (index!6953 lt!131870) (size!6318 (_keys!6992 thiss!1504))))) (or ((_ is Undefined!1195) lt!131870) (ite ((_ is Found!1195) lt!131870) (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6951 lt!131870)) key!932) (ite ((_ is MissingZero!1195) lt!131870) (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6950 lt!131870)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1195) lt!131870) (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6953 lt!131870)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62671 (= lt!131870 e!169233)))

(declare-fun c!44419 () Bool)

(assert (=> d!62671 (= c!44419 (and ((_ is Intermediate!1195) lt!131869) (undefined!2007 lt!131869)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12610 (_ BitVec 32)) SeekEntryResult!1195)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62671 (= lt!131869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11145 thiss!1504)) key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(assert (=> d!62671 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62671 (= (seekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)) lt!131870)))

(declare-fun b!261141 () Bool)

(declare-fun c!44418 () Bool)

(declare-fun lt!131871 () (_ BitVec 64))

(assert (=> b!261141 (= c!44418 (= lt!131871 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169235 () SeekEntryResult!1195)

(assert (=> b!261141 (= e!169235 e!169234)))

(declare-fun b!261142 () Bool)

(assert (=> b!261142 (= e!169235 (Found!1195 (index!6952 lt!131869)))))

(declare-fun b!261143 () Bool)

(assert (=> b!261143 (= e!169233 e!169235)))

(assert (=> b!261143 (= lt!131871 (select (arr!5968 (_keys!6992 thiss!1504)) (index!6952 lt!131869)))))

(declare-fun c!44420 () Bool)

(assert (=> b!261143 (= c!44420 (= lt!131871 key!932))))

(assert (= (and d!62671 c!44419) b!261140))

(assert (= (and d!62671 (not c!44419)) b!261143))

(assert (= (and b!261143 c!44420) b!261142))

(assert (= (and b!261143 (not c!44420)) b!261141))

(assert (= (and b!261141 c!44418) b!261138))

(assert (= (and b!261141 (not c!44418)) b!261139))

(declare-fun m!277067 () Bool)

(assert (=> b!261139 m!277067))

(declare-fun m!277069 () Bool)

(assert (=> d!62671 m!277069))

(declare-fun m!277071 () Bool)

(assert (=> d!62671 m!277071))

(declare-fun m!277073 () Bool)

(assert (=> d!62671 m!277073))

(assert (=> d!62671 m!276763))

(assert (=> d!62671 m!277069))

(declare-fun m!277075 () Bool)

(assert (=> d!62671 m!277075))

(declare-fun m!277077 () Bool)

(assert (=> d!62671 m!277077))

(declare-fun m!277079 () Bool)

(assert (=> b!261143 m!277079))

(assert (=> b!260838 d!62671))

(declare-fun b!261150 () Bool)

(declare-fun e!169241 () Bool)

(assert (=> b!261150 (= e!169241 tp_is_empty!6627)))

(declare-fun b!261151 () Bool)

(declare-fun e!169240 () Bool)

(assert (=> b!261151 (= e!169240 tp_is_empty!6627)))

(declare-fun mapNonEmpty!11301 () Bool)

(declare-fun mapRes!11301 () Bool)

(declare-fun tp!23631 () Bool)

(assert (=> mapNonEmpty!11301 (= mapRes!11301 (and tp!23631 e!169241))))

(declare-fun mapValue!11301 () ValueCell!2970)

(declare-fun mapKey!11301 () (_ BitVec 32))

(declare-fun mapRest!11301 () (Array (_ BitVec 32) ValueCell!2970))

(assert (=> mapNonEmpty!11301 (= mapRest!11295 (store mapRest!11301 mapKey!11301 mapValue!11301))))

(declare-fun condMapEmpty!11301 () Bool)

(declare-fun mapDefault!11301 () ValueCell!2970)

(assert (=> mapNonEmpty!11295 (= condMapEmpty!11301 (= mapRest!11295 ((as const (Array (_ BitVec 32) ValueCell!2970)) mapDefault!11301)))))

(assert (=> mapNonEmpty!11295 (= tp!23622 (and e!169240 mapRes!11301))))

(declare-fun mapIsEmpty!11301 () Bool)

(assert (=> mapIsEmpty!11301 mapRes!11301))

(assert (= (and mapNonEmpty!11295 condMapEmpty!11301) mapIsEmpty!11301))

(assert (= (and mapNonEmpty!11295 (not condMapEmpty!11301)) mapNonEmpty!11301))

(assert (= (and mapNonEmpty!11301 ((_ is ValueCellFull!2970) mapValue!11301)) b!261150))

(assert (= (and mapNonEmpty!11295 ((_ is ValueCellFull!2970) mapDefault!11301)) b!261151))

(declare-fun m!277081 () Bool)

(assert (=> mapNonEmpty!11301 m!277081))

(declare-fun b_lambda!8321 () Bool)

(assert (= b_lambda!8319 (or (and b!260823 b_free!6765) b_lambda!8321)))

(declare-fun b_lambda!8323 () Bool)

(assert (= b_lambda!8317 (or (and b!260823 b_free!6765) b_lambda!8323)))

(check-sat (not b!260910) (not b_next!6765) (not b!260944) (not b!261022) (not b!261019) (not bm!24894) (not bm!24910) (not d!62659) (not b!261014) (not d!62669) (not d!62621) (not b!261061) (not d!62671) (not b!260946) (not d!62661) (not d!62643) (not bm!24925) (not b!261008) (not b!260912) (not bm!24891) (not d!62639) (not bm!24911) (not d!62635) (not b!261020) (not bm!24913) (not bm!24919) (not b!260959) (not b!261031) (not bm!24890) (not b!261039) (not b!261096) (not d!62667) (not b!261103) (not d!62665) (not bm!24916) (not d!62627) (not b!261117) tp_is_empty!6627 (not b!261098) (not bm!24927) (not b!260934) b_and!13909 (not b!261102) (not d!62645) (not b!261109) (not b_lambda!8321) (not b!260961) (not b!261063) (not b!261034) (not b!260924) (not b!260949) (not b!261006) (not b!261139) (not d!62647) (not b!261049) (not b!260911) (not b!261050) (not d!62637) (not bm!24928) (not b!261007) (not d!62651) (not b!261009) (not bm!24932) (not b!260930) (not b_lambda!8323) (not bm!24924) (not b!261124) (not b!261114) (not b!261064) (not mapNonEmpty!11301) (not b!260958) (not bm!24915) (not b!261101) (not b!261044) (not b!261028) (not bm!24930) (not b!261104) (not b!261115))
(check-sat b_and!13909 (not b_next!6765))
(get-model)

(declare-fun d!62673 () Bool)

(declare-fun lt!131874 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!173 (List!3850) (InoxSet tuple2!4948))

(assert (=> d!62673 (= lt!131874 (select (content!173 (toList!1953 lt!131813)) (tuple2!4949 key!932 v!346)))))

(declare-fun e!169247 () Bool)

(assert (=> d!62673 (= lt!131874 e!169247)))

(declare-fun res!127637 () Bool)

(assert (=> d!62673 (=> (not res!127637) (not e!169247))))

(assert (=> d!62673 (= res!127637 ((_ is Cons!3846) (toList!1953 lt!131813)))))

(assert (=> d!62673 (= (contains!1895 (toList!1953 lt!131813) (tuple2!4949 key!932 v!346)) lt!131874)))

(declare-fun b!261156 () Bool)

(declare-fun e!169246 () Bool)

(assert (=> b!261156 (= e!169247 e!169246)))

(declare-fun res!127638 () Bool)

(assert (=> b!261156 (=> res!127638 e!169246)))

(assert (=> b!261156 (= res!127638 (= (h!4511 (toList!1953 lt!131813)) (tuple2!4949 key!932 v!346)))))

(declare-fun b!261157 () Bool)

(assert (=> b!261157 (= e!169246 (contains!1895 (t!8929 (toList!1953 lt!131813)) (tuple2!4949 key!932 v!346)))))

(assert (= (and d!62673 res!127637) b!261156))

(assert (= (and b!261156 (not res!127638)) b!261157))

(declare-fun m!277083 () Bool)

(assert (=> d!62673 m!277083))

(declare-fun m!277085 () Bool)

(assert (=> d!62673 m!277085))

(declare-fun m!277087 () Bool)

(assert (=> b!261157 m!277087))

(assert (=> b!261050 d!62673))

(declare-fun d!62675 () Bool)

(assert (=> d!62675 (= (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) (and (not (= (select (arr!5968 lt!131653) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5968 lt!131653) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!261064 d!62675))

(declare-fun d!62677 () Bool)

(declare-fun e!169248 () Bool)

(assert (=> d!62677 e!169248))

(declare-fun res!127639 () Bool)

(assert (=> d!62677 (=> (not res!127639) (not e!169248))))

(declare-fun lt!131878 () ListLongMap!3875)

(assert (=> d!62677 (= res!127639 (contains!1893 lt!131878 (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun lt!131875 () List!3850)

(assert (=> d!62677 (= lt!131878 (ListLongMap!3876 lt!131875))))

(declare-fun lt!131876 () Unit!8105)

(declare-fun lt!131877 () Unit!8105)

(assert (=> d!62677 (= lt!131876 lt!131877)))

(assert (=> d!62677 (= (getValueByKey!316 lt!131875 (_1!2484 (tuple2!4949 key!932 v!346))) (Some!321 (_2!2484 (tuple2!4949 key!932 v!346))))))

(assert (=> d!62677 (= lt!131877 (lemmaContainsTupThenGetReturnValue!174 lt!131875 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))

(assert (=> d!62677 (= lt!131875 (insertStrictlySorted!176 (toList!1953 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504))) (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))

(assert (=> d!62677 (= (+!696 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) (tuple2!4949 key!932 v!346)) lt!131878)))

(declare-fun b!261158 () Bool)

(declare-fun res!127640 () Bool)

(assert (=> b!261158 (=> (not res!127640) (not e!169248))))

(assert (=> b!261158 (= res!127640 (= (getValueByKey!316 (toList!1953 lt!131878) (_1!2484 (tuple2!4949 key!932 v!346))) (Some!321 (_2!2484 (tuple2!4949 key!932 v!346)))))))

(declare-fun b!261159 () Bool)

(assert (=> b!261159 (= e!169248 (contains!1895 (toList!1953 lt!131878) (tuple2!4949 key!932 v!346)))))

(assert (= (and d!62677 res!127639) b!261158))

(assert (= (and b!261158 res!127640) b!261159))

(declare-fun m!277089 () Bool)

(assert (=> d!62677 m!277089))

(declare-fun m!277091 () Bool)

(assert (=> d!62677 m!277091))

(declare-fun m!277093 () Bool)

(assert (=> d!62677 m!277093))

(declare-fun m!277095 () Bool)

(assert (=> d!62677 m!277095))

(declare-fun m!277097 () Bool)

(assert (=> b!261158 m!277097))

(declare-fun m!277099 () Bool)

(assert (=> b!261159 m!277099))

(assert (=> b!261034 d!62677))

(assert (=> b!261034 d!62667))

(declare-fun bm!24933 () Bool)

(declare-fun call!24940 () ListLongMap!3875)

(declare-fun call!24942 () ListLongMap!3875)

(assert (=> bm!24933 (= call!24940 call!24942)))

(declare-fun d!62679 () Bool)

(declare-fun e!169250 () Bool)

(assert (=> d!62679 e!169250))

(declare-fun res!127642 () Bool)

(assert (=> d!62679 (=> (not res!127642) (not e!169250))))

(assert (=> d!62679 (= res!127642 (or (bvsge #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))))

(declare-fun lt!131900 () ListLongMap!3875)

(declare-fun lt!131891 () ListLongMap!3875)

(assert (=> d!62679 (= lt!131900 lt!131891)))

(declare-fun lt!131883 () Unit!8105)

(declare-fun e!169254 () Unit!8105)

(assert (=> d!62679 (= lt!131883 e!169254)))

(declare-fun c!44422 () Bool)

(declare-fun e!169260 () Bool)

(assert (=> d!62679 (= c!44422 e!169260)))

(declare-fun res!127643 () Bool)

(assert (=> d!62679 (=> (not res!127643) (not e!169260))))

(assert (=> d!62679 (= res!127643 (bvslt #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(declare-fun e!169255 () ListLongMap!3875)

(assert (=> d!62679 (= lt!131891 e!169255)))

(declare-fun c!44425 () Bool)

(assert (=> d!62679 (= c!44425 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62679 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62679 (= (getCurrentListMap!1476 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) lt!131900)))

(declare-fun c!44423 () Bool)

(declare-fun bm!24934 () Bool)

(declare-fun call!24936 () ListLongMap!3875)

(declare-fun call!24939 () ListLongMap!3875)

(assert (=> bm!24934 (= call!24936 (+!696 (ite c!44425 call!24942 (ite c!44423 call!24940 call!24939)) (ite (or c!44425 c!44423) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(declare-fun b!261160 () Bool)

(declare-fun e!169258 () ListLongMap!3875)

(assert (=> b!261160 (= e!169255 e!169258)))

(assert (=> b!261160 (= c!44423 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!261161 () Bool)

(declare-fun call!24938 () ListLongMap!3875)

(assert (=> b!261161 (= e!169258 call!24938)))

(declare-fun bm!24935 () Bool)

(assert (=> bm!24935 (= call!24942 (getCurrentListMapNoExtraKeys!578 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun b!261162 () Bool)

(assert (=> b!261162 (= e!169260 (validKeyInArray!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun bm!24936 () Bool)

(assert (=> bm!24936 (= call!24939 call!24940)))

(declare-fun b!261163 () Bool)

(declare-fun e!169252 () Bool)

(assert (=> b!261163 (= e!169252 (= (apply!259 lt!131900 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4649 thiss!1504)))))

(declare-fun bm!24937 () Bool)

(declare-fun call!24937 () Bool)

(assert (=> bm!24937 (= call!24937 (contains!1893 lt!131900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261164 () Bool)

(declare-fun e!169261 () Bool)

(assert (=> b!261164 (= e!169261 (= (apply!259 lt!131900 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)) (get!3078 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!261164 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6317 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))))))))

(assert (=> b!261164 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(declare-fun b!261165 () Bool)

(declare-fun e!169251 () Bool)

(assert (=> b!261165 (= e!169251 (validKeyInArray!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!261166 () Bool)

(declare-fun c!44424 () Bool)

(assert (=> b!261166 (= c!44424 (and (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!169257 () ListLongMap!3875)

(assert (=> b!261166 (= e!169258 e!169257)))

(declare-fun b!261167 () Bool)

(assert (=> b!261167 (= e!169257 call!24938)))

(declare-fun b!261168 () Bool)

(declare-fun e!169256 () Bool)

(declare-fun e!169249 () Bool)

(assert (=> b!261168 (= e!169256 e!169249)))

(declare-fun res!127646 () Bool)

(assert (=> b!261168 (= res!127646 call!24937)))

(assert (=> b!261168 (=> (not res!127646) (not e!169249))))

(declare-fun b!261169 () Bool)

(assert (=> b!261169 (= e!169257 call!24939)))

(declare-fun b!261170 () Bool)

(declare-fun lt!131893 () Unit!8105)

(assert (=> b!261170 (= e!169254 lt!131893)))

(declare-fun lt!131880 () ListLongMap!3875)

(assert (=> b!261170 (= lt!131880 (getCurrentListMapNoExtraKeys!578 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131897 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131897 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131885 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131885 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131899 () Unit!8105)

(assert (=> b!261170 (= lt!131899 (addStillContains!235 lt!131880 lt!131897 (zeroValue!4649 thiss!1504) lt!131885))))

(assert (=> b!261170 (contains!1893 (+!696 lt!131880 (tuple2!4949 lt!131897 (zeroValue!4649 thiss!1504))) lt!131885)))

(declare-fun lt!131882 () Unit!8105)

(assert (=> b!261170 (= lt!131882 lt!131899)))

(declare-fun lt!131888 () ListLongMap!3875)

(assert (=> b!261170 (= lt!131888 (getCurrentListMapNoExtraKeys!578 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131884 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131884 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131895 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131895 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131892 () Unit!8105)

(assert (=> b!261170 (= lt!131892 (addApplyDifferent!235 lt!131888 lt!131884 (minValue!4649 thiss!1504) lt!131895))))

(assert (=> b!261170 (= (apply!259 (+!696 lt!131888 (tuple2!4949 lt!131884 (minValue!4649 thiss!1504))) lt!131895) (apply!259 lt!131888 lt!131895))))

(declare-fun lt!131881 () Unit!8105)

(assert (=> b!261170 (= lt!131881 lt!131892)))

(declare-fun lt!131890 () ListLongMap!3875)

(assert (=> b!261170 (= lt!131890 (getCurrentListMapNoExtraKeys!578 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131896 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131896 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131879 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131879 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131889 () Unit!8105)

(assert (=> b!261170 (= lt!131889 (addApplyDifferent!235 lt!131890 lt!131896 (zeroValue!4649 thiss!1504) lt!131879))))

(assert (=> b!261170 (= (apply!259 (+!696 lt!131890 (tuple2!4949 lt!131896 (zeroValue!4649 thiss!1504))) lt!131879) (apply!259 lt!131890 lt!131879))))

(declare-fun lt!131898 () Unit!8105)

(assert (=> b!261170 (= lt!131898 lt!131889)))

(declare-fun lt!131894 () ListLongMap!3875)

(assert (=> b!261170 (= lt!131894 (getCurrentListMapNoExtraKeys!578 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(declare-fun lt!131887 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131887 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131886 () (_ BitVec 64))

(assert (=> b!261170 (= lt!131886 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000))))

(assert (=> b!261170 (= lt!131893 (addApplyDifferent!235 lt!131894 lt!131887 (minValue!4649 thiss!1504) lt!131886))))

(assert (=> b!261170 (= (apply!259 (+!696 lt!131894 (tuple2!4949 lt!131887 (minValue!4649 thiss!1504))) lt!131886) (apply!259 lt!131894 lt!131886))))

(declare-fun b!261171 () Bool)

(declare-fun Unit!8116 () Unit!8105)

(assert (=> b!261171 (= e!169254 Unit!8116)))

(declare-fun b!261172 () Bool)

(declare-fun res!127648 () Bool)

(assert (=> b!261172 (=> (not res!127648) (not e!169250))))

(assert (=> b!261172 (= res!127648 e!169256)))

(declare-fun c!44426 () Bool)

(assert (=> b!261172 (= c!44426 (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!261173 () Bool)

(assert (=> b!261173 (= e!169256 (not call!24937))))

(declare-fun b!261174 () Bool)

(declare-fun e!169259 () Bool)

(assert (=> b!261174 (= e!169250 e!169259)))

(declare-fun c!44421 () Bool)

(assert (=> b!261174 (= c!44421 (not (= (bvand (extraKeys!4545 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!261175 () Bool)

(assert (=> b!261175 (= e!169249 (= (apply!259 lt!131900 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4649 thiss!1504)))))

(declare-fun bm!24938 () Bool)

(assert (=> bm!24938 (= call!24938 call!24936)))

(declare-fun b!261176 () Bool)

(declare-fun e!169253 () Bool)

(assert (=> b!261176 (= e!169253 e!169261)))

(declare-fun res!127641 () Bool)

(assert (=> b!261176 (=> (not res!127641) (not e!169261))))

(assert (=> b!261176 (= res!127641 (contains!1893 lt!131900 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!261176 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(declare-fun b!261177 () Bool)

(declare-fun res!127644 () Bool)

(assert (=> b!261177 (=> (not res!127644) (not e!169250))))

(assert (=> b!261177 (= res!127644 e!169253)))

(declare-fun res!127645 () Bool)

(assert (=> b!261177 (=> res!127645 e!169253)))

(assert (=> b!261177 (= res!127645 (not e!169251))))

(declare-fun res!127647 () Bool)

(assert (=> b!261177 (=> (not res!127647) (not e!169251))))

(assert (=> b!261177 (= res!127647 (bvslt #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(declare-fun bm!24939 () Bool)

(declare-fun call!24941 () Bool)

(assert (=> bm!24939 (= call!24941 (contains!1893 lt!131900 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261178 () Bool)

(assert (=> b!261178 (= e!169255 (+!696 call!24936 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))

(declare-fun b!261179 () Bool)

(assert (=> b!261179 (= e!169259 e!169252)))

(declare-fun res!127649 () Bool)

(assert (=> b!261179 (= res!127649 call!24941)))

(assert (=> b!261179 (=> (not res!127649) (not e!169252))))

(declare-fun b!261180 () Bool)

(assert (=> b!261180 (= e!169259 (not call!24941))))

(assert (= (and d!62679 c!44425) b!261178))

(assert (= (and d!62679 (not c!44425)) b!261160))

(assert (= (and b!261160 c!44423) b!261161))

(assert (= (and b!261160 (not c!44423)) b!261166))

(assert (= (and b!261166 c!44424) b!261167))

(assert (= (and b!261166 (not c!44424)) b!261169))

(assert (= (or b!261167 b!261169) bm!24936))

(assert (= (or b!261161 bm!24936) bm!24933))

(assert (= (or b!261161 b!261167) bm!24938))

(assert (= (or b!261178 bm!24933) bm!24935))

(assert (= (or b!261178 bm!24938) bm!24934))

(assert (= (and d!62679 res!127643) b!261162))

(assert (= (and d!62679 c!44422) b!261170))

(assert (= (and d!62679 (not c!44422)) b!261171))

(assert (= (and d!62679 res!127642) b!261177))

(assert (= (and b!261177 res!127647) b!261165))

(assert (= (and b!261177 (not res!127645)) b!261176))

(assert (= (and b!261176 res!127641) b!261164))

(assert (= (and b!261177 res!127644) b!261172))

(assert (= (and b!261172 c!44426) b!261168))

(assert (= (and b!261172 (not c!44426)) b!261173))

(assert (= (and b!261168 res!127646) b!261175))

(assert (= (or b!261168 b!261173) bm!24937))

(assert (= (and b!261172 res!127648) b!261174))

(assert (= (and b!261174 c!44421) b!261179))

(assert (= (and b!261174 (not c!44421)) b!261180))

(assert (= (and b!261179 res!127649) b!261163))

(assert (= (or b!261179 b!261180) bm!24939))

(declare-fun b_lambda!8325 () Bool)

(assert (=> (not b_lambda!8325) (not b!261164)))

(assert (=> b!261164 t!8933))

(declare-fun b_and!13911 () Bool)

(assert (= b_and!13909 (and (=> t!8933 result!5423) b_and!13911)))

(declare-fun m!277101 () Bool)

(assert (=> b!261170 m!277101))

(declare-fun m!277103 () Bool)

(assert (=> b!261170 m!277103))

(declare-fun m!277105 () Bool)

(assert (=> b!261170 m!277105))

(declare-fun m!277107 () Bool)

(assert (=> b!261170 m!277107))

(declare-fun m!277109 () Bool)

(assert (=> b!261170 m!277109))

(assert (=> b!261170 m!277101))

(declare-fun m!277111 () Bool)

(assert (=> b!261170 m!277111))

(declare-fun m!277113 () Bool)

(assert (=> b!261170 m!277113))

(declare-fun m!277115 () Bool)

(assert (=> b!261170 m!277115))

(declare-fun m!277117 () Bool)

(assert (=> b!261170 m!277117))

(declare-fun m!277119 () Bool)

(assert (=> b!261170 m!277119))

(declare-fun m!277121 () Bool)

(assert (=> b!261170 m!277121))

(declare-fun m!277123 () Bool)

(assert (=> b!261170 m!277123))

(assert (=> b!261170 m!277121))

(declare-fun m!277125 () Bool)

(assert (=> b!261170 m!277125))

(declare-fun m!277127 () Bool)

(assert (=> b!261170 m!277127))

(assert (=> b!261170 m!277117))

(declare-fun m!277129 () Bool)

(assert (=> b!261170 m!277129))

(assert (=> b!261170 m!277115))

(declare-fun m!277131 () Bool)

(assert (=> b!261170 m!277131))

(declare-fun m!277133 () Bool)

(assert (=> b!261170 m!277133))

(declare-fun m!277135 () Bool)

(assert (=> bm!24934 m!277135))

(declare-fun m!277137 () Bool)

(assert (=> bm!24937 m!277137))

(declare-fun m!277139 () Bool)

(assert (=> b!261178 m!277139))

(assert (=> bm!24935 m!277133))

(assert (=> b!261164 m!276935))

(assert (=> b!261164 m!277111))

(assert (=> b!261164 m!276937))

(assert (=> b!261164 m!276935))

(assert (=> b!261164 m!276937))

(assert (=> b!261164 m!276939))

(assert (=> b!261164 m!277111))

(declare-fun m!277141 () Bool)

(assert (=> b!261164 m!277141))

(declare-fun m!277143 () Bool)

(assert (=> b!261163 m!277143))

(assert (=> b!261176 m!277111))

(assert (=> b!261176 m!277111))

(declare-fun m!277145 () Bool)

(assert (=> b!261176 m!277145))

(assert (=> b!261162 m!277111))

(assert (=> b!261162 m!277111))

(declare-fun m!277147 () Bool)

(assert (=> b!261162 m!277147))

(assert (=> d!62679 m!276763))

(assert (=> b!261165 m!277111))

(assert (=> b!261165 m!277111))

(assert (=> b!261165 m!277147))

(declare-fun m!277149 () Bool)

(assert (=> b!261175 m!277149))

(declare-fun m!277151 () Bool)

(assert (=> bm!24939 m!277151))

(assert (=> b!261034 d!62679))

(declare-fun d!62681 () Bool)

(declare-fun get!3079 (Option!322) V!8483)

(assert (=> d!62681 (= (apply!259 lt!131791 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) (get!3079 (getValueByKey!316 (toList!1953 lt!131791) (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))))

(declare-fun bs!9200 () Bool)

(assert (= bs!9200 d!62681))

(assert (=> bs!9200 m!276861))

(declare-fun m!277153 () Bool)

(assert (=> bs!9200 m!277153))

(assert (=> bs!9200 m!277153))

(declare-fun m!277155 () Bool)

(assert (=> bs!9200 m!277155))

(assert (=> b!261008 d!62681))

(declare-fun c!44429 () Bool)

(declare-fun d!62683 () Bool)

(assert (=> d!62683 (= c!44429 ((_ is ValueCellFull!2970) (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!169264 () V!8483)

(assert (=> d!62683 (= (get!3078 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!169264)))

(declare-fun b!261185 () Bool)

(declare-fun get!3080 (ValueCell!2970 V!8483) V!8483)

(assert (=> b!261185 (= e!169264 (get!3080 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!261186 () Bool)

(declare-fun get!3081 (ValueCell!2970 V!8483) V!8483)

(assert (=> b!261186 (= e!169264 (get!3081 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62683 c!44429) b!261185))

(assert (= (and d!62683 (not c!44429)) b!261186))

(assert (=> b!261185 m!276935))

(assert (=> b!261185 m!276937))

(declare-fun m!277157 () Bool)

(assert (=> b!261185 m!277157))

(assert (=> b!261186 m!276935))

(assert (=> b!261186 m!276937))

(declare-fun m!277159 () Bool)

(assert (=> b!261186 m!277159))

(assert (=> b!261008 d!62683))

(declare-fun b!261205 () Bool)

(declare-fun lt!131906 () SeekEntryResult!1195)

(assert (=> b!261205 (and (bvsge (index!6952 lt!131906) #b00000000000000000000000000000000) (bvslt (index!6952 lt!131906) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun e!169275 () Bool)

(assert (=> b!261205 (= e!169275 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6952 lt!131906)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261206 () Bool)

(declare-fun e!169276 () SeekEntryResult!1195)

(assert (=> b!261206 (= e!169276 (Intermediate!1195 false (toIndex!0 key!932 (mask!11145 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun d!62685 () Bool)

(declare-fun e!169278 () Bool)

(assert (=> d!62685 e!169278))

(declare-fun c!44438 () Bool)

(assert (=> d!62685 (= c!44438 (and ((_ is Intermediate!1195) lt!131906) (undefined!2007 lt!131906)))))

(declare-fun e!169277 () SeekEntryResult!1195)

(assert (=> d!62685 (= lt!131906 e!169277)))

(declare-fun c!44437 () Bool)

(assert (=> d!62685 (= c!44437 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!131905 () (_ BitVec 64))

(assert (=> d!62685 (= lt!131905 (select (arr!5968 (_keys!6992 thiss!1504)) (toIndex!0 key!932 (mask!11145 thiss!1504))))))

(assert (=> d!62685 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11145 thiss!1504)) key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)) lt!131906)))

(declare-fun b!261207 () Bool)

(assert (=> b!261207 (= e!169278 (bvsge (x!25159 lt!131906) #b01111111111111111111111111111110))))

(declare-fun b!261208 () Bool)

(assert (=> b!261208 (and (bvsge (index!6952 lt!131906) #b00000000000000000000000000000000) (bvslt (index!6952 lt!131906) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun res!127657 () Bool)

(assert (=> b!261208 (= res!127657 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6952 lt!131906)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261208 (=> res!127657 e!169275)))

(declare-fun b!261209 () Bool)

(assert (=> b!261209 (and (bvsge (index!6952 lt!131906) #b00000000000000000000000000000000) (bvslt (index!6952 lt!131906) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun res!127658 () Bool)

(assert (=> b!261209 (= res!127658 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6952 lt!131906)) key!932))))

(assert (=> b!261209 (=> res!127658 e!169275)))

(declare-fun e!169279 () Bool)

(assert (=> b!261209 (= e!169279 e!169275)))

(declare-fun b!261210 () Bool)

(assert (=> b!261210 (= e!169277 e!169276)))

(declare-fun c!44436 () Bool)

(assert (=> b!261210 (= c!44436 (or (= lt!131905 key!932) (= (bvadd lt!131905 lt!131905) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!261211 () Bool)

(assert (=> b!261211 (= e!169278 e!169279)))

(declare-fun res!127656 () Bool)

(assert (=> b!261211 (= res!127656 (and ((_ is Intermediate!1195) lt!131906) (not (undefined!2007 lt!131906)) (bvslt (x!25159 lt!131906) #b01111111111111111111111111111110) (bvsge (x!25159 lt!131906) #b00000000000000000000000000000000) (bvsge (x!25159 lt!131906) #b00000000000000000000000000000000)))))

(assert (=> b!261211 (=> (not res!127656) (not e!169279))))

(declare-fun b!261212 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!261212 (= e!169276 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!11145 thiss!1504)) #b00000000000000000000000000000000 (mask!11145 thiss!1504)) key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun b!261213 () Bool)

(assert (=> b!261213 (= e!169277 (Intermediate!1195 true (toIndex!0 key!932 (mask!11145 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!62685 c!44437) b!261213))

(assert (= (and d!62685 (not c!44437)) b!261210))

(assert (= (and b!261210 c!44436) b!261206))

(assert (= (and b!261210 (not c!44436)) b!261212))

(assert (= (and d!62685 c!44438) b!261207))

(assert (= (and d!62685 (not c!44438)) b!261211))

(assert (= (and b!261211 res!127656) b!261209))

(assert (= (and b!261209 (not res!127658)) b!261208))

(assert (= (and b!261208 (not res!127657)) b!261205))

(declare-fun m!277161 () Bool)

(assert (=> b!261205 m!277161))

(assert (=> b!261212 m!277069))

(declare-fun m!277163 () Bool)

(assert (=> b!261212 m!277163))

(assert (=> b!261212 m!277163))

(declare-fun m!277165 () Bool)

(assert (=> b!261212 m!277165))

(assert (=> b!261208 m!277161))

(assert (=> b!261209 m!277161))

(assert (=> d!62685 m!277069))

(declare-fun m!277167 () Bool)

(assert (=> d!62685 m!277167))

(assert (=> d!62685 m!276763))

(assert (=> d!62671 d!62685))

(declare-fun d!62687 () Bool)

(declare-fun lt!131912 () (_ BitVec 32))

(declare-fun lt!131911 () (_ BitVec 32))

(assert (=> d!62687 (= lt!131912 (bvmul (bvxor lt!131911 (bvlshr lt!131911 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!62687 (= lt!131911 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!62687 (and (bvsge (mask!11145 thiss!1504) #b00000000000000000000000000000000) (let ((res!127659 (let ((h!4514 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!25176 (bvmul (bvxor h!4514 (bvlshr h!4514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!25176 (bvlshr x!25176 #b00000000000000000000000000001101)) (mask!11145 thiss!1504)))))) (and (bvslt res!127659 (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!127659 #b00000000000000000000000000000000))))))

(assert (=> d!62687 (= (toIndex!0 key!932 (mask!11145 thiss!1504)) (bvand (bvxor lt!131912 (bvlshr lt!131912 #b00000000000000000000000000001101)) (mask!11145 thiss!1504)))))

(assert (=> d!62671 d!62687))

(assert (=> d!62671 d!62631))

(declare-fun d!62689 () Bool)

(assert (=> d!62689 (= (apply!259 lt!131791 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3079 (getValueByKey!316 (toList!1953 lt!131791) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9201 () Bool)

(assert (= bs!9201 d!62689))

(declare-fun m!277169 () Bool)

(assert (=> bs!9201 m!277169))

(assert (=> bs!9201 m!277169))

(declare-fun m!277171 () Bool)

(assert (=> bs!9201 m!277171))

(assert (=> b!261007 d!62689))

(declare-fun d!62691 () Bool)

(declare-fun e!169280 () Bool)

(assert (=> d!62691 e!169280))

(declare-fun res!127660 () Bool)

(assert (=> d!62691 (=> res!127660 e!169280)))

(declare-fun lt!131914 () Bool)

(assert (=> d!62691 (= res!127660 (not lt!131914))))

(declare-fun lt!131913 () Bool)

(assert (=> d!62691 (= lt!131914 lt!131913)))

(declare-fun lt!131915 () Unit!8105)

(declare-fun e!169281 () Unit!8105)

(assert (=> d!62691 (= lt!131915 e!169281)))

(declare-fun c!44439 () Bool)

(assert (=> d!62691 (= c!44439 lt!131913)))

(assert (=> d!62691 (= lt!131913 (containsKey!308 (toList!1953 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504))) key!932))))

(assert (=> d!62691 (= (contains!1893 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) key!932) lt!131914)))

(declare-fun b!261214 () Bool)

(declare-fun lt!131916 () Unit!8105)

(assert (=> b!261214 (= e!169281 lt!131916)))

(assert (=> b!261214 (= lt!131916 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504))) key!932))))

(assert (=> b!261214 (isDefined!258 (getValueByKey!316 (toList!1953 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504))) key!932))))

(declare-fun b!261215 () Bool)

(declare-fun Unit!8117 () Unit!8105)

(assert (=> b!261215 (= e!169281 Unit!8117)))

(declare-fun b!261216 () Bool)

(assert (=> b!261216 (= e!169280 (isDefined!258 (getValueByKey!316 (toList!1953 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504))) key!932)))))

(assert (= (and d!62691 c!44439) b!261214))

(assert (= (and d!62691 (not c!44439)) b!261215))

(assert (= (and d!62691 (not res!127660)) b!261216))

(declare-fun m!277173 () Bool)

(assert (=> d!62691 m!277173))

(declare-fun m!277175 () Bool)

(assert (=> b!261214 m!277175))

(declare-fun m!277177 () Bool)

(assert (=> b!261214 m!277177))

(assert (=> b!261214 m!277177))

(declare-fun m!277179 () Bool)

(assert (=> b!261214 m!277179))

(assert (=> b!261216 m!277177))

(assert (=> b!261216 m!277177))

(assert (=> b!261216 m!277179))

(assert (=> d!62659 d!62691))

(assert (=> d!62659 d!62667))

(declare-fun d!62693 () Bool)

(assert (=> d!62693 (contains!1893 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) key!932)))

(assert (=> d!62693 true))

(declare-fun _$17!92 () Unit!8105)

(assert (=> d!62693 (= (choose!1281 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) _$17!92)))

(declare-fun bs!9202 () Bool)

(assert (= bs!9202 d!62693))

(assert (=> bs!9202 m!276781))

(assert (=> bs!9202 m!276781))

(assert (=> bs!9202 m!276989))

(assert (=> d!62659 d!62693))

(assert (=> d!62659 d!62631))

(declare-fun d!62695 () Bool)

(declare-fun e!169282 () Bool)

(assert (=> d!62695 e!169282))

(declare-fun res!127661 () Bool)

(assert (=> d!62695 (=> (not res!127661) (not e!169282))))

(declare-fun lt!131920 () ListLongMap!3875)

(assert (=> d!62695 (= res!127661 (contains!1893 lt!131920 (_1!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))))))

(declare-fun lt!131917 () List!3850)

(assert (=> d!62695 (= lt!131920 (ListLongMap!3876 lt!131917))))

(declare-fun lt!131918 () Unit!8105)

(declare-fun lt!131919 () Unit!8105)

(assert (=> d!62695 (= lt!131918 lt!131919)))

(assert (=> d!62695 (= (getValueByKey!316 lt!131917 (_1!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62695 (= lt!131919 (lemmaContainsTupThenGetReturnValue!174 lt!131917 (_1!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62695 (= lt!131917 (insertStrictlySorted!176 (toList!1953 lt!131846) (_1!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62695 (= (+!696 lt!131846 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))) lt!131920)))

(declare-fun b!261217 () Bool)

(declare-fun res!127662 () Bool)

(assert (=> b!261217 (=> (not res!127662) (not e!169282))))

(assert (=> b!261217 (= res!127662 (= (getValueByKey!316 (toList!1953 lt!131920) (_1!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))))))))

(declare-fun b!261218 () Bool)

(assert (=> b!261218 (= e!169282 (contains!1895 (toList!1953 lt!131920) (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))))))

(assert (= (and d!62695 res!127661) b!261217))

(assert (= (and b!261217 res!127662) b!261218))

(declare-fun m!277181 () Bool)

(assert (=> d!62695 m!277181))

(declare-fun m!277183 () Bool)

(assert (=> d!62695 m!277183))

(declare-fun m!277185 () Bool)

(assert (=> d!62695 m!277185))

(declare-fun m!277187 () Bool)

(assert (=> d!62695 m!277187))

(declare-fun m!277189 () Bool)

(assert (=> b!261217 m!277189))

(declare-fun m!277191 () Bool)

(assert (=> b!261218 m!277191))

(assert (=> b!261109 d!62695))

(declare-fun d!62697 () Bool)

(declare-fun e!169283 () Bool)

(assert (=> d!62697 e!169283))

(declare-fun res!127663 () Bool)

(assert (=> d!62697 (=> res!127663 e!169283)))

(declare-fun lt!131922 () Bool)

(assert (=> d!62697 (= res!127663 (not lt!131922))))

(declare-fun lt!131921 () Bool)

(assert (=> d!62697 (= lt!131922 lt!131921)))

(declare-fun lt!131923 () Unit!8105)

(declare-fun e!169284 () Unit!8105)

(assert (=> d!62697 (= lt!131923 e!169284)))

(declare-fun c!44440 () Bool)

(assert (=> d!62697 (= c!44440 lt!131921)))

(assert (=> d!62697 (= lt!131921 (containsKey!308 (toList!1953 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))) lt!131841))))

(assert (=> d!62697 (= (contains!1893 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))) lt!131841) lt!131922)))

(declare-fun b!261219 () Bool)

(declare-fun lt!131924 () Unit!8105)

(assert (=> b!261219 (= e!169284 lt!131924)))

(assert (=> b!261219 (= lt!131924 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))) lt!131841))))

(assert (=> b!261219 (isDefined!258 (getValueByKey!316 (toList!1953 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))) lt!131841))))

(declare-fun b!261220 () Bool)

(declare-fun Unit!8118 () Unit!8105)

(assert (=> b!261220 (= e!169284 Unit!8118)))

(declare-fun b!261221 () Bool)

(assert (=> b!261221 (= e!169283 (isDefined!258 (getValueByKey!316 (toList!1953 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))) lt!131841)))))

(assert (= (and d!62697 c!44440) b!261219))

(assert (= (and d!62697 (not c!44440)) b!261220))

(assert (= (and d!62697 (not res!127663)) b!261221))

(declare-fun m!277193 () Bool)

(assert (=> d!62697 m!277193))

(declare-fun m!277195 () Bool)

(assert (=> b!261219 m!277195))

(declare-fun m!277197 () Bool)

(assert (=> b!261219 m!277197))

(assert (=> b!261219 m!277197))

(declare-fun m!277199 () Bool)

(assert (=> b!261219 m!277199))

(assert (=> b!261221 m!277197))

(assert (=> b!261221 m!277197))

(assert (=> b!261221 m!277199))

(assert (=> b!261109 d!62697))

(declare-fun d!62699 () Bool)

(assert (=> d!62699 (= (apply!259 lt!131844 lt!131851) (get!3079 (getValueByKey!316 (toList!1953 lt!131844) lt!131851)))))

(declare-fun bs!9203 () Bool)

(assert (= bs!9203 d!62699))

(declare-fun m!277201 () Bool)

(assert (=> bs!9203 m!277201))

(assert (=> bs!9203 m!277201))

(declare-fun m!277203 () Bool)

(assert (=> bs!9203 m!277203))

(assert (=> b!261109 d!62699))

(declare-fun d!62701 () Bool)

(declare-fun e!169285 () Bool)

(assert (=> d!62701 e!169285))

(declare-fun res!127664 () Bool)

(assert (=> d!62701 (=> (not res!127664) (not e!169285))))

(declare-fun lt!131928 () ListLongMap!3875)

(assert (=> d!62701 (= res!127664 (contains!1893 lt!131928 (_1!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))))))

(declare-fun lt!131925 () List!3850)

(assert (=> d!62701 (= lt!131928 (ListLongMap!3876 lt!131925))))

(declare-fun lt!131926 () Unit!8105)

(declare-fun lt!131927 () Unit!8105)

(assert (=> d!62701 (= lt!131926 lt!131927)))

(assert (=> d!62701 (= (getValueByKey!316 lt!131925 (_1!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62701 (= lt!131927 (lemmaContainsTupThenGetReturnValue!174 lt!131925 (_1!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62701 (= lt!131925 (insertStrictlySorted!176 (toList!1953 lt!131836) (_1!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62701 (= (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))) lt!131928)))

(declare-fun b!261222 () Bool)

(declare-fun res!127665 () Bool)

(assert (=> b!261222 (=> (not res!127665) (not e!169285))))

(assert (=> b!261222 (= res!127665 (= (getValueByKey!316 (toList!1953 lt!131928) (_1!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))))))))

(declare-fun b!261223 () Bool)

(assert (=> b!261223 (= e!169285 (contains!1895 (toList!1953 lt!131928) (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))))))

(assert (= (and d!62701 res!127664) b!261222))

(assert (= (and b!261222 res!127665) b!261223))

(declare-fun m!277205 () Bool)

(assert (=> d!62701 m!277205))

(declare-fun m!277207 () Bool)

(assert (=> d!62701 m!277207))

(declare-fun m!277209 () Bool)

(assert (=> d!62701 m!277209))

(declare-fun m!277211 () Bool)

(assert (=> d!62701 m!277211))

(declare-fun m!277213 () Bool)

(assert (=> b!261222 m!277213))

(declare-fun m!277215 () Bool)

(assert (=> b!261223 m!277215))

(assert (=> b!261109 d!62701))

(declare-fun d!62703 () Bool)

(declare-fun e!169286 () Bool)

(assert (=> d!62703 e!169286))

(declare-fun res!127666 () Bool)

(assert (=> d!62703 (=> (not res!127666) (not e!169286))))

(declare-fun lt!131932 () ListLongMap!3875)

(assert (=> d!62703 (= res!127666 (contains!1893 lt!131932 (_1!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))))))

(declare-fun lt!131929 () List!3850)

(assert (=> d!62703 (= lt!131932 (ListLongMap!3876 lt!131929))))

(declare-fun lt!131930 () Unit!8105)

(declare-fun lt!131931 () Unit!8105)

(assert (=> d!62703 (= lt!131930 lt!131931)))

(assert (=> d!62703 (= (getValueByKey!316 lt!131929 (_1!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))))))

(assert (=> d!62703 (= lt!131931 (lemmaContainsTupThenGetReturnValue!174 lt!131929 (_1!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))))))

(assert (=> d!62703 (= lt!131929 (insertStrictlySorted!176 (toList!1953 lt!131844) (_1!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))))))

(assert (=> d!62703 (= (+!696 lt!131844 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))) lt!131932)))

(declare-fun b!261224 () Bool)

(declare-fun res!127667 () Bool)

(assert (=> b!261224 (=> (not res!127667) (not e!169286))))

(assert (=> b!261224 (= res!127667 (= (getValueByKey!316 (toList!1953 lt!131932) (_1!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))))))))

(declare-fun b!261225 () Bool)

(assert (=> b!261225 (= e!169286 (contains!1895 (toList!1953 lt!131932) (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))))))

(assert (= (and d!62703 res!127666) b!261224))

(assert (= (and b!261224 res!127667) b!261225))

(declare-fun m!277217 () Bool)

(assert (=> d!62703 m!277217))

(declare-fun m!277219 () Bool)

(assert (=> d!62703 m!277219))

(declare-fun m!277221 () Bool)

(assert (=> d!62703 m!277221))

(declare-fun m!277223 () Bool)

(assert (=> d!62703 m!277223))

(declare-fun m!277225 () Bool)

(assert (=> b!261224 m!277225))

(declare-fun m!277227 () Bool)

(assert (=> b!261225 m!277227))

(assert (=> b!261109 d!62703))

(declare-fun d!62705 () Bool)

(assert (=> d!62705 (= (apply!259 (+!696 lt!131846 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))) lt!131835) (get!3079 (getValueByKey!316 (toList!1953 (+!696 lt!131846 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504)))) lt!131835)))))

(declare-fun bs!9204 () Bool)

(assert (= bs!9204 d!62705))

(declare-fun m!277229 () Bool)

(assert (=> bs!9204 m!277229))

(assert (=> bs!9204 m!277229))

(declare-fun m!277231 () Bool)

(assert (=> bs!9204 m!277231))

(assert (=> b!261109 d!62705))

(declare-fun d!62707 () Bool)

(assert (=> d!62707 (= (apply!259 (+!696 lt!131850 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))) lt!131842) (apply!259 lt!131850 lt!131842))))

(declare-fun lt!131935 () Unit!8105)

(declare-fun choose!1284 (ListLongMap!3875 (_ BitVec 64) V!8483 (_ BitVec 64)) Unit!8105)

(assert (=> d!62707 (= lt!131935 (choose!1284 lt!131850 lt!131843 (minValue!4649 thiss!1504) lt!131842))))

(declare-fun e!169289 () Bool)

(assert (=> d!62707 e!169289))

(declare-fun res!127670 () Bool)

(assert (=> d!62707 (=> (not res!127670) (not e!169289))))

(assert (=> d!62707 (= res!127670 (contains!1893 lt!131850 lt!131842))))

(assert (=> d!62707 (= (addApplyDifferent!235 lt!131850 lt!131843 (minValue!4649 thiss!1504) lt!131842) lt!131935)))

(declare-fun b!261229 () Bool)

(assert (=> b!261229 (= e!169289 (not (= lt!131842 lt!131843)))))

(assert (= (and d!62707 res!127670) b!261229))

(declare-fun m!277233 () Bool)

(assert (=> d!62707 m!277233))

(assert (=> d!62707 m!277029))

(assert (=> d!62707 m!277023))

(assert (=> d!62707 m!277023))

(assert (=> d!62707 m!277025))

(declare-fun m!277235 () Bool)

(assert (=> d!62707 m!277235))

(assert (=> b!261109 d!62707))

(declare-fun d!62709 () Bool)

(assert (=> d!62709 (= (apply!259 (+!696 lt!131844 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))) lt!131851) (get!3079 (getValueByKey!316 (toList!1953 (+!696 lt!131844 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504)))) lt!131851)))))

(declare-fun bs!9205 () Bool)

(assert (= bs!9205 d!62709))

(declare-fun m!277237 () Bool)

(assert (=> bs!9205 m!277237))

(assert (=> bs!9205 m!277237))

(declare-fun m!277239 () Bool)

(assert (=> bs!9205 m!277239))

(assert (=> b!261109 d!62709))

(declare-fun d!62711 () Bool)

(assert (=> d!62711 (= (apply!259 lt!131850 lt!131842) (get!3079 (getValueByKey!316 (toList!1953 lt!131850) lt!131842)))))

(declare-fun bs!9206 () Bool)

(assert (= bs!9206 d!62711))

(declare-fun m!277241 () Bool)

(assert (=> bs!9206 m!277241))

(assert (=> bs!9206 m!277241))

(declare-fun m!277243 () Bool)

(assert (=> bs!9206 m!277243))

(assert (=> b!261109 d!62711))

(declare-fun d!62713 () Bool)

(assert (=> d!62713 (= (apply!259 (+!696 lt!131846 (tuple2!4949 lt!131852 (zeroValue!4649 thiss!1504))) lt!131835) (apply!259 lt!131846 lt!131835))))

(declare-fun lt!131936 () Unit!8105)

(assert (=> d!62713 (= lt!131936 (choose!1284 lt!131846 lt!131852 (zeroValue!4649 thiss!1504) lt!131835))))

(declare-fun e!169290 () Bool)

(assert (=> d!62713 e!169290))

(declare-fun res!127671 () Bool)

(assert (=> d!62713 (=> (not res!127671) (not e!169290))))

(assert (=> d!62713 (= res!127671 (contains!1893 lt!131846 lt!131835))))

(assert (=> d!62713 (= (addApplyDifferent!235 lt!131846 lt!131852 (zeroValue!4649 thiss!1504) lt!131835) lt!131936)))

(declare-fun b!261230 () Bool)

(assert (=> b!261230 (= e!169290 (not (= lt!131835 lt!131852)))))

(assert (= (and d!62713 res!127671) b!261230))

(declare-fun m!277245 () Bool)

(assert (=> d!62713 m!277245))

(assert (=> d!62713 m!277013))

(assert (=> d!62713 m!277009))

(assert (=> d!62713 m!277009))

(assert (=> d!62713 m!277011))

(declare-fun m!277247 () Bool)

(assert (=> d!62713 m!277247))

(assert (=> b!261109 d!62713))

(declare-fun d!62715 () Bool)

(declare-fun e!169291 () Bool)

(assert (=> d!62715 e!169291))

(declare-fun res!127672 () Bool)

(assert (=> d!62715 (=> (not res!127672) (not e!169291))))

(declare-fun lt!131940 () ListLongMap!3875)

(assert (=> d!62715 (= res!127672 (contains!1893 lt!131940 (_1!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))))))

(declare-fun lt!131937 () List!3850)

(assert (=> d!62715 (= lt!131940 (ListLongMap!3876 lt!131937))))

(declare-fun lt!131938 () Unit!8105)

(declare-fun lt!131939 () Unit!8105)

(assert (=> d!62715 (= lt!131938 lt!131939)))

(assert (=> d!62715 (= (getValueByKey!316 lt!131937 (_1!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))))))

(assert (=> d!62715 (= lt!131939 (lemmaContainsTupThenGetReturnValue!174 lt!131937 (_1!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))))))

(assert (=> d!62715 (= lt!131937 (insertStrictlySorted!176 (toList!1953 lt!131850) (_1!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))))))

(assert (=> d!62715 (= (+!696 lt!131850 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))) lt!131940)))

(declare-fun b!261231 () Bool)

(declare-fun res!127673 () Bool)

(assert (=> b!261231 (=> (not res!127673) (not e!169291))))

(assert (=> b!261231 (= res!127673 (= (getValueByKey!316 (toList!1953 lt!131940) (_1!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))))))))

(declare-fun b!261232 () Bool)

(assert (=> b!261232 (= e!169291 (contains!1895 (toList!1953 lt!131940) (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))))))

(assert (= (and d!62715 res!127672) b!261231))

(assert (= (and b!261231 res!127673) b!261232))

(declare-fun m!277249 () Bool)

(assert (=> d!62715 m!277249))

(declare-fun m!277251 () Bool)

(assert (=> d!62715 m!277251))

(declare-fun m!277253 () Bool)

(assert (=> d!62715 m!277253))

(declare-fun m!277255 () Bool)

(assert (=> d!62715 m!277255))

(declare-fun m!277257 () Bool)

(assert (=> b!261231 m!277257))

(declare-fun m!277259 () Bool)

(assert (=> b!261232 m!277259))

(assert (=> b!261109 d!62715))

(declare-fun d!62717 () Bool)

(assert (=> d!62717 (= (apply!259 lt!131846 lt!131835) (get!3079 (getValueByKey!316 (toList!1953 lt!131846) lt!131835)))))

(declare-fun bs!9207 () Bool)

(assert (= bs!9207 d!62717))

(declare-fun m!277261 () Bool)

(assert (=> bs!9207 m!277261))

(assert (=> bs!9207 m!277261))

(declare-fun m!277263 () Bool)

(assert (=> bs!9207 m!277263))

(assert (=> b!261109 d!62717))

(declare-fun d!62719 () Bool)

(assert (=> d!62719 (= (apply!259 (+!696 lt!131850 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504))) lt!131842) (get!3079 (getValueByKey!316 (toList!1953 (+!696 lt!131850 (tuple2!4949 lt!131843 (minValue!4649 thiss!1504)))) lt!131842)))))

(declare-fun bs!9208 () Bool)

(assert (= bs!9208 d!62719))

(declare-fun m!277265 () Bool)

(assert (=> bs!9208 m!277265))

(assert (=> bs!9208 m!277265))

(declare-fun m!277267 () Bool)

(assert (=> bs!9208 m!277267))

(assert (=> b!261109 d!62719))

(declare-fun d!62721 () Bool)

(assert (=> d!62721 (contains!1893 (+!696 lt!131836 (tuple2!4949 lt!131853 (zeroValue!4649 thiss!1504))) lt!131841)))

(declare-fun lt!131943 () Unit!8105)

(declare-fun choose!1285 (ListLongMap!3875 (_ BitVec 64) V!8483 (_ BitVec 64)) Unit!8105)

(assert (=> d!62721 (= lt!131943 (choose!1285 lt!131836 lt!131853 (zeroValue!4649 thiss!1504) lt!131841))))

(assert (=> d!62721 (contains!1893 lt!131836 lt!131841)))

(assert (=> d!62721 (= (addStillContains!235 lt!131836 lt!131853 (zeroValue!4649 thiss!1504) lt!131841) lt!131943)))

(declare-fun bs!9209 () Bool)

(assert (= bs!9209 d!62721))

(assert (=> bs!9209 m!277021))

(assert (=> bs!9209 m!277021))

(assert (=> bs!9209 m!277037))

(declare-fun m!277269 () Bool)

(assert (=> bs!9209 m!277269))

(declare-fun m!277271 () Bool)

(assert (=> bs!9209 m!277271))

(assert (=> b!261109 d!62721))

(declare-fun b!261258 () Bool)

(declare-fun e!169306 () Bool)

(assert (=> b!261258 (= e!169306 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!261258 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!261259 () Bool)

(assert (=> b!261259 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> b!261259 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6317 (_values!4791 thiss!1504))))))

(declare-fun e!169309 () Bool)

(declare-fun lt!131958 () ListLongMap!3875)

(assert (=> b!261259 (= e!169309 (= (apply!259 lt!131958 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)) (get!3078 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!261260 () Bool)

(declare-fun e!169312 () ListLongMap!3875)

(declare-fun e!169308 () ListLongMap!3875)

(assert (=> b!261260 (= e!169312 e!169308)))

(declare-fun c!44449 () Bool)

(assert (=> b!261260 (= c!44449 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!261261 () Bool)

(declare-fun e!169310 () Bool)

(declare-fun isEmpty!543 (ListLongMap!3875) Bool)

(assert (=> b!261261 (= e!169310 (isEmpty!543 lt!131958))))

(declare-fun d!62723 () Bool)

(declare-fun e!169307 () Bool)

(assert (=> d!62723 e!169307))

(declare-fun res!127684 () Bool)

(assert (=> d!62723 (=> (not res!127684) (not e!169307))))

(assert (=> d!62723 (= res!127684 (not (contains!1893 lt!131958 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!62723 (= lt!131958 e!169312)))

(declare-fun c!44451 () Bool)

(assert (=> d!62723 (= c!44451 (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62723 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62723 (= (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) lt!131958)))

(declare-fun b!261262 () Bool)

(assert (=> b!261262 (= e!169312 (ListLongMap!3876 Nil!3847))))

(declare-fun b!261263 () Bool)

(declare-fun call!24945 () ListLongMap!3875)

(assert (=> b!261263 (= e!169308 call!24945)))

(declare-fun b!261264 () Bool)

(declare-fun res!127682 () Bool)

(assert (=> b!261264 (=> (not res!127682) (not e!169307))))

(assert (=> b!261264 (= res!127682 (not (contains!1893 lt!131958 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!261265 () Bool)

(declare-fun lt!131964 () Unit!8105)

(declare-fun lt!131959 () Unit!8105)

(assert (=> b!261265 (= lt!131964 lt!131959)))

(declare-fun lt!131961 () ListLongMap!3875)

(declare-fun lt!131960 () V!8483)

(declare-fun lt!131962 () (_ BitVec 64))

(declare-fun lt!131963 () (_ BitVec 64))

(assert (=> b!261265 (not (contains!1893 (+!696 lt!131961 (tuple2!4949 lt!131962 lt!131960)) lt!131963))))

(declare-fun addStillNotContains!130 (ListLongMap!3875 (_ BitVec 64) V!8483 (_ BitVec 64)) Unit!8105)

(assert (=> b!261265 (= lt!131959 (addStillNotContains!130 lt!131961 lt!131962 lt!131960 lt!131963))))

(assert (=> b!261265 (= lt!131963 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!261265 (= lt!131960 (get!3078 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!261265 (= lt!131962 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!261265 (= lt!131961 call!24945)))

(assert (=> b!261265 (= e!169308 (+!696 call!24945 (tuple2!4949 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000) (get!3078 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!261266 () Bool)

(declare-fun e!169311 () Bool)

(assert (=> b!261266 (= e!169307 e!169311)))

(declare-fun c!44452 () Bool)

(assert (=> b!261266 (= c!44452 e!169306)))

(declare-fun res!127685 () Bool)

(assert (=> b!261266 (=> (not res!127685) (not e!169306))))

(assert (=> b!261266 (= res!127685 (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261267 () Bool)

(assert (=> b!261267 (= e!169311 e!169310)))

(declare-fun c!44450 () Bool)

(assert (=> b!261267 (= c!44450 (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun bm!24942 () Bool)

(assert (=> bm!24942 (= call!24945 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4808 thiss!1504)))))

(declare-fun b!261268 () Bool)

(assert (=> b!261268 (= e!169311 e!169309)))

(assert (=> b!261268 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun res!127683 () Bool)

(assert (=> b!261268 (= res!127683 (contains!1893 lt!131958 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!261268 (=> (not res!127683) (not e!169309))))

(declare-fun b!261269 () Bool)

(assert (=> b!261269 (= e!169310 (= lt!131958 (getCurrentListMapNoExtraKeys!578 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4808 thiss!1504))))))

(assert (= (and d!62723 c!44451) b!261262))

(assert (= (and d!62723 (not c!44451)) b!261260))

(assert (= (and b!261260 c!44449) b!261265))

(assert (= (and b!261260 (not c!44449)) b!261263))

(assert (= (or b!261265 b!261263) bm!24942))

(assert (= (and d!62723 res!127684) b!261264))

(assert (= (and b!261264 res!127682) b!261266))

(assert (= (and b!261266 res!127685) b!261258))

(assert (= (and b!261266 c!44452) b!261268))

(assert (= (and b!261266 (not c!44452)) b!261267))

(assert (= (and b!261268 res!127683) b!261259))

(assert (= (and b!261267 c!44450) b!261269))

(assert (= (and b!261267 (not c!44450)) b!261261))

(declare-fun b_lambda!8327 () Bool)

(assert (=> (not b_lambda!8327) (not b!261259)))

(assert (=> b!261259 t!8933))

(declare-fun b_and!13913 () Bool)

(assert (= b_and!13911 (and (=> t!8933 result!5423) b_and!13913)))

(declare-fun b_lambda!8329 () Bool)

(assert (=> (not b_lambda!8329) (not b!261265)))

(assert (=> b!261265 t!8933))

(declare-fun b_and!13915 () Bool)

(assert (= b_and!13913 (and (=> t!8933 result!5423) b_and!13915)))

(declare-fun m!277273 () Bool)

(assert (=> b!261261 m!277273))

(declare-fun m!277275 () Bool)

(assert (=> b!261269 m!277275))

(assert (=> b!261259 m!276871))

(assert (=> b!261259 m!277047))

(assert (=> b!261259 m!276937))

(assert (=> b!261259 m!277049))

(assert (=> b!261259 m!276871))

(declare-fun m!277277 () Bool)

(assert (=> b!261259 m!277277))

(assert (=> b!261259 m!276937))

(assert (=> b!261259 m!277047))

(assert (=> b!261260 m!276871))

(assert (=> b!261260 m!276871))

(assert (=> b!261260 m!276873))

(declare-fun m!277279 () Bool)

(assert (=> d!62723 m!277279))

(assert (=> d!62723 m!276763))

(assert (=> b!261258 m!276871))

(assert (=> b!261258 m!276871))

(assert (=> b!261258 m!276873))

(declare-fun m!277281 () Bool)

(assert (=> b!261264 m!277281))

(assert (=> bm!24942 m!277275))

(assert (=> b!261268 m!276871))

(assert (=> b!261268 m!276871))

(declare-fun m!277283 () Bool)

(assert (=> b!261268 m!277283))

(declare-fun m!277285 () Bool)

(assert (=> b!261265 m!277285))

(declare-fun m!277287 () Bool)

(assert (=> b!261265 m!277287))

(assert (=> b!261265 m!276871))

(assert (=> b!261265 m!276937))

(declare-fun m!277289 () Bool)

(assert (=> b!261265 m!277289))

(assert (=> b!261265 m!277285))

(assert (=> b!261265 m!277047))

(assert (=> b!261265 m!276937))

(assert (=> b!261265 m!277049))

(declare-fun m!277291 () Bool)

(assert (=> b!261265 m!277291))

(assert (=> b!261265 m!277047))

(assert (=> b!261109 d!62723))

(declare-fun d!62725 () Bool)

(assert (=> d!62725 (= (apply!259 (+!696 lt!131844 (tuple2!4949 lt!131840 (minValue!4649 thiss!1504))) lt!131851) (apply!259 lt!131844 lt!131851))))

(declare-fun lt!131965 () Unit!8105)

(assert (=> d!62725 (= lt!131965 (choose!1284 lt!131844 lt!131840 (minValue!4649 thiss!1504) lt!131851))))

(declare-fun e!169313 () Bool)

(assert (=> d!62725 e!169313))

(declare-fun res!127686 () Bool)

(assert (=> d!62725 (=> (not res!127686) (not e!169313))))

(assert (=> d!62725 (= res!127686 (contains!1893 lt!131844 lt!131851))))

(assert (=> d!62725 (= (addApplyDifferent!235 lt!131844 lt!131840 (minValue!4649 thiss!1504) lt!131851) lt!131965)))

(declare-fun b!261270 () Bool)

(assert (=> b!261270 (= e!169313 (not (= lt!131851 lt!131840)))))

(assert (= (and d!62725 res!127686) b!261270))

(declare-fun m!277293 () Bool)

(assert (=> d!62725 m!277293))

(assert (=> d!62725 m!277015))

(assert (=> d!62725 m!277027))

(assert (=> d!62725 m!277027))

(assert (=> d!62725 m!277031))

(declare-fun m!277295 () Bool)

(assert (=> d!62725 m!277295))

(assert (=> b!261109 d!62725))

(assert (=> b!261061 d!62675))

(declare-fun d!62727 () Bool)

(assert (=> d!62727 (= (+!696 (getCurrentListMap!1476 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) (tuple2!4949 key!932 v!346)) (getCurrentListMap!1476 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)))))

(assert (=> d!62727 true))

(declare-fun _$3!64 () Unit!8105)

(assert (=> d!62727 (= (choose!1280 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) index!297 key!932 v!346 (defaultEntry!4808 thiss!1504)) _$3!64)))

(declare-fun bs!9210 () Bool)

(assert (= bs!9210 d!62727))

(assert (=> bs!9210 m!276781))

(assert (=> bs!9210 m!276961))

(assert (=> bs!9210 m!276753))

(assert (=> bs!9210 m!276781))

(assert (=> bs!9210 m!276959))

(assert (=> bs!9210 m!276743))

(assert (=> d!62645 d!62727))

(assert (=> d!62645 d!62631))

(assert (=> b!261006 d!62675))

(declare-fun d!62729 () Bool)

(assert (=> d!62729 (= (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) index!297)) (and (not (= (select (arr!5968 (_keys!6992 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5968 (_keys!6992 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260958 d!62729))

(declare-fun d!62731 () Bool)

(declare-fun e!169314 () Bool)

(assert (=> d!62731 e!169314))

(declare-fun res!127687 () Bool)

(assert (=> d!62731 (=> res!127687 e!169314)))

(declare-fun lt!131967 () Bool)

(assert (=> d!62731 (= res!127687 (not lt!131967))))

(declare-fun lt!131966 () Bool)

(assert (=> d!62731 (= lt!131967 lt!131966)))

(declare-fun lt!131968 () Unit!8105)

(declare-fun e!169315 () Unit!8105)

(assert (=> d!62731 (= lt!131968 e!169315)))

(declare-fun c!44453 () Bool)

(assert (=> d!62731 (= c!44453 lt!131966)))

(assert (=> d!62731 (= lt!131966 (containsKey!308 (toList!1953 lt!131791) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62731 (= (contains!1893 lt!131791 #b1000000000000000000000000000000000000000000000000000000000000000) lt!131967)))

(declare-fun b!261271 () Bool)

(declare-fun lt!131969 () Unit!8105)

(assert (=> b!261271 (= e!169315 lt!131969)))

(assert (=> b!261271 (= lt!131969 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131791) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261271 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131791) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261272 () Bool)

(declare-fun Unit!8119 () Unit!8105)

(assert (=> b!261272 (= e!169315 Unit!8119)))

(declare-fun b!261273 () Bool)

(assert (=> b!261273 (= e!169314 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131791) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62731 c!44453) b!261271))

(assert (= (and d!62731 (not c!44453)) b!261272))

(assert (= (and d!62731 (not res!127687)) b!261273))

(declare-fun m!277297 () Bool)

(assert (=> d!62731 m!277297))

(declare-fun m!277299 () Bool)

(assert (=> b!261271 m!277299))

(assert (=> b!261271 m!277169))

(assert (=> b!261271 m!277169))

(declare-fun m!277301 () Bool)

(assert (=> b!261271 m!277301))

(assert (=> b!261273 m!277169))

(assert (=> b!261273 m!277169))

(assert (=> b!261273 m!277301))

(assert (=> bm!24915 d!62731))

(assert (=> d!62661 d!62671))

(declare-fun b!261290 () Bool)

(declare-fun res!127699 () Bool)

(declare-fun e!169327 () Bool)

(assert (=> b!261290 (=> (not res!127699) (not e!169327))))

(declare-fun lt!131972 () SeekEntryResult!1195)

(assert (=> b!261290 (= res!127699 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6953 lt!131972)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261291 () Bool)

(declare-fun res!127696 () Bool)

(assert (=> b!261291 (= res!127696 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6950 lt!131972)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169326 () Bool)

(assert (=> b!261291 (=> (not res!127696) (not e!169326))))

(declare-fun b!261292 () Bool)

(declare-fun res!127697 () Bool)

(assert (=> b!261292 (=> (not res!127697) (not e!169327))))

(declare-fun call!24950 () Bool)

(assert (=> b!261292 (= res!127697 call!24950)))

(declare-fun e!169324 () Bool)

(assert (=> b!261292 (= e!169324 e!169327)))

(declare-fun bm!24947 () Bool)

(declare-fun c!44459 () Bool)

(assert (=> bm!24947 (= call!24950 (inRange!0 (ite c!44459 (index!6950 lt!131972) (index!6953 lt!131972)) (mask!11145 thiss!1504)))))

(declare-fun b!261293 () Bool)

(declare-fun call!24951 () Bool)

(assert (=> b!261293 (= e!169327 (not call!24951))))

(declare-fun b!261294 () Bool)

(assert (=> b!261294 (= e!169326 (not call!24951))))

(declare-fun b!261295 () Bool)

(declare-fun e!169325 () Bool)

(assert (=> b!261295 (= e!169325 e!169324)))

(declare-fun c!44458 () Bool)

(assert (=> b!261295 (= c!44458 ((_ is MissingVacant!1195) lt!131972))))

(declare-fun bm!24948 () Bool)

(assert (=> bm!24948 (= call!24951 (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261297 () Bool)

(assert (=> b!261297 (= e!169324 ((_ is Undefined!1195) lt!131972))))

(declare-fun b!261296 () Bool)

(assert (=> b!261296 (= e!169325 e!169326)))

(declare-fun res!127698 () Bool)

(assert (=> b!261296 (= res!127698 call!24950)))

(assert (=> b!261296 (=> (not res!127698) (not e!169326))))

(declare-fun d!62733 () Bool)

(assert (=> d!62733 e!169325))

(assert (=> d!62733 (= c!44459 ((_ is MissingZero!1195) lt!131972))))

(assert (=> d!62733 (= lt!131972 (seekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(assert (=> d!62733 true))

(declare-fun _$34!1125 () Unit!8105)

(assert (=> d!62733 (= (choose!1282 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)) _$34!1125)))

(assert (= (and d!62733 c!44459) b!261296))

(assert (= (and d!62733 (not c!44459)) b!261295))

(assert (= (and b!261296 res!127698) b!261291))

(assert (= (and b!261291 res!127696) b!261294))

(assert (= (and b!261295 c!44458) b!261292))

(assert (= (and b!261295 (not c!44458)) b!261297))

(assert (= (and b!261292 res!127697) b!261290))

(assert (= (and b!261290 res!127699) b!261293))

(assert (= (or b!261296 b!261292) bm!24947))

(assert (= (or b!261294 b!261293) bm!24948))

(assert (=> bm!24948 m!276735))

(declare-fun m!277303 () Bool)

(assert (=> bm!24947 m!277303))

(declare-fun m!277305 () Bool)

(assert (=> b!261291 m!277305))

(assert (=> d!62733 m!276731))

(declare-fun m!277307 () Bool)

(assert (=> b!261290 m!277307))

(assert (=> d!62661 d!62733))

(assert (=> d!62661 d!62631))

(declare-fun d!62735 () Bool)

(declare-fun lt!131973 () (_ BitVec 32))

(assert (=> d!62735 (and (bvsge lt!131973 #b00000000000000000000000000000000) (bvsle lt!131973 (bvsub (size!6318 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!169329 () (_ BitVec 32))

(assert (=> d!62735 (= lt!131973 e!169329)))

(declare-fun c!44460 () Bool)

(assert (=> d!62735 (= c!44460 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62735 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6318 (_keys!6992 thiss!1504)) (size!6318 lt!131653)))))

(assert (=> d!62735 (= (arrayCountValidKeys!0 lt!131653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))) lt!131973)))

(declare-fun bm!24949 () Bool)

(declare-fun call!24952 () (_ BitVec 32))

(assert (=> bm!24949 (= call!24952 (arrayCountValidKeys!0 lt!131653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261298 () Bool)

(declare-fun e!169328 () (_ BitVec 32))

(assert (=> b!261298 (= e!169328 (bvadd #b00000000000000000000000000000001 call!24952))))

(declare-fun b!261299 () Bool)

(assert (=> b!261299 (= e!169329 #b00000000000000000000000000000000)))

(declare-fun b!261300 () Bool)

(assert (=> b!261300 (= e!169328 call!24952)))

(declare-fun b!261301 () Bool)

(assert (=> b!261301 (= e!169329 e!169328)))

(declare-fun c!44461 () Bool)

(assert (=> b!261301 (= c!44461 (validKeyInArray!0 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!62735 c!44460) b!261299))

(assert (= (and d!62735 (not c!44460)) b!261301))

(assert (= (and b!261301 c!44461) b!261298))

(assert (= (and b!261301 (not c!44461)) b!261300))

(assert (= (or b!261298 b!261300) bm!24949))

(declare-fun m!277309 () Bool)

(assert (=> bm!24949 m!277309))

(declare-fun m!277311 () Bool)

(assert (=> b!261301 m!277311))

(assert (=> b!261301 m!277311))

(declare-fun m!277313 () Bool)

(assert (=> b!261301 m!277313))

(assert (=> bm!24890 d!62735))

(declare-fun b!261302 () Bool)

(declare-fun e!169332 () Bool)

(declare-fun e!169331 () Bool)

(assert (=> b!261302 (= e!169332 e!169331)))

(declare-fun c!44462 () Bool)

(assert (=> b!261302 (= c!44462 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24950 () Bool)

(declare-fun call!24953 () Bool)

(assert (=> bm!24950 (= call!24953 (arrayNoDuplicates!0 (_keys!6992 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44462 (Cons!3847 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000) Nil!3848) Nil!3848)))))

(declare-fun b!261303 () Bool)

(assert (=> b!261303 (= e!169331 call!24953)))

(declare-fun b!261304 () Bool)

(declare-fun e!169333 () Bool)

(assert (=> b!261304 (= e!169333 (contains!1896 Nil!3848 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!261305 () Bool)

(declare-fun e!169330 () Bool)

(assert (=> b!261305 (= e!169330 e!169332)))

(declare-fun res!127700 () Bool)

(assert (=> b!261305 (=> (not res!127700) (not e!169332))))

(assert (=> b!261305 (= res!127700 (not e!169333))))

(declare-fun res!127702 () Bool)

(assert (=> b!261305 (=> (not res!127702) (not e!169333))))

(assert (=> b!261305 (= res!127702 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!62737 () Bool)

(declare-fun res!127701 () Bool)

(assert (=> d!62737 (=> res!127701 e!169330)))

(assert (=> d!62737 (= res!127701 (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62737 (= (arrayNoDuplicates!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 Nil!3848) e!169330)))

(declare-fun b!261306 () Bool)

(assert (=> b!261306 (= e!169331 call!24953)))

(assert (= (and d!62737 (not res!127701)) b!261305))

(assert (= (and b!261305 res!127702) b!261304))

(assert (= (and b!261305 res!127700) b!261302))

(assert (= (and b!261302 c!44462) b!261306))

(assert (= (and b!261302 (not c!44462)) b!261303))

(assert (= (or b!261306 b!261303) bm!24950))

(assert (=> b!261302 m!276871))

(assert (=> b!261302 m!276871))

(assert (=> b!261302 m!276873))

(assert (=> bm!24950 m!276871))

(declare-fun m!277315 () Bool)

(assert (=> bm!24950 m!277315))

(assert (=> b!261304 m!276871))

(assert (=> b!261304 m!276871))

(declare-fun m!277317 () Bool)

(assert (=> b!261304 m!277317))

(assert (=> b!261305 m!276871))

(assert (=> b!261305 m!276871))

(assert (=> b!261305 m!276873))

(assert (=> b!260912 d!62737))

(declare-fun d!62739 () Bool)

(assert (=> d!62739 (= (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!261104 d!62739))

(assert (=> b!260910 d!62629))

(declare-fun d!62741 () Bool)

(declare-fun e!169334 () Bool)

(assert (=> d!62741 e!169334))

(declare-fun res!127703 () Bool)

(assert (=> d!62741 (=> res!127703 e!169334)))

(declare-fun lt!131975 () Bool)

(assert (=> d!62741 (= res!127703 (not lt!131975))))

(declare-fun lt!131974 () Bool)

(assert (=> d!62741 (= lt!131975 lt!131974)))

(declare-fun lt!131976 () Unit!8105)

(declare-fun e!169335 () Unit!8105)

(assert (=> d!62741 (= lt!131976 e!169335)))

(declare-fun c!44463 () Bool)

(assert (=> d!62741 (= c!44463 lt!131974)))

(assert (=> d!62741 (= lt!131974 (containsKey!308 (toList!1953 lt!131856) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62741 (= (contains!1893 lt!131856 #b0000000000000000000000000000000000000000000000000000000000000000) lt!131975)))

(declare-fun b!261307 () Bool)

(declare-fun lt!131977 () Unit!8105)

(assert (=> b!261307 (= e!169335 lt!131977)))

(assert (=> b!261307 (= lt!131977 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131856) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261307 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131856) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261308 () Bool)

(declare-fun Unit!8120 () Unit!8105)

(assert (=> b!261308 (= e!169335 Unit!8120)))

(declare-fun b!261309 () Bool)

(assert (=> b!261309 (= e!169334 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131856) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62741 c!44463) b!261307))

(assert (= (and d!62741 (not c!44463)) b!261308))

(assert (= (and d!62741 (not res!127703)) b!261309))

(declare-fun m!277319 () Bool)

(assert (=> d!62741 m!277319))

(declare-fun m!277321 () Bool)

(assert (=> b!261307 m!277321))

(declare-fun m!277323 () Bool)

(assert (=> b!261307 m!277323))

(assert (=> b!261307 m!277323))

(declare-fun m!277325 () Bool)

(assert (=> b!261307 m!277325))

(assert (=> b!261309 m!277323))

(assert (=> b!261309 m!277323))

(assert (=> b!261309 m!277325))

(assert (=> bm!24930 d!62741))

(declare-fun d!62743 () Bool)

(assert (=> d!62743 (= (inRange!0 (index!6951 lt!131861) (mask!11145 thiss!1504)) (and (bvsge (index!6951 lt!131861) #b00000000000000000000000000000000) (bvslt (index!6951 lt!131861) (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!261124 d!62743))

(assert (=> b!260934 d!62739))

(declare-fun d!62745 () Bool)

(declare-fun res!127704 () Bool)

(declare-fun e!169336 () Bool)

(assert (=> d!62745 (=> res!127704 e!169336)))

(assert (=> d!62745 (= res!127704 (= (select (arr!5968 (_keys!6992 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!62745 (= (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!169336)))

(declare-fun b!261310 () Bool)

(declare-fun e!169337 () Bool)

(assert (=> b!261310 (= e!169336 e!169337)))

(declare-fun res!127705 () Bool)

(assert (=> b!261310 (=> (not res!127705) (not e!169337))))

(assert (=> b!261310 (= res!127705 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261311 () Bool)

(assert (=> b!261311 (= e!169337 (arrayContainsKey!0 (_keys!6992 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!62745 (not res!127704)) b!261310))

(assert (= (and b!261310 res!127705) b!261311))

(declare-fun m!277327 () Bool)

(assert (=> d!62745 m!277327))

(declare-fun m!277329 () Bool)

(assert (=> b!261311 m!277329))

(assert (=> b!261028 d!62745))

(declare-fun d!62747 () Bool)

(assert (=> d!62747 (arrayContainsKey!0 lt!131653 lt!131718 #b00000000000000000000000000000000)))

(declare-fun lt!131978 () Unit!8105)

(assert (=> d!62747 (= lt!131978 (choose!13 lt!131653 lt!131718 #b00000000000000000000000000000000))))

(assert (=> d!62747 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!62747 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131653 lt!131718 #b00000000000000000000000000000000) lt!131978)))

(declare-fun bs!9211 () Bool)

(assert (= bs!9211 d!62747))

(assert (=> bs!9211 m!276879))

(declare-fun m!277331 () Bool)

(assert (=> bs!9211 m!277331))

(assert (=> b!260946 d!62747))

(declare-fun d!62749 () Bool)

(declare-fun res!127706 () Bool)

(declare-fun e!169338 () Bool)

(assert (=> d!62749 (=> res!127706 e!169338)))

(assert (=> d!62749 (= res!127706 (= (select (arr!5968 lt!131653) #b00000000000000000000000000000000) lt!131718))))

(assert (=> d!62749 (= (arrayContainsKey!0 lt!131653 lt!131718 #b00000000000000000000000000000000) e!169338)))

(declare-fun b!261312 () Bool)

(declare-fun e!169339 () Bool)

(assert (=> b!261312 (= e!169338 e!169339)))

(declare-fun res!127707 () Bool)

(assert (=> b!261312 (=> (not res!127707) (not e!169339))))

(assert (=> b!261312 (= res!127707 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 lt!131653)))))

(declare-fun b!261313 () Bool)

(assert (=> b!261313 (= e!169339 (arrayContainsKey!0 lt!131653 lt!131718 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62749 (not res!127706)) b!261312))

(assert (= (and b!261312 res!127707) b!261313))

(assert (=> d!62749 m!276861))

(declare-fun m!277333 () Bool)

(assert (=> b!261313 m!277333))

(assert (=> b!260946 d!62749))

(declare-fun b!261314 () Bool)

(declare-fun e!169341 () SeekEntryResult!1195)

(declare-fun lt!131979 () SeekEntryResult!1195)

(assert (=> b!261314 (= e!169341 (MissingZero!1195 (index!6952 lt!131979)))))

(declare-fun b!261315 () Bool)

(assert (=> b!261315 (= e!169341 (seekKeyOrZeroReturnVacant!0 (x!25159 lt!131979) (index!6952 lt!131979) (index!6952 lt!131979) (select (arr!5968 lt!131653) #b00000000000000000000000000000000) lt!131653 (mask!11145 thiss!1504)))))

(declare-fun b!261316 () Bool)

(declare-fun e!169340 () SeekEntryResult!1195)

(assert (=> b!261316 (= e!169340 Undefined!1195)))

(declare-fun d!62751 () Bool)

(declare-fun lt!131980 () SeekEntryResult!1195)

(assert (=> d!62751 (and (or ((_ is Undefined!1195) lt!131980) (not ((_ is Found!1195) lt!131980)) (and (bvsge (index!6951 lt!131980) #b00000000000000000000000000000000) (bvslt (index!6951 lt!131980) (size!6318 lt!131653)))) (or ((_ is Undefined!1195) lt!131980) ((_ is Found!1195) lt!131980) (not ((_ is MissingZero!1195) lt!131980)) (and (bvsge (index!6950 lt!131980) #b00000000000000000000000000000000) (bvslt (index!6950 lt!131980) (size!6318 lt!131653)))) (or ((_ is Undefined!1195) lt!131980) ((_ is Found!1195) lt!131980) ((_ is MissingZero!1195) lt!131980) (not ((_ is MissingVacant!1195) lt!131980)) (and (bvsge (index!6953 lt!131980) #b00000000000000000000000000000000) (bvslt (index!6953 lt!131980) (size!6318 lt!131653)))) (or ((_ is Undefined!1195) lt!131980) (ite ((_ is Found!1195) lt!131980) (= (select (arr!5968 lt!131653) (index!6951 lt!131980)) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1195) lt!131980) (= (select (arr!5968 lt!131653) (index!6950 lt!131980)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1195) lt!131980) (= (select (arr!5968 lt!131653) (index!6953 lt!131980)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62751 (= lt!131980 e!169340)))

(declare-fun c!44465 () Bool)

(assert (=> d!62751 (= c!44465 (and ((_ is Intermediate!1195) lt!131979) (undefined!2007 lt!131979)))))

(assert (=> d!62751 (= lt!131979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) (mask!11145 thiss!1504)) (select (arr!5968 lt!131653) #b00000000000000000000000000000000) lt!131653 (mask!11145 thiss!1504)))))

(assert (=> d!62751 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62751 (= (seekEntryOrOpen!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) lt!131653 (mask!11145 thiss!1504)) lt!131980)))

(declare-fun b!261317 () Bool)

(declare-fun c!44464 () Bool)

(declare-fun lt!131981 () (_ BitVec 64))

(assert (=> b!261317 (= c!44464 (= lt!131981 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169342 () SeekEntryResult!1195)

(assert (=> b!261317 (= e!169342 e!169341)))

(declare-fun b!261318 () Bool)

(assert (=> b!261318 (= e!169342 (Found!1195 (index!6952 lt!131979)))))

(declare-fun b!261319 () Bool)

(assert (=> b!261319 (= e!169340 e!169342)))

(assert (=> b!261319 (= lt!131981 (select (arr!5968 lt!131653) (index!6952 lt!131979)))))

(declare-fun c!44466 () Bool)

(assert (=> b!261319 (= c!44466 (= lt!131981 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (= (and d!62751 c!44465) b!261316))

(assert (= (and d!62751 (not c!44465)) b!261319))

(assert (= (and b!261319 c!44466) b!261318))

(assert (= (and b!261319 (not c!44466)) b!261317))

(assert (= (and b!261317 c!44464) b!261314))

(assert (= (and b!261317 (not c!44464)) b!261315))

(assert (=> b!261315 m!276861))

(declare-fun m!277335 () Bool)

(assert (=> b!261315 m!277335))

(declare-fun m!277337 () Bool)

(assert (=> d!62751 m!277337))

(assert (=> d!62751 m!276861))

(declare-fun m!277339 () Bool)

(assert (=> d!62751 m!277339))

(declare-fun m!277341 () Bool)

(assert (=> d!62751 m!277341))

(assert (=> d!62751 m!276763))

(assert (=> d!62751 m!276861))

(assert (=> d!62751 m!277337))

(declare-fun m!277343 () Bool)

(assert (=> d!62751 m!277343))

(declare-fun m!277345 () Bool)

(assert (=> d!62751 m!277345))

(declare-fun m!277347 () Bool)

(assert (=> b!261319 m!277347))

(assert (=> b!260946 d!62751))

(assert (=> b!260944 d!62675))

(declare-fun d!62753 () Bool)

(assert (=> d!62753 (= (validKeyInArray!0 (select (arr!5968 lt!131653) index!297)) (and (not (= (select (arr!5968 lt!131653) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5968 lt!131653) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!261039 d!62753))

(declare-fun d!62755 () Bool)

(declare-fun lt!131982 () (_ BitVec 32))

(assert (=> d!62755 (and (bvsge lt!131982 #b00000000000000000000000000000000) (bvsle lt!131982 (bvsub (size!6318 lt!131653) index!297)))))

(declare-fun e!169344 () (_ BitVec 32))

(assert (=> d!62755 (= lt!131982 e!169344)))

(declare-fun c!44467 () Bool)

(assert (=> d!62755 (= c!44467 (bvsge index!297 (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (=> d!62755 (and (bvsle index!297 (bvadd index!297 #b00000000000000000000000000000001)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd index!297 #b00000000000000000000000000000001) (size!6318 lt!131653)))))

(assert (=> d!62755 (= (arrayCountValidKeys!0 lt!131653 index!297 (bvadd index!297 #b00000000000000000000000000000001)) lt!131982)))

(declare-fun bm!24951 () Bool)

(declare-fun call!24954 () (_ BitVec 32))

(assert (=> bm!24951 (= call!24954 (arrayCountValidKeys!0 lt!131653 (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(declare-fun b!261320 () Bool)

(declare-fun e!169343 () (_ BitVec 32))

(assert (=> b!261320 (= e!169343 (bvadd #b00000000000000000000000000000001 call!24954))))

(declare-fun b!261321 () Bool)

(assert (=> b!261321 (= e!169344 #b00000000000000000000000000000000)))

(declare-fun b!261322 () Bool)

(assert (=> b!261322 (= e!169343 call!24954)))

(declare-fun b!261323 () Bool)

(assert (=> b!261323 (= e!169344 e!169343)))

(declare-fun c!44468 () Bool)

(assert (=> b!261323 (= c!44468 (validKeyInArray!0 (select (arr!5968 lt!131653) index!297)))))

(assert (= (and d!62755 c!44467) b!261321))

(assert (= (and d!62755 (not c!44467)) b!261323))

(assert (= (and b!261323 c!44468) b!261320))

(assert (= (and b!261323 (not c!44468)) b!261322))

(assert (= (or b!261320 b!261322) bm!24951))

(declare-fun m!277349 () Bool)

(assert (=> bm!24951 m!277349))

(assert (=> b!261323 m!276967))

(assert (=> b!261323 m!276967))

(assert (=> b!261323 m!276969))

(assert (=> d!62647 d!62755))

(declare-fun d!62757 () Bool)

(assert (=> d!62757 (= (arrayCountValidKeys!0 lt!131653 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(assert (=> d!62757 true))

(declare-fun _$85!30 () Unit!8105)

(assert (=> d!62757 (= (choose!2 lt!131653 index!297) _$85!30)))

(declare-fun bs!9212 () Bool)

(assert (= bs!9212 d!62757))

(assert (=> bs!9212 m!276963))

(assert (=> d!62647 d!62757))

(assert (=> bm!24928 d!62723))

(declare-fun d!62759 () Bool)

(assert (=> d!62759 (= (apply!259 (+!696 lt!131781 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))) lt!131770) (apply!259 lt!131781 lt!131770))))

(declare-fun lt!131983 () Unit!8105)

(assert (=> d!62759 (= lt!131983 (choose!1284 lt!131781 lt!131787 (zeroValue!4649 thiss!1504) lt!131770))))

(declare-fun e!169345 () Bool)

(assert (=> d!62759 e!169345))

(declare-fun res!127708 () Bool)

(assert (=> d!62759 (=> (not res!127708) (not e!169345))))

(assert (=> d!62759 (= res!127708 (contains!1893 lt!131781 lt!131770))))

(assert (=> d!62759 (= (addApplyDifferent!235 lt!131781 lt!131787 (zeroValue!4649 thiss!1504) lt!131770) lt!131983)))

(declare-fun b!261324 () Bool)

(assert (=> b!261324 (= e!169345 (not (= lt!131770 lt!131787)))))

(assert (= (and d!62759 res!127708) b!261324))

(declare-fun m!277351 () Bool)

(assert (=> d!62759 m!277351))

(assert (=> d!62759 m!276901))

(assert (=> d!62759 m!276897))

(assert (=> d!62759 m!276897))

(assert (=> d!62759 m!276899))

(declare-fun m!277353 () Bool)

(assert (=> d!62759 m!277353))

(assert (=> b!261014 d!62759))

(declare-fun d!62761 () Bool)

(declare-fun e!169346 () Bool)

(assert (=> d!62761 e!169346))

(declare-fun res!127709 () Bool)

(assert (=> d!62761 (=> (not res!127709) (not e!169346))))

(declare-fun lt!131987 () ListLongMap!3875)

(assert (=> d!62761 (= res!127709 (contains!1893 lt!131987 (_1!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))))))

(declare-fun lt!131984 () List!3850)

(assert (=> d!62761 (= lt!131987 (ListLongMap!3876 lt!131984))))

(declare-fun lt!131985 () Unit!8105)

(declare-fun lt!131986 () Unit!8105)

(assert (=> d!62761 (= lt!131985 lt!131986)))

(assert (=> d!62761 (= (getValueByKey!316 lt!131984 (_1!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62761 (= lt!131986 (lemmaContainsTupThenGetReturnValue!174 lt!131984 (_1!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62761 (= lt!131984 (insertStrictlySorted!176 (toList!1953 lt!131781) (_1!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62761 (= (+!696 lt!131781 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))) lt!131987)))

(declare-fun b!261325 () Bool)

(declare-fun res!127710 () Bool)

(assert (=> b!261325 (=> (not res!127710) (not e!169346))))

(assert (=> b!261325 (= res!127710 (= (getValueByKey!316 (toList!1953 lt!131987) (_1!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))))))))

(declare-fun b!261326 () Bool)

(assert (=> b!261326 (= e!169346 (contains!1895 (toList!1953 lt!131987) (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))))))

(assert (= (and d!62761 res!127709) b!261325))

(assert (= (and b!261325 res!127710) b!261326))

(declare-fun m!277355 () Bool)

(assert (=> d!62761 m!277355))

(declare-fun m!277357 () Bool)

(assert (=> d!62761 m!277357))

(declare-fun m!277359 () Bool)

(assert (=> d!62761 m!277359))

(declare-fun m!277361 () Bool)

(assert (=> d!62761 m!277361))

(declare-fun m!277363 () Bool)

(assert (=> b!261325 m!277363))

(declare-fun m!277365 () Bool)

(assert (=> b!261326 m!277365))

(assert (=> b!261014 d!62761))

(declare-fun d!62763 () Bool)

(assert (=> d!62763 (contains!1893 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))) lt!131776)))

(declare-fun lt!131988 () Unit!8105)

(assert (=> d!62763 (= lt!131988 (choose!1285 lt!131771 lt!131788 (zeroValue!4649 thiss!1504) lt!131776))))

(assert (=> d!62763 (contains!1893 lt!131771 lt!131776)))

(assert (=> d!62763 (= (addStillContains!235 lt!131771 lt!131788 (zeroValue!4649 thiss!1504) lt!131776) lt!131988)))

(declare-fun bs!9213 () Bool)

(assert (= bs!9213 d!62763))

(assert (=> bs!9213 m!276909))

(assert (=> bs!9213 m!276909))

(assert (=> bs!9213 m!276925))

(declare-fun m!277367 () Bool)

(assert (=> bs!9213 m!277367))

(declare-fun m!277369 () Bool)

(assert (=> bs!9213 m!277369))

(assert (=> b!261014 d!62763))

(declare-fun d!62765 () Bool)

(assert (=> d!62765 (= (apply!259 (+!696 lt!131785 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))) lt!131777) (apply!259 lt!131785 lt!131777))))

(declare-fun lt!131989 () Unit!8105)

(assert (=> d!62765 (= lt!131989 (choose!1284 lt!131785 lt!131778 (minValue!4649 thiss!1504) lt!131777))))

(declare-fun e!169347 () Bool)

(assert (=> d!62765 e!169347))

(declare-fun res!127711 () Bool)

(assert (=> d!62765 (=> (not res!127711) (not e!169347))))

(assert (=> d!62765 (= res!127711 (contains!1893 lt!131785 lt!131777))))

(assert (=> d!62765 (= (addApplyDifferent!235 lt!131785 lt!131778 (minValue!4649 thiss!1504) lt!131777) lt!131989)))

(declare-fun b!261327 () Bool)

(assert (=> b!261327 (= e!169347 (not (= lt!131777 lt!131778)))))

(assert (= (and d!62765 res!127711) b!261327))

(declare-fun m!277371 () Bool)

(assert (=> d!62765 m!277371))

(assert (=> d!62765 m!276917))

(assert (=> d!62765 m!276911))

(assert (=> d!62765 m!276911))

(assert (=> d!62765 m!276913))

(declare-fun m!277373 () Bool)

(assert (=> d!62765 m!277373))

(assert (=> b!261014 d!62765))

(declare-fun b!261328 () Bool)

(declare-fun e!169348 () Bool)

(assert (=> b!261328 (= e!169348 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (=> b!261328 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!261329 () Bool)

(assert (=> b!261329 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(assert (=> b!261329 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6317 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))))))))

(declare-fun e!169351 () Bool)

(declare-fun lt!131990 () ListLongMap!3875)

(assert (=> b!261329 (= e!169351 (= (apply!259 lt!131990 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) (get!3078 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!261330 () Bool)

(declare-fun e!169354 () ListLongMap!3875)

(declare-fun e!169350 () ListLongMap!3875)

(assert (=> b!261330 (= e!169354 e!169350)))

(declare-fun c!44469 () Bool)

(assert (=> b!261330 (= c!44469 (validKeyInArray!0 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun b!261331 () Bool)

(declare-fun e!169352 () Bool)

(assert (=> b!261331 (= e!169352 (isEmpty!543 lt!131990))))

(declare-fun d!62767 () Bool)

(declare-fun e!169349 () Bool)

(assert (=> d!62767 e!169349))

(declare-fun res!127714 () Bool)

(assert (=> d!62767 (=> (not res!127714) (not e!169349))))

(assert (=> d!62767 (= res!127714 (not (contains!1893 lt!131990 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!62767 (= lt!131990 e!169354)))

(declare-fun c!44471 () Bool)

(assert (=> d!62767 (= c!44471 (bvsge #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(assert (=> d!62767 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62767 (= (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4808 thiss!1504)) lt!131990)))

(declare-fun b!261332 () Bool)

(assert (=> b!261332 (= e!169354 (ListLongMap!3876 Nil!3847))))

(declare-fun b!261333 () Bool)

(declare-fun call!24955 () ListLongMap!3875)

(assert (=> b!261333 (= e!169350 call!24955)))

(declare-fun b!261334 () Bool)

(declare-fun res!127712 () Bool)

(assert (=> b!261334 (=> (not res!127712) (not e!169349))))

(assert (=> b!261334 (= res!127712 (not (contains!1893 lt!131990 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!261335 () Bool)

(declare-fun lt!131996 () Unit!8105)

(declare-fun lt!131991 () Unit!8105)

(assert (=> b!261335 (= lt!131996 lt!131991)))

(declare-fun lt!131995 () (_ BitVec 64))

(declare-fun lt!131994 () (_ BitVec 64))

(declare-fun lt!131993 () ListLongMap!3875)

(declare-fun lt!131992 () V!8483)

(assert (=> b!261335 (not (contains!1893 (+!696 lt!131993 (tuple2!4949 lt!131994 lt!131992)) lt!131995))))

(assert (=> b!261335 (= lt!131991 (addStillNotContains!130 lt!131993 lt!131994 lt!131992 lt!131995))))

(assert (=> b!261335 (= lt!131995 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!261335 (= lt!131992 (get!3078 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!261335 (= lt!131994 (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))

(assert (=> b!261335 (= lt!131993 call!24955)))

(assert (=> b!261335 (= e!169350 (+!696 call!24955 (tuple2!4949 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) (get!3078 (select (arr!5967 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!261336 () Bool)

(declare-fun e!169353 () Bool)

(assert (=> b!261336 (= e!169349 e!169353)))

(declare-fun c!44472 () Bool)

(assert (=> b!261336 (= c!44472 e!169348)))

(declare-fun res!127715 () Bool)

(assert (=> b!261336 (=> (not res!127715) (not e!169348))))

(assert (=> b!261336 (= res!127715 (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun b!261337 () Bool)

(assert (=> b!261337 (= e!169353 e!169352)))

(declare-fun c!44470 () Bool)

(assert (=> b!261337 (= c!44470 (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun bm!24952 () Bool)

(assert (=> bm!24952 (= call!24955 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4808 thiss!1504)))))

(declare-fun b!261338 () Bool)

(assert (=> b!261338 (= e!169353 e!169351)))

(assert (=> b!261338 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6318 lt!131653)))))

(declare-fun res!127713 () Bool)

(assert (=> b!261338 (= res!127713 (contains!1893 lt!131990 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (=> b!261338 (=> (not res!127713) (not e!169351))))

(declare-fun b!261339 () Bool)

(assert (=> b!261339 (= e!169352 (= lt!131990 (getCurrentListMapNoExtraKeys!578 lt!131653 (array!12609 (store (arr!5967 (_values!4791 thiss!1504)) index!297 (ValueCellFull!2970 v!346)) (size!6317 (_values!4791 thiss!1504))) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4808 thiss!1504))))))

(assert (= (and d!62767 c!44471) b!261332))

(assert (= (and d!62767 (not c!44471)) b!261330))

(assert (= (and b!261330 c!44469) b!261335))

(assert (= (and b!261330 (not c!44469)) b!261333))

(assert (= (or b!261335 b!261333) bm!24952))

(assert (= (and d!62767 res!127714) b!261334))

(assert (= (and b!261334 res!127712) b!261336))

(assert (= (and b!261336 res!127715) b!261328))

(assert (= (and b!261336 c!44472) b!261338))

(assert (= (and b!261336 (not c!44472)) b!261337))

(assert (= (and b!261338 res!127713) b!261329))

(assert (= (and b!261337 c!44470) b!261339))

(assert (= (and b!261337 (not c!44470)) b!261331))

(declare-fun b_lambda!8331 () Bool)

(assert (=> (not b_lambda!8331) (not b!261329)))

(assert (=> b!261329 t!8933))

(declare-fun b_and!13917 () Bool)

(assert (= b_and!13915 (and (=> t!8933 result!5423) b_and!13917)))

(declare-fun b_lambda!8333 () Bool)

(assert (=> (not b_lambda!8333) (not b!261335)))

(assert (=> b!261335 t!8933))

(declare-fun b_and!13919 () Bool)

(assert (= b_and!13917 (and (=> t!8933 result!5423) b_and!13919)))

(declare-fun m!277375 () Bool)

(assert (=> b!261331 m!277375))

(declare-fun m!277377 () Bool)

(assert (=> b!261339 m!277377))

(assert (=> b!261329 m!276861))

(assert (=> b!261329 m!276935))

(assert (=> b!261329 m!276937))

(assert (=> b!261329 m!276939))

(assert (=> b!261329 m!276861))

(declare-fun m!277379 () Bool)

(assert (=> b!261329 m!277379))

(assert (=> b!261329 m!276937))

(assert (=> b!261329 m!276935))

(assert (=> b!261330 m!276861))

(assert (=> b!261330 m!276861))

(assert (=> b!261330 m!276863))

(declare-fun m!277381 () Bool)

(assert (=> d!62767 m!277381))

(assert (=> d!62767 m!276763))

(assert (=> b!261328 m!276861))

(assert (=> b!261328 m!276861))

(assert (=> b!261328 m!276863))

(declare-fun m!277383 () Bool)

(assert (=> b!261334 m!277383))

(assert (=> bm!24952 m!277377))

(assert (=> b!261338 m!276861))

(assert (=> b!261338 m!276861))

(declare-fun m!277385 () Bool)

(assert (=> b!261338 m!277385))

(declare-fun m!277387 () Bool)

(assert (=> b!261335 m!277387))

(declare-fun m!277389 () Bool)

(assert (=> b!261335 m!277389))

(assert (=> b!261335 m!276861))

(assert (=> b!261335 m!276937))

(declare-fun m!277391 () Bool)

(assert (=> b!261335 m!277391))

(assert (=> b!261335 m!277387))

(assert (=> b!261335 m!276935))

(assert (=> b!261335 m!276937))

(assert (=> b!261335 m!276939))

(declare-fun m!277393 () Bool)

(assert (=> b!261335 m!277393))

(assert (=> b!261335 m!276935))

(assert (=> b!261014 d!62767))

(declare-fun d!62769 () Bool)

(assert (=> d!62769 (= (apply!259 lt!131785 lt!131777) (get!3079 (getValueByKey!316 (toList!1953 lt!131785) lt!131777)))))

(declare-fun bs!9214 () Bool)

(assert (= bs!9214 d!62769))

(declare-fun m!277395 () Bool)

(assert (=> bs!9214 m!277395))

(assert (=> bs!9214 m!277395))

(declare-fun m!277397 () Bool)

(assert (=> bs!9214 m!277397))

(assert (=> b!261014 d!62769))

(declare-fun d!62771 () Bool)

(declare-fun e!169355 () Bool)

(assert (=> d!62771 e!169355))

(declare-fun res!127716 () Bool)

(assert (=> d!62771 (=> (not res!127716) (not e!169355))))

(declare-fun lt!132000 () ListLongMap!3875)

(assert (=> d!62771 (= res!127716 (contains!1893 lt!132000 (_1!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))))))

(declare-fun lt!131997 () List!3850)

(assert (=> d!62771 (= lt!132000 (ListLongMap!3876 lt!131997))))

(declare-fun lt!131998 () Unit!8105)

(declare-fun lt!131999 () Unit!8105)

(assert (=> d!62771 (= lt!131998 lt!131999)))

(assert (=> d!62771 (= (getValueByKey!316 lt!131997 (_1!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))))))

(assert (=> d!62771 (= lt!131999 (lemmaContainsTupThenGetReturnValue!174 lt!131997 (_1!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))))))

(assert (=> d!62771 (= lt!131997 (insertStrictlySorted!176 (toList!1953 lt!131779) (_1!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))))))

(assert (=> d!62771 (= (+!696 lt!131779 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))) lt!132000)))

(declare-fun b!261340 () Bool)

(declare-fun res!127717 () Bool)

(assert (=> b!261340 (=> (not res!127717) (not e!169355))))

(assert (=> b!261340 (= res!127717 (= (getValueByKey!316 (toList!1953 lt!132000) (_1!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))))))))

(declare-fun b!261341 () Bool)

(assert (=> b!261341 (= e!169355 (contains!1895 (toList!1953 lt!132000) (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))))))

(assert (= (and d!62771 res!127716) b!261340))

(assert (= (and b!261340 res!127717) b!261341))

(declare-fun m!277399 () Bool)

(assert (=> d!62771 m!277399))

(declare-fun m!277401 () Bool)

(assert (=> d!62771 m!277401))

(declare-fun m!277403 () Bool)

(assert (=> d!62771 m!277403))

(declare-fun m!277405 () Bool)

(assert (=> d!62771 m!277405))

(declare-fun m!277407 () Bool)

(assert (=> b!261340 m!277407))

(declare-fun m!277409 () Bool)

(assert (=> b!261341 m!277409))

(assert (=> b!261014 d!62771))

(declare-fun d!62773 () Bool)

(assert (=> d!62773 (= (apply!259 (+!696 lt!131785 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))) lt!131777) (get!3079 (getValueByKey!316 (toList!1953 (+!696 lt!131785 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))) lt!131777)))))

(declare-fun bs!9215 () Bool)

(assert (= bs!9215 d!62773))

(declare-fun m!277411 () Bool)

(assert (=> bs!9215 m!277411))

(assert (=> bs!9215 m!277411))

(declare-fun m!277413 () Bool)

(assert (=> bs!9215 m!277413))

(assert (=> b!261014 d!62773))

(declare-fun d!62775 () Bool)

(assert (=> d!62775 (= (apply!259 (+!696 lt!131781 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504))) lt!131770) (get!3079 (getValueByKey!316 (toList!1953 (+!696 lt!131781 (tuple2!4949 lt!131787 (zeroValue!4649 thiss!1504)))) lt!131770)))))

(declare-fun bs!9216 () Bool)

(assert (= bs!9216 d!62775))

(declare-fun m!277415 () Bool)

(assert (=> bs!9216 m!277415))

(assert (=> bs!9216 m!277415))

(declare-fun m!277417 () Bool)

(assert (=> bs!9216 m!277417))

(assert (=> b!261014 d!62775))

(declare-fun d!62777 () Bool)

(declare-fun e!169356 () Bool)

(assert (=> d!62777 e!169356))

(declare-fun res!127718 () Bool)

(assert (=> d!62777 (=> res!127718 e!169356)))

(declare-fun lt!132002 () Bool)

(assert (=> d!62777 (= res!127718 (not lt!132002))))

(declare-fun lt!132001 () Bool)

(assert (=> d!62777 (= lt!132002 lt!132001)))

(declare-fun lt!132003 () Unit!8105)

(declare-fun e!169357 () Unit!8105)

(assert (=> d!62777 (= lt!132003 e!169357)))

(declare-fun c!44473 () Bool)

(assert (=> d!62777 (= c!44473 lt!132001)))

(assert (=> d!62777 (= lt!132001 (containsKey!308 (toList!1953 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))) lt!131776))))

(assert (=> d!62777 (= (contains!1893 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))) lt!131776) lt!132002)))

(declare-fun b!261342 () Bool)

(declare-fun lt!132004 () Unit!8105)

(assert (=> b!261342 (= e!169357 lt!132004)))

(assert (=> b!261342 (= lt!132004 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))) lt!131776))))

(assert (=> b!261342 (isDefined!258 (getValueByKey!316 (toList!1953 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))) lt!131776))))

(declare-fun b!261343 () Bool)

(declare-fun Unit!8121 () Unit!8105)

(assert (=> b!261343 (= e!169357 Unit!8121)))

(declare-fun b!261344 () Bool)

(assert (=> b!261344 (= e!169356 (isDefined!258 (getValueByKey!316 (toList!1953 (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))) lt!131776)))))

(assert (= (and d!62777 c!44473) b!261342))

(assert (= (and d!62777 (not c!44473)) b!261343))

(assert (= (and d!62777 (not res!127718)) b!261344))

(declare-fun m!277419 () Bool)

(assert (=> d!62777 m!277419))

(declare-fun m!277421 () Bool)

(assert (=> b!261342 m!277421))

(declare-fun m!277423 () Bool)

(assert (=> b!261342 m!277423))

(assert (=> b!261342 m!277423))

(declare-fun m!277425 () Bool)

(assert (=> b!261342 m!277425))

(assert (=> b!261344 m!277423))

(assert (=> b!261344 m!277423))

(assert (=> b!261344 m!277425))

(assert (=> b!261014 d!62777))

(declare-fun d!62779 () Bool)

(declare-fun e!169358 () Bool)

(assert (=> d!62779 e!169358))

(declare-fun res!127719 () Bool)

(assert (=> d!62779 (=> (not res!127719) (not e!169358))))

(declare-fun lt!132008 () ListLongMap!3875)

(assert (=> d!62779 (= res!127719 (contains!1893 lt!132008 (_1!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))))))

(declare-fun lt!132005 () List!3850)

(assert (=> d!62779 (= lt!132008 (ListLongMap!3876 lt!132005))))

(declare-fun lt!132006 () Unit!8105)

(declare-fun lt!132007 () Unit!8105)

(assert (=> d!62779 (= lt!132006 lt!132007)))

(assert (=> d!62779 (= (getValueByKey!316 lt!132005 (_1!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))))))

(assert (=> d!62779 (= lt!132007 (lemmaContainsTupThenGetReturnValue!174 lt!132005 (_1!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))))))

(assert (=> d!62779 (= lt!132005 (insertStrictlySorted!176 (toList!1953 lt!131785) (_1!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))))))

(assert (=> d!62779 (= (+!696 lt!131785 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))) lt!132008)))

(declare-fun b!261345 () Bool)

(declare-fun res!127720 () Bool)

(assert (=> b!261345 (=> (not res!127720) (not e!169358))))

(assert (=> b!261345 (= res!127720 (= (getValueByKey!316 (toList!1953 lt!132008) (_1!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))))))))

(declare-fun b!261346 () Bool)

(assert (=> b!261346 (= e!169358 (contains!1895 (toList!1953 lt!132008) (tuple2!4949 lt!131778 (minValue!4649 thiss!1504))))))

(assert (= (and d!62779 res!127719) b!261345))

(assert (= (and b!261345 res!127720) b!261346))

(declare-fun m!277427 () Bool)

(assert (=> d!62779 m!277427))

(declare-fun m!277429 () Bool)

(assert (=> d!62779 m!277429))

(declare-fun m!277431 () Bool)

(assert (=> d!62779 m!277431))

(declare-fun m!277433 () Bool)

(assert (=> d!62779 m!277433))

(declare-fun m!277435 () Bool)

(assert (=> b!261345 m!277435))

(declare-fun m!277437 () Bool)

(assert (=> b!261346 m!277437))

(assert (=> b!261014 d!62779))

(declare-fun d!62781 () Bool)

(assert (=> d!62781 (= (apply!259 lt!131781 lt!131770) (get!3079 (getValueByKey!316 (toList!1953 lt!131781) lt!131770)))))

(declare-fun bs!9217 () Bool)

(assert (= bs!9217 d!62781))

(declare-fun m!277439 () Bool)

(assert (=> bs!9217 m!277439))

(assert (=> bs!9217 m!277439))

(declare-fun m!277441 () Bool)

(assert (=> bs!9217 m!277441))

(assert (=> b!261014 d!62781))

(declare-fun d!62783 () Bool)

(assert (=> d!62783 (= (apply!259 lt!131779 lt!131786) (get!3079 (getValueByKey!316 (toList!1953 lt!131779) lt!131786)))))

(declare-fun bs!9218 () Bool)

(assert (= bs!9218 d!62783))

(declare-fun m!277443 () Bool)

(assert (=> bs!9218 m!277443))

(assert (=> bs!9218 m!277443))

(declare-fun m!277445 () Bool)

(assert (=> bs!9218 m!277445))

(assert (=> b!261014 d!62783))

(declare-fun d!62785 () Bool)

(assert (=> d!62785 (= (apply!259 (+!696 lt!131779 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))) lt!131786) (apply!259 lt!131779 lt!131786))))

(declare-fun lt!132009 () Unit!8105)

(assert (=> d!62785 (= lt!132009 (choose!1284 lt!131779 lt!131775 (minValue!4649 thiss!1504) lt!131786))))

(declare-fun e!169359 () Bool)

(assert (=> d!62785 e!169359))

(declare-fun res!127721 () Bool)

(assert (=> d!62785 (=> (not res!127721) (not e!169359))))

(assert (=> d!62785 (= res!127721 (contains!1893 lt!131779 lt!131786))))

(assert (=> d!62785 (= (addApplyDifferent!235 lt!131779 lt!131775 (minValue!4649 thiss!1504) lt!131786) lt!132009)))

(declare-fun b!261347 () Bool)

(assert (=> b!261347 (= e!169359 (not (= lt!131786 lt!131775)))))

(assert (= (and d!62785 res!127721) b!261347))

(declare-fun m!277447 () Bool)

(assert (=> d!62785 m!277447))

(assert (=> d!62785 m!276903))

(assert (=> d!62785 m!276915))

(assert (=> d!62785 m!276915))

(assert (=> d!62785 m!276919))

(declare-fun m!277449 () Bool)

(assert (=> d!62785 m!277449))

(assert (=> b!261014 d!62785))

(declare-fun d!62787 () Bool)

(declare-fun e!169360 () Bool)

(assert (=> d!62787 e!169360))

(declare-fun res!127722 () Bool)

(assert (=> d!62787 (=> (not res!127722) (not e!169360))))

(declare-fun lt!132013 () ListLongMap!3875)

(assert (=> d!62787 (= res!127722 (contains!1893 lt!132013 (_1!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))))))

(declare-fun lt!132010 () List!3850)

(assert (=> d!62787 (= lt!132013 (ListLongMap!3876 lt!132010))))

(declare-fun lt!132011 () Unit!8105)

(declare-fun lt!132012 () Unit!8105)

(assert (=> d!62787 (= lt!132011 lt!132012)))

(assert (=> d!62787 (= (getValueByKey!316 lt!132010 (_1!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62787 (= lt!132012 (lemmaContainsTupThenGetReturnValue!174 lt!132010 (_1!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62787 (= lt!132010 (insertStrictlySorted!176 (toList!1953 lt!131771) (_1!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))))))

(assert (=> d!62787 (= (+!696 lt!131771 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))) lt!132013)))

(declare-fun b!261348 () Bool)

(declare-fun res!127723 () Bool)

(assert (=> b!261348 (=> (not res!127723) (not e!169360))))

(assert (=> b!261348 (= res!127723 (= (getValueByKey!316 (toList!1953 lt!132013) (_1!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))))))))

(declare-fun b!261349 () Bool)

(assert (=> b!261349 (= e!169360 (contains!1895 (toList!1953 lt!132013) (tuple2!4949 lt!131788 (zeroValue!4649 thiss!1504))))))

(assert (= (and d!62787 res!127722) b!261348))

(assert (= (and b!261348 res!127723) b!261349))

(declare-fun m!277451 () Bool)

(assert (=> d!62787 m!277451))

(declare-fun m!277453 () Bool)

(assert (=> d!62787 m!277453))

(declare-fun m!277455 () Bool)

(assert (=> d!62787 m!277455))

(declare-fun m!277457 () Bool)

(assert (=> d!62787 m!277457))

(declare-fun m!277459 () Bool)

(assert (=> b!261348 m!277459))

(declare-fun m!277461 () Bool)

(assert (=> b!261349 m!277461))

(assert (=> b!261014 d!62787))

(declare-fun d!62789 () Bool)

(assert (=> d!62789 (= (apply!259 (+!696 lt!131779 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504))) lt!131786) (get!3079 (getValueByKey!316 (toList!1953 (+!696 lt!131779 (tuple2!4949 lt!131775 (minValue!4649 thiss!1504)))) lt!131786)))))

(declare-fun bs!9219 () Bool)

(assert (= bs!9219 d!62789))

(declare-fun m!277463 () Bool)

(assert (=> bs!9219 m!277463))

(assert (=> bs!9219 m!277463))

(declare-fun m!277465 () Bool)

(assert (=> bs!9219 m!277465))

(assert (=> b!261014 d!62789))

(declare-fun d!62791 () Bool)

(declare-fun lt!132014 () (_ BitVec 32))

(assert (=> d!62791 (and (bvsge lt!132014 #b00000000000000000000000000000000) (bvsle lt!132014 (bvsub (size!6318 (_keys!6992 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!169362 () (_ BitVec 32))

(assert (=> d!62791 (= lt!132014 e!169362)))

(declare-fun c!44474 () Bool)

(assert (=> d!62791 (= c!44474 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62791 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6318 (_keys!6992 thiss!1504)) (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62791 (= (arrayCountValidKeys!0 (_keys!6992 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))) lt!132014)))

(declare-fun bm!24953 () Bool)

(declare-fun call!24956 () (_ BitVec 32))

(assert (=> bm!24953 (= call!24956 (arrayCountValidKeys!0 (_keys!6992 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261350 () Bool)

(declare-fun e!169361 () (_ BitVec 32))

(assert (=> b!261350 (= e!169361 (bvadd #b00000000000000000000000000000001 call!24956))))

(declare-fun b!261351 () Bool)

(assert (=> b!261351 (= e!169362 #b00000000000000000000000000000000)))

(declare-fun b!261352 () Bool)

(assert (=> b!261352 (= e!169361 call!24956)))

(declare-fun b!261353 () Bool)

(assert (=> b!261353 (= e!169362 e!169361)))

(declare-fun c!44475 () Bool)

(assert (=> b!261353 (= c!44475 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!62791 c!44474) b!261351))

(assert (= (and d!62791 (not c!44474)) b!261353))

(assert (= (and b!261353 c!44475) b!261350))

(assert (= (and b!261353 (not c!44475)) b!261352))

(assert (= (or b!261350 b!261352) bm!24953))

(declare-fun m!277467 () Bool)

(assert (=> bm!24953 m!277467))

(assert (=> b!261353 m!277327))

(assert (=> b!261353 m!277327))

(declare-fun m!277469 () Bool)

(assert (=> b!261353 m!277469))

(assert (=> bm!24891 d!62791))

(declare-fun d!62793 () Bool)

(declare-fun e!169363 () Bool)

(assert (=> d!62793 e!169363))

(declare-fun res!127724 () Bool)

(assert (=> d!62793 (=> (not res!127724) (not e!169363))))

(declare-fun lt!132018 () ListLongMap!3875)

(assert (=> d!62793 (= res!127724 (contains!1893 lt!132018 (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(declare-fun lt!132015 () List!3850)

(assert (=> d!62793 (= lt!132018 (ListLongMap!3876 lt!132015))))

(declare-fun lt!132016 () Unit!8105)

(declare-fun lt!132017 () Unit!8105)

(assert (=> d!62793 (= lt!132016 lt!132017)))

(assert (=> d!62793 (= (getValueByKey!316 lt!132015 (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (=> d!62793 (= lt!132017 (lemmaContainsTupThenGetReturnValue!174 lt!132015 (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (=> d!62793 (= lt!132015 (insertStrictlySorted!176 (toList!1953 call!24929) (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (=> d!62793 (= (+!696 call!24929 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))) lt!132018)))

(declare-fun b!261354 () Bool)

(declare-fun res!127725 () Bool)

(assert (=> b!261354 (=> (not res!127725) (not e!169363))))

(assert (=> b!261354 (= res!127725 (= (getValueByKey!316 (toList!1953 lt!132018) (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(declare-fun b!261355 () Bool)

(assert (=> b!261355 (= e!169363 (contains!1895 (toList!1953 lt!132018) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))

(assert (= (and d!62793 res!127724) b!261354))

(assert (= (and b!261354 res!127725) b!261355))

(declare-fun m!277471 () Bool)

(assert (=> d!62793 m!277471))

(declare-fun m!277473 () Bool)

(assert (=> d!62793 m!277473))

(declare-fun m!277475 () Bool)

(assert (=> d!62793 m!277475))

(declare-fun m!277477 () Bool)

(assert (=> d!62793 m!277477))

(declare-fun m!277479 () Bool)

(assert (=> b!261354 m!277479))

(declare-fun m!277481 () Bool)

(assert (=> b!261355 m!277481))

(assert (=> b!261117 d!62793))

(declare-fun d!62795 () Bool)

(declare-fun res!127730 () Bool)

(declare-fun e!169368 () Bool)

(assert (=> d!62795 (=> res!127730 e!169368)))

(assert (=> d!62795 (= res!127730 (and ((_ is Cons!3846) (toList!1953 lt!131656)) (= (_1!2484 (h!4511 (toList!1953 lt!131656))) key!932)))))

(assert (=> d!62795 (= (containsKey!308 (toList!1953 lt!131656) key!932) e!169368)))

(declare-fun b!261360 () Bool)

(declare-fun e!169369 () Bool)

(assert (=> b!261360 (= e!169368 e!169369)))

(declare-fun res!127731 () Bool)

(assert (=> b!261360 (=> (not res!127731) (not e!169369))))

(assert (=> b!261360 (= res!127731 (and (or (not ((_ is Cons!3846) (toList!1953 lt!131656))) (bvsle (_1!2484 (h!4511 (toList!1953 lt!131656))) key!932)) ((_ is Cons!3846) (toList!1953 lt!131656)) (bvslt (_1!2484 (h!4511 (toList!1953 lt!131656))) key!932)))))

(declare-fun b!261361 () Bool)

(assert (=> b!261361 (= e!169369 (containsKey!308 (t!8929 (toList!1953 lt!131656)) key!932))))

(assert (= (and d!62795 (not res!127730)) b!261360))

(assert (= (and b!261360 res!127731) b!261361))

(declare-fun m!277483 () Bool)

(assert (=> b!261361 m!277483))

(assert (=> d!62665 d!62795))

(declare-fun d!62797 () Bool)

(assert (=> d!62797 (= (arrayCountValidKeys!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6992 thiss!1504) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!62797 true))

(declare-fun _$84!45 () Unit!8105)

(assert (=> d!62797 (= (choose!1 (_keys!6992 thiss!1504) index!297 key!932) _$84!45)))

(declare-fun bs!9220 () Bool)

(assert (= bs!9220 d!62797))

(assert (=> bs!9220 m!276753))

(assert (=> bs!9220 m!276893))

(assert (=> bs!9220 m!276755))

(assert (=> d!62637 d!62797))

(declare-fun d!62799 () Bool)

(declare-fun e!169370 () Bool)

(assert (=> d!62799 e!169370))

(declare-fun res!127732 () Bool)

(assert (=> d!62799 (=> res!127732 e!169370)))

(declare-fun lt!132020 () Bool)

(assert (=> d!62799 (= res!127732 (not lt!132020))))

(declare-fun lt!132019 () Bool)

(assert (=> d!62799 (= lt!132020 lt!132019)))

(declare-fun lt!132021 () Unit!8105)

(declare-fun e!169371 () Unit!8105)

(assert (=> d!62799 (= lt!132021 e!169371)))

(declare-fun c!44476 () Bool)

(assert (=> d!62799 (= c!44476 lt!132019)))

(assert (=> d!62799 (= lt!132019 (containsKey!308 (toList!1953 lt!131856) (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!62799 (= (contains!1893 lt!131856 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)) lt!132020)))

(declare-fun b!261362 () Bool)

(declare-fun lt!132022 () Unit!8105)

(assert (=> b!261362 (= e!169371 lt!132022)))

(assert (=> b!261362 (= lt!132022 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131856) (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!261362 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131856) (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!261363 () Bool)

(declare-fun Unit!8122 () Unit!8105)

(assert (=> b!261363 (= e!169371 Unit!8122)))

(declare-fun b!261364 () Bool)

(assert (=> b!261364 (= e!169370 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131856) (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!62799 c!44476) b!261362))

(assert (= (and d!62799 (not c!44476)) b!261363))

(assert (= (and d!62799 (not res!127732)) b!261364))

(assert (=> d!62799 m!276871))

(declare-fun m!277485 () Bool)

(assert (=> d!62799 m!277485))

(assert (=> b!261362 m!276871))

(declare-fun m!277487 () Bool)

(assert (=> b!261362 m!277487))

(assert (=> b!261362 m!276871))

(declare-fun m!277489 () Bool)

(assert (=> b!261362 m!277489))

(assert (=> b!261362 m!277489))

(declare-fun m!277491 () Bool)

(assert (=> b!261362 m!277491))

(assert (=> b!261364 m!276871))

(assert (=> b!261364 m!277489))

(assert (=> b!261364 m!277489))

(assert (=> b!261364 m!277491))

(assert (=> b!261115 d!62799))

(declare-fun d!62801 () Bool)

(declare-fun e!169372 () Bool)

(assert (=> d!62801 e!169372))

(declare-fun res!127733 () Bool)

(assert (=> d!62801 (=> (not res!127733) (not e!169372))))

(declare-fun lt!132026 () ListLongMap!3875)

(assert (=> d!62801 (= res!127733 (contains!1893 lt!132026 (_1!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(declare-fun lt!132023 () List!3850)

(assert (=> d!62801 (= lt!132026 (ListLongMap!3876 lt!132023))))

(declare-fun lt!132024 () Unit!8105)

(declare-fun lt!132025 () Unit!8105)

(assert (=> d!62801 (= lt!132024 lt!132025)))

(assert (=> d!62801 (= (getValueByKey!316 lt!132023 (_1!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))) (Some!321 (_2!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(assert (=> d!62801 (= lt!132025 (lemmaContainsTupThenGetReturnValue!174 lt!132023 (_1!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (_2!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(assert (=> d!62801 (= lt!132023 (insertStrictlySorted!176 (toList!1953 (ite c!44410 call!24935 (ite c!44408 call!24933 call!24932))) (_1!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (_2!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(assert (=> d!62801 (= (+!696 (ite c!44410 call!24935 (ite c!44408 call!24933 call!24932)) (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) lt!132026)))

(declare-fun b!261365 () Bool)

(declare-fun res!127734 () Bool)

(assert (=> b!261365 (=> (not res!127734) (not e!169372))))

(assert (=> b!261365 (= res!127734 (= (getValueByKey!316 (toList!1953 lt!132026) (_1!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))) (Some!321 (_2!2484 (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))))

(declare-fun b!261366 () Bool)

(assert (=> b!261366 (= e!169372 (contains!1895 (toList!1953 lt!132026) (ite (or c!44410 c!44408) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (= (and d!62801 res!127733) b!261365))

(assert (= (and b!261365 res!127734) b!261366))

(declare-fun m!277493 () Bool)

(assert (=> d!62801 m!277493))

(declare-fun m!277495 () Bool)

(assert (=> d!62801 m!277495))

(declare-fun m!277497 () Bool)

(assert (=> d!62801 m!277497))

(declare-fun m!277499 () Bool)

(assert (=> d!62801 m!277499))

(declare-fun m!277501 () Bool)

(assert (=> b!261365 m!277501))

(declare-fun m!277503 () Bool)

(assert (=> b!261366 m!277503))

(assert (=> bm!24927 d!62801))

(declare-fun d!62803 () Bool)

(assert (=> d!62803 (= (apply!259 lt!131856 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3079 (getValueByKey!316 (toList!1953 lt!131856) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9221 () Bool)

(assert (= bs!9221 d!62803))

(assert (=> bs!9221 m!277323))

(assert (=> bs!9221 m!277323))

(declare-fun m!277505 () Bool)

(assert (=> bs!9221 m!277505))

(assert (=> b!261114 d!62803))

(assert (=> b!261009 d!62675))

(assert (=> d!62669 d!62671))

(declare-fun d!62805 () Bool)

(declare-fun e!169375 () Bool)

(assert (=> d!62805 e!169375))

(declare-fun res!127739 () Bool)

(assert (=> d!62805 (=> (not res!127739) (not e!169375))))

(declare-fun lt!132029 () SeekEntryResult!1195)

(assert (=> d!62805 (= res!127739 ((_ is Found!1195) lt!132029))))

(assert (=> d!62805 (= lt!132029 (seekEntryOrOpen!0 key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(assert (=> d!62805 true))

(declare-fun _$33!183 () Unit!8105)

(assert (=> d!62805 (= (choose!1283 (_keys!6992 thiss!1504) (_values!4791 thiss!1504) (mask!11145 thiss!1504) (extraKeys!4545 thiss!1504) (zeroValue!4649 thiss!1504) (minValue!4649 thiss!1504) key!932 (defaultEntry!4808 thiss!1504)) _$33!183)))

(declare-fun b!261371 () Bool)

(declare-fun res!127740 () Bool)

(assert (=> b!261371 (=> (not res!127740) (not e!169375))))

(assert (=> b!261371 (= res!127740 (inRange!0 (index!6951 lt!132029) (mask!11145 thiss!1504)))))

(declare-fun b!261372 () Bool)

(assert (=> b!261372 (= e!169375 (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6951 lt!132029)) key!932))))

(assert (= (and d!62805 res!127739) b!261371))

(assert (= (and b!261371 res!127740) b!261372))

(assert (=> d!62805 m!276731))

(declare-fun m!277507 () Bool)

(assert (=> b!261371 m!277507))

(declare-fun m!277509 () Bool)

(assert (=> b!261372 m!277509))

(assert (=> d!62669 d!62805))

(assert (=> d!62669 d!62631))

(declare-fun d!62807 () Bool)

(declare-fun e!169376 () Bool)

(assert (=> d!62807 e!169376))

(declare-fun res!127741 () Bool)

(assert (=> d!62807 (=> res!127741 e!169376)))

(declare-fun lt!132031 () Bool)

(assert (=> d!62807 (= res!127741 (not lt!132031))))

(declare-fun lt!132030 () Bool)

(assert (=> d!62807 (= lt!132031 lt!132030)))

(declare-fun lt!132032 () Unit!8105)

(declare-fun e!169377 () Unit!8105)

(assert (=> d!62807 (= lt!132032 e!169377)))

(declare-fun c!44477 () Bool)

(assert (=> d!62807 (= c!44477 lt!132030)))

(assert (=> d!62807 (= lt!132030 (containsKey!308 (toList!1953 lt!131791) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62807 (= (contains!1893 lt!131791 #b0000000000000000000000000000000000000000000000000000000000000000) lt!132031)))

(declare-fun b!261373 () Bool)

(declare-fun lt!132033 () Unit!8105)

(assert (=> b!261373 (= e!169377 lt!132033)))

(assert (=> b!261373 (= lt!132033 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131791) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261373 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131791) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261374 () Bool)

(declare-fun Unit!8123 () Unit!8105)

(assert (=> b!261374 (= e!169377 Unit!8123)))

(declare-fun b!261375 () Bool)

(assert (=> b!261375 (= e!169376 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131791) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62807 c!44477) b!261373))

(assert (= (and d!62807 (not c!44477)) b!261374))

(assert (= (and d!62807 (not res!127741)) b!261375))

(declare-fun m!277511 () Bool)

(assert (=> d!62807 m!277511))

(declare-fun m!277513 () Bool)

(assert (=> b!261373 m!277513))

(declare-fun m!277515 () Bool)

(assert (=> b!261373 m!277515))

(assert (=> b!261373 m!277515))

(declare-fun m!277517 () Bool)

(assert (=> b!261373 m!277517))

(assert (=> b!261375 m!277515))

(assert (=> b!261375 m!277515))

(assert (=> b!261375 m!277517))

(assert (=> bm!24913 d!62807))

(declare-fun b!261387 () Bool)

(declare-fun e!169383 () Option!322)

(assert (=> b!261387 (= e!169383 None!320)))

(declare-fun b!261386 () Bool)

(assert (=> b!261386 (= e!169383 (getValueByKey!316 (t!8929 (toList!1953 lt!131813)) (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun b!261384 () Bool)

(declare-fun e!169382 () Option!322)

(assert (=> b!261384 (= e!169382 (Some!321 (_2!2484 (h!4511 (toList!1953 lt!131813)))))))

(declare-fun c!44482 () Bool)

(declare-fun d!62809 () Bool)

(assert (=> d!62809 (= c!44482 (and ((_ is Cons!3846) (toList!1953 lt!131813)) (= (_1!2484 (h!4511 (toList!1953 lt!131813))) (_1!2484 (tuple2!4949 key!932 v!346)))))))

(assert (=> d!62809 (= (getValueByKey!316 (toList!1953 lt!131813) (_1!2484 (tuple2!4949 key!932 v!346))) e!169382)))

(declare-fun b!261385 () Bool)

(assert (=> b!261385 (= e!169382 e!169383)))

(declare-fun c!44483 () Bool)

(assert (=> b!261385 (= c!44483 (and ((_ is Cons!3846) (toList!1953 lt!131813)) (not (= (_1!2484 (h!4511 (toList!1953 lt!131813))) (_1!2484 (tuple2!4949 key!932 v!346))))))))

(assert (= (and d!62809 c!44482) b!261384))

(assert (= (and d!62809 (not c!44482)) b!261385))

(assert (= (and b!261385 c!44483) b!261386))

(assert (= (and b!261385 (not c!44483)) b!261387))

(declare-fun m!277519 () Bool)

(assert (=> b!261386 m!277519))

(assert (=> b!261049 d!62809))

(declare-fun d!62811 () Bool)

(assert (=> d!62811 (arrayNoDuplicates!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000000 Nil!3848)))

(assert (=> d!62811 true))

(declare-fun _$65!95 () Unit!8105)

(assert (=> d!62811 (= (choose!41 (_keys!6992 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3848) _$65!95)))

(declare-fun bs!9222 () Bool)

(assert (= bs!9222 d!62811))

(assert (=> bs!9222 m!276753))

(assert (=> bs!9222 m!276885))

(assert (=> d!62635 d!62811))

(declare-fun d!62813 () Bool)

(declare-fun isEmpty!544 (Option!322) Bool)

(assert (=> d!62813 (= (isDefined!258 (getValueByKey!316 (toList!1953 lt!131656) key!932)) (not (isEmpty!544 (getValueByKey!316 (toList!1953 lt!131656) key!932))))))

(declare-fun bs!9223 () Bool)

(assert (= bs!9223 d!62813))

(assert (=> bs!9223 m!277005))

(declare-fun m!277521 () Bool)

(assert (=> bs!9223 m!277521))

(assert (=> b!261098 d!62813))

(declare-fun b!261391 () Bool)

(declare-fun e!169385 () Option!322)

(assert (=> b!261391 (= e!169385 None!320)))

(declare-fun b!261390 () Bool)

(assert (=> b!261390 (= e!169385 (getValueByKey!316 (t!8929 (toList!1953 lt!131656)) key!932))))

(declare-fun b!261388 () Bool)

(declare-fun e!169384 () Option!322)

(assert (=> b!261388 (= e!169384 (Some!321 (_2!2484 (h!4511 (toList!1953 lt!131656)))))))

(declare-fun d!62815 () Bool)

(declare-fun c!44484 () Bool)

(assert (=> d!62815 (= c!44484 (and ((_ is Cons!3846) (toList!1953 lt!131656)) (= (_1!2484 (h!4511 (toList!1953 lt!131656))) key!932)))))

(assert (=> d!62815 (= (getValueByKey!316 (toList!1953 lt!131656) key!932) e!169384)))

(declare-fun b!261389 () Bool)

(assert (=> b!261389 (= e!169384 e!169385)))

(declare-fun c!44485 () Bool)

(assert (=> b!261389 (= c!44485 (and ((_ is Cons!3846) (toList!1953 lt!131656)) (not (= (_1!2484 (h!4511 (toList!1953 lt!131656))) key!932))))))

(assert (= (and d!62815 c!44484) b!261388))

(assert (= (and d!62815 (not c!44484)) b!261389))

(assert (= (and b!261389 c!44485) b!261390))

(assert (= (and b!261389 (not c!44485)) b!261391))

(declare-fun m!277523 () Bool)

(assert (=> b!261390 m!277523))

(assert (=> b!261098 d!62815))

(declare-fun d!62817 () Bool)

(declare-fun lt!132036 () Bool)

(declare-fun content!174 (List!3851) (InoxSet (_ BitVec 64)))

(assert (=> d!62817 (= lt!132036 (select (content!174 Nil!3848) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun e!169390 () Bool)

(assert (=> d!62817 (= lt!132036 e!169390)))

(declare-fun res!127746 () Bool)

(assert (=> d!62817 (=> (not res!127746) (not e!169390))))

(assert (=> d!62817 (= res!127746 ((_ is Cons!3847) Nil!3848))))

(assert (=> d!62817 (= (contains!1896 Nil!3848 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) lt!132036)))

(declare-fun b!261396 () Bool)

(declare-fun e!169391 () Bool)

(assert (=> b!261396 (= e!169390 e!169391)))

(declare-fun res!127747 () Bool)

(assert (=> b!261396 (=> res!127747 e!169391)))

(assert (=> b!261396 (= res!127747 (= (h!4512 Nil!3848) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun b!261397 () Bool)

(assert (=> b!261397 (= e!169391 (contains!1896 (t!8930 Nil!3848) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (= (and d!62817 res!127746) b!261396))

(assert (= (and b!261396 (not res!127747)) b!261397))

(declare-fun m!277525 () Bool)

(assert (=> d!62817 m!277525))

(assert (=> d!62817 m!276861))

(declare-fun m!277527 () Bool)

(assert (=> d!62817 m!277527))

(assert (=> b!261397 m!276861))

(declare-fun m!277529 () Bool)

(assert (=> b!261397 m!277529))

(assert (=> b!261063 d!62817))

(declare-fun b!261398 () Bool)

(declare-fun e!169394 () Bool)

(declare-fun e!169393 () Bool)

(assert (=> b!261398 (= e!169394 e!169393)))

(declare-fun c!44486 () Bool)

(assert (=> b!261398 (= c!44486 (validKeyInArray!0 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!24954 () Bool)

(declare-fun call!24957 () Bool)

(assert (=> bm!24954 (= call!24957 (arrayNoDuplicates!0 lt!131653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!44486 (Cons!3847 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44396 (Cons!3847 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) Nil!3848) Nil!3848)) (ite c!44396 (Cons!3847 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) Nil!3848) Nil!3848))))))

(declare-fun b!261399 () Bool)

(assert (=> b!261399 (= e!169393 call!24957)))

(declare-fun b!261400 () Bool)

(declare-fun e!169395 () Bool)

(assert (=> b!261400 (= e!169395 (contains!1896 (ite c!44396 (Cons!3847 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) Nil!3848) Nil!3848) (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!261401 () Bool)

(declare-fun e!169392 () Bool)

(assert (=> b!261401 (= e!169392 e!169394)))

(declare-fun res!127748 () Bool)

(assert (=> b!261401 (=> (not res!127748) (not e!169394))))

(assert (=> b!261401 (= res!127748 (not e!169395))))

(declare-fun res!127750 () Bool)

(assert (=> b!261401 (=> (not res!127750) (not e!169395))))

(assert (=> b!261401 (= res!127750 (validKeyInArray!0 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!62819 () Bool)

(declare-fun res!127749 () Bool)

(assert (=> d!62819 (=> res!127749 e!169392)))

(assert (=> d!62819 (= res!127749 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 lt!131653)))))

(assert (=> d!62819 (= (arrayNoDuplicates!0 lt!131653 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44396 (Cons!3847 (select (arr!5968 lt!131653) #b00000000000000000000000000000000) Nil!3848) Nil!3848)) e!169392)))

(declare-fun b!261402 () Bool)

(assert (=> b!261402 (= e!169393 call!24957)))

(assert (= (and d!62819 (not res!127749)) b!261401))

(assert (= (and b!261401 res!127750) b!261400))

(assert (= (and b!261401 res!127748) b!261398))

(assert (= (and b!261398 c!44486) b!261402))

(assert (= (and b!261398 (not c!44486)) b!261399))

(assert (= (or b!261402 b!261399) bm!24954))

(assert (=> b!261398 m!277311))

(assert (=> b!261398 m!277311))

(assert (=> b!261398 m!277313))

(assert (=> bm!24954 m!277311))

(declare-fun m!277531 () Bool)

(assert (=> bm!24954 m!277531))

(assert (=> b!261400 m!277311))

(assert (=> b!261400 m!277311))

(declare-fun m!277533 () Bool)

(assert (=> b!261400 m!277533))

(assert (=> b!261401 m!277311))

(assert (=> b!261401 m!277311))

(assert (=> b!261401 m!277313))

(assert (=> bm!24919 d!62819))

(declare-fun d!62821 () Bool)

(declare-fun lt!132037 () (_ BitVec 32))

(assert (=> d!62821 (and (bvsge lt!132037 #b00000000000000000000000000000000) (bvsle lt!132037 (bvsub (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!169397 () (_ BitVec 32))

(assert (=> d!62821 (= lt!132037 e!169397)))

(declare-fun c!44487 () Bool)

(assert (=> d!62821 (= c!44487 (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62821 (and (bvsle #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6318 (_keys!6992 thiss!1504)) (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(assert (=> d!62821 (= (arrayCountValidKeys!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))) lt!132037)))

(declare-fun call!24958 () (_ BitVec 32))

(declare-fun bm!24955 () Bool)

(assert (=> bm!24955 (= call!24958 (arrayCountValidKeys!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 (_keys!6992 thiss!1504))))))

(declare-fun b!261403 () Bool)

(declare-fun e!169396 () (_ BitVec 32))

(assert (=> b!261403 (= e!169396 (bvadd #b00000000000000000000000000000001 call!24958))))

(declare-fun b!261404 () Bool)

(assert (=> b!261404 (= e!169397 #b00000000000000000000000000000000)))

(declare-fun b!261405 () Bool)

(assert (=> b!261405 (= e!169396 call!24958)))

(declare-fun b!261406 () Bool)

(assert (=> b!261406 (= e!169397 e!169396)))

(declare-fun c!44488 () Bool)

(assert (=> b!261406 (= c!44488 (validKeyInArray!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!62821 c!44487) b!261404))

(assert (= (and d!62821 (not c!44487)) b!261406))

(assert (= (and b!261406 c!44488) b!261403))

(assert (= (and b!261406 (not c!44488)) b!261405))

(assert (= (or b!261403 b!261405) bm!24955))

(declare-fun m!277535 () Bool)

(assert (=> bm!24955 m!277535))

(assert (=> b!261406 m!277111))

(assert (=> b!261406 m!277111))

(assert (=> b!261406 m!277147))

(assert (=> b!260961 d!62821))

(assert (=> b!260961 d!62629))

(assert (=> bm!24911 d!62767))

(declare-fun d!62823 () Bool)

(assert (=> d!62823 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260959 d!62823))

(declare-fun d!62825 () Bool)

(assert (=> d!62825 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131656) key!932))))

(declare-fun lt!132040 () Unit!8105)

(declare-fun choose!1286 (List!3850 (_ BitVec 64)) Unit!8105)

(assert (=> d!62825 (= lt!132040 (choose!1286 (toList!1953 lt!131656) key!932))))

(declare-fun e!169400 () Bool)

(assert (=> d!62825 e!169400))

(declare-fun res!127753 () Bool)

(assert (=> d!62825 (=> (not res!127753) (not e!169400))))

(declare-fun isStrictlySorted!371 (List!3850) Bool)

(assert (=> d!62825 (= res!127753 (isStrictlySorted!371 (toList!1953 lt!131656)))))

(assert (=> d!62825 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131656) key!932) lt!132040)))

(declare-fun b!261409 () Bool)

(assert (=> b!261409 (= e!169400 (containsKey!308 (toList!1953 lt!131656) key!932))))

(assert (= (and d!62825 res!127753) b!261409))

(assert (=> d!62825 m!277005))

(assert (=> d!62825 m!277005))

(assert (=> d!62825 m!277007))

(declare-fun m!277537 () Bool)

(assert (=> d!62825 m!277537))

(declare-fun m!277539 () Bool)

(assert (=> d!62825 m!277539))

(assert (=> b!261409 m!277001))

(assert (=> b!261096 d!62825))

(assert (=> b!261096 d!62813))

(assert (=> b!261096 d!62815))

(declare-fun b!261410 () Bool)

(declare-fun e!169403 () Bool)

(declare-fun e!169402 () Bool)

(assert (=> b!261410 (= e!169403 e!169402)))

(declare-fun c!44489 () Bool)

(assert (=> b!261410 (= c!44489 (validKeyInArray!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun call!24959 () Bool)

(declare-fun bm!24956 () Bool)

(assert (=> bm!24956 (= call!24959 (arrayNoDuplicates!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44489 (Cons!3847 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000) Nil!3848) Nil!3848)))))

(declare-fun b!261411 () Bool)

(assert (=> b!261411 (= e!169402 call!24959)))

(declare-fun e!169404 () Bool)

(declare-fun b!261412 () Bool)

(assert (=> b!261412 (= e!169404 (contains!1896 Nil!3848 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!261413 () Bool)

(declare-fun e!169401 () Bool)

(assert (=> b!261413 (= e!169401 e!169403)))

(declare-fun res!127754 () Bool)

(assert (=> b!261413 (=> (not res!127754) (not e!169403))))

(assert (=> b!261413 (= res!127754 (not e!169404))))

(declare-fun res!127756 () Bool)

(assert (=> b!261413 (=> (not res!127756) (not e!169404))))

(assert (=> b!261413 (= res!127756 (validKeyInArray!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!62827 () Bool)

(declare-fun res!127755 () Bool)

(assert (=> d!62827 (=> res!127755 e!169401)))

(assert (=> d!62827 (= res!127755 (bvsge #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(assert (=> d!62827 (= (arrayNoDuplicates!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) #b00000000000000000000000000000000 Nil!3848) e!169401)))

(declare-fun b!261414 () Bool)

(assert (=> b!261414 (= e!169402 call!24959)))

(assert (= (and d!62827 (not res!127755)) b!261413))

(assert (= (and b!261413 res!127756) b!261412))

(assert (= (and b!261413 res!127754) b!261410))

(assert (= (and b!261410 c!44489) b!261414))

(assert (= (and b!261410 (not c!44489)) b!261411))

(assert (= (or b!261414 b!261411) bm!24956))

(assert (=> b!261410 m!277111))

(assert (=> b!261410 m!277111))

(assert (=> b!261410 m!277147))

(assert (=> bm!24956 m!277111))

(declare-fun m!277541 () Bool)

(assert (=> bm!24956 m!277541))

(assert (=> b!261412 m!277111))

(assert (=> b!261412 m!277111))

(declare-fun m!277543 () Bool)

(assert (=> b!261412 m!277543))

(assert (=> b!261413 m!277111))

(assert (=> b!261413 m!277111))

(assert (=> b!261413 m!277147))

(assert (=> b!260949 d!62827))

(assert (=> b!260924 d!62675))

(declare-fun d!62829 () Bool)

(declare-fun e!169405 () Bool)

(assert (=> d!62829 e!169405))

(declare-fun res!127757 () Bool)

(assert (=> d!62829 (=> (not res!127757) (not e!169405))))

(declare-fun lt!132044 () ListLongMap!3875)

(assert (=> d!62829 (= res!127757 (contains!1893 lt!132044 (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(declare-fun lt!132041 () List!3850)

(assert (=> d!62829 (= lt!132044 (ListLongMap!3876 lt!132041))))

(declare-fun lt!132042 () Unit!8105)

(declare-fun lt!132043 () Unit!8105)

(assert (=> d!62829 (= lt!132042 lt!132043)))

(assert (=> d!62829 (= (getValueByKey!316 lt!132041 (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (=> d!62829 (= lt!132043 (lemmaContainsTupThenGetReturnValue!174 lt!132041 (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (=> d!62829 (= lt!132041 (insertStrictlySorted!176 (toList!1953 call!24912) (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))) (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (=> d!62829 (= (+!696 call!24912 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))) lt!132044)))

(declare-fun b!261415 () Bool)

(declare-fun res!127758 () Bool)

(assert (=> b!261415 (=> (not res!127758) (not e!169405))))

(assert (=> b!261415 (= res!127758 (= (getValueByKey!316 (toList!1953 lt!132044) (_1!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (Some!321 (_2!2484 (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(declare-fun b!261416 () Bool)

(assert (=> b!261416 (= e!169405 (contains!1895 (toList!1953 lt!132044) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))

(assert (= (and d!62829 res!127757) b!261415))

(assert (= (and b!261415 res!127758) b!261416))

(declare-fun m!277545 () Bool)

(assert (=> d!62829 m!277545))

(declare-fun m!277547 () Bool)

(assert (=> d!62829 m!277547))

(declare-fun m!277549 () Bool)

(assert (=> d!62829 m!277549))

(declare-fun m!277551 () Bool)

(assert (=> d!62829 m!277551))

(declare-fun m!277553 () Bool)

(assert (=> b!261415 m!277553))

(declare-fun m!277555 () Bool)

(assert (=> b!261416 m!277555))

(assert (=> b!261022 d!62829))

(declare-fun d!62831 () Bool)

(assert (=> d!62831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (mask!11145 thiss!1504))))

(assert (=> d!62831 true))

(declare-fun _$56!42 () Unit!8105)

(assert (=> d!62831 (= (choose!102 key!932 (_keys!6992 thiss!1504) index!297 (mask!11145 thiss!1504)) _$56!42)))

(declare-fun bs!9224 () Bool)

(assert (= bs!9224 d!62831))

(assert (=> bs!9224 m!276753))

(assert (=> bs!9224 m!276955))

(assert (=> d!62643 d!62831))

(assert (=> d!62643 d!62631))

(declare-fun d!62833 () Bool)

(declare-fun e!169406 () Bool)

(assert (=> d!62833 e!169406))

(declare-fun res!127759 () Bool)

(assert (=> d!62833 (=> res!127759 e!169406)))

(declare-fun lt!132046 () Bool)

(assert (=> d!62833 (= res!127759 (not lt!132046))))

(declare-fun lt!132045 () Bool)

(assert (=> d!62833 (= lt!132046 lt!132045)))

(declare-fun lt!132047 () Unit!8105)

(declare-fun e!169407 () Unit!8105)

(assert (=> d!62833 (= lt!132047 e!169407)))

(declare-fun c!44490 () Bool)

(assert (=> d!62833 (= c!44490 lt!132045)))

(assert (=> d!62833 (= lt!132045 (containsKey!308 (toList!1953 lt!131791) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (=> d!62833 (= (contains!1893 lt!131791 (select (arr!5968 lt!131653) #b00000000000000000000000000000000)) lt!132046)))

(declare-fun b!261417 () Bool)

(declare-fun lt!132048 () Unit!8105)

(assert (=> b!261417 (= e!169407 lt!132048)))

(assert (=> b!261417 (= lt!132048 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131791) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(assert (=> b!261417 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131791) (select (arr!5968 lt!131653) #b00000000000000000000000000000000)))))

(declare-fun b!261418 () Bool)

(declare-fun Unit!8124 () Unit!8105)

(assert (=> b!261418 (= e!169407 Unit!8124)))

(declare-fun b!261419 () Bool)

(assert (=> b!261419 (= e!169406 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131791) (select (arr!5968 lt!131653) #b00000000000000000000000000000000))))))

(assert (= (and d!62833 c!44490) b!261417))

(assert (= (and d!62833 (not c!44490)) b!261418))

(assert (= (and d!62833 (not res!127759)) b!261419))

(assert (=> d!62833 m!276861))

(declare-fun m!277557 () Bool)

(assert (=> d!62833 m!277557))

(assert (=> b!261417 m!276861))

(declare-fun m!277559 () Bool)

(assert (=> b!261417 m!277559))

(assert (=> b!261417 m!276861))

(assert (=> b!261417 m!277153))

(assert (=> b!261417 m!277153))

(declare-fun m!277561 () Bool)

(assert (=> b!261417 m!277561))

(assert (=> b!261419 m!276861))

(assert (=> b!261419 m!277153))

(assert (=> b!261419 m!277153))

(assert (=> b!261419 m!277561))

(assert (=> b!261020 d!62833))

(declare-fun d!62835 () Bool)

(declare-fun e!169408 () Bool)

(assert (=> d!62835 e!169408))

(declare-fun res!127760 () Bool)

(assert (=> d!62835 (=> (not res!127760) (not e!169408))))

(declare-fun lt!132052 () ListLongMap!3875)

(assert (=> d!62835 (= res!127760 (contains!1893 lt!132052 (_1!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(declare-fun lt!132049 () List!3850)

(assert (=> d!62835 (= lt!132052 (ListLongMap!3876 lt!132049))))

(declare-fun lt!132050 () Unit!8105)

(declare-fun lt!132051 () Unit!8105)

(assert (=> d!62835 (= lt!132050 lt!132051)))

(assert (=> d!62835 (= (getValueByKey!316 lt!132049 (_1!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))) (Some!321 (_2!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(assert (=> d!62835 (= lt!132051 (lemmaContainsTupThenGetReturnValue!174 lt!132049 (_1!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (_2!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(assert (=> d!62835 (= lt!132049 (insertStrictlySorted!176 (toList!1953 (ite c!44390 call!24918 (ite c!44388 call!24916 call!24915))) (_1!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) (_2!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))))))

(assert (=> d!62835 (= (+!696 (ite c!44390 call!24918 (ite c!44388 call!24916 call!24915)) (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))) lt!132052)))

(declare-fun b!261420 () Bool)

(declare-fun res!127761 () Bool)

(assert (=> b!261420 (=> (not res!127761) (not e!169408))))

(assert (=> b!261420 (= res!127761 (= (getValueByKey!316 (toList!1953 lt!132052) (_1!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504))))) (Some!321 (_2!2484 (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))))

(declare-fun b!261421 () Bool)

(assert (=> b!261421 (= e!169408 (contains!1895 (toList!1953 lt!132052) (ite (or c!44390 c!44388) (tuple2!4949 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4649 thiss!1504)) (tuple2!4949 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4649 thiss!1504)))))))

(assert (= (and d!62835 res!127760) b!261420))

(assert (= (and b!261420 res!127761) b!261421))

(declare-fun m!277563 () Bool)

(assert (=> d!62835 m!277563))

(declare-fun m!277565 () Bool)

(assert (=> d!62835 m!277565))

(declare-fun m!277567 () Bool)

(assert (=> d!62835 m!277567))

(declare-fun m!277569 () Bool)

(assert (=> d!62835 m!277569))

(declare-fun m!277571 () Bool)

(assert (=> b!261420 m!277571))

(declare-fun m!277573 () Bool)

(assert (=> b!261421 m!277573))

(assert (=> bm!24910 d!62835))

(declare-fun d!62837 () Bool)

(assert (=> d!62837 (= (apply!259 lt!131791 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3079 (getValueByKey!316 (toList!1953 lt!131791) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9225 () Bool)

(assert (= bs!9225 d!62837))

(assert (=> bs!9225 m!277515))

(assert (=> bs!9225 m!277515))

(declare-fun m!277575 () Bool)

(assert (=> bs!9225 m!277575))

(assert (=> b!261019 d!62837))

(declare-fun b!261422 () Bool)

(declare-fun e!169409 () Bool)

(declare-fun call!24960 () Bool)

(assert (=> b!261422 (= e!169409 call!24960)))

(declare-fun bm!24957 () Bool)

(assert (=> bm!24957 (= call!24960 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun b!261423 () Bool)

(declare-fun e!169411 () Bool)

(declare-fun e!169410 () Bool)

(assert (=> b!261423 (= e!169411 e!169410)))

(declare-fun c!44491 () Bool)

(assert (=> b!261423 (= c!44491 (validKeyInArray!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!62839 () Bool)

(declare-fun res!127763 () Bool)

(assert (=> d!62839 (=> res!127763 e!169411)))

(assert (=> d!62839 (= res!127763 (bvsge #b00000000000000000000000000000000 (size!6318 (_keys!6992 thiss!1504))))))

(assert (=> d!62839 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)) e!169411)))

(declare-fun b!261424 () Bool)

(assert (=> b!261424 (= e!169410 call!24960)))

(declare-fun b!261425 () Bool)

(assert (=> b!261425 (= e!169410 e!169409)))

(declare-fun lt!132054 () (_ BitVec 64))

(assert (=> b!261425 (= lt!132054 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132053 () Unit!8105)

(assert (=> b!261425 (= lt!132053 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6992 thiss!1504) lt!132054 #b00000000000000000000000000000000))))

(assert (=> b!261425 (arrayContainsKey!0 (_keys!6992 thiss!1504) lt!132054 #b00000000000000000000000000000000)))

(declare-fun lt!132055 () Unit!8105)

(assert (=> b!261425 (= lt!132055 lt!132053)))

(declare-fun res!127762 () Bool)

(assert (=> b!261425 (= res!127762 (= (seekEntryOrOpen!0 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000) (_keys!6992 thiss!1504) (mask!11145 thiss!1504)) (Found!1195 #b00000000000000000000000000000000)))))

(assert (=> b!261425 (=> (not res!127762) (not e!169409))))

(assert (= (and d!62839 (not res!127763)) b!261423))

(assert (= (and b!261423 c!44491) b!261425))

(assert (= (and b!261423 (not c!44491)) b!261424))

(assert (= (and b!261425 res!127762) b!261422))

(assert (= (or b!261422 b!261424) bm!24957))

(declare-fun m!277577 () Bool)

(assert (=> bm!24957 m!277577))

(assert (=> b!261423 m!276871))

(assert (=> b!261423 m!276871))

(assert (=> b!261423 m!276873))

(assert (=> b!261425 m!276871))

(declare-fun m!277579 () Bool)

(assert (=> b!261425 m!277579))

(declare-fun m!277581 () Bool)

(assert (=> b!261425 m!277581))

(assert (=> b!261425 m!276871))

(declare-fun m!277583 () Bool)

(assert (=> b!261425 m!277583))

(assert (=> b!260911 d!62839))

(declare-fun b!261426 () Bool)

(declare-fun e!169412 () Bool)

(declare-fun call!24961 () Bool)

(assert (=> b!261426 (= e!169412 call!24961)))

(declare-fun bm!24958 () Bool)

(assert (=> bm!24958 (= call!24961 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (mask!11145 thiss!1504)))))

(declare-fun b!261427 () Bool)

(declare-fun e!169414 () Bool)

(declare-fun e!169413 () Bool)

(assert (=> b!261427 (= e!169414 e!169413)))

(declare-fun c!44492 () Bool)

(assert (=> b!261427 (= c!44492 (validKeyInArray!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!62841 () Bool)

(declare-fun res!127765 () Bool)

(assert (=> d!62841 (=> res!127765 e!169414)))

(assert (=> d!62841 (= res!127765 (bvsge #b00000000000000000000000000000000 (size!6318 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))))))))

(assert (=> d!62841 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (mask!11145 thiss!1504)) e!169414)))

(declare-fun b!261428 () Bool)

(assert (=> b!261428 (= e!169413 call!24961)))

(declare-fun b!261429 () Bool)

(assert (=> b!261429 (= e!169413 e!169412)))

(declare-fun lt!132057 () (_ BitVec 64))

(assert (=> b!261429 (= lt!132057 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!132056 () Unit!8105)

(assert (=> b!261429 (= lt!132056 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) lt!132057 #b00000000000000000000000000000000))))

(assert (=> b!261429 (arrayContainsKey!0 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) lt!132057 #b00000000000000000000000000000000)))

(declare-fun lt!132058 () Unit!8105)

(assert (=> b!261429 (= lt!132058 lt!132056)))

(declare-fun res!127764 () Bool)

(assert (=> b!261429 (= res!127764 (= (seekEntryOrOpen!0 (select (arr!5968 (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504)))) #b00000000000000000000000000000000) (array!12611 (store (arr!5968 (_keys!6992 thiss!1504)) index!297 key!932) (size!6318 (_keys!6992 thiss!1504))) (mask!11145 thiss!1504)) (Found!1195 #b00000000000000000000000000000000)))))

(assert (=> b!261429 (=> (not res!127764) (not e!169412))))

(assert (= (and d!62841 (not res!127765)) b!261427))

(assert (= (and b!261427 c!44492) b!261429))

(assert (= (and b!261427 (not c!44492)) b!261428))

(assert (= (and b!261429 res!127764) b!261426))

(assert (= (or b!261426 b!261428) bm!24958))

(declare-fun m!277585 () Bool)

(assert (=> bm!24958 m!277585))

(assert (=> b!261427 m!277111))

(assert (=> b!261427 m!277111))

(assert (=> b!261427 m!277147))

(assert (=> b!261429 m!277111))

(declare-fun m!277587 () Bool)

(assert (=> b!261429 m!277587))

(declare-fun m!277589 () Bool)

(assert (=> b!261429 m!277589))

(assert (=> b!261429 m!277111))

(declare-fun m!277591 () Bool)

(assert (=> b!261429 m!277591))

(assert (=> b!261031 d!62841))

(declare-fun d!62843 () Bool)

(declare-fun e!169415 () Bool)

(assert (=> d!62843 e!169415))

(declare-fun res!127766 () Bool)

(assert (=> d!62843 (=> res!127766 e!169415)))

(declare-fun lt!132060 () Bool)

(assert (=> d!62843 (= res!127766 (not lt!132060))))

(declare-fun lt!132059 () Bool)

(assert (=> d!62843 (= lt!132060 lt!132059)))

(declare-fun lt!132061 () Unit!8105)

(declare-fun e!169416 () Unit!8105)

(assert (=> d!62843 (= lt!132061 e!169416)))

(declare-fun c!44493 () Bool)

(assert (=> d!62843 (= c!44493 lt!132059)))

(assert (=> d!62843 (= lt!132059 (containsKey!308 (toList!1953 lt!131813) (_1!2484 (tuple2!4949 key!932 v!346))))))

(assert (=> d!62843 (= (contains!1893 lt!131813 (_1!2484 (tuple2!4949 key!932 v!346))) lt!132060)))

(declare-fun b!261430 () Bool)

(declare-fun lt!132062 () Unit!8105)

(assert (=> b!261430 (= e!169416 lt!132062)))

(assert (=> b!261430 (= lt!132062 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131813) (_1!2484 (tuple2!4949 key!932 v!346))))))

(assert (=> b!261430 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131813) (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun b!261431 () Bool)

(declare-fun Unit!8125 () Unit!8105)

(assert (=> b!261431 (= e!169416 Unit!8125)))

(declare-fun b!261432 () Bool)

(assert (=> b!261432 (= e!169415 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131813) (_1!2484 (tuple2!4949 key!932 v!346)))))))

(assert (= (and d!62843 c!44493) b!261430))

(assert (= (and d!62843 (not c!44493)) b!261431))

(assert (= (and d!62843 (not res!127766)) b!261432))

(declare-fun m!277593 () Bool)

(assert (=> d!62843 m!277593))

(declare-fun m!277595 () Bool)

(assert (=> b!261430 m!277595))

(assert (=> b!261430 m!276981))

(assert (=> b!261430 m!276981))

(declare-fun m!277597 () Bool)

(assert (=> b!261430 m!277597))

(assert (=> b!261432 m!276981))

(assert (=> b!261432 m!276981))

(assert (=> b!261432 m!277597))

(assert (=> d!62651 d!62843))

(declare-fun b!261436 () Bool)

(declare-fun e!169418 () Option!322)

(assert (=> b!261436 (= e!169418 None!320)))

(declare-fun b!261435 () Bool)

(assert (=> b!261435 (= e!169418 (getValueByKey!316 (t!8929 lt!131810) (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun b!261433 () Bool)

(declare-fun e!169417 () Option!322)

(assert (=> b!261433 (= e!169417 (Some!321 (_2!2484 (h!4511 lt!131810))))))

(declare-fun d!62845 () Bool)

(declare-fun c!44494 () Bool)

(assert (=> d!62845 (= c!44494 (and ((_ is Cons!3846) lt!131810) (= (_1!2484 (h!4511 lt!131810)) (_1!2484 (tuple2!4949 key!932 v!346)))))))

(assert (=> d!62845 (= (getValueByKey!316 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346))) e!169417)))

(declare-fun b!261434 () Bool)

(assert (=> b!261434 (= e!169417 e!169418)))

(declare-fun c!44495 () Bool)

(assert (=> b!261434 (= c!44495 (and ((_ is Cons!3846) lt!131810) (not (= (_1!2484 (h!4511 lt!131810)) (_1!2484 (tuple2!4949 key!932 v!346))))))))

(assert (= (and d!62845 c!44494) b!261433))

(assert (= (and d!62845 (not c!44494)) b!261434))

(assert (= (and b!261434 c!44495) b!261435))

(assert (= (and b!261434 (not c!44495)) b!261436))

(declare-fun m!277599 () Bool)

(assert (=> b!261435 m!277599))

(assert (=> d!62651 d!62845))

(declare-fun d!62847 () Bool)

(assert (=> d!62847 (= (getValueByKey!316 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346))) (Some!321 (_2!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun lt!132065 () Unit!8105)

(declare-fun choose!1287 (List!3850 (_ BitVec 64) V!8483) Unit!8105)

(assert (=> d!62847 (= lt!132065 (choose!1287 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun e!169421 () Bool)

(assert (=> d!62847 e!169421))

(declare-fun res!127771 () Bool)

(assert (=> d!62847 (=> (not res!127771) (not e!169421))))

(assert (=> d!62847 (= res!127771 (isStrictlySorted!371 lt!131810))))

(assert (=> d!62847 (= (lemmaContainsTupThenGetReturnValue!174 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))) lt!132065)))

(declare-fun b!261441 () Bool)

(declare-fun res!127772 () Bool)

(assert (=> b!261441 (=> (not res!127772) (not e!169421))))

(assert (=> b!261441 (= res!127772 (containsKey!308 lt!131810 (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun b!261442 () Bool)

(assert (=> b!261442 (= e!169421 (contains!1895 lt!131810 (tuple2!4949 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346)))))))

(assert (= (and d!62847 res!127771) b!261441))

(assert (= (and b!261441 res!127772) b!261442))

(assert (=> d!62847 m!276975))

(declare-fun m!277601 () Bool)

(assert (=> d!62847 m!277601))

(declare-fun m!277603 () Bool)

(assert (=> d!62847 m!277603))

(declare-fun m!277605 () Bool)

(assert (=> b!261441 m!277605))

(declare-fun m!277607 () Bool)

(assert (=> b!261442 m!277607))

(assert (=> d!62651 d!62847))

(declare-fun e!169436 () List!3850)

(declare-fun b!261463 () Bool)

(assert (=> b!261463 (= e!169436 (insertStrictlySorted!176 (t!8929 (toList!1953 lt!131656)) (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun b!261464 () Bool)

(declare-fun e!169434 () List!3850)

(declare-fun call!24970 () List!3850)

(assert (=> b!261464 (= e!169434 call!24970)))

(declare-fun b!261465 () Bool)

(declare-fun c!44504 () Bool)

(assert (=> b!261465 (= c!44504 (and ((_ is Cons!3846) (toList!1953 lt!131656)) (bvsgt (_1!2484 (h!4511 (toList!1953 lt!131656))) (_1!2484 (tuple2!4949 key!932 v!346)))))))

(declare-fun e!169433 () List!3850)

(assert (=> b!261465 (= e!169433 e!169434)))

(declare-fun b!261466 () Bool)

(declare-fun call!24969 () List!3850)

(assert (=> b!261466 (= e!169433 call!24969)))

(declare-fun b!261467 () Bool)

(assert (=> b!261467 (= e!169434 call!24970)))

(declare-fun e!169432 () Bool)

(declare-fun b!261468 () Bool)

(declare-fun lt!132068 () List!3850)

(assert (=> b!261468 (= e!169432 (contains!1895 lt!132068 (tuple2!4949 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346)))))))

(declare-fun bm!24965 () Bool)

(declare-fun call!24968 () List!3850)

(assert (=> bm!24965 (= call!24969 call!24968)))

(declare-fun c!44507 () Bool)

(declare-fun bm!24966 () Bool)

(declare-fun $colon$colon!106 (List!3850 tuple2!4948) List!3850)

(assert (=> bm!24966 (= call!24968 ($colon$colon!106 e!169436 (ite c!44507 (h!4511 (toList!1953 lt!131656)) (tuple2!4949 (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))))))))

(declare-fun c!44506 () Bool)

(assert (=> bm!24966 (= c!44506 c!44507)))

(declare-fun bm!24967 () Bool)

(assert (=> bm!24967 (= call!24970 call!24969)))

(declare-fun b!261470 () Bool)

(declare-fun e!169435 () List!3850)

(assert (=> b!261470 (= e!169435 call!24968)))

(declare-fun b!261469 () Bool)

(declare-fun res!127778 () Bool)

(assert (=> b!261469 (=> (not res!127778) (not e!169432))))

(assert (=> b!261469 (= res!127778 (containsKey!308 lt!132068 (_1!2484 (tuple2!4949 key!932 v!346))))))

(declare-fun d!62849 () Bool)

(assert (=> d!62849 e!169432))

(declare-fun res!127777 () Bool)

(assert (=> d!62849 (=> (not res!127777) (not e!169432))))

(assert (=> d!62849 (= res!127777 (isStrictlySorted!371 lt!132068))))

(assert (=> d!62849 (= lt!132068 e!169435)))

(assert (=> d!62849 (= c!44507 (and ((_ is Cons!3846) (toList!1953 lt!131656)) (bvslt (_1!2484 (h!4511 (toList!1953 lt!131656))) (_1!2484 (tuple2!4949 key!932 v!346)))))))

(assert (=> d!62849 (isStrictlySorted!371 (toList!1953 lt!131656))))

(assert (=> d!62849 (= (insertStrictlySorted!176 (toList!1953 lt!131656) (_1!2484 (tuple2!4949 key!932 v!346)) (_2!2484 (tuple2!4949 key!932 v!346))) lt!132068)))

(declare-fun b!261471 () Bool)

(assert (=> b!261471 (= e!169435 e!169433)))

(declare-fun c!44505 () Bool)

(assert (=> b!261471 (= c!44505 (and ((_ is Cons!3846) (toList!1953 lt!131656)) (= (_1!2484 (h!4511 (toList!1953 lt!131656))) (_1!2484 (tuple2!4949 key!932 v!346)))))))

(declare-fun b!261472 () Bool)

(assert (=> b!261472 (= e!169436 (ite c!44505 (t!8929 (toList!1953 lt!131656)) (ite c!44504 (Cons!3846 (h!4511 (toList!1953 lt!131656)) (t!8929 (toList!1953 lt!131656))) Nil!3847)))))

(assert (= (and d!62849 c!44507) b!261470))

(assert (= (and d!62849 (not c!44507)) b!261471))

(assert (= (and b!261471 c!44505) b!261466))

(assert (= (and b!261471 (not c!44505)) b!261465))

(assert (= (and b!261465 c!44504) b!261464))

(assert (= (and b!261465 (not c!44504)) b!261467))

(assert (= (or b!261464 b!261467) bm!24967))

(assert (= (or b!261466 bm!24967) bm!24965))

(assert (= (or b!261470 bm!24965) bm!24966))

(assert (= (and bm!24966 c!44506) b!261463))

(assert (= (and bm!24966 (not c!44506)) b!261472))

(assert (= (and d!62849 res!127777) b!261469))

(assert (= (and b!261469 res!127778) b!261468))

(declare-fun m!277609 () Bool)

(assert (=> b!261463 m!277609))

(declare-fun m!277611 () Bool)

(assert (=> bm!24966 m!277611))

(declare-fun m!277613 () Bool)

(assert (=> b!261468 m!277613))

(declare-fun m!277615 () Bool)

(assert (=> b!261469 m!277615))

(declare-fun m!277617 () Bool)

(assert (=> d!62849 m!277617))

(assert (=> d!62849 m!277539))

(assert (=> d!62651 d!62849))

(declare-fun d!62851 () Bool)

(assert (=> d!62851 (= (apply!259 lt!131856 (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000)) (get!3079 (getValueByKey!316 (toList!1953 lt!131856) (select (arr!5968 (_keys!6992 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9226 () Bool)

(assert (= bs!9226 d!62851))

(assert (=> bs!9226 m!276871))

(assert (=> bs!9226 m!277489))

(assert (=> bs!9226 m!277489))

(declare-fun m!277619 () Bool)

(assert (=> bs!9226 m!277619))

(assert (=> b!261103 d!62851))

(declare-fun d!62853 () Bool)

(declare-fun c!44508 () Bool)

(assert (=> d!62853 (= c!44508 ((_ is ValueCellFull!2970) (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!169437 () V!8483)

(assert (=> d!62853 (= (get!3078 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!169437)))

(declare-fun b!261473 () Bool)

(assert (=> b!261473 (= e!169437 (get!3080 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!261474 () Bool)

(assert (=> b!261474 (= e!169437 (get!3081 (select (arr!5967 (_values!4791 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!597 (defaultEntry!4808 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62853 c!44508) b!261473))

(assert (= (and d!62853 (not c!44508)) b!261474))

(assert (=> b!261473 m!277047))

(assert (=> b!261473 m!276937))

(declare-fun m!277621 () Bool)

(assert (=> b!261473 m!277621))

(assert (=> b!261474 m!277047))

(assert (=> b!261474 m!276937))

(declare-fun m!277623 () Bool)

(assert (=> b!261474 m!277623))

(assert (=> b!261103 d!62853))

(assert (=> bm!24925 d!62641))

(declare-fun d!62855 () Bool)

(assert (=> d!62855 (= (apply!259 lt!131856 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3079 (getValueByKey!316 (toList!1953 lt!131856) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9227 () Bool)

(assert (= bs!9227 d!62855))

(declare-fun m!277625 () Bool)

(assert (=> bs!9227 m!277625))

(assert (=> bs!9227 m!277625))

(declare-fun m!277627 () Bool)

(assert (=> bs!9227 m!277627))

(assert (=> b!261102 d!62855))

(declare-fun b!261485 () Bool)

(declare-fun res!127789 () Bool)

(declare-fun e!169440 () Bool)

(assert (=> b!261485 (=> (not res!127789) (not e!169440))))

(declare-fun size!6321 (LongMapFixedSize!3840) (_ BitVec 32))

(assert (=> b!261485 (= res!127789 (= (size!6321 thiss!1504) (bvadd (_size!1969 thiss!1504) (bvsdiv (bvadd (extraKeys!4545 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!62857 () Bool)

(declare-fun res!127787 () Bool)

(assert (=> d!62857 (=> (not res!127787) (not e!169440))))

(assert (=> d!62857 (= res!127787 (validMask!0 (mask!11145 thiss!1504)))))

(assert (=> d!62857 (= (simpleValid!281 thiss!1504) e!169440)))

(declare-fun b!261486 () Bool)

(assert (=> b!261486 (= e!169440 (and (bvsge (extraKeys!4545 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4545 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1969 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!261483 () Bool)

(declare-fun res!127788 () Bool)

(assert (=> b!261483 (=> (not res!127788) (not e!169440))))

(assert (=> b!261483 (= res!127788 (and (= (size!6317 (_values!4791 thiss!1504)) (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001)) (= (size!6318 (_keys!6992 thiss!1504)) (size!6317 (_values!4791 thiss!1504))) (bvsge (_size!1969 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1969 thiss!1504) (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!261484 () Bool)

(declare-fun res!127790 () Bool)

(assert (=> b!261484 (=> (not res!127790) (not e!169440))))

(assert (=> b!261484 (= res!127790 (bvsge (size!6321 thiss!1504) (_size!1969 thiss!1504)))))

(assert (= (and d!62857 res!127787) b!261483))

(assert (= (and b!261483 res!127788) b!261484))

(assert (= (and b!261484 res!127790) b!261485))

(assert (= (and b!261485 res!127789) b!261486))

(declare-fun m!277629 () Bool)

(assert (=> b!261485 m!277629))

(assert (=> d!62857 m!276763))

(assert (=> b!261484 m!277629))

(assert (=> d!62621 d!62857))

(assert (=> d!62639 d!62631))

(assert (=> d!62667 d!62631))

(assert (=> d!62627 d!62625))

(declare-fun d!62859 () Bool)

(assert (=> d!62859 (arrayContainsKey!0 lt!131653 key!932 #b00000000000000000000000000000000)))

(assert (=> d!62859 true))

(declare-fun _$60!387 () Unit!8105)

(assert (=> d!62859 (= (choose!13 lt!131653 key!932 index!297) _$60!387)))

(declare-fun bs!9228 () Bool)

(assert (= bs!9228 d!62859))

(assert (=> bs!9228 m!276751))

(assert (=> d!62627 d!62859))

(assert (=> b!261044 d!62753))

(declare-fun b!261487 () Bool)

(declare-fun e!169441 () Bool)

(declare-fun call!24971 () Bool)

(assert (=> b!261487 (= e!169441 call!24971)))

(declare-fun bm!24968 () Bool)

(assert (=> bm!24968 (= call!24971 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!131653 (mask!11145 thiss!1504)))))

(declare-fun b!261488 () Bool)

(declare-fun e!169443 () Bool)

(declare-fun e!169442 () Bool)

(assert (=> b!261488 (= e!169443 e!169442)))

(declare-fun c!44509 () Bool)

(assert (=> b!261488 (= c!44509 (validKeyInArray!0 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!62861 () Bool)

(declare-fun res!127792 () Bool)

(assert (=> d!62861 (=> res!127792 e!169443)))

(assert (=> d!62861 (= res!127792 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6318 lt!131653)))))

(assert (=> d!62861 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!131653 (mask!11145 thiss!1504)) e!169443)))

(declare-fun b!261489 () Bool)

(assert (=> b!261489 (= e!169442 call!24971)))

(declare-fun b!261490 () Bool)

(assert (=> b!261490 (= e!169442 e!169441)))

(declare-fun lt!132070 () (_ BitVec 64))

(assert (=> b!261490 (= lt!132070 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!132069 () Unit!8105)

(assert (=> b!261490 (= lt!132069 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131653 lt!132070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!261490 (arrayContainsKey!0 lt!131653 lt!132070 #b00000000000000000000000000000000)))

(declare-fun lt!132071 () Unit!8105)

(assert (=> b!261490 (= lt!132071 lt!132069)))

(declare-fun res!127791 () Bool)

(assert (=> b!261490 (= res!127791 (= (seekEntryOrOpen!0 (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!131653 (mask!11145 thiss!1504)) (Found!1195 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!261490 (=> (not res!127791) (not e!169441))))

(assert (= (and d!62861 (not res!127792)) b!261488))

(assert (= (and b!261488 c!44509) b!261490))

(assert (= (and b!261488 (not c!44509)) b!261489))

(assert (= (and b!261490 res!127791) b!261487))

(assert (= (or b!261487 b!261489) bm!24968))

(declare-fun m!277631 () Bool)

(assert (=> bm!24968 m!277631))

(assert (=> b!261488 m!277311))

(assert (=> b!261488 m!277311))

(assert (=> b!261488 m!277313))

(assert (=> b!261490 m!277311))

(declare-fun m!277633 () Bool)

(assert (=> b!261490 m!277633))

(declare-fun m!277635 () Bool)

(assert (=> b!261490 m!277635))

(assert (=> b!261490 m!277311))

(declare-fun m!277637 () Bool)

(assert (=> b!261490 m!277637))

(assert (=> bm!24894 d!62861))

(assert (=> b!261101 d!62739))

(declare-fun d!62863 () Bool)

(assert (=> d!62863 (= (inRange!0 (ite c!44402 (index!6950 lt!131822) (index!6953 lt!131822)) (mask!11145 thiss!1504)) (and (bvsge (ite c!44402 (index!6950 lt!131822) (index!6953 lt!131822)) #b00000000000000000000000000000000) (bvslt (ite c!44402 (index!6950 lt!131822) (index!6953 lt!131822)) (bvadd (mask!11145 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24924 d!62863))

(declare-fun d!62865 () Bool)

(declare-fun e!169444 () Bool)

(assert (=> d!62865 e!169444))

(declare-fun res!127793 () Bool)

(assert (=> d!62865 (=> res!127793 e!169444)))

(declare-fun lt!132073 () Bool)

(assert (=> d!62865 (= res!127793 (not lt!132073))))

(declare-fun lt!132072 () Bool)

(assert (=> d!62865 (= lt!132073 lt!132072)))

(declare-fun lt!132074 () Unit!8105)

(declare-fun e!169445 () Unit!8105)

(assert (=> d!62865 (= lt!132074 e!169445)))

(declare-fun c!44510 () Bool)

(assert (=> d!62865 (= c!44510 lt!132072)))

(assert (=> d!62865 (= lt!132072 (containsKey!308 (toList!1953 lt!131856) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62865 (= (contains!1893 lt!131856 #b1000000000000000000000000000000000000000000000000000000000000000) lt!132073)))

(declare-fun b!261491 () Bool)

(declare-fun lt!132075 () Unit!8105)

(assert (=> b!261491 (= e!169445 lt!132075)))

(assert (=> b!261491 (= lt!132075 (lemmaContainsKeyImpliesGetValueByKeyDefined!257 (toList!1953 lt!131856) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261491 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131856) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261492 () Bool)

(declare-fun Unit!8126 () Unit!8105)

(assert (=> b!261492 (= e!169445 Unit!8126)))

(declare-fun b!261493 () Bool)

(assert (=> b!261493 (= e!169444 (isDefined!258 (getValueByKey!316 (toList!1953 lt!131856) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62865 c!44510) b!261491))

(assert (= (and d!62865 (not c!44510)) b!261492))

(assert (= (and d!62865 (not res!127793)) b!261493))

(declare-fun m!277639 () Bool)

(assert (=> d!62865 m!277639))

(declare-fun m!277641 () Bool)

(assert (=> b!261491 m!277641))

(assert (=> b!261491 m!277625))

(assert (=> b!261491 m!277625))

(declare-fun m!277643 () Bool)

(assert (=> b!261491 m!277643))

(assert (=> b!261493 m!277625))

(assert (=> b!261493 m!277625))

(assert (=> b!261493 m!277643))

(assert (=> bm!24932 d!62865))

(declare-fun d!62867 () Bool)

(declare-fun res!127794 () Bool)

(declare-fun e!169446 () Bool)

(assert (=> d!62867 (=> res!127794 e!169446)))

(assert (=> d!62867 (= res!127794 (= (select (arr!5968 lt!131653) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!62867 (= (arrayContainsKey!0 lt!131653 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!169446)))

(declare-fun b!261494 () Bool)

(declare-fun e!169447 () Bool)

(assert (=> b!261494 (= e!169446 e!169447)))

(declare-fun res!127795 () Bool)

(assert (=> b!261494 (=> (not res!127795) (not e!169447))))

(assert (=> b!261494 (= res!127795 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6318 lt!131653)))))

(declare-fun b!261495 () Bool)

(assert (=> b!261495 (= e!169447 (arrayContainsKey!0 lt!131653 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!62867 (not res!127794)) b!261494))

(assert (= (and b!261494 res!127795) b!261495))

(assert (=> d!62867 m!277311))

(declare-fun m!277645 () Bool)

(assert (=> b!261495 m!277645))

(assert (=> b!260930 d!62867))

(declare-fun d!62869 () Bool)

(declare-fun lt!132080 () SeekEntryResult!1195)

(assert (=> d!62869 (and (or ((_ is Undefined!1195) lt!132080) (not ((_ is Found!1195) lt!132080)) (and (bvsge (index!6951 lt!132080) #b00000000000000000000000000000000) (bvslt (index!6951 lt!132080) (size!6318 (_keys!6992 thiss!1504))))) (or ((_ is Undefined!1195) lt!132080) ((_ is Found!1195) lt!132080) (not ((_ is MissingVacant!1195) lt!132080)) (not (= (index!6953 lt!132080) (index!6952 lt!131869))) (and (bvsge (index!6953 lt!132080) #b00000000000000000000000000000000) (bvslt (index!6953 lt!132080) (size!6318 (_keys!6992 thiss!1504))))) (or ((_ is Undefined!1195) lt!132080) (ite ((_ is Found!1195) lt!132080) (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6951 lt!132080)) key!932) (and ((_ is MissingVacant!1195) lt!132080) (= (index!6953 lt!132080) (index!6952 lt!131869)) (= (select (arr!5968 (_keys!6992 thiss!1504)) (index!6953 lt!132080)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!169454 () SeekEntryResult!1195)

(assert (=> d!62869 (= lt!132080 e!169454)))

(declare-fun c!44517 () Bool)

(assert (=> d!62869 (= c!44517 (bvsge (x!25159 lt!131869) #b01111111111111111111111111111110))))

(declare-fun lt!132081 () (_ BitVec 64))

(assert (=> d!62869 (= lt!132081 (select (arr!5968 (_keys!6992 thiss!1504)) (index!6952 lt!131869)))))

(assert (=> d!62869 (validMask!0 (mask!11145 thiss!1504))))

(assert (=> d!62869 (= (seekKeyOrZeroReturnVacant!0 (x!25159 lt!131869) (index!6952 lt!131869) (index!6952 lt!131869) key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)) lt!132080)))

(declare-fun b!261508 () Bool)

(assert (=> b!261508 (= e!169454 Undefined!1195)))

(declare-fun b!261509 () Bool)

(declare-fun e!169456 () SeekEntryResult!1195)

(assert (=> b!261509 (= e!169456 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25159 lt!131869) #b00000000000000000000000000000001) (nextIndex!0 (index!6952 lt!131869) (x!25159 lt!131869) (mask!11145 thiss!1504)) (index!6952 lt!131869) key!932 (_keys!6992 thiss!1504) (mask!11145 thiss!1504)))))

(declare-fun b!261510 () Bool)

(declare-fun c!44519 () Bool)

(assert (=> b!261510 (= c!44519 (= lt!132081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169455 () SeekEntryResult!1195)

(assert (=> b!261510 (= e!169455 e!169456)))

(declare-fun b!261511 () Bool)

(assert (=> b!261511 (= e!169456 (MissingVacant!1195 (index!6952 lt!131869)))))

(declare-fun b!261512 () Bool)

(assert (=> b!261512 (= e!169455 (Found!1195 (index!6952 lt!131869)))))

(declare-fun b!261513 () Bool)

(assert (=> b!261513 (= e!169454 e!169455)))

(declare-fun c!44518 () Bool)

(assert (=> b!261513 (= c!44518 (= lt!132081 key!932))))

(assert (= (and d!62869 c!44517) b!261508))

(assert (= (and d!62869 (not c!44517)) b!261513))

(assert (= (and b!261513 c!44518) b!261512))

(assert (= (and b!261513 (not c!44518)) b!261510))

(assert (= (and b!261510 c!44519) b!261511))

(assert (= (and b!261510 (not c!44519)) b!261509))

(declare-fun m!277647 () Bool)

(assert (=> d!62869 m!277647))

(declare-fun m!277649 () Bool)

(assert (=> d!62869 m!277649))

(assert (=> d!62869 m!277079))

(assert (=> d!62869 m!276763))

(declare-fun m!277651 () Bool)

(assert (=> b!261509 m!277651))

(assert (=> b!261509 m!277651))

(declare-fun m!277653 () Bool)

(assert (=> b!261509 m!277653))

(assert (=> b!261139 d!62869))

(declare-fun d!62871 () Bool)

(declare-fun lt!132082 () (_ BitVec 32))

(assert (=> d!62871 (and (bvsge lt!132082 #b00000000000000000000000000000000) (bvsle lt!132082 (bvsub (size!6318 lt!131653) (bvadd index!297 #b00000000000000000000000000000001))))))

(declare-fun e!169458 () (_ BitVec 32))

(assert (=> d!62871 (= lt!132082 e!169458)))

(declare-fun c!44520 () Bool)

(assert (=> d!62871 (= c!44520 (bvsge (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62871 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) (bvsge (bvadd index!297 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6318 lt!131653)))))

(assert (=> d!62871 (= (arrayCountValidKeys!0 lt!131653 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) lt!132082)))

(declare-fun bm!24969 () Bool)

(declare-fun call!24972 () (_ BitVec 32))

(assert (=> bm!24969 (= call!24972 (arrayCountValidKeys!0 lt!131653 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!261514 () Bool)

(declare-fun e!169457 () (_ BitVec 32))

(assert (=> b!261514 (= e!169457 (bvadd #b00000000000000000000000000000001 call!24972))))

(declare-fun b!261515 () Bool)

(assert (=> b!261515 (= e!169458 #b00000000000000000000000000000000)))

(declare-fun b!261516 () Bool)

(assert (=> b!261516 (= e!169457 call!24972)))

(declare-fun b!261517 () Bool)

(assert (=> b!261517 (= e!169458 e!169457)))

(declare-fun c!44521 () Bool)

(assert (=> b!261517 (= c!44521 (validKeyInArray!0 (select (arr!5968 lt!131653) (bvadd index!297 #b00000000000000000000000000000001))))))

(assert (= (and d!62871 c!44520) b!261515))

(assert (= (and d!62871 (not c!44520)) b!261517))

(assert (= (and b!261517 c!44521) b!261514))

(assert (= (and b!261517 (not c!44521)) b!261516))

(assert (= (or b!261514 b!261516) bm!24969))

(declare-fun m!277655 () Bool)

(assert (=> bm!24969 m!277655))

(declare-fun m!277657 () Bool)

(assert (=> b!261517 m!277657))

(assert (=> b!261517 m!277657))

(declare-fun m!277659 () Bool)

(assert (=> b!261517 m!277659))

(assert (=> bm!24916 d!62871))

(declare-fun b!261518 () Bool)

(declare-fun e!169460 () Bool)

(assert (=> b!261518 (= e!169460 tp_is_empty!6627)))

(declare-fun b!261519 () Bool)

(declare-fun e!169459 () Bool)

(assert (=> b!261519 (= e!169459 tp_is_empty!6627)))

(declare-fun mapNonEmpty!11302 () Bool)

(declare-fun mapRes!11302 () Bool)

(declare-fun tp!23632 () Bool)

(assert (=> mapNonEmpty!11302 (= mapRes!11302 (and tp!23632 e!169460))))

(declare-fun mapRest!11302 () (Array (_ BitVec 32) ValueCell!2970))

(declare-fun mapKey!11302 () (_ BitVec 32))

(declare-fun mapValue!11302 () ValueCell!2970)

(assert (=> mapNonEmpty!11302 (= mapRest!11301 (store mapRest!11302 mapKey!11302 mapValue!11302))))

(declare-fun condMapEmpty!11302 () Bool)

(declare-fun mapDefault!11302 () ValueCell!2970)

(assert (=> mapNonEmpty!11301 (= condMapEmpty!11302 (= mapRest!11301 ((as const (Array (_ BitVec 32) ValueCell!2970)) mapDefault!11302)))))

(assert (=> mapNonEmpty!11301 (= tp!23631 (and e!169459 mapRes!11302))))

(declare-fun mapIsEmpty!11302 () Bool)

(assert (=> mapIsEmpty!11302 mapRes!11302))

(assert (= (and mapNonEmpty!11301 condMapEmpty!11302) mapIsEmpty!11302))

(assert (= (and mapNonEmpty!11301 (not condMapEmpty!11302)) mapNonEmpty!11302))

(assert (= (and mapNonEmpty!11302 ((_ is ValueCellFull!2970) mapValue!11302)) b!261518))

(assert (= (and mapNonEmpty!11301 ((_ is ValueCellFull!2970) mapDefault!11302)) b!261519))

(declare-fun m!277661 () Bool)

(assert (=> mapNonEmpty!11302 m!277661))

(declare-fun b_lambda!8335 () Bool)

(assert (= b_lambda!8327 (or (and b!260823 b_free!6765) b_lambda!8335)))

(declare-fun b_lambda!8337 () Bool)

(assert (= b_lambda!8333 (or (and b!260823 b_free!6765) b_lambda!8337)))

(declare-fun b_lambda!8339 () Bool)

(assert (= b_lambda!8325 (or (and b!260823 b_free!6765) b_lambda!8339)))

(declare-fun b_lambda!8341 () Bool)

(assert (= b_lambda!8329 (or (and b!260823 b_free!6765) b_lambda!8341)))

(declare-fun b_lambda!8343 () Bool)

(assert (= b_lambda!8331 (or (and b!260823 b_free!6765) b_lambda!8343)))

(check-sat (not b!261469) (not b!261334) (not b!261427) (not d!62747) (not b!261223) (not b!261216) (not b!261335) (not b!261365) (not b!261328) (not b!261340) b_and!13919 (not bm!24968) (not d!62715) (not b!261373) (not d!62767) (not bm!24957) (not d!62805) (not b!261218) (not d!62721) (not mapNonEmpty!11302) (not b_next!6765) (not d!62761) (not b!261231) (not b!261375) (not d!62681) (not b!261419) (not b!261425) (not d!62673) (not bm!24955) (not b!261217) (not b!261260) (not b!261463) (not d!62825) (not bm!24948) (not b!261225) (not b!261353) (not b!261484) (not b!261362) (not bm!24935) (not b_lambda!8335) (not b!261175) (not b!261273) (not d!62691) (not b!261342) (not b!261468) (not d!62789) (not b!261412) (not b!261485) (not b!261416) (not d!62807) (not b!261423) (not b!261355) (not b!261221) (not b!261413) (not d!62685) (not bm!24934) (not b!261329) (not b!261339) (not b!261410) (not b!261307) (not b!261415) (not d!62757) (not b!261264) (not d!62869) (not b!261212) (not d!62777) (not b!261441) (not b!261302) (not d!62849) (not b!261397) tp_is_empty!6627 (not b!261301) (not b!261311) (not b!261165) (not bm!24947) (not d!62711) (not d!62763) (not b!261259) (not d!62697) (not b!261305) (not d!62693) (not d!62801) (not b!261517) (not bm!24942) (not b_lambda!8321) (not d!62707) (not bm!24954) (not b!261398) (not b!261315) (not b!261186) (not b!261474) (not d!62695) (not b!261341) (not b!261309) (not b!261214) (not b!261364) (not b!261304) (not b!261326) (not b!261409) (not b!261366) (not d!62833) (not b!261488) (not b_lambda!8339) (not b!261495) (not d!62773) (not b!261432) (not d!62771) (not b!261164) (not bm!24951) (not b!261261) (not bm!24952) (not d!62725) (not bm!24956) (not bm!24937) (not b!261386) (not d!62843) (not b!261313) (not b!261338) (not b!261162) (not b!261331) (not b!261361) (not b!261269) (not d!62717) (not d!62689) (not d!62811) (not d!62705) (not bm!24966) (not b!261158) (not bm!24939) (not d!62719) (not d!62751) (not d!62837) (not bm!24950) (not b!261346) (not b!261430) (not b!261400) (not b!261435) (not d!62775) (not b!261271) (not d!62769) (not d!62859) (not d!62781) (not b!261170) (not b!261323) (not d!62831) (not d!62797) (not d!62813) (not b!261345) (not b!261159) (not d!62787) (not d!62759) (not b!261232) (not b_lambda!8323) (not b!261491) (not b!261390) (not b!261185) (not d!62851) (not b!261325) (not b!261371) (not b!261401) (not b!261178) (not b!261354) (not d!62835) (not b!261348) (not b!261330) (not d!62723) (not d!62793) (not b!261421) (not b!261224) (not b!261265) (not d!62829) (not b!261219) (not b!261268) (not b!261490) (not d!62703) (not b!261176) (not bm!24958) (not d!62857) (not d!62727) (not b!261473) (not d!62817) (not bm!24969) (not b!261258) (not d!62677) (not d!62855) (not b!261344) (not b!261349) (not d!62699) (not d!62847) (not b!261406) (not b!261442) (not d!62679) (not bm!24953) (not d!62731) (not d!62741) (not d!62783) (not d!62785) (not b!261157) (not b!261163) (not d!62713) (not bm!24949) (not b_lambda!8337) (not b!261429) (not d!62701) (not d!62765) (not b!261222) (not d!62799) (not b!261420) (not d!62709) (not b!261493) (not b!261417) (not d!62779) (not d!62865) (not d!62803) (not d!62733) (not b_lambda!8341) (not b_lambda!8343) (not b!261509))
(check-sat b_and!13919 (not b_next!6765))
