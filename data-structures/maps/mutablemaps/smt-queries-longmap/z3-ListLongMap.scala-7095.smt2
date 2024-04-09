; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90054 () Bool)

(assert start!90054)

(declare-fun b!1030732 () Bool)

(declare-fun b_free!20625 () Bool)

(declare-fun b_next!20625 () Bool)

(assert (=> b!1030732 (= b_free!20625 (not b_next!20625))))

(declare-fun tp!72947 () Bool)

(declare-fun b_and!33035 () Bool)

(assert (=> b!1030732 (= tp!72947 b_and!33035)))

(declare-fun b!1030728 () Bool)

(declare-fun res!689309 () Bool)

(declare-fun e!582125 () Bool)

(assert (=> b!1030728 (=> (not res!689309) (not e!582125))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030728 (= res!689309 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030729 () Bool)

(declare-fun e!582121 () Bool)

(declare-fun e!582126 () Bool)

(assert (=> b!1030729 (= e!582121 (not e!582126))))

(declare-fun res!689312 () Bool)

(assert (=> b!1030729 (=> res!689312 e!582126)))

(declare-datatypes ((V!37333 0))(
  ( (V!37334 (val!12223 Int)) )
))
(declare-datatypes ((ValueCell!11469 0))(
  ( (ValueCellFull!11469 (v!14801 V!37333)) (EmptyCell!11469) )
))
(declare-datatypes ((Unit!33646 0))(
  ( (Unit!33647) )
))
(declare-datatypes ((array!64738 0))(
  ( (array!64739 (arr!31167 (Array (_ BitVec 32) (_ BitVec 64))) (size!31685 (_ BitVec 32))) )
))
(declare-datatypes ((array!64740 0))(
  ( (array!64741 (arr!31168 (Array (_ BitVec 32) ValueCell!11469)) (size!31686 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5532 0))(
  ( (LongMapFixedSize!5533 (defaultEntry!6140 Int) (mask!29919 (_ BitVec 32)) (extraKeys!5872 (_ BitVec 32)) (zeroValue!5976 V!37333) (minValue!5976 V!37333) (_size!2821 (_ BitVec 32)) (_keys!11310 array!64738) (_values!6163 array!64740) (_vacant!2821 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15698 0))(
  ( (tuple2!15699 (_1!7859 Unit!33646) (_2!7859 LongMapFixedSize!5532)) )
))
(declare-fun lt!454782 () tuple2!15698)

(declare-datatypes ((tuple2!15700 0))(
  ( (tuple2!15701 (_1!7860 (_ BitVec 64)) (_2!7860 V!37333)) )
))
(declare-datatypes ((List!21951 0))(
  ( (Nil!21948) (Cons!21947 (h!23149 tuple2!15700) (t!31078 List!21951)) )
))
(declare-datatypes ((ListLongMap!13809 0))(
  ( (ListLongMap!13810 (toList!6920 List!21951)) )
))
(declare-fun contains!5999 (ListLongMap!13809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3927 (array!64738 array!64740 (_ BitVec 32) (_ BitVec 32) V!37333 V!37333 (_ BitVec 32) Int) ListLongMap!13809)

(assert (=> b!1030729 (= res!689312 (not (contains!5999 (getCurrentListMap!3927 (_keys!11310 (_2!7859 lt!454782)) (_values!6163 (_2!7859 lt!454782)) (mask!29919 (_2!7859 lt!454782)) (extraKeys!5872 (_2!7859 lt!454782)) (zeroValue!5976 (_2!7859 lt!454782)) (minValue!5976 (_2!7859 lt!454782)) #b00000000000000000000000000000000 (defaultEntry!6140 (_2!7859 lt!454782))) key!909)))))

(declare-fun lt!454779 () array!64740)

(declare-fun lt!454788 () array!64738)

(declare-fun thiss!1427 () LongMapFixedSize!5532)

(declare-fun Unit!33648 () Unit!33646)

(declare-fun Unit!33649 () Unit!33646)

(assert (=> b!1030729 (= lt!454782 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2821 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15699 Unit!33648 (LongMapFixedSize!5533 (defaultEntry!6140 thiss!1427) (mask!29919 thiss!1427) (extraKeys!5872 thiss!1427) (zeroValue!5976 thiss!1427) (minValue!5976 thiss!1427) (bvsub (_size!2821 thiss!1427) #b00000000000000000000000000000001) lt!454788 lt!454779 (bvadd #b00000000000000000000000000000001 (_vacant!2821 thiss!1427)))) (tuple2!15699 Unit!33649 (LongMapFixedSize!5533 (defaultEntry!6140 thiss!1427) (mask!29919 thiss!1427) (extraKeys!5872 thiss!1427) (zeroValue!5976 thiss!1427) (minValue!5976 thiss!1427) (bvsub (_size!2821 thiss!1427) #b00000000000000000000000000000001) lt!454788 lt!454779 (_vacant!2821 thiss!1427)))))))

(declare-fun -!496 (ListLongMap!13809 (_ BitVec 64)) ListLongMap!13809)

(assert (=> b!1030729 (= (-!496 (getCurrentListMap!3927 (_keys!11310 thiss!1427) (_values!6163 thiss!1427) (mask!29919 thiss!1427) (extraKeys!5872 thiss!1427) (zeroValue!5976 thiss!1427) (minValue!5976 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6140 thiss!1427)) key!909) (getCurrentListMap!3927 lt!454788 lt!454779 (mask!29919 thiss!1427) (extraKeys!5872 thiss!1427) (zeroValue!5976 thiss!1427) (minValue!5976 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6140 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9682 0))(
  ( (MissingZero!9682 (index!41098 (_ BitVec 32))) (Found!9682 (index!41099 (_ BitVec 32))) (Intermediate!9682 (undefined!10494 Bool) (index!41100 (_ BitVec 32)) (x!91731 (_ BitVec 32))) (Undefined!9682) (MissingVacant!9682 (index!41101 (_ BitVec 32))) )
))
(declare-fun lt!454781 () SeekEntryResult!9682)

(declare-fun dynLambda!1971 (Int (_ BitVec 64)) V!37333)

(assert (=> b!1030729 (= lt!454779 (array!64741 (store (arr!31168 (_values!6163 thiss!1427)) (index!41099 lt!454781) (ValueCellFull!11469 (dynLambda!1971 (defaultEntry!6140 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31686 (_values!6163 thiss!1427))))))

(declare-fun lt!454780 () Unit!33646)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!20 (array!64738 array!64740 (_ BitVec 32) (_ BitVec 32) V!37333 V!37333 (_ BitVec 32) (_ BitVec 64) Int) Unit!33646)

(assert (=> b!1030729 (= lt!454780 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!20 (_keys!11310 thiss!1427) (_values!6163 thiss!1427) (mask!29919 thiss!1427) (extraKeys!5872 thiss!1427) (zeroValue!5976 thiss!1427) (minValue!5976 thiss!1427) (index!41099 lt!454781) key!909 (defaultEntry!6140 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030729 (not (arrayContainsKey!0 lt!454788 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454783 () Unit!33646)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64738 (_ BitVec 32) (_ BitVec 64)) Unit!33646)

(assert (=> b!1030729 (= lt!454783 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11310 thiss!1427) (index!41099 lt!454781) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64738 (_ BitVec 32)) Bool)

(assert (=> b!1030729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454788 (mask!29919 thiss!1427))))

(declare-fun lt!454785 () Unit!33646)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64738 (_ BitVec 32) (_ BitVec 32)) Unit!33646)

(assert (=> b!1030729 (= lt!454785 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11310 thiss!1427) (index!41099 lt!454781) (mask!29919 thiss!1427)))))

(declare-datatypes ((List!21952 0))(
  ( (Nil!21949) (Cons!21948 (h!23150 (_ BitVec 64)) (t!31079 List!21952)) )
))
(declare-fun arrayNoDuplicates!0 (array!64738 (_ BitVec 32) List!21952) Bool)

(assert (=> b!1030729 (arrayNoDuplicates!0 lt!454788 #b00000000000000000000000000000000 Nil!21949)))

(declare-fun lt!454787 () Unit!33646)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21952) Unit!33646)

(assert (=> b!1030729 (= lt!454787 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11310 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41099 lt!454781) #b00000000000000000000000000000000 Nil!21949))))

(declare-fun arrayCountValidKeys!0 (array!64738 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030729 (= (arrayCountValidKeys!0 lt!454788 #b00000000000000000000000000000000 (size!31685 (_keys!11310 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11310 thiss!1427) #b00000000000000000000000000000000 (size!31685 (_keys!11310 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030729 (= lt!454788 (array!64739 (store (arr!31167 (_keys!11310 thiss!1427)) (index!41099 lt!454781) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31685 (_keys!11310 thiss!1427))))))

(declare-fun lt!454786 () Unit!33646)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64738 (_ BitVec 32) (_ BitVec 64)) Unit!33646)

(assert (=> b!1030729 (= lt!454786 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11310 thiss!1427) (index!41099 lt!454781) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030730 () Bool)

(assert (=> b!1030730 (= e!582125 e!582121)))

(declare-fun res!689307 () Bool)

(assert (=> b!1030730 (=> (not res!689307) (not e!582121))))

(get-info :version)

(assert (=> b!1030730 (= res!689307 ((_ is Found!9682) lt!454781))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64738 (_ BitVec 32)) SeekEntryResult!9682)

(assert (=> b!1030730 (= lt!454781 (seekEntry!0 key!909 (_keys!11310 thiss!1427) (mask!29919 thiss!1427)))))

(declare-fun b!1030731 () Bool)

(declare-fun e!582127 () Bool)

(declare-fun tp_is_empty!24345 () Bool)

(assert (=> b!1030731 (= e!582127 tp_is_empty!24345)))

(declare-fun b!1030733 () Bool)

(declare-fun e!582124 () Bool)

(assert (=> b!1030733 (= e!582124 tp_is_empty!24345)))

(declare-fun b!1030734 () Bool)

(declare-fun res!689310 () Bool)

(assert (=> b!1030734 (=> res!689310 e!582126)))

(assert (=> b!1030734 (= res!689310 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11310 (_2!7859 lt!454782)) (mask!29919 (_2!7859 lt!454782)))))))

(declare-fun b!1030735 () Bool)

(assert (=> b!1030735 (= e!582126 true)))

(declare-fun lt!454784 () Bool)

(assert (=> b!1030735 (= lt!454784 (arrayNoDuplicates!0 (_keys!11310 (_2!7859 lt!454782)) #b00000000000000000000000000000000 Nil!21949))))

(declare-fun mapIsEmpty!37971 () Bool)

(declare-fun mapRes!37971 () Bool)

(assert (=> mapIsEmpty!37971 mapRes!37971))

(declare-fun mapNonEmpty!37971 () Bool)

(declare-fun tp!72946 () Bool)

(assert (=> mapNonEmpty!37971 (= mapRes!37971 (and tp!72946 e!582127))))

(declare-fun mapRest!37971 () (Array (_ BitVec 32) ValueCell!11469))

(declare-fun mapValue!37971 () ValueCell!11469)

(declare-fun mapKey!37971 () (_ BitVec 32))

(assert (=> mapNonEmpty!37971 (= (arr!31168 (_values!6163 thiss!1427)) (store mapRest!37971 mapKey!37971 mapValue!37971))))

(declare-fun b!1030736 () Bool)

(declare-fun res!689313 () Bool)

(assert (=> b!1030736 (=> res!689313 e!582126)))

(assert (=> b!1030736 (= res!689313 (or (not (= (size!31686 (_values!6163 (_2!7859 lt!454782))) (bvadd #b00000000000000000000000000000001 (mask!29919 (_2!7859 lt!454782))))) (not (= (size!31685 (_keys!11310 (_2!7859 lt!454782))) (size!31686 (_values!6163 (_2!7859 lt!454782))))) (bvslt (mask!29919 (_2!7859 lt!454782)) #b00000000000000000000000000000000) (bvslt (extraKeys!5872 (_2!7859 lt!454782)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5872 (_2!7859 lt!454782)) #b00000000000000000000000000000011)))))

(declare-fun b!1030737 () Bool)

(declare-fun res!689311 () Bool)

(assert (=> b!1030737 (=> res!689311 e!582126)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030737 (= res!689311 (not (validMask!0 (mask!29919 (_2!7859 lt!454782)))))))

(declare-fun b!1030738 () Bool)

(declare-fun e!582123 () Bool)

(assert (=> b!1030738 (= e!582123 (and e!582124 mapRes!37971))))

(declare-fun condMapEmpty!37971 () Bool)

(declare-fun mapDefault!37971 () ValueCell!11469)

(assert (=> b!1030738 (= condMapEmpty!37971 (= (arr!31168 (_values!6163 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11469)) mapDefault!37971)))))

(declare-fun e!582122 () Bool)

(declare-fun array_inv!23971 (array!64738) Bool)

(declare-fun array_inv!23972 (array!64740) Bool)

(assert (=> b!1030732 (= e!582122 (and tp!72947 tp_is_empty!24345 (array_inv!23971 (_keys!11310 thiss!1427)) (array_inv!23972 (_values!6163 thiss!1427)) e!582123))))

(declare-fun res!689308 () Bool)

(assert (=> start!90054 (=> (not res!689308) (not e!582125))))

(declare-fun valid!2048 (LongMapFixedSize!5532) Bool)

(assert (=> start!90054 (= res!689308 (valid!2048 thiss!1427))))

(assert (=> start!90054 e!582125))

(assert (=> start!90054 e!582122))

(assert (=> start!90054 true))

(assert (= (and start!90054 res!689308) b!1030728))

(assert (= (and b!1030728 res!689309) b!1030730))

(assert (= (and b!1030730 res!689307) b!1030729))

(assert (= (and b!1030729 (not res!689312)) b!1030737))

(assert (= (and b!1030737 (not res!689311)) b!1030736))

(assert (= (and b!1030736 (not res!689313)) b!1030734))

(assert (= (and b!1030734 (not res!689310)) b!1030735))

(assert (= (and b!1030738 condMapEmpty!37971) mapIsEmpty!37971))

(assert (= (and b!1030738 (not condMapEmpty!37971)) mapNonEmpty!37971))

(assert (= (and mapNonEmpty!37971 ((_ is ValueCellFull!11469) mapValue!37971)) b!1030731))

(assert (= (and b!1030738 ((_ is ValueCellFull!11469) mapDefault!37971)) b!1030733))

(assert (= b!1030732 b!1030738))

(assert (= start!90054 b!1030732))

(declare-fun b_lambda!15999 () Bool)

(assert (=> (not b_lambda!15999) (not b!1030729)))

(declare-fun t!31077 () Bool)

(declare-fun tb!6951 () Bool)

(assert (=> (and b!1030732 (= (defaultEntry!6140 thiss!1427) (defaultEntry!6140 thiss!1427)) t!31077) tb!6951))

(declare-fun result!14223 () Bool)

(assert (=> tb!6951 (= result!14223 tp_is_empty!24345)))

(assert (=> b!1030729 t!31077))

(declare-fun b_and!33037 () Bool)

(assert (= b_and!33035 (and (=> t!31077 result!14223) b_and!33037)))

(declare-fun m!950665 () Bool)

(assert (=> mapNonEmpty!37971 m!950665))

(declare-fun m!950667 () Bool)

(assert (=> b!1030734 m!950667))

(declare-fun m!950669 () Bool)

(assert (=> b!1030732 m!950669))

(declare-fun m!950671 () Bool)

(assert (=> b!1030732 m!950671))

(declare-fun m!950673 () Bool)

(assert (=> b!1030737 m!950673))

(declare-fun m!950675 () Bool)

(assert (=> b!1030729 m!950675))

(declare-fun m!950677 () Bool)

(assert (=> b!1030729 m!950677))

(declare-fun m!950679 () Bool)

(assert (=> b!1030729 m!950679))

(declare-fun m!950681 () Bool)

(assert (=> b!1030729 m!950681))

(declare-fun m!950683 () Bool)

(assert (=> b!1030729 m!950683))

(declare-fun m!950685 () Bool)

(assert (=> b!1030729 m!950685))

(assert (=> b!1030729 m!950683))

(declare-fun m!950687 () Bool)

(assert (=> b!1030729 m!950687))

(declare-fun m!950689 () Bool)

(assert (=> b!1030729 m!950689))

(declare-fun m!950691 () Bool)

(assert (=> b!1030729 m!950691))

(declare-fun m!950693 () Bool)

(assert (=> b!1030729 m!950693))

(declare-fun m!950695 () Bool)

(assert (=> b!1030729 m!950695))

(declare-fun m!950697 () Bool)

(assert (=> b!1030729 m!950697))

(declare-fun m!950699 () Bool)

(assert (=> b!1030729 m!950699))

(assert (=> b!1030729 m!950697))

(declare-fun m!950701 () Bool)

(assert (=> b!1030729 m!950701))

(declare-fun m!950703 () Bool)

(assert (=> b!1030729 m!950703))

(declare-fun m!950705 () Bool)

(assert (=> b!1030729 m!950705))

(declare-fun m!950707 () Bool)

(assert (=> b!1030729 m!950707))

(declare-fun m!950709 () Bool)

(assert (=> b!1030729 m!950709))

(declare-fun m!950711 () Bool)

(assert (=> start!90054 m!950711))

(declare-fun m!950713 () Bool)

(assert (=> b!1030735 m!950713))

(declare-fun m!950715 () Bool)

(assert (=> b!1030730 m!950715))

(check-sat (not mapNonEmpty!37971) (not b!1030732) (not b!1030735) tp_is_empty!24345 (not b!1030734) (not b!1030730) (not b!1030737) (not start!90054) (not b!1030729) (not b_next!20625) (not b_lambda!15999) b_and!33037)
(check-sat b_and!33037 (not b_next!20625))
