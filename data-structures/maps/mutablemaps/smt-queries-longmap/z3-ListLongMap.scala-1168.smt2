; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24928 () Bool)

(assert start!24928)

(declare-fun b!260029 () Bool)

(declare-fun b_free!6759 () Bool)

(declare-fun b_next!6759 () Bool)

(assert (=> b!260029 (= b_free!6759 (not b_next!6759))))

(declare-fun tp!23600 () Bool)

(declare-fun b_and!13883 () Bool)

(assert (=> b!260029 (= tp!23600 b_and!13883)))

(declare-fun b!260016 () Bool)

(declare-datatypes ((Unit!8084 0))(
  ( (Unit!8085) )
))
(declare-fun e!168539 () Unit!8084)

(declare-fun Unit!8086 () Unit!8084)

(assert (=> b!260016 (= e!168539 Unit!8086)))

(declare-fun lt!131146 () Unit!8084)

(declare-datatypes ((V!8475 0))(
  ( (V!8476 (val!3355 Int)) )
))
(declare-datatypes ((ValueCell!2967 0))(
  ( (ValueCellFull!2967 (v!5464 V!8475)) (EmptyCell!2967) )
))
(declare-datatypes ((array!12594 0))(
  ( (array!12595 (arr!5961 (Array (_ BitVec 32) ValueCell!2967)) (size!6310 (_ BitVec 32))) )
))
(declare-datatypes ((array!12596 0))(
  ( (array!12597 (arr!5962 (Array (_ BitVec 32) (_ BitVec 64))) (size!6311 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3834 0))(
  ( (LongMapFixedSize!3835 (defaultEntry!4795 Int) (mask!11121 (_ BitVec 32)) (extraKeys!4532 (_ BitVec 32)) (zeroValue!4636 V!8475) (minValue!4636 V!8475) (_size!1966 (_ BitVec 32)) (_keys!6975 array!12596) (_values!4778 array!12594) (_vacant!1966 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3834)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!443 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 64) Int) Unit!8084)

(assert (=> b!260016 (= lt!131146 (lemmaInListMapThenSeekEntryOrOpenFindsIt!443 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)))))

(assert (=> b!260016 false))

(declare-fun mapNonEmpty!11282 () Bool)

(declare-fun mapRes!11282 () Bool)

(declare-fun tp!23599 () Bool)

(declare-fun e!168540 () Bool)

(assert (=> mapNonEmpty!11282 (= mapRes!11282 (and tp!23599 e!168540))))

(declare-fun mapKey!11282 () (_ BitVec 32))

(declare-fun mapRest!11282 () (Array (_ BitVec 32) ValueCell!2967))

(declare-fun mapValue!11282 () ValueCell!2967)

(assert (=> mapNonEmpty!11282 (= (arr!5961 (_values!4778 thiss!1504)) (store mapRest!11282 mapKey!11282 mapValue!11282))))

(declare-fun b!260017 () Bool)

(declare-fun e!168528 () Bool)

(declare-fun e!168530 () Bool)

(assert (=> b!260017 (= e!168528 (and e!168530 mapRes!11282))))

(declare-fun condMapEmpty!11282 () Bool)

(declare-fun mapDefault!11282 () ValueCell!2967)

(assert (=> b!260017 (= condMapEmpty!11282 (= (arr!5961 (_values!4778 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2967)) mapDefault!11282)))))

(declare-fun b!260018 () Bool)

(declare-fun e!168534 () Bool)

(declare-fun call!24784 () Bool)

(assert (=> b!260018 (= e!168534 (not call!24784))))

(declare-fun b!260019 () Bool)

(declare-fun tp_is_empty!6621 () Bool)

(assert (=> b!260019 (= e!168540 tp_is_empty!6621)))

(declare-fun b!260020 () Bool)

(declare-fun c!44154 () Bool)

(declare-datatypes ((SeekEntryResult!1193 0))(
  ( (MissingZero!1193 (index!6942 (_ BitVec 32))) (Found!1193 (index!6943 (_ BitVec 32))) (Intermediate!1193 (undefined!2005 Bool) (index!6944 (_ BitVec 32)) (x!25131 (_ BitVec 32))) (Undefined!1193) (MissingVacant!1193 (index!6945 (_ BitVec 32))) )
))
(declare-fun lt!131156 () SeekEntryResult!1193)

(get-info :version)

(assert (=> b!260020 (= c!44154 ((_ is MissingVacant!1193) lt!131156))))

(declare-fun e!168527 () Bool)

(declare-fun e!168533 () Bool)

(assert (=> b!260020 (= e!168527 e!168533)))

(declare-fun b!260021 () Bool)

(declare-fun res!127112 () Bool)

(assert (=> b!260021 (= res!127112 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6945 lt!131156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168529 () Bool)

(assert (=> b!260021 (=> (not res!127112) (not e!168529))))

(declare-fun b!260022 () Bool)

(declare-fun e!168532 () Unit!8084)

(declare-fun Unit!8087 () Unit!8084)

(assert (=> b!260022 (= e!168532 Unit!8087)))

(declare-fun call!24783 () Bool)

(declare-fun c!44152 () Bool)

(declare-fun bm!24780 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24780 (= call!24783 (inRange!0 (ite c!44152 (index!6942 lt!131156) (index!6945 lt!131156)) (mask!11121 thiss!1504)))))

(declare-fun b!260023 () Bool)

(declare-fun e!168531 () Bool)

(assert (=> b!260023 (= e!168531 (or (not (= (size!6310 (_values!4778 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11121 thiss!1504)))) (not (= (size!6311 (_keys!6975 thiss!1504)) (size!6310 (_values!4778 thiss!1504)))) (bvslt (mask!11121 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4532 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun res!127114 () Bool)

(declare-fun e!168537 () Bool)

(assert (=> start!24928 (=> (not res!127114) (not e!168537))))

(declare-fun valid!1489 (LongMapFixedSize!3834) Bool)

(assert (=> start!24928 (= res!127114 (valid!1489 thiss!1504))))

(assert (=> start!24928 e!168537))

(declare-fun e!168535 () Bool)

(assert (=> start!24928 e!168535))

(assert (=> start!24928 true))

(assert (=> start!24928 tp_is_empty!6621))

(declare-fun b!260015 () Bool)

(assert (=> b!260015 (= e!168529 (not call!24784))))

(declare-fun b!260024 () Bool)

(declare-fun e!168538 () Bool)

(assert (=> b!260024 (= e!168537 e!168538)))

(declare-fun res!127116 () Bool)

(assert (=> b!260024 (=> (not res!127116) (not e!168538))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!260024 (= res!127116 (or (= lt!131156 (MissingZero!1193 index!297)) (= lt!131156 (MissingVacant!1193 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12596 (_ BitVec 32)) SeekEntryResult!1193)

(assert (=> b!260024 (= lt!131156 (seekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun b!260025 () Bool)

(declare-fun res!127111 () Bool)

(assert (=> b!260025 (=> (not res!127111) (not e!168537))))

(assert (=> b!260025 (= res!127111 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!260026 () Bool)

(declare-fun e!168536 () Bool)

(assert (=> b!260026 (= e!168536 (not e!168531))))

(declare-fun res!127110 () Bool)

(assert (=> b!260026 (=> res!127110 e!168531)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!260026 (= res!127110 (not (validMask!0 (mask!11121 thiss!1504))))))

(declare-fun lt!131155 () array!12596)

(declare-fun arrayCountValidKeys!0 (array!12596 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!260026 (= (arrayCountValidKeys!0 lt!131155 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!131154 () Unit!8084)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12596 (_ BitVec 32)) Unit!8084)

(assert (=> b!260026 (= lt!131154 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!131155 index!297))))

(declare-fun arrayContainsKey!0 (array!12596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!260026 (arrayContainsKey!0 lt!131155 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!131149 () Unit!8084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12596 (_ BitVec 64) (_ BitVec 32)) Unit!8084)

(assert (=> b!260026 (= lt!131149 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131155 key!932 index!297))))

(declare-datatypes ((tuple2!4944 0))(
  ( (tuple2!4945 (_1!2482 (_ BitVec 64)) (_2!2482 V!8475)) )
))
(declare-datatypes ((List!3846 0))(
  ( (Nil!3843) (Cons!3842 (h!4506 tuple2!4944) (t!8923 List!3846)) )
))
(declare-datatypes ((ListLongMap!3871 0))(
  ( (ListLongMap!3872 (toList!1951 List!3846)) )
))
(declare-fun lt!131148 () ListLongMap!3871)

(declare-fun v!346 () V!8475)

(declare-fun +!694 (ListLongMap!3871 tuple2!4944) ListLongMap!3871)

(declare-fun getCurrentListMap!1474 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 32) Int) ListLongMap!3871)

(assert (=> b!260026 (= (+!694 lt!131148 (tuple2!4945 key!932 v!346)) (getCurrentListMap!1474 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131147 () Unit!8084)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!109 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 32) (_ BitVec 64) V!8475 Int) Unit!8084)

(assert (=> b!260026 (= lt!131147 (lemmaAddValidKeyToArrayThenAddPairToListMap!109 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) index!297 key!932 v!346 (defaultEntry!4795 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12596 (_ BitVec 32)) Bool)

(assert (=> b!260026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!131155 (mask!11121 thiss!1504))))

(declare-fun lt!131145 () Unit!8084)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12596 (_ BitVec 32) (_ BitVec 32)) Unit!8084)

(assert (=> b!260026 (= lt!131145 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) index!297 (mask!11121 thiss!1504)))))

(assert (=> b!260026 (= (arrayCountValidKeys!0 lt!131155 #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504)))))))

(declare-fun lt!131144 () Unit!8084)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12596 (_ BitVec 32) (_ BitVec 64)) Unit!8084)

(assert (=> b!260026 (= lt!131144 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6975 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3847 0))(
  ( (Nil!3844) (Cons!3843 (h!4507 (_ BitVec 64)) (t!8924 List!3847)) )
))
(declare-fun arrayNoDuplicates!0 (array!12596 (_ BitVec 32) List!3847) Bool)

(assert (=> b!260026 (arrayNoDuplicates!0 lt!131155 #b00000000000000000000000000000000 Nil!3844)))

(assert (=> b!260026 (= lt!131155 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun lt!131151 () Unit!8084)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12596 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3847) Unit!8084)

(assert (=> b!260026 (= lt!131151 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6975 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3844))))

(declare-fun lt!131153 () Unit!8084)

(assert (=> b!260026 (= lt!131153 e!168532)))

(declare-fun c!44153 () Bool)

(assert (=> b!260026 (= c!44153 (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!260027 () Bool)

(assert (=> b!260027 (= e!168533 ((_ is Undefined!1193) lt!131156))))

(declare-fun b!260028 () Bool)

(assert (=> b!260028 (= e!168530 tp_is_empty!6621)))

(declare-fun mapIsEmpty!11282 () Bool)

(assert (=> mapIsEmpty!11282 mapRes!11282))

(declare-fun array_inv!3929 (array!12596) Bool)

(declare-fun array_inv!3930 (array!12594) Bool)

(assert (=> b!260029 (= e!168535 (and tp!23600 tp_is_empty!6621 (array_inv!3929 (_keys!6975 thiss!1504)) (array_inv!3930 (_values!4778 thiss!1504)) e!168528))))

(declare-fun b!260030 () Bool)

(declare-fun Unit!8088 () Unit!8084)

(assert (=> b!260030 (= e!168532 Unit!8088)))

(declare-fun lt!131150 () Unit!8084)

(declare-fun lemmaArrayContainsKeyThenInListMap!251 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 64) (_ BitVec 32) Int) Unit!8084)

(assert (=> b!260030 (= lt!131150 (lemmaArrayContainsKeyThenInListMap!251 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(assert (=> b!260030 false))

(declare-fun b!260031 () Bool)

(declare-fun lt!131143 () Unit!8084)

(assert (=> b!260031 (= e!168539 lt!131143)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!443 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 64) Int) Unit!8084)

(assert (=> b!260031 (= lt!131143 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!443 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)))))

(assert (=> b!260031 (= c!44152 ((_ is MissingZero!1193) lt!131156))))

(assert (=> b!260031 e!168527))

(declare-fun b!260032 () Bool)

(declare-fun res!127113 () Bool)

(assert (=> b!260032 (=> (not res!127113) (not e!168534))))

(assert (=> b!260032 (= res!127113 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6942 lt!131156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260033 () Bool)

(assert (=> b!260033 (= e!168533 e!168529)))

(declare-fun res!127117 () Bool)

(assert (=> b!260033 (= res!127117 call!24783)))

(assert (=> b!260033 (=> (not res!127117) (not e!168529))))

(declare-fun b!260034 () Bool)

(declare-fun res!127115 () Bool)

(assert (=> b!260034 (=> (not res!127115) (not e!168534))))

(assert (=> b!260034 (= res!127115 call!24783)))

(assert (=> b!260034 (= e!168527 e!168534)))

(declare-fun bm!24781 () Bool)

(assert (=> bm!24781 (= call!24784 (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!260035 () Bool)

(assert (=> b!260035 (= e!168538 e!168536)))

(declare-fun res!127109 () Bool)

(assert (=> b!260035 (=> (not res!127109) (not e!168536))))

(assert (=> b!260035 (= res!127109 (inRange!0 index!297 (mask!11121 thiss!1504)))))

(declare-fun lt!131152 () Unit!8084)

(assert (=> b!260035 (= lt!131152 e!168539)))

(declare-fun c!44155 () Bool)

(declare-fun contains!1890 (ListLongMap!3871 (_ BitVec 64)) Bool)

(assert (=> b!260035 (= c!44155 (contains!1890 lt!131148 key!932))))

(assert (=> b!260035 (= lt!131148 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(assert (= (and start!24928 res!127114) b!260025))

(assert (= (and b!260025 res!127111) b!260024))

(assert (= (and b!260024 res!127116) b!260035))

(assert (= (and b!260035 c!44155) b!260016))

(assert (= (and b!260035 (not c!44155)) b!260031))

(assert (= (and b!260031 c!44152) b!260034))

(assert (= (and b!260031 (not c!44152)) b!260020))

(assert (= (and b!260034 res!127115) b!260032))

(assert (= (and b!260032 res!127113) b!260018))

(assert (= (and b!260020 c!44154) b!260033))

(assert (= (and b!260020 (not c!44154)) b!260027))

(assert (= (and b!260033 res!127117) b!260021))

(assert (= (and b!260021 res!127112) b!260015))

(assert (= (or b!260034 b!260033) bm!24780))

(assert (= (or b!260018 b!260015) bm!24781))

(assert (= (and b!260035 res!127109) b!260026))

(assert (= (and b!260026 c!44153) b!260030))

(assert (= (and b!260026 (not c!44153)) b!260022))

(assert (= (and b!260026 (not res!127110)) b!260023))

(assert (= (and b!260017 condMapEmpty!11282) mapIsEmpty!11282))

(assert (= (and b!260017 (not condMapEmpty!11282)) mapNonEmpty!11282))

(assert (= (and mapNonEmpty!11282 ((_ is ValueCellFull!2967) mapValue!11282)) b!260019))

(assert (= (and b!260017 ((_ is ValueCellFull!2967) mapDefault!11282)) b!260028))

(assert (= b!260029 b!260017))

(assert (= start!24928 b!260029))

(declare-fun m!275723 () Bool)

(assert (=> b!260024 m!275723))

(declare-fun m!275725 () Bool)

(assert (=> b!260029 m!275725))

(declare-fun m!275727 () Bool)

(assert (=> b!260029 m!275727))

(declare-fun m!275729 () Bool)

(assert (=> start!24928 m!275729))

(declare-fun m!275731 () Bool)

(assert (=> b!260030 m!275731))

(declare-fun m!275733 () Bool)

(assert (=> b!260031 m!275733))

(declare-fun m!275735 () Bool)

(assert (=> bm!24780 m!275735))

(declare-fun m!275737 () Bool)

(assert (=> bm!24781 m!275737))

(declare-fun m!275739 () Bool)

(assert (=> b!260016 m!275739))

(declare-fun m!275741 () Bool)

(assert (=> b!260035 m!275741))

(declare-fun m!275743 () Bool)

(assert (=> b!260035 m!275743))

(declare-fun m!275745 () Bool)

(assert (=> b!260035 m!275745))

(declare-fun m!275747 () Bool)

(assert (=> b!260021 m!275747))

(declare-fun m!275749 () Bool)

(assert (=> b!260032 m!275749))

(declare-fun m!275751 () Bool)

(assert (=> mapNonEmpty!11282 m!275751))

(declare-fun m!275753 () Bool)

(assert (=> b!260026 m!275753))

(assert (=> b!260026 m!275737))

(declare-fun m!275755 () Bool)

(assert (=> b!260026 m!275755))

(declare-fun m!275757 () Bool)

(assert (=> b!260026 m!275757))

(declare-fun m!275759 () Bool)

(assert (=> b!260026 m!275759))

(declare-fun m!275761 () Bool)

(assert (=> b!260026 m!275761))

(declare-fun m!275763 () Bool)

(assert (=> b!260026 m!275763))

(declare-fun m!275765 () Bool)

(assert (=> b!260026 m!275765))

(declare-fun m!275767 () Bool)

(assert (=> b!260026 m!275767))

(declare-fun m!275769 () Bool)

(assert (=> b!260026 m!275769))

(declare-fun m!275771 () Bool)

(assert (=> b!260026 m!275771))

(declare-fun m!275773 () Bool)

(assert (=> b!260026 m!275773))

(declare-fun m!275775 () Bool)

(assert (=> b!260026 m!275775))

(declare-fun m!275777 () Bool)

(assert (=> b!260026 m!275777))

(declare-fun m!275779 () Bool)

(assert (=> b!260026 m!275779))

(declare-fun m!275781 () Bool)

(assert (=> b!260026 m!275781))

(declare-fun m!275783 () Bool)

(assert (=> b!260026 m!275783))

(declare-fun m!275785 () Bool)

(assert (=> b!260026 m!275785))

(check-sat (not b!260031) (not bm!24781) (not mapNonEmpty!11282) (not b!260024) (not b!260016) (not b!260030) tp_is_empty!6621 (not b!260035) (not b_next!6759) (not b!260026) b_and!13883 (not b!260029) (not start!24928) (not bm!24780))
(check-sat b_and!13883 (not b_next!6759))
(get-model)

(declare-fun d!62363 () Bool)

(assert (=> d!62363 (= (array_inv!3929 (_keys!6975 thiss!1504)) (bvsge (size!6311 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!260029 d!62363))

(declare-fun d!62365 () Bool)

(assert (=> d!62365 (= (array_inv!3930 (_values!4778 thiss!1504)) (bvsge (size!6310 (_values!4778 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!260029 d!62365))

(declare-fun d!62367 () Bool)

(declare-fun e!168588 () Bool)

(assert (=> d!62367 e!168588))

(declare-fun res!127150 () Bool)

(assert (=> d!62367 (=> (not res!127150) (not e!168588))))

(declare-fun lt!131203 () SeekEntryResult!1193)

(assert (=> d!62367 (= res!127150 ((_ is Found!1193) lt!131203))))

(assert (=> d!62367 (= lt!131203 (seekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun lt!131204 () Unit!8084)

(declare-fun choose!1272 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 64) Int) Unit!8084)

(assert (=> d!62367 (= lt!131204 (choose!1272 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)))))

(assert (=> d!62367 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62367 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!443 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)) lt!131204)))

(declare-fun b!260103 () Bool)

(declare-fun res!127149 () Bool)

(assert (=> b!260103 (=> (not res!127149) (not e!168588))))

(assert (=> b!260103 (= res!127149 (inRange!0 (index!6943 lt!131203) (mask!11121 thiss!1504)))))

(declare-fun b!260104 () Bool)

(assert (=> b!260104 (= e!168588 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6943 lt!131203)) key!932))))

(assert (=> b!260104 (and (bvsge (index!6943 lt!131203) #b00000000000000000000000000000000) (bvslt (index!6943 lt!131203) (size!6311 (_keys!6975 thiss!1504))))))

(assert (= (and d!62367 res!127150) b!260103))

(assert (= (and b!260103 res!127149) b!260104))

(assert (=> d!62367 m!275723))

(declare-fun m!275851 () Bool)

(assert (=> d!62367 m!275851))

(assert (=> d!62367 m!275753))

(declare-fun m!275853 () Bool)

(assert (=> b!260103 m!275853))

(declare-fun m!275855 () Bool)

(assert (=> b!260104 m!275855))

(assert (=> b!260016 d!62367))

(declare-fun b!260117 () Bool)

(declare-fun e!168597 () SeekEntryResult!1193)

(declare-fun lt!131213 () SeekEntryResult!1193)

(assert (=> b!260117 (= e!168597 (Found!1193 (index!6944 lt!131213)))))

(declare-fun b!260118 () Bool)

(declare-fun e!168595 () SeekEntryResult!1193)

(assert (=> b!260118 (= e!168595 e!168597)))

(declare-fun lt!131212 () (_ BitVec 64))

(assert (=> b!260118 (= lt!131212 (select (arr!5962 (_keys!6975 thiss!1504)) (index!6944 lt!131213)))))

(declare-fun c!44174 () Bool)

(assert (=> b!260118 (= c!44174 (= lt!131212 key!932))))

(declare-fun b!260119 () Bool)

(declare-fun c!44176 () Bool)

(assert (=> b!260119 (= c!44176 (= lt!131212 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168596 () SeekEntryResult!1193)

(assert (=> b!260119 (= e!168597 e!168596)))

(declare-fun b!260120 () Bool)

(assert (=> b!260120 (= e!168595 Undefined!1193)))

(declare-fun b!260121 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12596 (_ BitVec 32)) SeekEntryResult!1193)

(assert (=> b!260121 (= e!168596 (seekKeyOrZeroReturnVacant!0 (x!25131 lt!131213) (index!6944 lt!131213) (index!6944 lt!131213) key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun b!260122 () Bool)

(assert (=> b!260122 (= e!168596 (MissingZero!1193 (index!6944 lt!131213)))))

(declare-fun d!62369 () Bool)

(declare-fun lt!131211 () SeekEntryResult!1193)

(assert (=> d!62369 (and (or ((_ is Undefined!1193) lt!131211) (not ((_ is Found!1193) lt!131211)) (and (bvsge (index!6943 lt!131211) #b00000000000000000000000000000000) (bvslt (index!6943 lt!131211) (size!6311 (_keys!6975 thiss!1504))))) (or ((_ is Undefined!1193) lt!131211) ((_ is Found!1193) lt!131211) (not ((_ is MissingZero!1193) lt!131211)) (and (bvsge (index!6942 lt!131211) #b00000000000000000000000000000000) (bvslt (index!6942 lt!131211) (size!6311 (_keys!6975 thiss!1504))))) (or ((_ is Undefined!1193) lt!131211) ((_ is Found!1193) lt!131211) ((_ is MissingZero!1193) lt!131211) (not ((_ is MissingVacant!1193) lt!131211)) (and (bvsge (index!6945 lt!131211) #b00000000000000000000000000000000) (bvslt (index!6945 lt!131211) (size!6311 (_keys!6975 thiss!1504))))) (or ((_ is Undefined!1193) lt!131211) (ite ((_ is Found!1193) lt!131211) (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6943 lt!131211)) key!932) (ite ((_ is MissingZero!1193) lt!131211) (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6942 lt!131211)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1193) lt!131211) (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6945 lt!131211)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62369 (= lt!131211 e!168595)))

(declare-fun c!44175 () Bool)

(assert (=> d!62369 (= c!44175 (and ((_ is Intermediate!1193) lt!131213) (undefined!2005 lt!131213)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12596 (_ BitVec 32)) SeekEntryResult!1193)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62369 (= lt!131213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11121 thiss!1504)) key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(assert (=> d!62369 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62369 (= (seekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)) lt!131211)))

(assert (= (and d!62369 c!44175) b!260120))

(assert (= (and d!62369 (not c!44175)) b!260118))

(assert (= (and b!260118 c!44174) b!260117))

(assert (= (and b!260118 (not c!44174)) b!260119))

(assert (= (and b!260119 c!44176) b!260122))

(assert (= (and b!260119 (not c!44176)) b!260121))

(declare-fun m!275857 () Bool)

(assert (=> b!260118 m!275857))

(declare-fun m!275859 () Bool)

(assert (=> b!260121 m!275859))

(declare-fun m!275861 () Bool)

(assert (=> d!62369 m!275861))

(assert (=> d!62369 m!275753))

(declare-fun m!275863 () Bool)

(assert (=> d!62369 m!275863))

(declare-fun m!275865 () Bool)

(assert (=> d!62369 m!275865))

(declare-fun m!275867 () Bool)

(assert (=> d!62369 m!275867))

(assert (=> d!62369 m!275861))

(declare-fun m!275869 () Bool)

(assert (=> d!62369 m!275869))

(assert (=> b!260024 d!62369))

(declare-fun d!62371 () Bool)

(assert (=> d!62371 (contains!1890 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) key!932)))

(declare-fun lt!131216 () Unit!8084)

(declare-fun choose!1273 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 64) (_ BitVec 32) Int) Unit!8084)

(assert (=> d!62371 (= lt!131216 (choose!1273 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(assert (=> d!62371 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62371 (= (lemmaArrayContainsKeyThenInListMap!251 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) lt!131216)))

(declare-fun bs!9164 () Bool)

(assert (= bs!9164 d!62371))

(assert (=> bs!9164 m!275745))

(assert (=> bs!9164 m!275745))

(declare-fun m!275871 () Bool)

(assert (=> bs!9164 m!275871))

(declare-fun m!275873 () Bool)

(assert (=> bs!9164 m!275873))

(assert (=> bs!9164 m!275753))

(assert (=> b!260030 d!62371))

(declare-fun d!62373 () Bool)

(assert (=> d!62373 (= (arrayCountValidKeys!0 lt!131155 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!131219 () Unit!8084)

(declare-fun choose!2 (array!12596 (_ BitVec 32)) Unit!8084)

(assert (=> d!62373 (= lt!131219 (choose!2 lt!131155 index!297))))

(declare-fun e!168600 () Bool)

(assert (=> d!62373 e!168600))

(declare-fun res!127155 () Bool)

(assert (=> d!62373 (=> (not res!127155) (not e!168600))))

(assert (=> d!62373 (= res!127155 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6311 lt!131155))))))

(assert (=> d!62373 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!131155 index!297) lt!131219)))

(declare-fun b!260127 () Bool)

(declare-fun res!127156 () Bool)

(assert (=> b!260127 (=> (not res!127156) (not e!168600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!260127 (= res!127156 (validKeyInArray!0 (select (arr!5962 lt!131155) index!297)))))

(declare-fun b!260128 () Bool)

(assert (=> b!260128 (= e!168600 (bvslt (size!6311 lt!131155) #b01111111111111111111111111111111))))

(assert (= (and d!62373 res!127155) b!260127))

(assert (= (and b!260127 res!127156) b!260128))

(declare-fun m!275875 () Bool)

(assert (=> d!62373 m!275875))

(declare-fun m!275877 () Bool)

(assert (=> d!62373 m!275877))

(declare-fun m!275879 () Bool)

(assert (=> b!260127 m!275879))

(assert (=> b!260127 m!275879))

(declare-fun m!275881 () Bool)

(assert (=> b!260127 m!275881))

(assert (=> b!260026 d!62373))

(declare-fun d!62375 () Bool)

(assert (=> d!62375 (arrayContainsKey!0 lt!131155 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!131222 () Unit!8084)

(declare-fun choose!13 (array!12596 (_ BitVec 64) (_ BitVec 32)) Unit!8084)

(assert (=> d!62375 (= lt!131222 (choose!13 lt!131155 key!932 index!297))))

(assert (=> d!62375 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!62375 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131155 key!932 index!297) lt!131222)))

(declare-fun bs!9165 () Bool)

(assert (= bs!9165 d!62375))

(assert (=> bs!9165 m!275779))

(declare-fun m!275883 () Bool)

(assert (=> bs!9165 m!275883))

(assert (=> b!260026 d!62375))

(declare-fun b!260137 () Bool)

(declare-fun e!168608 () Bool)

(declare-fun call!24793 () Bool)

(assert (=> b!260137 (= e!168608 call!24793)))

(declare-fun d!62377 () Bool)

(declare-fun res!127161 () Bool)

(declare-fun e!168607 () Bool)

(assert (=> d!62377 (=> res!127161 e!168607)))

(assert (=> d!62377 (= res!127161 (bvsge #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(assert (=> d!62377 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!131155 (mask!11121 thiss!1504)) e!168607)))

(declare-fun bm!24790 () Bool)

(assert (=> bm!24790 (= call!24793 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!131155 (mask!11121 thiss!1504)))))

(declare-fun b!260138 () Bool)

(declare-fun e!168609 () Bool)

(assert (=> b!260138 (= e!168609 call!24793)))

(declare-fun b!260139 () Bool)

(assert (=> b!260139 (= e!168608 e!168609)))

(declare-fun lt!131229 () (_ BitVec 64))

(assert (=> b!260139 (= lt!131229 (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))

(declare-fun lt!131231 () Unit!8084)

(assert (=> b!260139 (= lt!131231 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131155 lt!131229 #b00000000000000000000000000000000))))

(assert (=> b!260139 (arrayContainsKey!0 lt!131155 lt!131229 #b00000000000000000000000000000000)))

(declare-fun lt!131230 () Unit!8084)

(assert (=> b!260139 (= lt!131230 lt!131231)))

(declare-fun res!127162 () Bool)

(assert (=> b!260139 (= res!127162 (= (seekEntryOrOpen!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) lt!131155 (mask!11121 thiss!1504)) (Found!1193 #b00000000000000000000000000000000)))))

(assert (=> b!260139 (=> (not res!127162) (not e!168609))))

(declare-fun b!260140 () Bool)

(assert (=> b!260140 (= e!168607 e!168608)))

(declare-fun c!44179 () Bool)

(assert (=> b!260140 (= c!44179 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (= (and d!62377 (not res!127161)) b!260140))

(assert (= (and b!260140 c!44179) b!260139))

(assert (= (and b!260140 (not c!44179)) b!260137))

(assert (= (and b!260139 res!127162) b!260138))

(assert (= (or b!260138 b!260137) bm!24790))

(declare-fun m!275885 () Bool)

(assert (=> bm!24790 m!275885))

(declare-fun m!275887 () Bool)

(assert (=> b!260139 m!275887))

(declare-fun m!275889 () Bool)

(assert (=> b!260139 m!275889))

(declare-fun m!275891 () Bool)

(assert (=> b!260139 m!275891))

(assert (=> b!260139 m!275887))

(declare-fun m!275893 () Bool)

(assert (=> b!260139 m!275893))

(assert (=> b!260140 m!275887))

(assert (=> b!260140 m!275887))

(declare-fun m!275895 () Bool)

(assert (=> b!260140 m!275895))

(assert (=> b!260026 d!62377))

(declare-fun b!260149 () Bool)

(declare-fun e!168615 () (_ BitVec 32))

(declare-fun call!24796 () (_ BitVec 32))

(assert (=> b!260149 (= e!168615 (bvadd #b00000000000000000000000000000001 call!24796))))

(declare-fun bm!24793 () Bool)

(assert (=> bm!24793 (= call!24796 (arrayCountValidKeys!0 (_keys!6975 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260150 () Bool)

(declare-fun e!168614 () (_ BitVec 32))

(assert (=> b!260150 (= e!168614 #b00000000000000000000000000000000)))

(declare-fun d!62379 () Bool)

(declare-fun lt!131234 () (_ BitVec 32))

(assert (=> d!62379 (and (bvsge lt!131234 #b00000000000000000000000000000000) (bvsle lt!131234 (bvsub (size!6311 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!62379 (= lt!131234 e!168614)))

(declare-fun c!44184 () Bool)

(assert (=> d!62379 (= c!44184 (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62379 (and (bvsle #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6311 (_keys!6975 thiss!1504)) (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62379 (= (arrayCountValidKeys!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) lt!131234)))

(declare-fun b!260151 () Bool)

(assert (=> b!260151 (= e!168615 call!24796)))

(declare-fun b!260152 () Bool)

(assert (=> b!260152 (= e!168614 e!168615)))

(declare-fun c!44185 () Bool)

(assert (=> b!260152 (= c!44185 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!62379 c!44184) b!260150))

(assert (= (and d!62379 (not c!44184)) b!260152))

(assert (= (and b!260152 c!44185) b!260149))

(assert (= (and b!260152 (not c!44185)) b!260151))

(assert (= (or b!260149 b!260151) bm!24793))

(declare-fun m!275897 () Bool)

(assert (=> bm!24793 m!275897))

(declare-fun m!275899 () Bool)

(assert (=> b!260152 m!275899))

(assert (=> b!260152 m!275899))

(declare-fun m!275901 () Bool)

(assert (=> b!260152 m!275901))

(assert (=> b!260026 d!62379))

(declare-fun d!62381 () Bool)

(declare-fun e!168618 () Bool)

(assert (=> d!62381 e!168618))

(declare-fun res!127165 () Bool)

(assert (=> d!62381 (=> (not res!127165) (not e!168618))))

(assert (=> d!62381 (= res!127165 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6311 (_keys!6975 thiss!1504))) (bvslt index!297 (size!6310 (_values!4778 thiss!1504)))))))

(declare-fun lt!131237 () Unit!8084)

(declare-fun choose!1274 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 32) (_ BitVec 64) V!8475 Int) Unit!8084)

(assert (=> d!62381 (= lt!131237 (choose!1274 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) index!297 key!932 v!346 (defaultEntry!4795 thiss!1504)))))

(assert (=> d!62381 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62381 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!109 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) index!297 key!932 v!346 (defaultEntry!4795 thiss!1504)) lt!131237)))

(declare-fun b!260155 () Bool)

(assert (=> b!260155 (= e!168618 (= (+!694 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) (tuple2!4945 key!932 v!346)) (getCurrentListMap!1474 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504))))))

(assert (= (and d!62381 res!127165) b!260155))

(declare-fun m!275903 () Bool)

(assert (=> d!62381 m!275903))

(assert (=> d!62381 m!275753))

(assert (=> b!260155 m!275745))

(declare-fun m!275905 () Bool)

(assert (=> b!260155 m!275905))

(assert (=> b!260155 m!275783))

(declare-fun m!275907 () Bool)

(assert (=> b!260155 m!275907))

(assert (=> b!260155 m!275745))

(assert (=> b!260155 m!275759))

(assert (=> b!260026 d!62381))

(declare-fun d!62383 () Bool)

(assert (=> d!62383 (= (validMask!0 (mask!11121 thiss!1504)) (and (or (= (mask!11121 thiss!1504) #b00000000000000000000000000000111) (= (mask!11121 thiss!1504) #b00000000000000000000000000001111) (= (mask!11121 thiss!1504) #b00000000000000000000000000011111) (= (mask!11121 thiss!1504) #b00000000000000000000000000111111) (= (mask!11121 thiss!1504) #b00000000000000000000000001111111) (= (mask!11121 thiss!1504) #b00000000000000000000000011111111) (= (mask!11121 thiss!1504) #b00000000000000000000000111111111) (= (mask!11121 thiss!1504) #b00000000000000000000001111111111) (= (mask!11121 thiss!1504) #b00000000000000000000011111111111) (= (mask!11121 thiss!1504) #b00000000000000000000111111111111) (= (mask!11121 thiss!1504) #b00000000000000000001111111111111) (= (mask!11121 thiss!1504) #b00000000000000000011111111111111) (= (mask!11121 thiss!1504) #b00000000000000000111111111111111) (= (mask!11121 thiss!1504) #b00000000000000001111111111111111) (= (mask!11121 thiss!1504) #b00000000000000011111111111111111) (= (mask!11121 thiss!1504) #b00000000000000111111111111111111) (= (mask!11121 thiss!1504) #b00000000000001111111111111111111) (= (mask!11121 thiss!1504) #b00000000000011111111111111111111) (= (mask!11121 thiss!1504) #b00000000000111111111111111111111) (= (mask!11121 thiss!1504) #b00000000001111111111111111111111) (= (mask!11121 thiss!1504) #b00000000011111111111111111111111) (= (mask!11121 thiss!1504) #b00000000111111111111111111111111) (= (mask!11121 thiss!1504) #b00000001111111111111111111111111) (= (mask!11121 thiss!1504) #b00000011111111111111111111111111) (= (mask!11121 thiss!1504) #b00000111111111111111111111111111) (= (mask!11121 thiss!1504) #b00001111111111111111111111111111) (= (mask!11121 thiss!1504) #b00011111111111111111111111111111) (= (mask!11121 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11121 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!260026 d!62383))

(declare-fun b!260156 () Bool)

(declare-fun e!168620 () (_ BitVec 32))

(declare-fun call!24797 () (_ BitVec 32))

(assert (=> b!260156 (= e!168620 (bvadd #b00000000000000000000000000000001 call!24797))))

(declare-fun bm!24794 () Bool)

(assert (=> bm!24794 (= call!24797 (arrayCountValidKeys!0 lt!131155 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!260157 () Bool)

(declare-fun e!168619 () (_ BitVec 32))

(assert (=> b!260157 (= e!168619 #b00000000000000000000000000000000)))

(declare-fun d!62385 () Bool)

(declare-fun lt!131238 () (_ BitVec 32))

(assert (=> d!62385 (and (bvsge lt!131238 #b00000000000000000000000000000000) (bvsle lt!131238 (bvsub (size!6311 lt!131155) index!297)))))

(assert (=> d!62385 (= lt!131238 e!168619)))

(declare-fun c!44186 () Bool)

(assert (=> d!62385 (= c!44186 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62385 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6311 lt!131155)))))

(assert (=> d!62385 (= (arrayCountValidKeys!0 lt!131155 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!131238)))

(declare-fun b!260158 () Bool)

(assert (=> b!260158 (= e!168620 call!24797)))

(declare-fun b!260159 () Bool)

(assert (=> b!260159 (= e!168619 e!168620)))

(declare-fun c!44187 () Bool)

(assert (=> b!260159 (= c!44187 (validKeyInArray!0 (select (arr!5962 lt!131155) index!297)))))

(assert (= (and d!62385 c!44186) b!260157))

(assert (= (and d!62385 (not c!44186)) b!260159))

(assert (= (and b!260159 c!44187) b!260156))

(assert (= (and b!260159 (not c!44187)) b!260158))

(assert (= (or b!260156 b!260158) bm!24794))

(declare-fun m!275909 () Bool)

(assert (=> bm!24794 m!275909))

(assert (=> b!260159 m!275879))

(assert (=> b!260159 m!275879))

(assert (=> b!260159 m!275881))

(assert (=> b!260026 d!62385))

(declare-fun b!260170 () Bool)

(declare-fun e!168630 () Bool)

(declare-fun contains!1891 (List!3847 (_ BitVec 64)) Bool)

(assert (=> b!260170 (= e!168630 (contains!1891 Nil!3844 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260171 () Bool)

(declare-fun e!168631 () Bool)

(declare-fun call!24800 () Bool)

(assert (=> b!260171 (= e!168631 call!24800)))

(declare-fun bm!24797 () Bool)

(declare-fun c!44190 () Bool)

(assert (=> bm!24797 (= call!24800 (arrayNoDuplicates!0 lt!131155 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44190 (Cons!3843 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) Nil!3844) Nil!3844)))))

(declare-fun b!260172 () Bool)

(assert (=> b!260172 (= e!168631 call!24800)))

(declare-fun b!260173 () Bool)

(declare-fun e!168632 () Bool)

(declare-fun e!168629 () Bool)

(assert (=> b!260173 (= e!168632 e!168629)))

(declare-fun res!127174 () Bool)

(assert (=> b!260173 (=> (not res!127174) (not e!168629))))

(assert (=> b!260173 (= res!127174 (not e!168630))))

(declare-fun res!127173 () Bool)

(assert (=> b!260173 (=> (not res!127173) (not e!168630))))

(assert (=> b!260173 (= res!127173 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260174 () Bool)

(assert (=> b!260174 (= e!168629 e!168631)))

(assert (=> b!260174 (= c!44190 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun d!62387 () Bool)

(declare-fun res!127172 () Bool)

(assert (=> d!62387 (=> res!127172 e!168632)))

(assert (=> d!62387 (= res!127172 (bvsge #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(assert (=> d!62387 (= (arrayNoDuplicates!0 lt!131155 #b00000000000000000000000000000000 Nil!3844) e!168632)))

(assert (= (and d!62387 (not res!127172)) b!260173))

(assert (= (and b!260173 res!127173) b!260170))

(assert (= (and b!260173 res!127174) b!260174))

(assert (= (and b!260174 c!44190) b!260171))

(assert (= (and b!260174 (not c!44190)) b!260172))

(assert (= (or b!260171 b!260172) bm!24797))

(assert (=> b!260170 m!275887))

(assert (=> b!260170 m!275887))

(declare-fun m!275911 () Bool)

(assert (=> b!260170 m!275911))

(assert (=> bm!24797 m!275887))

(declare-fun m!275913 () Bool)

(assert (=> bm!24797 m!275913))

(assert (=> b!260173 m!275887))

(assert (=> b!260173 m!275887))

(assert (=> b!260173 m!275895))

(assert (=> b!260174 m!275887))

(assert (=> b!260174 m!275887))

(assert (=> b!260174 m!275895))

(assert (=> b!260026 d!62387))

(declare-fun d!62389 () Bool)

(declare-fun res!127179 () Bool)

(declare-fun e!168637 () Bool)

(assert (=> d!62389 (=> res!127179 e!168637)))

(assert (=> d!62389 (= res!127179 (= (select (arr!5962 lt!131155) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62389 (= (arrayContainsKey!0 lt!131155 key!932 #b00000000000000000000000000000000) e!168637)))

(declare-fun b!260179 () Bool)

(declare-fun e!168638 () Bool)

(assert (=> b!260179 (= e!168637 e!168638)))

(declare-fun res!127180 () Bool)

(assert (=> b!260179 (=> (not res!127180) (not e!168638))))

(assert (=> b!260179 (= res!127180 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 lt!131155)))))

(declare-fun b!260180 () Bool)

(assert (=> b!260180 (= e!168638 (arrayContainsKey!0 lt!131155 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62389 (not res!127179)) b!260179))

(assert (= (and b!260179 res!127180) b!260180))

(assert (=> d!62389 m!275887))

(declare-fun m!275915 () Bool)

(assert (=> b!260180 m!275915))

(assert (=> b!260026 d!62389))

(declare-fun b!260223 () Bool)

(declare-fun e!168674 () Unit!8084)

(declare-fun Unit!8091 () Unit!8084)

(assert (=> b!260223 (= e!168674 Unit!8091)))

(declare-fun b!260224 () Bool)

(declare-fun res!127205 () Bool)

(declare-fun e!168666 () Bool)

(assert (=> b!260224 (=> (not res!127205) (not e!168666))))

(declare-fun e!168667 () Bool)

(assert (=> b!260224 (= res!127205 e!168667)))

(declare-fun res!127207 () Bool)

(assert (=> b!260224 (=> res!127207 e!168667)))

(declare-fun e!168675 () Bool)

(assert (=> b!260224 (= res!127207 (not e!168675))))

(declare-fun res!127199 () Bool)

(assert (=> b!260224 (=> (not res!127199) (not e!168675))))

(assert (=> b!260224 (= res!127199 (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun b!260225 () Bool)

(declare-fun e!168665 () Bool)

(declare-fun call!24815 () Bool)

(assert (=> b!260225 (= e!168665 (not call!24815))))

(declare-fun d!62391 () Bool)

(assert (=> d!62391 e!168666))

(declare-fun res!127204 () Bool)

(assert (=> d!62391 (=> (not res!127204) (not e!168666))))

(assert (=> d!62391 (= res!127204 (or (bvsge #b00000000000000000000000000000000 (size!6311 lt!131155)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))))

(declare-fun lt!131285 () ListLongMap!3871)

(declare-fun lt!131291 () ListLongMap!3871)

(assert (=> d!62391 (= lt!131285 lt!131291)))

(declare-fun lt!131288 () Unit!8084)

(assert (=> d!62391 (= lt!131288 e!168674)))

(declare-fun c!44204 () Bool)

(declare-fun e!168670 () Bool)

(assert (=> d!62391 (= c!44204 e!168670)))

(declare-fun res!127203 () Bool)

(assert (=> d!62391 (=> (not res!127203) (not e!168670))))

(assert (=> d!62391 (= res!127203 (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun e!168676 () ListLongMap!3871)

(assert (=> d!62391 (= lt!131291 e!168676)))

(declare-fun c!44206 () Bool)

(assert (=> d!62391 (= c!44206 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62391 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62391 (= (getCurrentListMap!1474 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) lt!131285)))

(declare-fun bm!24812 () Bool)

(declare-fun call!24817 () ListLongMap!3871)

(declare-fun call!24818 () ListLongMap!3871)

(assert (=> bm!24812 (= call!24817 call!24818)))

(declare-fun b!260226 () Bool)

(declare-fun res!127201 () Bool)

(assert (=> b!260226 (=> (not res!127201) (not e!168666))))

(assert (=> b!260226 (= res!127201 e!168665)))

(declare-fun c!44208 () Bool)

(assert (=> b!260226 (= c!44208 (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!260227 () Bool)

(declare-fun e!168668 () Bool)

(assert (=> b!260227 (= e!168666 e!168668)))

(declare-fun c!44207 () Bool)

(assert (=> b!260227 (= c!44207 (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!260228 () Bool)

(declare-fun e!168669 () ListLongMap!3871)

(declare-fun call!24821 () ListLongMap!3871)

(assert (=> b!260228 (= e!168669 call!24821)))

(declare-fun bm!24813 () Bool)

(declare-fun call!24816 () ListLongMap!3871)

(assert (=> bm!24813 (= call!24821 call!24816)))

(declare-fun b!260229 () Bool)

(assert (=> b!260229 (= e!168675 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260230 () Bool)

(declare-fun e!168671 () Bool)

(declare-fun apply!258 (ListLongMap!3871 (_ BitVec 64)) V!8475)

(assert (=> b!260230 (= e!168671 (= (apply!258 lt!131285 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4636 thiss!1504)))))

(declare-fun b!260231 () Bool)

(declare-fun e!168672 () Bool)

(assert (=> b!260231 (= e!168667 e!168672)))

(declare-fun res!127206 () Bool)

(assert (=> b!260231 (=> (not res!127206) (not e!168672))))

(assert (=> b!260231 (= res!127206 (contains!1890 lt!131285 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (=> b!260231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun b!260232 () Bool)

(assert (=> b!260232 (= e!168676 (+!694 call!24816 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))

(declare-fun b!260233 () Bool)

(declare-fun e!168673 () Bool)

(assert (=> b!260233 (= e!168668 e!168673)))

(declare-fun res!127202 () Bool)

(declare-fun call!24819 () Bool)

(assert (=> b!260233 (= res!127202 call!24819)))

(assert (=> b!260233 (=> (not res!127202) (not e!168673))))

(declare-fun bm!24814 () Bool)

(assert (=> bm!24814 (= call!24815 (contains!1890 lt!131285 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24815 () Bool)

(declare-fun call!24820 () ListLongMap!3871)

(assert (=> bm!24815 (= call!24820 call!24817)))

(declare-fun b!260234 () Bool)

(declare-fun e!168677 () ListLongMap!3871)

(assert (=> b!260234 (= e!168676 e!168677)))

(declare-fun c!44205 () Bool)

(assert (=> b!260234 (= c!44205 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!260235 () Bool)

(assert (=> b!260235 (= e!168670 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260236 () Bool)

(assert (=> b!260236 (= e!168673 (= (apply!258 lt!131285 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4636 thiss!1504)))))

(declare-fun b!260237 () Bool)

(assert (=> b!260237 (= e!168677 call!24821)))

(declare-fun b!260238 () Bool)

(declare-fun get!3072 (ValueCell!2967 V!8475) V!8475)

(declare-fun dynLambda!596 (Int (_ BitVec 64)) V!8475)

(assert (=> b!260238 (= e!168672 (= (apply!258 lt!131285 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) (get!3072 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6310 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))))))))

(assert (=> b!260238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun b!260239 () Bool)

(assert (=> b!260239 (= e!168669 call!24820)))

(declare-fun bm!24816 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!577 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 32) Int) ListLongMap!3871)

(assert (=> bm!24816 (= call!24818 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun b!260240 () Bool)

(declare-fun lt!131298 () Unit!8084)

(assert (=> b!260240 (= e!168674 lt!131298)))

(declare-fun lt!131293 () ListLongMap!3871)

(assert (=> b!260240 (= lt!131293 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131299 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131299 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131296 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131296 (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))

(declare-fun lt!131302 () Unit!8084)

(declare-fun addStillContains!234 (ListLongMap!3871 (_ BitVec 64) V!8475 (_ BitVec 64)) Unit!8084)

(assert (=> b!260240 (= lt!131302 (addStillContains!234 lt!131293 lt!131299 (zeroValue!4636 thiss!1504) lt!131296))))

(assert (=> b!260240 (contains!1890 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))) lt!131296)))

(declare-fun lt!131304 () Unit!8084)

(assert (=> b!260240 (= lt!131304 lt!131302)))

(declare-fun lt!131290 () ListLongMap!3871)

(assert (=> b!260240 (= lt!131290 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131303 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131303 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131297 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131297 (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))

(declare-fun lt!131295 () Unit!8084)

(declare-fun addApplyDifferent!234 (ListLongMap!3871 (_ BitVec 64) V!8475 (_ BitVec 64)) Unit!8084)

(assert (=> b!260240 (= lt!131295 (addApplyDifferent!234 lt!131290 lt!131303 (minValue!4636 thiss!1504) lt!131297))))

(assert (=> b!260240 (= (apply!258 (+!694 lt!131290 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))) lt!131297) (apply!258 lt!131290 lt!131297))))

(declare-fun lt!131283 () Unit!8084)

(assert (=> b!260240 (= lt!131283 lt!131295)))

(declare-fun lt!131300 () ListLongMap!3871)

(assert (=> b!260240 (= lt!131300 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131287 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131287 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131289 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131289 (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))

(declare-fun lt!131292 () Unit!8084)

(assert (=> b!260240 (= lt!131292 (addApplyDifferent!234 lt!131300 lt!131287 (zeroValue!4636 thiss!1504) lt!131289))))

(assert (=> b!260240 (= (apply!258 (+!694 lt!131300 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))) lt!131289) (apply!258 lt!131300 lt!131289))))

(declare-fun lt!131301 () Unit!8084)

(assert (=> b!260240 (= lt!131301 lt!131292)))

(declare-fun lt!131294 () ListLongMap!3871)

(assert (=> b!260240 (= lt!131294 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131284 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131284 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131286 () (_ BitVec 64))

(assert (=> b!260240 (= lt!131286 (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))

(assert (=> b!260240 (= lt!131298 (addApplyDifferent!234 lt!131294 lt!131284 (minValue!4636 thiss!1504) lt!131286))))

(assert (=> b!260240 (= (apply!258 (+!694 lt!131294 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))) lt!131286) (apply!258 lt!131294 lt!131286))))

(declare-fun bm!24817 () Bool)

(assert (=> bm!24817 (= call!24819 (contains!1890 lt!131285 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260241 () Bool)

(assert (=> b!260241 (= e!168665 e!168671)))

(declare-fun res!127200 () Bool)

(assert (=> b!260241 (= res!127200 call!24815)))

(assert (=> b!260241 (=> (not res!127200) (not e!168671))))

(declare-fun b!260242 () Bool)

(declare-fun c!44203 () Bool)

(assert (=> b!260242 (= c!44203 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!260242 (= e!168677 e!168669)))

(declare-fun b!260243 () Bool)

(assert (=> b!260243 (= e!168668 (not call!24819))))

(declare-fun bm!24818 () Bool)

(assert (=> bm!24818 (= call!24816 (+!694 (ite c!44206 call!24818 (ite c!44205 call!24817 call!24820)) (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (= (and d!62391 c!44206) b!260232))

(assert (= (and d!62391 (not c!44206)) b!260234))

(assert (= (and b!260234 c!44205) b!260237))

(assert (= (and b!260234 (not c!44205)) b!260242))

(assert (= (and b!260242 c!44203) b!260228))

(assert (= (and b!260242 (not c!44203)) b!260239))

(assert (= (or b!260228 b!260239) bm!24815))

(assert (= (or b!260237 bm!24815) bm!24812))

(assert (= (or b!260237 b!260228) bm!24813))

(assert (= (or b!260232 bm!24812) bm!24816))

(assert (= (or b!260232 bm!24813) bm!24818))

(assert (= (and d!62391 res!127203) b!260235))

(assert (= (and d!62391 c!44204) b!260240))

(assert (= (and d!62391 (not c!44204)) b!260223))

(assert (= (and d!62391 res!127204) b!260224))

(assert (= (and b!260224 res!127199) b!260229))

(assert (= (and b!260224 (not res!127207)) b!260231))

(assert (= (and b!260231 res!127206) b!260238))

(assert (= (and b!260224 res!127205) b!260226))

(assert (= (and b!260226 c!44208) b!260241))

(assert (= (and b!260226 (not c!44208)) b!260225))

(assert (= (and b!260241 res!127200) b!260230))

(assert (= (or b!260241 b!260225) bm!24814))

(assert (= (and b!260226 res!127201) b!260227))

(assert (= (and b!260227 c!44207) b!260233))

(assert (= (and b!260227 (not c!44207)) b!260243))

(assert (= (and b!260233 res!127202) b!260236))

(assert (= (or b!260233 b!260243) bm!24817))

(declare-fun b_lambda!8289 () Bool)

(assert (=> (not b_lambda!8289) (not b!260238)))

(declare-fun t!8928 () Bool)

(declare-fun tb!3037 () Bool)

(assert (=> (and b!260029 (= (defaultEntry!4795 thiss!1504) (defaultEntry!4795 thiss!1504)) t!8928) tb!3037))

(declare-fun result!5417 () Bool)

(assert (=> tb!3037 (= result!5417 tp_is_empty!6621)))

(assert (=> b!260238 t!8928))

(declare-fun b_and!13887 () Bool)

(assert (= b_and!13883 (and (=> t!8928 result!5417) b_and!13887)))

(assert (=> b!260235 m!275887))

(assert (=> b!260235 m!275887))

(assert (=> b!260235 m!275895))

(declare-fun m!275917 () Bool)

(assert (=> b!260232 m!275917))

(declare-fun m!275919 () Bool)

(assert (=> bm!24814 m!275919))

(declare-fun m!275921 () Bool)

(assert (=> bm!24818 m!275921))

(declare-fun m!275923 () Bool)

(assert (=> b!260240 m!275923))

(declare-fun m!275925 () Bool)

(assert (=> b!260240 m!275925))

(declare-fun m!275927 () Bool)

(assert (=> b!260240 m!275927))

(declare-fun m!275929 () Bool)

(assert (=> b!260240 m!275929))

(assert (=> b!260240 m!275927))

(declare-fun m!275931 () Bool)

(assert (=> b!260240 m!275931))

(declare-fun m!275933 () Bool)

(assert (=> b!260240 m!275933))

(declare-fun m!275935 () Bool)

(assert (=> b!260240 m!275935))

(declare-fun m!275937 () Bool)

(assert (=> b!260240 m!275937))

(declare-fun m!275939 () Bool)

(assert (=> b!260240 m!275939))

(declare-fun m!275941 () Bool)

(assert (=> b!260240 m!275941))

(declare-fun m!275943 () Bool)

(assert (=> b!260240 m!275943))

(declare-fun m!275945 () Bool)

(assert (=> b!260240 m!275945))

(declare-fun m!275947 () Bool)

(assert (=> b!260240 m!275947))

(declare-fun m!275949 () Bool)

(assert (=> b!260240 m!275949))

(declare-fun m!275951 () Bool)

(assert (=> b!260240 m!275951))

(declare-fun m!275953 () Bool)

(assert (=> b!260240 m!275953))

(assert (=> b!260240 m!275943))

(assert (=> b!260240 m!275887))

(assert (=> b!260240 m!275951))

(assert (=> b!260240 m!275947))

(assert (=> bm!24816 m!275939))

(assert (=> b!260231 m!275887))

(assert (=> b!260231 m!275887))

(declare-fun m!275955 () Bool)

(assert (=> b!260231 m!275955))

(declare-fun m!275957 () Bool)

(assert (=> bm!24817 m!275957))

(declare-fun m!275959 () Bool)

(assert (=> b!260230 m!275959))

(assert (=> d!62391 m!275753))

(declare-fun m!275961 () Bool)

(assert (=> b!260236 m!275961))

(assert (=> b!260238 m!275887))

(declare-fun m!275963 () Bool)

(assert (=> b!260238 m!275963))

(assert (=> b!260238 m!275963))

(declare-fun m!275965 () Bool)

(assert (=> b!260238 m!275965))

(declare-fun m!275967 () Bool)

(assert (=> b!260238 m!275967))

(assert (=> b!260238 m!275965))

(assert (=> b!260238 m!275887))

(declare-fun m!275969 () Bool)

(assert (=> b!260238 m!275969))

(assert (=> b!260229 m!275887))

(assert (=> b!260229 m!275887))

(assert (=> b!260229 m!275895))

(assert (=> b!260026 d!62391))

(declare-fun d!62393 () Bool)

(declare-fun e!168680 () Bool)

(assert (=> d!62393 e!168680))

(declare-fun res!127212 () Bool)

(assert (=> d!62393 (=> (not res!127212) (not e!168680))))

(declare-fun lt!131314 () ListLongMap!3871)

(assert (=> d!62393 (= res!127212 (contains!1890 lt!131314 (_1!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun lt!131316 () List!3846)

(assert (=> d!62393 (= lt!131314 (ListLongMap!3872 lt!131316))))

(declare-fun lt!131315 () Unit!8084)

(declare-fun lt!131313 () Unit!8084)

(assert (=> d!62393 (= lt!131315 lt!131313)))

(declare-datatypes ((Option!321 0))(
  ( (Some!320 (v!5468 V!8475)) (None!319) )
))
(declare-fun getValueByKey!315 (List!3846 (_ BitVec 64)) Option!321)

(assert (=> d!62393 (= (getValueByKey!315 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346))) (Some!320 (_2!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!173 (List!3846 (_ BitVec 64) V!8475) Unit!8084)

(assert (=> d!62393 (= lt!131313 (lemmaContainsTupThenGetReturnValue!173 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun insertStrictlySorted!175 (List!3846 (_ BitVec 64) V!8475) List!3846)

(assert (=> d!62393 (= lt!131316 (insertStrictlySorted!175 (toList!1951 lt!131148) (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))

(assert (=> d!62393 (= (+!694 lt!131148 (tuple2!4945 key!932 v!346)) lt!131314)))

(declare-fun b!260250 () Bool)

(declare-fun res!127213 () Bool)

(assert (=> b!260250 (=> (not res!127213) (not e!168680))))

(assert (=> b!260250 (= res!127213 (= (getValueByKey!315 (toList!1951 lt!131314) (_1!2482 (tuple2!4945 key!932 v!346))) (Some!320 (_2!2482 (tuple2!4945 key!932 v!346)))))))

(declare-fun b!260251 () Bool)

(declare-fun contains!1892 (List!3846 tuple2!4944) Bool)

(assert (=> b!260251 (= e!168680 (contains!1892 (toList!1951 lt!131314) (tuple2!4945 key!932 v!346)))))

(assert (= (and d!62393 res!127212) b!260250))

(assert (= (and b!260250 res!127213) b!260251))

(declare-fun m!275971 () Bool)

(assert (=> d!62393 m!275971))

(declare-fun m!275973 () Bool)

(assert (=> d!62393 m!275973))

(declare-fun m!275975 () Bool)

(assert (=> d!62393 m!275975))

(declare-fun m!275977 () Bool)

(assert (=> d!62393 m!275977))

(declare-fun m!275979 () Bool)

(assert (=> b!260250 m!275979))

(declare-fun m!275981 () Bool)

(assert (=> b!260251 m!275981))

(assert (=> b!260026 d!62393))

(declare-fun d!62395 () Bool)

(declare-fun e!168683 () Bool)

(assert (=> d!62395 e!168683))

(declare-fun res!127216 () Bool)

(assert (=> d!62395 (=> (not res!127216) (not e!168683))))

(assert (=> d!62395 (= res!127216 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6311 (_keys!6975 thiss!1504)))))))

(declare-fun lt!131319 () Unit!8084)

(declare-fun choose!41 (array!12596 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3847) Unit!8084)

(assert (=> d!62395 (= lt!131319 (choose!41 (_keys!6975 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3844))))

(assert (=> d!62395 (bvslt (size!6311 (_keys!6975 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!62395 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6975 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3844) lt!131319)))

(declare-fun b!260254 () Bool)

(assert (=> b!260254 (= e!168683 (arrayNoDuplicates!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000000 Nil!3844))))

(assert (= (and d!62395 res!127216) b!260254))

(declare-fun m!275983 () Bool)

(assert (=> d!62395 m!275983))

(assert (=> b!260254 m!275783))

(declare-fun m!275985 () Bool)

(assert (=> b!260254 m!275985))

(assert (=> b!260026 d!62395))

(declare-fun d!62397 () Bool)

(declare-fun e!168689 () Bool)

(assert (=> d!62397 e!168689))

(declare-fun res!127225 () Bool)

(assert (=> d!62397 (=> (not res!127225) (not e!168689))))

(assert (=> d!62397 (= res!127225 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6311 (_keys!6975 thiss!1504)))))))

(declare-fun lt!131322 () Unit!8084)

(declare-fun choose!1 (array!12596 (_ BitVec 32) (_ BitVec 64)) Unit!8084)

(assert (=> d!62397 (= lt!131322 (choose!1 (_keys!6975 thiss!1504) index!297 key!932))))

(declare-fun e!168688 () Bool)

(assert (=> d!62397 e!168688))

(declare-fun res!127228 () Bool)

(assert (=> d!62397 (=> (not res!127228) (not e!168688))))

(assert (=> d!62397 (= res!127228 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6311 (_keys!6975 thiss!1504)))))))

(assert (=> d!62397 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6975 thiss!1504) index!297 key!932) lt!131322)))

(declare-fun b!260264 () Bool)

(declare-fun res!127227 () Bool)

(assert (=> b!260264 (=> (not res!127227) (not e!168688))))

(assert (=> b!260264 (= res!127227 (validKeyInArray!0 key!932))))

(declare-fun b!260263 () Bool)

(declare-fun res!127226 () Bool)

(assert (=> b!260263 (=> (not res!127226) (not e!168688))))

(assert (=> b!260263 (= res!127226 (not (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) index!297))))))

(declare-fun b!260266 () Bool)

(assert (=> b!260266 (= e!168689 (= (arrayCountValidKeys!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!260265 () Bool)

(assert (=> b!260265 (= e!168688 (bvslt (size!6311 (_keys!6975 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!62397 res!127228) b!260263))

(assert (= (and b!260263 res!127226) b!260264))

(assert (= (and b!260264 res!127227) b!260265))

(assert (= (and d!62397 res!127225) b!260266))

(declare-fun m!275987 () Bool)

(assert (=> d!62397 m!275987))

(declare-fun m!275989 () Bool)

(assert (=> b!260264 m!275989))

(declare-fun m!275991 () Bool)

(assert (=> b!260263 m!275991))

(assert (=> b!260263 m!275991))

(declare-fun m!275993 () Bool)

(assert (=> b!260263 m!275993))

(assert (=> b!260266 m!275783))

(declare-fun m!275995 () Bool)

(assert (=> b!260266 m!275995))

(assert (=> b!260266 m!275771))

(assert (=> b!260026 d!62397))

(declare-fun b!260267 () Bool)

(declare-fun e!168691 () (_ BitVec 32))

(declare-fun call!24822 () (_ BitVec 32))

(assert (=> b!260267 (= e!168691 (bvadd #b00000000000000000000000000000001 call!24822))))

(declare-fun bm!24819 () Bool)

(assert (=> bm!24819 (= call!24822 (arrayCountValidKeys!0 lt!131155 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260268 () Bool)

(declare-fun e!168690 () (_ BitVec 32))

(assert (=> b!260268 (= e!168690 #b00000000000000000000000000000000)))

(declare-fun d!62399 () Bool)

(declare-fun lt!131323 () (_ BitVec 32))

(assert (=> d!62399 (and (bvsge lt!131323 #b00000000000000000000000000000000) (bvsle lt!131323 (bvsub (size!6311 lt!131155) #b00000000000000000000000000000000)))))

(assert (=> d!62399 (= lt!131323 e!168690)))

(declare-fun c!44209 () Bool)

(assert (=> d!62399 (= c!44209 (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62399 (and (bvsle #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6311 (_keys!6975 thiss!1504)) (size!6311 lt!131155)))))

(assert (=> d!62399 (= (arrayCountValidKeys!0 lt!131155 #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) lt!131323)))

(declare-fun b!260269 () Bool)

(assert (=> b!260269 (= e!168691 call!24822)))

(declare-fun b!260270 () Bool)

(assert (=> b!260270 (= e!168690 e!168691)))

(declare-fun c!44210 () Bool)

(assert (=> b!260270 (= c!44210 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (= (and d!62399 c!44209) b!260268))

(assert (= (and d!62399 (not c!44209)) b!260270))

(assert (= (and b!260270 c!44210) b!260267))

(assert (= (and b!260270 (not c!44210)) b!260269))

(assert (= (or b!260267 b!260269) bm!24819))

(declare-fun m!275997 () Bool)

(assert (=> bm!24819 m!275997))

(assert (=> b!260270 m!275887))

(assert (=> b!260270 m!275887))

(assert (=> b!260270 m!275895))

(assert (=> b!260026 d!62399))

(declare-fun d!62401 () Bool)

(declare-fun res!127229 () Bool)

(declare-fun e!168692 () Bool)

(assert (=> d!62401 (=> res!127229 e!168692)))

(assert (=> d!62401 (= res!127229 (= (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62401 (= (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 #b00000000000000000000000000000000) e!168692)))

(declare-fun b!260271 () Bool)

(declare-fun e!168693 () Bool)

(assert (=> b!260271 (= e!168692 e!168693)))

(declare-fun res!127230 () Bool)

(assert (=> b!260271 (=> (not res!127230) (not e!168693))))

(assert (=> b!260271 (= res!127230 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260272 () Bool)

(assert (=> b!260272 (= e!168693 (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62401 (not res!127229)) b!260271))

(assert (= (and b!260271 res!127230) b!260272))

(assert (=> d!62401 m!275899))

(declare-fun m!275999 () Bool)

(assert (=> b!260272 m!275999))

(assert (=> b!260026 d!62401))

(declare-fun d!62403 () Bool)

(declare-fun e!168696 () Bool)

(assert (=> d!62403 e!168696))

(declare-fun res!127233 () Bool)

(assert (=> d!62403 (=> (not res!127233) (not e!168696))))

(assert (=> d!62403 (= res!127233 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6311 (_keys!6975 thiss!1504)))))))

(declare-fun lt!131326 () Unit!8084)

(declare-fun choose!102 ((_ BitVec 64) array!12596 (_ BitVec 32) (_ BitVec 32)) Unit!8084)

(assert (=> d!62403 (= lt!131326 (choose!102 key!932 (_keys!6975 thiss!1504) index!297 (mask!11121 thiss!1504)))))

(assert (=> d!62403 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62403 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) index!297 (mask!11121 thiss!1504)) lt!131326)))

(declare-fun b!260275 () Bool)

(assert (=> b!260275 (= e!168696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (mask!11121 thiss!1504)))))

(assert (= (and d!62403 res!127233) b!260275))

(declare-fun m!276001 () Bool)

(assert (=> d!62403 m!276001))

(assert (=> d!62403 m!275753))

(assert (=> b!260275 m!275783))

(declare-fun m!276003 () Bool)

(assert (=> b!260275 m!276003))

(assert (=> b!260026 d!62403))

(assert (=> bm!24781 d!62401))

(declare-fun d!62405 () Bool)

(assert (=> d!62405 (= (inRange!0 (ite c!44152 (index!6942 lt!131156) (index!6945 lt!131156)) (mask!11121 thiss!1504)) (and (bvsge (ite c!44152 (index!6942 lt!131156) (index!6945 lt!131156)) #b00000000000000000000000000000000) (bvslt (ite c!44152 (index!6942 lt!131156) (index!6945 lt!131156)) (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24780 d!62405))

(declare-fun d!62407 () Bool)

(assert (=> d!62407 (= (inRange!0 index!297 (mask!11121 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!260035 d!62407))

(declare-fun d!62409 () Bool)

(declare-fun e!168702 () Bool)

(assert (=> d!62409 e!168702))

(declare-fun res!127236 () Bool)

(assert (=> d!62409 (=> res!127236 e!168702)))

(declare-fun lt!131337 () Bool)

(assert (=> d!62409 (= res!127236 (not lt!131337))))

(declare-fun lt!131336 () Bool)

(assert (=> d!62409 (= lt!131337 lt!131336)))

(declare-fun lt!131335 () Unit!8084)

(declare-fun e!168701 () Unit!8084)

(assert (=> d!62409 (= lt!131335 e!168701)))

(declare-fun c!44213 () Bool)

(assert (=> d!62409 (= c!44213 lt!131336)))

(declare-fun containsKey!307 (List!3846 (_ BitVec 64)) Bool)

(assert (=> d!62409 (= lt!131336 (containsKey!307 (toList!1951 lt!131148) key!932))))

(assert (=> d!62409 (= (contains!1890 lt!131148 key!932) lt!131337)))

(declare-fun b!260282 () Bool)

(declare-fun lt!131338 () Unit!8084)

(assert (=> b!260282 (= e!168701 lt!131338)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!256 (List!3846 (_ BitVec 64)) Unit!8084)

(assert (=> b!260282 (= lt!131338 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131148) key!932))))

(declare-fun isDefined!257 (Option!321) Bool)

(assert (=> b!260282 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131148) key!932))))

(declare-fun b!260283 () Bool)

(declare-fun Unit!8092 () Unit!8084)

(assert (=> b!260283 (= e!168701 Unit!8092)))

(declare-fun b!260284 () Bool)

(assert (=> b!260284 (= e!168702 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131148) key!932)))))

(assert (= (and d!62409 c!44213) b!260282))

(assert (= (and d!62409 (not c!44213)) b!260283))

(assert (= (and d!62409 (not res!127236)) b!260284))

(declare-fun m!276005 () Bool)

(assert (=> d!62409 m!276005))

(declare-fun m!276007 () Bool)

(assert (=> b!260282 m!276007))

(declare-fun m!276009 () Bool)

(assert (=> b!260282 m!276009))

(assert (=> b!260282 m!276009))

(declare-fun m!276011 () Bool)

(assert (=> b!260282 m!276011))

(assert (=> b!260284 m!276009))

(assert (=> b!260284 m!276009))

(assert (=> b!260284 m!276011))

(assert (=> b!260035 d!62409))

(declare-fun b!260285 () Bool)

(declare-fun e!168712 () Unit!8084)

(declare-fun Unit!8093 () Unit!8084)

(assert (=> b!260285 (= e!168712 Unit!8093)))

(declare-fun b!260286 () Bool)

(declare-fun res!127243 () Bool)

(declare-fun e!168704 () Bool)

(assert (=> b!260286 (=> (not res!127243) (not e!168704))))

(declare-fun e!168705 () Bool)

(assert (=> b!260286 (= res!127243 e!168705)))

(declare-fun res!127245 () Bool)

(assert (=> b!260286 (=> res!127245 e!168705)))

(declare-fun e!168713 () Bool)

(assert (=> b!260286 (= res!127245 (not e!168713))))

(declare-fun res!127237 () Bool)

(assert (=> b!260286 (=> (not res!127237) (not e!168713))))

(assert (=> b!260286 (= res!127237 (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260287 () Bool)

(declare-fun e!168703 () Bool)

(declare-fun call!24823 () Bool)

(assert (=> b!260287 (= e!168703 (not call!24823))))

(declare-fun d!62411 () Bool)

(assert (=> d!62411 e!168704))

(declare-fun res!127242 () Bool)

(assert (=> d!62411 (=> (not res!127242) (not e!168704))))

(assert (=> d!62411 (= res!127242 (or (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))))

(declare-fun lt!131341 () ListLongMap!3871)

(declare-fun lt!131347 () ListLongMap!3871)

(assert (=> d!62411 (= lt!131341 lt!131347)))

(declare-fun lt!131344 () Unit!8084)

(assert (=> d!62411 (= lt!131344 e!168712)))

(declare-fun c!44215 () Bool)

(declare-fun e!168708 () Bool)

(assert (=> d!62411 (= c!44215 e!168708)))

(declare-fun res!127241 () Bool)

(assert (=> d!62411 (=> (not res!127241) (not e!168708))))

(assert (=> d!62411 (= res!127241 (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun e!168714 () ListLongMap!3871)

(assert (=> d!62411 (= lt!131347 e!168714)))

(declare-fun c!44217 () Bool)

(assert (=> d!62411 (= c!44217 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62411 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62411 (= (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) lt!131341)))

(declare-fun bm!24820 () Bool)

(declare-fun call!24825 () ListLongMap!3871)

(declare-fun call!24826 () ListLongMap!3871)

(assert (=> bm!24820 (= call!24825 call!24826)))

(declare-fun b!260288 () Bool)

(declare-fun res!127239 () Bool)

(assert (=> b!260288 (=> (not res!127239) (not e!168704))))

(assert (=> b!260288 (= res!127239 e!168703)))

(declare-fun c!44219 () Bool)

(assert (=> b!260288 (= c!44219 (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!260289 () Bool)

(declare-fun e!168706 () Bool)

(assert (=> b!260289 (= e!168704 e!168706)))

(declare-fun c!44218 () Bool)

(assert (=> b!260289 (= c!44218 (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!260290 () Bool)

(declare-fun e!168707 () ListLongMap!3871)

(declare-fun call!24829 () ListLongMap!3871)

(assert (=> b!260290 (= e!168707 call!24829)))

(declare-fun bm!24821 () Bool)

(declare-fun call!24824 () ListLongMap!3871)

(assert (=> bm!24821 (= call!24829 call!24824)))

(declare-fun b!260291 () Bool)

(assert (=> b!260291 (= e!168713 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!260292 () Bool)

(declare-fun e!168709 () Bool)

(assert (=> b!260292 (= e!168709 (= (apply!258 lt!131341 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4636 thiss!1504)))))

(declare-fun b!260293 () Bool)

(declare-fun e!168710 () Bool)

(assert (=> b!260293 (= e!168705 e!168710)))

(declare-fun res!127244 () Bool)

(assert (=> b!260293 (=> (not res!127244) (not e!168710))))

(assert (=> b!260293 (= res!127244 (contains!1890 lt!131341 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!260293 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260294 () Bool)

(assert (=> b!260294 (= e!168714 (+!694 call!24824 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))

(declare-fun b!260295 () Bool)

(declare-fun e!168711 () Bool)

(assert (=> b!260295 (= e!168706 e!168711)))

(declare-fun res!127240 () Bool)

(declare-fun call!24827 () Bool)

(assert (=> b!260295 (= res!127240 call!24827)))

(assert (=> b!260295 (=> (not res!127240) (not e!168711))))

(declare-fun bm!24822 () Bool)

(assert (=> bm!24822 (= call!24823 (contains!1890 lt!131341 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24823 () Bool)

(declare-fun call!24828 () ListLongMap!3871)

(assert (=> bm!24823 (= call!24828 call!24825)))

(declare-fun b!260296 () Bool)

(declare-fun e!168715 () ListLongMap!3871)

(assert (=> b!260296 (= e!168714 e!168715)))

(declare-fun c!44216 () Bool)

(assert (=> b!260296 (= c!44216 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!260297 () Bool)

(assert (=> b!260297 (= e!168708 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!260298 () Bool)

(assert (=> b!260298 (= e!168711 (= (apply!258 lt!131341 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4636 thiss!1504)))))

(declare-fun b!260299 () Bool)

(assert (=> b!260299 (= e!168715 call!24829)))

(declare-fun b!260300 () Bool)

(assert (=> b!260300 (= e!168710 (= (apply!258 lt!131341 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)) (get!3072 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6310 (_values!4778 thiss!1504))))))

(assert (=> b!260300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260301 () Bool)

(assert (=> b!260301 (= e!168707 call!24828)))

(declare-fun bm!24824 () Bool)

(assert (=> bm!24824 (= call!24826 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun b!260302 () Bool)

(declare-fun lt!131354 () Unit!8084)

(assert (=> b!260302 (= e!168712 lt!131354)))

(declare-fun lt!131349 () ListLongMap!3871)

(assert (=> b!260302 (= lt!131349 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131355 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131355 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131352 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131352 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131358 () Unit!8084)

(assert (=> b!260302 (= lt!131358 (addStillContains!234 lt!131349 lt!131355 (zeroValue!4636 thiss!1504) lt!131352))))

(assert (=> b!260302 (contains!1890 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))) lt!131352)))

(declare-fun lt!131360 () Unit!8084)

(assert (=> b!260302 (= lt!131360 lt!131358)))

(declare-fun lt!131346 () ListLongMap!3871)

(assert (=> b!260302 (= lt!131346 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131359 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131359 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131353 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131353 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131351 () Unit!8084)

(assert (=> b!260302 (= lt!131351 (addApplyDifferent!234 lt!131346 lt!131359 (minValue!4636 thiss!1504) lt!131353))))

(assert (=> b!260302 (= (apply!258 (+!694 lt!131346 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))) lt!131353) (apply!258 lt!131346 lt!131353))))

(declare-fun lt!131339 () Unit!8084)

(assert (=> b!260302 (= lt!131339 lt!131351)))

(declare-fun lt!131356 () ListLongMap!3871)

(assert (=> b!260302 (= lt!131356 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131343 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131343 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131345 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131345 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131348 () Unit!8084)

(assert (=> b!260302 (= lt!131348 (addApplyDifferent!234 lt!131356 lt!131343 (zeroValue!4636 thiss!1504) lt!131345))))

(assert (=> b!260302 (= (apply!258 (+!694 lt!131356 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))) lt!131345) (apply!258 lt!131356 lt!131345))))

(declare-fun lt!131357 () Unit!8084)

(assert (=> b!260302 (= lt!131357 lt!131348)))

(declare-fun lt!131350 () ListLongMap!3871)

(assert (=> b!260302 (= lt!131350 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131340 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131340 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131342 () (_ BitVec 64))

(assert (=> b!260302 (= lt!131342 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!260302 (= lt!131354 (addApplyDifferent!234 lt!131350 lt!131340 (minValue!4636 thiss!1504) lt!131342))))

(assert (=> b!260302 (= (apply!258 (+!694 lt!131350 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))) lt!131342) (apply!258 lt!131350 lt!131342))))

(declare-fun bm!24825 () Bool)

(assert (=> bm!24825 (= call!24827 (contains!1890 lt!131341 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260303 () Bool)

(assert (=> b!260303 (= e!168703 e!168709)))

(declare-fun res!127238 () Bool)

(assert (=> b!260303 (= res!127238 call!24823)))

(assert (=> b!260303 (=> (not res!127238) (not e!168709))))

(declare-fun b!260304 () Bool)

(declare-fun c!44214 () Bool)

(assert (=> b!260304 (= c!44214 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!260304 (= e!168715 e!168707)))

(declare-fun b!260305 () Bool)

(assert (=> b!260305 (= e!168706 (not call!24827))))

(declare-fun bm!24826 () Bool)

(assert (=> bm!24826 (= call!24824 (+!694 (ite c!44217 call!24826 (ite c!44216 call!24825 call!24828)) (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (= (and d!62411 c!44217) b!260294))

(assert (= (and d!62411 (not c!44217)) b!260296))

(assert (= (and b!260296 c!44216) b!260299))

(assert (= (and b!260296 (not c!44216)) b!260304))

(assert (= (and b!260304 c!44214) b!260290))

(assert (= (and b!260304 (not c!44214)) b!260301))

(assert (= (or b!260290 b!260301) bm!24823))

(assert (= (or b!260299 bm!24823) bm!24820))

(assert (= (or b!260299 b!260290) bm!24821))

(assert (= (or b!260294 bm!24820) bm!24824))

(assert (= (or b!260294 bm!24821) bm!24826))

(assert (= (and d!62411 res!127241) b!260297))

(assert (= (and d!62411 c!44215) b!260302))

(assert (= (and d!62411 (not c!44215)) b!260285))

(assert (= (and d!62411 res!127242) b!260286))

(assert (= (and b!260286 res!127237) b!260291))

(assert (= (and b!260286 (not res!127245)) b!260293))

(assert (= (and b!260293 res!127244) b!260300))

(assert (= (and b!260286 res!127243) b!260288))

(assert (= (and b!260288 c!44219) b!260303))

(assert (= (and b!260288 (not c!44219)) b!260287))

(assert (= (and b!260303 res!127238) b!260292))

(assert (= (or b!260303 b!260287) bm!24822))

(assert (= (and b!260288 res!127239) b!260289))

(assert (= (and b!260289 c!44218) b!260295))

(assert (= (and b!260289 (not c!44218)) b!260305))

(assert (= (and b!260295 res!127240) b!260298))

(assert (= (or b!260295 b!260305) bm!24825))

(declare-fun b_lambda!8291 () Bool)

(assert (=> (not b_lambda!8291) (not b!260300)))

(assert (=> b!260300 t!8928))

(declare-fun b_and!13889 () Bool)

(assert (= b_and!13887 (and (=> t!8928 result!5417) b_and!13889)))

(assert (=> b!260297 m!275899))

(assert (=> b!260297 m!275899))

(assert (=> b!260297 m!275901))

(declare-fun m!276013 () Bool)

(assert (=> b!260294 m!276013))

(declare-fun m!276015 () Bool)

(assert (=> bm!24822 m!276015))

(declare-fun m!276017 () Bool)

(assert (=> bm!24826 m!276017))

(declare-fun m!276019 () Bool)

(assert (=> b!260302 m!276019))

(declare-fun m!276021 () Bool)

(assert (=> b!260302 m!276021))

(declare-fun m!276023 () Bool)

(assert (=> b!260302 m!276023))

(declare-fun m!276025 () Bool)

(assert (=> b!260302 m!276025))

(assert (=> b!260302 m!276023))

(declare-fun m!276027 () Bool)

(assert (=> b!260302 m!276027))

(declare-fun m!276029 () Bool)

(assert (=> b!260302 m!276029))

(declare-fun m!276031 () Bool)

(assert (=> b!260302 m!276031))

(declare-fun m!276033 () Bool)

(assert (=> b!260302 m!276033))

(declare-fun m!276035 () Bool)

(assert (=> b!260302 m!276035))

(declare-fun m!276037 () Bool)

(assert (=> b!260302 m!276037))

(declare-fun m!276039 () Bool)

(assert (=> b!260302 m!276039))

(declare-fun m!276041 () Bool)

(assert (=> b!260302 m!276041))

(declare-fun m!276043 () Bool)

(assert (=> b!260302 m!276043))

(declare-fun m!276045 () Bool)

(assert (=> b!260302 m!276045))

(declare-fun m!276047 () Bool)

(assert (=> b!260302 m!276047))

(declare-fun m!276049 () Bool)

(assert (=> b!260302 m!276049))

(assert (=> b!260302 m!276039))

(assert (=> b!260302 m!275899))

(assert (=> b!260302 m!276047))

(assert (=> b!260302 m!276043))

(assert (=> bm!24824 m!276035))

(assert (=> b!260293 m!275899))

(assert (=> b!260293 m!275899))

(declare-fun m!276051 () Bool)

(assert (=> b!260293 m!276051))

(declare-fun m!276053 () Bool)

(assert (=> bm!24825 m!276053))

(declare-fun m!276055 () Bool)

(assert (=> b!260292 m!276055))

(assert (=> d!62411 m!275753))

(declare-fun m!276057 () Bool)

(assert (=> b!260298 m!276057))

(assert (=> b!260300 m!275899))

(declare-fun m!276059 () Bool)

(assert (=> b!260300 m!276059))

(assert (=> b!260300 m!276059))

(assert (=> b!260300 m!275965))

(declare-fun m!276061 () Bool)

(assert (=> b!260300 m!276061))

(assert (=> b!260300 m!275965))

(assert (=> b!260300 m!275899))

(declare-fun m!276063 () Bool)

(assert (=> b!260300 m!276063))

(assert (=> b!260291 m!275899))

(assert (=> b!260291 m!275899))

(assert (=> b!260291 m!275901))

(assert (=> b!260035 d!62411))

(declare-fun b!260322 () Bool)

(declare-fun res!127257 () Bool)

(declare-fun e!168726 () Bool)

(assert (=> b!260322 (=> (not res!127257) (not e!168726))))

(declare-fun call!24835 () Bool)

(assert (=> b!260322 (= res!127257 call!24835)))

(declare-fun e!168725 () Bool)

(assert (=> b!260322 (= e!168725 e!168726)))

(declare-fun b!260323 () Bool)

(declare-fun e!168724 () Bool)

(declare-fun call!24834 () Bool)

(assert (=> b!260323 (= e!168724 (not call!24834))))

(declare-fun b!260324 () Bool)

(declare-fun lt!131365 () SeekEntryResult!1193)

(assert (=> b!260324 (and (bvsge (index!6942 lt!131365) #b00000000000000000000000000000000) (bvslt (index!6942 lt!131365) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun res!127254 () Bool)

(assert (=> b!260324 (= res!127254 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6942 lt!131365)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260324 (=> (not res!127254) (not e!168724))))

(declare-fun d!62413 () Bool)

(declare-fun e!168727 () Bool)

(assert (=> d!62413 e!168727))

(declare-fun c!44225 () Bool)

(assert (=> d!62413 (= c!44225 ((_ is MissingZero!1193) lt!131365))))

(assert (=> d!62413 (= lt!131365 (seekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun lt!131366 () Unit!8084)

(declare-fun choose!1275 (array!12596 array!12594 (_ BitVec 32) (_ BitVec 32) V!8475 V!8475 (_ BitVec 64) Int) Unit!8084)

(assert (=> d!62413 (= lt!131366 (choose!1275 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)))))

(assert (=> d!62413 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62413 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!443 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)) lt!131366)))

(declare-fun b!260325 () Bool)

(assert (=> b!260325 (= e!168727 e!168725)))

(declare-fun c!44224 () Bool)

(assert (=> b!260325 (= c!44224 ((_ is MissingVacant!1193) lt!131365))))

(declare-fun bm!24831 () Bool)

(assert (=> bm!24831 (= call!24834 (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!260326 () Bool)

(assert (=> b!260326 (= e!168725 ((_ is Undefined!1193) lt!131365))))

(declare-fun b!260327 () Bool)

(assert (=> b!260327 (= e!168726 (not call!24834))))

(declare-fun b!260328 () Bool)

(declare-fun res!127255 () Bool)

(assert (=> b!260328 (=> (not res!127255) (not e!168726))))

(assert (=> b!260328 (= res!127255 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6945 lt!131365)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260328 (and (bvsge (index!6945 lt!131365) #b00000000000000000000000000000000) (bvslt (index!6945 lt!131365) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun bm!24832 () Bool)

(assert (=> bm!24832 (= call!24835 (inRange!0 (ite c!44225 (index!6942 lt!131365) (index!6945 lt!131365)) (mask!11121 thiss!1504)))))

(declare-fun b!260329 () Bool)

(assert (=> b!260329 (= e!168727 e!168724)))

(declare-fun res!127256 () Bool)

(assert (=> b!260329 (= res!127256 call!24835)))

(assert (=> b!260329 (=> (not res!127256) (not e!168724))))

(assert (= (and d!62413 c!44225) b!260329))

(assert (= (and d!62413 (not c!44225)) b!260325))

(assert (= (and b!260329 res!127256) b!260324))

(assert (= (and b!260324 res!127254) b!260323))

(assert (= (and b!260325 c!44224) b!260322))

(assert (= (and b!260325 (not c!44224)) b!260326))

(assert (= (and b!260322 res!127257) b!260328))

(assert (= (and b!260328 res!127255) b!260327))

(assert (= (or b!260329 b!260322) bm!24832))

(assert (= (or b!260323 b!260327) bm!24831))

(assert (=> d!62413 m!275723))

(declare-fun m!276065 () Bool)

(assert (=> d!62413 m!276065))

(assert (=> d!62413 m!275753))

(declare-fun m!276067 () Bool)

(assert (=> bm!24832 m!276067))

(declare-fun m!276069 () Bool)

(assert (=> b!260324 m!276069))

(declare-fun m!276071 () Bool)

(assert (=> b!260328 m!276071))

(assert (=> bm!24831 m!275737))

(assert (=> b!260031 d!62413))

(declare-fun d!62415 () Bool)

(declare-fun res!127264 () Bool)

(declare-fun e!168730 () Bool)

(assert (=> d!62415 (=> (not res!127264) (not e!168730))))

(declare-fun simpleValid!280 (LongMapFixedSize!3834) Bool)

(assert (=> d!62415 (= res!127264 (simpleValid!280 thiss!1504))))

(assert (=> d!62415 (= (valid!1489 thiss!1504) e!168730)))

(declare-fun b!260336 () Bool)

(declare-fun res!127265 () Bool)

(assert (=> b!260336 (=> (not res!127265) (not e!168730))))

(assert (=> b!260336 (= res!127265 (= (arrayCountValidKeys!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (_size!1966 thiss!1504)))))

(declare-fun b!260337 () Bool)

(declare-fun res!127266 () Bool)

(assert (=> b!260337 (=> (not res!127266) (not e!168730))))

(assert (=> b!260337 (= res!127266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun b!260338 () Bool)

(assert (=> b!260338 (= e!168730 (arrayNoDuplicates!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 Nil!3844))))

(assert (= (and d!62415 res!127264) b!260336))

(assert (= (and b!260336 res!127265) b!260337))

(assert (= (and b!260337 res!127266) b!260338))

(declare-fun m!276073 () Bool)

(assert (=> d!62415 m!276073))

(assert (=> b!260336 m!275771))

(declare-fun m!276075 () Bool)

(assert (=> b!260337 m!276075))

(declare-fun m!276077 () Bool)

(assert (=> b!260338 m!276077))

(assert (=> start!24928 d!62415))

(declare-fun b!260345 () Bool)

(declare-fun e!168735 () Bool)

(assert (=> b!260345 (= e!168735 tp_is_empty!6621)))

(declare-fun mapIsEmpty!11288 () Bool)

(declare-fun mapRes!11288 () Bool)

(assert (=> mapIsEmpty!11288 mapRes!11288))

(declare-fun b!260346 () Bool)

(declare-fun e!168736 () Bool)

(assert (=> b!260346 (= e!168736 tp_is_empty!6621)))

(declare-fun mapNonEmpty!11288 () Bool)

(declare-fun tp!23609 () Bool)

(assert (=> mapNonEmpty!11288 (= mapRes!11288 (and tp!23609 e!168735))))

(declare-fun mapKey!11288 () (_ BitVec 32))

(declare-fun mapRest!11288 () (Array (_ BitVec 32) ValueCell!2967))

(declare-fun mapValue!11288 () ValueCell!2967)

(assert (=> mapNonEmpty!11288 (= mapRest!11282 (store mapRest!11288 mapKey!11288 mapValue!11288))))

(declare-fun condMapEmpty!11288 () Bool)

(declare-fun mapDefault!11288 () ValueCell!2967)

(assert (=> mapNonEmpty!11282 (= condMapEmpty!11288 (= mapRest!11282 ((as const (Array (_ BitVec 32) ValueCell!2967)) mapDefault!11288)))))

(assert (=> mapNonEmpty!11282 (= tp!23599 (and e!168736 mapRes!11288))))

(assert (= (and mapNonEmpty!11282 condMapEmpty!11288) mapIsEmpty!11288))

(assert (= (and mapNonEmpty!11282 (not condMapEmpty!11288)) mapNonEmpty!11288))

(assert (= (and mapNonEmpty!11288 ((_ is ValueCellFull!2967) mapValue!11288)) b!260345))

(assert (= (and mapNonEmpty!11282 ((_ is ValueCellFull!2967) mapDefault!11288)) b!260346))

(declare-fun m!276079 () Bool)

(assert (=> mapNonEmpty!11288 m!276079))

(declare-fun b_lambda!8293 () Bool)

(assert (= b_lambda!8289 (or (and b!260029 b_free!6759) b_lambda!8293)))

(declare-fun b_lambda!8295 () Bool)

(assert (= b_lambda!8291 (or (and b!260029 b_free!6759) b_lambda!8295)))

(check-sat (not b!260155) (not b!260298) (not d!62393) (not b!260337) (not b!260297) b_and!13889 (not d!62411) (not b!260292) (not b!260127) (not bm!24793) (not b!260294) (not b!260152) (not d!62367) (not b!260173) (not bm!24816) tp_is_empty!6621 (not d!62371) (not b!260139) (not d!62381) (not bm!24794) (not b!260336) (not b!260103) (not d!62409) (not b!260270) (not d!62403) (not bm!24832) (not b!260302) (not b!260140) (not bm!24818) (not b!260338) (not bm!24814) (not b!260293) (not b!260250) (not bm!24819) (not d!62413) (not b_next!6759) (not b!260174) (not b!260291) (not d!62395) (not b!260121) (not bm!24824) (not b_lambda!8293) (not b!260230) (not b!260284) (not bm!24797) (not bm!24822) (not bm!24790) (not b!260251) (not b!260180) (not b!260282) (not b!260266) (not b!260238) (not b!260232) (not b!260300) (not b!260254) (not bm!24831) (not d!62415) (not b!260240) (not d!62369) (not b!260231) (not mapNonEmpty!11288) (not b!260275) (not b!260229) (not bm!24817) (not d!62375) (not b_lambda!8295) (not d!62397) (not b!260170) (not d!62391) (not b!260159) (not bm!24826) (not b!260264) (not bm!24825) (not b!260235) (not b!260263) (not d!62373) (not b!260272) (not b!260236))
(check-sat b_and!13889 (not b_next!6759))
(get-model)

(declare-fun d!62417 () Bool)

(assert (=> d!62417 (= (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) (and (not (= (select (arr!5962 lt!131155) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5962 lt!131155) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260270 d!62417))

(declare-fun b!260371 () Bool)

(declare-fun e!168756 () ListLongMap!3871)

(assert (=> b!260371 (= e!168756 (ListLongMap!3872 Nil!3843))))

(declare-fun b!260372 () Bool)

(declare-fun e!168751 () ListLongMap!3871)

(declare-fun call!24838 () ListLongMap!3871)

(assert (=> b!260372 (= e!168751 call!24838)))

(declare-fun b!260373 () Bool)

(declare-fun lt!131387 () Unit!8084)

(declare-fun lt!131385 () Unit!8084)

(assert (=> b!260373 (= lt!131387 lt!131385)))

(declare-fun lt!131386 () V!8475)

(declare-fun lt!131384 () (_ BitVec 64))

(declare-fun lt!131383 () (_ BitVec 64))

(declare-fun lt!131382 () ListLongMap!3871)

(assert (=> b!260373 (not (contains!1890 (+!694 lt!131382 (tuple2!4945 lt!131384 lt!131386)) lt!131383))))

(declare-fun addStillNotContains!129 (ListLongMap!3871 (_ BitVec 64) V!8475 (_ BitVec 64)) Unit!8084)

(assert (=> b!260373 (= lt!131385 (addStillNotContains!129 lt!131382 lt!131384 lt!131386 lt!131383))))

(assert (=> b!260373 (= lt!131383 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!260373 (= lt!131386 (get!3072 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!260373 (= lt!131384 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!260373 (= lt!131382 call!24838)))

(assert (=> b!260373 (= e!168751 (+!694 call!24838 (tuple2!4945 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000) (get!3072 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!24835 () Bool)

(assert (=> bm!24835 (= call!24838 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4795 thiss!1504)))))

(declare-fun b!260374 () Bool)

(declare-fun res!127275 () Bool)

(declare-fun e!168754 () Bool)

(assert (=> b!260374 (=> (not res!127275) (not e!168754))))

(declare-fun lt!131381 () ListLongMap!3871)

(assert (=> b!260374 (= res!127275 (not (contains!1890 lt!131381 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!62419 () Bool)

(assert (=> d!62419 e!168754))

(declare-fun res!127277 () Bool)

(assert (=> d!62419 (=> (not res!127277) (not e!168754))))

(assert (=> d!62419 (= res!127277 (not (contains!1890 lt!131381 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!62419 (= lt!131381 e!168756)))

(declare-fun c!44235 () Bool)

(assert (=> d!62419 (= c!44235 (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62419 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62419 (= (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) lt!131381)))

(declare-fun b!260375 () Bool)

(declare-fun e!168753 () Bool)

(assert (=> b!260375 (= e!168753 (= lt!131381 (getCurrentListMapNoExtraKeys!577 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4795 thiss!1504))))))

(declare-fun b!260376 () Bool)

(declare-fun isEmpty!541 (ListLongMap!3871) Bool)

(assert (=> b!260376 (= e!168753 (isEmpty!541 lt!131381))))

(declare-fun b!260377 () Bool)

(declare-fun e!168752 () Bool)

(assert (=> b!260377 (= e!168752 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!260377 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!260378 () Bool)

(assert (=> b!260378 (= e!168756 e!168751)))

(declare-fun c!44236 () Bool)

(assert (=> b!260378 (= c!44236 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!260379 () Bool)

(declare-fun e!168757 () Bool)

(assert (=> b!260379 (= e!168757 e!168753)))

(declare-fun c!44234 () Bool)

(assert (=> b!260379 (= c!44234 (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260380 () Bool)

(assert (=> b!260380 (= e!168754 e!168757)))

(declare-fun c!44237 () Bool)

(assert (=> b!260380 (= c!44237 e!168752)))

(declare-fun res!127278 () Bool)

(assert (=> b!260380 (=> (not res!127278) (not e!168752))))

(assert (=> b!260380 (= res!127278 (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260381 () Bool)

(assert (=> b!260381 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> b!260381 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6310 (_values!4778 thiss!1504))))))

(declare-fun e!168755 () Bool)

(assert (=> b!260381 (= e!168755 (= (apply!258 lt!131381 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)) (get!3072 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!260382 () Bool)

(assert (=> b!260382 (= e!168757 e!168755)))

(assert (=> b!260382 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun res!127276 () Bool)

(assert (=> b!260382 (= res!127276 (contains!1890 lt!131381 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!260382 (=> (not res!127276) (not e!168755))))

(assert (= (and d!62419 c!44235) b!260371))

(assert (= (and d!62419 (not c!44235)) b!260378))

(assert (= (and b!260378 c!44236) b!260373))

(assert (= (and b!260378 (not c!44236)) b!260372))

(assert (= (or b!260373 b!260372) bm!24835))

(assert (= (and d!62419 res!127277) b!260374))

(assert (= (and b!260374 res!127275) b!260380))

(assert (= (and b!260380 res!127278) b!260377))

(assert (= (and b!260380 c!44237) b!260382))

(assert (= (and b!260380 (not c!44237)) b!260379))

(assert (= (and b!260382 res!127276) b!260381))

(assert (= (and b!260379 c!44234) b!260375))

(assert (= (and b!260379 (not c!44234)) b!260376))

(declare-fun b_lambda!8297 () Bool)

(assert (=> (not b_lambda!8297) (not b!260373)))

(assert (=> b!260373 t!8928))

(declare-fun b_and!13891 () Bool)

(assert (= b_and!13889 (and (=> t!8928 result!5417) b_and!13891)))

(declare-fun b_lambda!8299 () Bool)

(assert (=> (not b_lambda!8299) (not b!260381)))

(assert (=> b!260381 t!8928))

(declare-fun b_and!13893 () Bool)

(assert (= b_and!13891 (and (=> t!8928 result!5417) b_and!13893)))

(declare-fun m!276081 () Bool)

(assert (=> b!260374 m!276081))

(assert (=> b!260377 m!275899))

(assert (=> b!260377 m!275899))

(assert (=> b!260377 m!275901))

(assert (=> b!260373 m!275899))

(declare-fun m!276083 () Bool)

(assert (=> b!260373 m!276083))

(assert (=> b!260373 m!276059))

(assert (=> b!260373 m!276059))

(assert (=> b!260373 m!275965))

(assert (=> b!260373 m!276061))

(declare-fun m!276085 () Bool)

(assert (=> b!260373 m!276085))

(assert (=> b!260373 m!275965))

(assert (=> b!260373 m!276085))

(declare-fun m!276087 () Bool)

(assert (=> b!260373 m!276087))

(declare-fun m!276089 () Bool)

(assert (=> b!260373 m!276089))

(assert (=> b!260382 m!275899))

(assert (=> b!260382 m!275899))

(declare-fun m!276091 () Bool)

(assert (=> b!260382 m!276091))

(assert (=> b!260381 m!275899))

(assert (=> b!260381 m!276059))

(assert (=> b!260381 m!276059))

(assert (=> b!260381 m!275965))

(assert (=> b!260381 m!276061))

(assert (=> b!260381 m!275899))

(declare-fun m!276093 () Bool)

(assert (=> b!260381 m!276093))

(assert (=> b!260381 m!275965))

(declare-fun m!276095 () Bool)

(assert (=> b!260376 m!276095))

(assert (=> b!260378 m!275899))

(assert (=> b!260378 m!275899))

(assert (=> b!260378 m!275901))

(declare-fun m!276097 () Bool)

(assert (=> b!260375 m!276097))

(assert (=> bm!24835 m!276097))

(declare-fun m!276099 () Bool)

(assert (=> d!62419 m!276099))

(assert (=> d!62419 m!275753))

(assert (=> bm!24824 d!62419))

(assert (=> d!62391 d!62383))

(declare-fun d!62421 () Bool)

(assert (=> d!62421 (= (arrayCountValidKeys!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!62421 true))

(declare-fun _$84!42 () Unit!8084)

(assert (=> d!62421 (= (choose!1 (_keys!6975 thiss!1504) index!297 key!932) _$84!42)))

(declare-fun bs!9166 () Bool)

(assert (= bs!9166 d!62421))

(assert (=> bs!9166 m!275783))

(assert (=> bs!9166 m!275995))

(assert (=> bs!9166 m!275771))

(assert (=> d!62397 d!62421))

(declare-fun b!260383 () Bool)

(declare-fun e!168759 () (_ BitVec 32))

(declare-fun call!24839 () (_ BitVec 32))

(assert (=> b!260383 (= e!168759 (bvadd #b00000000000000000000000000000001 call!24839))))

(declare-fun bm!24836 () Bool)

(assert (=> bm!24836 (= call!24839 (arrayCountValidKeys!0 (_keys!6975 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260384 () Bool)

(declare-fun e!168758 () (_ BitVec 32))

(assert (=> b!260384 (= e!168758 #b00000000000000000000000000000000)))

(declare-fun d!62423 () Bool)

(declare-fun lt!131388 () (_ BitVec 32))

(assert (=> d!62423 (and (bvsge lt!131388 #b00000000000000000000000000000000) (bvsle lt!131388 (bvsub (size!6311 (_keys!6975 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!62423 (= lt!131388 e!168758)))

(declare-fun c!44238 () Bool)

(assert (=> d!62423 (= c!44238 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62423 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6311 (_keys!6975 thiss!1504)) (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62423 (= (arrayCountValidKeys!0 (_keys!6975 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))) lt!131388)))

(declare-fun b!260385 () Bool)

(assert (=> b!260385 (= e!168759 call!24839)))

(declare-fun b!260386 () Bool)

(assert (=> b!260386 (= e!168758 e!168759)))

(declare-fun c!44239 () Bool)

(assert (=> b!260386 (= c!44239 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!62423 c!44238) b!260384))

(assert (= (and d!62423 (not c!44238)) b!260386))

(assert (= (and b!260386 c!44239) b!260383))

(assert (= (and b!260386 (not c!44239)) b!260385))

(assert (= (or b!260383 b!260385) bm!24836))

(declare-fun m!276101 () Bool)

(assert (=> bm!24836 m!276101))

(declare-fun m!276103 () Bool)

(assert (=> b!260386 m!276103))

(assert (=> b!260386 m!276103))

(declare-fun m!276105 () Bool)

(assert (=> b!260386 m!276105))

(assert (=> bm!24793 d!62423))

(declare-fun d!62425 () Bool)

(declare-fun e!168761 () Bool)

(assert (=> d!62425 e!168761))

(declare-fun res!127279 () Bool)

(assert (=> d!62425 (=> res!127279 e!168761)))

(declare-fun lt!131391 () Bool)

(assert (=> d!62425 (= res!127279 (not lt!131391))))

(declare-fun lt!131390 () Bool)

(assert (=> d!62425 (= lt!131391 lt!131390)))

(declare-fun lt!131389 () Unit!8084)

(declare-fun e!168760 () Unit!8084)

(assert (=> d!62425 (= lt!131389 e!168760)))

(declare-fun c!44240 () Bool)

(assert (=> d!62425 (= c!44240 lt!131390)))

(assert (=> d!62425 (= lt!131390 (containsKey!307 (toList!1951 lt!131341) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62425 (= (contains!1890 lt!131341 #b1000000000000000000000000000000000000000000000000000000000000000) lt!131391)))

(declare-fun b!260387 () Bool)

(declare-fun lt!131392 () Unit!8084)

(assert (=> b!260387 (= e!168760 lt!131392)))

(assert (=> b!260387 (= lt!131392 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131341) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260387 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131341) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260388 () Bool)

(declare-fun Unit!8094 () Unit!8084)

(assert (=> b!260388 (= e!168760 Unit!8094)))

(declare-fun b!260389 () Bool)

(assert (=> b!260389 (= e!168761 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131341) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62425 c!44240) b!260387))

(assert (= (and d!62425 (not c!44240)) b!260388))

(assert (= (and d!62425 (not res!127279)) b!260389))

(declare-fun m!276107 () Bool)

(assert (=> d!62425 m!276107))

(declare-fun m!276109 () Bool)

(assert (=> b!260387 m!276109))

(declare-fun m!276111 () Bool)

(assert (=> b!260387 m!276111))

(assert (=> b!260387 m!276111))

(declare-fun m!276113 () Bool)

(assert (=> b!260387 m!276113))

(assert (=> b!260389 m!276111))

(assert (=> b!260389 m!276111))

(assert (=> b!260389 m!276113))

(assert (=> bm!24825 d!62425))

(declare-fun d!62427 () Bool)

(declare-fun res!127284 () Bool)

(declare-fun e!168766 () Bool)

(assert (=> d!62427 (=> res!127284 e!168766)))

(assert (=> d!62427 (= res!127284 (and ((_ is Cons!3842) (toList!1951 lt!131148)) (= (_1!2482 (h!4506 (toList!1951 lt!131148))) key!932)))))

(assert (=> d!62427 (= (containsKey!307 (toList!1951 lt!131148) key!932) e!168766)))

(declare-fun b!260394 () Bool)

(declare-fun e!168767 () Bool)

(assert (=> b!260394 (= e!168766 e!168767)))

(declare-fun res!127285 () Bool)

(assert (=> b!260394 (=> (not res!127285) (not e!168767))))

(assert (=> b!260394 (= res!127285 (and (or (not ((_ is Cons!3842) (toList!1951 lt!131148))) (bvsle (_1!2482 (h!4506 (toList!1951 lt!131148))) key!932)) ((_ is Cons!3842) (toList!1951 lt!131148)) (bvslt (_1!2482 (h!4506 (toList!1951 lt!131148))) key!932)))))

(declare-fun b!260395 () Bool)

(assert (=> b!260395 (= e!168767 (containsKey!307 (t!8923 (toList!1951 lt!131148)) key!932))))

(assert (= (and d!62427 (not res!127284)) b!260394))

(assert (= (and b!260394 res!127285) b!260395))

(declare-fun m!276115 () Bool)

(assert (=> b!260395 m!276115))

(assert (=> d!62409 d!62427))

(declare-fun b!260405 () Bool)

(declare-fun e!168772 () Option!321)

(declare-fun e!168773 () Option!321)

(assert (=> b!260405 (= e!168772 e!168773)))

(declare-fun c!44246 () Bool)

(assert (=> b!260405 (= c!44246 (and ((_ is Cons!3842) (toList!1951 lt!131314)) (not (= (_1!2482 (h!4506 (toList!1951 lt!131314))) (_1!2482 (tuple2!4945 key!932 v!346))))))))

(declare-fun b!260407 () Bool)

(assert (=> b!260407 (= e!168773 None!319)))

(declare-fun b!260404 () Bool)

(assert (=> b!260404 (= e!168772 (Some!320 (_2!2482 (h!4506 (toList!1951 lt!131314)))))))

(declare-fun d!62429 () Bool)

(declare-fun c!44245 () Bool)

(assert (=> d!62429 (= c!44245 (and ((_ is Cons!3842) (toList!1951 lt!131314)) (= (_1!2482 (h!4506 (toList!1951 lt!131314))) (_1!2482 (tuple2!4945 key!932 v!346)))))))

(assert (=> d!62429 (= (getValueByKey!315 (toList!1951 lt!131314) (_1!2482 (tuple2!4945 key!932 v!346))) e!168772)))

(declare-fun b!260406 () Bool)

(assert (=> b!260406 (= e!168773 (getValueByKey!315 (t!8923 (toList!1951 lt!131314)) (_1!2482 (tuple2!4945 key!932 v!346))))))

(assert (= (and d!62429 c!44245) b!260404))

(assert (= (and d!62429 (not c!44245)) b!260405))

(assert (= (and b!260405 c!44246) b!260406))

(assert (= (and b!260405 (not c!44246)) b!260407))

(declare-fun m!276117 () Bool)

(assert (=> b!260406 m!276117))

(assert (=> b!260250 d!62429))

(declare-fun d!62431 () Bool)

(declare-fun get!3073 (Option!321) V!8475)

(assert (=> d!62431 (= (apply!258 lt!131290 lt!131297) (get!3073 (getValueByKey!315 (toList!1951 lt!131290) lt!131297)))))

(declare-fun bs!9167 () Bool)

(assert (= bs!9167 d!62431))

(declare-fun m!276119 () Bool)

(assert (=> bs!9167 m!276119))

(assert (=> bs!9167 m!276119))

(declare-fun m!276121 () Bool)

(assert (=> bs!9167 m!276121))

(assert (=> b!260240 d!62431))

(declare-fun d!62433 () Bool)

(assert (=> d!62433 (= (apply!258 (+!694 lt!131294 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))) lt!131286) (get!3073 (getValueByKey!315 (toList!1951 (+!694 lt!131294 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))) lt!131286)))))

(declare-fun bs!9168 () Bool)

(assert (= bs!9168 d!62433))

(declare-fun m!276123 () Bool)

(assert (=> bs!9168 m!276123))

(assert (=> bs!9168 m!276123))

(declare-fun m!276125 () Bool)

(assert (=> bs!9168 m!276125))

(assert (=> b!260240 d!62433))

(declare-fun d!62435 () Bool)

(assert (=> d!62435 (= (apply!258 lt!131294 lt!131286) (get!3073 (getValueByKey!315 (toList!1951 lt!131294) lt!131286)))))

(declare-fun bs!9169 () Bool)

(assert (= bs!9169 d!62435))

(declare-fun m!276127 () Bool)

(assert (=> bs!9169 m!276127))

(assert (=> bs!9169 m!276127))

(declare-fun m!276129 () Bool)

(assert (=> bs!9169 m!276129))

(assert (=> b!260240 d!62435))

(declare-fun d!62437 () Bool)

(assert (=> d!62437 (= (apply!258 (+!694 lt!131300 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))) lt!131289) (apply!258 lt!131300 lt!131289))))

(declare-fun lt!131395 () Unit!8084)

(declare-fun choose!1276 (ListLongMap!3871 (_ BitVec 64) V!8475 (_ BitVec 64)) Unit!8084)

(assert (=> d!62437 (= lt!131395 (choose!1276 lt!131300 lt!131287 (zeroValue!4636 thiss!1504) lt!131289))))

(declare-fun e!168776 () Bool)

(assert (=> d!62437 e!168776))

(declare-fun res!127288 () Bool)

(assert (=> d!62437 (=> (not res!127288) (not e!168776))))

(assert (=> d!62437 (= res!127288 (contains!1890 lt!131300 lt!131289))))

(assert (=> d!62437 (= (addApplyDifferent!234 lt!131300 lt!131287 (zeroValue!4636 thiss!1504) lt!131289) lt!131395)))

(declare-fun b!260411 () Bool)

(assert (=> b!260411 (= e!168776 (not (= lt!131289 lt!131287)))))

(assert (= (and d!62437 res!127288) b!260411))

(declare-fun m!276131 () Bool)

(assert (=> d!62437 m!276131))

(assert (=> d!62437 m!275941))

(assert (=> d!62437 m!275927))

(assert (=> d!62437 m!275927))

(assert (=> d!62437 m!275931))

(declare-fun m!276133 () Bool)

(assert (=> d!62437 m!276133))

(assert (=> b!260240 d!62437))

(declare-fun d!62439 () Bool)

(assert (=> d!62439 (contains!1890 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))) lt!131296)))

(declare-fun lt!131398 () Unit!8084)

(declare-fun choose!1277 (ListLongMap!3871 (_ BitVec 64) V!8475 (_ BitVec 64)) Unit!8084)

(assert (=> d!62439 (= lt!131398 (choose!1277 lt!131293 lt!131299 (zeroValue!4636 thiss!1504) lt!131296))))

(assert (=> d!62439 (contains!1890 lt!131293 lt!131296)))

(assert (=> d!62439 (= (addStillContains!234 lt!131293 lt!131299 (zeroValue!4636 thiss!1504) lt!131296) lt!131398)))

(declare-fun bs!9170 () Bool)

(assert (= bs!9170 d!62439))

(assert (=> bs!9170 m!275951))

(assert (=> bs!9170 m!275951))

(assert (=> bs!9170 m!275953))

(declare-fun m!276135 () Bool)

(assert (=> bs!9170 m!276135))

(declare-fun m!276137 () Bool)

(assert (=> bs!9170 m!276137))

(assert (=> b!260240 d!62439))

(declare-fun d!62441 () Bool)

(declare-fun e!168777 () Bool)

(assert (=> d!62441 e!168777))

(declare-fun res!127289 () Bool)

(assert (=> d!62441 (=> (not res!127289) (not e!168777))))

(declare-fun lt!131400 () ListLongMap!3871)

(assert (=> d!62441 (= res!127289 (contains!1890 lt!131400 (_1!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))))))

(declare-fun lt!131402 () List!3846)

(assert (=> d!62441 (= lt!131400 (ListLongMap!3872 lt!131402))))

(declare-fun lt!131401 () Unit!8084)

(declare-fun lt!131399 () Unit!8084)

(assert (=> d!62441 (= lt!131401 lt!131399)))

(assert (=> d!62441 (= (getValueByKey!315 lt!131402 (_1!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62441 (= lt!131399 (lemmaContainsTupThenGetReturnValue!173 lt!131402 (_1!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62441 (= lt!131402 (insertStrictlySorted!175 (toList!1951 lt!131300) (_1!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62441 (= (+!694 lt!131300 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))) lt!131400)))

(declare-fun b!260413 () Bool)

(declare-fun res!127290 () Bool)

(assert (=> b!260413 (=> (not res!127290) (not e!168777))))

(assert (=> b!260413 (= res!127290 (= (getValueByKey!315 (toList!1951 lt!131400) (_1!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))))))))

(declare-fun b!260414 () Bool)

(assert (=> b!260414 (= e!168777 (contains!1892 (toList!1951 lt!131400) (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))))))

(assert (= (and d!62441 res!127289) b!260413))

(assert (= (and b!260413 res!127290) b!260414))

(declare-fun m!276139 () Bool)

(assert (=> d!62441 m!276139))

(declare-fun m!276141 () Bool)

(assert (=> d!62441 m!276141))

(declare-fun m!276143 () Bool)

(assert (=> d!62441 m!276143))

(declare-fun m!276145 () Bool)

(assert (=> d!62441 m!276145))

(declare-fun m!276147 () Bool)

(assert (=> b!260413 m!276147))

(declare-fun m!276149 () Bool)

(assert (=> b!260414 m!276149))

(assert (=> b!260240 d!62441))

(declare-fun d!62443 () Bool)

(assert (=> d!62443 (= (apply!258 (+!694 lt!131290 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))) lt!131297) (get!3073 (getValueByKey!315 (toList!1951 (+!694 lt!131290 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))) lt!131297)))))

(declare-fun bs!9171 () Bool)

(assert (= bs!9171 d!62443))

(declare-fun m!276151 () Bool)

(assert (=> bs!9171 m!276151))

(assert (=> bs!9171 m!276151))

(declare-fun m!276153 () Bool)

(assert (=> bs!9171 m!276153))

(assert (=> b!260240 d!62443))

(declare-fun d!62445 () Bool)

(declare-fun e!168779 () Bool)

(assert (=> d!62445 e!168779))

(declare-fun res!127291 () Bool)

(assert (=> d!62445 (=> res!127291 e!168779)))

(declare-fun lt!131405 () Bool)

(assert (=> d!62445 (= res!127291 (not lt!131405))))

(declare-fun lt!131404 () Bool)

(assert (=> d!62445 (= lt!131405 lt!131404)))

(declare-fun lt!131403 () Unit!8084)

(declare-fun e!168778 () Unit!8084)

(assert (=> d!62445 (= lt!131403 e!168778)))

(declare-fun c!44247 () Bool)

(assert (=> d!62445 (= c!44247 lt!131404)))

(assert (=> d!62445 (= lt!131404 (containsKey!307 (toList!1951 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))) lt!131296))))

(assert (=> d!62445 (= (contains!1890 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))) lt!131296) lt!131405)))

(declare-fun b!260415 () Bool)

(declare-fun lt!131406 () Unit!8084)

(assert (=> b!260415 (= e!168778 lt!131406)))

(assert (=> b!260415 (= lt!131406 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))) lt!131296))))

(assert (=> b!260415 (isDefined!257 (getValueByKey!315 (toList!1951 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))) lt!131296))))

(declare-fun b!260416 () Bool)

(declare-fun Unit!8095 () Unit!8084)

(assert (=> b!260416 (= e!168778 Unit!8095)))

(declare-fun b!260417 () Bool)

(assert (=> b!260417 (= e!168779 (isDefined!257 (getValueByKey!315 (toList!1951 (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))) lt!131296)))))

(assert (= (and d!62445 c!44247) b!260415))

(assert (= (and d!62445 (not c!44247)) b!260416))

(assert (= (and d!62445 (not res!127291)) b!260417))

(declare-fun m!276155 () Bool)

(assert (=> d!62445 m!276155))

(declare-fun m!276157 () Bool)

(assert (=> b!260415 m!276157))

(declare-fun m!276159 () Bool)

(assert (=> b!260415 m!276159))

(assert (=> b!260415 m!276159))

(declare-fun m!276161 () Bool)

(assert (=> b!260415 m!276161))

(assert (=> b!260417 m!276159))

(assert (=> b!260417 m!276159))

(assert (=> b!260417 m!276161))

(assert (=> b!260240 d!62445))

(declare-fun d!62447 () Bool)

(declare-fun e!168780 () Bool)

(assert (=> d!62447 e!168780))

(declare-fun res!127292 () Bool)

(assert (=> d!62447 (=> (not res!127292) (not e!168780))))

(declare-fun lt!131408 () ListLongMap!3871)

(assert (=> d!62447 (= res!127292 (contains!1890 lt!131408 (_1!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))))))

(declare-fun lt!131410 () List!3846)

(assert (=> d!62447 (= lt!131408 (ListLongMap!3872 lt!131410))))

(declare-fun lt!131409 () Unit!8084)

(declare-fun lt!131407 () Unit!8084)

(assert (=> d!62447 (= lt!131409 lt!131407)))

(assert (=> d!62447 (= (getValueByKey!315 lt!131410 (_1!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))))))

(assert (=> d!62447 (= lt!131407 (lemmaContainsTupThenGetReturnValue!173 lt!131410 (_1!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))))))

(assert (=> d!62447 (= lt!131410 (insertStrictlySorted!175 (toList!1951 lt!131290) (_1!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))))))

(assert (=> d!62447 (= (+!694 lt!131290 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))) lt!131408)))

(declare-fun b!260418 () Bool)

(declare-fun res!127293 () Bool)

(assert (=> b!260418 (=> (not res!127293) (not e!168780))))

(assert (=> b!260418 (= res!127293 (= (getValueByKey!315 (toList!1951 lt!131408) (_1!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))))))))

(declare-fun b!260419 () Bool)

(assert (=> b!260419 (= e!168780 (contains!1892 (toList!1951 lt!131408) (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))))))

(assert (= (and d!62447 res!127292) b!260418))

(assert (= (and b!260418 res!127293) b!260419))

(declare-fun m!276163 () Bool)

(assert (=> d!62447 m!276163))

(declare-fun m!276165 () Bool)

(assert (=> d!62447 m!276165))

(declare-fun m!276167 () Bool)

(assert (=> d!62447 m!276167))

(declare-fun m!276169 () Bool)

(assert (=> d!62447 m!276169))

(declare-fun m!276171 () Bool)

(assert (=> b!260418 m!276171))

(declare-fun m!276173 () Bool)

(assert (=> b!260419 m!276173))

(assert (=> b!260240 d!62447))

(declare-fun d!62449 () Bool)

(assert (=> d!62449 (= (apply!258 (+!694 lt!131294 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))) lt!131286) (apply!258 lt!131294 lt!131286))))

(declare-fun lt!131411 () Unit!8084)

(assert (=> d!62449 (= lt!131411 (choose!1276 lt!131294 lt!131284 (minValue!4636 thiss!1504) lt!131286))))

(declare-fun e!168781 () Bool)

(assert (=> d!62449 e!168781))

(declare-fun res!127294 () Bool)

(assert (=> d!62449 (=> (not res!127294) (not e!168781))))

(assert (=> d!62449 (= res!127294 (contains!1890 lt!131294 lt!131286))))

(assert (=> d!62449 (= (addApplyDifferent!234 lt!131294 lt!131284 (minValue!4636 thiss!1504) lt!131286) lt!131411)))

(declare-fun b!260420 () Bool)

(assert (=> b!260420 (= e!168781 (not (= lt!131286 lt!131284)))))

(assert (= (and d!62449 res!127294) b!260420))

(declare-fun m!276175 () Bool)

(assert (=> d!62449 m!276175))

(assert (=> d!62449 m!275929))

(assert (=> d!62449 m!275943))

(assert (=> d!62449 m!275943))

(assert (=> d!62449 m!275945))

(declare-fun m!276177 () Bool)

(assert (=> d!62449 m!276177))

(assert (=> b!260240 d!62449))

(declare-fun d!62451 () Bool)

(assert (=> d!62451 (= (apply!258 (+!694 lt!131300 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504))) lt!131289) (get!3073 (getValueByKey!315 (toList!1951 (+!694 lt!131300 (tuple2!4945 lt!131287 (zeroValue!4636 thiss!1504)))) lt!131289)))))

(declare-fun bs!9172 () Bool)

(assert (= bs!9172 d!62451))

(declare-fun m!276179 () Bool)

(assert (=> bs!9172 m!276179))

(assert (=> bs!9172 m!276179))

(declare-fun m!276181 () Bool)

(assert (=> bs!9172 m!276181))

(assert (=> b!260240 d!62451))

(declare-fun d!62453 () Bool)

(declare-fun e!168782 () Bool)

(assert (=> d!62453 e!168782))

(declare-fun res!127295 () Bool)

(assert (=> d!62453 (=> (not res!127295) (not e!168782))))

(declare-fun lt!131413 () ListLongMap!3871)

(assert (=> d!62453 (= res!127295 (contains!1890 lt!131413 (_1!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))))))

(declare-fun lt!131415 () List!3846)

(assert (=> d!62453 (= lt!131413 (ListLongMap!3872 lt!131415))))

(declare-fun lt!131414 () Unit!8084)

(declare-fun lt!131412 () Unit!8084)

(assert (=> d!62453 (= lt!131414 lt!131412)))

(assert (=> d!62453 (= (getValueByKey!315 lt!131415 (_1!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))))))

(assert (=> d!62453 (= lt!131412 (lemmaContainsTupThenGetReturnValue!173 lt!131415 (_1!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))))))

(assert (=> d!62453 (= lt!131415 (insertStrictlySorted!175 (toList!1951 lt!131294) (_1!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))))))

(assert (=> d!62453 (= (+!694 lt!131294 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))) lt!131413)))

(declare-fun b!260421 () Bool)

(declare-fun res!127296 () Bool)

(assert (=> b!260421 (=> (not res!127296) (not e!168782))))

(assert (=> b!260421 (= res!127296 (= (getValueByKey!315 (toList!1951 lt!131413) (_1!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))))))))

(declare-fun b!260422 () Bool)

(assert (=> b!260422 (= e!168782 (contains!1892 (toList!1951 lt!131413) (tuple2!4945 lt!131284 (minValue!4636 thiss!1504))))))

(assert (= (and d!62453 res!127295) b!260421))

(assert (= (and b!260421 res!127296) b!260422))

(declare-fun m!276183 () Bool)

(assert (=> d!62453 m!276183))

(declare-fun m!276185 () Bool)

(assert (=> d!62453 m!276185))

(declare-fun m!276187 () Bool)

(assert (=> d!62453 m!276187))

(declare-fun m!276189 () Bool)

(assert (=> d!62453 m!276189))

(declare-fun m!276191 () Bool)

(assert (=> b!260421 m!276191))

(declare-fun m!276193 () Bool)

(assert (=> b!260422 m!276193))

(assert (=> b!260240 d!62453))

(declare-fun d!62455 () Bool)

(declare-fun e!168783 () Bool)

(assert (=> d!62455 e!168783))

(declare-fun res!127297 () Bool)

(assert (=> d!62455 (=> (not res!127297) (not e!168783))))

(declare-fun lt!131417 () ListLongMap!3871)

(assert (=> d!62455 (= res!127297 (contains!1890 lt!131417 (_1!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))))))

(declare-fun lt!131419 () List!3846)

(assert (=> d!62455 (= lt!131417 (ListLongMap!3872 lt!131419))))

(declare-fun lt!131418 () Unit!8084)

(declare-fun lt!131416 () Unit!8084)

(assert (=> d!62455 (= lt!131418 lt!131416)))

(assert (=> d!62455 (= (getValueByKey!315 lt!131419 (_1!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62455 (= lt!131416 (lemmaContainsTupThenGetReturnValue!173 lt!131419 (_1!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62455 (= lt!131419 (insertStrictlySorted!175 (toList!1951 lt!131293) (_1!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62455 (= (+!694 lt!131293 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))) lt!131417)))

(declare-fun b!260423 () Bool)

(declare-fun res!127298 () Bool)

(assert (=> b!260423 (=> (not res!127298) (not e!168783))))

(assert (=> b!260423 (= res!127298 (= (getValueByKey!315 (toList!1951 lt!131417) (_1!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))))))))

(declare-fun b!260424 () Bool)

(assert (=> b!260424 (= e!168783 (contains!1892 (toList!1951 lt!131417) (tuple2!4945 lt!131299 (zeroValue!4636 thiss!1504))))))

(assert (= (and d!62455 res!127297) b!260423))

(assert (= (and b!260423 res!127298) b!260424))

(declare-fun m!276195 () Bool)

(assert (=> d!62455 m!276195))

(declare-fun m!276197 () Bool)

(assert (=> d!62455 m!276197))

(declare-fun m!276199 () Bool)

(assert (=> d!62455 m!276199))

(declare-fun m!276201 () Bool)

(assert (=> d!62455 m!276201))

(declare-fun m!276203 () Bool)

(assert (=> b!260423 m!276203))

(declare-fun m!276205 () Bool)

(assert (=> b!260424 m!276205))

(assert (=> b!260240 d!62455))

(declare-fun d!62457 () Bool)

(assert (=> d!62457 (= (apply!258 (+!694 lt!131290 (tuple2!4945 lt!131303 (minValue!4636 thiss!1504))) lt!131297) (apply!258 lt!131290 lt!131297))))

(declare-fun lt!131420 () Unit!8084)

(assert (=> d!62457 (= lt!131420 (choose!1276 lt!131290 lt!131303 (minValue!4636 thiss!1504) lt!131297))))

(declare-fun e!168784 () Bool)

(assert (=> d!62457 e!168784))

(declare-fun res!127299 () Bool)

(assert (=> d!62457 (=> (not res!127299) (not e!168784))))

(assert (=> d!62457 (= res!127299 (contains!1890 lt!131290 lt!131297))))

(assert (=> d!62457 (= (addApplyDifferent!234 lt!131290 lt!131303 (minValue!4636 thiss!1504) lt!131297) lt!131420)))

(declare-fun b!260425 () Bool)

(assert (=> b!260425 (= e!168784 (not (= lt!131297 lt!131303)))))

(assert (= (and d!62457 res!127299) b!260425))

(declare-fun m!276207 () Bool)

(assert (=> d!62457 m!276207))

(assert (=> d!62457 m!275933))

(assert (=> d!62457 m!275947))

(assert (=> d!62457 m!275947))

(assert (=> d!62457 m!275949))

(declare-fun m!276209 () Bool)

(assert (=> d!62457 m!276209))

(assert (=> b!260240 d!62457))

(declare-fun d!62459 () Bool)

(assert (=> d!62459 (= (apply!258 lt!131300 lt!131289) (get!3073 (getValueByKey!315 (toList!1951 lt!131300) lt!131289)))))

(declare-fun bs!9173 () Bool)

(assert (= bs!9173 d!62459))

(declare-fun m!276211 () Bool)

(assert (=> bs!9173 m!276211))

(assert (=> bs!9173 m!276211))

(declare-fun m!276213 () Bool)

(assert (=> bs!9173 m!276213))

(assert (=> b!260240 d!62459))

(declare-fun b!260426 () Bool)

(declare-fun e!168790 () ListLongMap!3871)

(assert (=> b!260426 (= e!168790 (ListLongMap!3872 Nil!3843))))

(declare-fun b!260427 () Bool)

(declare-fun e!168785 () ListLongMap!3871)

(declare-fun call!24840 () ListLongMap!3871)

(assert (=> b!260427 (= e!168785 call!24840)))

(declare-fun b!260428 () Bool)

(declare-fun lt!131427 () Unit!8084)

(declare-fun lt!131425 () Unit!8084)

(assert (=> b!260428 (= lt!131427 lt!131425)))

(declare-fun lt!131423 () (_ BitVec 64))

(declare-fun lt!131422 () ListLongMap!3871)

(declare-fun lt!131424 () (_ BitVec 64))

(declare-fun lt!131426 () V!8475)

(assert (=> b!260428 (not (contains!1890 (+!694 lt!131422 (tuple2!4945 lt!131424 lt!131426)) lt!131423))))

(assert (=> b!260428 (= lt!131425 (addStillNotContains!129 lt!131422 lt!131424 lt!131426 lt!131423))))

(assert (=> b!260428 (= lt!131423 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!260428 (= lt!131426 (get!3072 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!260428 (= lt!131424 (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))

(assert (=> b!260428 (= lt!131422 call!24840)))

(assert (=> b!260428 (= e!168785 (+!694 call!24840 (tuple2!4945 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) (get!3072 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!24837 () Bool)

(assert (=> bm!24837 (= call!24840 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4795 thiss!1504)))))

(declare-fun b!260429 () Bool)

(declare-fun res!127300 () Bool)

(declare-fun e!168788 () Bool)

(assert (=> b!260429 (=> (not res!127300) (not e!168788))))

(declare-fun lt!131421 () ListLongMap!3871)

(assert (=> b!260429 (= res!127300 (not (contains!1890 lt!131421 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!62461 () Bool)

(assert (=> d!62461 e!168788))

(declare-fun res!127302 () Bool)

(assert (=> d!62461 (=> (not res!127302) (not e!168788))))

(assert (=> d!62461 (= res!127302 (not (contains!1890 lt!131421 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!62461 (= lt!131421 e!168790)))

(declare-fun c!44249 () Bool)

(assert (=> d!62461 (= c!44249 (bvsge #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(assert (=> d!62461 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62461 (= (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) lt!131421)))

(declare-fun b!260430 () Bool)

(declare-fun e!168787 () Bool)

(assert (=> b!260430 (= e!168787 (= lt!131421 (getCurrentListMapNoExtraKeys!577 lt!131155 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4795 thiss!1504))))))

(declare-fun b!260431 () Bool)

(assert (=> b!260431 (= e!168787 (isEmpty!541 lt!131421))))

(declare-fun b!260432 () Bool)

(declare-fun e!168786 () Bool)

(assert (=> b!260432 (= e!168786 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (=> b!260432 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!260433 () Bool)

(assert (=> b!260433 (= e!168790 e!168785)))

(declare-fun c!44250 () Bool)

(assert (=> b!260433 (= c!44250 (validKeyInArray!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260434 () Bool)

(declare-fun e!168791 () Bool)

(assert (=> b!260434 (= e!168791 e!168787)))

(declare-fun c!44248 () Bool)

(assert (=> b!260434 (= c!44248 (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun b!260435 () Bool)

(assert (=> b!260435 (= e!168788 e!168791)))

(declare-fun c!44251 () Bool)

(assert (=> b!260435 (= c!44251 e!168786)))

(declare-fun res!127303 () Bool)

(assert (=> b!260435 (=> (not res!127303) (not e!168786))))

(assert (=> b!260435 (= res!127303 (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun b!260436 () Bool)

(assert (=> b!260436 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(assert (=> b!260436 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6310 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))))))))

(declare-fun e!168789 () Bool)

(assert (=> b!260436 (= e!168789 (= (apply!258 lt!131421 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) (get!3072 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!260437 () Bool)

(assert (=> b!260437 (= e!168791 e!168789)))

(assert (=> b!260437 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 lt!131155)))))

(declare-fun res!127301 () Bool)

(assert (=> b!260437 (= res!127301 (contains!1890 lt!131421 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (=> b!260437 (=> (not res!127301) (not e!168789))))

(assert (= (and d!62461 c!44249) b!260426))

(assert (= (and d!62461 (not c!44249)) b!260433))

(assert (= (and b!260433 c!44250) b!260428))

(assert (= (and b!260433 (not c!44250)) b!260427))

(assert (= (or b!260428 b!260427) bm!24837))

(assert (= (and d!62461 res!127302) b!260429))

(assert (= (and b!260429 res!127300) b!260435))

(assert (= (and b!260435 res!127303) b!260432))

(assert (= (and b!260435 c!44251) b!260437))

(assert (= (and b!260435 (not c!44251)) b!260434))

(assert (= (and b!260437 res!127301) b!260436))

(assert (= (and b!260434 c!44248) b!260430))

(assert (= (and b!260434 (not c!44248)) b!260431))

(declare-fun b_lambda!8301 () Bool)

(assert (=> (not b_lambda!8301) (not b!260428)))

(assert (=> b!260428 t!8928))

(declare-fun b_and!13895 () Bool)

(assert (= b_and!13893 (and (=> t!8928 result!5417) b_and!13895)))

(declare-fun b_lambda!8303 () Bool)

(assert (=> (not b_lambda!8303) (not b!260436)))

(assert (=> b!260436 t!8928))

(declare-fun b_and!13897 () Bool)

(assert (= b_and!13895 (and (=> t!8928 result!5417) b_and!13897)))

(declare-fun m!276215 () Bool)

(assert (=> b!260429 m!276215))

(assert (=> b!260432 m!275887))

(assert (=> b!260432 m!275887))

(assert (=> b!260432 m!275895))

(assert (=> b!260428 m!275887))

(declare-fun m!276217 () Bool)

(assert (=> b!260428 m!276217))

(assert (=> b!260428 m!275963))

(assert (=> b!260428 m!275963))

(assert (=> b!260428 m!275965))

(assert (=> b!260428 m!275967))

(declare-fun m!276219 () Bool)

(assert (=> b!260428 m!276219))

(assert (=> b!260428 m!275965))

(assert (=> b!260428 m!276219))

(declare-fun m!276221 () Bool)

(assert (=> b!260428 m!276221))

(declare-fun m!276223 () Bool)

(assert (=> b!260428 m!276223))

(assert (=> b!260437 m!275887))

(assert (=> b!260437 m!275887))

(declare-fun m!276225 () Bool)

(assert (=> b!260437 m!276225))

(assert (=> b!260436 m!275887))

(assert (=> b!260436 m!275963))

(assert (=> b!260436 m!275963))

(assert (=> b!260436 m!275965))

(assert (=> b!260436 m!275967))

(assert (=> b!260436 m!275887))

(declare-fun m!276227 () Bool)

(assert (=> b!260436 m!276227))

(assert (=> b!260436 m!275965))

(declare-fun m!276229 () Bool)

(assert (=> b!260431 m!276229))

(assert (=> b!260433 m!275887))

(assert (=> b!260433 m!275887))

(assert (=> b!260433 m!275895))

(declare-fun m!276231 () Bool)

(assert (=> b!260430 m!276231))

(assert (=> bm!24837 m!276231))

(declare-fun m!276233 () Bool)

(assert (=> d!62461 m!276233))

(assert (=> d!62461 m!275753))

(assert (=> b!260240 d!62461))

(declare-fun d!62463 () Bool)

(declare-fun lt!131430 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!171 (List!3847) (InoxSet (_ BitVec 64)))

(assert (=> d!62463 (= lt!131430 (select (content!171 Nil!3844) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun e!168797 () Bool)

(assert (=> d!62463 (= lt!131430 e!168797)))

(declare-fun res!127309 () Bool)

(assert (=> d!62463 (=> (not res!127309) (not e!168797))))

(assert (=> d!62463 (= res!127309 ((_ is Cons!3843) Nil!3844))))

(assert (=> d!62463 (= (contains!1891 Nil!3844 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) lt!131430)))

(declare-fun b!260442 () Bool)

(declare-fun e!168796 () Bool)

(assert (=> b!260442 (= e!168797 e!168796)))

(declare-fun res!127308 () Bool)

(assert (=> b!260442 (=> res!127308 e!168796)))

(assert (=> b!260442 (= res!127308 (= (h!4507 Nil!3844) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260443 () Bool)

(assert (=> b!260443 (= e!168796 (contains!1891 (t!8924 Nil!3844) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (= (and d!62463 res!127309) b!260442))

(assert (= (and b!260442 (not res!127308)) b!260443))

(declare-fun m!276235 () Bool)

(assert (=> d!62463 m!276235))

(assert (=> d!62463 m!275887))

(declare-fun m!276237 () Bool)

(assert (=> d!62463 m!276237))

(assert (=> b!260443 m!275887))

(declare-fun m!276239 () Bool)

(assert (=> b!260443 m!276239))

(assert (=> b!260170 d!62463))

(declare-fun d!62465 () Bool)

(declare-fun e!168798 () Bool)

(assert (=> d!62465 e!168798))

(declare-fun res!127310 () Bool)

(assert (=> d!62465 (=> (not res!127310) (not e!168798))))

(declare-fun lt!131432 () ListLongMap!3871)

(assert (=> d!62465 (= res!127310 (contains!1890 lt!131432 (_1!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(declare-fun lt!131434 () List!3846)

(assert (=> d!62465 (= lt!131432 (ListLongMap!3872 lt!131434))))

(declare-fun lt!131433 () Unit!8084)

(declare-fun lt!131431 () Unit!8084)

(assert (=> d!62465 (= lt!131433 lt!131431)))

(assert (=> d!62465 (= (getValueByKey!315 lt!131434 (_1!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))) (Some!320 (_2!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(assert (=> d!62465 (= lt!131431 (lemmaContainsTupThenGetReturnValue!173 lt!131434 (_1!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (_2!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(assert (=> d!62465 (= lt!131434 (insertStrictlySorted!175 (toList!1951 (ite c!44217 call!24826 (ite c!44216 call!24825 call!24828))) (_1!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (_2!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(assert (=> d!62465 (= (+!694 (ite c!44217 call!24826 (ite c!44216 call!24825 call!24828)) (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) lt!131432)))

(declare-fun b!260444 () Bool)

(declare-fun res!127311 () Bool)

(assert (=> b!260444 (=> (not res!127311) (not e!168798))))

(assert (=> b!260444 (= res!127311 (= (getValueByKey!315 (toList!1951 lt!131432) (_1!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))) (Some!320 (_2!2482 (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))))

(declare-fun b!260445 () Bool)

(assert (=> b!260445 (= e!168798 (contains!1892 (toList!1951 lt!131432) (ite (or c!44217 c!44216) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (= (and d!62465 res!127310) b!260444))

(assert (= (and b!260444 res!127311) b!260445))

(declare-fun m!276241 () Bool)

(assert (=> d!62465 m!276241))

(declare-fun m!276243 () Bool)

(assert (=> d!62465 m!276243))

(declare-fun m!276245 () Bool)

(assert (=> d!62465 m!276245))

(declare-fun m!276247 () Bool)

(assert (=> d!62465 m!276247))

(declare-fun m!276249 () Bool)

(assert (=> b!260444 m!276249))

(declare-fun m!276251 () Bool)

(assert (=> b!260445 m!276251))

(assert (=> bm!24826 d!62465))

(declare-fun b!260446 () Bool)

(declare-fun e!168800 () Bool)

(assert (=> b!260446 (= e!168800 (contains!1891 (ite c!44190 (Cons!3843 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) Nil!3844) Nil!3844) (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!260447 () Bool)

(declare-fun e!168801 () Bool)

(declare-fun call!24841 () Bool)

(assert (=> b!260447 (= e!168801 call!24841)))

(declare-fun c!44252 () Bool)

(declare-fun bm!24838 () Bool)

(assert (=> bm!24838 (= call!24841 (arrayNoDuplicates!0 lt!131155 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!44252 (Cons!3843 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!44190 (Cons!3843 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) Nil!3844) Nil!3844)) (ite c!44190 (Cons!3843 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) Nil!3844) Nil!3844))))))

(declare-fun b!260448 () Bool)

(assert (=> b!260448 (= e!168801 call!24841)))

(declare-fun b!260449 () Bool)

(declare-fun e!168802 () Bool)

(declare-fun e!168799 () Bool)

(assert (=> b!260449 (= e!168802 e!168799)))

(declare-fun res!127314 () Bool)

(assert (=> b!260449 (=> (not res!127314) (not e!168799))))

(assert (=> b!260449 (= res!127314 (not e!168800))))

(declare-fun res!127313 () Bool)

(assert (=> b!260449 (=> (not res!127313) (not e!168800))))

(assert (=> b!260449 (= res!127313 (validKeyInArray!0 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!260450 () Bool)

(assert (=> b!260450 (= e!168799 e!168801)))

(assert (=> b!260450 (= c!44252 (validKeyInArray!0 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!62467 () Bool)

(declare-fun res!127312 () Bool)

(assert (=> d!62467 (=> res!127312 e!168802)))

(assert (=> d!62467 (= res!127312 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 lt!131155)))))

(assert (=> d!62467 (= (arrayNoDuplicates!0 lt!131155 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44190 (Cons!3843 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) Nil!3844) Nil!3844)) e!168802)))

(assert (= (and d!62467 (not res!127312)) b!260449))

(assert (= (and b!260449 res!127313) b!260446))

(assert (= (and b!260449 res!127314) b!260450))

(assert (= (and b!260450 c!44252) b!260447))

(assert (= (and b!260450 (not c!44252)) b!260448))

(assert (= (or b!260447 b!260448) bm!24838))

(declare-fun m!276253 () Bool)

(assert (=> b!260446 m!276253))

(assert (=> b!260446 m!276253))

(declare-fun m!276255 () Bool)

(assert (=> b!260446 m!276255))

(assert (=> bm!24838 m!276253))

(declare-fun m!276257 () Bool)

(assert (=> bm!24838 m!276257))

(assert (=> b!260449 m!276253))

(assert (=> b!260449 m!276253))

(declare-fun m!276259 () Bool)

(assert (=> b!260449 m!276259))

(assert (=> b!260450 m!276253))

(assert (=> b!260450 m!276253))

(assert (=> b!260450 m!276259))

(assert (=> bm!24797 d!62467))

(assert (=> d!62367 d!62369))

(declare-fun d!62469 () Bool)

(declare-fun e!168805 () Bool)

(assert (=> d!62469 e!168805))

(declare-fun res!127320 () Bool)

(assert (=> d!62469 (=> (not res!127320) (not e!168805))))

(declare-fun lt!131437 () SeekEntryResult!1193)

(assert (=> d!62469 (= res!127320 ((_ is Found!1193) lt!131437))))

(assert (=> d!62469 (= lt!131437 (seekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(assert (=> d!62469 true))

(declare-fun _$33!180 () Unit!8084)

(assert (=> d!62469 (= (choose!1272 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)) _$33!180)))

(declare-fun b!260455 () Bool)

(declare-fun res!127319 () Bool)

(assert (=> b!260455 (=> (not res!127319) (not e!168805))))

(assert (=> b!260455 (= res!127319 (inRange!0 (index!6943 lt!131437) (mask!11121 thiss!1504)))))

(declare-fun b!260456 () Bool)

(assert (=> b!260456 (= e!168805 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6943 lt!131437)) key!932))))

(assert (= (and d!62469 res!127320) b!260455))

(assert (= (and b!260455 res!127319) b!260456))

(assert (=> d!62469 m!275723))

(declare-fun m!276261 () Bool)

(assert (=> b!260455 m!276261))

(declare-fun m!276263 () Bool)

(assert (=> b!260456 m!276263))

(assert (=> d!62367 d!62469))

(assert (=> d!62367 d!62383))

(assert (=> b!260336 d!62379))

(declare-fun d!62471 () Bool)

(assert (=> d!62471 (= (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260291 d!62471))

(declare-fun d!62473 () Bool)

(declare-fun res!127321 () Bool)

(declare-fun e!168806 () Bool)

(assert (=> d!62473 (=> res!127321 e!168806)))

(assert (=> d!62473 (= res!127321 (= (select (arr!5962 (_keys!6975 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!62473 (= (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!168806)))

(declare-fun b!260457 () Bool)

(declare-fun e!168807 () Bool)

(assert (=> b!260457 (= e!168806 e!168807)))

(declare-fun res!127322 () Bool)

(assert (=> b!260457 (=> (not res!127322) (not e!168807))))

(assert (=> b!260457 (= res!127322 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260458 () Bool)

(assert (=> b!260458 (= e!168807 (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!62473 (not res!127321)) b!260457))

(assert (= (and b!260457 res!127322) b!260458))

(assert (=> d!62473 m!276103))

(declare-fun m!276265 () Bool)

(assert (=> b!260458 m!276265))

(assert (=> b!260272 d!62473))

(assert (=> b!260173 d!62417))

(assert (=> b!260174 d!62417))

(declare-fun d!62475 () Bool)

(assert (=> d!62475 (= (apply!258 lt!131341 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3073 (getValueByKey!315 (toList!1951 lt!131341) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9174 () Bool)

(assert (= bs!9174 d!62475))

(declare-fun m!276267 () Bool)

(assert (=> bs!9174 m!276267))

(assert (=> bs!9174 m!276267))

(declare-fun m!276269 () Bool)

(assert (=> bs!9174 m!276269))

(assert (=> b!260292 d!62475))

(declare-fun b!260459 () Bool)

(declare-fun e!168809 () Bool)

(declare-fun call!24842 () Bool)

(assert (=> b!260459 (= e!168809 call!24842)))

(declare-fun d!62477 () Bool)

(declare-fun res!127323 () Bool)

(declare-fun e!168808 () Bool)

(assert (=> d!62477 (=> res!127323 e!168808)))

(assert (=> d!62477 (= res!127323 (bvsge #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(assert (=> d!62477 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (mask!11121 thiss!1504)) e!168808)))

(declare-fun bm!24839 () Bool)

(assert (=> bm!24839 (= call!24842 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (mask!11121 thiss!1504)))))

(declare-fun b!260460 () Bool)

(declare-fun e!168810 () Bool)

(assert (=> b!260460 (= e!168810 call!24842)))

(declare-fun b!260461 () Bool)

(assert (=> b!260461 (= e!168809 e!168810)))

(declare-fun lt!131438 () (_ BitVec 64))

(assert (=> b!260461 (= lt!131438 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131440 () Unit!8084)

(assert (=> b!260461 (= lt!131440 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) lt!131438 #b00000000000000000000000000000000))))

(assert (=> b!260461 (arrayContainsKey!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) lt!131438 #b00000000000000000000000000000000)))

(declare-fun lt!131439 () Unit!8084)

(assert (=> b!260461 (= lt!131439 lt!131440)))

(declare-fun res!127324 () Bool)

(assert (=> b!260461 (= res!127324 (= (seekEntryOrOpen!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000) (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (mask!11121 thiss!1504)) (Found!1193 #b00000000000000000000000000000000)))))

(assert (=> b!260461 (=> (not res!127324) (not e!168810))))

(declare-fun b!260462 () Bool)

(assert (=> b!260462 (= e!168808 e!168809)))

(declare-fun c!44253 () Bool)

(assert (=> b!260462 (= c!44253 (validKeyInArray!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!62477 (not res!127323)) b!260462))

(assert (= (and b!260462 c!44253) b!260461))

(assert (= (and b!260462 (not c!44253)) b!260459))

(assert (= (and b!260461 res!127324) b!260460))

(assert (= (or b!260460 b!260459) bm!24839))

(declare-fun m!276271 () Bool)

(assert (=> bm!24839 m!276271))

(declare-fun m!276273 () Bool)

(assert (=> b!260461 m!276273))

(declare-fun m!276275 () Bool)

(assert (=> b!260461 m!276275))

(declare-fun m!276277 () Bool)

(assert (=> b!260461 m!276277))

(assert (=> b!260461 m!276273))

(declare-fun m!276279 () Bool)

(assert (=> b!260461 m!276279))

(assert (=> b!260462 m!276273))

(assert (=> b!260462 m!276273))

(declare-fun m!276281 () Bool)

(assert (=> b!260462 m!276281))

(assert (=> b!260275 d!62477))

(declare-fun d!62479 () Bool)

(declare-fun e!168811 () Bool)

(assert (=> d!62479 e!168811))

(declare-fun res!127325 () Bool)

(assert (=> d!62479 (=> (not res!127325) (not e!168811))))

(declare-fun lt!131442 () ListLongMap!3871)

(assert (=> d!62479 (= res!127325 (contains!1890 lt!131442 (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(declare-fun lt!131444 () List!3846)

(assert (=> d!62479 (= lt!131442 (ListLongMap!3872 lt!131444))))

(declare-fun lt!131443 () Unit!8084)

(declare-fun lt!131441 () Unit!8084)

(assert (=> d!62479 (= lt!131443 lt!131441)))

(assert (=> d!62479 (= (getValueByKey!315 lt!131444 (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (=> d!62479 (= lt!131441 (lemmaContainsTupThenGetReturnValue!173 lt!131444 (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (=> d!62479 (= lt!131444 (insertStrictlySorted!175 (toList!1951 call!24824) (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (=> d!62479 (= (+!694 call!24824 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))) lt!131442)))

(declare-fun b!260463 () Bool)

(declare-fun res!127326 () Bool)

(assert (=> b!260463 (=> (not res!127326) (not e!168811))))

(assert (=> b!260463 (= res!127326 (= (getValueByKey!315 (toList!1951 lt!131442) (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(declare-fun b!260464 () Bool)

(assert (=> b!260464 (= e!168811 (contains!1892 (toList!1951 lt!131442) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))

(assert (= (and d!62479 res!127325) b!260463))

(assert (= (and b!260463 res!127326) b!260464))

(declare-fun m!276283 () Bool)

(assert (=> d!62479 m!276283))

(declare-fun m!276285 () Bool)

(assert (=> d!62479 m!276285))

(declare-fun m!276287 () Bool)

(assert (=> d!62479 m!276287))

(declare-fun m!276289 () Bool)

(assert (=> d!62479 m!276289))

(declare-fun m!276291 () Bool)

(assert (=> b!260463 m!276291))

(declare-fun m!276293 () Bool)

(assert (=> b!260464 m!276293))

(assert (=> b!260294 d!62479))

(assert (=> b!260229 d!62417))

(declare-fun b!260477 () Bool)

(declare-fun e!168820 () SeekEntryResult!1193)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!260477 (= e!168820 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25131 lt!131213) #b00000000000000000000000000000001) (nextIndex!0 (index!6944 lt!131213) (x!25131 lt!131213) (mask!11121 thiss!1504)) (index!6944 lt!131213) key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun b!260478 () Bool)

(declare-fun c!44261 () Bool)

(declare-fun lt!131449 () (_ BitVec 64))

(assert (=> b!260478 (= c!44261 (= lt!131449 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168818 () SeekEntryResult!1193)

(assert (=> b!260478 (= e!168818 e!168820)))

(declare-fun b!260479 () Bool)

(declare-fun e!168819 () SeekEntryResult!1193)

(assert (=> b!260479 (= e!168819 Undefined!1193)))

(declare-fun b!260480 () Bool)

(assert (=> b!260480 (= e!168819 e!168818)))

(declare-fun c!44260 () Bool)

(assert (=> b!260480 (= c!44260 (= lt!131449 key!932))))

(declare-fun b!260481 () Bool)

(assert (=> b!260481 (= e!168820 (MissingVacant!1193 (index!6944 lt!131213)))))

(declare-fun lt!131450 () SeekEntryResult!1193)

(declare-fun d!62481 () Bool)

(assert (=> d!62481 (and (or ((_ is Undefined!1193) lt!131450) (not ((_ is Found!1193) lt!131450)) (and (bvsge (index!6943 lt!131450) #b00000000000000000000000000000000) (bvslt (index!6943 lt!131450) (size!6311 (_keys!6975 thiss!1504))))) (or ((_ is Undefined!1193) lt!131450) ((_ is Found!1193) lt!131450) (not ((_ is MissingVacant!1193) lt!131450)) (not (= (index!6945 lt!131450) (index!6944 lt!131213))) (and (bvsge (index!6945 lt!131450) #b00000000000000000000000000000000) (bvslt (index!6945 lt!131450) (size!6311 (_keys!6975 thiss!1504))))) (or ((_ is Undefined!1193) lt!131450) (ite ((_ is Found!1193) lt!131450) (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6943 lt!131450)) key!932) (and ((_ is MissingVacant!1193) lt!131450) (= (index!6945 lt!131450) (index!6944 lt!131213)) (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6945 lt!131450)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!62481 (= lt!131450 e!168819)))

(declare-fun c!44262 () Bool)

(assert (=> d!62481 (= c!44262 (bvsge (x!25131 lt!131213) #b01111111111111111111111111111110))))

(assert (=> d!62481 (= lt!131449 (select (arr!5962 (_keys!6975 thiss!1504)) (index!6944 lt!131213)))))

(assert (=> d!62481 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62481 (= (seekKeyOrZeroReturnVacant!0 (x!25131 lt!131213) (index!6944 lt!131213) (index!6944 lt!131213) key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)) lt!131450)))

(declare-fun b!260482 () Bool)

(assert (=> b!260482 (= e!168818 (Found!1193 (index!6944 lt!131213)))))

(assert (= (and d!62481 c!44262) b!260479))

(assert (= (and d!62481 (not c!44262)) b!260480))

(assert (= (and b!260480 c!44260) b!260482))

(assert (= (and b!260480 (not c!44260)) b!260478))

(assert (= (and b!260478 c!44261) b!260481))

(assert (= (and b!260478 (not c!44261)) b!260477))

(declare-fun m!276295 () Bool)

(assert (=> b!260477 m!276295))

(assert (=> b!260477 m!276295))

(declare-fun m!276297 () Bool)

(assert (=> b!260477 m!276297))

(declare-fun m!276299 () Bool)

(assert (=> d!62481 m!276299))

(declare-fun m!276301 () Bool)

(assert (=> d!62481 m!276301))

(assert (=> d!62481 m!275857))

(assert (=> d!62481 m!275753))

(assert (=> b!260121 d!62481))

(assert (=> bm!24831 d!62401))

(declare-fun d!62483 () Bool)

(declare-fun e!168822 () Bool)

(assert (=> d!62483 e!168822))

(declare-fun res!127327 () Bool)

(assert (=> d!62483 (=> res!127327 e!168822)))

(declare-fun lt!131453 () Bool)

(assert (=> d!62483 (= res!127327 (not lt!131453))))

(declare-fun lt!131452 () Bool)

(assert (=> d!62483 (= lt!131453 lt!131452)))

(declare-fun lt!131451 () Unit!8084)

(declare-fun e!168821 () Unit!8084)

(assert (=> d!62483 (= lt!131451 e!168821)))

(declare-fun c!44263 () Bool)

(assert (=> d!62483 (= c!44263 lt!131452)))

(assert (=> d!62483 (= lt!131452 (containsKey!307 (toList!1951 lt!131341) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62483 (= (contains!1890 lt!131341 #b0000000000000000000000000000000000000000000000000000000000000000) lt!131453)))

(declare-fun b!260483 () Bool)

(declare-fun lt!131454 () Unit!8084)

(assert (=> b!260483 (= e!168821 lt!131454)))

(assert (=> b!260483 (= lt!131454 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131341) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260483 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131341) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260484 () Bool)

(declare-fun Unit!8096 () Unit!8084)

(assert (=> b!260484 (= e!168821 Unit!8096)))

(declare-fun b!260485 () Bool)

(assert (=> b!260485 (= e!168822 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131341) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62483 c!44263) b!260483))

(assert (= (and d!62483 (not c!44263)) b!260484))

(assert (= (and d!62483 (not res!127327)) b!260485))

(declare-fun m!276303 () Bool)

(assert (=> d!62483 m!276303))

(declare-fun m!276305 () Bool)

(assert (=> b!260483 m!276305))

(assert (=> b!260483 m!276267))

(assert (=> b!260483 m!276267))

(declare-fun m!276307 () Bool)

(assert (=> b!260483 m!276307))

(assert (=> b!260485 m!276267))

(assert (=> b!260485 m!276267))

(assert (=> b!260485 m!276307))

(assert (=> bm!24822 d!62483))

(declare-fun d!62485 () Bool)

(declare-fun e!168824 () Bool)

(assert (=> d!62485 e!168824))

(declare-fun res!127328 () Bool)

(assert (=> d!62485 (=> res!127328 e!168824)))

(declare-fun lt!131457 () Bool)

(assert (=> d!62485 (= res!127328 (not lt!131457))))

(declare-fun lt!131456 () Bool)

(assert (=> d!62485 (= lt!131457 lt!131456)))

(declare-fun lt!131455 () Unit!8084)

(declare-fun e!168823 () Unit!8084)

(assert (=> d!62485 (= lt!131455 e!168823)))

(declare-fun c!44264 () Bool)

(assert (=> d!62485 (= c!44264 lt!131456)))

(assert (=> d!62485 (= lt!131456 (containsKey!307 (toList!1951 lt!131285) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (=> d!62485 (= (contains!1890 lt!131285 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) lt!131457)))

(declare-fun b!260486 () Bool)

(declare-fun lt!131458 () Unit!8084)

(assert (=> b!260486 (= e!168823 lt!131458)))

(assert (=> b!260486 (= lt!131458 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131285) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(assert (=> b!260486 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131285) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260487 () Bool)

(declare-fun Unit!8097 () Unit!8084)

(assert (=> b!260487 (= e!168823 Unit!8097)))

(declare-fun b!260488 () Bool)

(assert (=> b!260488 (= e!168824 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131285) (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))))

(assert (= (and d!62485 c!44264) b!260486))

(assert (= (and d!62485 (not c!44264)) b!260487))

(assert (= (and d!62485 (not res!127328)) b!260488))

(assert (=> d!62485 m!275887))

(declare-fun m!276309 () Bool)

(assert (=> d!62485 m!276309))

(assert (=> b!260486 m!275887))

(declare-fun m!276311 () Bool)

(assert (=> b!260486 m!276311))

(assert (=> b!260486 m!275887))

(declare-fun m!276313 () Bool)

(assert (=> b!260486 m!276313))

(assert (=> b!260486 m!276313))

(declare-fun m!276315 () Bool)

(assert (=> b!260486 m!276315))

(assert (=> b!260488 m!275887))

(assert (=> b!260488 m!276313))

(assert (=> b!260488 m!276313))

(assert (=> b!260488 m!276315))

(assert (=> b!260231 d!62485))

(declare-fun d!62487 () Bool)

(assert (=> d!62487 (= (+!694 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) (tuple2!4945 key!932 v!346)) (getCurrentListMap!1474 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(assert (=> d!62487 true))

(declare-fun _$3!61 () Unit!8084)

(assert (=> d!62487 (= (choose!1274 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) index!297 key!932 v!346 (defaultEntry!4795 thiss!1504)) _$3!61)))

(declare-fun bs!9175 () Bool)

(assert (= bs!9175 d!62487))

(assert (=> bs!9175 m!275745))

(assert (=> bs!9175 m!275905))

(assert (=> bs!9175 m!275783))

(assert (=> bs!9175 m!275907))

(assert (=> bs!9175 m!275759))

(assert (=> bs!9175 m!275745))

(assert (=> d!62381 d!62487))

(assert (=> d!62381 d!62383))

(declare-fun b!260489 () Bool)

(declare-fun e!168826 () Bool)

(declare-fun call!24843 () Bool)

(assert (=> b!260489 (= e!168826 call!24843)))

(declare-fun d!62489 () Bool)

(declare-fun res!127329 () Bool)

(declare-fun e!168825 () Bool)

(assert (=> d!62489 (=> res!127329 e!168825)))

(assert (=> d!62489 (= res!127329 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 lt!131155)))))

(assert (=> d!62489 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!131155 (mask!11121 thiss!1504)) e!168825)))

(declare-fun bm!24840 () Bool)

(assert (=> bm!24840 (= call!24843 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!131155 (mask!11121 thiss!1504)))))

(declare-fun b!260490 () Bool)

(declare-fun e!168827 () Bool)

(assert (=> b!260490 (= e!168827 call!24843)))

(declare-fun b!260491 () Bool)

(assert (=> b!260491 (= e!168826 e!168827)))

(declare-fun lt!131459 () (_ BitVec 64))

(assert (=> b!260491 (= lt!131459 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!131461 () Unit!8084)

(assert (=> b!260491 (= lt!131461 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131155 lt!131459 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!260491 (arrayContainsKey!0 lt!131155 lt!131459 #b00000000000000000000000000000000)))

(declare-fun lt!131460 () Unit!8084)

(assert (=> b!260491 (= lt!131460 lt!131461)))

(declare-fun res!127330 () Bool)

(assert (=> b!260491 (= res!127330 (= (seekEntryOrOpen!0 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!131155 (mask!11121 thiss!1504)) (Found!1193 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!260491 (=> (not res!127330) (not e!168827))))

(declare-fun b!260492 () Bool)

(assert (=> b!260492 (= e!168825 e!168826)))

(declare-fun c!44265 () Bool)

(assert (=> b!260492 (= c!44265 (validKeyInArray!0 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!62489 (not res!127329)) b!260492))

(assert (= (and b!260492 c!44265) b!260491))

(assert (= (and b!260492 (not c!44265)) b!260489))

(assert (= (and b!260491 res!127330) b!260490))

(assert (= (or b!260490 b!260489) bm!24840))

(declare-fun m!276317 () Bool)

(assert (=> bm!24840 m!276317))

(assert (=> b!260491 m!276253))

(declare-fun m!276319 () Bool)

(assert (=> b!260491 m!276319))

(declare-fun m!276321 () Bool)

(assert (=> b!260491 m!276321))

(assert (=> b!260491 m!276253))

(declare-fun m!276323 () Bool)

(assert (=> b!260491 m!276323))

(assert (=> b!260492 m!276253))

(assert (=> b!260492 m!276253))

(assert (=> b!260492 m!276259))

(assert (=> bm!24790 d!62489))

(declare-fun d!62491 () Bool)

(assert (=> d!62491 (= (inRange!0 (index!6943 lt!131203) (mask!11121 thiss!1504)) (and (bvsge (index!6943 lt!131203) #b00000000000000000000000000000000) (bvslt (index!6943 lt!131203) (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!260103 d!62491))

(declare-fun d!62493 () Bool)

(assert (=> d!62493 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260264 d!62493))

(declare-fun d!62495 () Bool)

(assert (=> d!62495 (arrayContainsKey!0 lt!131155 lt!131229 #b00000000000000000000000000000000)))

(declare-fun lt!131462 () Unit!8084)

(assert (=> d!62495 (= lt!131462 (choose!13 lt!131155 lt!131229 #b00000000000000000000000000000000))))

(assert (=> d!62495 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!62495 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!131155 lt!131229 #b00000000000000000000000000000000) lt!131462)))

(declare-fun bs!9176 () Bool)

(assert (= bs!9176 d!62495))

(assert (=> bs!9176 m!275891))

(declare-fun m!276325 () Bool)

(assert (=> bs!9176 m!276325))

(assert (=> b!260139 d!62495))

(declare-fun d!62497 () Bool)

(declare-fun res!127331 () Bool)

(declare-fun e!168828 () Bool)

(assert (=> d!62497 (=> res!127331 e!168828)))

(assert (=> d!62497 (= res!127331 (= (select (arr!5962 lt!131155) #b00000000000000000000000000000000) lt!131229))))

(assert (=> d!62497 (= (arrayContainsKey!0 lt!131155 lt!131229 #b00000000000000000000000000000000) e!168828)))

(declare-fun b!260493 () Bool)

(declare-fun e!168829 () Bool)

(assert (=> b!260493 (= e!168828 e!168829)))

(declare-fun res!127332 () Bool)

(assert (=> b!260493 (=> (not res!127332) (not e!168829))))

(assert (=> b!260493 (= res!127332 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 lt!131155)))))

(declare-fun b!260494 () Bool)

(assert (=> b!260494 (= e!168829 (arrayContainsKey!0 lt!131155 lt!131229 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62497 (not res!127331)) b!260493))

(assert (= (and b!260493 res!127332) b!260494))

(assert (=> d!62497 m!275887))

(declare-fun m!276327 () Bool)

(assert (=> b!260494 m!276327))

(assert (=> b!260139 d!62497))

(declare-fun b!260495 () Bool)

(declare-fun e!168832 () SeekEntryResult!1193)

(declare-fun lt!131465 () SeekEntryResult!1193)

(assert (=> b!260495 (= e!168832 (Found!1193 (index!6944 lt!131465)))))

(declare-fun b!260496 () Bool)

(declare-fun e!168830 () SeekEntryResult!1193)

(assert (=> b!260496 (= e!168830 e!168832)))

(declare-fun lt!131464 () (_ BitVec 64))

(assert (=> b!260496 (= lt!131464 (select (arr!5962 lt!131155) (index!6944 lt!131465)))))

(declare-fun c!44266 () Bool)

(assert (=> b!260496 (= c!44266 (= lt!131464 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)))))

(declare-fun b!260497 () Bool)

(declare-fun c!44268 () Bool)

(assert (=> b!260497 (= c!44268 (= lt!131464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168831 () SeekEntryResult!1193)

(assert (=> b!260497 (= e!168832 e!168831)))

(declare-fun b!260498 () Bool)

(assert (=> b!260498 (= e!168830 Undefined!1193)))

(declare-fun b!260499 () Bool)

(assert (=> b!260499 (= e!168831 (seekKeyOrZeroReturnVacant!0 (x!25131 lt!131465) (index!6944 lt!131465) (index!6944 lt!131465) (select (arr!5962 lt!131155) #b00000000000000000000000000000000) lt!131155 (mask!11121 thiss!1504)))))

(declare-fun b!260500 () Bool)

(assert (=> b!260500 (= e!168831 (MissingZero!1193 (index!6944 lt!131465)))))

(declare-fun d!62499 () Bool)

(declare-fun lt!131463 () SeekEntryResult!1193)

(assert (=> d!62499 (and (or ((_ is Undefined!1193) lt!131463) (not ((_ is Found!1193) lt!131463)) (and (bvsge (index!6943 lt!131463) #b00000000000000000000000000000000) (bvslt (index!6943 lt!131463) (size!6311 lt!131155)))) (or ((_ is Undefined!1193) lt!131463) ((_ is Found!1193) lt!131463) (not ((_ is MissingZero!1193) lt!131463)) (and (bvsge (index!6942 lt!131463) #b00000000000000000000000000000000) (bvslt (index!6942 lt!131463) (size!6311 lt!131155)))) (or ((_ is Undefined!1193) lt!131463) ((_ is Found!1193) lt!131463) ((_ is MissingZero!1193) lt!131463) (not ((_ is MissingVacant!1193) lt!131463)) (and (bvsge (index!6945 lt!131463) #b00000000000000000000000000000000) (bvslt (index!6945 lt!131463) (size!6311 lt!131155)))) (or ((_ is Undefined!1193) lt!131463) (ite ((_ is Found!1193) lt!131463) (= (select (arr!5962 lt!131155) (index!6943 lt!131463)) (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1193) lt!131463) (= (select (arr!5962 lt!131155) (index!6942 lt!131463)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1193) lt!131463) (= (select (arr!5962 lt!131155) (index!6945 lt!131463)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62499 (= lt!131463 e!168830)))

(declare-fun c!44267 () Bool)

(assert (=> d!62499 (= c!44267 (and ((_ is Intermediate!1193) lt!131465) (undefined!2005 lt!131465)))))

(assert (=> d!62499 (= lt!131465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) (mask!11121 thiss!1504)) (select (arr!5962 lt!131155) #b00000000000000000000000000000000) lt!131155 (mask!11121 thiss!1504)))))

(assert (=> d!62499 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62499 (= (seekEntryOrOpen!0 (select (arr!5962 lt!131155) #b00000000000000000000000000000000) lt!131155 (mask!11121 thiss!1504)) lt!131463)))

(assert (= (and d!62499 c!44267) b!260498))

(assert (= (and d!62499 (not c!44267)) b!260496))

(assert (= (and b!260496 c!44266) b!260495))

(assert (= (and b!260496 (not c!44266)) b!260497))

(assert (= (and b!260497 c!44268) b!260500))

(assert (= (and b!260497 (not c!44268)) b!260499))

(declare-fun m!276329 () Bool)

(assert (=> b!260496 m!276329))

(assert (=> b!260499 m!275887))

(declare-fun m!276331 () Bool)

(assert (=> b!260499 m!276331))

(assert (=> d!62499 m!275887))

(declare-fun m!276333 () Bool)

(assert (=> d!62499 m!276333))

(assert (=> d!62499 m!275753))

(declare-fun m!276335 () Bool)

(assert (=> d!62499 m!276335))

(declare-fun m!276337 () Bool)

(assert (=> d!62499 m!276337))

(declare-fun m!276339 () Bool)

(assert (=> d!62499 m!276339))

(assert (=> d!62499 m!276333))

(assert (=> d!62499 m!275887))

(declare-fun m!276341 () Bool)

(assert (=> d!62499 m!276341))

(assert (=> b!260139 d!62499))

(declare-fun b!260501 () Bool)

(declare-fun e!168834 () Bool)

(assert (=> b!260501 (= e!168834 (contains!1891 Nil!3844 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!260502 () Bool)

(declare-fun e!168835 () Bool)

(declare-fun call!24844 () Bool)

(assert (=> b!260502 (= e!168835 call!24844)))

(declare-fun c!44269 () Bool)

(declare-fun bm!24841 () Bool)

(assert (=> bm!24841 (= call!24844 (arrayNoDuplicates!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44269 (Cons!3843 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000) Nil!3844) Nil!3844)))))

(declare-fun b!260503 () Bool)

(assert (=> b!260503 (= e!168835 call!24844)))

(declare-fun b!260504 () Bool)

(declare-fun e!168836 () Bool)

(declare-fun e!168833 () Bool)

(assert (=> b!260504 (= e!168836 e!168833)))

(declare-fun res!127335 () Bool)

(assert (=> b!260504 (=> (not res!127335) (not e!168833))))

(assert (=> b!260504 (= res!127335 (not e!168834))))

(declare-fun res!127334 () Bool)

(assert (=> b!260504 (=> (not res!127334) (not e!168834))))

(assert (=> b!260504 (= res!127334 (validKeyInArray!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!260505 () Bool)

(assert (=> b!260505 (= e!168833 e!168835)))

(assert (=> b!260505 (= c!44269 (validKeyInArray!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!62501 () Bool)

(declare-fun res!127333 () Bool)

(assert (=> d!62501 (=> res!127333 e!168836)))

(assert (=> d!62501 (= res!127333 (bvsge #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(assert (=> d!62501 (= (arrayNoDuplicates!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000000 Nil!3844) e!168836)))

(assert (= (and d!62501 (not res!127333)) b!260504))

(assert (= (and b!260504 res!127334) b!260501))

(assert (= (and b!260504 res!127335) b!260505))

(assert (= (and b!260505 c!44269) b!260502))

(assert (= (and b!260505 (not c!44269)) b!260503))

(assert (= (or b!260502 b!260503) bm!24841))

(assert (=> b!260501 m!276273))

(assert (=> b!260501 m!276273))

(declare-fun m!276343 () Bool)

(assert (=> b!260501 m!276343))

(assert (=> bm!24841 m!276273))

(declare-fun m!276345 () Bool)

(assert (=> bm!24841 m!276345))

(assert (=> b!260504 m!276273))

(assert (=> b!260504 m!276273))

(assert (=> b!260504 m!276281))

(assert (=> b!260505 m!276273))

(assert (=> b!260505 m!276273))

(assert (=> b!260505 m!276281))

(assert (=> b!260254 d!62501))

(declare-fun d!62503 () Bool)

(declare-fun e!168837 () Bool)

(assert (=> d!62503 e!168837))

(declare-fun res!127336 () Bool)

(assert (=> d!62503 (=> (not res!127336) (not e!168837))))

(declare-fun lt!131467 () ListLongMap!3871)

(assert (=> d!62503 (= res!127336 (contains!1890 lt!131467 (_1!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun lt!131469 () List!3846)

(assert (=> d!62503 (= lt!131467 (ListLongMap!3872 lt!131469))))

(declare-fun lt!131468 () Unit!8084)

(declare-fun lt!131466 () Unit!8084)

(assert (=> d!62503 (= lt!131468 lt!131466)))

(assert (=> d!62503 (= (getValueByKey!315 lt!131469 (_1!2482 (tuple2!4945 key!932 v!346))) (Some!320 (_2!2482 (tuple2!4945 key!932 v!346))))))

(assert (=> d!62503 (= lt!131466 (lemmaContainsTupThenGetReturnValue!173 lt!131469 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))

(assert (=> d!62503 (= lt!131469 (insertStrictlySorted!175 (toList!1951 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504))) (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))

(assert (=> d!62503 (= (+!694 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) (tuple2!4945 key!932 v!346)) lt!131467)))

(declare-fun b!260506 () Bool)

(declare-fun res!127337 () Bool)

(assert (=> b!260506 (=> (not res!127337) (not e!168837))))

(assert (=> b!260506 (= res!127337 (= (getValueByKey!315 (toList!1951 lt!131467) (_1!2482 (tuple2!4945 key!932 v!346))) (Some!320 (_2!2482 (tuple2!4945 key!932 v!346)))))))

(declare-fun b!260507 () Bool)

(assert (=> b!260507 (= e!168837 (contains!1892 (toList!1951 lt!131467) (tuple2!4945 key!932 v!346)))))

(assert (= (and d!62503 res!127336) b!260506))

(assert (= (and b!260506 res!127337) b!260507))

(declare-fun m!276347 () Bool)

(assert (=> d!62503 m!276347))

(declare-fun m!276349 () Bool)

(assert (=> d!62503 m!276349))

(declare-fun m!276351 () Bool)

(assert (=> d!62503 m!276351))

(declare-fun m!276353 () Bool)

(assert (=> d!62503 m!276353))

(declare-fun m!276355 () Bool)

(assert (=> b!260506 m!276355))

(declare-fun m!276357 () Bool)

(assert (=> b!260507 m!276357))

(assert (=> b!260155 d!62503))

(assert (=> b!260155 d!62411))

(declare-fun b!260508 () Bool)

(declare-fun e!168847 () Unit!8084)

(declare-fun Unit!8098 () Unit!8084)

(assert (=> b!260508 (= e!168847 Unit!8098)))

(declare-fun b!260509 () Bool)

(declare-fun res!127344 () Bool)

(declare-fun e!168839 () Bool)

(assert (=> b!260509 (=> (not res!127344) (not e!168839))))

(declare-fun e!168840 () Bool)

(assert (=> b!260509 (= res!127344 e!168840)))

(declare-fun res!127346 () Bool)

(assert (=> b!260509 (=> res!127346 e!168840)))

(declare-fun e!168848 () Bool)

(assert (=> b!260509 (= res!127346 (not e!168848))))

(declare-fun res!127338 () Bool)

(assert (=> b!260509 (=> (not res!127338) (not e!168848))))

(assert (=> b!260509 (= res!127338 (bvslt #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(declare-fun b!260510 () Bool)

(declare-fun e!168838 () Bool)

(declare-fun call!24845 () Bool)

(assert (=> b!260510 (= e!168838 (not call!24845))))

(declare-fun d!62505 () Bool)

(assert (=> d!62505 e!168839))

(declare-fun res!127343 () Bool)

(assert (=> d!62505 (=> (not res!127343) (not e!168839))))

(assert (=> d!62505 (= res!127343 (or (bvsge #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))))

(declare-fun lt!131472 () ListLongMap!3871)

(declare-fun lt!131478 () ListLongMap!3871)

(assert (=> d!62505 (= lt!131472 lt!131478)))

(declare-fun lt!131475 () Unit!8084)

(assert (=> d!62505 (= lt!131475 e!168847)))

(declare-fun c!44271 () Bool)

(declare-fun e!168843 () Bool)

(assert (=> d!62505 (= c!44271 e!168843)))

(declare-fun res!127342 () Bool)

(assert (=> d!62505 (=> (not res!127342) (not e!168843))))

(assert (=> d!62505 (= res!127342 (bvslt #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(declare-fun e!168849 () ListLongMap!3871)

(assert (=> d!62505 (= lt!131478 e!168849)))

(declare-fun c!44273 () Bool)

(assert (=> d!62505 (= c!44273 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62505 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62505 (= (getCurrentListMap!1474 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) lt!131472)))

(declare-fun bm!24842 () Bool)

(declare-fun call!24847 () ListLongMap!3871)

(declare-fun call!24848 () ListLongMap!3871)

(assert (=> bm!24842 (= call!24847 call!24848)))

(declare-fun b!260511 () Bool)

(declare-fun res!127340 () Bool)

(assert (=> b!260511 (=> (not res!127340) (not e!168839))))

(assert (=> b!260511 (= res!127340 e!168838)))

(declare-fun c!44275 () Bool)

(assert (=> b!260511 (= c!44275 (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!260512 () Bool)

(declare-fun e!168841 () Bool)

(assert (=> b!260512 (= e!168839 e!168841)))

(declare-fun c!44274 () Bool)

(assert (=> b!260512 (= c!44274 (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!260513 () Bool)

(declare-fun e!168842 () ListLongMap!3871)

(declare-fun call!24851 () ListLongMap!3871)

(assert (=> b!260513 (= e!168842 call!24851)))

(declare-fun bm!24843 () Bool)

(declare-fun call!24846 () ListLongMap!3871)

(assert (=> bm!24843 (= call!24851 call!24846)))

(declare-fun b!260514 () Bool)

(assert (=> b!260514 (= e!168848 (validKeyInArray!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!260515 () Bool)

(declare-fun e!168844 () Bool)

(assert (=> b!260515 (= e!168844 (= (apply!258 lt!131472 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4636 thiss!1504)))))

(declare-fun b!260516 () Bool)

(declare-fun e!168845 () Bool)

(assert (=> b!260516 (= e!168840 e!168845)))

(declare-fun res!127345 () Bool)

(assert (=> b!260516 (=> (not res!127345) (not e!168845))))

(assert (=> b!260516 (= res!127345 (contains!1890 lt!131472 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!260516 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(declare-fun b!260517 () Bool)

(assert (=> b!260517 (= e!168849 (+!694 call!24846 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))

(declare-fun b!260518 () Bool)

(declare-fun e!168846 () Bool)

(assert (=> b!260518 (= e!168841 e!168846)))

(declare-fun res!127341 () Bool)

(declare-fun call!24849 () Bool)

(assert (=> b!260518 (= res!127341 call!24849)))

(assert (=> b!260518 (=> (not res!127341) (not e!168846))))

(declare-fun bm!24844 () Bool)

(assert (=> bm!24844 (= call!24845 (contains!1890 lt!131472 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24845 () Bool)

(declare-fun call!24850 () ListLongMap!3871)

(assert (=> bm!24845 (= call!24850 call!24847)))

(declare-fun b!260519 () Bool)

(declare-fun e!168850 () ListLongMap!3871)

(assert (=> b!260519 (= e!168849 e!168850)))

(declare-fun c!44272 () Bool)

(assert (=> b!260519 (= c!44272 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!260520 () Bool)

(assert (=> b!260520 (= e!168843 (validKeyInArray!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!260521 () Bool)

(assert (=> b!260521 (= e!168846 (= (apply!258 lt!131472 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4636 thiss!1504)))))

(declare-fun b!260522 () Bool)

(assert (=> b!260522 (= e!168850 call!24851)))

(declare-fun b!260523 () Bool)

(assert (=> b!260523 (= e!168845 (= (apply!258 lt!131472 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)) (get!3072 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260523 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6310 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))))))))

(assert (=> b!260523 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(declare-fun b!260524 () Bool)

(assert (=> b!260524 (= e!168842 call!24850)))

(declare-fun bm!24846 () Bool)

(assert (=> bm!24846 (= call!24848 (getCurrentListMapNoExtraKeys!577 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun b!260525 () Bool)

(declare-fun lt!131485 () Unit!8084)

(assert (=> b!260525 (= e!168847 lt!131485)))

(declare-fun lt!131480 () ListLongMap!3871)

(assert (=> b!260525 (= lt!131480 (getCurrentListMapNoExtraKeys!577 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131486 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131486 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131483 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131483 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131489 () Unit!8084)

(assert (=> b!260525 (= lt!131489 (addStillContains!234 lt!131480 lt!131486 (zeroValue!4636 thiss!1504) lt!131483))))

(assert (=> b!260525 (contains!1890 (+!694 lt!131480 (tuple2!4945 lt!131486 (zeroValue!4636 thiss!1504))) lt!131483)))

(declare-fun lt!131491 () Unit!8084)

(assert (=> b!260525 (= lt!131491 lt!131489)))

(declare-fun lt!131477 () ListLongMap!3871)

(assert (=> b!260525 (= lt!131477 (getCurrentListMapNoExtraKeys!577 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131490 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131490 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131484 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131484 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131482 () Unit!8084)

(assert (=> b!260525 (= lt!131482 (addApplyDifferent!234 lt!131477 lt!131490 (minValue!4636 thiss!1504) lt!131484))))

(assert (=> b!260525 (= (apply!258 (+!694 lt!131477 (tuple2!4945 lt!131490 (minValue!4636 thiss!1504))) lt!131484) (apply!258 lt!131477 lt!131484))))

(declare-fun lt!131470 () Unit!8084)

(assert (=> b!260525 (= lt!131470 lt!131482)))

(declare-fun lt!131487 () ListLongMap!3871)

(assert (=> b!260525 (= lt!131487 (getCurrentListMapNoExtraKeys!577 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131474 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131474 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131476 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131476 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!131479 () Unit!8084)

(assert (=> b!260525 (= lt!131479 (addApplyDifferent!234 lt!131487 lt!131474 (zeroValue!4636 thiss!1504) lt!131476))))

(assert (=> b!260525 (= (apply!258 (+!694 lt!131487 (tuple2!4945 lt!131474 (zeroValue!4636 thiss!1504))) lt!131476) (apply!258 lt!131487 lt!131476))))

(declare-fun lt!131488 () Unit!8084)

(assert (=> b!260525 (= lt!131488 lt!131479)))

(declare-fun lt!131481 () ListLongMap!3871)

(assert (=> b!260525 (= lt!131481 (getCurrentListMapNoExtraKeys!577 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504))) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)))))

(declare-fun lt!131471 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131471 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131473 () (_ BitVec 64))

(assert (=> b!260525 (= lt!131473 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000))))

(assert (=> b!260525 (= lt!131485 (addApplyDifferent!234 lt!131481 lt!131471 (minValue!4636 thiss!1504) lt!131473))))

(assert (=> b!260525 (= (apply!258 (+!694 lt!131481 (tuple2!4945 lt!131471 (minValue!4636 thiss!1504))) lt!131473) (apply!258 lt!131481 lt!131473))))

(declare-fun bm!24847 () Bool)

(assert (=> bm!24847 (= call!24849 (contains!1890 lt!131472 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260526 () Bool)

(assert (=> b!260526 (= e!168838 e!168844)))

(declare-fun res!127339 () Bool)

(assert (=> b!260526 (= res!127339 call!24845)))

(assert (=> b!260526 (=> (not res!127339) (not e!168844))))

(declare-fun b!260527 () Bool)

(declare-fun c!44270 () Bool)

(assert (=> b!260527 (= c!44270 (and (not (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!260527 (= e!168850 e!168842)))

(declare-fun b!260528 () Bool)

(assert (=> b!260528 (= e!168841 (not call!24849))))

(declare-fun bm!24848 () Bool)

(assert (=> bm!24848 (= call!24846 (+!694 (ite c!44273 call!24848 (ite c!44272 call!24847 call!24850)) (ite (or c!44273 c!44272) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (= (and d!62505 c!44273) b!260517))

(assert (= (and d!62505 (not c!44273)) b!260519))

(assert (= (and b!260519 c!44272) b!260522))

(assert (= (and b!260519 (not c!44272)) b!260527))

(assert (= (and b!260527 c!44270) b!260513))

(assert (= (and b!260527 (not c!44270)) b!260524))

(assert (= (or b!260513 b!260524) bm!24845))

(assert (= (or b!260522 bm!24845) bm!24842))

(assert (= (or b!260522 b!260513) bm!24843))

(assert (= (or b!260517 bm!24842) bm!24846))

(assert (= (or b!260517 bm!24843) bm!24848))

(assert (= (and d!62505 res!127342) b!260520))

(assert (= (and d!62505 c!44271) b!260525))

(assert (= (and d!62505 (not c!44271)) b!260508))

(assert (= (and d!62505 res!127343) b!260509))

(assert (= (and b!260509 res!127338) b!260514))

(assert (= (and b!260509 (not res!127346)) b!260516))

(assert (= (and b!260516 res!127345) b!260523))

(assert (= (and b!260509 res!127344) b!260511))

(assert (= (and b!260511 c!44275) b!260526))

(assert (= (and b!260511 (not c!44275)) b!260510))

(assert (= (and b!260526 res!127339) b!260515))

(assert (= (or b!260526 b!260510) bm!24844))

(assert (= (and b!260511 res!127340) b!260512))

(assert (= (and b!260512 c!44274) b!260518))

(assert (= (and b!260512 (not c!44274)) b!260528))

(assert (= (and b!260518 res!127341) b!260521))

(assert (= (or b!260518 b!260528) bm!24847))

(declare-fun b_lambda!8305 () Bool)

(assert (=> (not b_lambda!8305) (not b!260523)))

(assert (=> b!260523 t!8928))

(declare-fun b_and!13899 () Bool)

(assert (= b_and!13897 (and (=> t!8928 result!5417) b_and!13899)))

(assert (=> b!260520 m!276273))

(assert (=> b!260520 m!276273))

(assert (=> b!260520 m!276281))

(declare-fun m!276359 () Bool)

(assert (=> b!260517 m!276359))

(declare-fun m!276361 () Bool)

(assert (=> bm!24844 m!276361))

(declare-fun m!276363 () Bool)

(assert (=> bm!24848 m!276363))

(declare-fun m!276365 () Bool)

(assert (=> b!260525 m!276365))

(declare-fun m!276367 () Bool)

(assert (=> b!260525 m!276367))

(declare-fun m!276369 () Bool)

(assert (=> b!260525 m!276369))

(declare-fun m!276371 () Bool)

(assert (=> b!260525 m!276371))

(assert (=> b!260525 m!276369))

(declare-fun m!276373 () Bool)

(assert (=> b!260525 m!276373))

(declare-fun m!276375 () Bool)

(assert (=> b!260525 m!276375))

(declare-fun m!276377 () Bool)

(assert (=> b!260525 m!276377))

(declare-fun m!276379 () Bool)

(assert (=> b!260525 m!276379))

(declare-fun m!276381 () Bool)

(assert (=> b!260525 m!276381))

(declare-fun m!276383 () Bool)

(assert (=> b!260525 m!276383))

(declare-fun m!276385 () Bool)

(assert (=> b!260525 m!276385))

(declare-fun m!276387 () Bool)

(assert (=> b!260525 m!276387))

(declare-fun m!276389 () Bool)

(assert (=> b!260525 m!276389))

(declare-fun m!276391 () Bool)

(assert (=> b!260525 m!276391))

(declare-fun m!276393 () Bool)

(assert (=> b!260525 m!276393))

(declare-fun m!276395 () Bool)

(assert (=> b!260525 m!276395))

(assert (=> b!260525 m!276385))

(assert (=> b!260525 m!276273))

(assert (=> b!260525 m!276393))

(assert (=> b!260525 m!276389))

(assert (=> bm!24846 m!276381))

(assert (=> b!260516 m!276273))

(assert (=> b!260516 m!276273))

(declare-fun m!276397 () Bool)

(assert (=> b!260516 m!276397))

(declare-fun m!276399 () Bool)

(assert (=> bm!24847 m!276399))

(declare-fun m!276401 () Bool)

(assert (=> b!260515 m!276401))

(assert (=> d!62505 m!275753))

(declare-fun m!276403 () Bool)

(assert (=> b!260521 m!276403))

(assert (=> b!260523 m!276273))

(assert (=> b!260523 m!275963))

(assert (=> b!260523 m!275963))

(assert (=> b!260523 m!275965))

(assert (=> b!260523 m!275967))

(assert (=> b!260523 m!275965))

(assert (=> b!260523 m!276273))

(declare-fun m!276405 () Bool)

(assert (=> b!260523 m!276405))

(assert (=> b!260514 m!276273))

(assert (=> b!260514 m!276273))

(assert (=> b!260514 m!276281))

(assert (=> b!260155 d!62505))

(declare-fun b!260529 () Bool)

(declare-fun e!168852 () (_ BitVec 32))

(declare-fun call!24852 () (_ BitVec 32))

(assert (=> b!260529 (= e!168852 (bvadd #b00000000000000000000000000000001 call!24852))))

(declare-fun bm!24849 () Bool)

(assert (=> bm!24849 (= call!24852 (arrayCountValidKeys!0 lt!131155 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!260530 () Bool)

(declare-fun e!168851 () (_ BitVec 32))

(assert (=> b!260530 (= e!168851 #b00000000000000000000000000000000)))

(declare-fun d!62507 () Bool)

(declare-fun lt!131492 () (_ BitVec 32))

(assert (=> d!62507 (and (bvsge lt!131492 #b00000000000000000000000000000000) (bvsle lt!131492 (bvsub (size!6311 lt!131155) (bvadd index!297 #b00000000000000000000000000000001))))))

(assert (=> d!62507 (= lt!131492 e!168851)))

(declare-fun c!44276 () Bool)

(assert (=> d!62507 (= c!44276 (bvsge (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62507 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) (bvsge (bvadd index!297 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6311 lt!131155)))))

(assert (=> d!62507 (= (arrayCountValidKeys!0 lt!131155 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) lt!131492)))

(declare-fun b!260531 () Bool)

(assert (=> b!260531 (= e!168852 call!24852)))

(declare-fun b!260532 () Bool)

(assert (=> b!260532 (= e!168851 e!168852)))

(declare-fun c!44277 () Bool)

(assert (=> b!260532 (= c!44277 (validKeyInArray!0 (select (arr!5962 lt!131155) (bvadd index!297 #b00000000000000000000000000000001))))))

(assert (= (and d!62507 c!44276) b!260530))

(assert (= (and d!62507 (not c!44276)) b!260532))

(assert (= (and b!260532 c!44277) b!260529))

(assert (= (and b!260532 (not c!44277)) b!260531))

(assert (= (or b!260529 b!260531) bm!24849))

(declare-fun m!276407 () Bool)

(assert (=> bm!24849 m!276407))

(declare-fun m!276409 () Bool)

(assert (=> b!260532 m!276409))

(assert (=> b!260532 m!276409))

(declare-fun m!276411 () Bool)

(assert (=> b!260532 m!276411))

(assert (=> bm!24794 d!62507))

(declare-fun d!62509 () Bool)

(assert (=> d!62509 (= (inRange!0 (ite c!44225 (index!6942 lt!131365) (index!6945 lt!131365)) (mask!11121 thiss!1504)) (and (bvsge (ite c!44225 (index!6942 lt!131365) (index!6945 lt!131365)) #b00000000000000000000000000000000) (bvslt (ite c!44225 (index!6942 lt!131365) (index!6945 lt!131365)) (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24832 d!62509))

(declare-fun d!62511 () Bool)

(assert (=> d!62511 (= (apply!258 lt!131341 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3073 (getValueByKey!315 (toList!1951 lt!131341) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9177 () Bool)

(assert (= bs!9177 d!62511))

(assert (=> bs!9177 m!276111))

(assert (=> bs!9177 m!276111))

(declare-fun m!276413 () Bool)

(assert (=> bs!9177 m!276413))

(assert (=> b!260298 d!62511))

(declare-fun d!62513 () Bool)

(declare-fun res!127347 () Bool)

(declare-fun e!168853 () Bool)

(assert (=> d!62513 (=> res!127347 e!168853)))

(assert (=> d!62513 (= res!127347 (= (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!62513 (= (arrayContainsKey!0 lt!131155 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!168853)))

(declare-fun b!260533 () Bool)

(declare-fun e!168854 () Bool)

(assert (=> b!260533 (= e!168853 e!168854)))

(declare-fun res!127348 () Bool)

(assert (=> b!260533 (=> (not res!127348) (not e!168854))))

(assert (=> b!260533 (= res!127348 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6311 lt!131155)))))

(declare-fun b!260534 () Bool)

(assert (=> b!260534 (= e!168854 (arrayContainsKey!0 lt!131155 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!62513 (not res!127347)) b!260533))

(assert (= (and b!260533 res!127348) b!260534))

(assert (=> d!62513 m!276253))

(declare-fun m!276415 () Bool)

(assert (=> b!260534 m!276415))

(assert (=> b!260180 d!62513))

(declare-fun b!260535 () Bool)

(declare-fun e!168856 () (_ BitVec 32))

(declare-fun call!24853 () (_ BitVec 32))

(assert (=> b!260535 (= e!168856 (bvadd #b00000000000000000000000000000001 call!24853))))

(declare-fun bm!24850 () Bool)

(assert (=> bm!24850 (= call!24853 (arrayCountValidKeys!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260536 () Bool)

(declare-fun e!168855 () (_ BitVec 32))

(assert (=> b!260536 (= e!168855 #b00000000000000000000000000000000)))

(declare-fun d!62515 () Bool)

(declare-fun lt!131493 () (_ BitVec 32))

(assert (=> d!62515 (and (bvsge lt!131493 #b00000000000000000000000000000000) (bvsle lt!131493 (bvsub (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!62515 (= lt!131493 e!168855)))

(declare-fun c!44278 () Bool)

(assert (=> d!62515 (= c!44278 (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62515 (and (bvsle #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6311 (_keys!6975 thiss!1504)) (size!6311 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))))))))

(assert (=> d!62515 (= (arrayCountValidKeys!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))) lt!131493)))

(declare-fun b!260537 () Bool)

(assert (=> b!260537 (= e!168856 call!24853)))

(declare-fun b!260538 () Bool)

(assert (=> b!260538 (= e!168855 e!168856)))

(declare-fun c!44279 () Bool)

(assert (=> b!260538 (= c!44279 (validKeyInArray!0 (select (arr!5962 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!62515 c!44278) b!260536))

(assert (= (and d!62515 (not c!44278)) b!260538))

(assert (= (and b!260538 c!44279) b!260535))

(assert (= (and b!260538 (not c!44279)) b!260537))

(assert (= (or b!260535 b!260537) bm!24850))

(declare-fun m!276417 () Bool)

(assert (=> bm!24850 m!276417))

(assert (=> b!260538 m!276273))

(assert (=> b!260538 m!276273))

(assert (=> b!260538 m!276281))

(assert (=> b!260266 d!62515))

(assert (=> b!260266 d!62379))

(declare-fun d!62517 () Bool)

(assert (=> d!62517 (= (apply!258 lt!131341 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)) (get!3073 (getValueByKey!315 (toList!1951 lt!131341) (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9178 () Bool)

(assert (= bs!9178 d!62517))

(assert (=> bs!9178 m!275899))

(declare-fun m!276419 () Bool)

(assert (=> bs!9178 m!276419))

(assert (=> bs!9178 m!276419))

(declare-fun m!276421 () Bool)

(assert (=> bs!9178 m!276421))

(assert (=> b!260300 d!62517))

(declare-fun d!62519 () Bool)

(declare-fun c!44282 () Bool)

(assert (=> d!62519 (= c!44282 ((_ is ValueCellFull!2967) (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!168859 () V!8475)

(assert (=> d!62519 (= (get!3072 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!168859)))

(declare-fun b!260543 () Bool)

(declare-fun get!3074 (ValueCell!2967 V!8475) V!8475)

(assert (=> b!260543 (= e!168859 (get!3074 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!260544 () Bool)

(declare-fun get!3075 (ValueCell!2967 V!8475) V!8475)

(assert (=> b!260544 (= e!168859 (get!3075 (select (arr!5961 (_values!4778 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62519 c!44282) b!260543))

(assert (= (and d!62519 (not c!44282)) b!260544))

(assert (=> b!260543 m!276059))

(assert (=> b!260543 m!275965))

(declare-fun m!276423 () Bool)

(assert (=> b!260543 m!276423))

(assert (=> b!260544 m!276059))

(assert (=> b!260544 m!275965))

(declare-fun m!276425 () Bool)

(assert (=> b!260544 m!276425))

(assert (=> b!260300 d!62519))

(declare-fun d!62521 () Bool)

(assert (=> d!62521 (arrayNoDuplicates!0 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) #b00000000000000000000000000000000 Nil!3844)))

(assert (=> d!62521 true))

(declare-fun _$65!92 () Unit!8084)

(assert (=> d!62521 (= (choose!41 (_keys!6975 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3844) _$65!92)))

(declare-fun bs!9179 () Bool)

(assert (= bs!9179 d!62521))

(assert (=> bs!9179 m!275783))

(assert (=> bs!9179 m!275985))

(assert (=> d!62395 d!62521))

(assert (=> b!260235 d!62417))

(declare-fun d!62523 () Bool)

(assert (=> d!62523 (= (apply!258 lt!131285 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3073 (getValueByKey!315 (toList!1951 lt!131285) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9180 () Bool)

(assert (= bs!9180 d!62523))

(declare-fun m!276427 () Bool)

(assert (=> bs!9180 m!276427))

(assert (=> bs!9180 m!276427))

(declare-fun m!276429 () Bool)

(assert (=> bs!9180 m!276429))

(assert (=> b!260236 d!62523))

(assert (=> d!62413 d!62369))

(declare-fun b!260561 () Bool)

(declare-fun e!168870 () Bool)

(declare-fun e!168871 () Bool)

(assert (=> b!260561 (= e!168870 e!168871)))

(declare-fun c!44288 () Bool)

(declare-fun lt!131496 () SeekEntryResult!1193)

(assert (=> b!260561 (= c!44288 ((_ is MissingVacant!1193) lt!131496))))

(declare-fun bm!24855 () Bool)

(declare-fun call!24859 () Bool)

(declare-fun c!44287 () Bool)

(assert (=> bm!24855 (= call!24859 (inRange!0 (ite c!44287 (index!6942 lt!131496) (index!6945 lt!131496)) (mask!11121 thiss!1504)))))

(declare-fun b!260562 () Bool)

(declare-fun res!127360 () Bool)

(assert (=> b!260562 (= res!127360 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6942 lt!131496)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168868 () Bool)

(assert (=> b!260562 (=> (not res!127360) (not e!168868))))

(declare-fun b!260563 () Bool)

(declare-fun res!127357 () Bool)

(declare-fun e!168869 () Bool)

(assert (=> b!260563 (=> (not res!127357) (not e!168869))))

(assert (=> b!260563 (= res!127357 call!24859)))

(assert (=> b!260563 (= e!168871 e!168869)))

(declare-fun b!260564 () Bool)

(declare-fun call!24858 () Bool)

(assert (=> b!260564 (= e!168868 (not call!24858))))

(declare-fun b!260565 () Bool)

(assert (=> b!260565 (= e!168869 (not call!24858))))

(declare-fun d!62525 () Bool)

(assert (=> d!62525 e!168870))

(assert (=> d!62525 (= c!44287 ((_ is MissingZero!1193) lt!131496))))

(assert (=> d!62525 (= lt!131496 (seekEntryOrOpen!0 key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(assert (=> d!62525 true))

(declare-fun _$34!1122 () Unit!8084)

(assert (=> d!62525 (= (choose!1275 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 (defaultEntry!4795 thiss!1504)) _$34!1122)))

(declare-fun bm!24856 () Bool)

(assert (=> bm!24856 (= call!24858 (arrayContainsKey!0 (_keys!6975 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!260566 () Bool)

(assert (=> b!260566 (= e!168870 e!168868)))

(declare-fun res!127358 () Bool)

(assert (=> b!260566 (= res!127358 call!24859)))

(assert (=> b!260566 (=> (not res!127358) (not e!168868))))

(declare-fun b!260567 () Bool)

(assert (=> b!260567 (= e!168871 ((_ is Undefined!1193) lt!131496))))

(declare-fun b!260568 () Bool)

(declare-fun res!127359 () Bool)

(assert (=> b!260568 (=> (not res!127359) (not e!168869))))

(assert (=> b!260568 (= res!127359 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6945 lt!131496)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!62525 c!44287) b!260566))

(assert (= (and d!62525 (not c!44287)) b!260561))

(assert (= (and b!260566 res!127358) b!260562))

(assert (= (and b!260562 res!127360) b!260564))

(assert (= (and b!260561 c!44288) b!260563))

(assert (= (and b!260561 (not c!44288)) b!260567))

(assert (= (and b!260563 res!127357) b!260568))

(assert (= (and b!260568 res!127359) b!260565))

(assert (= (or b!260566 b!260563) bm!24855))

(assert (= (or b!260564 b!260565) bm!24856))

(declare-fun m!276431 () Bool)

(assert (=> bm!24855 m!276431))

(assert (=> d!62525 m!275723))

(declare-fun m!276433 () Bool)

(assert (=> b!260562 m!276433))

(assert (=> bm!24856 m!275737))

(declare-fun m!276435 () Bool)

(assert (=> b!260568 m!276435))

(assert (=> d!62413 d!62525))

(assert (=> d!62413 d!62383))

(declare-fun d!62527 () Bool)

(assert (=> d!62527 (= (apply!258 lt!131285 (select (arr!5962 lt!131155) #b00000000000000000000000000000000)) (get!3073 (getValueByKey!315 (toList!1951 lt!131285) (select (arr!5962 lt!131155) #b00000000000000000000000000000000))))))

(declare-fun bs!9181 () Bool)

(assert (= bs!9181 d!62527))

(assert (=> bs!9181 m!275887))

(assert (=> bs!9181 m!276313))

(assert (=> bs!9181 m!276313))

(declare-fun m!276437 () Bool)

(assert (=> bs!9181 m!276437))

(assert (=> b!260238 d!62527))

(declare-fun c!44289 () Bool)

(declare-fun d!62529 () Bool)

(assert (=> d!62529 (= c!44289 ((_ is ValueCellFull!2967) (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!168872 () V!8475)

(assert (=> d!62529 (= (get!3072 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!168872)))

(declare-fun b!260569 () Bool)

(assert (=> b!260569 (= e!168872 (get!3074 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!260570 () Bool)

(assert (=> b!260570 (= e!168872 (get!3075 (select (arr!5961 (array!12595 (store (arr!5961 (_values!4778 thiss!1504)) index!297 (ValueCellFull!2967 v!346)) (size!6310 (_values!4778 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!596 (defaultEntry!4795 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62529 c!44289) b!260569))

(assert (= (and d!62529 (not c!44289)) b!260570))

(assert (=> b!260569 m!275963))

(assert (=> b!260569 m!275965))

(declare-fun m!276439 () Bool)

(assert (=> b!260569 m!276439))

(assert (=> b!260570 m!275963))

(assert (=> b!260570 m!275965))

(declare-fun m!276441 () Bool)

(assert (=> b!260570 m!276441))

(assert (=> b!260238 d!62529))

(declare-fun d!62531 () Bool)

(assert (=> d!62531 (= (apply!258 lt!131346 lt!131353) (get!3073 (getValueByKey!315 (toList!1951 lt!131346) lt!131353)))))

(declare-fun bs!9182 () Bool)

(assert (= bs!9182 d!62531))

(declare-fun m!276443 () Bool)

(assert (=> bs!9182 m!276443))

(assert (=> bs!9182 m!276443))

(declare-fun m!276445 () Bool)

(assert (=> bs!9182 m!276445))

(assert (=> b!260302 d!62531))

(declare-fun d!62533 () Bool)

(assert (=> d!62533 (= (apply!258 lt!131356 lt!131345) (get!3073 (getValueByKey!315 (toList!1951 lt!131356) lt!131345)))))

(declare-fun bs!9183 () Bool)

(assert (= bs!9183 d!62533))

(declare-fun m!276447 () Bool)

(assert (=> bs!9183 m!276447))

(assert (=> bs!9183 m!276447))

(declare-fun m!276449 () Bool)

(assert (=> bs!9183 m!276449))

(assert (=> b!260302 d!62533))

(declare-fun d!62535 () Bool)

(declare-fun e!168873 () Bool)

(assert (=> d!62535 e!168873))

(declare-fun res!127361 () Bool)

(assert (=> d!62535 (=> (not res!127361) (not e!168873))))

(declare-fun lt!131498 () ListLongMap!3871)

(assert (=> d!62535 (= res!127361 (contains!1890 lt!131498 (_1!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))))))

(declare-fun lt!131500 () List!3846)

(assert (=> d!62535 (= lt!131498 (ListLongMap!3872 lt!131500))))

(declare-fun lt!131499 () Unit!8084)

(declare-fun lt!131497 () Unit!8084)

(assert (=> d!62535 (= lt!131499 lt!131497)))

(assert (=> d!62535 (= (getValueByKey!315 lt!131500 (_1!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62535 (= lt!131497 (lemmaContainsTupThenGetReturnValue!173 lt!131500 (_1!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62535 (= lt!131500 (insertStrictlySorted!175 (toList!1951 lt!131349) (_1!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62535 (= (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))) lt!131498)))

(declare-fun b!260571 () Bool)

(declare-fun res!127362 () Bool)

(assert (=> b!260571 (=> (not res!127362) (not e!168873))))

(assert (=> b!260571 (= res!127362 (= (getValueByKey!315 (toList!1951 lt!131498) (_1!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))))))))

(declare-fun b!260572 () Bool)

(assert (=> b!260572 (= e!168873 (contains!1892 (toList!1951 lt!131498) (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))))))

(assert (= (and d!62535 res!127361) b!260571))

(assert (= (and b!260571 res!127362) b!260572))

(declare-fun m!276451 () Bool)

(assert (=> d!62535 m!276451))

(declare-fun m!276453 () Bool)

(assert (=> d!62535 m!276453))

(declare-fun m!276455 () Bool)

(assert (=> d!62535 m!276455))

(declare-fun m!276457 () Bool)

(assert (=> d!62535 m!276457))

(declare-fun m!276459 () Bool)

(assert (=> b!260571 m!276459))

(declare-fun m!276461 () Bool)

(assert (=> b!260572 m!276461))

(assert (=> b!260302 d!62535))

(declare-fun d!62537 () Bool)

(assert (=> d!62537 (contains!1890 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))) lt!131352)))

(declare-fun lt!131501 () Unit!8084)

(assert (=> d!62537 (= lt!131501 (choose!1277 lt!131349 lt!131355 (zeroValue!4636 thiss!1504) lt!131352))))

(assert (=> d!62537 (contains!1890 lt!131349 lt!131352)))

(assert (=> d!62537 (= (addStillContains!234 lt!131349 lt!131355 (zeroValue!4636 thiss!1504) lt!131352) lt!131501)))

(declare-fun bs!9184 () Bool)

(assert (= bs!9184 d!62537))

(assert (=> bs!9184 m!276047))

(assert (=> bs!9184 m!276047))

(assert (=> bs!9184 m!276049))

(declare-fun m!276463 () Bool)

(assert (=> bs!9184 m!276463))

(declare-fun m!276465 () Bool)

(assert (=> bs!9184 m!276465))

(assert (=> b!260302 d!62537))

(assert (=> b!260302 d!62419))

(declare-fun d!62539 () Bool)

(declare-fun e!168875 () Bool)

(assert (=> d!62539 e!168875))

(declare-fun res!127363 () Bool)

(assert (=> d!62539 (=> res!127363 e!168875)))

(declare-fun lt!131504 () Bool)

(assert (=> d!62539 (= res!127363 (not lt!131504))))

(declare-fun lt!131503 () Bool)

(assert (=> d!62539 (= lt!131504 lt!131503)))

(declare-fun lt!131502 () Unit!8084)

(declare-fun e!168874 () Unit!8084)

(assert (=> d!62539 (= lt!131502 e!168874)))

(declare-fun c!44290 () Bool)

(assert (=> d!62539 (= c!44290 lt!131503)))

(assert (=> d!62539 (= lt!131503 (containsKey!307 (toList!1951 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))) lt!131352))))

(assert (=> d!62539 (= (contains!1890 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504))) lt!131352) lt!131504)))

(declare-fun b!260573 () Bool)

(declare-fun lt!131505 () Unit!8084)

(assert (=> b!260573 (= e!168874 lt!131505)))

(assert (=> b!260573 (= lt!131505 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))) lt!131352))))

(assert (=> b!260573 (isDefined!257 (getValueByKey!315 (toList!1951 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))) lt!131352))))

(declare-fun b!260574 () Bool)

(declare-fun Unit!8099 () Unit!8084)

(assert (=> b!260574 (= e!168874 Unit!8099)))

(declare-fun b!260575 () Bool)

(assert (=> b!260575 (= e!168875 (isDefined!257 (getValueByKey!315 (toList!1951 (+!694 lt!131349 (tuple2!4945 lt!131355 (zeroValue!4636 thiss!1504)))) lt!131352)))))

(assert (= (and d!62539 c!44290) b!260573))

(assert (= (and d!62539 (not c!44290)) b!260574))

(assert (= (and d!62539 (not res!127363)) b!260575))

(declare-fun m!276467 () Bool)

(assert (=> d!62539 m!276467))

(declare-fun m!276469 () Bool)

(assert (=> b!260573 m!276469))

(declare-fun m!276471 () Bool)

(assert (=> b!260573 m!276471))

(assert (=> b!260573 m!276471))

(declare-fun m!276473 () Bool)

(assert (=> b!260573 m!276473))

(assert (=> b!260575 m!276471))

(assert (=> b!260575 m!276471))

(assert (=> b!260575 m!276473))

(assert (=> b!260302 d!62539))

(declare-fun d!62541 () Bool)

(declare-fun e!168876 () Bool)

(assert (=> d!62541 e!168876))

(declare-fun res!127364 () Bool)

(assert (=> d!62541 (=> (not res!127364) (not e!168876))))

(declare-fun lt!131507 () ListLongMap!3871)

(assert (=> d!62541 (= res!127364 (contains!1890 lt!131507 (_1!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))))))

(declare-fun lt!131509 () List!3846)

(assert (=> d!62541 (= lt!131507 (ListLongMap!3872 lt!131509))))

(declare-fun lt!131508 () Unit!8084)

(declare-fun lt!131506 () Unit!8084)

(assert (=> d!62541 (= lt!131508 lt!131506)))

(assert (=> d!62541 (= (getValueByKey!315 lt!131509 (_1!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62541 (= lt!131506 (lemmaContainsTupThenGetReturnValue!173 lt!131509 (_1!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62541 (= lt!131509 (insertStrictlySorted!175 (toList!1951 lt!131356) (_1!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))))))

(assert (=> d!62541 (= (+!694 lt!131356 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))) lt!131507)))

(declare-fun b!260576 () Bool)

(declare-fun res!127365 () Bool)

(assert (=> b!260576 (=> (not res!127365) (not e!168876))))

(assert (=> b!260576 (= res!127365 (= (getValueByKey!315 (toList!1951 lt!131507) (_1!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))))))))

(declare-fun b!260577 () Bool)

(assert (=> b!260577 (= e!168876 (contains!1892 (toList!1951 lt!131507) (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))))))

(assert (= (and d!62541 res!127364) b!260576))

(assert (= (and b!260576 res!127365) b!260577))

(declare-fun m!276475 () Bool)

(assert (=> d!62541 m!276475))

(declare-fun m!276477 () Bool)

(assert (=> d!62541 m!276477))

(declare-fun m!276479 () Bool)

(assert (=> d!62541 m!276479))

(declare-fun m!276481 () Bool)

(assert (=> d!62541 m!276481))

(declare-fun m!276483 () Bool)

(assert (=> b!260576 m!276483))

(declare-fun m!276485 () Bool)

(assert (=> b!260577 m!276485))

(assert (=> b!260302 d!62541))

(declare-fun d!62543 () Bool)

(declare-fun e!168877 () Bool)

(assert (=> d!62543 e!168877))

(declare-fun res!127366 () Bool)

(assert (=> d!62543 (=> (not res!127366) (not e!168877))))

(declare-fun lt!131511 () ListLongMap!3871)

(assert (=> d!62543 (= res!127366 (contains!1890 lt!131511 (_1!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))))))

(declare-fun lt!131513 () List!3846)

(assert (=> d!62543 (= lt!131511 (ListLongMap!3872 lt!131513))))

(declare-fun lt!131512 () Unit!8084)

(declare-fun lt!131510 () Unit!8084)

(assert (=> d!62543 (= lt!131512 lt!131510)))

(assert (=> d!62543 (= (getValueByKey!315 lt!131513 (_1!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))))))

(assert (=> d!62543 (= lt!131510 (lemmaContainsTupThenGetReturnValue!173 lt!131513 (_1!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))))))

(assert (=> d!62543 (= lt!131513 (insertStrictlySorted!175 (toList!1951 lt!131346) (_1!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))))))

(assert (=> d!62543 (= (+!694 lt!131346 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))) lt!131511)))

(declare-fun b!260578 () Bool)

(declare-fun res!127367 () Bool)

(assert (=> b!260578 (=> (not res!127367) (not e!168877))))

(assert (=> b!260578 (= res!127367 (= (getValueByKey!315 (toList!1951 lt!131511) (_1!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))))))))

(declare-fun b!260579 () Bool)

(assert (=> b!260579 (= e!168877 (contains!1892 (toList!1951 lt!131511) (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))))))

(assert (= (and d!62543 res!127366) b!260578))

(assert (= (and b!260578 res!127367) b!260579))

(declare-fun m!276487 () Bool)

(assert (=> d!62543 m!276487))

(declare-fun m!276489 () Bool)

(assert (=> d!62543 m!276489))

(declare-fun m!276491 () Bool)

(assert (=> d!62543 m!276491))

(declare-fun m!276493 () Bool)

(assert (=> d!62543 m!276493))

(declare-fun m!276495 () Bool)

(assert (=> b!260578 m!276495))

(declare-fun m!276497 () Bool)

(assert (=> b!260579 m!276497))

(assert (=> b!260302 d!62543))

(declare-fun d!62545 () Bool)

(assert (=> d!62545 (= (apply!258 (+!694 lt!131346 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))) lt!131353) (apply!258 lt!131346 lt!131353))))

(declare-fun lt!131514 () Unit!8084)

(assert (=> d!62545 (= lt!131514 (choose!1276 lt!131346 lt!131359 (minValue!4636 thiss!1504) lt!131353))))

(declare-fun e!168878 () Bool)

(assert (=> d!62545 e!168878))

(declare-fun res!127368 () Bool)

(assert (=> d!62545 (=> (not res!127368) (not e!168878))))

(assert (=> d!62545 (= res!127368 (contains!1890 lt!131346 lt!131353))))

(assert (=> d!62545 (= (addApplyDifferent!234 lt!131346 lt!131359 (minValue!4636 thiss!1504) lt!131353) lt!131514)))

(declare-fun b!260580 () Bool)

(assert (=> b!260580 (= e!168878 (not (= lt!131353 lt!131359)))))

(assert (= (and d!62545 res!127368) b!260580))

(declare-fun m!276499 () Bool)

(assert (=> d!62545 m!276499))

(assert (=> d!62545 m!276029))

(assert (=> d!62545 m!276043))

(assert (=> d!62545 m!276043))

(assert (=> d!62545 m!276045))

(declare-fun m!276501 () Bool)

(assert (=> d!62545 m!276501))

(assert (=> b!260302 d!62545))

(declare-fun d!62547 () Bool)

(declare-fun e!168879 () Bool)

(assert (=> d!62547 e!168879))

(declare-fun res!127369 () Bool)

(assert (=> d!62547 (=> (not res!127369) (not e!168879))))

(declare-fun lt!131516 () ListLongMap!3871)

(assert (=> d!62547 (= res!127369 (contains!1890 lt!131516 (_1!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))))))

(declare-fun lt!131518 () List!3846)

(assert (=> d!62547 (= lt!131516 (ListLongMap!3872 lt!131518))))

(declare-fun lt!131517 () Unit!8084)

(declare-fun lt!131515 () Unit!8084)

(assert (=> d!62547 (= lt!131517 lt!131515)))

(assert (=> d!62547 (= (getValueByKey!315 lt!131518 (_1!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))))))

(assert (=> d!62547 (= lt!131515 (lemmaContainsTupThenGetReturnValue!173 lt!131518 (_1!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))))))

(assert (=> d!62547 (= lt!131518 (insertStrictlySorted!175 (toList!1951 lt!131350) (_1!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))))))

(assert (=> d!62547 (= (+!694 lt!131350 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))) lt!131516)))

(declare-fun b!260581 () Bool)

(declare-fun res!127370 () Bool)

(assert (=> b!260581 (=> (not res!127370) (not e!168879))))

(assert (=> b!260581 (= res!127370 (= (getValueByKey!315 (toList!1951 lt!131516) (_1!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))))))))

(declare-fun b!260582 () Bool)

(assert (=> b!260582 (= e!168879 (contains!1892 (toList!1951 lt!131516) (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))))))

(assert (= (and d!62547 res!127369) b!260581))

(assert (= (and b!260581 res!127370) b!260582))

(declare-fun m!276503 () Bool)

(assert (=> d!62547 m!276503))

(declare-fun m!276505 () Bool)

(assert (=> d!62547 m!276505))

(declare-fun m!276507 () Bool)

(assert (=> d!62547 m!276507))

(declare-fun m!276509 () Bool)

(assert (=> d!62547 m!276509))

(declare-fun m!276511 () Bool)

(assert (=> b!260581 m!276511))

(declare-fun m!276513 () Bool)

(assert (=> b!260582 m!276513))

(assert (=> b!260302 d!62547))

(declare-fun d!62549 () Bool)

(assert (=> d!62549 (= (apply!258 (+!694 lt!131356 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))) lt!131345) (apply!258 lt!131356 lt!131345))))

(declare-fun lt!131519 () Unit!8084)

(assert (=> d!62549 (= lt!131519 (choose!1276 lt!131356 lt!131343 (zeroValue!4636 thiss!1504) lt!131345))))

(declare-fun e!168880 () Bool)

(assert (=> d!62549 e!168880))

(declare-fun res!127371 () Bool)

(assert (=> d!62549 (=> (not res!127371) (not e!168880))))

(assert (=> d!62549 (= res!127371 (contains!1890 lt!131356 lt!131345))))

(assert (=> d!62549 (= (addApplyDifferent!234 lt!131356 lt!131343 (zeroValue!4636 thiss!1504) lt!131345) lt!131519)))

(declare-fun b!260583 () Bool)

(assert (=> b!260583 (= e!168880 (not (= lt!131345 lt!131343)))))

(assert (= (and d!62549 res!127371) b!260583))

(declare-fun m!276515 () Bool)

(assert (=> d!62549 m!276515))

(assert (=> d!62549 m!276037))

(assert (=> d!62549 m!276023))

(assert (=> d!62549 m!276023))

(assert (=> d!62549 m!276027))

(declare-fun m!276517 () Bool)

(assert (=> d!62549 m!276517))

(assert (=> b!260302 d!62549))

(declare-fun d!62551 () Bool)

(assert (=> d!62551 (= (apply!258 (+!694 lt!131350 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))) lt!131342) (apply!258 lt!131350 lt!131342))))

(declare-fun lt!131520 () Unit!8084)

(assert (=> d!62551 (= lt!131520 (choose!1276 lt!131350 lt!131340 (minValue!4636 thiss!1504) lt!131342))))

(declare-fun e!168881 () Bool)

(assert (=> d!62551 e!168881))

(declare-fun res!127372 () Bool)

(assert (=> d!62551 (=> (not res!127372) (not e!168881))))

(assert (=> d!62551 (= res!127372 (contains!1890 lt!131350 lt!131342))))

(assert (=> d!62551 (= (addApplyDifferent!234 lt!131350 lt!131340 (minValue!4636 thiss!1504) lt!131342) lt!131520)))

(declare-fun b!260584 () Bool)

(assert (=> b!260584 (= e!168881 (not (= lt!131342 lt!131340)))))

(assert (= (and d!62551 res!127372) b!260584))

(declare-fun m!276519 () Bool)

(assert (=> d!62551 m!276519))

(assert (=> d!62551 m!276025))

(assert (=> d!62551 m!276039))

(assert (=> d!62551 m!276039))

(assert (=> d!62551 m!276041))

(declare-fun m!276521 () Bool)

(assert (=> d!62551 m!276521))

(assert (=> b!260302 d!62551))

(declare-fun d!62553 () Bool)

(assert (=> d!62553 (= (apply!258 (+!694 lt!131350 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504))) lt!131342) (get!3073 (getValueByKey!315 (toList!1951 (+!694 lt!131350 (tuple2!4945 lt!131340 (minValue!4636 thiss!1504)))) lt!131342)))))

(declare-fun bs!9185 () Bool)

(assert (= bs!9185 d!62553))

(declare-fun m!276523 () Bool)

(assert (=> bs!9185 m!276523))

(assert (=> bs!9185 m!276523))

(declare-fun m!276525 () Bool)

(assert (=> bs!9185 m!276525))

(assert (=> b!260302 d!62553))

(declare-fun d!62555 () Bool)

(assert (=> d!62555 (= (apply!258 lt!131350 lt!131342) (get!3073 (getValueByKey!315 (toList!1951 lt!131350) lt!131342)))))

(declare-fun bs!9186 () Bool)

(assert (= bs!9186 d!62555))

(declare-fun m!276527 () Bool)

(assert (=> bs!9186 m!276527))

(assert (=> bs!9186 m!276527))

(declare-fun m!276529 () Bool)

(assert (=> bs!9186 m!276529))

(assert (=> b!260302 d!62555))

(declare-fun d!62557 () Bool)

(assert (=> d!62557 (= (apply!258 (+!694 lt!131356 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504))) lt!131345) (get!3073 (getValueByKey!315 (toList!1951 (+!694 lt!131356 (tuple2!4945 lt!131343 (zeroValue!4636 thiss!1504)))) lt!131345)))))

(declare-fun bs!9187 () Bool)

(assert (= bs!9187 d!62557))

(declare-fun m!276531 () Bool)

(assert (=> bs!9187 m!276531))

(assert (=> bs!9187 m!276531))

(declare-fun m!276533 () Bool)

(assert (=> bs!9187 m!276533))

(assert (=> b!260302 d!62557))

(declare-fun d!62559 () Bool)

(assert (=> d!62559 (= (apply!258 (+!694 lt!131346 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504))) lt!131353) (get!3073 (getValueByKey!315 (toList!1951 (+!694 lt!131346 (tuple2!4945 lt!131359 (minValue!4636 thiss!1504)))) lt!131353)))))

(declare-fun bs!9188 () Bool)

(assert (= bs!9188 d!62559))

(declare-fun m!276535 () Bool)

(assert (=> bs!9188 m!276535))

(assert (=> bs!9188 m!276535))

(declare-fun m!276537 () Bool)

(assert (=> bs!9188 m!276537))

(assert (=> b!260302 d!62559))

(assert (=> bm!24816 d!62461))

(declare-fun d!62561 () Bool)

(declare-fun e!168896 () Bool)

(assert (=> d!62561 e!168896))

(declare-fun c!44298 () Bool)

(declare-fun lt!131525 () SeekEntryResult!1193)

(assert (=> d!62561 (= c!44298 (and ((_ is Intermediate!1193) lt!131525) (undefined!2005 lt!131525)))))

(declare-fun e!168894 () SeekEntryResult!1193)

(assert (=> d!62561 (= lt!131525 e!168894)))

(declare-fun c!44297 () Bool)

(assert (=> d!62561 (= c!44297 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!131526 () (_ BitVec 64))

(assert (=> d!62561 (= lt!131526 (select (arr!5962 (_keys!6975 thiss!1504)) (toIndex!0 key!932 (mask!11121 thiss!1504))))))

(assert (=> d!62561 (validMask!0 (mask!11121 thiss!1504))))

(assert (=> d!62561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11121 thiss!1504)) key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)) lt!131525)))

(declare-fun b!260603 () Bool)

(declare-fun e!168892 () SeekEntryResult!1193)

(assert (=> b!260603 (= e!168894 e!168892)))

(declare-fun c!44299 () Bool)

(assert (=> b!260603 (= c!44299 (or (= lt!131526 key!932) (= (bvadd lt!131526 lt!131526) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!260604 () Bool)

(assert (=> b!260604 (= e!168894 (Intermediate!1193 true (toIndex!0 key!932 (mask!11121 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!260605 () Bool)

(assert (=> b!260605 (and (bvsge (index!6944 lt!131525) #b00000000000000000000000000000000) (bvslt (index!6944 lt!131525) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun e!168893 () Bool)

(assert (=> b!260605 (= e!168893 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6944 lt!131525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260606 () Bool)

(assert (=> b!260606 (= e!168896 (bvsge (x!25131 lt!131525) #b01111111111111111111111111111110))))

(declare-fun b!260607 () Bool)

(assert (=> b!260607 (= e!168892 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!11121 thiss!1504)) #b00000000000000000000000000000000 (mask!11121 thiss!1504)) key!932 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun b!260608 () Bool)

(assert (=> b!260608 (and (bvsge (index!6944 lt!131525) #b00000000000000000000000000000000) (bvslt (index!6944 lt!131525) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun res!127380 () Bool)

(assert (=> b!260608 (= res!127380 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6944 lt!131525)) key!932))))

(assert (=> b!260608 (=> res!127380 e!168893)))

(declare-fun e!168895 () Bool)

(assert (=> b!260608 (= e!168895 e!168893)))

(declare-fun b!260609 () Bool)

(assert (=> b!260609 (= e!168896 e!168895)))

(declare-fun res!127381 () Bool)

(assert (=> b!260609 (= res!127381 (and ((_ is Intermediate!1193) lt!131525) (not (undefined!2005 lt!131525)) (bvslt (x!25131 lt!131525) #b01111111111111111111111111111110) (bvsge (x!25131 lt!131525) #b00000000000000000000000000000000) (bvsge (x!25131 lt!131525) #b00000000000000000000000000000000)))))

(assert (=> b!260609 (=> (not res!127381) (not e!168895))))

(declare-fun b!260610 () Bool)

(assert (=> b!260610 (= e!168892 (Intermediate!1193 false (toIndex!0 key!932 (mask!11121 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!260611 () Bool)

(assert (=> b!260611 (and (bvsge (index!6944 lt!131525) #b00000000000000000000000000000000) (bvslt (index!6944 lt!131525) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun res!127379 () Bool)

(assert (=> b!260611 (= res!127379 (= (select (arr!5962 (_keys!6975 thiss!1504)) (index!6944 lt!131525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260611 (=> res!127379 e!168893)))

(assert (= (and d!62561 c!44297) b!260604))

(assert (= (and d!62561 (not c!44297)) b!260603))

(assert (= (and b!260603 c!44299) b!260610))

(assert (= (and b!260603 (not c!44299)) b!260607))

(assert (= (and d!62561 c!44298) b!260606))

(assert (= (and d!62561 (not c!44298)) b!260609))

(assert (= (and b!260609 res!127381) b!260608))

(assert (= (and b!260608 (not res!127380)) b!260611))

(assert (= (and b!260611 (not res!127379)) b!260605))

(assert (=> d!62561 m!275861))

(declare-fun m!276539 () Bool)

(assert (=> d!62561 m!276539))

(assert (=> d!62561 m!275753))

(declare-fun m!276541 () Bool)

(assert (=> b!260605 m!276541))

(assert (=> b!260607 m!275861))

(declare-fun m!276543 () Bool)

(assert (=> b!260607 m!276543))

(assert (=> b!260607 m!276543))

(declare-fun m!276545 () Bool)

(assert (=> b!260607 m!276545))

(assert (=> b!260611 m!276541))

(assert (=> b!260608 m!276541))

(assert (=> d!62369 d!62561))

(declare-fun d!62563 () Bool)

(declare-fun lt!131532 () (_ BitVec 32))

(declare-fun lt!131531 () (_ BitVec 32))

(assert (=> d!62563 (= lt!131532 (bvmul (bvxor lt!131531 (bvlshr lt!131531 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!62563 (= lt!131531 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!62563 (and (bvsge (mask!11121 thiss!1504) #b00000000000000000000000000000000) (let ((res!127382 (let ((h!4510 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!25150 (bvmul (bvxor h!4510 (bvlshr h!4510 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!25150 (bvlshr x!25150 #b00000000000000000000000000001101)) (mask!11121 thiss!1504)))))) (and (bvslt res!127382 (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!127382 #b00000000000000000000000000000000))))))

(assert (=> d!62563 (= (toIndex!0 key!932 (mask!11121 thiss!1504)) (bvand (bvxor lt!131532 (bvlshr lt!131532 #b00000000000000000000000000001101)) (mask!11121 thiss!1504)))))

(assert (=> d!62369 d!62563))

(assert (=> d!62369 d!62383))

(declare-fun d!62565 () Bool)

(declare-fun e!168898 () Bool)

(assert (=> d!62565 e!168898))

(declare-fun res!127383 () Bool)

(assert (=> d!62565 (=> res!127383 e!168898)))

(declare-fun lt!131535 () Bool)

(assert (=> d!62565 (= res!127383 (not lt!131535))))

(declare-fun lt!131534 () Bool)

(assert (=> d!62565 (= lt!131535 lt!131534)))

(declare-fun lt!131533 () Unit!8084)

(declare-fun e!168897 () Unit!8084)

(assert (=> d!62565 (= lt!131533 e!168897)))

(declare-fun c!44300 () Bool)

(assert (=> d!62565 (= c!44300 lt!131534)))

(assert (=> d!62565 (= lt!131534 (containsKey!307 (toList!1951 lt!131285) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62565 (= (contains!1890 lt!131285 #b1000000000000000000000000000000000000000000000000000000000000000) lt!131535)))

(declare-fun b!260612 () Bool)

(declare-fun lt!131536 () Unit!8084)

(assert (=> b!260612 (= e!168897 lt!131536)))

(assert (=> b!260612 (= lt!131536 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131285) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260612 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131285) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260613 () Bool)

(declare-fun Unit!8100 () Unit!8084)

(assert (=> b!260613 (= e!168897 Unit!8100)))

(declare-fun b!260614 () Bool)

(assert (=> b!260614 (= e!168898 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131285) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62565 c!44300) b!260612))

(assert (= (and d!62565 (not c!44300)) b!260613))

(assert (= (and d!62565 (not res!127383)) b!260614))

(declare-fun m!276547 () Bool)

(assert (=> d!62565 m!276547))

(declare-fun m!276549 () Bool)

(assert (=> b!260612 m!276549))

(assert (=> b!260612 m!276427))

(assert (=> b!260612 m!276427))

(declare-fun m!276551 () Bool)

(assert (=> b!260612 m!276551))

(assert (=> b!260614 m!276427))

(assert (=> b!260614 m!276427))

(assert (=> b!260614 m!276551))

(assert (=> bm!24817 d!62565))

(declare-fun d!62567 () Bool)

(declare-fun lt!131539 () Bool)

(declare-fun content!172 (List!3846) (InoxSet tuple2!4944))

(assert (=> d!62567 (= lt!131539 (select (content!172 (toList!1951 lt!131314)) (tuple2!4945 key!932 v!346)))))

(declare-fun e!168903 () Bool)

(assert (=> d!62567 (= lt!131539 e!168903)))

(declare-fun res!127388 () Bool)

(assert (=> d!62567 (=> (not res!127388) (not e!168903))))

(assert (=> d!62567 (= res!127388 ((_ is Cons!3842) (toList!1951 lt!131314)))))

(assert (=> d!62567 (= (contains!1892 (toList!1951 lt!131314) (tuple2!4945 key!932 v!346)) lt!131539)))

(declare-fun b!260619 () Bool)

(declare-fun e!168904 () Bool)

(assert (=> b!260619 (= e!168903 e!168904)))

(declare-fun res!127389 () Bool)

(assert (=> b!260619 (=> res!127389 e!168904)))

(assert (=> b!260619 (= res!127389 (= (h!4506 (toList!1951 lt!131314)) (tuple2!4945 key!932 v!346)))))

(declare-fun b!260620 () Bool)

(assert (=> b!260620 (= e!168904 (contains!1892 (t!8923 (toList!1951 lt!131314)) (tuple2!4945 key!932 v!346)))))

(assert (= (and d!62567 res!127388) b!260619))

(assert (= (and b!260619 (not res!127389)) b!260620))

(declare-fun m!276553 () Bool)

(assert (=> d!62567 m!276553))

(declare-fun m!276555 () Bool)

(assert (=> d!62567 m!276555))

(declare-fun m!276557 () Bool)

(assert (=> b!260620 m!276557))

(assert (=> b!260251 d!62567))

(assert (=> b!260152 d!62471))

(assert (=> d!62411 d!62383))

(declare-fun b!260629 () Bool)

(declare-fun res!127398 () Bool)

(declare-fun e!168907 () Bool)

(assert (=> b!260629 (=> (not res!127398) (not e!168907))))

(assert (=> b!260629 (= res!127398 (and (= (size!6310 (_values!4778 thiss!1504)) (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001)) (= (size!6311 (_keys!6975 thiss!1504)) (size!6310 (_values!4778 thiss!1504))) (bvsge (_size!1966 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1966 thiss!1504) (bvadd (mask!11121 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!260632 () Bool)

(assert (=> b!260632 (= e!168907 (and (bvsge (extraKeys!4532 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4532 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1966 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!260630 () Bool)

(declare-fun res!127399 () Bool)

(assert (=> b!260630 (=> (not res!127399) (not e!168907))))

(declare-fun size!6314 (LongMapFixedSize!3834) (_ BitVec 32))

(assert (=> b!260630 (= res!127399 (bvsge (size!6314 thiss!1504) (_size!1966 thiss!1504)))))

(declare-fun d!62569 () Bool)

(declare-fun res!127401 () Bool)

(assert (=> d!62569 (=> (not res!127401) (not e!168907))))

(assert (=> d!62569 (= res!127401 (validMask!0 (mask!11121 thiss!1504)))))

(assert (=> d!62569 (= (simpleValid!280 thiss!1504) e!168907)))

(declare-fun b!260631 () Bool)

(declare-fun res!127400 () Bool)

(assert (=> b!260631 (=> (not res!127400) (not e!168907))))

(assert (=> b!260631 (= res!127400 (= (size!6314 thiss!1504) (bvadd (_size!1966 thiss!1504) (bvsdiv (bvadd (extraKeys!4532 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!62569 res!127401) b!260629))

(assert (= (and b!260629 res!127398) b!260630))

(assert (= (and b!260630 res!127399) b!260631))

(assert (= (and b!260631 res!127400) b!260632))

(declare-fun m!276559 () Bool)

(assert (=> b!260630 m!276559))

(assert (=> d!62569 m!275753))

(assert (=> b!260631 m!276559))

(assert (=> d!62415 d!62569))

(declare-fun b!260633 () Bool)

(declare-fun e!168909 () (_ BitVec 32))

(declare-fun call!24860 () (_ BitVec 32))

(assert (=> b!260633 (= e!168909 (bvadd #b00000000000000000000000000000001 call!24860))))

(declare-fun bm!24857 () Bool)

(assert (=> bm!24857 (= call!24860 (arrayCountValidKeys!0 lt!131155 (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(declare-fun b!260634 () Bool)

(declare-fun e!168908 () (_ BitVec 32))

(assert (=> b!260634 (= e!168908 #b00000000000000000000000000000000)))

(declare-fun d!62571 () Bool)

(declare-fun lt!131540 () (_ BitVec 32))

(assert (=> d!62571 (and (bvsge lt!131540 #b00000000000000000000000000000000) (bvsle lt!131540 (bvsub (size!6311 lt!131155) index!297)))))

(assert (=> d!62571 (= lt!131540 e!168908)))

(declare-fun c!44301 () Bool)

(assert (=> d!62571 (= c!44301 (bvsge index!297 (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (=> d!62571 (and (bvsle index!297 (bvadd index!297 #b00000000000000000000000000000001)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd index!297 #b00000000000000000000000000000001) (size!6311 lt!131155)))))

(assert (=> d!62571 (= (arrayCountValidKeys!0 lt!131155 index!297 (bvadd index!297 #b00000000000000000000000000000001)) lt!131540)))

(declare-fun b!260635 () Bool)

(assert (=> b!260635 (= e!168909 call!24860)))

(declare-fun b!260636 () Bool)

(assert (=> b!260636 (= e!168908 e!168909)))

(declare-fun c!44302 () Bool)

(assert (=> b!260636 (= c!44302 (validKeyInArray!0 (select (arr!5962 lt!131155) index!297)))))

(assert (= (and d!62571 c!44301) b!260634))

(assert (= (and d!62571 (not c!44301)) b!260636))

(assert (= (and b!260636 c!44302) b!260633))

(assert (= (and b!260636 (not c!44302)) b!260635))

(assert (= (or b!260633 b!260635) bm!24857))

(declare-fun m!276561 () Bool)

(assert (=> bm!24857 m!276561))

(assert (=> b!260636 m!275879))

(assert (=> b!260636 m!275879))

(assert (=> b!260636 m!275881))

(assert (=> d!62373 d!62571))

(declare-fun d!62573 () Bool)

(assert (=> d!62573 (= (arrayCountValidKeys!0 lt!131155 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(assert (=> d!62573 true))

(declare-fun _$85!27 () Unit!8084)

(assert (=> d!62573 (= (choose!2 lt!131155 index!297) _$85!27)))

(declare-fun bs!9189 () Bool)

(assert (= bs!9189 d!62573))

(assert (=> bs!9189 m!275875))

(assert (=> d!62373 d!62573))

(declare-fun d!62575 () Bool)

(assert (=> d!62575 (= (validKeyInArray!0 (select (arr!5962 lt!131155) index!297)) (and (not (= (select (arr!5962 lt!131155) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5962 lt!131155) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260127 d!62575))

(declare-fun d!62577 () Bool)

(declare-fun e!168911 () Bool)

(assert (=> d!62577 e!168911))

(declare-fun res!127402 () Bool)

(assert (=> d!62577 (=> res!127402 e!168911)))

(declare-fun lt!131543 () Bool)

(assert (=> d!62577 (= res!127402 (not lt!131543))))

(declare-fun lt!131542 () Bool)

(assert (=> d!62577 (= lt!131543 lt!131542)))

(declare-fun lt!131541 () Unit!8084)

(declare-fun e!168910 () Unit!8084)

(assert (=> d!62577 (= lt!131541 e!168910)))

(declare-fun c!44303 () Bool)

(assert (=> d!62577 (= c!44303 lt!131542)))

(assert (=> d!62577 (= lt!131542 (containsKey!307 (toList!1951 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504))) key!932))))

(assert (=> d!62577 (= (contains!1890 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) key!932) lt!131543)))

(declare-fun b!260637 () Bool)

(declare-fun lt!131544 () Unit!8084)

(assert (=> b!260637 (= e!168910 lt!131544)))

(assert (=> b!260637 (= lt!131544 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504))) key!932))))

(assert (=> b!260637 (isDefined!257 (getValueByKey!315 (toList!1951 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504))) key!932))))

(declare-fun b!260638 () Bool)

(declare-fun Unit!8101 () Unit!8084)

(assert (=> b!260638 (= e!168910 Unit!8101)))

(declare-fun b!260639 () Bool)

(assert (=> b!260639 (= e!168911 (isDefined!257 (getValueByKey!315 (toList!1951 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504))) key!932)))))

(assert (= (and d!62577 c!44303) b!260637))

(assert (= (and d!62577 (not c!44303)) b!260638))

(assert (= (and d!62577 (not res!127402)) b!260639))

(declare-fun m!276563 () Bool)

(assert (=> d!62577 m!276563))

(declare-fun m!276565 () Bool)

(assert (=> b!260637 m!276565))

(declare-fun m!276567 () Bool)

(assert (=> b!260637 m!276567))

(assert (=> b!260637 m!276567))

(declare-fun m!276569 () Bool)

(assert (=> b!260637 m!276569))

(assert (=> b!260639 m!276567))

(assert (=> b!260639 m!276567))

(assert (=> b!260639 m!276569))

(assert (=> d!62371 d!62577))

(assert (=> d!62371 d!62411))

(declare-fun d!62579 () Bool)

(assert (=> d!62579 (contains!1890 (getCurrentListMap!1474 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) key!932)))

(assert (=> d!62579 true))

(declare-fun _$17!89 () Unit!8084)

(assert (=> d!62579 (= (choose!1273 (_keys!6975 thiss!1504) (_values!4778 thiss!1504) (mask!11121 thiss!1504) (extraKeys!4532 thiss!1504) (zeroValue!4636 thiss!1504) (minValue!4636 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4795 thiss!1504)) _$17!89)))

(declare-fun bs!9190 () Bool)

(assert (= bs!9190 d!62579))

(assert (=> bs!9190 m!275745))

(assert (=> bs!9190 m!275745))

(assert (=> bs!9190 m!275871))

(assert (=> d!62371 d!62579))

(assert (=> d!62371 d!62383))

(declare-fun b!260640 () Bool)

(declare-fun e!168913 () Bool)

(declare-fun call!24861 () Bool)

(assert (=> b!260640 (= e!168913 call!24861)))

(declare-fun d!62581 () Bool)

(declare-fun res!127403 () Bool)

(declare-fun e!168912 () Bool)

(assert (=> d!62581 (=> res!127403 e!168912)))

(assert (=> d!62581 (= res!127403 (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6975 thiss!1504) (mask!11121 thiss!1504)) e!168912)))

(declare-fun bm!24858 () Bool)

(assert (=> bm!24858 (= call!24861 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6975 thiss!1504) (mask!11121 thiss!1504)))))

(declare-fun b!260641 () Bool)

(declare-fun e!168914 () Bool)

(assert (=> b!260641 (= e!168914 call!24861)))

(declare-fun b!260642 () Bool)

(assert (=> b!260642 (= e!168913 e!168914)))

(declare-fun lt!131545 () (_ BitVec 64))

(assert (=> b!260642 (= lt!131545 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!131547 () Unit!8084)

(assert (=> b!260642 (= lt!131547 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6975 thiss!1504) lt!131545 #b00000000000000000000000000000000))))

(assert (=> b!260642 (arrayContainsKey!0 (_keys!6975 thiss!1504) lt!131545 #b00000000000000000000000000000000)))

(declare-fun lt!131546 () Unit!8084)

(assert (=> b!260642 (= lt!131546 lt!131547)))

(declare-fun res!127404 () Bool)

(assert (=> b!260642 (= res!127404 (= (seekEntryOrOpen!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000) (_keys!6975 thiss!1504) (mask!11121 thiss!1504)) (Found!1193 #b00000000000000000000000000000000)))))

(assert (=> b!260642 (=> (not res!127404) (not e!168914))))

(declare-fun b!260643 () Bool)

(assert (=> b!260643 (= e!168912 e!168913)))

(declare-fun c!44304 () Bool)

(assert (=> b!260643 (= c!44304 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!62581 (not res!127403)) b!260643))

(assert (= (and b!260643 c!44304) b!260642))

(assert (= (and b!260643 (not c!44304)) b!260640))

(assert (= (and b!260642 res!127404) b!260641))

(assert (= (or b!260641 b!260640) bm!24858))

(declare-fun m!276571 () Bool)

(assert (=> bm!24858 m!276571))

(assert (=> b!260642 m!275899))

(declare-fun m!276573 () Bool)

(assert (=> b!260642 m!276573))

(declare-fun m!276575 () Bool)

(assert (=> b!260642 m!276575))

(assert (=> b!260642 m!275899))

(declare-fun m!276577 () Bool)

(assert (=> b!260642 m!276577))

(assert (=> b!260643 m!275899))

(assert (=> b!260643 m!275899))

(assert (=> b!260643 m!275901))

(assert (=> b!260337 d!62581))

(declare-fun d!62583 () Bool)

(declare-fun e!168915 () Bool)

(assert (=> d!62583 e!168915))

(declare-fun res!127405 () Bool)

(assert (=> d!62583 (=> (not res!127405) (not e!168915))))

(declare-fun lt!131549 () ListLongMap!3871)

(assert (=> d!62583 (= res!127405 (contains!1890 lt!131549 (_1!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(declare-fun lt!131551 () List!3846)

(assert (=> d!62583 (= lt!131549 (ListLongMap!3872 lt!131551))))

(declare-fun lt!131550 () Unit!8084)

(declare-fun lt!131548 () Unit!8084)

(assert (=> d!62583 (= lt!131550 lt!131548)))

(assert (=> d!62583 (= (getValueByKey!315 lt!131551 (_1!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))) (Some!320 (_2!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(assert (=> d!62583 (= lt!131548 (lemmaContainsTupThenGetReturnValue!173 lt!131551 (_1!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (_2!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(assert (=> d!62583 (= lt!131551 (insertStrictlySorted!175 (toList!1951 (ite c!44206 call!24818 (ite c!44205 call!24817 call!24820))) (_1!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (_2!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(assert (=> d!62583 (= (+!694 (ite c!44206 call!24818 (ite c!44205 call!24817 call!24820)) (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) lt!131549)))

(declare-fun b!260644 () Bool)

(declare-fun res!127406 () Bool)

(assert (=> b!260644 (=> (not res!127406) (not e!168915))))

(assert (=> b!260644 (= res!127406 (= (getValueByKey!315 (toList!1951 lt!131549) (_1!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))) (Some!320 (_2!2482 (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))))

(declare-fun b!260645 () Bool)

(assert (=> b!260645 (= e!168915 (contains!1892 (toList!1951 lt!131549) (ite (or c!44206 c!44205) (tuple2!4945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4636 thiss!1504)) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (= (and d!62583 res!127405) b!260644))

(assert (= (and b!260644 res!127406) b!260645))

(declare-fun m!276579 () Bool)

(assert (=> d!62583 m!276579))

(declare-fun m!276581 () Bool)

(assert (=> d!62583 m!276581))

(declare-fun m!276583 () Bool)

(assert (=> d!62583 m!276583))

(declare-fun m!276585 () Bool)

(assert (=> d!62583 m!276585))

(declare-fun m!276587 () Bool)

(assert (=> b!260644 m!276587))

(declare-fun m!276589 () Bool)

(assert (=> b!260645 m!276589))

(assert (=> bm!24818 d!62583))

(declare-fun b!260646 () Bool)

(declare-fun e!168917 () Bool)

(assert (=> b!260646 (= e!168917 (contains!1891 Nil!3844 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!260647 () Bool)

(declare-fun e!168918 () Bool)

(declare-fun call!24862 () Bool)

(assert (=> b!260647 (= e!168918 call!24862)))

(declare-fun bm!24859 () Bool)

(declare-fun c!44305 () Bool)

(assert (=> bm!24859 (= call!24862 (arrayNoDuplicates!0 (_keys!6975 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44305 (Cons!3843 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000) Nil!3844) Nil!3844)))))

(declare-fun b!260648 () Bool)

(assert (=> b!260648 (= e!168918 call!24862)))

(declare-fun b!260649 () Bool)

(declare-fun e!168919 () Bool)

(declare-fun e!168916 () Bool)

(assert (=> b!260649 (= e!168919 e!168916)))

(declare-fun res!127409 () Bool)

(assert (=> b!260649 (=> (not res!127409) (not e!168916))))

(assert (=> b!260649 (= res!127409 (not e!168917))))

(declare-fun res!127408 () Bool)

(assert (=> b!260649 (=> (not res!127408) (not e!168917))))

(assert (=> b!260649 (= res!127408 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!260650 () Bool)

(assert (=> b!260650 (= e!168916 e!168918)))

(assert (=> b!260650 (= c!44305 (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!62585 () Bool)

(declare-fun res!127407 () Bool)

(assert (=> d!62585 (=> res!127407 e!168919)))

(assert (=> d!62585 (= res!127407 (bvsge #b00000000000000000000000000000000 (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62585 (= (arrayNoDuplicates!0 (_keys!6975 thiss!1504) #b00000000000000000000000000000000 Nil!3844) e!168919)))

(assert (= (and d!62585 (not res!127407)) b!260649))

(assert (= (and b!260649 res!127408) b!260646))

(assert (= (and b!260649 res!127409) b!260650))

(assert (= (and b!260650 c!44305) b!260647))

(assert (= (and b!260650 (not c!44305)) b!260648))

(assert (= (or b!260647 b!260648) bm!24859))

(assert (=> b!260646 m!275899))

(assert (=> b!260646 m!275899))

(declare-fun m!276591 () Bool)

(assert (=> b!260646 m!276591))

(assert (=> bm!24859 m!275899))

(declare-fun m!276593 () Bool)

(assert (=> bm!24859 m!276593))

(assert (=> b!260649 m!275899))

(assert (=> b!260649 m!275899))

(assert (=> b!260649 m!275901))

(assert (=> b!260650 m!275899))

(assert (=> b!260650 m!275899))

(assert (=> b!260650 m!275901))

(assert (=> b!260338 d!62585))

(declare-fun d!62587 () Bool)

(declare-fun e!168921 () Bool)

(assert (=> d!62587 e!168921))

(declare-fun res!127410 () Bool)

(assert (=> d!62587 (=> res!127410 e!168921)))

(declare-fun lt!131554 () Bool)

(assert (=> d!62587 (= res!127410 (not lt!131554))))

(declare-fun lt!131553 () Bool)

(assert (=> d!62587 (= lt!131554 lt!131553)))

(declare-fun lt!131552 () Unit!8084)

(declare-fun e!168920 () Unit!8084)

(assert (=> d!62587 (= lt!131552 e!168920)))

(declare-fun c!44306 () Bool)

(assert (=> d!62587 (= c!44306 lt!131553)))

(assert (=> d!62587 (= lt!131553 (containsKey!307 (toList!1951 lt!131341) (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!62587 (= (contains!1890 lt!131341 (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)) lt!131554)))

(declare-fun b!260651 () Bool)

(declare-fun lt!131555 () Unit!8084)

(assert (=> b!260651 (= e!168920 lt!131555)))

(assert (=> b!260651 (= lt!131555 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131341) (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!260651 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131341) (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!260652 () Bool)

(declare-fun Unit!8102 () Unit!8084)

(assert (=> b!260652 (= e!168920 Unit!8102)))

(declare-fun b!260653 () Bool)

(assert (=> b!260653 (= e!168921 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131341) (select (arr!5962 (_keys!6975 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!62587 c!44306) b!260651))

(assert (= (and d!62587 (not c!44306)) b!260652))

(assert (= (and d!62587 (not res!127410)) b!260653))

(assert (=> d!62587 m!275899))

(declare-fun m!276595 () Bool)

(assert (=> d!62587 m!276595))

(assert (=> b!260651 m!275899))

(declare-fun m!276597 () Bool)

(assert (=> b!260651 m!276597))

(assert (=> b!260651 m!275899))

(assert (=> b!260651 m!276419))

(assert (=> b!260651 m!276419))

(declare-fun m!276599 () Bool)

(assert (=> b!260651 m!276599))

(assert (=> b!260653 m!275899))

(assert (=> b!260653 m!276419))

(assert (=> b!260653 m!276419))

(assert (=> b!260653 m!276599))

(assert (=> b!260293 d!62587))

(declare-fun d!62589 () Bool)

(assert (=> d!62589 (= (apply!258 lt!131285 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3073 (getValueByKey!315 (toList!1951 lt!131285) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9191 () Bool)

(assert (= bs!9191 d!62589))

(declare-fun m!276601 () Bool)

(assert (=> bs!9191 m!276601))

(assert (=> bs!9191 m!276601))

(declare-fun m!276603 () Bool)

(assert (=> bs!9191 m!276603))

(assert (=> b!260230 d!62589))

(declare-fun d!62591 () Bool)

(assert (=> d!62591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12597 (store (arr!5962 (_keys!6975 thiss!1504)) index!297 key!932) (size!6311 (_keys!6975 thiss!1504))) (mask!11121 thiss!1504))))

(assert (=> d!62591 true))

(declare-fun _$56!39 () Unit!8084)

(assert (=> d!62591 (= (choose!102 key!932 (_keys!6975 thiss!1504) index!297 (mask!11121 thiss!1504)) _$56!39)))

(declare-fun bs!9192 () Bool)

(assert (= bs!9192 d!62591))

(assert (=> bs!9192 m!275783))

(assert (=> bs!9192 m!276003))

(assert (=> d!62403 d!62591))

(assert (=> d!62403 d!62383))

(declare-fun d!62593 () Bool)

(declare-fun e!168922 () Bool)

(assert (=> d!62593 e!168922))

(declare-fun res!127411 () Bool)

(assert (=> d!62593 (=> (not res!127411) (not e!168922))))

(declare-fun lt!131557 () ListLongMap!3871)

(assert (=> d!62593 (= res!127411 (contains!1890 lt!131557 (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(declare-fun lt!131559 () List!3846)

(assert (=> d!62593 (= lt!131557 (ListLongMap!3872 lt!131559))))

(declare-fun lt!131558 () Unit!8084)

(declare-fun lt!131556 () Unit!8084)

(assert (=> d!62593 (= lt!131558 lt!131556)))

(assert (=> d!62593 (= (getValueByKey!315 lt!131559 (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (=> d!62593 (= lt!131556 (lemmaContainsTupThenGetReturnValue!173 lt!131559 (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (=> d!62593 (= lt!131559 (insertStrictlySorted!175 (toList!1951 call!24816) (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))) (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))))))

(assert (=> d!62593 (= (+!694 call!24816 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))) lt!131557)))

(declare-fun b!260654 () Bool)

(declare-fun res!127412 () Bool)

(assert (=> b!260654 (=> (not res!127412) (not e!168922))))

(assert (=> b!260654 (= res!127412 (= (getValueByKey!315 (toList!1951 lt!131557) (_1!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504)))) (Some!320 (_2!2482 (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))))

(declare-fun b!260655 () Bool)

(assert (=> b!260655 (= e!168922 (contains!1892 (toList!1951 lt!131557) (tuple2!4945 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4636 thiss!1504))))))

(assert (= (and d!62593 res!127411) b!260654))

(assert (= (and b!260654 res!127412) b!260655))

(declare-fun m!276605 () Bool)

(assert (=> d!62593 m!276605))

(declare-fun m!276607 () Bool)

(assert (=> d!62593 m!276607))

(declare-fun m!276609 () Bool)

(assert (=> d!62593 m!276609))

(declare-fun m!276611 () Bool)

(assert (=> d!62593 m!276611))

(declare-fun m!276613 () Bool)

(assert (=> b!260654 m!276613))

(declare-fun m!276615 () Bool)

(assert (=> b!260655 m!276615))

(assert (=> b!260232 d!62593))

(declare-fun d!62595 () Bool)

(assert (=> d!62595 (= (validKeyInArray!0 (select (arr!5962 (_keys!6975 thiss!1504)) index!297)) (and (not (= (select (arr!5962 (_keys!6975 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5962 (_keys!6975 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!260263 d!62595))

(declare-fun d!62597 () Bool)

(assert (=> d!62597 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131148) key!932))))

(declare-fun lt!131562 () Unit!8084)

(declare-fun choose!1278 (List!3846 (_ BitVec 64)) Unit!8084)

(assert (=> d!62597 (= lt!131562 (choose!1278 (toList!1951 lt!131148) key!932))))

(declare-fun e!168925 () Bool)

(assert (=> d!62597 e!168925))

(declare-fun res!127415 () Bool)

(assert (=> d!62597 (=> (not res!127415) (not e!168925))))

(declare-fun isStrictlySorted!370 (List!3846) Bool)

(assert (=> d!62597 (= res!127415 (isStrictlySorted!370 (toList!1951 lt!131148)))))

(assert (=> d!62597 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131148) key!932) lt!131562)))

(declare-fun b!260658 () Bool)

(assert (=> b!260658 (= e!168925 (containsKey!307 (toList!1951 lt!131148) key!932))))

(assert (= (and d!62597 res!127415) b!260658))

(assert (=> d!62597 m!276009))

(assert (=> d!62597 m!276009))

(assert (=> d!62597 m!276011))

(declare-fun m!276617 () Bool)

(assert (=> d!62597 m!276617))

(declare-fun m!276619 () Bool)

(assert (=> d!62597 m!276619))

(assert (=> b!260658 m!276005))

(assert (=> b!260282 d!62597))

(declare-fun d!62599 () Bool)

(declare-fun isEmpty!542 (Option!321) Bool)

(assert (=> d!62599 (= (isDefined!257 (getValueByKey!315 (toList!1951 lt!131148) key!932)) (not (isEmpty!542 (getValueByKey!315 (toList!1951 lt!131148) key!932))))))

(declare-fun bs!9193 () Bool)

(assert (= bs!9193 d!62599))

(assert (=> bs!9193 m!276009))

(declare-fun m!276621 () Bool)

(assert (=> bs!9193 m!276621))

(assert (=> b!260282 d!62599))

(declare-fun b!260660 () Bool)

(declare-fun e!168926 () Option!321)

(declare-fun e!168927 () Option!321)

(assert (=> b!260660 (= e!168926 e!168927)))

(declare-fun c!44308 () Bool)

(assert (=> b!260660 (= c!44308 (and ((_ is Cons!3842) (toList!1951 lt!131148)) (not (= (_1!2482 (h!4506 (toList!1951 lt!131148))) key!932))))))

(declare-fun b!260662 () Bool)

(assert (=> b!260662 (= e!168927 None!319)))

(declare-fun b!260659 () Bool)

(assert (=> b!260659 (= e!168926 (Some!320 (_2!2482 (h!4506 (toList!1951 lt!131148)))))))

(declare-fun d!62601 () Bool)

(declare-fun c!44307 () Bool)

(assert (=> d!62601 (= c!44307 (and ((_ is Cons!3842) (toList!1951 lt!131148)) (= (_1!2482 (h!4506 (toList!1951 lt!131148))) key!932)))))

(assert (=> d!62601 (= (getValueByKey!315 (toList!1951 lt!131148) key!932) e!168926)))

(declare-fun b!260661 () Bool)

(assert (=> b!260661 (= e!168927 (getValueByKey!315 (t!8923 (toList!1951 lt!131148)) key!932))))

(assert (= (and d!62601 c!44307) b!260659))

(assert (= (and d!62601 (not c!44307)) b!260660))

(assert (= (and b!260660 c!44308) b!260661))

(assert (= (and b!260660 (not c!44308)) b!260662))

(declare-fun m!276623 () Bool)

(assert (=> b!260661 m!276623))

(assert (=> b!260282 d!62601))

(declare-fun d!62603 () Bool)

(declare-fun e!168929 () Bool)

(assert (=> d!62603 e!168929))

(declare-fun res!127416 () Bool)

(assert (=> d!62603 (=> res!127416 e!168929)))

(declare-fun lt!131565 () Bool)

(assert (=> d!62603 (= res!127416 (not lt!131565))))

(declare-fun lt!131564 () Bool)

(assert (=> d!62603 (= lt!131565 lt!131564)))

(declare-fun lt!131563 () Unit!8084)

(declare-fun e!168928 () Unit!8084)

(assert (=> d!62603 (= lt!131563 e!168928)))

(declare-fun c!44309 () Bool)

(assert (=> d!62603 (= c!44309 lt!131564)))

(assert (=> d!62603 (= lt!131564 (containsKey!307 (toList!1951 lt!131285) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62603 (= (contains!1890 lt!131285 #b0000000000000000000000000000000000000000000000000000000000000000) lt!131565)))

(declare-fun b!260663 () Bool)

(declare-fun lt!131566 () Unit!8084)

(assert (=> b!260663 (= e!168928 lt!131566)))

(assert (=> b!260663 (= lt!131566 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131285) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!260663 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131285) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!260664 () Bool)

(declare-fun Unit!8103 () Unit!8084)

(assert (=> b!260664 (= e!168928 Unit!8103)))

(declare-fun b!260665 () Bool)

(assert (=> b!260665 (= e!168929 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131285) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62603 c!44309) b!260663))

(assert (= (and d!62603 (not c!44309)) b!260664))

(assert (= (and d!62603 (not res!127416)) b!260665))

(declare-fun m!276625 () Bool)

(assert (=> d!62603 m!276625))

(declare-fun m!276627 () Bool)

(assert (=> b!260663 m!276627))

(assert (=> b!260663 m!276601))

(assert (=> b!260663 m!276601))

(declare-fun m!276629 () Bool)

(assert (=> b!260663 m!276629))

(assert (=> b!260665 m!276601))

(assert (=> b!260665 m!276601))

(assert (=> b!260665 m!276629))

(assert (=> bm!24814 d!62603))

(assert (=> b!260297 d!62471))

(declare-fun b!260666 () Bool)

(declare-fun e!168931 () (_ BitVec 32))

(declare-fun call!24863 () (_ BitVec 32))

(assert (=> b!260666 (= e!168931 (bvadd #b00000000000000000000000000000001 call!24863))))

(declare-fun bm!24860 () Bool)

(assert (=> bm!24860 (= call!24863 (arrayCountValidKeys!0 lt!131155 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(declare-fun b!260667 () Bool)

(declare-fun e!168930 () (_ BitVec 32))

(assert (=> b!260667 (= e!168930 #b00000000000000000000000000000000)))

(declare-fun d!62605 () Bool)

(declare-fun lt!131567 () (_ BitVec 32))

(assert (=> d!62605 (and (bvsge lt!131567 #b00000000000000000000000000000000) (bvsle lt!131567 (bvsub (size!6311 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!62605 (= lt!131567 e!168930)))

(declare-fun c!44310 () Bool)

(assert (=> d!62605 (= c!44310 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))))))

(assert (=> d!62605 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6311 (_keys!6975 thiss!1504)) (size!6311 lt!131155)))))

(assert (=> d!62605 (= (arrayCountValidKeys!0 lt!131155 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6311 (_keys!6975 thiss!1504))) lt!131567)))

(declare-fun b!260668 () Bool)

(assert (=> b!260668 (= e!168931 call!24863)))

(declare-fun b!260669 () Bool)

(assert (=> b!260669 (= e!168930 e!168931)))

(declare-fun c!44311 () Bool)

(assert (=> b!260669 (= c!44311 (validKeyInArray!0 (select (arr!5962 lt!131155) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!62605 c!44310) b!260667))

(assert (= (and d!62605 (not c!44310)) b!260669))

(assert (= (and b!260669 c!44311) b!260666))

(assert (= (and b!260669 (not c!44311)) b!260668))

(assert (= (or b!260666 b!260668) bm!24860))

(declare-fun m!276631 () Bool)

(assert (=> bm!24860 m!276631))

(assert (=> b!260669 m!276253))

(assert (=> b!260669 m!276253))

(assert (=> b!260669 m!276259))

(assert (=> bm!24819 d!62605))

(declare-fun d!62607 () Bool)

(declare-fun e!168933 () Bool)

(assert (=> d!62607 e!168933))

(declare-fun res!127417 () Bool)

(assert (=> d!62607 (=> res!127417 e!168933)))

(declare-fun lt!131570 () Bool)

(assert (=> d!62607 (= res!127417 (not lt!131570))))

(declare-fun lt!131569 () Bool)

(assert (=> d!62607 (= lt!131570 lt!131569)))

(declare-fun lt!131568 () Unit!8084)

(declare-fun e!168932 () Unit!8084)

(assert (=> d!62607 (= lt!131568 e!168932)))

(declare-fun c!44312 () Bool)

(assert (=> d!62607 (= c!44312 lt!131569)))

(assert (=> d!62607 (= lt!131569 (containsKey!307 (toList!1951 lt!131314) (_1!2482 (tuple2!4945 key!932 v!346))))))

(assert (=> d!62607 (= (contains!1890 lt!131314 (_1!2482 (tuple2!4945 key!932 v!346))) lt!131570)))

(declare-fun b!260670 () Bool)

(declare-fun lt!131571 () Unit!8084)

(assert (=> b!260670 (= e!168932 lt!131571)))

(assert (=> b!260670 (= lt!131571 (lemmaContainsKeyImpliesGetValueByKeyDefined!256 (toList!1951 lt!131314) (_1!2482 (tuple2!4945 key!932 v!346))))))

(assert (=> b!260670 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131314) (_1!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun b!260671 () Bool)

(declare-fun Unit!8104 () Unit!8084)

(assert (=> b!260671 (= e!168932 Unit!8104)))

(declare-fun b!260672 () Bool)

(assert (=> b!260672 (= e!168933 (isDefined!257 (getValueByKey!315 (toList!1951 lt!131314) (_1!2482 (tuple2!4945 key!932 v!346)))))))

(assert (= (and d!62607 c!44312) b!260670))

(assert (= (and d!62607 (not c!44312)) b!260671))

(assert (= (and d!62607 (not res!127417)) b!260672))

(declare-fun m!276633 () Bool)

(assert (=> d!62607 m!276633))

(declare-fun m!276635 () Bool)

(assert (=> b!260670 m!276635))

(assert (=> b!260670 m!275979))

(assert (=> b!260670 m!275979))

(declare-fun m!276637 () Bool)

(assert (=> b!260670 m!276637))

(assert (=> b!260672 m!275979))

(assert (=> b!260672 m!275979))

(assert (=> b!260672 m!276637))

(assert (=> d!62393 d!62607))

(declare-fun b!260674 () Bool)

(declare-fun e!168934 () Option!321)

(declare-fun e!168935 () Option!321)

(assert (=> b!260674 (= e!168934 e!168935)))

(declare-fun c!44314 () Bool)

(assert (=> b!260674 (= c!44314 (and ((_ is Cons!3842) lt!131316) (not (= (_1!2482 (h!4506 lt!131316)) (_1!2482 (tuple2!4945 key!932 v!346))))))))

(declare-fun b!260676 () Bool)

(assert (=> b!260676 (= e!168935 None!319)))

(declare-fun b!260673 () Bool)

(assert (=> b!260673 (= e!168934 (Some!320 (_2!2482 (h!4506 lt!131316))))))

(declare-fun c!44313 () Bool)

(declare-fun d!62609 () Bool)

(assert (=> d!62609 (= c!44313 (and ((_ is Cons!3842) lt!131316) (= (_1!2482 (h!4506 lt!131316)) (_1!2482 (tuple2!4945 key!932 v!346)))))))

(assert (=> d!62609 (= (getValueByKey!315 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346))) e!168934)))

(declare-fun b!260675 () Bool)

(assert (=> b!260675 (= e!168935 (getValueByKey!315 (t!8923 lt!131316) (_1!2482 (tuple2!4945 key!932 v!346))))))

(assert (= (and d!62609 c!44313) b!260673))

(assert (= (and d!62609 (not c!44313)) b!260674))

(assert (= (and b!260674 c!44314) b!260675))

(assert (= (and b!260674 (not c!44314)) b!260676))

(declare-fun m!276639 () Bool)

(assert (=> b!260675 m!276639))

(assert (=> d!62393 d!62609))

(declare-fun d!62611 () Bool)

(assert (=> d!62611 (= (getValueByKey!315 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346))) (Some!320 (_2!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun lt!131574 () Unit!8084)

(declare-fun choose!1279 (List!3846 (_ BitVec 64) V!8475) Unit!8084)

(assert (=> d!62611 (= lt!131574 (choose!1279 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun e!168938 () Bool)

(assert (=> d!62611 e!168938))

(declare-fun res!127422 () Bool)

(assert (=> d!62611 (=> (not res!127422) (not e!168938))))

(assert (=> d!62611 (= res!127422 (isStrictlySorted!370 lt!131316))))

(assert (=> d!62611 (= (lemmaContainsTupThenGetReturnValue!173 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))) lt!131574)))

(declare-fun b!260681 () Bool)

(declare-fun res!127423 () Bool)

(assert (=> b!260681 (=> (not res!127423) (not e!168938))))

(assert (=> b!260681 (= res!127423 (containsKey!307 lt!131316 (_1!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun b!260682 () Bool)

(assert (=> b!260682 (= e!168938 (contains!1892 lt!131316 (tuple2!4945 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346)))))))

(assert (= (and d!62611 res!127422) b!260681))

(assert (= (and b!260681 res!127423) b!260682))

(assert (=> d!62611 m!275973))

(declare-fun m!276641 () Bool)

(assert (=> d!62611 m!276641))

(declare-fun m!276643 () Bool)

(assert (=> d!62611 m!276643))

(declare-fun m!276645 () Bool)

(assert (=> b!260681 m!276645))

(declare-fun m!276647 () Bool)

(assert (=> b!260682 m!276647))

(assert (=> d!62393 d!62611))

(declare-fun b!260703 () Bool)

(declare-fun e!168953 () List!3846)

(declare-fun call!24870 () List!3846)

(assert (=> b!260703 (= e!168953 call!24870)))

(declare-fun b!260704 () Bool)

(declare-fun e!168952 () List!3846)

(assert (=> b!260704 (= e!168952 e!168953)))

(declare-fun c!44323 () Bool)

(assert (=> b!260704 (= c!44323 (and ((_ is Cons!3842) (toList!1951 lt!131148)) (= (_1!2482 (h!4506 (toList!1951 lt!131148))) (_1!2482 (tuple2!4945 key!932 v!346)))))))

(declare-fun b!260705 () Bool)

(declare-fun e!168949 () List!3846)

(declare-fun call!24871 () List!3846)

(assert (=> b!260705 (= e!168949 call!24871)))

(declare-fun bm!24867 () Bool)

(assert (=> bm!24867 (= call!24871 call!24870)))

(declare-fun b!260706 () Bool)

(declare-fun call!24872 () List!3846)

(assert (=> b!260706 (= e!168952 call!24872)))

(declare-fun bm!24868 () Bool)

(assert (=> bm!24868 (= call!24870 call!24872)))

(declare-fun b!260707 () Bool)

(declare-fun c!44325 () Bool)

(assert (=> b!260707 (= c!44325 (and ((_ is Cons!3842) (toList!1951 lt!131148)) (bvsgt (_1!2482 (h!4506 (toList!1951 lt!131148))) (_1!2482 (tuple2!4945 key!932 v!346)))))))

(assert (=> b!260707 (= e!168953 e!168949)))

(declare-fun b!260708 () Bool)

(declare-fun res!127428 () Bool)

(declare-fun e!168950 () Bool)

(assert (=> b!260708 (=> (not res!127428) (not e!168950))))

(declare-fun lt!131577 () List!3846)

(assert (=> b!260708 (= res!127428 (containsKey!307 lt!131577 (_1!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun c!44326 () Bool)

(declare-fun e!168951 () List!3846)

(declare-fun bm!24869 () Bool)

(declare-fun $colon$colon!105 (List!3846 tuple2!4944) List!3846)

(assert (=> bm!24869 (= call!24872 ($colon$colon!105 e!168951 (ite c!44326 (h!4506 (toList!1951 lt!131148)) (tuple2!4945 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))))

(declare-fun c!44324 () Bool)

(assert (=> bm!24869 (= c!44324 c!44326)))

(declare-fun b!260710 () Bool)

(assert (=> b!260710 (= e!168950 (contains!1892 lt!131577 (tuple2!4945 (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346)))))))

(declare-fun b!260711 () Bool)

(assert (=> b!260711 (= e!168951 (insertStrictlySorted!175 (t!8923 (toList!1951 lt!131148)) (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))))))

(declare-fun b!260712 () Bool)

(assert (=> b!260712 (= e!168951 (ite c!44323 (t!8923 (toList!1951 lt!131148)) (ite c!44325 (Cons!3842 (h!4506 (toList!1951 lt!131148)) (t!8923 (toList!1951 lt!131148))) Nil!3843)))))

(declare-fun d!62613 () Bool)

(assert (=> d!62613 e!168950))

(declare-fun res!127429 () Bool)

(assert (=> d!62613 (=> (not res!127429) (not e!168950))))

(assert (=> d!62613 (= res!127429 (isStrictlySorted!370 lt!131577))))

(assert (=> d!62613 (= lt!131577 e!168952)))

(assert (=> d!62613 (= c!44326 (and ((_ is Cons!3842) (toList!1951 lt!131148)) (bvslt (_1!2482 (h!4506 (toList!1951 lt!131148))) (_1!2482 (tuple2!4945 key!932 v!346)))))))

(assert (=> d!62613 (isStrictlySorted!370 (toList!1951 lt!131148))))

(assert (=> d!62613 (= (insertStrictlySorted!175 (toList!1951 lt!131148) (_1!2482 (tuple2!4945 key!932 v!346)) (_2!2482 (tuple2!4945 key!932 v!346))) lt!131577)))

(declare-fun b!260709 () Bool)

(assert (=> b!260709 (= e!168949 call!24871)))

(assert (= (and d!62613 c!44326) b!260706))

(assert (= (and d!62613 (not c!44326)) b!260704))

(assert (= (and b!260704 c!44323) b!260703))

(assert (= (and b!260704 (not c!44323)) b!260707))

(assert (= (and b!260707 c!44325) b!260709))

(assert (= (and b!260707 (not c!44325)) b!260705))

(assert (= (or b!260709 b!260705) bm!24867))

(assert (= (or b!260703 bm!24867) bm!24868))

(assert (= (or b!260706 bm!24868) bm!24869))

(assert (= (and bm!24869 c!44324) b!260711))

(assert (= (and bm!24869 (not c!44324)) b!260712))

(assert (= (and d!62613 res!127429) b!260708))

(assert (= (and b!260708 res!127428) b!260710))

(declare-fun m!276649 () Bool)

(assert (=> b!260711 m!276649))

(declare-fun m!276651 () Bool)

(assert (=> bm!24869 m!276651))

(declare-fun m!276653 () Bool)

(assert (=> b!260708 m!276653))

(declare-fun m!276655 () Bool)

(assert (=> b!260710 m!276655))

(declare-fun m!276657 () Bool)

(assert (=> d!62613 m!276657))

(assert (=> d!62613 m!276619))

(assert (=> d!62393 d!62613))

(assert (=> b!260140 d!62417))

(assert (=> b!260284 d!62599))

(assert (=> b!260284 d!62601))

(assert (=> d!62375 d!62389))

(declare-fun d!62615 () Bool)

(assert (=> d!62615 (arrayContainsKey!0 lt!131155 key!932 #b00000000000000000000000000000000)))

(assert (=> d!62615 true))

(declare-fun _$60!384 () Unit!8084)

(assert (=> d!62615 (= (choose!13 lt!131155 key!932 index!297) _$60!384)))

(declare-fun bs!9194 () Bool)

(assert (= bs!9194 d!62615))

(assert (=> bs!9194 m!275779))

(assert (=> d!62375 d!62615))

(assert (=> b!260159 d!62575))

(declare-fun b!260713 () Bool)

(declare-fun e!168954 () Bool)

(assert (=> b!260713 (= e!168954 tp_is_empty!6621)))

(declare-fun mapIsEmpty!11289 () Bool)

(declare-fun mapRes!11289 () Bool)

(assert (=> mapIsEmpty!11289 mapRes!11289))

(declare-fun b!260714 () Bool)

(declare-fun e!168955 () Bool)

(assert (=> b!260714 (= e!168955 tp_is_empty!6621)))

(declare-fun mapNonEmpty!11289 () Bool)

(declare-fun tp!23610 () Bool)

(assert (=> mapNonEmpty!11289 (= mapRes!11289 (and tp!23610 e!168954))))

(declare-fun mapKey!11289 () (_ BitVec 32))

(declare-fun mapRest!11289 () (Array (_ BitVec 32) ValueCell!2967))

(declare-fun mapValue!11289 () ValueCell!2967)

(assert (=> mapNonEmpty!11289 (= mapRest!11288 (store mapRest!11289 mapKey!11289 mapValue!11289))))

(declare-fun condMapEmpty!11289 () Bool)

(declare-fun mapDefault!11289 () ValueCell!2967)

(assert (=> mapNonEmpty!11288 (= condMapEmpty!11289 (= mapRest!11288 ((as const (Array (_ BitVec 32) ValueCell!2967)) mapDefault!11289)))))

(assert (=> mapNonEmpty!11288 (= tp!23609 (and e!168955 mapRes!11289))))

(assert (= (and mapNonEmpty!11288 condMapEmpty!11289) mapIsEmpty!11289))

(assert (= (and mapNonEmpty!11288 (not condMapEmpty!11289)) mapNonEmpty!11289))

(assert (= (and mapNonEmpty!11289 ((_ is ValueCellFull!2967) mapValue!11289)) b!260713))

(assert (= (and mapNonEmpty!11288 ((_ is ValueCellFull!2967) mapDefault!11289)) b!260714))

(declare-fun m!276659 () Bool)

(assert (=> mapNonEmpty!11289 m!276659))

(declare-fun b_lambda!8307 () Bool)

(assert (= b_lambda!8301 (or (and b!260029 b_free!6759) b_lambda!8307)))

(declare-fun b_lambda!8309 () Bool)

(assert (= b_lambda!8299 (or (and b!260029 b_free!6759) b_lambda!8309)))

(declare-fun b_lambda!8311 () Bool)

(assert (= b_lambda!8297 (or (and b!260029 b_free!6759) b_lambda!8311)))

(declare-fun b_lambda!8313 () Bool)

(assert (= b_lambda!8305 (or (and b!260029 b_free!6759) b_lambda!8313)))

(declare-fun b_lambda!8315 () Bool)

(assert (= b_lambda!8303 (or (and b!260029 b_free!6759) b_lambda!8315)))

(check-sat (not d!62545) (not b!260582) (not d!62459) (not b!260406) (not b!260375) (not mapNonEmpty!11289) (not b!260670) (not b!260572) (not bm!24836) (not b!260464) (not b!260620) (not b!260681) (not b_lambda!8309) (not b!260646) (not b!260525) (not d!62505) (not d!62541) (not d!62453) (not b!260521) (not b!260675) (not b_lambda!8315) (not b!260517) (not b!260501) (not bm!24841) (not b!260534) (not b!260504) (not b!260663) tp_is_empty!6621 (not bm!24860) (not b!260575) (not bm!24846) (not b!260374) (not b!260577) (not b!260430) (not d!62461) (not b!260423) (not d!62551) (not b!260461) (not b!260414) (not d!62565) (not d!62547) (not b!260492) (not b!260658) (not b!260506) (not d!62479) (not d!62523) (not bm!24839) (not b!260483) (not d!62613) (not b!260672) (not b_lambda!8311) (not d!62495) (not b_lambda!8307) (not b!260612) (not d!62503) (not b!260455) (not d!62543) (not b!260421) (not b!260387) (not b!260655) (not bm!24855) (not b!260445) (not b!260373) (not b!260488) (not d!62435) (not b!260682) (not b!260446) (not d!62611) (not d!62487) (not d!62445) (not d!62481) (not bm!24840) (not d!62567) (not d!62425) (not b!260665) (not bm!24847) (not d!62463) (not d!62583) (not bm!24869) (not b!260653) (not b!260637) (not b!260614) (not b!260429) (not b!260437) (not b!260491) (not d!62555) (not d!62527) (not d!62569) (not d!62525) (not bm!24850) (not b!260419) (not b!260432) (not d!62537) (not b!260651) (not d!62431) (not b!260415) (not d!62597) (not bm!24856) (not b!260630) (not b!260578) (not b!260395) (not d!62449) (not b!260710) (not b!260642) (not d!62517) (not b!260573) (not b!260443) (not d!62533) (not bm!24835) (not b!260636) (not b!260381) (not b!260532) (not d!62437) (not d!62447) (not b_next!6759) (not b!260645) (not b!260389) (not b_lambda!8293) (not b!260644) (not b!260570) (not d!62531) (not b!260450) (not b!260477) (not b!260507) (not b!260649) (not d!62535) (not bm!24857) (not d!62549) (not d!62441) (not b!260543) (not b!260505) (not d!62591) (not d!62577) (not d!62485) (not d!62557) (not d!62603) (not d!62521) (not b!260607) (not d!62455) (not b!260515) (not b!260520) (not b!260424) (not d!62465) (not b!260643) (not bm!24849) (not b!260382) (not d!62511) (not b!260463) (not b!260462) (not b!260433) (not b!260499) (not d!62475) (not d!62433) (not d!62579) (not b!260523) (not b!260494) (not bm!24838) (not d!62607) (not b_lambda!8313) (not b!260376) (not d!62469) b_and!13899 (not b_lambda!8295) (not b!260571) (not b!260650) (not d!62419) (not b!260569) (not bm!24848) (not b!260422) (not b!260631) (not b!260458) (not b!260538) (not b!260444) (not d!62483) (not b!260431) (not b!260579) (not d!62593) (not b!260386) (not d!62599) (not d!62499) (not b!260711) (not d!62451) (not d!62587) (not b!260639) (not b!260516) (not d!62439) (not d!62457) (not d!62615) (not b!260576) (not b!260417) (not b!260581) (not b!260654) (not d!62553) (not d!62573) (not b!260418) (not b!260544) (not b!260449) (not b!260708) (not b!260514) (not bm!24844) (not bm!24837) (not bm!24858) (not d!62559) (not b!260486) (not b!260377) (not b!260436) (not b!260428) (not b!260485) (not b!260413) (not d!62539) (not b!260669) (not bm!24859) (not b!260661) (not d!62589) (not b!260378) (not d!62561) (not d!62421) (not d!62443))
(check-sat b_and!13899 (not b_next!6759))
