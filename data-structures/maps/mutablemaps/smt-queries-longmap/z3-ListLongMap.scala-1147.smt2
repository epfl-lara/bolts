; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23934 () Bool)

(assert start!23934)

(declare-fun b!250739 () Bool)

(declare-fun b_free!6633 () Bool)

(declare-fun b_next!6633 () Bool)

(assert (=> b!250739 (= b_free!6633 (not b_next!6633))))

(declare-fun tp!23167 () Bool)

(declare-fun b_and!13673 () Bool)

(assert (=> b!250739 (= tp!23167 b_and!13673)))

(declare-fun b!250728 () Bool)

(declare-fun res!122806 () Bool)

(declare-fun e!162625 () Bool)

(assert (=> b!250728 (=> (not res!122806) (not e!162625))))

(declare-fun call!23577 () Bool)

(assert (=> b!250728 (= res!122806 call!23577)))

(declare-fun e!162635 () Bool)

(assert (=> b!250728 (= e!162635 e!162625)))

(declare-fun b!250729 () Bool)

(declare-fun e!162634 () Bool)

(declare-fun tp_is_empty!6495 () Bool)

(assert (=> b!250729 (= e!162634 tp_is_empty!6495)))

(declare-fun b!250730 () Bool)

(declare-fun c!42133 () Bool)

(declare-datatypes ((SeekEntryResult!1134 0))(
  ( (MissingZero!1134 (index!6706 (_ BitVec 32))) (Found!1134 (index!6707 (_ BitVec 32))) (Intermediate!1134 (undefined!1946 Bool) (index!6708 (_ BitVec 32)) (x!24702 (_ BitVec 32))) (Undefined!1134) (MissingVacant!1134 (index!6709 (_ BitVec 32))) )
))
(declare-fun lt!125677 () SeekEntryResult!1134)

(get-info :version)

(assert (=> b!250730 (= c!42133 ((_ is MissingVacant!1134) lt!125677))))

(declare-fun e!162624 () Bool)

(assert (=> b!250730 (= e!162635 e!162624)))

(declare-fun b!250731 () Bool)

(declare-fun e!162632 () Bool)

(declare-fun e!162633 () Bool)

(assert (=> b!250731 (= e!162632 e!162633)))

(declare-fun res!122802 () Bool)

(assert (=> b!250731 (=> (not res!122802) (not e!162633))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!250731 (= res!122802 (or (= lt!125677 (MissingZero!1134 index!297)) (= lt!125677 (MissingVacant!1134 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8307 0))(
  ( (V!8308 (val!3292 Int)) )
))
(declare-datatypes ((ValueCell!2904 0))(
  ( (ValueCellFull!2904 (v!5354 V!8307)) (EmptyCell!2904) )
))
(declare-datatypes ((array!12308 0))(
  ( (array!12309 (arr!5835 (Array (_ BitVec 32) ValueCell!2904)) (size!6180 (_ BitVec 32))) )
))
(declare-datatypes ((array!12310 0))(
  ( (array!12311 (arr!5836 (Array (_ BitVec 32) (_ BitVec 64))) (size!6181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3708 0))(
  ( (LongMapFixedSize!3709 (defaultEntry!4635 Int) (mask!10825 (_ BitVec 32)) (extraKeys!4372 (_ BitVec 32)) (zeroValue!4476 V!8307) (minValue!4476 V!8307) (_size!1903 (_ BitVec 32)) (_keys!6773 array!12310) (_values!4618 array!12308) (_vacant!1903 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3708)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12310 (_ BitVec 32)) SeekEntryResult!1134)

(assert (=> b!250731 (= lt!125677 (seekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun b!250732 () Bool)

(declare-datatypes ((Unit!7757 0))(
  ( (Unit!7758) )
))
(declare-fun e!162631 () Unit!7757)

(declare-fun lt!125673 () Unit!7757)

(assert (=> b!250732 (= e!162631 lt!125673)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!400 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 64) Int) Unit!7757)

(assert (=> b!250732 (= lt!125673 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!400 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)))))

(declare-fun c!42134 () Bool)

(assert (=> b!250732 (= c!42134 ((_ is MissingZero!1134) lt!125677))))

(assert (=> b!250732 e!162635))

(declare-fun b!250733 () Bool)

(declare-fun res!122805 () Bool)

(assert (=> b!250733 (=> (not res!122805) (not e!162625))))

(assert (=> b!250733 (= res!122805 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6706 lt!125677)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!250734 () Bool)

(declare-fun res!122801 () Bool)

(assert (=> b!250734 (=> (not res!122801) (not e!162632))))

(assert (=> b!250734 (= res!122801 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!23574 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23574 (= call!23577 (inRange!0 (ite c!42134 (index!6706 lt!125677) (index!6709 lt!125677)) (mask!10825 thiss!1504)))))

(declare-fun bm!23575 () Bool)

(declare-fun call!23578 () Bool)

(declare-fun arrayContainsKey!0 (array!12310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23575 (= call!23578 (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250735 () Bool)

(declare-fun e!162630 () Bool)

(assert (=> b!250735 (= e!162630 (not call!23578))))

(declare-fun res!122799 () Bool)

(assert (=> start!23934 (=> (not res!122799) (not e!162632))))

(declare-fun valid!1441 (LongMapFixedSize!3708) Bool)

(assert (=> start!23934 (= res!122799 (valid!1441 thiss!1504))))

(assert (=> start!23934 e!162632))

(declare-fun e!162623 () Bool)

(assert (=> start!23934 e!162623))

(assert (=> start!23934 true))

(declare-fun mapIsEmpty!11038 () Bool)

(declare-fun mapRes!11038 () Bool)

(assert (=> mapIsEmpty!11038 mapRes!11038))

(declare-fun b!250736 () Bool)

(declare-fun res!122804 () Bool)

(assert (=> b!250736 (= res!122804 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6709 lt!125677)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250736 (=> (not res!122804) (not e!162630))))

(declare-fun b!250737 () Bool)

(declare-fun Unit!7759 () Unit!7757)

(assert (=> b!250737 (= e!162631 Unit!7759)))

(declare-fun lt!125680 () Unit!7757)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!400 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 64) Int) Unit!7757)

(assert (=> b!250737 (= lt!125680 (lemmaInListMapThenSeekEntryOrOpenFindsIt!400 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)))))

(assert (=> b!250737 false))

(declare-fun b!250738 () Bool)

(declare-fun e!162627 () Bool)

(assert (=> b!250738 (= e!162627 tp_is_empty!6495)))

(declare-fun e!162636 () Bool)

(declare-fun array_inv!3843 (array!12310) Bool)

(declare-fun array_inv!3844 (array!12308) Bool)

(assert (=> b!250739 (= e!162623 (and tp!23167 tp_is_empty!6495 (array_inv!3843 (_keys!6773 thiss!1504)) (array_inv!3844 (_values!4618 thiss!1504)) e!162636))))

(declare-fun b!250740 () Bool)

(declare-fun e!162629 () Unit!7757)

(declare-fun Unit!7760 () Unit!7757)

(assert (=> b!250740 (= e!162629 Unit!7760)))

(declare-fun lt!125681 () Unit!7757)

(declare-fun lemmaArrayContainsKeyThenInListMap!202 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 64) (_ BitVec 32) Int) Unit!7757)

(assert (=> b!250740 (= lt!125681 (lemmaArrayContainsKeyThenInListMap!202 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(assert (=> b!250740 false))

(declare-fun mapNonEmpty!11038 () Bool)

(declare-fun tp!23166 () Bool)

(assert (=> mapNonEmpty!11038 (= mapRes!11038 (and tp!23166 e!162634))))

(declare-fun mapKey!11038 () (_ BitVec 32))

(declare-fun mapValue!11038 () ValueCell!2904)

(declare-fun mapRest!11038 () (Array (_ BitVec 32) ValueCell!2904))

(assert (=> mapNonEmpty!11038 (= (arr!5835 (_values!4618 thiss!1504)) (store mapRest!11038 mapKey!11038 mapValue!11038))))

(declare-fun b!250741 () Bool)

(declare-fun e!162622 () Bool)

(assert (=> b!250741 (= e!162622 (or (not (= (size!6180 (_values!4618 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10825 thiss!1504)))) (not (= (size!6181 (_keys!6773 thiss!1504)) (size!6180 (_values!4618 thiss!1504)))) (bvslt (mask!10825 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4372 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!250742 () Bool)

(assert (=> b!250742 (= e!162624 e!162630)))

(declare-fun res!122798 () Bool)

(assert (=> b!250742 (= res!122798 call!23577)))

(assert (=> b!250742 (=> (not res!122798) (not e!162630))))

(declare-fun b!250743 () Bool)

(declare-fun Unit!7761 () Unit!7757)

(assert (=> b!250743 (= e!162629 Unit!7761)))

(declare-fun b!250744 () Bool)

(assert (=> b!250744 (= e!162624 ((_ is Undefined!1134) lt!125677))))

(declare-fun b!250745 () Bool)

(assert (=> b!250745 (= e!162625 (not call!23578))))

(declare-fun b!250746 () Bool)

(assert (=> b!250746 (= e!162636 (and e!162627 mapRes!11038))))

(declare-fun condMapEmpty!11038 () Bool)

(declare-fun mapDefault!11038 () ValueCell!2904)

(assert (=> b!250746 (= condMapEmpty!11038 (= (arr!5835 (_values!4618 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2904)) mapDefault!11038)))))

(declare-fun b!250747 () Bool)

(declare-fun e!162626 () Bool)

(assert (=> b!250747 (= e!162626 (not e!162622))))

(declare-fun res!122803 () Bool)

(assert (=> b!250747 (=> res!122803 e!162622)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!250747 (= res!122803 (not (validMask!0 (mask!10825 thiss!1504))))))

(declare-fun lt!125679 () array!12310)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12310 (_ BitVec 32)) Bool)

(assert (=> b!250747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125679 (mask!10825 thiss!1504))))

(declare-fun lt!125674 () Unit!7757)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12310 (_ BitVec 32) (_ BitVec 32)) Unit!7757)

(assert (=> b!250747 (= lt!125674 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) index!297 (mask!10825 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12310 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!250747 (= (arrayCountValidKeys!0 lt!125679 #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504)))))))

(declare-fun lt!125675 () Unit!7757)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12310 (_ BitVec 32) (_ BitVec 64)) Unit!7757)

(assert (=> b!250747 (= lt!125675 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6773 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3746 0))(
  ( (Nil!3743) (Cons!3742 (h!4402 (_ BitVec 64)) (t!8789 List!3746)) )
))
(declare-fun arrayNoDuplicates!0 (array!12310 (_ BitVec 32) List!3746) Bool)

(assert (=> b!250747 (arrayNoDuplicates!0 lt!125679 #b00000000000000000000000000000000 Nil!3743)))

(assert (=> b!250747 (= lt!125679 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun lt!125672 () Unit!7757)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12310 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3746) Unit!7757)

(assert (=> b!250747 (= lt!125672 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6773 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3743))))

(declare-fun lt!125676 () Unit!7757)

(assert (=> b!250747 (= lt!125676 e!162629)))

(declare-fun c!42136 () Bool)

(assert (=> b!250747 (= c!42136 (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250748 () Bool)

(assert (=> b!250748 (= e!162633 e!162626)))

(declare-fun res!122800 () Bool)

(assert (=> b!250748 (=> (not res!122800) (not e!162626))))

(assert (=> b!250748 (= res!122800 (inRange!0 index!297 (mask!10825 thiss!1504)))))

(declare-fun lt!125678 () Unit!7757)

(assert (=> b!250748 (= lt!125678 e!162631)))

(declare-fun c!42135 () Bool)

(declare-datatypes ((tuple2!4842 0))(
  ( (tuple2!4843 (_1!2431 (_ BitVec 64)) (_2!2431 V!8307)) )
))
(declare-datatypes ((List!3747 0))(
  ( (Nil!3744) (Cons!3743 (h!4403 tuple2!4842) (t!8790 List!3747)) )
))
(declare-datatypes ((ListLongMap!3769 0))(
  ( (ListLongMap!3770 (toList!1900 List!3747)) )
))
(declare-fun contains!1816 (ListLongMap!3769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1423 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 32) Int) ListLongMap!3769)

(assert (=> b!250748 (= c!42135 (contains!1816 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) key!932))))

(assert (= (and start!23934 res!122799) b!250734))

(assert (= (and b!250734 res!122801) b!250731))

(assert (= (and b!250731 res!122802) b!250748))

(assert (= (and b!250748 c!42135) b!250737))

(assert (= (and b!250748 (not c!42135)) b!250732))

(assert (= (and b!250732 c!42134) b!250728))

(assert (= (and b!250732 (not c!42134)) b!250730))

(assert (= (and b!250728 res!122806) b!250733))

(assert (= (and b!250733 res!122805) b!250745))

(assert (= (and b!250730 c!42133) b!250742))

(assert (= (and b!250730 (not c!42133)) b!250744))

(assert (= (and b!250742 res!122798) b!250736))

(assert (= (and b!250736 res!122804) b!250735))

(assert (= (or b!250728 b!250742) bm!23574))

(assert (= (or b!250745 b!250735) bm!23575))

(assert (= (and b!250748 res!122800) b!250747))

(assert (= (and b!250747 c!42136) b!250740))

(assert (= (and b!250747 (not c!42136)) b!250743))

(assert (= (and b!250747 (not res!122803)) b!250741))

(assert (= (and b!250746 condMapEmpty!11038) mapIsEmpty!11038))

(assert (= (and b!250746 (not condMapEmpty!11038)) mapNonEmpty!11038))

(assert (= (and mapNonEmpty!11038 ((_ is ValueCellFull!2904) mapValue!11038)) b!250729))

(assert (= (and b!250746 ((_ is ValueCellFull!2904) mapDefault!11038)) b!250738))

(assert (= b!250739 b!250746))

(assert (= start!23934 b!250739))

(declare-fun m!267091 () Bool)

(assert (=> mapNonEmpty!11038 m!267091))

(declare-fun m!267093 () Bool)

(assert (=> b!250731 m!267093))

(declare-fun m!267095 () Bool)

(assert (=> b!250737 m!267095))

(declare-fun m!267097 () Bool)

(assert (=> b!250747 m!267097))

(declare-fun m!267099 () Bool)

(assert (=> b!250747 m!267099))

(declare-fun m!267101 () Bool)

(assert (=> b!250747 m!267101))

(declare-fun m!267103 () Bool)

(assert (=> b!250747 m!267103))

(declare-fun m!267105 () Bool)

(assert (=> b!250747 m!267105))

(declare-fun m!267107 () Bool)

(assert (=> b!250747 m!267107))

(declare-fun m!267109 () Bool)

(assert (=> b!250747 m!267109))

(declare-fun m!267111 () Bool)

(assert (=> b!250747 m!267111))

(declare-fun m!267113 () Bool)

(assert (=> b!250747 m!267113))

(declare-fun m!267115 () Bool)

(assert (=> b!250747 m!267115))

(declare-fun m!267117 () Bool)

(assert (=> bm!23574 m!267117))

(declare-fun m!267119 () Bool)

(assert (=> b!250736 m!267119))

(declare-fun m!267121 () Bool)

(assert (=> b!250739 m!267121))

(declare-fun m!267123 () Bool)

(assert (=> b!250739 m!267123))

(declare-fun m!267125 () Bool)

(assert (=> b!250733 m!267125))

(declare-fun m!267127 () Bool)

(assert (=> b!250748 m!267127))

(declare-fun m!267129 () Bool)

(assert (=> b!250748 m!267129))

(assert (=> b!250748 m!267129))

(declare-fun m!267131 () Bool)

(assert (=> b!250748 m!267131))

(assert (=> bm!23575 m!267099))

(declare-fun m!267133 () Bool)

(assert (=> b!250740 m!267133))

(declare-fun m!267135 () Bool)

(assert (=> start!23934 m!267135))

(declare-fun m!267137 () Bool)

(assert (=> b!250732 m!267137))

(check-sat (not mapNonEmpty!11038) (not b!250731) (not b!250747) (not b!250737) (not bm!23574) tp_is_empty!6495 (not b!250732) (not b!250748) (not start!23934) (not b!250739) b_and!13673 (not b_next!6633) (not b!250740) (not bm!23575))
(check-sat b_and!13673 (not b_next!6633))
(get-model)

(declare-fun b!250828 () Bool)

(declare-fun e!162692 () Bool)

(declare-fun call!23590 () Bool)

(assert (=> b!250828 (= e!162692 (not call!23590))))

(declare-fun b!250829 () Bool)

(declare-fun res!122842 () Bool)

(assert (=> b!250829 (=> (not res!122842) (not e!162692))))

(declare-fun lt!125716 () SeekEntryResult!1134)

(assert (=> b!250829 (= res!122842 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6709 lt!125716)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250829 (and (bvsge (index!6709 lt!125716) #b00000000000000000000000000000000) (bvslt (index!6709 lt!125716) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!250830 () Bool)

(declare-fun e!162691 () Bool)

(declare-fun e!162690 () Bool)

(assert (=> b!250830 (= e!162691 e!162690)))

(declare-fun res!122844 () Bool)

(declare-fun call!23589 () Bool)

(assert (=> b!250830 (= res!122844 call!23589)))

(assert (=> b!250830 (=> (not res!122844) (not e!162690))))

(declare-fun bm!23586 () Bool)

(assert (=> bm!23586 (= call!23590 (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun d!60889 () Bool)

(assert (=> d!60889 e!162691))

(declare-fun c!42154 () Bool)

(assert (=> d!60889 (= c!42154 ((_ is MissingZero!1134) lt!125716))))

(assert (=> d!60889 (= lt!125716 (seekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun lt!125717 () Unit!7757)

(declare-fun choose!1196 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 64) Int) Unit!7757)

(assert (=> d!60889 (= lt!125717 (choose!1196 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)))))

(assert (=> d!60889 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60889 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!400 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)) lt!125717)))

(declare-fun b!250831 () Bool)

(assert (=> b!250831 (= e!162690 (not call!23590))))

(declare-fun bm!23587 () Bool)

(assert (=> bm!23587 (= call!23589 (inRange!0 (ite c!42154 (index!6706 lt!125716) (index!6709 lt!125716)) (mask!10825 thiss!1504)))))

(declare-fun b!250832 () Bool)

(declare-fun e!162693 () Bool)

(assert (=> b!250832 (= e!162691 e!162693)))

(declare-fun c!42153 () Bool)

(assert (=> b!250832 (= c!42153 ((_ is MissingVacant!1134) lt!125716))))

(declare-fun b!250833 () Bool)

(assert (=> b!250833 (and (bvsge (index!6706 lt!125716) #b00000000000000000000000000000000) (bvslt (index!6706 lt!125716) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun res!122845 () Bool)

(assert (=> b!250833 (= res!122845 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6706 lt!125716)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250833 (=> (not res!122845) (not e!162690))))

(declare-fun b!250834 () Bool)

(assert (=> b!250834 (= e!162693 ((_ is Undefined!1134) lt!125716))))

(declare-fun b!250835 () Bool)

(declare-fun res!122843 () Bool)

(assert (=> b!250835 (=> (not res!122843) (not e!162692))))

(assert (=> b!250835 (= res!122843 call!23589)))

(assert (=> b!250835 (= e!162693 e!162692)))

(assert (= (and d!60889 c!42154) b!250830))

(assert (= (and d!60889 (not c!42154)) b!250832))

(assert (= (and b!250830 res!122844) b!250833))

(assert (= (and b!250833 res!122845) b!250831))

(assert (= (and b!250832 c!42153) b!250835))

(assert (= (and b!250832 (not c!42153)) b!250834))

(assert (= (and b!250835 res!122843) b!250829))

(assert (= (and b!250829 res!122842) b!250828))

(assert (= (or b!250830 b!250835) bm!23587))

(assert (= (or b!250831 b!250828) bm!23586))

(assert (=> d!60889 m!267093))

(declare-fun m!267187 () Bool)

(assert (=> d!60889 m!267187))

(assert (=> d!60889 m!267097))

(declare-fun m!267189 () Bool)

(assert (=> b!250829 m!267189))

(declare-fun m!267191 () Bool)

(assert (=> bm!23587 m!267191))

(declare-fun m!267193 () Bool)

(assert (=> b!250833 m!267193))

(assert (=> bm!23586 m!267099))

(assert (=> b!250732 d!60889))

(declare-fun d!60891 () Bool)

(assert (=> d!60891 (contains!1816 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) key!932)))

(declare-fun lt!125720 () Unit!7757)

(declare-fun choose!1197 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 64) (_ BitVec 32) Int) Unit!7757)

(assert (=> d!60891 (= lt!125720 (choose!1197 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(assert (=> d!60891 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60891 (= (lemmaArrayContainsKeyThenInListMap!202 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) lt!125720)))

(declare-fun bs!8988 () Bool)

(assert (= bs!8988 d!60891))

(assert (=> bs!8988 m!267129))

(assert (=> bs!8988 m!267129))

(assert (=> bs!8988 m!267131))

(declare-fun m!267195 () Bool)

(assert (=> bs!8988 m!267195))

(assert (=> bs!8988 m!267097))

(assert (=> b!250740 d!60891))

(declare-fun d!60893 () Bool)

(assert (=> d!60893 (= (inRange!0 index!297 (mask!10825 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!250748 d!60893))

(declare-fun d!60895 () Bool)

(declare-fun e!162699 () Bool)

(assert (=> d!60895 e!162699))

(declare-fun res!122848 () Bool)

(assert (=> d!60895 (=> res!122848 e!162699)))

(declare-fun lt!125729 () Bool)

(assert (=> d!60895 (= res!122848 (not lt!125729))))

(declare-fun lt!125731 () Bool)

(assert (=> d!60895 (= lt!125729 lt!125731)))

(declare-fun lt!125732 () Unit!7757)

(declare-fun e!162698 () Unit!7757)

(assert (=> d!60895 (= lt!125732 e!162698)))

(declare-fun c!42157 () Bool)

(assert (=> d!60895 (= c!42157 lt!125731)))

(declare-fun containsKey!290 (List!3747 (_ BitVec 64)) Bool)

(assert (=> d!60895 (= lt!125731 (containsKey!290 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))

(assert (=> d!60895 (= (contains!1816 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) key!932) lt!125729)))

(declare-fun b!250842 () Bool)

(declare-fun lt!125730 () Unit!7757)

(assert (=> b!250842 (= e!162698 lt!125730)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!239 (List!3747 (_ BitVec 64)) Unit!7757)

(assert (=> b!250842 (= lt!125730 (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))

(declare-datatypes ((Option!304 0))(
  ( (Some!303 (v!5356 V!8307)) (None!302) )
))
(declare-fun isDefined!240 (Option!304) Bool)

(declare-fun getValueByKey!298 (List!3747 (_ BitVec 64)) Option!304)

(assert (=> b!250842 (isDefined!240 (getValueByKey!298 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))

(declare-fun b!250843 () Bool)

(declare-fun Unit!7767 () Unit!7757)

(assert (=> b!250843 (= e!162698 Unit!7767)))

(declare-fun b!250844 () Bool)

(assert (=> b!250844 (= e!162699 (isDefined!240 (getValueByKey!298 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932)))))

(assert (= (and d!60895 c!42157) b!250842))

(assert (= (and d!60895 (not c!42157)) b!250843))

(assert (= (and d!60895 (not res!122848)) b!250844))

(declare-fun m!267197 () Bool)

(assert (=> d!60895 m!267197))

(declare-fun m!267199 () Bool)

(assert (=> b!250842 m!267199))

(declare-fun m!267201 () Bool)

(assert (=> b!250842 m!267201))

(assert (=> b!250842 m!267201))

(declare-fun m!267203 () Bool)

(assert (=> b!250842 m!267203))

(assert (=> b!250844 m!267201))

(assert (=> b!250844 m!267201))

(assert (=> b!250844 m!267203))

(assert (=> b!250748 d!60895))

(declare-fun b!250887 () Bool)

(declare-fun e!162727 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!250887 (= e!162727 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250888 () Bool)

(declare-fun e!162730 () Bool)

(declare-fun e!162726 () Bool)

(assert (=> b!250888 (= e!162730 e!162726)))

(declare-fun res!122872 () Bool)

(declare-fun call!23607 () Bool)

(assert (=> b!250888 (= res!122872 call!23607)))

(assert (=> b!250888 (=> (not res!122872) (not e!162726))))

(declare-fun bm!23602 () Bool)

(declare-fun call!23605 () ListLongMap!3769)

(declare-fun call!23606 () ListLongMap!3769)

(assert (=> bm!23602 (= call!23605 call!23606)))

(declare-fun b!250889 () Bool)

(declare-fun e!162738 () ListLongMap!3769)

(declare-fun call!23608 () ListLongMap!3769)

(assert (=> b!250889 (= e!162738 call!23608)))

(declare-fun b!250890 () Bool)

(declare-fun e!162735 () Bool)

(assert (=> b!250890 (= e!162735 e!162730)))

(declare-fun c!42175 () Bool)

(assert (=> b!250890 (= c!42175 (not (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!60897 () Bool)

(assert (=> d!60897 e!162735))

(declare-fun res!122871 () Bool)

(assert (=> d!60897 (=> (not res!122871) (not e!162735))))

(assert (=> d!60897 (= res!122871 (or (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))))

(declare-fun lt!125793 () ListLongMap!3769)

(declare-fun lt!125782 () ListLongMap!3769)

(assert (=> d!60897 (= lt!125793 lt!125782)))

(declare-fun lt!125789 () Unit!7757)

(declare-fun e!162733 () Unit!7757)

(assert (=> d!60897 (= lt!125789 e!162733)))

(declare-fun c!42173 () Bool)

(declare-fun e!162728 () Bool)

(assert (=> d!60897 (= c!42173 e!162728)))

(declare-fun res!122873 () Bool)

(assert (=> d!60897 (=> (not res!122873) (not e!162728))))

(assert (=> d!60897 (= res!122873 (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun e!162732 () ListLongMap!3769)

(assert (=> d!60897 (= lt!125782 e!162732)))

(declare-fun c!42171 () Bool)

(assert (=> d!60897 (= c!42171 (and (not (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60897 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60897 (= (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) lt!125793)))

(declare-fun bm!23603 () Bool)

(declare-fun call!23611 () ListLongMap!3769)

(assert (=> bm!23603 (= call!23611 call!23605)))

(declare-fun b!250891 () Bool)

(assert (=> b!250891 (= e!162732 e!162738)))

(declare-fun c!42172 () Bool)

(assert (=> b!250891 (= c!42172 (and (not (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!250892 () Bool)

(declare-fun c!42174 () Bool)

(assert (=> b!250892 (= c!42174 (and (not (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!162737 () ListLongMap!3769)

(assert (=> b!250892 (= e!162738 e!162737)))

(declare-fun bm!23604 () Bool)

(declare-fun call!23609 () ListLongMap!3769)

(assert (=> bm!23604 (= call!23608 call!23609)))

(declare-fun b!250893 () Bool)

(declare-fun apply!241 (ListLongMap!3769 (_ BitVec 64)) V!8307)

(assert (=> b!250893 (= e!162726 (= (apply!241 lt!125793 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4476 thiss!1504)))))

(declare-fun b!250894 () Bool)

(declare-fun e!162734 () Bool)

(declare-fun call!23610 () Bool)

(assert (=> b!250894 (= e!162734 (not call!23610))))

(declare-fun bm!23605 () Bool)

(declare-fun +!663 (ListLongMap!3769 tuple2!4842) ListLongMap!3769)

(assert (=> bm!23605 (= call!23609 (+!663 (ite c!42171 call!23606 (ite c!42172 call!23605 call!23611)) (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))

(declare-fun b!250895 () Bool)

(declare-fun e!162731 () Bool)

(declare-fun get!3001 (ValueCell!2904 V!8307) V!8307)

(declare-fun dynLambda!579 (Int (_ BitVec 64)) V!8307)

(assert (=> b!250895 (= e!162731 (= (apply!241 lt!125793 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)) (get!3001 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!250895 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6180 (_values!4618 thiss!1504))))))

(assert (=> b!250895 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!250896 () Bool)

(assert (=> b!250896 (= e!162732 (+!663 call!23609 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))

(declare-fun b!250897 () Bool)

(assert (=> b!250897 (= e!162737 call!23608)))

(declare-fun b!250898 () Bool)

(declare-fun res!122868 () Bool)

(assert (=> b!250898 (=> (not res!122868) (not e!162735))))

(declare-fun e!162736 () Bool)

(assert (=> b!250898 (= res!122868 e!162736)))

(declare-fun res!122869 () Bool)

(assert (=> b!250898 (=> res!122869 e!162736)))

(assert (=> b!250898 (= res!122869 (not e!162727))))

(declare-fun res!122874 () Bool)

(assert (=> b!250898 (=> (not res!122874) (not e!162727))))

(assert (=> b!250898 (= res!122874 (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!250899 () Bool)

(assert (=> b!250899 (= e!162737 call!23611)))

(declare-fun b!250900 () Bool)

(declare-fun res!122867 () Bool)

(assert (=> b!250900 (=> (not res!122867) (not e!162735))))

(assert (=> b!250900 (= res!122867 e!162734)))

(declare-fun c!42170 () Bool)

(assert (=> b!250900 (= c!42170 (not (= (bvand (extraKeys!4372 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!250901 () Bool)

(declare-fun Unit!7768 () Unit!7757)

(assert (=> b!250901 (= e!162733 Unit!7768)))

(declare-fun bm!23606 () Bool)

(assert (=> bm!23606 (= call!23610 (contains!1816 lt!125793 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23607 () Bool)

(assert (=> bm!23607 (= call!23607 (contains!1816 lt!125793 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!250902 () Bool)

(assert (=> b!250902 (= e!162730 (not call!23607))))

(declare-fun b!250903 () Bool)

(declare-fun e!162729 () Bool)

(assert (=> b!250903 (= e!162729 (= (apply!241 lt!125793 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4476 thiss!1504)))))

(declare-fun b!250904 () Bool)

(assert (=> b!250904 (= e!162728 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250905 () Bool)

(assert (=> b!250905 (= e!162736 e!162731)))

(declare-fun res!122870 () Bool)

(assert (=> b!250905 (=> (not res!122870) (not e!162731))))

(assert (=> b!250905 (= res!122870 (contains!1816 lt!125793 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!250905 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun bm!23608 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!560 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 32) Int) ListLongMap!3769)

(assert (=> bm!23608 (= call!23606 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(declare-fun b!250906 () Bool)

(declare-fun lt!125784 () Unit!7757)

(assert (=> b!250906 (= e!162733 lt!125784)))

(declare-fun lt!125796 () ListLongMap!3769)

(assert (=> b!250906 (= lt!125796 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(declare-fun lt!125785 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125778 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125778 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125783 () Unit!7757)

(declare-fun addStillContains!217 (ListLongMap!3769 (_ BitVec 64) V!8307 (_ BitVec 64)) Unit!7757)

(assert (=> b!250906 (= lt!125783 (addStillContains!217 lt!125796 lt!125785 (zeroValue!4476 thiss!1504) lt!125778))))

(assert (=> b!250906 (contains!1816 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))) lt!125778)))

(declare-fun lt!125781 () Unit!7757)

(assert (=> b!250906 (= lt!125781 lt!125783)))

(declare-fun lt!125788 () ListLongMap!3769)

(assert (=> b!250906 (= lt!125788 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(declare-fun lt!125779 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125779 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125795 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125795 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125797 () Unit!7757)

(declare-fun addApplyDifferent!217 (ListLongMap!3769 (_ BitVec 64) V!8307 (_ BitVec 64)) Unit!7757)

(assert (=> b!250906 (= lt!125797 (addApplyDifferent!217 lt!125788 lt!125779 (minValue!4476 thiss!1504) lt!125795))))

(assert (=> b!250906 (= (apply!241 (+!663 lt!125788 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))) lt!125795) (apply!241 lt!125788 lt!125795))))

(declare-fun lt!125798 () Unit!7757)

(assert (=> b!250906 (= lt!125798 lt!125797)))

(declare-fun lt!125790 () ListLongMap!3769)

(assert (=> b!250906 (= lt!125790 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(declare-fun lt!125791 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125791 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125777 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125777 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125780 () Unit!7757)

(assert (=> b!250906 (= lt!125780 (addApplyDifferent!217 lt!125790 lt!125791 (zeroValue!4476 thiss!1504) lt!125777))))

(assert (=> b!250906 (= (apply!241 (+!663 lt!125790 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))) lt!125777) (apply!241 lt!125790 lt!125777))))

(declare-fun lt!125787 () Unit!7757)

(assert (=> b!250906 (= lt!125787 lt!125780)))

(declare-fun lt!125786 () ListLongMap!3769)

(assert (=> b!250906 (= lt!125786 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))

(declare-fun lt!125792 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125792 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125794 () (_ BitVec 64))

(assert (=> b!250906 (= lt!125794 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250906 (= lt!125784 (addApplyDifferent!217 lt!125786 lt!125792 (minValue!4476 thiss!1504) lt!125794))))

(assert (=> b!250906 (= (apply!241 (+!663 lt!125786 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))) lt!125794) (apply!241 lt!125786 lt!125794))))

(declare-fun b!250907 () Bool)

(assert (=> b!250907 (= e!162734 e!162729)))

(declare-fun res!122875 () Bool)

(assert (=> b!250907 (= res!122875 call!23610)))

(assert (=> b!250907 (=> (not res!122875) (not e!162729))))

(assert (= (and d!60897 c!42171) b!250896))

(assert (= (and d!60897 (not c!42171)) b!250891))

(assert (= (and b!250891 c!42172) b!250889))

(assert (= (and b!250891 (not c!42172)) b!250892))

(assert (= (and b!250892 c!42174) b!250897))

(assert (= (and b!250892 (not c!42174)) b!250899))

(assert (= (or b!250897 b!250899) bm!23603))

(assert (= (or b!250889 bm!23603) bm!23602))

(assert (= (or b!250889 b!250897) bm!23604))

(assert (= (or b!250896 bm!23602) bm!23608))

(assert (= (or b!250896 bm!23604) bm!23605))

(assert (= (and d!60897 res!122873) b!250904))

(assert (= (and d!60897 c!42173) b!250906))

(assert (= (and d!60897 (not c!42173)) b!250901))

(assert (= (and d!60897 res!122871) b!250898))

(assert (= (and b!250898 res!122874) b!250887))

(assert (= (and b!250898 (not res!122869)) b!250905))

(assert (= (and b!250905 res!122870) b!250895))

(assert (= (and b!250898 res!122868) b!250900))

(assert (= (and b!250900 c!42170) b!250907))

(assert (= (and b!250900 (not c!42170)) b!250894))

(assert (= (and b!250907 res!122875) b!250903))

(assert (= (or b!250907 b!250894) bm!23606))

(assert (= (and b!250900 res!122867) b!250890))

(assert (= (and b!250890 c!42175) b!250888))

(assert (= (and b!250890 (not c!42175)) b!250902))

(assert (= (and b!250888 res!122872) b!250893))

(assert (= (or b!250888 b!250902) bm!23607))

(declare-fun b_lambda!8121 () Bool)

(assert (=> (not b_lambda!8121) (not b!250895)))

(declare-fun t!8794 () Bool)

(declare-fun tb!3003 () Bool)

(assert (=> (and b!250739 (= (defaultEntry!4635 thiss!1504) (defaultEntry!4635 thiss!1504)) t!8794) tb!3003))

(declare-fun result!5315 () Bool)

(assert (=> tb!3003 (= result!5315 tp_is_empty!6495)))

(assert (=> b!250895 t!8794))

(declare-fun b_and!13677 () Bool)

(assert (= b_and!13673 (and (=> t!8794 result!5315) b_and!13677)))

(declare-fun m!267205 () Bool)

(assert (=> b!250904 m!267205))

(assert (=> b!250904 m!267205))

(declare-fun m!267207 () Bool)

(assert (=> b!250904 m!267207))

(assert (=> d!60897 m!267097))

(declare-fun m!267209 () Bool)

(assert (=> b!250893 m!267209))

(declare-fun m!267211 () Bool)

(assert (=> bm!23608 m!267211))

(declare-fun m!267213 () Bool)

(assert (=> bm!23606 m!267213))

(declare-fun m!267215 () Bool)

(assert (=> b!250903 m!267215))

(declare-fun m!267217 () Bool)

(assert (=> bm!23605 m!267217))

(declare-fun m!267219 () Bool)

(assert (=> b!250895 m!267219))

(declare-fun m!267221 () Bool)

(assert (=> b!250895 m!267221))

(declare-fun m!267223 () Bool)

(assert (=> b!250895 m!267223))

(assert (=> b!250895 m!267221))

(assert (=> b!250895 m!267205))

(assert (=> b!250895 m!267205))

(declare-fun m!267225 () Bool)

(assert (=> b!250895 m!267225))

(assert (=> b!250895 m!267219))

(assert (=> b!250887 m!267205))

(assert (=> b!250887 m!267205))

(assert (=> b!250887 m!267207))

(declare-fun m!267227 () Bool)

(assert (=> b!250896 m!267227))

(assert (=> b!250905 m!267205))

(assert (=> b!250905 m!267205))

(declare-fun m!267229 () Bool)

(assert (=> b!250905 m!267229))

(declare-fun m!267231 () Bool)

(assert (=> bm!23607 m!267231))

(declare-fun m!267233 () Bool)

(assert (=> b!250906 m!267233))

(assert (=> b!250906 m!267233))

(declare-fun m!267235 () Bool)

(assert (=> b!250906 m!267235))

(assert (=> b!250906 m!267211))

(declare-fun m!267237 () Bool)

(assert (=> b!250906 m!267237))

(declare-fun m!267239 () Bool)

(assert (=> b!250906 m!267239))

(assert (=> b!250906 m!267205))

(declare-fun m!267241 () Bool)

(assert (=> b!250906 m!267241))

(declare-fun m!267243 () Bool)

(assert (=> b!250906 m!267243))

(declare-fun m!267245 () Bool)

(assert (=> b!250906 m!267245))

(declare-fun m!267247 () Bool)

(assert (=> b!250906 m!267247))

(declare-fun m!267249 () Bool)

(assert (=> b!250906 m!267249))

(assert (=> b!250906 m!267243))

(declare-fun m!267251 () Bool)

(assert (=> b!250906 m!267251))

(declare-fun m!267253 () Bool)

(assert (=> b!250906 m!267253))

(declare-fun m!267255 () Bool)

(assert (=> b!250906 m!267255))

(assert (=> b!250906 m!267247))

(declare-fun m!267257 () Bool)

(assert (=> b!250906 m!267257))

(assert (=> b!250906 m!267257))

(declare-fun m!267259 () Bool)

(assert (=> b!250906 m!267259))

(declare-fun m!267261 () Bool)

(assert (=> b!250906 m!267261))

(assert (=> b!250748 d!60897))

(declare-fun d!60899 () Bool)

(declare-fun res!122880 () Bool)

(declare-fun e!162743 () Bool)

(assert (=> d!60899 (=> res!122880 e!162743)))

(assert (=> d!60899 (= res!122880 (= (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60899 (= (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 #b00000000000000000000000000000000) e!162743)))

(declare-fun b!250914 () Bool)

(declare-fun e!162744 () Bool)

(assert (=> b!250914 (= e!162743 e!162744)))

(declare-fun res!122881 () Bool)

(assert (=> b!250914 (=> (not res!122881) (not e!162744))))

(assert (=> b!250914 (= res!122881 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!250915 () Bool)

(assert (=> b!250915 (= e!162744 (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60899 (not res!122880)) b!250914))

(assert (= (and b!250914 res!122881) b!250915))

(assert (=> d!60899 m!267205))

(declare-fun m!267263 () Bool)

(assert (=> b!250915 m!267263))

(assert (=> bm!23575 d!60899))

(declare-fun d!60901 () Bool)

(declare-fun lt!125807 () SeekEntryResult!1134)

(assert (=> d!60901 (and (or ((_ is Undefined!1134) lt!125807) (not ((_ is Found!1134) lt!125807)) (and (bvsge (index!6707 lt!125807) #b00000000000000000000000000000000) (bvslt (index!6707 lt!125807) (size!6181 (_keys!6773 thiss!1504))))) (or ((_ is Undefined!1134) lt!125807) ((_ is Found!1134) lt!125807) (not ((_ is MissingZero!1134) lt!125807)) (and (bvsge (index!6706 lt!125807) #b00000000000000000000000000000000) (bvslt (index!6706 lt!125807) (size!6181 (_keys!6773 thiss!1504))))) (or ((_ is Undefined!1134) lt!125807) ((_ is Found!1134) lt!125807) ((_ is MissingZero!1134) lt!125807) (not ((_ is MissingVacant!1134) lt!125807)) (and (bvsge (index!6709 lt!125807) #b00000000000000000000000000000000) (bvslt (index!6709 lt!125807) (size!6181 (_keys!6773 thiss!1504))))) (or ((_ is Undefined!1134) lt!125807) (ite ((_ is Found!1134) lt!125807) (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6707 lt!125807)) key!932) (ite ((_ is MissingZero!1134) lt!125807) (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6706 lt!125807)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1134) lt!125807) (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6709 lt!125807)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!162753 () SeekEntryResult!1134)

(assert (=> d!60901 (= lt!125807 e!162753)))

(declare-fun c!42182 () Bool)

(declare-fun lt!125805 () SeekEntryResult!1134)

(assert (=> d!60901 (= c!42182 (and ((_ is Intermediate!1134) lt!125805) (undefined!1946 lt!125805)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12310 (_ BitVec 32)) SeekEntryResult!1134)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60901 (= lt!125805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10825 thiss!1504)) key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(assert (=> d!60901 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60901 (= (seekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)) lt!125807)))

(declare-fun b!250928 () Bool)

(declare-fun c!42183 () Bool)

(declare-fun lt!125806 () (_ BitVec 64))

(assert (=> b!250928 (= c!42183 (= lt!125806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162751 () SeekEntryResult!1134)

(declare-fun e!162752 () SeekEntryResult!1134)

(assert (=> b!250928 (= e!162751 e!162752)))

(declare-fun b!250929 () Bool)

(assert (=> b!250929 (= e!162752 (MissingZero!1134 (index!6708 lt!125805)))))

(declare-fun b!250930 () Bool)

(assert (=> b!250930 (= e!162751 (Found!1134 (index!6708 lt!125805)))))

(declare-fun b!250931 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12310 (_ BitVec 32)) SeekEntryResult!1134)

(assert (=> b!250931 (= e!162752 (seekKeyOrZeroReturnVacant!0 (x!24702 lt!125805) (index!6708 lt!125805) (index!6708 lt!125805) key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun b!250932 () Bool)

(assert (=> b!250932 (= e!162753 e!162751)))

(assert (=> b!250932 (= lt!125806 (select (arr!5836 (_keys!6773 thiss!1504)) (index!6708 lt!125805)))))

(declare-fun c!42184 () Bool)

(assert (=> b!250932 (= c!42184 (= lt!125806 key!932))))

(declare-fun b!250933 () Bool)

(assert (=> b!250933 (= e!162753 Undefined!1134)))

(assert (= (and d!60901 c!42182) b!250933))

(assert (= (and d!60901 (not c!42182)) b!250932))

(assert (= (and b!250932 c!42184) b!250930))

(assert (= (and b!250932 (not c!42184)) b!250928))

(assert (= (and b!250928 c!42183) b!250929))

(assert (= (and b!250928 (not c!42183)) b!250931))

(declare-fun m!267265 () Bool)

(assert (=> d!60901 m!267265))

(declare-fun m!267267 () Bool)

(assert (=> d!60901 m!267267))

(declare-fun m!267269 () Bool)

(assert (=> d!60901 m!267269))

(declare-fun m!267271 () Bool)

(assert (=> d!60901 m!267271))

(assert (=> d!60901 m!267097))

(assert (=> d!60901 m!267267))

(declare-fun m!267273 () Bool)

(assert (=> d!60901 m!267273))

(declare-fun m!267275 () Bool)

(assert (=> b!250931 m!267275))

(declare-fun m!267277 () Bool)

(assert (=> b!250932 m!267277))

(assert (=> b!250731 d!60901))

(declare-fun d!60903 () Bool)

(assert (=> d!60903 (= (array_inv!3843 (_keys!6773 thiss!1504)) (bvsge (size!6181 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250739 d!60903))

(declare-fun d!60905 () Bool)

(assert (=> d!60905 (= (array_inv!3844 (_values!4618 thiss!1504)) (bvsge (size!6180 (_values!4618 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250739 d!60905))

(declare-fun d!60907 () Bool)

(declare-fun e!162756 () Bool)

(assert (=> d!60907 e!162756))

(declare-fun res!122886 () Bool)

(assert (=> d!60907 (=> (not res!122886) (not e!162756))))

(declare-fun lt!125812 () SeekEntryResult!1134)

(assert (=> d!60907 (= res!122886 ((_ is Found!1134) lt!125812))))

(assert (=> d!60907 (= lt!125812 (seekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun lt!125813 () Unit!7757)

(declare-fun choose!1198 (array!12310 array!12308 (_ BitVec 32) (_ BitVec 32) V!8307 V!8307 (_ BitVec 64) Int) Unit!7757)

(assert (=> d!60907 (= lt!125813 (choose!1198 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)))))

(assert (=> d!60907 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60907 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!400 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)) lt!125813)))

(declare-fun b!250938 () Bool)

(declare-fun res!122887 () Bool)

(assert (=> b!250938 (=> (not res!122887) (not e!162756))))

(assert (=> b!250938 (= res!122887 (inRange!0 (index!6707 lt!125812) (mask!10825 thiss!1504)))))

(declare-fun b!250939 () Bool)

(assert (=> b!250939 (= e!162756 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6707 lt!125812)) key!932))))

(assert (=> b!250939 (and (bvsge (index!6707 lt!125812) #b00000000000000000000000000000000) (bvslt (index!6707 lt!125812) (size!6181 (_keys!6773 thiss!1504))))))

(assert (= (and d!60907 res!122886) b!250938))

(assert (= (and b!250938 res!122887) b!250939))

(assert (=> d!60907 m!267093))

(declare-fun m!267279 () Bool)

(assert (=> d!60907 m!267279))

(assert (=> d!60907 m!267097))

(declare-fun m!267281 () Bool)

(assert (=> b!250938 m!267281))

(declare-fun m!267283 () Bool)

(assert (=> b!250939 m!267283))

(assert (=> b!250737 d!60907))

(declare-fun b!250948 () Bool)

(declare-fun res!122897 () Bool)

(declare-fun e!162761 () Bool)

(assert (=> b!250948 (=> (not res!122897) (not e!162761))))

(assert (=> b!250948 (= res!122897 (not (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) index!297))))))

(declare-fun b!250951 () Bool)

(declare-fun e!162762 () Bool)

(assert (=> b!250951 (= e!162762 (= (arrayCountValidKeys!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!250949 () Bool)

(declare-fun res!122899 () Bool)

(assert (=> b!250949 (=> (not res!122899) (not e!162761))))

(assert (=> b!250949 (= res!122899 (validKeyInArray!0 key!932))))

(declare-fun d!60909 () Bool)

(assert (=> d!60909 e!162762))

(declare-fun res!122896 () Bool)

(assert (=> d!60909 (=> (not res!122896) (not e!162762))))

(assert (=> d!60909 (= res!122896 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6181 (_keys!6773 thiss!1504)))))))

(declare-fun lt!125816 () Unit!7757)

(declare-fun choose!1 (array!12310 (_ BitVec 32) (_ BitVec 64)) Unit!7757)

(assert (=> d!60909 (= lt!125816 (choose!1 (_keys!6773 thiss!1504) index!297 key!932))))

(assert (=> d!60909 e!162761))

(declare-fun res!122898 () Bool)

(assert (=> d!60909 (=> (not res!122898) (not e!162761))))

(assert (=> d!60909 (= res!122898 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6181 (_keys!6773 thiss!1504)))))))

(assert (=> d!60909 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6773 thiss!1504) index!297 key!932) lt!125816)))

(declare-fun b!250950 () Bool)

(assert (=> b!250950 (= e!162761 (bvslt (size!6181 (_keys!6773 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!60909 res!122898) b!250948))

(assert (= (and b!250948 res!122897) b!250949))

(assert (= (and b!250949 res!122899) b!250950))

(assert (= (and d!60909 res!122896) b!250951))

(declare-fun m!267285 () Bool)

(assert (=> b!250948 m!267285))

(assert (=> b!250948 m!267285))

(declare-fun m!267287 () Bool)

(assert (=> b!250948 m!267287))

(assert (=> b!250951 m!267107))

(declare-fun m!267289 () Bool)

(assert (=> b!250951 m!267289))

(assert (=> b!250951 m!267109))

(declare-fun m!267291 () Bool)

(assert (=> b!250949 m!267291))

(declare-fun m!267293 () Bool)

(assert (=> d!60909 m!267293))

(assert (=> b!250747 d!60909))

(declare-fun d!60911 () Bool)

(assert (=> d!60911 (= (validMask!0 (mask!10825 thiss!1504)) (and (or (= (mask!10825 thiss!1504) #b00000000000000000000000000000111) (= (mask!10825 thiss!1504) #b00000000000000000000000000001111) (= (mask!10825 thiss!1504) #b00000000000000000000000000011111) (= (mask!10825 thiss!1504) #b00000000000000000000000000111111) (= (mask!10825 thiss!1504) #b00000000000000000000000001111111) (= (mask!10825 thiss!1504) #b00000000000000000000000011111111) (= (mask!10825 thiss!1504) #b00000000000000000000000111111111) (= (mask!10825 thiss!1504) #b00000000000000000000001111111111) (= (mask!10825 thiss!1504) #b00000000000000000000011111111111) (= (mask!10825 thiss!1504) #b00000000000000000000111111111111) (= (mask!10825 thiss!1504) #b00000000000000000001111111111111) (= (mask!10825 thiss!1504) #b00000000000000000011111111111111) (= (mask!10825 thiss!1504) #b00000000000000000111111111111111) (= (mask!10825 thiss!1504) #b00000000000000001111111111111111) (= (mask!10825 thiss!1504) #b00000000000000011111111111111111) (= (mask!10825 thiss!1504) #b00000000000000111111111111111111) (= (mask!10825 thiss!1504) #b00000000000001111111111111111111) (= (mask!10825 thiss!1504) #b00000000000011111111111111111111) (= (mask!10825 thiss!1504) #b00000000000111111111111111111111) (= (mask!10825 thiss!1504) #b00000000001111111111111111111111) (= (mask!10825 thiss!1504) #b00000000011111111111111111111111) (= (mask!10825 thiss!1504) #b00000000111111111111111111111111) (= (mask!10825 thiss!1504) #b00000001111111111111111111111111) (= (mask!10825 thiss!1504) #b00000011111111111111111111111111) (= (mask!10825 thiss!1504) #b00000111111111111111111111111111) (= (mask!10825 thiss!1504) #b00001111111111111111111111111111) (= (mask!10825 thiss!1504) #b00011111111111111111111111111111) (= (mask!10825 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10825 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!250747 d!60911))

(declare-fun bm!23611 () Bool)

(declare-fun call!23614 () Bool)

(assert (=> bm!23611 (= call!23614 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!125679 (mask!10825 thiss!1504)))))

(declare-fun b!250960 () Bool)

(declare-fun e!162769 () Bool)

(assert (=> b!250960 (= e!162769 call!23614)))

(declare-fun d!60913 () Bool)

(declare-fun res!122905 () Bool)

(declare-fun e!162771 () Bool)

(assert (=> d!60913 (=> res!122905 e!162771)))

(assert (=> d!60913 (= res!122905 (bvsge #b00000000000000000000000000000000 (size!6181 lt!125679)))))

(assert (=> d!60913 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125679 (mask!10825 thiss!1504)) e!162771)))

(declare-fun b!250961 () Bool)

(declare-fun e!162770 () Bool)

(assert (=> b!250961 (= e!162769 e!162770)))

(declare-fun lt!125824 () (_ BitVec 64))

(assert (=> b!250961 (= lt!125824 (select (arr!5836 lt!125679) #b00000000000000000000000000000000))))

(declare-fun lt!125823 () Unit!7757)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12310 (_ BitVec 64) (_ BitVec 32)) Unit!7757)

(assert (=> b!250961 (= lt!125823 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125679 lt!125824 #b00000000000000000000000000000000))))

(assert (=> b!250961 (arrayContainsKey!0 lt!125679 lt!125824 #b00000000000000000000000000000000)))

(declare-fun lt!125825 () Unit!7757)

(assert (=> b!250961 (= lt!125825 lt!125823)))

(declare-fun res!122904 () Bool)

(assert (=> b!250961 (= res!122904 (= (seekEntryOrOpen!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) lt!125679 (mask!10825 thiss!1504)) (Found!1134 #b00000000000000000000000000000000)))))

(assert (=> b!250961 (=> (not res!122904) (not e!162770))))

(declare-fun b!250962 () Bool)

(assert (=> b!250962 (= e!162770 call!23614)))

(declare-fun b!250963 () Bool)

(assert (=> b!250963 (= e!162771 e!162769)))

(declare-fun c!42187 () Bool)

(assert (=> b!250963 (= c!42187 (validKeyInArray!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(assert (= (and d!60913 (not res!122905)) b!250963))

(assert (= (and b!250963 c!42187) b!250961))

(assert (= (and b!250963 (not c!42187)) b!250960))

(assert (= (and b!250961 res!122904) b!250962))

(assert (= (or b!250962 b!250960) bm!23611))

(declare-fun m!267295 () Bool)

(assert (=> bm!23611 m!267295))

(declare-fun m!267297 () Bool)

(assert (=> b!250961 m!267297))

(declare-fun m!267299 () Bool)

(assert (=> b!250961 m!267299))

(declare-fun m!267301 () Bool)

(assert (=> b!250961 m!267301))

(assert (=> b!250961 m!267297))

(declare-fun m!267303 () Bool)

(assert (=> b!250961 m!267303))

(assert (=> b!250963 m!267297))

(assert (=> b!250963 m!267297))

(declare-fun m!267305 () Bool)

(assert (=> b!250963 m!267305))

(assert (=> b!250747 d!60913))

(declare-fun d!60915 () Bool)

(declare-fun lt!125828 () (_ BitVec 32))

(assert (=> d!60915 (and (bvsge lt!125828 #b00000000000000000000000000000000) (bvsle lt!125828 (bvsub (size!6181 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun e!162777 () (_ BitVec 32))

(assert (=> d!60915 (= lt!125828 e!162777)))

(declare-fun c!42193 () Bool)

(assert (=> d!60915 (= c!42193 (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60915 (and (bvsle #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6181 (_keys!6773 thiss!1504)) (size!6181 lt!125679)))))

(assert (=> d!60915 (= (arrayCountValidKeys!0 lt!125679 #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) lt!125828)))

(declare-fun bm!23614 () Bool)

(declare-fun call!23617 () (_ BitVec 32))

(assert (=> bm!23614 (= call!23617 (arrayCountValidKeys!0 lt!125679 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!250972 () Bool)

(declare-fun e!162776 () (_ BitVec 32))

(assert (=> b!250972 (= e!162776 (bvadd #b00000000000000000000000000000001 call!23617))))

(declare-fun b!250973 () Bool)

(assert (=> b!250973 (= e!162777 e!162776)))

(declare-fun c!42192 () Bool)

(assert (=> b!250973 (= c!42192 (validKeyInArray!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun b!250974 () Bool)

(assert (=> b!250974 (= e!162777 #b00000000000000000000000000000000)))

(declare-fun b!250975 () Bool)

(assert (=> b!250975 (= e!162776 call!23617)))

(assert (= (and d!60915 c!42193) b!250974))

(assert (= (and d!60915 (not c!42193)) b!250973))

(assert (= (and b!250973 c!42192) b!250972))

(assert (= (and b!250973 (not c!42192)) b!250975))

(assert (= (or b!250972 b!250975) bm!23614))

(declare-fun m!267307 () Bool)

(assert (=> bm!23614 m!267307))

(assert (=> b!250973 m!267297))

(assert (=> b!250973 m!267297))

(assert (=> b!250973 m!267305))

(assert (=> b!250747 d!60915))

(declare-fun d!60917 () Bool)

(declare-fun e!162780 () Bool)

(assert (=> d!60917 e!162780))

(declare-fun res!122908 () Bool)

(assert (=> d!60917 (=> (not res!122908) (not e!162780))))

(assert (=> d!60917 (= res!122908 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6181 (_keys!6773 thiss!1504)))))))

(declare-fun lt!125831 () Unit!7757)

(declare-fun choose!41 (array!12310 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3746) Unit!7757)

(assert (=> d!60917 (= lt!125831 (choose!41 (_keys!6773 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3743))))

(assert (=> d!60917 (bvslt (size!6181 (_keys!6773 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60917 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6773 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3743) lt!125831)))

(declare-fun b!250978 () Bool)

(assert (=> b!250978 (= e!162780 (arrayNoDuplicates!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000000 Nil!3743))))

(assert (= (and d!60917 res!122908) b!250978))

(declare-fun m!267309 () Bool)

(assert (=> d!60917 m!267309))

(assert (=> b!250978 m!267107))

(declare-fun m!267311 () Bool)

(assert (=> b!250978 m!267311))

(assert (=> b!250747 d!60917))

(assert (=> b!250747 d!60899))

(declare-fun d!60919 () Bool)

(declare-fun e!162783 () Bool)

(assert (=> d!60919 e!162783))

(declare-fun res!122911 () Bool)

(assert (=> d!60919 (=> (not res!122911) (not e!162783))))

(assert (=> d!60919 (= res!122911 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6181 (_keys!6773 thiss!1504)))))))

(declare-fun lt!125834 () Unit!7757)

(declare-fun choose!102 ((_ BitVec 64) array!12310 (_ BitVec 32) (_ BitVec 32)) Unit!7757)

(assert (=> d!60919 (= lt!125834 (choose!102 key!932 (_keys!6773 thiss!1504) index!297 (mask!10825 thiss!1504)))))

(assert (=> d!60919 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60919 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) index!297 (mask!10825 thiss!1504)) lt!125834)))

(declare-fun b!250981 () Bool)

(assert (=> b!250981 (= e!162783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (mask!10825 thiss!1504)))))

(assert (= (and d!60919 res!122911) b!250981))

(declare-fun m!267313 () Bool)

(assert (=> d!60919 m!267313))

(assert (=> d!60919 m!267097))

(assert (=> b!250981 m!267107))

(declare-fun m!267315 () Bool)

(assert (=> b!250981 m!267315))

(assert (=> b!250747 d!60919))

(declare-fun d!60921 () Bool)

(declare-fun lt!125835 () (_ BitVec 32))

(assert (=> d!60921 (and (bvsge lt!125835 #b00000000000000000000000000000000) (bvsle lt!125835 (bvsub (size!6181 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!162785 () (_ BitVec 32))

(assert (=> d!60921 (= lt!125835 e!162785)))

(declare-fun c!42195 () Bool)

(assert (=> d!60921 (= c!42195 (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60921 (and (bvsle #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6181 (_keys!6773 thiss!1504)) (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60921 (= (arrayCountValidKeys!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) lt!125835)))

(declare-fun bm!23615 () Bool)

(declare-fun call!23618 () (_ BitVec 32))

(assert (=> bm!23615 (= call!23618 (arrayCountValidKeys!0 (_keys!6773 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!250982 () Bool)

(declare-fun e!162784 () (_ BitVec 32))

(assert (=> b!250982 (= e!162784 (bvadd #b00000000000000000000000000000001 call!23618))))

(declare-fun b!250983 () Bool)

(assert (=> b!250983 (= e!162785 e!162784)))

(declare-fun c!42194 () Bool)

(assert (=> b!250983 (= c!42194 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250984 () Bool)

(assert (=> b!250984 (= e!162785 #b00000000000000000000000000000000)))

(declare-fun b!250985 () Bool)

(assert (=> b!250985 (= e!162784 call!23618)))

(assert (= (and d!60921 c!42195) b!250984))

(assert (= (and d!60921 (not c!42195)) b!250983))

(assert (= (and b!250983 c!42194) b!250982))

(assert (= (and b!250983 (not c!42194)) b!250985))

(assert (= (or b!250982 b!250985) bm!23615))

(declare-fun m!267317 () Bool)

(assert (=> bm!23615 m!267317))

(assert (=> b!250983 m!267205))

(assert (=> b!250983 m!267205))

(assert (=> b!250983 m!267207))

(assert (=> b!250747 d!60921))

(declare-fun d!60923 () Bool)

(declare-fun res!122920 () Bool)

(declare-fun e!162796 () Bool)

(assert (=> d!60923 (=> res!122920 e!162796)))

(assert (=> d!60923 (= res!122920 (bvsge #b00000000000000000000000000000000 (size!6181 lt!125679)))))

(assert (=> d!60923 (= (arrayNoDuplicates!0 lt!125679 #b00000000000000000000000000000000 Nil!3743) e!162796)))

(declare-fun b!250996 () Bool)

(declare-fun e!162795 () Bool)

(declare-fun contains!1818 (List!3746 (_ BitVec 64)) Bool)

(assert (=> b!250996 (= e!162795 (contains!1818 Nil!3743 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun b!250997 () Bool)

(declare-fun e!162794 () Bool)

(declare-fun e!162797 () Bool)

(assert (=> b!250997 (= e!162794 e!162797)))

(declare-fun c!42198 () Bool)

(assert (=> b!250997 (= c!42198 (validKeyInArray!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun bm!23618 () Bool)

(declare-fun call!23621 () Bool)

(assert (=> bm!23618 (= call!23621 (arrayNoDuplicates!0 lt!125679 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42198 (Cons!3742 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) Nil!3743) Nil!3743)))))

(declare-fun b!250998 () Bool)

(assert (=> b!250998 (= e!162796 e!162794)))

(declare-fun res!122919 () Bool)

(assert (=> b!250998 (=> (not res!122919) (not e!162794))))

(assert (=> b!250998 (= res!122919 (not e!162795))))

(declare-fun res!122918 () Bool)

(assert (=> b!250998 (=> (not res!122918) (not e!162795))))

(assert (=> b!250998 (= res!122918 (validKeyInArray!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun b!250999 () Bool)

(assert (=> b!250999 (= e!162797 call!23621)))

(declare-fun b!251000 () Bool)

(assert (=> b!251000 (= e!162797 call!23621)))

(assert (= (and d!60923 (not res!122920)) b!250998))

(assert (= (and b!250998 res!122918) b!250996))

(assert (= (and b!250998 res!122919) b!250997))

(assert (= (and b!250997 c!42198) b!250999))

(assert (= (and b!250997 (not c!42198)) b!251000))

(assert (= (or b!250999 b!251000) bm!23618))

(assert (=> b!250996 m!267297))

(assert (=> b!250996 m!267297))

(declare-fun m!267319 () Bool)

(assert (=> b!250996 m!267319))

(assert (=> b!250997 m!267297))

(assert (=> b!250997 m!267297))

(assert (=> b!250997 m!267305))

(assert (=> bm!23618 m!267297))

(declare-fun m!267321 () Bool)

(assert (=> bm!23618 m!267321))

(assert (=> b!250998 m!267297))

(assert (=> b!250998 m!267297))

(assert (=> b!250998 m!267305))

(assert (=> b!250747 d!60923))

(declare-fun d!60925 () Bool)

(assert (=> d!60925 (= (inRange!0 (ite c!42134 (index!6706 lt!125677) (index!6709 lt!125677)) (mask!10825 thiss!1504)) (and (bvsge (ite c!42134 (index!6706 lt!125677) (index!6709 lt!125677)) #b00000000000000000000000000000000) (bvslt (ite c!42134 (index!6706 lt!125677) (index!6709 lt!125677)) (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23574 d!60925))

(declare-fun d!60927 () Bool)

(declare-fun res!122927 () Bool)

(declare-fun e!162800 () Bool)

(assert (=> d!60927 (=> (not res!122927) (not e!162800))))

(declare-fun simpleValid!263 (LongMapFixedSize!3708) Bool)

(assert (=> d!60927 (= res!122927 (simpleValid!263 thiss!1504))))

(assert (=> d!60927 (= (valid!1441 thiss!1504) e!162800)))

(declare-fun b!251007 () Bool)

(declare-fun res!122928 () Bool)

(assert (=> b!251007 (=> (not res!122928) (not e!162800))))

(assert (=> b!251007 (= res!122928 (= (arrayCountValidKeys!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (_size!1903 thiss!1504)))))

(declare-fun b!251008 () Bool)

(declare-fun res!122929 () Bool)

(assert (=> b!251008 (=> (not res!122929) (not e!162800))))

(assert (=> b!251008 (= res!122929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun b!251009 () Bool)

(assert (=> b!251009 (= e!162800 (arrayNoDuplicates!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 Nil!3743))))

(assert (= (and d!60927 res!122927) b!251007))

(assert (= (and b!251007 res!122928) b!251008))

(assert (= (and b!251008 res!122929) b!251009))

(declare-fun m!267323 () Bool)

(assert (=> d!60927 m!267323))

(assert (=> b!251007 m!267109))

(declare-fun m!267325 () Bool)

(assert (=> b!251008 m!267325))

(declare-fun m!267327 () Bool)

(assert (=> b!251009 m!267327))

(assert (=> start!23934 d!60927))

(declare-fun b!251017 () Bool)

(declare-fun e!162806 () Bool)

(assert (=> b!251017 (= e!162806 tp_is_empty!6495)))

(declare-fun condMapEmpty!11044 () Bool)

(declare-fun mapDefault!11044 () ValueCell!2904)

(assert (=> mapNonEmpty!11038 (= condMapEmpty!11044 (= mapRest!11038 ((as const (Array (_ BitVec 32) ValueCell!2904)) mapDefault!11044)))))

(declare-fun mapRes!11044 () Bool)

(assert (=> mapNonEmpty!11038 (= tp!23166 (and e!162806 mapRes!11044))))

(declare-fun b!251016 () Bool)

(declare-fun e!162805 () Bool)

(assert (=> b!251016 (= e!162805 tp_is_empty!6495)))

(declare-fun mapNonEmpty!11044 () Bool)

(declare-fun tp!23176 () Bool)

(assert (=> mapNonEmpty!11044 (= mapRes!11044 (and tp!23176 e!162805))))

(declare-fun mapKey!11044 () (_ BitVec 32))

(declare-fun mapRest!11044 () (Array (_ BitVec 32) ValueCell!2904))

(declare-fun mapValue!11044 () ValueCell!2904)

(assert (=> mapNonEmpty!11044 (= mapRest!11038 (store mapRest!11044 mapKey!11044 mapValue!11044))))

(declare-fun mapIsEmpty!11044 () Bool)

(assert (=> mapIsEmpty!11044 mapRes!11044))

(assert (= (and mapNonEmpty!11038 condMapEmpty!11044) mapIsEmpty!11044))

(assert (= (and mapNonEmpty!11038 (not condMapEmpty!11044)) mapNonEmpty!11044))

(assert (= (and mapNonEmpty!11044 ((_ is ValueCellFull!2904) mapValue!11044)) b!251016))

(assert (= (and mapNonEmpty!11038 ((_ is ValueCellFull!2904) mapDefault!11044)) b!251017))

(declare-fun m!267329 () Bool)

(assert (=> mapNonEmpty!11044 m!267329))

(declare-fun b_lambda!8123 () Bool)

(assert (= b_lambda!8121 (or (and b!250739 b_free!6633) b_lambda!8123)))

(check-sat (not d!60901) (not b!250983) (not b!251009) (not b!250951) (not b!250903) (not b!250997) (not bm!23611) (not b!250963) (not b!250973) (not b!250948) (not b!250844) (not b!250895) (not d!60891) (not bm!23615) (not bm!23618) (not b!250931) (not d!60919) (not b!250978) (not bm!23587) (not b_next!6633) (not d!60895) (not b!250906) (not b!250938) (not b!250893) (not d!60917) (not b!250887) b_and!13677 (not mapNonEmpty!11044) (not b!250915) (not b!250998) (not b!250896) (not b!250905) (not bm!23607) (not b_lambda!8123) (not b!250842) (not d!60897) (not bm!23608) (not b!250961) (not d!60907) (not bm!23586) (not d!60909) (not b!251007) tp_is_empty!6495 (not b!250904) (not bm!23606) (not d!60927) (not d!60889) (not bm!23614) (not b!250981) (not b!251008) (not bm!23605) (not b!250996) (not b!250949))
(check-sat b_and!13677 (not b_next!6633))
(get-model)

(declare-fun d!60929 () Bool)

(declare-fun get!3002 (Option!304) V!8307)

(assert (=> d!60929 (= (apply!241 lt!125793 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3002 (getValueByKey!298 (toList!1900 lt!125793) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8989 () Bool)

(assert (= bs!8989 d!60929))

(declare-fun m!267331 () Bool)

(assert (=> bs!8989 m!267331))

(assert (=> bs!8989 m!267331))

(declare-fun m!267333 () Bool)

(assert (=> bs!8989 m!267333))

(assert (=> b!250903 d!60929))

(declare-fun d!60931 () Bool)

(declare-fun res!122932 () Bool)

(declare-fun e!162809 () Bool)

(assert (=> d!60931 (=> res!122932 e!162809)))

(assert (=> d!60931 (= res!122932 (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60931 (= (arrayNoDuplicates!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 Nil!3743) e!162809)))

(declare-fun b!251018 () Bool)

(declare-fun e!162808 () Bool)

(assert (=> b!251018 (= e!162808 (contains!1818 Nil!3743 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251019 () Bool)

(declare-fun e!162807 () Bool)

(declare-fun e!162810 () Bool)

(assert (=> b!251019 (= e!162807 e!162810)))

(declare-fun c!42199 () Bool)

(assert (=> b!251019 (= c!42199 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23619 () Bool)

(declare-fun call!23622 () Bool)

(assert (=> bm!23619 (= call!23622 (arrayNoDuplicates!0 (_keys!6773 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42199 (Cons!3742 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000) Nil!3743) Nil!3743)))))

(declare-fun b!251020 () Bool)

(assert (=> b!251020 (= e!162809 e!162807)))

(declare-fun res!122931 () Bool)

(assert (=> b!251020 (=> (not res!122931) (not e!162807))))

(assert (=> b!251020 (= res!122931 (not e!162808))))

(declare-fun res!122930 () Bool)

(assert (=> b!251020 (=> (not res!122930) (not e!162808))))

(assert (=> b!251020 (= res!122930 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251021 () Bool)

(assert (=> b!251021 (= e!162810 call!23622)))

(declare-fun b!251022 () Bool)

(assert (=> b!251022 (= e!162810 call!23622)))

(assert (= (and d!60931 (not res!122932)) b!251020))

(assert (= (and b!251020 res!122930) b!251018))

(assert (= (and b!251020 res!122931) b!251019))

(assert (= (and b!251019 c!42199) b!251021))

(assert (= (and b!251019 (not c!42199)) b!251022))

(assert (= (or b!251021 b!251022) bm!23619))

(assert (=> b!251018 m!267205))

(assert (=> b!251018 m!267205))

(declare-fun m!267335 () Bool)

(assert (=> b!251018 m!267335))

(assert (=> b!251019 m!267205))

(assert (=> b!251019 m!267205))

(assert (=> b!251019 m!267207))

(assert (=> bm!23619 m!267205))

(declare-fun m!267337 () Bool)

(assert (=> bm!23619 m!267337))

(assert (=> b!251020 m!267205))

(assert (=> b!251020 m!267205))

(assert (=> b!251020 m!267207))

(assert (=> b!251009 d!60931))

(declare-fun d!60933 () Bool)

(declare-fun e!162812 () Bool)

(assert (=> d!60933 e!162812))

(declare-fun res!122933 () Bool)

(assert (=> d!60933 (=> res!122933 e!162812)))

(declare-fun lt!125836 () Bool)

(assert (=> d!60933 (= res!122933 (not lt!125836))))

(declare-fun lt!125838 () Bool)

(assert (=> d!60933 (= lt!125836 lt!125838)))

(declare-fun lt!125839 () Unit!7757)

(declare-fun e!162811 () Unit!7757)

(assert (=> d!60933 (= lt!125839 e!162811)))

(declare-fun c!42200 () Bool)

(assert (=> d!60933 (= c!42200 lt!125838)))

(assert (=> d!60933 (= lt!125838 (containsKey!290 (toList!1900 lt!125793) (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60933 (= (contains!1816 lt!125793 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)) lt!125836)))

(declare-fun b!251023 () Bool)

(declare-fun lt!125837 () Unit!7757)

(assert (=> b!251023 (= e!162811 lt!125837)))

(assert (=> b!251023 (= lt!125837 (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!1900 lt!125793) (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251023 (isDefined!240 (getValueByKey!298 (toList!1900 lt!125793) (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251024 () Bool)

(declare-fun Unit!7769 () Unit!7757)

(assert (=> b!251024 (= e!162811 Unit!7769)))

(declare-fun b!251025 () Bool)

(assert (=> b!251025 (= e!162812 (isDefined!240 (getValueByKey!298 (toList!1900 lt!125793) (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!60933 c!42200) b!251023))

(assert (= (and d!60933 (not c!42200)) b!251024))

(assert (= (and d!60933 (not res!122933)) b!251025))

(assert (=> d!60933 m!267205))

(declare-fun m!267339 () Bool)

(assert (=> d!60933 m!267339))

(assert (=> b!251023 m!267205))

(declare-fun m!267341 () Bool)

(assert (=> b!251023 m!267341))

(assert (=> b!251023 m!267205))

(declare-fun m!267343 () Bool)

(assert (=> b!251023 m!267343))

(assert (=> b!251023 m!267343))

(declare-fun m!267345 () Bool)

(assert (=> b!251023 m!267345))

(assert (=> b!251025 m!267205))

(assert (=> b!251025 m!267343))

(assert (=> b!251025 m!267343))

(assert (=> b!251025 m!267345))

(assert (=> b!250905 d!60933))

(declare-fun call!23623 () Bool)

(declare-fun bm!23620 () Bool)

(assert (=> bm!23620 (= call!23623 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (mask!10825 thiss!1504)))))

(declare-fun b!251026 () Bool)

(declare-fun e!162813 () Bool)

(assert (=> b!251026 (= e!162813 call!23623)))

(declare-fun d!60935 () Bool)

(declare-fun res!122935 () Bool)

(declare-fun e!162815 () Bool)

(assert (=> d!60935 (=> res!122935 e!162815)))

(assert (=> d!60935 (= res!122935 (bvsge #b00000000000000000000000000000000 (size!6181 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))))))))

(assert (=> d!60935 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (mask!10825 thiss!1504)) e!162815)))

(declare-fun b!251027 () Bool)

(declare-fun e!162814 () Bool)

(assert (=> b!251027 (= e!162813 e!162814)))

(declare-fun lt!125841 () (_ BitVec 64))

(assert (=> b!251027 (= lt!125841 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!125840 () Unit!7757)

(assert (=> b!251027 (= lt!125840 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) lt!125841 #b00000000000000000000000000000000))))

(assert (=> b!251027 (arrayContainsKey!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) lt!125841 #b00000000000000000000000000000000)))

(declare-fun lt!125842 () Unit!7757)

(assert (=> b!251027 (= lt!125842 lt!125840)))

(declare-fun res!122934 () Bool)

(assert (=> b!251027 (= res!122934 (= (seekEntryOrOpen!0 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000) (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (mask!10825 thiss!1504)) (Found!1134 #b00000000000000000000000000000000)))))

(assert (=> b!251027 (=> (not res!122934) (not e!162814))))

(declare-fun b!251028 () Bool)

(assert (=> b!251028 (= e!162814 call!23623)))

(declare-fun b!251029 () Bool)

(assert (=> b!251029 (= e!162815 e!162813)))

(declare-fun c!42201 () Bool)

(assert (=> b!251029 (= c!42201 (validKeyInArray!0 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!60935 (not res!122935)) b!251029))

(assert (= (and b!251029 c!42201) b!251027))

(assert (= (and b!251029 (not c!42201)) b!251026))

(assert (= (and b!251027 res!122934) b!251028))

(assert (= (or b!251028 b!251026) bm!23620))

(declare-fun m!267347 () Bool)

(assert (=> bm!23620 m!267347))

(declare-fun m!267349 () Bool)

(assert (=> b!251027 m!267349))

(declare-fun m!267351 () Bool)

(assert (=> b!251027 m!267351))

(declare-fun m!267353 () Bool)

(assert (=> b!251027 m!267353))

(assert (=> b!251027 m!267349))

(declare-fun m!267355 () Bool)

(assert (=> b!251027 m!267355))

(assert (=> b!251029 m!267349))

(assert (=> b!251029 m!267349))

(declare-fun m!267357 () Bool)

(assert (=> b!251029 m!267357))

(assert (=> b!250981 d!60935))

(assert (=> d!60889 d!60901))

(declare-fun bm!23625 () Bool)

(declare-fun call!23628 () Bool)

(assert (=> bm!23625 (= call!23628 (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun d!60937 () Bool)

(declare-fun e!162825 () Bool)

(assert (=> d!60937 e!162825))

(declare-fun c!42206 () Bool)

(declare-fun lt!125845 () SeekEntryResult!1134)

(assert (=> d!60937 (= c!42206 ((_ is MissingZero!1134) lt!125845))))

(assert (=> d!60937 (= lt!125845 (seekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(assert (=> d!60937 true))

(declare-fun _$34!1110 () Unit!7757)

(assert (=> d!60937 (= (choose!1196 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)) _$34!1110)))

(declare-fun b!251046 () Bool)

(declare-fun res!122946 () Bool)

(declare-fun e!162826 () Bool)

(assert (=> b!251046 (=> (not res!122946) (not e!162826))))

(declare-fun call!23629 () Bool)

(assert (=> b!251046 (= res!122946 call!23629)))

(declare-fun e!162827 () Bool)

(assert (=> b!251046 (= e!162827 e!162826)))

(declare-fun b!251047 () Bool)

(assert (=> b!251047 (= e!162827 ((_ is Undefined!1134) lt!125845))))

(declare-fun b!251048 () Bool)

(assert (=> b!251048 (= e!162826 (not call!23628))))

(declare-fun b!251049 () Bool)

(declare-fun e!162824 () Bool)

(assert (=> b!251049 (= e!162824 (not call!23628))))

(declare-fun b!251050 () Bool)

(assert (=> b!251050 (= e!162825 e!162824)))

(declare-fun res!122944 () Bool)

(assert (=> b!251050 (= res!122944 call!23629)))

(assert (=> b!251050 (=> (not res!122944) (not e!162824))))

(declare-fun b!251051 () Bool)

(declare-fun res!122947 () Bool)

(assert (=> b!251051 (= res!122947 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6706 lt!125845)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251051 (=> (not res!122947) (not e!162824))))

(declare-fun b!251052 () Bool)

(declare-fun res!122945 () Bool)

(assert (=> b!251052 (=> (not res!122945) (not e!162826))))

(assert (=> b!251052 (= res!122945 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6709 lt!125845)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23626 () Bool)

(assert (=> bm!23626 (= call!23629 (inRange!0 (ite c!42206 (index!6706 lt!125845) (index!6709 lt!125845)) (mask!10825 thiss!1504)))))

(declare-fun b!251053 () Bool)

(assert (=> b!251053 (= e!162825 e!162827)))

(declare-fun c!42207 () Bool)

(assert (=> b!251053 (= c!42207 ((_ is MissingVacant!1134) lt!125845))))

(assert (= (and d!60937 c!42206) b!251050))

(assert (= (and d!60937 (not c!42206)) b!251053))

(assert (= (and b!251050 res!122944) b!251051))

(assert (= (and b!251051 res!122947) b!251049))

(assert (= (and b!251053 c!42207) b!251046))

(assert (= (and b!251053 (not c!42207)) b!251047))

(assert (= (and b!251046 res!122946) b!251052))

(assert (= (and b!251052 res!122945) b!251048))

(assert (= (or b!251050 b!251046) bm!23626))

(assert (= (or b!251049 b!251048) bm!23625))

(assert (=> bm!23625 m!267099))

(declare-fun m!267359 () Bool)

(assert (=> b!251052 m!267359))

(assert (=> d!60937 m!267093))

(declare-fun m!267361 () Bool)

(assert (=> b!251051 m!267361))

(declare-fun m!267363 () Bool)

(assert (=> bm!23626 m!267363))

(assert (=> d!60889 d!60937))

(assert (=> d!60889 d!60911))

(assert (=> bm!23586 d!60899))

(declare-fun d!60939 () Bool)

(assert (=> d!60939 (= (inRange!0 (ite c!42154 (index!6706 lt!125716) (index!6709 lt!125716)) (mask!10825 thiss!1504)) (and (bvsge (ite c!42154 (index!6706 lt!125716) (index!6709 lt!125716)) #b00000000000000000000000000000000) (bvslt (ite c!42154 (index!6706 lt!125716) (index!6709 lt!125716)) (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23587 d!60939))

(declare-fun d!60941 () Bool)

(declare-fun lt!125846 () (_ BitVec 32))

(assert (=> d!60941 (and (bvsge lt!125846 #b00000000000000000000000000000000) (bvsle lt!125846 (bvsub (size!6181 (_keys!6773 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!162829 () (_ BitVec 32))

(assert (=> d!60941 (= lt!125846 e!162829)))

(declare-fun c!42209 () Bool)

(assert (=> d!60941 (= c!42209 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60941 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6181 (_keys!6773 thiss!1504)) (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60941 (= (arrayCountValidKeys!0 (_keys!6773 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))) lt!125846)))

(declare-fun bm!23627 () Bool)

(declare-fun call!23630 () (_ BitVec 32))

(assert (=> bm!23627 (= call!23630 (arrayCountValidKeys!0 (_keys!6773 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!251054 () Bool)

(declare-fun e!162828 () (_ BitVec 32))

(assert (=> b!251054 (= e!162828 (bvadd #b00000000000000000000000000000001 call!23630))))

(declare-fun b!251055 () Bool)

(assert (=> b!251055 (= e!162829 e!162828)))

(declare-fun c!42208 () Bool)

(assert (=> b!251055 (= c!42208 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251056 () Bool)

(assert (=> b!251056 (= e!162829 #b00000000000000000000000000000000)))

(declare-fun b!251057 () Bool)

(assert (=> b!251057 (= e!162828 call!23630)))

(assert (= (and d!60941 c!42209) b!251056))

(assert (= (and d!60941 (not c!42209)) b!251055))

(assert (= (and b!251055 c!42208) b!251054))

(assert (= (and b!251055 (not c!42208)) b!251057))

(assert (= (or b!251054 b!251057) bm!23627))

(declare-fun m!267365 () Bool)

(assert (=> bm!23627 m!267365))

(declare-fun m!267367 () Bool)

(assert (=> b!251055 m!267367))

(assert (=> b!251055 m!267367))

(declare-fun m!267369 () Bool)

(assert (=> b!251055 m!267369))

(assert (=> bm!23615 d!60941))

(assert (=> d!60907 d!60901))

(declare-fun d!60943 () Bool)

(declare-fun e!162832 () Bool)

(assert (=> d!60943 e!162832))

(declare-fun res!122953 () Bool)

(assert (=> d!60943 (=> (not res!122953) (not e!162832))))

(declare-fun lt!125849 () SeekEntryResult!1134)

(assert (=> d!60943 (= res!122953 ((_ is Found!1134) lt!125849))))

(assert (=> d!60943 (= lt!125849 (seekEntryOrOpen!0 key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(assert (=> d!60943 true))

(declare-fun _$33!168 () Unit!7757)

(assert (=> d!60943 (= (choose!1198 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 (defaultEntry!4635 thiss!1504)) _$33!168)))

(declare-fun b!251062 () Bool)

(declare-fun res!122952 () Bool)

(assert (=> b!251062 (=> (not res!122952) (not e!162832))))

(assert (=> b!251062 (= res!122952 (inRange!0 (index!6707 lt!125849) (mask!10825 thiss!1504)))))

(declare-fun b!251063 () Bool)

(assert (=> b!251063 (= e!162832 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6707 lt!125849)) key!932))))

(assert (= (and d!60943 res!122953) b!251062))

(assert (= (and b!251062 res!122952) b!251063))

(assert (=> d!60943 m!267093))

(declare-fun m!267371 () Bool)

(assert (=> b!251062 m!267371))

(declare-fun m!267373 () Bool)

(assert (=> b!251063 m!267373))

(assert (=> d!60907 d!60943))

(assert (=> d!60907 d!60911))

(assert (=> d!60897 d!60911))

(declare-fun d!60945 () Bool)

(declare-fun e!162834 () Bool)

(assert (=> d!60945 e!162834))

(declare-fun res!122954 () Bool)

(assert (=> d!60945 (=> res!122954 e!162834)))

(declare-fun lt!125850 () Bool)

(assert (=> d!60945 (= res!122954 (not lt!125850))))

(declare-fun lt!125852 () Bool)

(assert (=> d!60945 (= lt!125850 lt!125852)))

(declare-fun lt!125853 () Unit!7757)

(declare-fun e!162833 () Unit!7757)

(assert (=> d!60945 (= lt!125853 e!162833)))

(declare-fun c!42210 () Bool)

(assert (=> d!60945 (= c!42210 lt!125852)))

(assert (=> d!60945 (= lt!125852 (containsKey!290 (toList!1900 lt!125793) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60945 (= (contains!1816 lt!125793 #b1000000000000000000000000000000000000000000000000000000000000000) lt!125850)))

(declare-fun b!251064 () Bool)

(declare-fun lt!125851 () Unit!7757)

(assert (=> b!251064 (= e!162833 lt!125851)))

(assert (=> b!251064 (= lt!125851 (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!1900 lt!125793) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251064 (isDefined!240 (getValueByKey!298 (toList!1900 lt!125793) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251065 () Bool)

(declare-fun Unit!7770 () Unit!7757)

(assert (=> b!251065 (= e!162833 Unit!7770)))

(declare-fun b!251066 () Bool)

(assert (=> b!251066 (= e!162834 (isDefined!240 (getValueByKey!298 (toList!1900 lt!125793) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60945 c!42210) b!251064))

(assert (= (and d!60945 (not c!42210)) b!251065))

(assert (= (and d!60945 (not res!122954)) b!251066))

(declare-fun m!267375 () Bool)

(assert (=> d!60945 m!267375))

(declare-fun m!267377 () Bool)

(assert (=> b!251064 m!267377))

(declare-fun m!267379 () Bool)

(assert (=> b!251064 m!267379))

(assert (=> b!251064 m!267379))

(declare-fun m!267381 () Bool)

(assert (=> b!251064 m!267381))

(assert (=> b!251066 m!267379))

(assert (=> b!251066 m!267379))

(assert (=> b!251066 m!267381))

(assert (=> bm!23607 d!60945))

(assert (=> b!251007 d!60921))

(declare-fun d!60947 () Bool)

(assert (=> d!60947 (= (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!250983 d!60947))

(declare-fun b!251079 () Bool)

(declare-fun e!162842 () SeekEntryResult!1134)

(declare-fun e!162841 () SeekEntryResult!1134)

(assert (=> b!251079 (= e!162842 e!162841)))

(declare-fun c!42217 () Bool)

(declare-fun lt!125858 () (_ BitVec 64))

(assert (=> b!251079 (= c!42217 (= lt!125858 key!932))))

(declare-fun b!251080 () Bool)

(assert (=> b!251080 (= e!162841 (Found!1134 (index!6708 lt!125805)))))

(declare-fun b!251082 () Bool)

(declare-fun e!162843 () SeekEntryResult!1134)

(assert (=> b!251082 (= e!162843 (MissingVacant!1134 (index!6708 lt!125805)))))

(declare-fun b!251083 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!251083 (= e!162843 (seekKeyOrZeroReturnVacant!0 (bvadd (x!24702 lt!125805) #b00000000000000000000000000000001) (nextIndex!0 (index!6708 lt!125805) (x!24702 lt!125805) (mask!10825 thiss!1504)) (index!6708 lt!125805) key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun b!251084 () Bool)

(assert (=> b!251084 (= e!162842 Undefined!1134)))

(declare-fun b!251081 () Bool)

(declare-fun c!42218 () Bool)

(assert (=> b!251081 (= c!42218 (= lt!125858 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251081 (= e!162841 e!162843)))

(declare-fun lt!125859 () SeekEntryResult!1134)

(declare-fun d!60949 () Bool)

(assert (=> d!60949 (and (or ((_ is Undefined!1134) lt!125859) (not ((_ is Found!1134) lt!125859)) (and (bvsge (index!6707 lt!125859) #b00000000000000000000000000000000) (bvslt (index!6707 lt!125859) (size!6181 (_keys!6773 thiss!1504))))) (or ((_ is Undefined!1134) lt!125859) ((_ is Found!1134) lt!125859) (not ((_ is MissingVacant!1134) lt!125859)) (not (= (index!6709 lt!125859) (index!6708 lt!125805))) (and (bvsge (index!6709 lt!125859) #b00000000000000000000000000000000) (bvslt (index!6709 lt!125859) (size!6181 (_keys!6773 thiss!1504))))) (or ((_ is Undefined!1134) lt!125859) (ite ((_ is Found!1134) lt!125859) (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6707 lt!125859)) key!932) (and ((_ is MissingVacant!1134) lt!125859) (= (index!6709 lt!125859) (index!6708 lt!125805)) (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6709 lt!125859)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!60949 (= lt!125859 e!162842)))

(declare-fun c!42219 () Bool)

(assert (=> d!60949 (= c!42219 (bvsge (x!24702 lt!125805) #b01111111111111111111111111111110))))

(assert (=> d!60949 (= lt!125858 (select (arr!5836 (_keys!6773 thiss!1504)) (index!6708 lt!125805)))))

(assert (=> d!60949 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60949 (= (seekKeyOrZeroReturnVacant!0 (x!24702 lt!125805) (index!6708 lt!125805) (index!6708 lt!125805) key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)) lt!125859)))

(assert (= (and d!60949 c!42219) b!251084))

(assert (= (and d!60949 (not c!42219)) b!251079))

(assert (= (and b!251079 c!42217) b!251080))

(assert (= (and b!251079 (not c!42217)) b!251081))

(assert (= (and b!251081 c!42218) b!251082))

(assert (= (and b!251081 (not c!42218)) b!251083))

(declare-fun m!267383 () Bool)

(assert (=> b!251083 m!267383))

(assert (=> b!251083 m!267383))

(declare-fun m!267385 () Bool)

(assert (=> b!251083 m!267385))

(declare-fun m!267387 () Bool)

(assert (=> d!60949 m!267387))

(declare-fun m!267389 () Bool)

(assert (=> d!60949 m!267389))

(assert (=> d!60949 m!267277))

(assert (=> d!60949 m!267097))

(assert (=> b!250931 d!60949))

(assert (=> d!60891 d!60895))

(assert (=> d!60891 d!60897))

(declare-fun d!60951 () Bool)

(assert (=> d!60951 (contains!1816 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) key!932)))

(assert (=> d!60951 true))

(declare-fun _$17!77 () Unit!7757)

(assert (=> d!60951 (= (choose!1197 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) _$17!77)))

(declare-fun bs!8990 () Bool)

(assert (= bs!8990 d!60951))

(assert (=> bs!8990 m!267129))

(assert (=> bs!8990 m!267129))

(assert (=> bs!8990 m!267131))

(assert (=> d!60891 d!60951))

(assert (=> d!60891 d!60911))

(declare-fun d!60953 () Bool)

(assert (=> d!60953 (arrayContainsKey!0 lt!125679 lt!125824 #b00000000000000000000000000000000)))

(declare-fun lt!125862 () Unit!7757)

(declare-fun choose!13 (array!12310 (_ BitVec 64) (_ BitVec 32)) Unit!7757)

(assert (=> d!60953 (= lt!125862 (choose!13 lt!125679 lt!125824 #b00000000000000000000000000000000))))

(assert (=> d!60953 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!60953 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125679 lt!125824 #b00000000000000000000000000000000) lt!125862)))

(declare-fun bs!8991 () Bool)

(assert (= bs!8991 d!60953))

(assert (=> bs!8991 m!267301))

(declare-fun m!267391 () Bool)

(assert (=> bs!8991 m!267391))

(assert (=> b!250961 d!60953))

(declare-fun d!60955 () Bool)

(declare-fun res!122955 () Bool)

(declare-fun e!162844 () Bool)

(assert (=> d!60955 (=> res!122955 e!162844)))

(assert (=> d!60955 (= res!122955 (= (select (arr!5836 lt!125679) #b00000000000000000000000000000000) lt!125824))))

(assert (=> d!60955 (= (arrayContainsKey!0 lt!125679 lt!125824 #b00000000000000000000000000000000) e!162844)))

(declare-fun b!251085 () Bool)

(declare-fun e!162845 () Bool)

(assert (=> b!251085 (= e!162844 e!162845)))

(declare-fun res!122956 () Bool)

(assert (=> b!251085 (=> (not res!122956) (not e!162845))))

(assert (=> b!251085 (= res!122956 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 lt!125679)))))

(declare-fun b!251086 () Bool)

(assert (=> b!251086 (= e!162845 (arrayContainsKey!0 lt!125679 lt!125824 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60955 (not res!122955)) b!251085))

(assert (= (and b!251085 res!122956) b!251086))

(assert (=> d!60955 m!267297))

(declare-fun m!267393 () Bool)

(assert (=> b!251086 m!267393))

(assert (=> b!250961 d!60955))

(declare-fun d!60957 () Bool)

(declare-fun lt!125865 () SeekEntryResult!1134)

(assert (=> d!60957 (and (or ((_ is Undefined!1134) lt!125865) (not ((_ is Found!1134) lt!125865)) (and (bvsge (index!6707 lt!125865) #b00000000000000000000000000000000) (bvslt (index!6707 lt!125865) (size!6181 lt!125679)))) (or ((_ is Undefined!1134) lt!125865) ((_ is Found!1134) lt!125865) (not ((_ is MissingZero!1134) lt!125865)) (and (bvsge (index!6706 lt!125865) #b00000000000000000000000000000000) (bvslt (index!6706 lt!125865) (size!6181 lt!125679)))) (or ((_ is Undefined!1134) lt!125865) ((_ is Found!1134) lt!125865) ((_ is MissingZero!1134) lt!125865) (not ((_ is MissingVacant!1134) lt!125865)) (and (bvsge (index!6709 lt!125865) #b00000000000000000000000000000000) (bvslt (index!6709 lt!125865) (size!6181 lt!125679)))) (or ((_ is Undefined!1134) lt!125865) (ite ((_ is Found!1134) lt!125865) (= (select (arr!5836 lt!125679) (index!6707 lt!125865)) (select (arr!5836 lt!125679) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1134) lt!125865) (= (select (arr!5836 lt!125679) (index!6706 lt!125865)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1134) lt!125865) (= (select (arr!5836 lt!125679) (index!6709 lt!125865)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!162848 () SeekEntryResult!1134)

(assert (=> d!60957 (= lt!125865 e!162848)))

(declare-fun c!42220 () Bool)

(declare-fun lt!125863 () SeekEntryResult!1134)

(assert (=> d!60957 (= c!42220 (and ((_ is Intermediate!1134) lt!125863) (undefined!1946 lt!125863)))))

(assert (=> d!60957 (= lt!125863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) (mask!10825 thiss!1504)) (select (arr!5836 lt!125679) #b00000000000000000000000000000000) lt!125679 (mask!10825 thiss!1504)))))

(assert (=> d!60957 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60957 (= (seekEntryOrOpen!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) lt!125679 (mask!10825 thiss!1504)) lt!125865)))

(declare-fun b!251087 () Bool)

(declare-fun c!42221 () Bool)

(declare-fun lt!125864 () (_ BitVec 64))

(assert (=> b!251087 (= c!42221 (= lt!125864 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162846 () SeekEntryResult!1134)

(declare-fun e!162847 () SeekEntryResult!1134)

(assert (=> b!251087 (= e!162846 e!162847)))

(declare-fun b!251088 () Bool)

(assert (=> b!251088 (= e!162847 (MissingZero!1134 (index!6708 lt!125863)))))

(declare-fun b!251089 () Bool)

(assert (=> b!251089 (= e!162846 (Found!1134 (index!6708 lt!125863)))))

(declare-fun b!251090 () Bool)

(assert (=> b!251090 (= e!162847 (seekKeyOrZeroReturnVacant!0 (x!24702 lt!125863) (index!6708 lt!125863) (index!6708 lt!125863) (select (arr!5836 lt!125679) #b00000000000000000000000000000000) lt!125679 (mask!10825 thiss!1504)))))

(declare-fun b!251091 () Bool)

(assert (=> b!251091 (= e!162848 e!162846)))

(assert (=> b!251091 (= lt!125864 (select (arr!5836 lt!125679) (index!6708 lt!125863)))))

(declare-fun c!42222 () Bool)

(assert (=> b!251091 (= c!42222 (= lt!125864 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun b!251092 () Bool)

(assert (=> b!251092 (= e!162848 Undefined!1134)))

(assert (= (and d!60957 c!42220) b!251092))

(assert (= (and d!60957 (not c!42220)) b!251091))

(assert (= (and b!251091 c!42222) b!251089))

(assert (= (and b!251091 (not c!42222)) b!251087))

(assert (= (and b!251087 c!42221) b!251088))

(assert (= (and b!251087 (not c!42221)) b!251090))

(declare-fun m!267395 () Bool)

(assert (=> d!60957 m!267395))

(assert (=> d!60957 m!267297))

(declare-fun m!267397 () Bool)

(assert (=> d!60957 m!267397))

(declare-fun m!267399 () Bool)

(assert (=> d!60957 m!267399))

(declare-fun m!267401 () Bool)

(assert (=> d!60957 m!267401))

(assert (=> d!60957 m!267097))

(assert (=> d!60957 m!267397))

(assert (=> d!60957 m!267297))

(declare-fun m!267403 () Bool)

(assert (=> d!60957 m!267403))

(assert (=> b!251090 m!267297))

(declare-fun m!267405 () Bool)

(assert (=> b!251090 m!267405))

(declare-fun m!267407 () Bool)

(assert (=> b!251091 m!267407))

(assert (=> b!250961 d!60957))

(declare-fun d!60959 () Bool)

(assert (=> d!60959 (= (validKeyInArray!0 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)) (and (not (= (select (arr!5836 lt!125679) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5836 lt!125679) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!250963 d!60959))

(declare-fun d!60961 () Bool)

(declare-fun e!162851 () Bool)

(assert (=> d!60961 e!162851))

(declare-fun res!122961 () Bool)

(assert (=> d!60961 (=> (not res!122961) (not e!162851))))

(declare-fun lt!125877 () ListLongMap!3769)

(assert (=> d!60961 (= res!122961 (contains!1816 lt!125877 (_1!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))))

(declare-fun lt!125875 () List!3747)

(assert (=> d!60961 (= lt!125877 (ListLongMap!3770 lt!125875))))

(declare-fun lt!125876 () Unit!7757)

(declare-fun lt!125874 () Unit!7757)

(assert (=> d!60961 (= lt!125876 lt!125874)))

(assert (=> d!60961 (= (getValueByKey!298 lt!125875 (_1!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))) (Some!303 (_2!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!160 (List!3747 (_ BitVec 64) V!8307) Unit!7757)

(assert (=> d!60961 (= lt!125874 (lemmaContainsTupThenGetReturnValue!160 lt!125875 (_1!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))) (_2!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))))

(declare-fun insertStrictlySorted!162 (List!3747 (_ BitVec 64) V!8307) List!3747)

(assert (=> d!60961 (= lt!125875 (insertStrictlySorted!162 (toList!1900 (ite c!42171 call!23606 (ite c!42172 call!23605 call!23611))) (_1!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))) (_2!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))))

(assert (=> d!60961 (= (+!663 (ite c!42171 call!23606 (ite c!42172 call!23605 call!23611)) (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))) lt!125877)))

(declare-fun b!251097 () Bool)

(declare-fun res!122962 () Bool)

(assert (=> b!251097 (=> (not res!122962) (not e!162851))))

(assert (=> b!251097 (= res!122962 (= (getValueByKey!298 (toList!1900 lt!125877) (_1!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))) (Some!303 (_2!2431 (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))))

(declare-fun b!251098 () Bool)

(declare-fun contains!1819 (List!3747 tuple2!4842) Bool)

(assert (=> b!251098 (= e!162851 (contains!1819 (toList!1900 lt!125877) (ite (or c!42171 c!42172) (tuple2!4843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4476 thiss!1504)) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))

(assert (= (and d!60961 res!122961) b!251097))

(assert (= (and b!251097 res!122962) b!251098))

(declare-fun m!267409 () Bool)

(assert (=> d!60961 m!267409))

(declare-fun m!267411 () Bool)

(assert (=> d!60961 m!267411))

(declare-fun m!267413 () Bool)

(assert (=> d!60961 m!267413))

(declare-fun m!267415 () Bool)

(assert (=> d!60961 m!267415))

(declare-fun m!267417 () Bool)

(assert (=> b!251097 m!267417))

(declare-fun m!267419 () Bool)

(assert (=> b!251098 m!267419))

(assert (=> bm!23605 d!60961))

(declare-fun d!60963 () Bool)

(assert (=> d!60963 (= (arrayCountValidKeys!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6773 thiss!1504) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!60963 true))

(declare-fun _$84!30 () Unit!7757)

(assert (=> d!60963 (= (choose!1 (_keys!6773 thiss!1504) index!297 key!932) _$84!30)))

(declare-fun bs!8992 () Bool)

(assert (= bs!8992 d!60963))

(assert (=> bs!8992 m!267107))

(assert (=> bs!8992 m!267289))

(assert (=> bs!8992 m!267109))

(assert (=> d!60909 d!60963))

(declare-fun d!60965 () Bool)

(declare-fun e!162852 () Bool)

(assert (=> d!60965 e!162852))

(declare-fun res!122963 () Bool)

(assert (=> d!60965 (=> (not res!122963) (not e!162852))))

(declare-fun lt!125881 () ListLongMap!3769)

(assert (=> d!60965 (= res!122963 (contains!1816 lt!125881 (_1!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))

(declare-fun lt!125879 () List!3747)

(assert (=> d!60965 (= lt!125881 (ListLongMap!3770 lt!125879))))

(declare-fun lt!125880 () Unit!7757)

(declare-fun lt!125878 () Unit!7757)

(assert (=> d!60965 (= lt!125880 lt!125878)))

(assert (=> d!60965 (= (getValueByKey!298 lt!125879 (_1!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))

(assert (=> d!60965 (= lt!125878 (lemmaContainsTupThenGetReturnValue!160 lt!125879 (_1!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))

(assert (=> d!60965 (= lt!125879 (insertStrictlySorted!162 (toList!1900 call!23609) (_1!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))))))

(assert (=> d!60965 (= (+!663 call!23609 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))) lt!125881)))

(declare-fun b!251099 () Bool)

(declare-fun res!122964 () Bool)

(assert (=> b!251099 (=> (not res!122964) (not e!162852))))

(assert (=> b!251099 (= res!122964 (= (getValueByKey!298 (toList!1900 lt!125881) (_1!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))))

(declare-fun b!251100 () Bool)

(assert (=> b!251100 (= e!162852 (contains!1819 (toList!1900 lt!125881) (tuple2!4843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4476 thiss!1504))))))

(assert (= (and d!60965 res!122963) b!251099))

(assert (= (and b!251099 res!122964) b!251100))

(declare-fun m!267421 () Bool)

(assert (=> d!60965 m!267421))

(declare-fun m!267423 () Bool)

(assert (=> d!60965 m!267423))

(declare-fun m!267425 () Bool)

(assert (=> d!60965 m!267425))

(declare-fun m!267427 () Bool)

(assert (=> d!60965 m!267427))

(declare-fun m!267429 () Bool)

(assert (=> b!251099 m!267429))

(declare-fun m!267431 () Bool)

(assert (=> b!251100 m!267431))

(assert (=> b!250896 d!60965))

(declare-fun d!60967 () Bool)

(declare-fun res!122969 () Bool)

(declare-fun e!162857 () Bool)

(assert (=> d!60967 (=> res!122969 e!162857)))

(assert (=> d!60967 (= res!122969 (and ((_ is Cons!3743) (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))) (= (_1!2431 (h!4403 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))))) key!932)))))

(assert (=> d!60967 (= (containsKey!290 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932) e!162857)))

(declare-fun b!251105 () Bool)

(declare-fun e!162858 () Bool)

(assert (=> b!251105 (= e!162857 e!162858)))

(declare-fun res!122970 () Bool)

(assert (=> b!251105 (=> (not res!122970) (not e!162858))))

(assert (=> b!251105 (= res!122970 (and (or (not ((_ is Cons!3743) (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))))) (bvsle (_1!2431 (h!4403 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))))) key!932)) ((_ is Cons!3743) (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))) (bvslt (_1!2431 (h!4403 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))))) key!932)))))

(declare-fun b!251106 () Bool)

(assert (=> b!251106 (= e!162858 (containsKey!290 (t!8790 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))) key!932))))

(assert (= (and d!60967 (not res!122969)) b!251105))

(assert (= (and b!251105 res!122970) b!251106))

(declare-fun m!267433 () Bool)

(assert (=> b!251106 m!267433))

(assert (=> d!60895 d!60967))

(declare-fun d!60969 () Bool)

(assert (=> d!60969 (= (apply!241 (+!663 lt!125790 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))) lt!125777) (apply!241 lt!125790 lt!125777))))

(declare-fun lt!125884 () Unit!7757)

(declare-fun choose!1199 (ListLongMap!3769 (_ BitVec 64) V!8307 (_ BitVec 64)) Unit!7757)

(assert (=> d!60969 (= lt!125884 (choose!1199 lt!125790 lt!125791 (zeroValue!4476 thiss!1504) lt!125777))))

(declare-fun e!162861 () Bool)

(assert (=> d!60969 e!162861))

(declare-fun res!122973 () Bool)

(assert (=> d!60969 (=> (not res!122973) (not e!162861))))

(assert (=> d!60969 (= res!122973 (contains!1816 lt!125790 lt!125777))))

(assert (=> d!60969 (= (addApplyDifferent!217 lt!125790 lt!125791 (zeroValue!4476 thiss!1504) lt!125777) lt!125884)))

(declare-fun b!251110 () Bool)

(assert (=> b!251110 (= e!162861 (not (= lt!125777 lt!125791)))))

(assert (= (and d!60969 res!122973) b!251110))

(assert (=> d!60969 m!267237))

(declare-fun m!267435 () Bool)

(assert (=> d!60969 m!267435))

(declare-fun m!267437 () Bool)

(assert (=> d!60969 m!267437))

(assert (=> d!60969 m!267247))

(assert (=> d!60969 m!267249))

(assert (=> d!60969 m!267247))

(assert (=> b!250906 d!60969))

(declare-fun d!60971 () Bool)

(assert (=> d!60971 (= (apply!241 (+!663 lt!125788 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))) lt!125795) (apply!241 lt!125788 lt!125795))))

(declare-fun lt!125885 () Unit!7757)

(assert (=> d!60971 (= lt!125885 (choose!1199 lt!125788 lt!125779 (minValue!4476 thiss!1504) lt!125795))))

(declare-fun e!162862 () Bool)

(assert (=> d!60971 e!162862))

(declare-fun res!122974 () Bool)

(assert (=> d!60971 (=> (not res!122974) (not e!162862))))

(assert (=> d!60971 (= res!122974 (contains!1816 lt!125788 lt!125795))))

(assert (=> d!60971 (= (addApplyDifferent!217 lt!125788 lt!125779 (minValue!4476 thiss!1504) lt!125795) lt!125885)))

(declare-fun b!251111 () Bool)

(assert (=> b!251111 (= e!162862 (not (= lt!125795 lt!125779)))))

(assert (= (and d!60971 res!122974) b!251111))

(assert (=> d!60971 m!267245))

(declare-fun m!267439 () Bool)

(assert (=> d!60971 m!267439))

(declare-fun m!267441 () Bool)

(assert (=> d!60971 m!267441))

(assert (=> d!60971 m!267243))

(assert (=> d!60971 m!267251))

(assert (=> d!60971 m!267243))

(assert (=> b!250906 d!60971))

(declare-fun d!60973 () Bool)

(declare-fun e!162864 () Bool)

(assert (=> d!60973 e!162864))

(declare-fun res!122975 () Bool)

(assert (=> d!60973 (=> res!122975 e!162864)))

(declare-fun lt!125886 () Bool)

(assert (=> d!60973 (= res!122975 (not lt!125886))))

(declare-fun lt!125888 () Bool)

(assert (=> d!60973 (= lt!125886 lt!125888)))

(declare-fun lt!125889 () Unit!7757)

(declare-fun e!162863 () Unit!7757)

(assert (=> d!60973 (= lt!125889 e!162863)))

(declare-fun c!42223 () Bool)

(assert (=> d!60973 (= c!42223 lt!125888)))

(assert (=> d!60973 (= lt!125888 (containsKey!290 (toList!1900 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))) lt!125778))))

(assert (=> d!60973 (= (contains!1816 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))) lt!125778) lt!125886)))

(declare-fun b!251112 () Bool)

(declare-fun lt!125887 () Unit!7757)

(assert (=> b!251112 (= e!162863 lt!125887)))

(assert (=> b!251112 (= lt!125887 (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!1900 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))) lt!125778))))

(assert (=> b!251112 (isDefined!240 (getValueByKey!298 (toList!1900 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))) lt!125778))))

(declare-fun b!251113 () Bool)

(declare-fun Unit!7771 () Unit!7757)

(assert (=> b!251113 (= e!162863 Unit!7771)))

(declare-fun b!251114 () Bool)

(assert (=> b!251114 (= e!162864 (isDefined!240 (getValueByKey!298 (toList!1900 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))) lt!125778)))))

(assert (= (and d!60973 c!42223) b!251112))

(assert (= (and d!60973 (not c!42223)) b!251113))

(assert (= (and d!60973 (not res!122975)) b!251114))

(declare-fun m!267443 () Bool)

(assert (=> d!60973 m!267443))

(declare-fun m!267445 () Bool)

(assert (=> b!251112 m!267445))

(declare-fun m!267447 () Bool)

(assert (=> b!251112 m!267447))

(assert (=> b!251112 m!267447))

(declare-fun m!267449 () Bool)

(assert (=> b!251112 m!267449))

(assert (=> b!251114 m!267447))

(assert (=> b!251114 m!267447))

(assert (=> b!251114 m!267449))

(assert (=> b!250906 d!60973))

(declare-fun d!60975 () Bool)

(declare-fun e!162865 () Bool)

(assert (=> d!60975 e!162865))

(declare-fun res!122976 () Bool)

(assert (=> d!60975 (=> (not res!122976) (not e!162865))))

(declare-fun lt!125893 () ListLongMap!3769)

(assert (=> d!60975 (= res!122976 (contains!1816 lt!125893 (_1!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))))))

(declare-fun lt!125891 () List!3747)

(assert (=> d!60975 (= lt!125893 (ListLongMap!3770 lt!125891))))

(declare-fun lt!125892 () Unit!7757)

(declare-fun lt!125890 () Unit!7757)

(assert (=> d!60975 (= lt!125892 lt!125890)))

(assert (=> d!60975 (= (getValueByKey!298 lt!125891 (_1!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))))))

(assert (=> d!60975 (= lt!125890 (lemmaContainsTupThenGetReturnValue!160 lt!125891 (_1!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))))))

(assert (=> d!60975 (= lt!125891 (insertStrictlySorted!162 (toList!1900 lt!125796) (_1!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))))))

(assert (=> d!60975 (= (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))) lt!125893)))

(declare-fun b!251115 () Bool)

(declare-fun res!122977 () Bool)

(assert (=> b!251115 (=> (not res!122977) (not e!162865))))

(assert (=> b!251115 (= res!122977 (= (getValueByKey!298 (toList!1900 lt!125893) (_1!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))))))))

(declare-fun b!251116 () Bool)

(assert (=> b!251116 (= e!162865 (contains!1819 (toList!1900 lt!125893) (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))))))

(assert (= (and d!60975 res!122976) b!251115))

(assert (= (and b!251115 res!122977) b!251116))

(declare-fun m!267451 () Bool)

(assert (=> d!60975 m!267451))

(declare-fun m!267453 () Bool)

(assert (=> d!60975 m!267453))

(declare-fun m!267455 () Bool)

(assert (=> d!60975 m!267455))

(declare-fun m!267457 () Bool)

(assert (=> d!60975 m!267457))

(declare-fun m!267459 () Bool)

(assert (=> b!251115 m!267459))

(declare-fun m!267461 () Bool)

(assert (=> b!251116 m!267461))

(assert (=> b!250906 d!60975))

(declare-fun d!60977 () Bool)

(assert (=> d!60977 (= (apply!241 (+!663 lt!125786 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))) lt!125794) (get!3002 (getValueByKey!298 (toList!1900 (+!663 lt!125786 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))) lt!125794)))))

(declare-fun bs!8993 () Bool)

(assert (= bs!8993 d!60977))

(declare-fun m!267463 () Bool)

(assert (=> bs!8993 m!267463))

(assert (=> bs!8993 m!267463))

(declare-fun m!267465 () Bool)

(assert (=> bs!8993 m!267465))

(assert (=> b!250906 d!60977))

(declare-fun d!60979 () Bool)

(assert (=> d!60979 (= (apply!241 (+!663 lt!125786 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))) lt!125794) (apply!241 lt!125786 lt!125794))))

(declare-fun lt!125894 () Unit!7757)

(assert (=> d!60979 (= lt!125894 (choose!1199 lt!125786 lt!125792 (minValue!4476 thiss!1504) lt!125794))))

(declare-fun e!162866 () Bool)

(assert (=> d!60979 e!162866))

(declare-fun res!122978 () Bool)

(assert (=> d!60979 (=> (not res!122978) (not e!162866))))

(assert (=> d!60979 (= res!122978 (contains!1816 lt!125786 lt!125794))))

(assert (=> d!60979 (= (addApplyDifferent!217 lt!125786 lt!125792 (minValue!4476 thiss!1504) lt!125794) lt!125894)))

(declare-fun b!251117 () Bool)

(assert (=> b!251117 (= e!162866 (not (= lt!125794 lt!125792)))))

(assert (= (and d!60979 res!122978) b!251117))

(assert (=> d!60979 m!267241))

(declare-fun m!267467 () Bool)

(assert (=> d!60979 m!267467))

(declare-fun m!267469 () Bool)

(assert (=> d!60979 m!267469))

(assert (=> d!60979 m!267257))

(assert (=> d!60979 m!267259))

(assert (=> d!60979 m!267257))

(assert (=> b!250906 d!60979))

(declare-fun d!60981 () Bool)

(assert (=> d!60981 (= (apply!241 lt!125786 lt!125794) (get!3002 (getValueByKey!298 (toList!1900 lt!125786) lt!125794)))))

(declare-fun bs!8994 () Bool)

(assert (= bs!8994 d!60981))

(declare-fun m!267471 () Bool)

(assert (=> bs!8994 m!267471))

(assert (=> bs!8994 m!267471))

(declare-fun m!267473 () Bool)

(assert (=> bs!8994 m!267473))

(assert (=> b!250906 d!60981))

(declare-fun d!60983 () Bool)

(declare-fun e!162867 () Bool)

(assert (=> d!60983 e!162867))

(declare-fun res!122979 () Bool)

(assert (=> d!60983 (=> (not res!122979) (not e!162867))))

(declare-fun lt!125898 () ListLongMap!3769)

(assert (=> d!60983 (= res!122979 (contains!1816 lt!125898 (_1!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))))))

(declare-fun lt!125896 () List!3747)

(assert (=> d!60983 (= lt!125898 (ListLongMap!3770 lt!125896))))

(declare-fun lt!125897 () Unit!7757)

(declare-fun lt!125895 () Unit!7757)

(assert (=> d!60983 (= lt!125897 lt!125895)))

(assert (=> d!60983 (= (getValueByKey!298 lt!125896 (_1!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))))))

(assert (=> d!60983 (= lt!125895 (lemmaContainsTupThenGetReturnValue!160 lt!125896 (_1!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))))))

(assert (=> d!60983 (= lt!125896 (insertStrictlySorted!162 (toList!1900 lt!125788) (_1!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))))))

(assert (=> d!60983 (= (+!663 lt!125788 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))) lt!125898)))

(declare-fun b!251118 () Bool)

(declare-fun res!122980 () Bool)

(assert (=> b!251118 (=> (not res!122980) (not e!162867))))

(assert (=> b!251118 (= res!122980 (= (getValueByKey!298 (toList!1900 lt!125898) (_1!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))))))))

(declare-fun b!251119 () Bool)

(assert (=> b!251119 (= e!162867 (contains!1819 (toList!1900 lt!125898) (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))))))

(assert (= (and d!60983 res!122979) b!251118))

(assert (= (and b!251118 res!122980) b!251119))

(declare-fun m!267475 () Bool)

(assert (=> d!60983 m!267475))

(declare-fun m!267477 () Bool)

(assert (=> d!60983 m!267477))

(declare-fun m!267479 () Bool)

(assert (=> d!60983 m!267479))

(declare-fun m!267481 () Bool)

(assert (=> d!60983 m!267481))

(declare-fun m!267483 () Bool)

(assert (=> b!251118 m!267483))

(declare-fun m!267485 () Bool)

(assert (=> b!251119 m!267485))

(assert (=> b!250906 d!60983))

(declare-fun d!60985 () Bool)

(assert (=> d!60985 (= (apply!241 (+!663 lt!125788 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504))) lt!125795) (get!3002 (getValueByKey!298 (toList!1900 (+!663 lt!125788 (tuple2!4843 lt!125779 (minValue!4476 thiss!1504)))) lt!125795)))))

(declare-fun bs!8995 () Bool)

(assert (= bs!8995 d!60985))

(declare-fun m!267487 () Bool)

(assert (=> bs!8995 m!267487))

(assert (=> bs!8995 m!267487))

(declare-fun m!267489 () Bool)

(assert (=> bs!8995 m!267489))

(assert (=> b!250906 d!60985))

(declare-fun d!60987 () Bool)

(declare-fun e!162868 () Bool)

(assert (=> d!60987 e!162868))

(declare-fun res!122981 () Bool)

(assert (=> d!60987 (=> (not res!122981) (not e!162868))))

(declare-fun lt!125902 () ListLongMap!3769)

(assert (=> d!60987 (= res!122981 (contains!1816 lt!125902 (_1!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))))))

(declare-fun lt!125900 () List!3747)

(assert (=> d!60987 (= lt!125902 (ListLongMap!3770 lt!125900))))

(declare-fun lt!125901 () Unit!7757)

(declare-fun lt!125899 () Unit!7757)

(assert (=> d!60987 (= lt!125901 lt!125899)))

(assert (=> d!60987 (= (getValueByKey!298 lt!125900 (_1!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))))))

(assert (=> d!60987 (= lt!125899 (lemmaContainsTupThenGetReturnValue!160 lt!125900 (_1!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))))))

(assert (=> d!60987 (= lt!125900 (insertStrictlySorted!162 (toList!1900 lt!125790) (_1!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))))))

(assert (=> d!60987 (= (+!663 lt!125790 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))) lt!125902)))

(declare-fun b!251120 () Bool)

(declare-fun res!122982 () Bool)

(assert (=> b!251120 (=> (not res!122982) (not e!162868))))

(assert (=> b!251120 (= res!122982 (= (getValueByKey!298 (toList!1900 lt!125902) (_1!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))))))))

(declare-fun b!251121 () Bool)

(assert (=> b!251121 (= e!162868 (contains!1819 (toList!1900 lt!125902) (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))))))

(assert (= (and d!60987 res!122981) b!251120))

(assert (= (and b!251120 res!122982) b!251121))

(declare-fun m!267491 () Bool)

(assert (=> d!60987 m!267491))

(declare-fun m!267493 () Bool)

(assert (=> d!60987 m!267493))

(declare-fun m!267495 () Bool)

(assert (=> d!60987 m!267495))

(declare-fun m!267497 () Bool)

(assert (=> d!60987 m!267497))

(declare-fun m!267499 () Bool)

(assert (=> b!251120 m!267499))

(declare-fun m!267501 () Bool)

(assert (=> b!251121 m!267501))

(assert (=> b!250906 d!60987))

(declare-fun d!60989 () Bool)

(assert (=> d!60989 (= (apply!241 lt!125790 lt!125777) (get!3002 (getValueByKey!298 (toList!1900 lt!125790) lt!125777)))))

(declare-fun bs!8996 () Bool)

(assert (= bs!8996 d!60989))

(declare-fun m!267503 () Bool)

(assert (=> bs!8996 m!267503))

(assert (=> bs!8996 m!267503))

(declare-fun m!267505 () Bool)

(assert (=> bs!8996 m!267505))

(assert (=> b!250906 d!60989))

(declare-fun b!251146 () Bool)

(declare-fun e!162886 () ListLongMap!3769)

(declare-fun e!162888 () ListLongMap!3769)

(assert (=> b!251146 (= e!162886 e!162888)))

(declare-fun c!42235 () Bool)

(assert (=> b!251146 (= c!42235 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251147 () Bool)

(declare-fun call!23633 () ListLongMap!3769)

(assert (=> b!251147 (= e!162888 call!23633)))

(declare-fun b!251148 () Bool)

(declare-fun res!122993 () Bool)

(declare-fun e!162889 () Bool)

(assert (=> b!251148 (=> (not res!122993) (not e!162889))))

(declare-fun lt!125919 () ListLongMap!3769)

(assert (=> b!251148 (= res!122993 (not (contains!1816 lt!125919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!251149 () Bool)

(declare-fun lt!125918 () Unit!7757)

(declare-fun lt!125923 () Unit!7757)

(assert (=> b!251149 (= lt!125918 lt!125923)))

(declare-fun lt!125917 () V!8307)

(declare-fun lt!125921 () (_ BitVec 64))

(declare-fun lt!125920 () ListLongMap!3769)

(declare-fun lt!125922 () (_ BitVec 64))

(assert (=> b!251149 (not (contains!1816 (+!663 lt!125920 (tuple2!4843 lt!125922 lt!125917)) lt!125921))))

(declare-fun addStillNotContains!125 (ListLongMap!3769 (_ BitVec 64) V!8307 (_ BitVec 64)) Unit!7757)

(assert (=> b!251149 (= lt!125923 (addStillNotContains!125 lt!125920 lt!125922 lt!125917 lt!125921))))

(assert (=> b!251149 (= lt!125921 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!251149 (= lt!125917 (get!3001 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!251149 (= lt!125922 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!251149 (= lt!125920 call!23633)))

(assert (=> b!251149 (= e!162888 (+!663 call!23633 (tuple2!4843 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000) (get!3001 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!251150 () Bool)

(declare-fun e!162884 () Bool)

(assert (=> b!251150 (= e!162889 e!162884)))

(declare-fun c!42234 () Bool)

(declare-fun e!162887 () Bool)

(assert (=> b!251150 (= c!42234 e!162887)))

(declare-fun res!122994 () Bool)

(assert (=> b!251150 (=> (not res!122994) (not e!162887))))

(assert (=> b!251150 (= res!122994 (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!251151 () Bool)

(declare-fun e!162883 () Bool)

(assert (=> b!251151 (= e!162884 e!162883)))

(declare-fun c!42233 () Bool)

(assert (=> b!251151 (= c!42233 (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun bm!23630 () Bool)

(assert (=> bm!23630 (= call!23633 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4635 thiss!1504)))))

(declare-fun d!60991 () Bool)

(assert (=> d!60991 e!162889))

(declare-fun res!122992 () Bool)

(assert (=> d!60991 (=> (not res!122992) (not e!162889))))

(assert (=> d!60991 (= res!122992 (not (contains!1816 lt!125919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!60991 (= lt!125919 e!162886)))

(declare-fun c!42232 () Bool)

(assert (=> d!60991 (= c!42232 (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!60991 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!60991 (= (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)) lt!125919)))

(declare-fun b!251152 () Bool)

(declare-fun e!162885 () Bool)

(assert (=> b!251152 (= e!162884 e!162885)))

(assert (=> b!251152 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun res!122991 () Bool)

(assert (=> b!251152 (= res!122991 (contains!1816 lt!125919 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251152 (=> (not res!122991) (not e!162885))))

(declare-fun b!251153 () Bool)

(assert (=> b!251153 (= e!162883 (= lt!125919 (getCurrentListMapNoExtraKeys!560 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4635 thiss!1504))))))

(declare-fun b!251154 () Bool)

(assert (=> b!251154 (= e!162887 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251154 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!251155 () Bool)

(declare-fun isEmpty!533 (ListLongMap!3769) Bool)

(assert (=> b!251155 (= e!162883 (isEmpty!533 lt!125919))))

(declare-fun b!251156 () Bool)

(assert (=> b!251156 (= e!162886 (ListLongMap!3770 Nil!3744))))

(declare-fun b!251157 () Bool)

(assert (=> b!251157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> b!251157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6180 (_values!4618 thiss!1504))))))

(assert (=> b!251157 (= e!162885 (= (apply!241 lt!125919 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)) (get!3001 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!60991 c!42232) b!251156))

(assert (= (and d!60991 (not c!42232)) b!251146))

(assert (= (and b!251146 c!42235) b!251149))

(assert (= (and b!251146 (not c!42235)) b!251147))

(assert (= (or b!251149 b!251147) bm!23630))

(assert (= (and d!60991 res!122992) b!251148))

(assert (= (and b!251148 res!122993) b!251150))

(assert (= (and b!251150 res!122994) b!251154))

(assert (= (and b!251150 c!42234) b!251152))

(assert (= (and b!251150 (not c!42234)) b!251151))

(assert (= (and b!251152 res!122991) b!251157))

(assert (= (and b!251151 c!42233) b!251153))

(assert (= (and b!251151 (not c!42233)) b!251155))

(declare-fun b_lambda!8125 () Bool)

(assert (=> (not b_lambda!8125) (not b!251149)))

(assert (=> b!251149 t!8794))

(declare-fun b_and!13679 () Bool)

(assert (= b_and!13677 (and (=> t!8794 result!5315) b_and!13679)))

(declare-fun b_lambda!8127 () Bool)

(assert (=> (not b_lambda!8127) (not b!251157)))

(assert (=> b!251157 t!8794))

(declare-fun b_and!13681 () Bool)

(assert (= b_and!13679 (and (=> t!8794 result!5315) b_and!13681)))

(declare-fun m!267507 () Bool)

(assert (=> bm!23630 m!267507))

(declare-fun m!267509 () Bool)

(assert (=> d!60991 m!267509))

(assert (=> d!60991 m!267097))

(assert (=> b!251146 m!267205))

(assert (=> b!251146 m!267205))

(assert (=> b!251146 m!267207))

(declare-fun m!267511 () Bool)

(assert (=> b!251155 m!267511))

(assert (=> b!251153 m!267507))

(assert (=> b!251154 m!267205))

(assert (=> b!251154 m!267205))

(assert (=> b!251154 m!267207))

(assert (=> b!251149 m!267219))

(assert (=> b!251149 m!267221))

(assert (=> b!251149 m!267205))

(declare-fun m!267513 () Bool)

(assert (=> b!251149 m!267513))

(declare-fun m!267515 () Bool)

(assert (=> b!251149 m!267515))

(assert (=> b!251149 m!267513))

(assert (=> b!251149 m!267219))

(assert (=> b!251149 m!267221))

(assert (=> b!251149 m!267223))

(declare-fun m!267517 () Bool)

(assert (=> b!251149 m!267517))

(declare-fun m!267519 () Bool)

(assert (=> b!251149 m!267519))

(assert (=> b!251152 m!267205))

(assert (=> b!251152 m!267205))

(declare-fun m!267521 () Bool)

(assert (=> b!251152 m!267521))

(declare-fun m!267523 () Bool)

(assert (=> b!251148 m!267523))

(assert (=> b!251157 m!267219))

(assert (=> b!251157 m!267221))

(assert (=> b!251157 m!267205))

(assert (=> b!251157 m!267205))

(declare-fun m!267525 () Bool)

(assert (=> b!251157 m!267525))

(assert (=> b!251157 m!267219))

(assert (=> b!251157 m!267221))

(assert (=> b!251157 m!267223))

(assert (=> b!250906 d!60991))

(declare-fun d!60993 () Bool)

(declare-fun e!162890 () Bool)

(assert (=> d!60993 e!162890))

(declare-fun res!122995 () Bool)

(assert (=> d!60993 (=> (not res!122995) (not e!162890))))

(declare-fun lt!125927 () ListLongMap!3769)

(assert (=> d!60993 (= res!122995 (contains!1816 lt!125927 (_1!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))))))

(declare-fun lt!125925 () List!3747)

(assert (=> d!60993 (= lt!125927 (ListLongMap!3770 lt!125925))))

(declare-fun lt!125926 () Unit!7757)

(declare-fun lt!125924 () Unit!7757)

(assert (=> d!60993 (= lt!125926 lt!125924)))

(assert (=> d!60993 (= (getValueByKey!298 lt!125925 (_1!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))))))

(assert (=> d!60993 (= lt!125924 (lemmaContainsTupThenGetReturnValue!160 lt!125925 (_1!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))))))

(assert (=> d!60993 (= lt!125925 (insertStrictlySorted!162 (toList!1900 lt!125786) (_1!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))) (_2!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))))))

(assert (=> d!60993 (= (+!663 lt!125786 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))) lt!125927)))

(declare-fun b!251158 () Bool)

(declare-fun res!122996 () Bool)

(assert (=> b!251158 (=> (not res!122996) (not e!162890))))

(assert (=> b!251158 (= res!122996 (= (getValueByKey!298 (toList!1900 lt!125927) (_1!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504)))) (Some!303 (_2!2431 (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))))))))

(declare-fun b!251159 () Bool)

(assert (=> b!251159 (= e!162890 (contains!1819 (toList!1900 lt!125927) (tuple2!4843 lt!125792 (minValue!4476 thiss!1504))))))

(assert (= (and d!60993 res!122995) b!251158))

(assert (= (and b!251158 res!122996) b!251159))

(declare-fun m!267527 () Bool)

(assert (=> d!60993 m!267527))

(declare-fun m!267529 () Bool)

(assert (=> d!60993 m!267529))

(declare-fun m!267531 () Bool)

(assert (=> d!60993 m!267531))

(declare-fun m!267533 () Bool)

(assert (=> d!60993 m!267533))

(declare-fun m!267535 () Bool)

(assert (=> b!251158 m!267535))

(declare-fun m!267537 () Bool)

(assert (=> b!251159 m!267537))

(assert (=> b!250906 d!60993))

(declare-fun d!60995 () Bool)

(assert (=> d!60995 (= (apply!241 (+!663 lt!125790 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504))) lt!125777) (get!3002 (getValueByKey!298 (toList!1900 (+!663 lt!125790 (tuple2!4843 lt!125791 (zeroValue!4476 thiss!1504)))) lt!125777)))))

(declare-fun bs!8997 () Bool)

(assert (= bs!8997 d!60995))

(declare-fun m!267539 () Bool)

(assert (=> bs!8997 m!267539))

(assert (=> bs!8997 m!267539))

(declare-fun m!267541 () Bool)

(assert (=> bs!8997 m!267541))

(assert (=> b!250906 d!60995))

(declare-fun d!60997 () Bool)

(assert (=> d!60997 (contains!1816 (+!663 lt!125796 (tuple2!4843 lt!125785 (zeroValue!4476 thiss!1504))) lt!125778)))

(declare-fun lt!125930 () Unit!7757)

(declare-fun choose!1200 (ListLongMap!3769 (_ BitVec 64) V!8307 (_ BitVec 64)) Unit!7757)

(assert (=> d!60997 (= lt!125930 (choose!1200 lt!125796 lt!125785 (zeroValue!4476 thiss!1504) lt!125778))))

(assert (=> d!60997 (contains!1816 lt!125796 lt!125778)))

(assert (=> d!60997 (= (addStillContains!217 lt!125796 lt!125785 (zeroValue!4476 thiss!1504) lt!125778) lt!125930)))

(declare-fun bs!8998 () Bool)

(assert (= bs!8998 d!60997))

(assert (=> bs!8998 m!267233))

(assert (=> bs!8998 m!267233))

(assert (=> bs!8998 m!267235))

(declare-fun m!267543 () Bool)

(assert (=> bs!8998 m!267543))

(declare-fun m!267545 () Bool)

(assert (=> bs!8998 m!267545))

(assert (=> b!250906 d!60997))

(declare-fun d!60999 () Bool)

(assert (=> d!60999 (= (apply!241 lt!125788 lt!125795) (get!3002 (getValueByKey!298 (toList!1900 lt!125788) lt!125795)))))

(declare-fun bs!8999 () Bool)

(assert (= bs!8999 d!60999))

(declare-fun m!267547 () Bool)

(assert (=> bs!8999 m!267547))

(assert (=> bs!8999 m!267547))

(declare-fun m!267549 () Bool)

(assert (=> bs!8999 m!267549))

(assert (=> b!250906 d!60999))

(declare-fun d!61001 () Bool)

(assert (=> d!61001 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!250949 d!61001))

(declare-fun bm!23631 () Bool)

(declare-fun call!23634 () Bool)

(assert (=> bm!23631 (= call!23634 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!125679 (mask!10825 thiss!1504)))))

(declare-fun b!251161 () Bool)

(declare-fun e!162891 () Bool)

(assert (=> b!251161 (= e!162891 call!23634)))

(declare-fun d!61003 () Bool)

(declare-fun res!122998 () Bool)

(declare-fun e!162893 () Bool)

(assert (=> d!61003 (=> res!122998 e!162893)))

(assert (=> d!61003 (= res!122998 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 lt!125679)))))

(assert (=> d!61003 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!125679 (mask!10825 thiss!1504)) e!162893)))

(declare-fun b!251162 () Bool)

(declare-fun e!162892 () Bool)

(assert (=> b!251162 (= e!162891 e!162892)))

(declare-fun lt!125932 () (_ BitVec 64))

(assert (=> b!251162 (= lt!125932 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!125931 () Unit!7757)

(assert (=> b!251162 (= lt!125931 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125679 lt!125932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!251162 (arrayContainsKey!0 lt!125679 lt!125932 #b00000000000000000000000000000000)))

(declare-fun lt!125933 () Unit!7757)

(assert (=> b!251162 (= lt!125933 lt!125931)))

(declare-fun res!122997 () Bool)

(assert (=> b!251162 (= res!122997 (= (seekEntryOrOpen!0 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!125679 (mask!10825 thiss!1504)) (Found!1134 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!251162 (=> (not res!122997) (not e!162892))))

(declare-fun b!251163 () Bool)

(assert (=> b!251163 (= e!162892 call!23634)))

(declare-fun b!251164 () Bool)

(assert (=> b!251164 (= e!162893 e!162891)))

(declare-fun c!42236 () Bool)

(assert (=> b!251164 (= c!42236 (validKeyInArray!0 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!61003 (not res!122998)) b!251164))

(assert (= (and b!251164 c!42236) b!251162))

(assert (= (and b!251164 (not c!42236)) b!251161))

(assert (= (and b!251162 res!122997) b!251163))

(assert (= (or b!251163 b!251161) bm!23631))

(declare-fun m!267551 () Bool)

(assert (=> bm!23631 m!267551))

(declare-fun m!267553 () Bool)

(assert (=> b!251162 m!267553))

(declare-fun m!267555 () Bool)

(assert (=> b!251162 m!267555))

(declare-fun m!267557 () Bool)

(assert (=> b!251162 m!267557))

(assert (=> b!251162 m!267553))

(declare-fun m!267559 () Bool)

(assert (=> b!251162 m!267559))

(assert (=> b!251164 m!267553))

(assert (=> b!251164 m!267553))

(declare-fun m!267561 () Bool)

(assert (=> b!251164 m!267561))

(assert (=> bm!23611 d!61003))

(assert (=> b!250997 d!60959))

(assert (=> b!250998 d!60959))

(declare-fun d!61005 () Bool)

(assert (=> d!61005 (= (apply!241 lt!125793 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3002 (getValueByKey!298 (toList!1900 lt!125793) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9000 () Bool)

(assert (= bs!9000 d!61005))

(assert (=> bs!9000 m!267379))

(assert (=> bs!9000 m!267379))

(declare-fun m!267563 () Bool)

(assert (=> bs!9000 m!267563))

(assert (=> b!250893 d!61005))

(declare-fun lt!125934 () (_ BitVec 32))

(declare-fun d!61007 () Bool)

(assert (=> d!61007 (and (bvsge lt!125934 #b00000000000000000000000000000000) (bvsle lt!125934 (bvsub (size!6181 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!162895 () (_ BitVec 32))

(assert (=> d!61007 (= lt!125934 e!162895)))

(declare-fun c!42238 () Bool)

(assert (=> d!61007 (= c!42238 (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!61007 (and (bvsle #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6181 (_keys!6773 thiss!1504)) (size!6181 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))))))))

(assert (=> d!61007 (= (arrayCountValidKeys!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))) lt!125934)))

(declare-fun bm!23632 () Bool)

(declare-fun call!23635 () (_ BitVec 32))

(assert (=> bm!23632 (= call!23635 (arrayCountValidKeys!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!251165 () Bool)

(declare-fun e!162894 () (_ BitVec 32))

(assert (=> b!251165 (= e!162894 (bvadd #b00000000000000000000000000000001 call!23635))))

(declare-fun b!251166 () Bool)

(assert (=> b!251166 (= e!162895 e!162894)))

(declare-fun c!42237 () Bool)

(assert (=> b!251166 (= c!42237 (validKeyInArray!0 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251167 () Bool)

(assert (=> b!251167 (= e!162895 #b00000000000000000000000000000000)))

(declare-fun b!251168 () Bool)

(assert (=> b!251168 (= e!162894 call!23635)))

(assert (= (and d!61007 c!42238) b!251167))

(assert (= (and d!61007 (not c!42238)) b!251166))

(assert (= (and b!251166 c!42237) b!251165))

(assert (= (and b!251166 (not c!42237)) b!251168))

(assert (= (or b!251165 b!251168) bm!23632))

(declare-fun m!267565 () Bool)

(assert (=> bm!23632 m!267565))

(assert (=> b!251166 m!267349))

(assert (=> b!251166 m!267349))

(assert (=> b!251166 m!267357))

(assert (=> b!250951 d!61007))

(assert (=> b!250951 d!60921))

(assert (=> b!250887 d!60947))

(declare-fun bm!23633 () Bool)

(declare-fun call!23636 () Bool)

(assert (=> bm!23633 (= call!23636 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun b!251169 () Bool)

(declare-fun e!162896 () Bool)

(assert (=> b!251169 (= e!162896 call!23636)))

(declare-fun d!61009 () Bool)

(declare-fun res!123000 () Bool)

(declare-fun e!162898 () Bool)

(assert (=> d!61009 (=> res!123000 e!162898)))

(assert (=> d!61009 (= res!123000 (bvsge #b00000000000000000000000000000000 (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!61009 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)) e!162898)))

(declare-fun b!251170 () Bool)

(declare-fun e!162897 () Bool)

(assert (=> b!251170 (= e!162896 e!162897)))

(declare-fun lt!125936 () (_ BitVec 64))

(assert (=> b!251170 (= lt!125936 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125935 () Unit!7757)

(assert (=> b!251170 (= lt!125935 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6773 thiss!1504) lt!125936 #b00000000000000000000000000000000))))

(assert (=> b!251170 (arrayContainsKey!0 (_keys!6773 thiss!1504) lt!125936 #b00000000000000000000000000000000)))

(declare-fun lt!125937 () Unit!7757)

(assert (=> b!251170 (= lt!125937 lt!125935)))

(declare-fun res!122999 () Bool)

(assert (=> b!251170 (= res!122999 (= (seekEntryOrOpen!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000) (_keys!6773 thiss!1504) (mask!10825 thiss!1504)) (Found!1134 #b00000000000000000000000000000000)))))

(assert (=> b!251170 (=> (not res!122999) (not e!162897))))

(declare-fun b!251171 () Bool)

(assert (=> b!251171 (= e!162897 call!23636)))

(declare-fun b!251172 () Bool)

(assert (=> b!251172 (= e!162898 e!162896)))

(declare-fun c!42239 () Bool)

(assert (=> b!251172 (= c!42239 (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61009 (not res!123000)) b!251172))

(assert (= (and b!251172 c!42239) b!251170))

(assert (= (and b!251172 (not c!42239)) b!251169))

(assert (= (and b!251170 res!122999) b!251171))

(assert (= (or b!251171 b!251169) bm!23633))

(declare-fun m!267567 () Bool)

(assert (=> bm!23633 m!267567))

(assert (=> b!251170 m!267205))

(declare-fun m!267569 () Bool)

(assert (=> b!251170 m!267569))

(declare-fun m!267571 () Bool)

(assert (=> b!251170 m!267571))

(assert (=> b!251170 m!267205))

(declare-fun m!267573 () Bool)

(assert (=> b!251170 m!267573))

(assert (=> b!251172 m!267205))

(assert (=> b!251172 m!267205))

(assert (=> b!251172 m!267207))

(assert (=> b!251008 d!61009))

(declare-fun d!61011 () Bool)

(declare-fun res!123003 () Bool)

(declare-fun e!162901 () Bool)

(assert (=> d!61011 (=> res!123003 e!162901)))

(assert (=> d!61011 (= res!123003 (bvsge #b00000000000000000000000000000000 (size!6181 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))))))))

(assert (=> d!61011 (= (arrayNoDuplicates!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000000 Nil!3743) e!162901)))

(declare-fun e!162900 () Bool)

(declare-fun b!251173 () Bool)

(assert (=> b!251173 (= e!162900 (contains!1818 Nil!3743 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251174 () Bool)

(declare-fun e!162899 () Bool)

(declare-fun e!162902 () Bool)

(assert (=> b!251174 (= e!162899 e!162902)))

(declare-fun c!42240 () Bool)

(assert (=> b!251174 (= c!42240 (validKeyInArray!0 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun call!23637 () Bool)

(declare-fun bm!23634 () Bool)

(assert (=> bm!23634 (= call!23637 (arrayNoDuplicates!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42240 (Cons!3742 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000) Nil!3743) Nil!3743)))))

(declare-fun b!251175 () Bool)

(assert (=> b!251175 (= e!162901 e!162899)))

(declare-fun res!123002 () Bool)

(assert (=> b!251175 (=> (not res!123002) (not e!162899))))

(assert (=> b!251175 (= res!123002 (not e!162900))))

(declare-fun res!123001 () Bool)

(assert (=> b!251175 (=> (not res!123001) (not e!162900))))

(assert (=> b!251175 (= res!123001 (validKeyInArray!0 (select (arr!5836 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251176 () Bool)

(assert (=> b!251176 (= e!162902 call!23637)))

(declare-fun b!251177 () Bool)

(assert (=> b!251177 (= e!162902 call!23637)))

(assert (= (and d!61011 (not res!123003)) b!251175))

(assert (= (and b!251175 res!123001) b!251173))

(assert (= (and b!251175 res!123002) b!251174))

(assert (= (and b!251174 c!42240) b!251176))

(assert (= (and b!251174 (not c!42240)) b!251177))

(assert (= (or b!251176 b!251177) bm!23634))

(assert (=> b!251173 m!267349))

(assert (=> b!251173 m!267349))

(declare-fun m!267575 () Bool)

(assert (=> b!251173 m!267575))

(assert (=> b!251174 m!267349))

(assert (=> b!251174 m!267349))

(assert (=> b!251174 m!267357))

(assert (=> bm!23634 m!267349))

(declare-fun m!267577 () Bool)

(assert (=> bm!23634 m!267577))

(assert (=> b!251175 m!267349))

(assert (=> b!251175 m!267349))

(assert (=> b!251175 m!267357))

(assert (=> b!250978 d!61011))

(declare-fun b!251196 () Bool)

(declare-fun e!162913 () SeekEntryResult!1134)

(assert (=> b!251196 (= e!162913 (Intermediate!1134 true (toIndex!0 key!932 (mask!10825 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!251197 () Bool)

(declare-fun lt!125943 () SeekEntryResult!1134)

(assert (=> b!251197 (and (bvsge (index!6708 lt!125943) #b00000000000000000000000000000000) (bvslt (index!6708 lt!125943) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun e!162916 () Bool)

(assert (=> b!251197 (= e!162916 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6708 lt!125943)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251198 () Bool)

(declare-fun e!162915 () Bool)

(declare-fun e!162914 () Bool)

(assert (=> b!251198 (= e!162915 e!162914)))

(declare-fun res!123010 () Bool)

(assert (=> b!251198 (= res!123010 (and ((_ is Intermediate!1134) lt!125943) (not (undefined!1946 lt!125943)) (bvslt (x!24702 lt!125943) #b01111111111111111111111111111110) (bvsge (x!24702 lt!125943) #b00000000000000000000000000000000) (bvsge (x!24702 lt!125943) #b00000000000000000000000000000000)))))

(assert (=> b!251198 (=> (not res!123010) (not e!162914))))

(declare-fun b!251199 () Bool)

(declare-fun e!162917 () SeekEntryResult!1134)

(assert (=> b!251199 (= e!162917 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10825 thiss!1504)) #b00000000000000000000000000000000 (mask!10825 thiss!1504)) key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)))))

(declare-fun b!251200 () Bool)

(assert (=> b!251200 (= e!162917 (Intermediate!1134 false (toIndex!0 key!932 (mask!10825 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun d!61013 () Bool)

(assert (=> d!61013 e!162915))

(declare-fun c!42247 () Bool)

(assert (=> d!61013 (= c!42247 (and ((_ is Intermediate!1134) lt!125943) (undefined!1946 lt!125943)))))

(assert (=> d!61013 (= lt!125943 e!162913)))

(declare-fun c!42248 () Bool)

(assert (=> d!61013 (= c!42248 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!125942 () (_ BitVec 64))

(assert (=> d!61013 (= lt!125942 (select (arr!5836 (_keys!6773 thiss!1504)) (toIndex!0 key!932 (mask!10825 thiss!1504))))))

(assert (=> d!61013 (validMask!0 (mask!10825 thiss!1504))))

(assert (=> d!61013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10825 thiss!1504)) key!932 (_keys!6773 thiss!1504) (mask!10825 thiss!1504)) lt!125943)))

(declare-fun b!251201 () Bool)

(assert (=> b!251201 (= e!162915 (bvsge (x!24702 lt!125943) #b01111111111111111111111111111110))))

(declare-fun b!251202 () Bool)

(assert (=> b!251202 (and (bvsge (index!6708 lt!125943) #b00000000000000000000000000000000) (bvslt (index!6708 lt!125943) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun res!123012 () Bool)

(assert (=> b!251202 (= res!123012 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6708 lt!125943)) key!932))))

(assert (=> b!251202 (=> res!123012 e!162916)))

(assert (=> b!251202 (= e!162914 e!162916)))

(declare-fun b!251203 () Bool)

(assert (=> b!251203 (and (bvsge (index!6708 lt!125943) #b00000000000000000000000000000000) (bvslt (index!6708 lt!125943) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun res!123011 () Bool)

(assert (=> b!251203 (= res!123011 (= (select (arr!5836 (_keys!6773 thiss!1504)) (index!6708 lt!125943)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251203 (=> res!123011 e!162916)))

(declare-fun b!251204 () Bool)

(assert (=> b!251204 (= e!162913 e!162917)))

(declare-fun c!42249 () Bool)

(assert (=> b!251204 (= c!42249 (or (= lt!125942 key!932) (= (bvadd lt!125942 lt!125942) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61013 c!42248) b!251196))

(assert (= (and d!61013 (not c!42248)) b!251204))

(assert (= (and b!251204 c!42249) b!251200))

(assert (= (and b!251204 (not c!42249)) b!251199))

(assert (= (and d!61013 c!42247) b!251201))

(assert (= (and d!61013 (not c!42247)) b!251198))

(assert (= (and b!251198 res!123010) b!251202))

(assert (= (and b!251202 (not res!123012)) b!251203))

(assert (= (and b!251203 (not res!123011)) b!251197))

(declare-fun m!267579 () Bool)

(assert (=> b!251197 m!267579))

(assert (=> b!251202 m!267579))

(assert (=> b!251199 m!267267))

(declare-fun m!267581 () Bool)

(assert (=> b!251199 m!267581))

(assert (=> b!251199 m!267581))

(declare-fun m!267583 () Bool)

(assert (=> b!251199 m!267583))

(assert (=> d!61013 m!267267))

(declare-fun m!267585 () Bool)

(assert (=> d!61013 m!267585))

(assert (=> d!61013 m!267097))

(assert (=> b!251203 m!267579))

(assert (=> d!60901 d!61013))

(declare-fun d!61015 () Bool)

(declare-fun lt!125949 () (_ BitVec 32))

(declare-fun lt!125948 () (_ BitVec 32))

(assert (=> d!61015 (= lt!125949 (bvmul (bvxor lt!125948 (bvlshr lt!125948 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!61015 (= lt!125948 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!61015 (and (bvsge (mask!10825 thiss!1504) #b00000000000000000000000000000000) (let ((res!123013 (let ((h!4406 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!24721 (bvmul (bvxor h!4406 (bvlshr h!4406 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!24721 (bvlshr x!24721 #b00000000000000000000000000001101)) (mask!10825 thiss!1504)))))) (and (bvslt res!123013 (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!123013 #b00000000000000000000000000000000))))))

(assert (=> d!61015 (= (toIndex!0 key!932 (mask!10825 thiss!1504)) (bvand (bvxor lt!125949 (bvlshr lt!125949 #b00000000000000000000000000001101)) (mask!10825 thiss!1504)))))

(assert (=> d!60901 d!61015))

(assert (=> d!60901 d!60911))

(assert (=> b!250904 d!60947))

(declare-fun d!61017 () Bool)

(assert (=> d!61017 (arrayNoDuplicates!0 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) #b00000000000000000000000000000000 Nil!3743)))

(assert (=> d!61017 true))

(declare-fun _$65!80 () Unit!7757)

(assert (=> d!61017 (= (choose!41 (_keys!6773 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3743) _$65!80)))

(declare-fun bs!9001 () Bool)

(assert (= bs!9001 d!61017))

(assert (=> bs!9001 m!267107))

(assert (=> bs!9001 m!267311))

(assert (=> d!60917 d!61017))

(assert (=> bm!23608 d!60991))

(declare-fun d!61019 () Bool)

(declare-fun lt!125950 () (_ BitVec 32))

(assert (=> d!61019 (and (bvsge lt!125950 #b00000000000000000000000000000000) (bvsle lt!125950 (bvsub (size!6181 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!162919 () (_ BitVec 32))

(assert (=> d!61019 (= lt!125950 e!162919)))

(declare-fun c!42251 () Bool)

(assert (=> d!61019 (= c!42251 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(assert (=> d!61019 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6181 (_keys!6773 thiss!1504)) (size!6181 lt!125679)))))

(assert (=> d!61019 (= (arrayCountValidKeys!0 lt!125679 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))) lt!125950)))

(declare-fun bm!23635 () Bool)

(declare-fun call!23638 () (_ BitVec 32))

(assert (=> bm!23635 (= call!23638 (arrayCountValidKeys!0 lt!125679 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!251205 () Bool)

(declare-fun e!162918 () (_ BitVec 32))

(assert (=> b!251205 (= e!162918 (bvadd #b00000000000000000000000000000001 call!23638))))

(declare-fun b!251206 () Bool)

(assert (=> b!251206 (= e!162919 e!162918)))

(declare-fun c!42250 () Bool)

(assert (=> b!251206 (= c!42250 (validKeyInArray!0 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251207 () Bool)

(assert (=> b!251207 (= e!162919 #b00000000000000000000000000000000)))

(declare-fun b!251208 () Bool)

(assert (=> b!251208 (= e!162918 call!23638)))

(assert (= (and d!61019 c!42251) b!251207))

(assert (= (and d!61019 (not c!42251)) b!251206))

(assert (= (and b!251206 c!42250) b!251205))

(assert (= (and b!251206 (not c!42250)) b!251208))

(assert (= (or b!251205 b!251208) bm!23635))

(declare-fun m!267587 () Bool)

(assert (=> bm!23635 m!267587))

(assert (=> b!251206 m!267553))

(assert (=> b!251206 m!267553))

(assert (=> b!251206 m!267561))

(assert (=> bm!23614 d!61019))

(declare-fun d!61021 () Bool)

(declare-fun res!123014 () Bool)

(declare-fun e!162920 () Bool)

(assert (=> d!61021 (=> res!123014 e!162920)))

(assert (=> d!61021 (= res!123014 (= (select (arr!5836 (_keys!6773 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!61021 (= (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!162920)))

(declare-fun b!251209 () Bool)

(declare-fun e!162921 () Bool)

(assert (=> b!251209 (= e!162920 e!162921)))

(declare-fun res!123015 () Bool)

(assert (=> b!251209 (=> (not res!123015) (not e!162921))))

(assert (=> b!251209 (= res!123015 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6181 (_keys!6773 thiss!1504))))))

(declare-fun b!251210 () Bool)

(assert (=> b!251210 (= e!162921 (arrayContainsKey!0 (_keys!6773 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!61021 (not res!123014)) b!251209))

(assert (= (and b!251209 res!123015) b!251210))

(assert (=> d!61021 m!267367))

(declare-fun m!267589 () Bool)

(assert (=> b!251210 m!267589))

(assert (=> b!250915 d!61021))

(declare-fun b!251219 () Bool)

(declare-fun res!123027 () Bool)

(declare-fun e!162924 () Bool)

(assert (=> b!251219 (=> (not res!123027) (not e!162924))))

(assert (=> b!251219 (= res!123027 (and (= (size!6180 (_values!4618 thiss!1504)) (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001)) (= (size!6181 (_keys!6773 thiss!1504)) (size!6180 (_values!4618 thiss!1504))) (bvsge (_size!1903 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1903 thiss!1504) (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!61023 () Bool)

(declare-fun res!123024 () Bool)

(assert (=> d!61023 (=> (not res!123024) (not e!162924))))

(assert (=> d!61023 (= res!123024 (validMask!0 (mask!10825 thiss!1504)))))

(assert (=> d!61023 (= (simpleValid!263 thiss!1504) e!162924)))

(declare-fun b!251221 () Bool)

(declare-fun res!123025 () Bool)

(assert (=> b!251221 (=> (not res!123025) (not e!162924))))

(declare-fun size!6184 (LongMapFixedSize!3708) (_ BitVec 32))

(assert (=> b!251221 (= res!123025 (= (size!6184 thiss!1504) (bvadd (_size!1903 thiss!1504) (bvsdiv (bvadd (extraKeys!4372 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!251222 () Bool)

(assert (=> b!251222 (= e!162924 (and (bvsge (extraKeys!4372 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4372 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1903 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!251220 () Bool)

(declare-fun res!123026 () Bool)

(assert (=> b!251220 (=> (not res!123026) (not e!162924))))

(assert (=> b!251220 (= res!123026 (bvsge (size!6184 thiss!1504) (_size!1903 thiss!1504)))))

(assert (= (and d!61023 res!123024) b!251219))

(assert (= (and b!251219 res!123027) b!251220))

(assert (= (and b!251220 res!123026) b!251221))

(assert (= (and b!251221 res!123025) b!251222))

(assert (=> d!61023 m!267097))

(declare-fun m!267591 () Bool)

(assert (=> b!251221 m!267591))

(assert (=> b!251220 m!267591))

(assert (=> d!60927 d!61023))

(assert (=> b!250973 d!60959))

(declare-fun d!61025 () Bool)

(declare-fun e!162926 () Bool)

(assert (=> d!61025 e!162926))

(declare-fun res!123028 () Bool)

(assert (=> d!61025 (=> res!123028 e!162926)))

(declare-fun lt!125951 () Bool)

(assert (=> d!61025 (= res!123028 (not lt!125951))))

(declare-fun lt!125953 () Bool)

(assert (=> d!61025 (= lt!125951 lt!125953)))

(declare-fun lt!125954 () Unit!7757)

(declare-fun e!162925 () Unit!7757)

(assert (=> d!61025 (= lt!125954 e!162925)))

(declare-fun c!42252 () Bool)

(assert (=> d!61025 (= c!42252 lt!125953)))

(assert (=> d!61025 (= lt!125953 (containsKey!290 (toList!1900 lt!125793) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!61025 (= (contains!1816 lt!125793 #b0000000000000000000000000000000000000000000000000000000000000000) lt!125951)))

(declare-fun b!251223 () Bool)

(declare-fun lt!125952 () Unit!7757)

(assert (=> b!251223 (= e!162925 lt!125952)))

(assert (=> b!251223 (= lt!125952 (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!1900 lt!125793) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251223 (isDefined!240 (getValueByKey!298 (toList!1900 lt!125793) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251224 () Bool)

(declare-fun Unit!7772 () Unit!7757)

(assert (=> b!251224 (= e!162925 Unit!7772)))

(declare-fun b!251225 () Bool)

(assert (=> b!251225 (= e!162926 (isDefined!240 (getValueByKey!298 (toList!1900 lt!125793) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61025 c!42252) b!251223))

(assert (= (and d!61025 (not c!42252)) b!251224))

(assert (= (and d!61025 (not res!123028)) b!251225))

(declare-fun m!267593 () Bool)

(assert (=> d!61025 m!267593))

(declare-fun m!267595 () Bool)

(assert (=> b!251223 m!267595))

(assert (=> b!251223 m!267331))

(assert (=> b!251223 m!267331))

(declare-fun m!267597 () Bool)

(assert (=> b!251223 m!267597))

(assert (=> b!251225 m!267331))

(assert (=> b!251225 m!267331))

(assert (=> b!251225 m!267597))

(assert (=> bm!23606 d!61025))

(declare-fun d!61027 () Bool)

(assert (=> d!61027 (= (apply!241 lt!125793 (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000)) (get!3002 (getValueByKey!298 (toList!1900 lt!125793) (select (arr!5836 (_keys!6773 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9002 () Bool)

(assert (= bs!9002 d!61027))

(assert (=> bs!9002 m!267205))

(assert (=> bs!9002 m!267343))

(assert (=> bs!9002 m!267343))

(declare-fun m!267599 () Bool)

(assert (=> bs!9002 m!267599))

(assert (=> b!250895 d!61027))

(declare-fun d!61029 () Bool)

(declare-fun c!42255 () Bool)

(assert (=> d!61029 (= c!42255 ((_ is ValueCellFull!2904) (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!162929 () V!8307)

(assert (=> d!61029 (= (get!3001 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!162929)))

(declare-fun b!251230 () Bool)

(declare-fun get!3003 (ValueCell!2904 V!8307) V!8307)

(assert (=> b!251230 (= e!162929 (get!3003 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!251231 () Bool)

(declare-fun get!3004 (ValueCell!2904 V!8307) V!8307)

(assert (=> b!251231 (= e!162929 (get!3004 (select (arr!5835 (_values!4618 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!579 (defaultEntry!4635 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61029 c!42255) b!251230))

(assert (= (and d!61029 (not c!42255)) b!251231))

(assert (=> b!251230 m!267219))

(assert (=> b!251230 m!267221))

(declare-fun m!267601 () Bool)

(assert (=> b!251230 m!267601))

(assert (=> b!251231 m!267219))

(assert (=> b!251231 m!267221))

(declare-fun m!267603 () Bool)

(assert (=> b!251231 m!267603))

(assert (=> b!250895 d!61029))

(declare-fun d!61031 () Bool)

(assert (=> d!61031 (= (inRange!0 (index!6707 lt!125812) (mask!10825 thiss!1504)) (and (bvsge (index!6707 lt!125812) #b00000000000000000000000000000000) (bvslt (index!6707 lt!125812) (bvadd (mask!10825 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!250938 d!61031))

(declare-fun d!61033 () Bool)

(declare-fun lt!125957 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!165 (List!3746) (InoxSet (_ BitVec 64)))

(assert (=> d!61033 (= lt!125957 (select (content!165 Nil!3743) (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun e!162935 () Bool)

(assert (=> d!61033 (= lt!125957 e!162935)))

(declare-fun res!123033 () Bool)

(assert (=> d!61033 (=> (not res!123033) (not e!162935))))

(assert (=> d!61033 (= res!123033 ((_ is Cons!3742) Nil!3743))))

(assert (=> d!61033 (= (contains!1818 Nil!3743 (select (arr!5836 lt!125679) #b00000000000000000000000000000000)) lt!125957)))

(declare-fun b!251236 () Bool)

(declare-fun e!162934 () Bool)

(assert (=> b!251236 (= e!162935 e!162934)))

(declare-fun res!123034 () Bool)

(assert (=> b!251236 (=> res!123034 e!162934)))

(assert (=> b!251236 (= res!123034 (= (h!4402 Nil!3743) (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(declare-fun b!251237 () Bool)

(assert (=> b!251237 (= e!162934 (contains!1818 (t!8789 Nil!3743) (select (arr!5836 lt!125679) #b00000000000000000000000000000000)))))

(assert (= (and d!61033 res!123033) b!251236))

(assert (= (and b!251236 (not res!123034)) b!251237))

(declare-fun m!267605 () Bool)

(assert (=> d!61033 m!267605))

(assert (=> d!61033 m!267297))

(declare-fun m!267607 () Bool)

(assert (=> d!61033 m!267607))

(assert (=> b!251237 m!267297))

(declare-fun m!267609 () Bool)

(assert (=> b!251237 m!267609))

(assert (=> b!250996 d!61033))

(declare-fun d!61035 () Bool)

(assert (=> d!61035 (isDefined!240 (getValueByKey!298 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))

(declare-fun lt!125960 () Unit!7757)

(declare-fun choose!1201 (List!3747 (_ BitVec 64)) Unit!7757)

(assert (=> d!61035 (= lt!125960 (choose!1201 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))

(declare-fun e!162938 () Bool)

(assert (=> d!61035 e!162938))

(declare-fun res!123037 () Bool)

(assert (=> d!61035 (=> (not res!123037) (not e!162938))))

(declare-fun isStrictlySorted!366 (List!3747) Bool)

(assert (=> d!61035 (= res!123037 (isStrictlySorted!366 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))))

(assert (=> d!61035 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!239 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932) lt!125960)))

(declare-fun b!251240 () Bool)

(assert (=> b!251240 (= e!162938 (containsKey!290 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))

(assert (= (and d!61035 res!123037) b!251240))

(assert (=> d!61035 m!267201))

(assert (=> d!61035 m!267201))

(assert (=> d!61035 m!267203))

(declare-fun m!267611 () Bool)

(assert (=> d!61035 m!267611))

(declare-fun m!267613 () Bool)

(assert (=> d!61035 m!267613))

(assert (=> b!251240 m!267197))

(assert (=> b!250842 d!61035))

(declare-fun d!61037 () Bool)

(declare-fun isEmpty!534 (Option!304) Bool)

(assert (=> d!61037 (= (isDefined!240 (getValueByKey!298 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932)) (not (isEmpty!534 (getValueByKey!298 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932))))))

(declare-fun bs!9003 () Bool)

(assert (= bs!9003 d!61037))

(assert (=> bs!9003 m!267201))

(declare-fun m!267615 () Bool)

(assert (=> bs!9003 m!267615))

(assert (=> b!250842 d!61037))

(declare-fun b!251252 () Bool)

(declare-fun e!162944 () Option!304)

(assert (=> b!251252 (= e!162944 None!302)))

(declare-fun b!251249 () Bool)

(declare-fun e!162943 () Option!304)

(assert (=> b!251249 (= e!162943 (Some!303 (_2!2431 (h!4403 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))))))))

(declare-fun b!251251 () Bool)

(assert (=> b!251251 (= e!162944 (getValueByKey!298 (t!8790 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))) key!932))))

(declare-fun b!251250 () Bool)

(assert (=> b!251250 (= e!162943 e!162944)))

(declare-fun c!42261 () Bool)

(assert (=> b!251250 (= c!42261 (and ((_ is Cons!3743) (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))) (not (= (_1!2431 (h!4403 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))))) key!932))))))

(declare-fun d!61039 () Bool)

(declare-fun c!42260 () Bool)

(assert (=> d!61039 (= c!42260 (and ((_ is Cons!3743) (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504)))) (= (_1!2431 (h!4403 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))))) key!932)))))

(assert (=> d!61039 (= (getValueByKey!298 (toList!1900 (getCurrentListMap!1423 (_keys!6773 thiss!1504) (_values!4618 thiss!1504) (mask!10825 thiss!1504) (extraKeys!4372 thiss!1504) (zeroValue!4476 thiss!1504) (minValue!4476 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4635 thiss!1504))) key!932) e!162943)))

(assert (= (and d!61039 c!42260) b!251249))

(assert (= (and d!61039 (not c!42260)) b!251250))

(assert (= (and b!251250 c!42261) b!251251))

(assert (= (and b!251250 (not c!42261)) b!251252))

(declare-fun m!267617 () Bool)

(assert (=> b!251251 m!267617))

(assert (=> b!250842 d!61039))

(declare-fun d!61041 () Bool)

(assert (=> d!61041 (= (validKeyInArray!0 (select (arr!5836 (_keys!6773 thiss!1504)) index!297)) (and (not (= (select (arr!5836 (_keys!6773 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5836 (_keys!6773 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!250948 d!61041))

(declare-fun d!61043 () Bool)

(declare-fun res!123040 () Bool)

(declare-fun e!162947 () Bool)

(assert (=> d!61043 (=> res!123040 e!162947)))

(assert (=> d!61043 (= res!123040 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6181 lt!125679)))))

(assert (=> d!61043 (= (arrayNoDuplicates!0 lt!125679 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42198 (Cons!3742 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) Nil!3743) Nil!3743)) e!162947)))

(declare-fun b!251253 () Bool)

(declare-fun e!162946 () Bool)

(assert (=> b!251253 (= e!162946 (contains!1818 (ite c!42198 (Cons!3742 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) Nil!3743) Nil!3743) (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251254 () Bool)

(declare-fun e!162945 () Bool)

(declare-fun e!162948 () Bool)

(assert (=> b!251254 (= e!162945 e!162948)))

(declare-fun c!42262 () Bool)

(assert (=> b!251254 (= c!42262 (validKeyInArray!0 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!23636 () Bool)

(declare-fun call!23639 () Bool)

(assert (=> bm!23636 (= call!23639 (arrayNoDuplicates!0 lt!125679 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!42262 (Cons!3742 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!42198 (Cons!3742 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) Nil!3743) Nil!3743)) (ite c!42198 (Cons!3742 (select (arr!5836 lt!125679) #b00000000000000000000000000000000) Nil!3743) Nil!3743))))))

(declare-fun b!251255 () Bool)

(assert (=> b!251255 (= e!162947 e!162945)))

(declare-fun res!123039 () Bool)

(assert (=> b!251255 (=> (not res!123039) (not e!162945))))

(assert (=> b!251255 (= res!123039 (not e!162946))))

(declare-fun res!123038 () Bool)

(assert (=> b!251255 (=> (not res!123038) (not e!162946))))

(assert (=> b!251255 (= res!123038 (validKeyInArray!0 (select (arr!5836 lt!125679) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251256 () Bool)

(assert (=> b!251256 (= e!162948 call!23639)))

(declare-fun b!251257 () Bool)

(assert (=> b!251257 (= e!162948 call!23639)))

(assert (= (and d!61043 (not res!123040)) b!251255))

(assert (= (and b!251255 res!123038) b!251253))

(assert (= (and b!251255 res!123039) b!251254))

(assert (= (and b!251254 c!42262) b!251256))

(assert (= (and b!251254 (not c!42262)) b!251257))

(assert (= (or b!251256 b!251257) bm!23636))

(assert (=> b!251253 m!267553))

(assert (=> b!251253 m!267553))

(declare-fun m!267619 () Bool)

(assert (=> b!251253 m!267619))

(assert (=> b!251254 m!267553))

(assert (=> b!251254 m!267553))

(assert (=> b!251254 m!267561))

(assert (=> bm!23636 m!267553))

(declare-fun m!267621 () Bool)

(assert (=> bm!23636 m!267621))

(assert (=> b!251255 m!267553))

(assert (=> b!251255 m!267553))

(assert (=> b!251255 m!267561))

(assert (=> bm!23618 d!61043))

(assert (=> b!250844 d!61037))

(assert (=> b!250844 d!61039))

(declare-fun d!61045 () Bool)

(assert (=> d!61045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12311 (store (arr!5836 (_keys!6773 thiss!1504)) index!297 key!932) (size!6181 (_keys!6773 thiss!1504))) (mask!10825 thiss!1504))))

(assert (=> d!61045 true))

(declare-fun _$56!27 () Unit!7757)

(assert (=> d!61045 (= (choose!102 key!932 (_keys!6773 thiss!1504) index!297 (mask!10825 thiss!1504)) _$56!27)))

(declare-fun bs!9004 () Bool)

(assert (= bs!9004 d!61045))

(assert (=> bs!9004 m!267107))

(assert (=> bs!9004 m!267315))

(assert (=> d!60919 d!61045))

(assert (=> d!60919 d!60911))

(declare-fun b!251259 () Bool)

(declare-fun e!162950 () Bool)

(assert (=> b!251259 (= e!162950 tp_is_empty!6495)))

(declare-fun condMapEmpty!11045 () Bool)

(declare-fun mapDefault!11045 () ValueCell!2904)

(assert (=> mapNonEmpty!11044 (= condMapEmpty!11045 (= mapRest!11044 ((as const (Array (_ BitVec 32) ValueCell!2904)) mapDefault!11045)))))

(declare-fun mapRes!11045 () Bool)

(assert (=> mapNonEmpty!11044 (= tp!23176 (and e!162950 mapRes!11045))))

(declare-fun b!251258 () Bool)

(declare-fun e!162949 () Bool)

(assert (=> b!251258 (= e!162949 tp_is_empty!6495)))

(declare-fun mapNonEmpty!11045 () Bool)

(declare-fun tp!23177 () Bool)

(assert (=> mapNonEmpty!11045 (= mapRes!11045 (and tp!23177 e!162949))))

(declare-fun mapKey!11045 () (_ BitVec 32))

(declare-fun mapValue!11045 () ValueCell!2904)

(declare-fun mapRest!11045 () (Array (_ BitVec 32) ValueCell!2904))

(assert (=> mapNonEmpty!11045 (= mapRest!11044 (store mapRest!11045 mapKey!11045 mapValue!11045))))

(declare-fun mapIsEmpty!11045 () Bool)

(assert (=> mapIsEmpty!11045 mapRes!11045))

(assert (= (and mapNonEmpty!11044 condMapEmpty!11045) mapIsEmpty!11045))

(assert (= (and mapNonEmpty!11044 (not condMapEmpty!11045)) mapNonEmpty!11045))

(assert (= (and mapNonEmpty!11045 ((_ is ValueCellFull!2904) mapValue!11045)) b!251258))

(assert (= (and mapNonEmpty!11044 ((_ is ValueCellFull!2904) mapDefault!11045)) b!251259))

(declare-fun m!267623 () Bool)

(assert (=> mapNonEmpty!11045 m!267623))

(declare-fun b_lambda!8129 () Bool)

(assert (= b_lambda!8125 (or (and b!250739 b_free!6633) b_lambda!8129)))

(declare-fun b_lambda!8131 () Bool)

(assert (= b_lambda!8127 (or (and b!250739 b_free!6633) b_lambda!8131)))

(check-sat (not b!251120) (not bm!23620) (not b!251231) (not b!251112) (not b!251206) (not b!251253) (not b!251100) (not d!60983) (not b!251146) (not b!251025) (not b!251221) (not d!60979) (not b!251255) (not d!60987) (not d!61013) (not d!60963) (not b!251055) (not b!251090) (not b!251164) (not b!251019) (not bm!23632) (not b!251159) (not d!60993) (not b!251225) (not b!251066) (not b!251121) (not b!251162) (not b!251023) (not d!60945) (not d!60961) (not b!251114) (not b!251148) (not b_next!6633) (not b!251119) (not d!60949) (not b!251220) (not b!251174) (not b!251158) (not b!251083) (not d!60933) (not d!60957) (not bm!23626) (not b!251029) (not d!61017) (not d!60977) (not b!251097) (not d!61025) (not b!251027) (not d!61045) (not b!251170) (not b!251230) (not d!60929) (not b!251149) b_and!13681 (not d!60999) (not d!61035) (not b!251254) (not d!60981) (not d!60951) (not b!251064) (not b_lambda!8129) (not b!251153) (not b!251166) (not b!251018) (not bm!23625) (not b!251098) (not b!251223) (not b!251116) (not d!60953) (not d!60937) (not b_lambda!8123) (not d!61023) (not b!251154) (not b!251115) (not d!60943) (not d!61033) tp_is_empty!6495 (not b!251251) (not b!251155) (not d!60991) (not d!61005) (not bm!23619) (not d!60971) (not bm!23634) (not b!251152) (not b!251173) (not bm!23635) (not b!251210) (not b!251237) (not d!60969) (not bm!23633) (not d!61027) (not d!60997) (not b!251062) (not b!251175) (not d!60985) (not d!60973) (not b!251240) (not b!251106) (not d!60989) (not d!61037) (not bm!23630) (not b!251172) (not b!251086) (not b!251020) (not bm!23636) (not d!60995) (not b!251099) (not b_lambda!8131) (not b!251118) (not d!60965) (not b!251157) (not mapNonEmpty!11045) (not d!60975) (not b!251199) (not bm!23631) (not bm!23627))
(check-sat b_and!13681 (not b_next!6633))
