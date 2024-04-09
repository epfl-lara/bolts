; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91322 () Bool)

(assert start!91322)

(declare-fun b!1041121 () Bool)

(declare-fun b_free!21033 () Bool)

(declare-fun b_next!21033 () Bool)

(assert (=> b!1041121 (= b_free!21033 (not b_next!21033))))

(declare-fun tp!74307 () Bool)

(declare-fun b_and!33583 () Bool)

(assert (=> b!1041121 (= tp!74307 b_and!33583)))

(declare-fun b!1041117 () Bool)

(declare-fun e!589603 () Bool)

(declare-fun e!589599 () Bool)

(assert (=> b!1041117 (= e!589603 (not e!589599))))

(declare-fun res!694061 () Bool)

(assert (=> b!1041117 (=> res!694061 e!589599)))

(declare-datatypes ((V!37877 0))(
  ( (V!37878 (val!12427 Int)) )
))
(declare-datatypes ((ValueCell!11673 0))(
  ( (ValueCellFull!11673 (v!15016 V!37877)) (EmptyCell!11673) )
))
(declare-datatypes ((array!65634 0))(
  ( (array!65635 (arr!31575 (Array (_ BitVec 32) (_ BitVec 64))) (size!32108 (_ BitVec 32))) )
))
(declare-datatypes ((array!65636 0))(
  ( (array!65637 (arr!31576 (Array (_ BitVec 32) ValueCell!11673)) (size!32109 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5940 0))(
  ( (LongMapFixedSize!5941 (defaultEntry!6352 Int) (mask!30365 (_ BitVec 32)) (extraKeys!6080 (_ BitVec 32)) (zeroValue!6186 V!37877) (minValue!6186 V!37877) (_size!3025 (_ BitVec 32)) (_keys!11580 array!65634) (_values!6375 array!65636) (_vacant!3025 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5940)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041117 (= res!694061 (not (validMask!0 (mask!30365 thiss!1427))))))

(declare-fun lt!458870 () array!65634)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041117 (not (arrayContainsKey!0 lt!458870 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9804 0))(
  ( (MissingZero!9804 (index!41586 (_ BitVec 32))) (Found!9804 (index!41587 (_ BitVec 32))) (Intermediate!9804 (undefined!10616 Bool) (index!41588 (_ BitVec 32)) (x!92944 (_ BitVec 32))) (Undefined!9804) (MissingVacant!9804 (index!41589 (_ BitVec 32))) )
))
(declare-fun lt!458873 () SeekEntryResult!9804)

(declare-datatypes ((Unit!34024 0))(
  ( (Unit!34025) )
))
(declare-fun lt!458869 () Unit!34024)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65634 (_ BitVec 32) (_ BitVec 64)) Unit!34024)

(assert (=> b!1041117 (= lt!458869 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11580 thiss!1427) (index!41587 lt!458873) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65634 (_ BitVec 32)) Bool)

(assert (=> b!1041117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458870 (mask!30365 thiss!1427))))

(declare-fun lt!458868 () Unit!34024)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65634 (_ BitVec 32) (_ BitVec 32)) Unit!34024)

(assert (=> b!1041117 (= lt!458868 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11580 thiss!1427) (index!41587 lt!458873) (mask!30365 thiss!1427)))))

(declare-datatypes ((List!22088 0))(
  ( (Nil!22085) (Cons!22084 (h!23289 (_ BitVec 64)) (t!31309 List!22088)) )
))
(declare-fun arrayNoDuplicates!0 (array!65634 (_ BitVec 32) List!22088) Bool)

(assert (=> b!1041117 (arrayNoDuplicates!0 lt!458870 #b00000000000000000000000000000000 Nil!22085)))

(declare-fun lt!458871 () Unit!34024)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65634 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22088) Unit!34024)

(assert (=> b!1041117 (= lt!458871 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11580 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41587 lt!458873) #b00000000000000000000000000000000 Nil!22085))))

(declare-fun arrayCountValidKeys!0 (array!65634 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041117 (= (arrayCountValidKeys!0 lt!458870 #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041117 (= lt!458870 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))))))

(declare-fun lt!458872 () Unit!34024)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65634 (_ BitVec 32) (_ BitVec 64)) Unit!34024)

(assert (=> b!1041117 (= lt!458872 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11580 thiss!1427) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38720 () Bool)

(declare-fun mapRes!38720 () Bool)

(declare-fun tp!74308 () Bool)

(declare-fun e!589601 () Bool)

(assert (=> mapNonEmpty!38720 (= mapRes!38720 (and tp!74308 e!589601))))

(declare-fun mapKey!38720 () (_ BitVec 32))

(declare-fun mapValue!38720 () ValueCell!11673)

(declare-fun mapRest!38720 () (Array (_ BitVec 32) ValueCell!11673))

(assert (=> mapNonEmpty!38720 (= (arr!31576 (_values!6375 thiss!1427)) (store mapRest!38720 mapKey!38720 mapValue!38720))))

(declare-fun b!1041118 () Bool)

(declare-fun e!589602 () Bool)

(declare-fun tp_is_empty!24753 () Bool)

(assert (=> b!1041118 (= e!589602 tp_is_empty!24753)))

(declare-fun b!1041119 () Bool)

(declare-fun e!589598 () Bool)

(assert (=> b!1041119 (= e!589598 e!589603)))

(declare-fun res!694062 () Bool)

(assert (=> b!1041119 (=> (not res!694062) (not e!589603))))

(get-info :version)

(assert (=> b!1041119 (= res!694062 ((_ is Found!9804) lt!458873))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65634 (_ BitVec 32)) SeekEntryResult!9804)

(assert (=> b!1041119 (= lt!458873 (seekEntry!0 key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(declare-fun b!1041120 () Bool)

(assert (=> b!1041120 (= e!589599 (or (not (= (size!32109 (_values!6375 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30365 thiss!1427)))) (= (size!32108 (_keys!11580 thiss!1427)) (size!32109 (_values!6375 thiss!1427)))))))

(declare-fun res!694060 () Bool)

(assert (=> start!91322 (=> (not res!694060) (not e!589598))))

(declare-fun valid!2184 (LongMapFixedSize!5940) Bool)

(assert (=> start!91322 (= res!694060 (valid!2184 thiss!1427))))

(assert (=> start!91322 e!589598))

(declare-fun e!589600 () Bool)

(assert (=> start!91322 e!589600))

(assert (=> start!91322 true))

(declare-fun e!589605 () Bool)

(declare-fun array_inv!24241 (array!65634) Bool)

(declare-fun array_inv!24242 (array!65636) Bool)

(assert (=> b!1041121 (= e!589600 (and tp!74307 tp_is_empty!24753 (array_inv!24241 (_keys!11580 thiss!1427)) (array_inv!24242 (_values!6375 thiss!1427)) e!589605))))

(declare-fun mapIsEmpty!38720 () Bool)

(assert (=> mapIsEmpty!38720 mapRes!38720))

(declare-fun b!1041122 () Bool)

(declare-fun res!694059 () Bool)

(assert (=> b!1041122 (=> (not res!694059) (not e!589598))))

(assert (=> b!1041122 (= res!694059 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1041123 () Bool)

(assert (=> b!1041123 (= e!589601 tp_is_empty!24753)))

(declare-fun b!1041124 () Bool)

(assert (=> b!1041124 (= e!589605 (and e!589602 mapRes!38720))))

(declare-fun condMapEmpty!38720 () Bool)

(declare-fun mapDefault!38720 () ValueCell!11673)

(assert (=> b!1041124 (= condMapEmpty!38720 (= (arr!31576 (_values!6375 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11673)) mapDefault!38720)))))

(assert (= (and start!91322 res!694060) b!1041122))

(assert (= (and b!1041122 res!694059) b!1041119))

(assert (= (and b!1041119 res!694062) b!1041117))

(assert (= (and b!1041117 (not res!694061)) b!1041120))

(assert (= (and b!1041124 condMapEmpty!38720) mapIsEmpty!38720))

(assert (= (and b!1041124 (not condMapEmpty!38720)) mapNonEmpty!38720))

(assert (= (and mapNonEmpty!38720 ((_ is ValueCellFull!11673) mapValue!38720)) b!1041123))

(assert (= (and b!1041124 ((_ is ValueCellFull!11673) mapDefault!38720)) b!1041118))

(assert (= b!1041121 b!1041124))

(assert (= start!91322 b!1041121))

(declare-fun m!960727 () Bool)

(assert (=> mapNonEmpty!38720 m!960727))

(declare-fun m!960729 () Bool)

(assert (=> b!1041117 m!960729))

(declare-fun m!960731 () Bool)

(assert (=> b!1041117 m!960731))

(declare-fun m!960733 () Bool)

(assert (=> b!1041117 m!960733))

(declare-fun m!960735 () Bool)

(assert (=> b!1041117 m!960735))

(declare-fun m!960737 () Bool)

(assert (=> b!1041117 m!960737))

(declare-fun m!960739 () Bool)

(assert (=> b!1041117 m!960739))

(declare-fun m!960741 () Bool)

(assert (=> b!1041117 m!960741))

(declare-fun m!960743 () Bool)

(assert (=> b!1041117 m!960743))

(declare-fun m!960745 () Bool)

(assert (=> b!1041117 m!960745))

(declare-fun m!960747 () Bool)

(assert (=> b!1041117 m!960747))

(declare-fun m!960749 () Bool)

(assert (=> b!1041117 m!960749))

(declare-fun m!960751 () Bool)

(assert (=> start!91322 m!960751))

(declare-fun m!960753 () Bool)

(assert (=> b!1041119 m!960753))

(declare-fun m!960755 () Bool)

(assert (=> b!1041121 m!960755))

(declare-fun m!960757 () Bool)

(assert (=> b!1041121 m!960757))

(check-sat (not mapNonEmpty!38720) b_and!33583 (not b!1041121) tp_is_empty!24753 (not b!1041117) (not b_next!21033) (not b!1041119) (not start!91322))
(check-sat b_and!33583 (not b_next!21033))
(get-model)

(declare-fun d!125757 () Bool)

(declare-fun res!694081 () Bool)

(declare-fun e!589632 () Bool)

(assert (=> d!125757 (=> (not res!694081) (not e!589632))))

(declare-fun simpleValid!436 (LongMapFixedSize!5940) Bool)

(assert (=> d!125757 (= res!694081 (simpleValid!436 thiss!1427))))

(assert (=> d!125757 (= (valid!2184 thiss!1427) e!589632)))

(declare-fun b!1041155 () Bool)

(declare-fun res!694082 () Bool)

(assert (=> b!1041155 (=> (not res!694082) (not e!589632))))

(assert (=> b!1041155 (= res!694082 (= (arrayCountValidKeys!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (_size!3025 thiss!1427)))))

(declare-fun b!1041156 () Bool)

(declare-fun res!694083 () Bool)

(assert (=> b!1041156 (=> (not res!694083) (not e!589632))))

(assert (=> b!1041156 (= res!694083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(declare-fun b!1041157 () Bool)

(assert (=> b!1041157 (= e!589632 (arrayNoDuplicates!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 Nil!22085))))

(assert (= (and d!125757 res!694081) b!1041155))

(assert (= (and b!1041155 res!694082) b!1041156))

(assert (= (and b!1041156 res!694083) b!1041157))

(declare-fun m!960791 () Bool)

(assert (=> d!125757 m!960791))

(assert (=> b!1041155 m!960735))

(declare-fun m!960793 () Bool)

(assert (=> b!1041156 m!960793))

(declare-fun m!960795 () Bool)

(assert (=> b!1041157 m!960795))

(assert (=> start!91322 d!125757))

(declare-fun d!125759 () Bool)

(assert (=> d!125759 (= (array_inv!24241 (_keys!11580 thiss!1427)) (bvsge (size!32108 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041121 d!125759))

(declare-fun d!125761 () Bool)

(assert (=> d!125761 (= (array_inv!24242 (_values!6375 thiss!1427)) (bvsge (size!32109 (_values!6375 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041121 d!125761))

(declare-fun b!1041169 () Bool)

(declare-fun e!589638 () Bool)

(assert (=> b!1041169 (= e!589638 (= (arrayCountValidKeys!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1041168 () Bool)

(declare-fun e!589637 () Bool)

(assert (=> b!1041168 (= e!589637 (bvslt (size!32108 (_keys!11580 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1041166 () Bool)

(declare-fun res!694095 () Bool)

(assert (=> b!1041166 (=> (not res!694095) (not e!589637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1041166 (= res!694095 (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873))))))

(declare-fun b!1041167 () Bool)

(declare-fun res!694092 () Bool)

(assert (=> b!1041167 (=> (not res!694092) (not e!589637))))

(assert (=> b!1041167 (= res!694092 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!125763 () Bool)

(assert (=> d!125763 e!589638))

(declare-fun res!694093 () Bool)

(assert (=> d!125763 (=> (not res!694093) (not e!589638))))

(assert (=> d!125763 (= res!694093 (and (bvsge (index!41587 lt!458873) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458873) (size!32108 (_keys!11580 thiss!1427)))))))

(declare-fun lt!458894 () Unit!34024)

(declare-fun choose!82 (array!65634 (_ BitVec 32) (_ BitVec 64)) Unit!34024)

(assert (=> d!125763 (= lt!458894 (choose!82 (_keys!11580 thiss!1427) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125763 e!589637))

(declare-fun res!694094 () Bool)

(assert (=> d!125763 (=> (not res!694094) (not e!589637))))

(assert (=> d!125763 (= res!694094 (and (bvsge (index!41587 lt!458873) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458873) (size!32108 (_keys!11580 thiss!1427)))))))

(assert (=> d!125763 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11580 thiss!1427) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458894)))

(assert (= (and d!125763 res!694094) b!1041166))

(assert (= (and b!1041166 res!694095) b!1041167))

(assert (= (and b!1041167 res!694092) b!1041168))

(assert (= (and d!125763 res!694093) b!1041169))

(assert (=> b!1041169 m!960741))

(declare-fun m!960797 () Bool)

(assert (=> b!1041169 m!960797))

(assert (=> b!1041169 m!960735))

(declare-fun m!960799 () Bool)

(assert (=> b!1041166 m!960799))

(assert (=> b!1041166 m!960799))

(declare-fun m!960801 () Bool)

(assert (=> b!1041166 m!960801))

(declare-fun m!960803 () Bool)

(assert (=> b!1041167 m!960803))

(declare-fun m!960805 () Bool)

(assert (=> d!125763 m!960805))

(assert (=> b!1041117 d!125763))

(declare-fun b!1041178 () Bool)

(declare-fun e!589643 () (_ BitVec 32))

(declare-fun call!44100 () (_ BitVec 32))

(assert (=> b!1041178 (= e!589643 call!44100)))

(declare-fun d!125765 () Bool)

(declare-fun lt!458897 () (_ BitVec 32))

(assert (=> d!125765 (and (bvsge lt!458897 #b00000000000000000000000000000000) (bvsle lt!458897 (bvsub (size!32108 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun e!589644 () (_ BitVec 32))

(assert (=> d!125765 (= lt!458897 e!589644)))

(declare-fun c!105552 () Bool)

(assert (=> d!125765 (= c!105552 (bvsge #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125765 (and (bvsle #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32108 (_keys!11580 thiss!1427)) (size!32108 lt!458870)))))

(assert (=> d!125765 (= (arrayCountValidKeys!0 lt!458870 #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) lt!458897)))

(declare-fun b!1041179 () Bool)

(assert (=> b!1041179 (= e!589644 #b00000000000000000000000000000000)))

(declare-fun b!1041180 () Bool)

(assert (=> b!1041180 (= e!589643 (bvadd #b00000000000000000000000000000001 call!44100))))

(declare-fun b!1041181 () Bool)

(assert (=> b!1041181 (= e!589644 e!589643)))

(declare-fun c!105553 () Bool)

(assert (=> b!1041181 (= c!105553 (validKeyInArray!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun bm!44097 () Bool)

(assert (=> bm!44097 (= call!44100 (arrayCountValidKeys!0 lt!458870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (= (and d!125765 c!105552) b!1041179))

(assert (= (and d!125765 (not c!105552)) b!1041181))

(assert (= (and b!1041181 c!105553) b!1041180))

(assert (= (and b!1041181 (not c!105553)) b!1041178))

(assert (= (or b!1041180 b!1041178) bm!44097))

(declare-fun m!960807 () Bool)

(assert (=> b!1041181 m!960807))

(assert (=> b!1041181 m!960807))

(declare-fun m!960809 () Bool)

(assert (=> b!1041181 m!960809))

(declare-fun m!960811 () Bool)

(assert (=> bm!44097 m!960811))

(assert (=> b!1041117 d!125765))

(declare-fun d!125767 () Bool)

(declare-fun e!589647 () Bool)

(assert (=> d!125767 e!589647))

(declare-fun res!694098 () Bool)

(assert (=> d!125767 (=> (not res!694098) (not e!589647))))

(assert (=> d!125767 (= res!694098 (and (bvsge (index!41587 lt!458873) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458873) (size!32108 (_keys!11580 thiss!1427)))))))

(declare-fun lt!458900 () Unit!34024)

(declare-fun choose!25 (array!65634 (_ BitVec 32) (_ BitVec 32)) Unit!34024)

(assert (=> d!125767 (= lt!458900 (choose!25 (_keys!11580 thiss!1427) (index!41587 lt!458873) (mask!30365 thiss!1427)))))

(assert (=> d!125767 (validMask!0 (mask!30365 thiss!1427))))

(assert (=> d!125767 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11580 thiss!1427) (index!41587 lt!458873) (mask!30365 thiss!1427)) lt!458900)))

(declare-fun b!1041184 () Bool)

(assert (=> b!1041184 (= e!589647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (mask!30365 thiss!1427)))))

(assert (= (and d!125767 res!694098) b!1041184))

(declare-fun m!960813 () Bool)

(assert (=> d!125767 m!960813))

(assert (=> d!125767 m!960731))

(assert (=> b!1041184 m!960741))

(declare-fun m!960815 () Bool)

(assert (=> b!1041184 m!960815))

(assert (=> b!1041117 d!125767))

(declare-fun d!125769 () Bool)

(assert (=> d!125769 (= (validMask!0 (mask!30365 thiss!1427)) (and (or (= (mask!30365 thiss!1427) #b00000000000000000000000000000111) (= (mask!30365 thiss!1427) #b00000000000000000000000000001111) (= (mask!30365 thiss!1427) #b00000000000000000000000000011111) (= (mask!30365 thiss!1427) #b00000000000000000000000000111111) (= (mask!30365 thiss!1427) #b00000000000000000000000001111111) (= (mask!30365 thiss!1427) #b00000000000000000000000011111111) (= (mask!30365 thiss!1427) #b00000000000000000000000111111111) (= (mask!30365 thiss!1427) #b00000000000000000000001111111111) (= (mask!30365 thiss!1427) #b00000000000000000000011111111111) (= (mask!30365 thiss!1427) #b00000000000000000000111111111111) (= (mask!30365 thiss!1427) #b00000000000000000001111111111111) (= (mask!30365 thiss!1427) #b00000000000000000011111111111111) (= (mask!30365 thiss!1427) #b00000000000000000111111111111111) (= (mask!30365 thiss!1427) #b00000000000000001111111111111111) (= (mask!30365 thiss!1427) #b00000000000000011111111111111111) (= (mask!30365 thiss!1427) #b00000000000000111111111111111111) (= (mask!30365 thiss!1427) #b00000000000001111111111111111111) (= (mask!30365 thiss!1427) #b00000000000011111111111111111111) (= (mask!30365 thiss!1427) #b00000000000111111111111111111111) (= (mask!30365 thiss!1427) #b00000000001111111111111111111111) (= (mask!30365 thiss!1427) #b00000000011111111111111111111111) (= (mask!30365 thiss!1427) #b00000000111111111111111111111111) (= (mask!30365 thiss!1427) #b00000001111111111111111111111111) (= (mask!30365 thiss!1427) #b00000011111111111111111111111111) (= (mask!30365 thiss!1427) #b00000111111111111111111111111111) (= (mask!30365 thiss!1427) #b00001111111111111111111111111111) (= (mask!30365 thiss!1427) #b00011111111111111111111111111111) (= (mask!30365 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30365 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1041117 d!125769))

(declare-fun b!1041195 () Bool)

(declare-fun e!589657 () Bool)

(declare-fun e!589658 () Bool)

(assert (=> b!1041195 (= e!589657 e!589658)))

(declare-fun c!105556 () Bool)

(assert (=> b!1041195 (= c!105556 (validKeyInArray!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun b!1041196 () Bool)

(declare-fun e!589659 () Bool)

(declare-fun contains!6076 (List!22088 (_ BitVec 64)) Bool)

(assert (=> b!1041196 (= e!589659 (contains!6076 Nil!22085 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun b!1041197 () Bool)

(declare-fun e!589656 () Bool)

(assert (=> b!1041197 (= e!589656 e!589657)))

(declare-fun res!694106 () Bool)

(assert (=> b!1041197 (=> (not res!694106) (not e!589657))))

(assert (=> b!1041197 (= res!694106 (not e!589659))))

(declare-fun res!694107 () Bool)

(assert (=> b!1041197 (=> (not res!694107) (not e!589659))))

(assert (=> b!1041197 (= res!694107 (validKeyInArray!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun bm!44100 () Bool)

(declare-fun call!44103 () Bool)

(assert (=> bm!44100 (= call!44103 (arrayNoDuplicates!0 lt!458870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105556 (Cons!22084 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) Nil!22085) Nil!22085)))))

(declare-fun d!125771 () Bool)

(declare-fun res!694105 () Bool)

(assert (=> d!125771 (=> res!694105 e!589656)))

(assert (=> d!125771 (= res!694105 (bvsge #b00000000000000000000000000000000 (size!32108 lt!458870)))))

(assert (=> d!125771 (= (arrayNoDuplicates!0 lt!458870 #b00000000000000000000000000000000 Nil!22085) e!589656)))

(declare-fun b!1041198 () Bool)

(assert (=> b!1041198 (= e!589658 call!44103)))

(declare-fun b!1041199 () Bool)

(assert (=> b!1041199 (= e!589658 call!44103)))

(assert (= (and d!125771 (not res!694105)) b!1041197))

(assert (= (and b!1041197 res!694107) b!1041196))

(assert (= (and b!1041197 res!694106) b!1041195))

(assert (= (and b!1041195 c!105556) b!1041199))

(assert (= (and b!1041195 (not c!105556)) b!1041198))

(assert (= (or b!1041199 b!1041198) bm!44100))

(assert (=> b!1041195 m!960807))

(assert (=> b!1041195 m!960807))

(assert (=> b!1041195 m!960809))

(assert (=> b!1041196 m!960807))

(assert (=> b!1041196 m!960807))

(declare-fun m!960817 () Bool)

(assert (=> b!1041196 m!960817))

(assert (=> b!1041197 m!960807))

(assert (=> b!1041197 m!960807))

(assert (=> b!1041197 m!960809))

(assert (=> bm!44100 m!960807))

(declare-fun m!960819 () Bool)

(assert (=> bm!44100 m!960819))

(assert (=> b!1041117 d!125771))

(declare-fun b!1041208 () Bool)

(declare-fun e!589668 () Bool)

(declare-fun call!44106 () Bool)

(assert (=> b!1041208 (= e!589668 call!44106)))

(declare-fun b!1041209 () Bool)

(declare-fun e!589667 () Bool)

(assert (=> b!1041209 (= e!589668 e!589667)))

(declare-fun lt!458909 () (_ BitVec 64))

(assert (=> b!1041209 (= lt!458909 (select (arr!31575 lt!458870) #b00000000000000000000000000000000))))

(declare-fun lt!458908 () Unit!34024)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65634 (_ BitVec 64) (_ BitVec 32)) Unit!34024)

(assert (=> b!1041209 (= lt!458908 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458870 lt!458909 #b00000000000000000000000000000000))))

(assert (=> b!1041209 (arrayContainsKey!0 lt!458870 lt!458909 #b00000000000000000000000000000000)))

(declare-fun lt!458907 () Unit!34024)

(assert (=> b!1041209 (= lt!458907 lt!458908)))

(declare-fun res!694113 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65634 (_ BitVec 32)) SeekEntryResult!9804)

(assert (=> b!1041209 (= res!694113 (= (seekEntryOrOpen!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) lt!458870 (mask!30365 thiss!1427)) (Found!9804 #b00000000000000000000000000000000)))))

(assert (=> b!1041209 (=> (not res!694113) (not e!589667))))

(declare-fun b!1041210 () Bool)

(declare-fun e!589666 () Bool)

(assert (=> b!1041210 (= e!589666 e!589668)))

(declare-fun c!105559 () Bool)

(assert (=> b!1041210 (= c!105559 (validKeyInArray!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun d!125773 () Bool)

(declare-fun res!694112 () Bool)

(assert (=> d!125773 (=> res!694112 e!589666)))

(assert (=> d!125773 (= res!694112 (bvsge #b00000000000000000000000000000000 (size!32108 lt!458870)))))

(assert (=> d!125773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458870 (mask!30365 thiss!1427)) e!589666)))

(declare-fun b!1041211 () Bool)

(assert (=> b!1041211 (= e!589667 call!44106)))

(declare-fun bm!44103 () Bool)

(assert (=> bm!44103 (= call!44106 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458870 (mask!30365 thiss!1427)))))

(assert (= (and d!125773 (not res!694112)) b!1041210))

(assert (= (and b!1041210 c!105559) b!1041209))

(assert (= (and b!1041210 (not c!105559)) b!1041208))

(assert (= (and b!1041209 res!694113) b!1041211))

(assert (= (or b!1041211 b!1041208) bm!44103))

(assert (=> b!1041209 m!960807))

(declare-fun m!960821 () Bool)

(assert (=> b!1041209 m!960821))

(declare-fun m!960823 () Bool)

(assert (=> b!1041209 m!960823))

(assert (=> b!1041209 m!960807))

(declare-fun m!960825 () Bool)

(assert (=> b!1041209 m!960825))

(assert (=> b!1041210 m!960807))

(assert (=> b!1041210 m!960807))

(assert (=> b!1041210 m!960809))

(declare-fun m!960827 () Bool)

(assert (=> bm!44103 m!960827))

(assert (=> b!1041117 d!125773))

(declare-fun d!125775 () Bool)

(declare-fun e!589671 () Bool)

(assert (=> d!125775 e!589671))

(declare-fun res!694116 () Bool)

(assert (=> d!125775 (=> (not res!694116) (not e!589671))))

(assert (=> d!125775 (= res!694116 (and (bvsge (index!41587 lt!458873) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458873) (size!32108 (_keys!11580 thiss!1427)))))))

(declare-fun lt!458912 () Unit!34024)

(declare-fun choose!53 (array!65634 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22088) Unit!34024)

(assert (=> d!125775 (= lt!458912 (choose!53 (_keys!11580 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41587 lt!458873) #b00000000000000000000000000000000 Nil!22085))))

(assert (=> d!125775 (bvslt (size!32108 (_keys!11580 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125775 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11580 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41587 lt!458873) #b00000000000000000000000000000000 Nil!22085) lt!458912)))

(declare-fun b!1041214 () Bool)

(assert (=> b!1041214 (= e!589671 (arrayNoDuplicates!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000000 Nil!22085))))

(assert (= (and d!125775 res!694116) b!1041214))

(declare-fun m!960829 () Bool)

(assert (=> d!125775 m!960829))

(assert (=> b!1041214 m!960741))

(declare-fun m!960831 () Bool)

(assert (=> b!1041214 m!960831))

(assert (=> b!1041117 d!125775))

(declare-fun d!125777 () Bool)

(declare-fun res!694121 () Bool)

(declare-fun e!589676 () Bool)

(assert (=> d!125777 (=> res!694121 e!589676)))

(assert (=> d!125777 (= res!694121 (= (select (arr!31575 lt!458870) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125777 (= (arrayContainsKey!0 lt!458870 key!909 #b00000000000000000000000000000000) e!589676)))

(declare-fun b!1041219 () Bool)

(declare-fun e!589677 () Bool)

(assert (=> b!1041219 (= e!589676 e!589677)))

(declare-fun res!694122 () Bool)

(assert (=> b!1041219 (=> (not res!694122) (not e!589677))))

(assert (=> b!1041219 (= res!694122 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 lt!458870)))))

(declare-fun b!1041220 () Bool)

(assert (=> b!1041220 (= e!589677 (arrayContainsKey!0 lt!458870 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125777 (not res!694121)) b!1041219))

(assert (= (and b!1041219 res!694122) b!1041220))

(assert (=> d!125777 m!960807))

(declare-fun m!960833 () Bool)

(assert (=> b!1041220 m!960833))

(assert (=> b!1041117 d!125777))

(declare-fun d!125779 () Bool)

(declare-fun e!589680 () Bool)

(assert (=> d!125779 e!589680))

(declare-fun res!694125 () Bool)

(assert (=> d!125779 (=> (not res!694125) (not e!589680))))

(assert (=> d!125779 (= res!694125 (bvslt (index!41587 lt!458873) (size!32108 (_keys!11580 thiss!1427))))))

(declare-fun lt!458915 () Unit!34024)

(declare-fun choose!121 (array!65634 (_ BitVec 32) (_ BitVec 64)) Unit!34024)

(assert (=> d!125779 (= lt!458915 (choose!121 (_keys!11580 thiss!1427) (index!41587 lt!458873) key!909))))

(assert (=> d!125779 (bvsge (index!41587 lt!458873) #b00000000000000000000000000000000)))

(assert (=> d!125779 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11580 thiss!1427) (index!41587 lt!458873) key!909) lt!458915)))

(declare-fun b!1041223 () Bool)

(assert (=> b!1041223 (= e!589680 (not (arrayContainsKey!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!125779 res!694125) b!1041223))

(declare-fun m!960835 () Bool)

(assert (=> d!125779 m!960835))

(assert (=> b!1041223 m!960741))

(declare-fun m!960837 () Bool)

(assert (=> b!1041223 m!960837))

(assert (=> b!1041117 d!125779))

(declare-fun b!1041224 () Bool)

(declare-fun e!589681 () (_ BitVec 32))

(declare-fun call!44107 () (_ BitVec 32))

(assert (=> b!1041224 (= e!589681 call!44107)))

(declare-fun d!125781 () Bool)

(declare-fun lt!458916 () (_ BitVec 32))

(assert (=> d!125781 (and (bvsge lt!458916 #b00000000000000000000000000000000) (bvsle lt!458916 (bvsub (size!32108 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!589682 () (_ BitVec 32))

(assert (=> d!125781 (= lt!458916 e!589682)))

(declare-fun c!105560 () Bool)

(assert (=> d!125781 (= c!105560 (bvsge #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125781 (and (bvsle #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32108 (_keys!11580 thiss!1427)) (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125781 (= (arrayCountValidKeys!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) lt!458916)))

(declare-fun b!1041225 () Bool)

(assert (=> b!1041225 (= e!589682 #b00000000000000000000000000000000)))

(declare-fun b!1041226 () Bool)

(assert (=> b!1041226 (= e!589681 (bvadd #b00000000000000000000000000000001 call!44107))))

(declare-fun b!1041227 () Bool)

(assert (=> b!1041227 (= e!589682 e!589681)))

(declare-fun c!105561 () Bool)

(assert (=> b!1041227 (= c!105561 (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44104 () Bool)

(assert (=> bm!44104 (= call!44107 (arrayCountValidKeys!0 (_keys!11580 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (= (and d!125781 c!105560) b!1041225))

(assert (= (and d!125781 (not c!105560)) b!1041227))

(assert (= (and b!1041227 c!105561) b!1041226))

(assert (= (and b!1041227 (not c!105561)) b!1041224))

(assert (= (or b!1041226 b!1041224) bm!44104))

(declare-fun m!960839 () Bool)

(assert (=> b!1041227 m!960839))

(assert (=> b!1041227 m!960839))

(declare-fun m!960841 () Bool)

(assert (=> b!1041227 m!960841))

(declare-fun m!960843 () Bool)

(assert (=> bm!44104 m!960843))

(assert (=> b!1041117 d!125781))

(declare-fun b!1041240 () Bool)

(declare-fun e!589690 () SeekEntryResult!9804)

(assert (=> b!1041240 (= e!589690 Undefined!9804)))

(declare-fun b!1041241 () Bool)

(declare-fun e!589691 () SeekEntryResult!9804)

(declare-fun lt!458927 () SeekEntryResult!9804)

(assert (=> b!1041241 (= e!589691 (ite ((_ is MissingVacant!9804) lt!458927) (MissingZero!9804 (index!41589 lt!458927)) lt!458927))))

(declare-fun lt!458928 () SeekEntryResult!9804)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65634 (_ BitVec 32)) SeekEntryResult!9804)

(assert (=> b!1041241 (= lt!458927 (seekKeyOrZeroReturnVacant!0 (x!92944 lt!458928) (index!41588 lt!458928) (index!41588 lt!458928) key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(declare-fun d!125783 () Bool)

(declare-fun lt!458926 () SeekEntryResult!9804)

(assert (=> d!125783 (and (or ((_ is MissingVacant!9804) lt!458926) (not ((_ is Found!9804) lt!458926)) (and (bvsge (index!41587 lt!458926) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458926) (size!32108 (_keys!11580 thiss!1427))))) (not ((_ is MissingVacant!9804) lt!458926)) (or (not ((_ is Found!9804) lt!458926)) (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458926)) key!909)))))

(assert (=> d!125783 (= lt!458926 e!589690)))

(declare-fun c!105569 () Bool)

(assert (=> d!125783 (= c!105569 (and ((_ is Intermediate!9804) lt!458928) (undefined!10616 lt!458928)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65634 (_ BitVec 32)) SeekEntryResult!9804)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125783 (= lt!458928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30365 thiss!1427)) key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(assert (=> d!125783 (validMask!0 (mask!30365 thiss!1427))))

(assert (=> d!125783 (= (seekEntry!0 key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)) lt!458926)))

(declare-fun b!1041242 () Bool)

(declare-fun e!589689 () SeekEntryResult!9804)

(assert (=> b!1041242 (= e!589689 (Found!9804 (index!41588 lt!458928)))))

(declare-fun b!1041243 () Bool)

(assert (=> b!1041243 (= e!589691 (MissingZero!9804 (index!41588 lt!458928)))))

(declare-fun b!1041244 () Bool)

(declare-fun c!105568 () Bool)

(declare-fun lt!458925 () (_ BitVec 64))

(assert (=> b!1041244 (= c!105568 (= lt!458925 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1041244 (= e!589689 e!589691)))

(declare-fun b!1041245 () Bool)

(assert (=> b!1041245 (= e!589690 e!589689)))

(assert (=> b!1041245 (= lt!458925 (select (arr!31575 (_keys!11580 thiss!1427)) (index!41588 lt!458928)))))

(declare-fun c!105570 () Bool)

(assert (=> b!1041245 (= c!105570 (= lt!458925 key!909))))

(assert (= (and d!125783 c!105569) b!1041240))

(assert (= (and d!125783 (not c!105569)) b!1041245))

(assert (= (and b!1041245 c!105570) b!1041242))

(assert (= (and b!1041245 (not c!105570)) b!1041244))

(assert (= (and b!1041244 c!105568) b!1041243))

(assert (= (and b!1041244 (not c!105568)) b!1041241))

(declare-fun m!960845 () Bool)

(assert (=> b!1041241 m!960845))

(declare-fun m!960847 () Bool)

(assert (=> d!125783 m!960847))

(declare-fun m!960849 () Bool)

(assert (=> d!125783 m!960849))

(assert (=> d!125783 m!960849))

(declare-fun m!960851 () Bool)

(assert (=> d!125783 m!960851))

(assert (=> d!125783 m!960731))

(declare-fun m!960853 () Bool)

(assert (=> b!1041245 m!960853))

(assert (=> b!1041119 d!125783))

(declare-fun mapIsEmpty!38726 () Bool)

(declare-fun mapRes!38726 () Bool)

(assert (=> mapIsEmpty!38726 mapRes!38726))

(declare-fun mapNonEmpty!38726 () Bool)

(declare-fun tp!74317 () Bool)

(declare-fun e!589697 () Bool)

(assert (=> mapNonEmpty!38726 (= mapRes!38726 (and tp!74317 e!589697))))

(declare-fun mapKey!38726 () (_ BitVec 32))

(declare-fun mapRest!38726 () (Array (_ BitVec 32) ValueCell!11673))

(declare-fun mapValue!38726 () ValueCell!11673)

(assert (=> mapNonEmpty!38726 (= mapRest!38720 (store mapRest!38726 mapKey!38726 mapValue!38726))))

(declare-fun b!1041253 () Bool)

(declare-fun e!589696 () Bool)

(assert (=> b!1041253 (= e!589696 tp_is_empty!24753)))

(declare-fun condMapEmpty!38726 () Bool)

(declare-fun mapDefault!38726 () ValueCell!11673)

(assert (=> mapNonEmpty!38720 (= condMapEmpty!38726 (= mapRest!38720 ((as const (Array (_ BitVec 32) ValueCell!11673)) mapDefault!38726)))))

(assert (=> mapNonEmpty!38720 (= tp!74308 (and e!589696 mapRes!38726))))

(declare-fun b!1041252 () Bool)

(assert (=> b!1041252 (= e!589697 tp_is_empty!24753)))

(assert (= (and mapNonEmpty!38720 condMapEmpty!38726) mapIsEmpty!38726))

(assert (= (and mapNonEmpty!38720 (not condMapEmpty!38726)) mapNonEmpty!38726))

(assert (= (and mapNonEmpty!38726 ((_ is ValueCellFull!11673) mapValue!38726)) b!1041252))

(assert (= (and mapNonEmpty!38720 ((_ is ValueCellFull!11673) mapDefault!38726)) b!1041253))

(declare-fun m!960855 () Bool)

(assert (=> mapNonEmpty!38726 m!960855))

(check-sat (not d!125763) (not d!125775) tp_is_empty!24753 (not b!1041181) (not d!125767) (not b!1041166) (not b!1041197) (not b!1041227) (not b_next!21033) (not b!1041209) (not b!1041214) (not b!1041195) (not d!125779) (not bm!44104) (not b!1041156) (not b!1041169) (not b!1041167) (not b!1041241) (not b!1041155) (not b!1041220) (not b!1041210) (not bm!44097) (not d!125757) b_and!33583 (not bm!44100) (not b!1041157) (not b!1041184) (not b!1041223) (not mapNonEmpty!38726) (not b!1041196) (not bm!44103) (not d!125783))
(check-sat b_and!33583 (not b_next!21033))
(get-model)

(declare-fun d!125785 () Bool)

(assert (=> d!125785 (arrayContainsKey!0 lt!458870 lt!458909 #b00000000000000000000000000000000)))

(declare-fun lt!458931 () Unit!34024)

(declare-fun choose!13 (array!65634 (_ BitVec 64) (_ BitVec 32)) Unit!34024)

(assert (=> d!125785 (= lt!458931 (choose!13 lt!458870 lt!458909 #b00000000000000000000000000000000))))

(assert (=> d!125785 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!125785 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458870 lt!458909 #b00000000000000000000000000000000) lt!458931)))

(declare-fun bs!30451 () Bool)

(assert (= bs!30451 d!125785))

(assert (=> bs!30451 m!960823))

(declare-fun m!960857 () Bool)

(assert (=> bs!30451 m!960857))

(assert (=> b!1041209 d!125785))

(declare-fun d!125787 () Bool)

(declare-fun res!694126 () Bool)

(declare-fun e!589698 () Bool)

(assert (=> d!125787 (=> res!694126 e!589698)))

(assert (=> d!125787 (= res!694126 (= (select (arr!31575 lt!458870) #b00000000000000000000000000000000) lt!458909))))

(assert (=> d!125787 (= (arrayContainsKey!0 lt!458870 lt!458909 #b00000000000000000000000000000000) e!589698)))

(declare-fun b!1041254 () Bool)

(declare-fun e!589699 () Bool)

(assert (=> b!1041254 (= e!589698 e!589699)))

(declare-fun res!694127 () Bool)

(assert (=> b!1041254 (=> (not res!694127) (not e!589699))))

(assert (=> b!1041254 (= res!694127 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 lt!458870)))))

(declare-fun b!1041255 () Bool)

(assert (=> b!1041255 (= e!589699 (arrayContainsKey!0 lt!458870 lt!458909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125787 (not res!694126)) b!1041254))

(assert (= (and b!1041254 res!694127) b!1041255))

(assert (=> d!125787 m!960807))

(declare-fun m!960859 () Bool)

(assert (=> b!1041255 m!960859))

(assert (=> b!1041209 d!125787))

(declare-fun b!1041268 () Bool)

(declare-fun e!589707 () SeekEntryResult!9804)

(declare-fun lt!458940 () SeekEntryResult!9804)

(assert (=> b!1041268 (= e!589707 (seekKeyOrZeroReturnVacant!0 (x!92944 lt!458940) (index!41588 lt!458940) (index!41588 lt!458940) (select (arr!31575 lt!458870) #b00000000000000000000000000000000) lt!458870 (mask!30365 thiss!1427)))))

(declare-fun b!1041269 () Bool)

(declare-fun c!105578 () Bool)

(declare-fun lt!458939 () (_ BitVec 64))

(assert (=> b!1041269 (= c!105578 (= lt!458939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589706 () SeekEntryResult!9804)

(assert (=> b!1041269 (= e!589706 e!589707)))

(declare-fun b!1041270 () Bool)

(assert (=> b!1041270 (= e!589706 (Found!9804 (index!41588 lt!458940)))))

(declare-fun b!1041271 () Bool)

(declare-fun e!589708 () SeekEntryResult!9804)

(assert (=> b!1041271 (= e!589708 Undefined!9804)))

(declare-fun b!1041272 () Bool)

(assert (=> b!1041272 (= e!589708 e!589706)))

(assert (=> b!1041272 (= lt!458939 (select (arr!31575 lt!458870) (index!41588 lt!458940)))))

(declare-fun c!105577 () Bool)

(assert (=> b!1041272 (= c!105577 (= lt!458939 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun d!125789 () Bool)

(declare-fun lt!458938 () SeekEntryResult!9804)

(assert (=> d!125789 (and (or ((_ is Undefined!9804) lt!458938) (not ((_ is Found!9804) lt!458938)) (and (bvsge (index!41587 lt!458938) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458938) (size!32108 lt!458870)))) (or ((_ is Undefined!9804) lt!458938) ((_ is Found!9804) lt!458938) (not ((_ is MissingZero!9804) lt!458938)) (and (bvsge (index!41586 lt!458938) #b00000000000000000000000000000000) (bvslt (index!41586 lt!458938) (size!32108 lt!458870)))) (or ((_ is Undefined!9804) lt!458938) ((_ is Found!9804) lt!458938) ((_ is MissingZero!9804) lt!458938) (not ((_ is MissingVacant!9804) lt!458938)) (and (bvsge (index!41589 lt!458938) #b00000000000000000000000000000000) (bvslt (index!41589 lt!458938) (size!32108 lt!458870)))) (or ((_ is Undefined!9804) lt!458938) (ite ((_ is Found!9804) lt!458938) (= (select (arr!31575 lt!458870) (index!41587 lt!458938)) (select (arr!31575 lt!458870) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9804) lt!458938) (= (select (arr!31575 lt!458870) (index!41586 lt!458938)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9804) lt!458938) (= (select (arr!31575 lt!458870) (index!41589 lt!458938)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!125789 (= lt!458938 e!589708)))

(declare-fun c!105579 () Bool)

(assert (=> d!125789 (= c!105579 (and ((_ is Intermediate!9804) lt!458940) (undefined!10616 lt!458940)))))

(assert (=> d!125789 (= lt!458940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) (mask!30365 thiss!1427)) (select (arr!31575 lt!458870) #b00000000000000000000000000000000) lt!458870 (mask!30365 thiss!1427)))))

(assert (=> d!125789 (validMask!0 (mask!30365 thiss!1427))))

(assert (=> d!125789 (= (seekEntryOrOpen!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) lt!458870 (mask!30365 thiss!1427)) lt!458938)))

(declare-fun b!1041273 () Bool)

(assert (=> b!1041273 (= e!589707 (MissingZero!9804 (index!41588 lt!458940)))))

(assert (= (and d!125789 c!105579) b!1041271))

(assert (= (and d!125789 (not c!105579)) b!1041272))

(assert (= (and b!1041272 c!105577) b!1041270))

(assert (= (and b!1041272 (not c!105577)) b!1041269))

(assert (= (and b!1041269 c!105578) b!1041273))

(assert (= (and b!1041269 (not c!105578)) b!1041268))

(assert (=> b!1041268 m!960807))

(declare-fun m!960861 () Bool)

(assert (=> b!1041268 m!960861))

(declare-fun m!960863 () Bool)

(assert (=> b!1041272 m!960863))

(declare-fun m!960865 () Bool)

(assert (=> d!125789 m!960865))

(declare-fun m!960867 () Bool)

(assert (=> d!125789 m!960867))

(declare-fun m!960869 () Bool)

(assert (=> d!125789 m!960869))

(assert (=> d!125789 m!960807))

(declare-fun m!960871 () Bool)

(assert (=> d!125789 m!960871))

(assert (=> d!125789 m!960731))

(assert (=> d!125789 m!960871))

(assert (=> d!125789 m!960807))

(declare-fun m!960873 () Bool)

(assert (=> d!125789 m!960873))

(assert (=> b!1041209 d!125789))

(declare-fun d!125791 () Bool)

(assert (=> d!125791 (= (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873))) (and (not (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041166 d!125791))

(declare-fun b!1041292 () Bool)

(declare-fun e!589723 () SeekEntryResult!9804)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041292 (= e!589723 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!30365 thiss!1427)) #b00000000000000000000000000000000 (mask!30365 thiss!1427)) key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(declare-fun b!1041293 () Bool)

(declare-fun lt!458945 () SeekEntryResult!9804)

(assert (=> b!1041293 (and (bvsge (index!41588 lt!458945) #b00000000000000000000000000000000) (bvslt (index!41588 lt!458945) (size!32108 (_keys!11580 thiss!1427))))))

(declare-fun res!694134 () Bool)

(assert (=> b!1041293 (= res!694134 (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41588 lt!458945)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589720 () Bool)

(assert (=> b!1041293 (=> res!694134 e!589720)))

(declare-fun b!1041294 () Bool)

(assert (=> b!1041294 (= e!589723 (Intermediate!9804 false (toIndex!0 key!909 (mask!30365 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1041295 () Bool)

(assert (=> b!1041295 (and (bvsge (index!41588 lt!458945) #b00000000000000000000000000000000) (bvslt (index!41588 lt!458945) (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> b!1041295 (= e!589720 (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41588 lt!458945)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!125793 () Bool)

(declare-fun e!589722 () Bool)

(assert (=> d!125793 e!589722))

(declare-fun c!105586 () Bool)

(assert (=> d!125793 (= c!105586 (and ((_ is Intermediate!9804) lt!458945) (undefined!10616 lt!458945)))))

(declare-fun e!589721 () SeekEntryResult!9804)

(assert (=> d!125793 (= lt!458945 e!589721)))

(declare-fun c!105587 () Bool)

(assert (=> d!125793 (= c!105587 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!458946 () (_ BitVec 64))

(assert (=> d!125793 (= lt!458946 (select (arr!31575 (_keys!11580 thiss!1427)) (toIndex!0 key!909 (mask!30365 thiss!1427))))))

(assert (=> d!125793 (validMask!0 (mask!30365 thiss!1427))))

(assert (=> d!125793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30365 thiss!1427)) key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)) lt!458945)))

(declare-fun b!1041296 () Bool)

(declare-fun e!589719 () Bool)

(assert (=> b!1041296 (= e!589722 e!589719)))

(declare-fun res!694135 () Bool)

(assert (=> b!1041296 (= res!694135 (and ((_ is Intermediate!9804) lt!458945) (not (undefined!10616 lt!458945)) (bvslt (x!92944 lt!458945) #b01111111111111111111111111111110) (bvsge (x!92944 lt!458945) #b00000000000000000000000000000000) (bvsge (x!92944 lt!458945) #b00000000000000000000000000000000)))))

(assert (=> b!1041296 (=> (not res!694135) (not e!589719))))

(declare-fun b!1041297 () Bool)

(assert (=> b!1041297 (= e!589721 e!589723)))

(declare-fun c!105588 () Bool)

(assert (=> b!1041297 (= c!105588 (or (= lt!458946 key!909) (= (bvadd lt!458946 lt!458946) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1041298 () Bool)

(assert (=> b!1041298 (and (bvsge (index!41588 lt!458945) #b00000000000000000000000000000000) (bvslt (index!41588 lt!458945) (size!32108 (_keys!11580 thiss!1427))))))

(declare-fun res!694136 () Bool)

(assert (=> b!1041298 (= res!694136 (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41588 lt!458945)) key!909))))

(assert (=> b!1041298 (=> res!694136 e!589720)))

(assert (=> b!1041298 (= e!589719 e!589720)))

(declare-fun b!1041299 () Bool)

(assert (=> b!1041299 (= e!589722 (bvsge (x!92944 lt!458945) #b01111111111111111111111111111110))))

(declare-fun b!1041300 () Bool)

(assert (=> b!1041300 (= e!589721 (Intermediate!9804 true (toIndex!0 key!909 (mask!30365 thiss!1427)) #b00000000000000000000000000000000))))

(assert (= (and d!125793 c!105587) b!1041300))

(assert (= (and d!125793 (not c!105587)) b!1041297))

(assert (= (and b!1041297 c!105588) b!1041294))

(assert (= (and b!1041297 (not c!105588)) b!1041292))

(assert (= (and d!125793 c!105586) b!1041299))

(assert (= (and d!125793 (not c!105586)) b!1041296))

(assert (= (and b!1041296 res!694135) b!1041298))

(assert (= (and b!1041298 (not res!694136)) b!1041293))

(assert (= (and b!1041293 (not res!694134)) b!1041295))

(declare-fun m!960875 () Bool)

(assert (=> b!1041293 m!960875))

(assert (=> b!1041298 m!960875))

(assert (=> d!125793 m!960849))

(declare-fun m!960877 () Bool)

(assert (=> d!125793 m!960877))

(assert (=> d!125793 m!960731))

(assert (=> b!1041292 m!960849))

(declare-fun m!960879 () Bool)

(assert (=> b!1041292 m!960879))

(assert (=> b!1041292 m!960879))

(declare-fun m!960881 () Bool)

(assert (=> b!1041292 m!960881))

(assert (=> b!1041295 m!960875))

(assert (=> d!125783 d!125793))

(declare-fun d!125795 () Bool)

(declare-fun lt!458952 () (_ BitVec 32))

(declare-fun lt!458951 () (_ BitVec 32))

(assert (=> d!125795 (= lt!458952 (bvmul (bvxor lt!458951 (bvlshr lt!458951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!125795 (= lt!458951 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!125795 (and (bvsge (mask!30365 thiss!1427) #b00000000000000000000000000000000) (let ((res!694137 (let ((h!23291 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!92961 (bvmul (bvxor h!23291 (bvlshr h!23291 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!92961 (bvlshr x!92961 #b00000000000000000000000000001101)) (mask!30365 thiss!1427)))))) (and (bvslt res!694137 (bvadd (mask!30365 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!694137 #b00000000000000000000000000000000))))))

(assert (=> d!125795 (= (toIndex!0 key!909 (mask!30365 thiss!1427)) (bvand (bvxor lt!458952 (bvlshr lt!458952 #b00000000000000000000000000001101)) (mask!30365 thiss!1427)))))

(assert (=> d!125783 d!125795))

(assert (=> d!125783 d!125769))

(declare-fun d!125797 () Bool)

(declare-fun res!694138 () Bool)

(declare-fun e!589724 () Bool)

(assert (=> d!125797 (=> res!694138 e!589724)))

(assert (=> d!125797 (= res!694138 (= (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125797 (= (arrayContainsKey!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) key!909 #b00000000000000000000000000000000) e!589724)))

(declare-fun b!1041301 () Bool)

(declare-fun e!589725 () Bool)

(assert (=> b!1041301 (= e!589724 e!589725)))

(declare-fun res!694139 () Bool)

(assert (=> b!1041301 (=> (not res!694139) (not e!589725))))

(assert (=> b!1041301 (= res!694139 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))))))))

(declare-fun b!1041302 () Bool)

(assert (=> b!1041302 (= e!589725 (arrayContainsKey!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125797 (not res!694138)) b!1041301))

(assert (= (and b!1041301 res!694139) b!1041302))

(declare-fun m!960883 () Bool)

(assert (=> d!125797 m!960883))

(declare-fun m!960885 () Bool)

(assert (=> b!1041302 m!960885))

(assert (=> b!1041223 d!125797))

(declare-fun d!125799 () Bool)

(declare-fun res!694140 () Bool)

(declare-fun e!589726 () Bool)

(assert (=> d!125799 (=> res!694140 e!589726)))

(assert (=> d!125799 (= res!694140 (= (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!125799 (= (arrayContainsKey!0 lt!458870 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!589726)))

(declare-fun b!1041303 () Bool)

(declare-fun e!589727 () Bool)

(assert (=> b!1041303 (= e!589726 e!589727)))

(declare-fun res!694141 () Bool)

(assert (=> b!1041303 (=> (not res!694141) (not e!589727))))

(assert (=> b!1041303 (= res!694141 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32108 lt!458870)))))

(declare-fun b!1041304 () Bool)

(assert (=> b!1041304 (= e!589727 (arrayContainsKey!0 lt!458870 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!125799 (not res!694140)) b!1041303))

(assert (= (and b!1041303 res!694141) b!1041304))

(declare-fun m!960887 () Bool)

(assert (=> d!125799 m!960887))

(declare-fun m!960889 () Bool)

(assert (=> b!1041304 m!960889))

(assert (=> b!1041220 d!125799))

(declare-fun d!125801 () Bool)

(assert (=> d!125801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (mask!30365 thiss!1427))))

(assert (=> d!125801 true))

(declare-fun _$44!24 () Unit!34024)

(assert (=> d!125801 (= (choose!25 (_keys!11580 thiss!1427) (index!41587 lt!458873) (mask!30365 thiss!1427)) _$44!24)))

(declare-fun bs!30452 () Bool)

(assert (= bs!30452 d!125801))

(assert (=> bs!30452 m!960741))

(assert (=> bs!30452 m!960815))

(assert (=> d!125767 d!125801))

(assert (=> d!125767 d!125769))

(declare-fun b!1041305 () Bool)

(declare-fun e!589730 () Bool)

(declare-fun call!44108 () Bool)

(assert (=> b!1041305 (= e!589730 call!44108)))

(declare-fun b!1041306 () Bool)

(declare-fun e!589729 () Bool)

(assert (=> b!1041306 (= e!589730 e!589729)))

(declare-fun lt!458955 () (_ BitVec 64))

(assert (=> b!1041306 (= lt!458955 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!458954 () Unit!34024)

(assert (=> b!1041306 (= lt!458954 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458870 lt!458955 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1041306 (arrayContainsKey!0 lt!458870 lt!458955 #b00000000000000000000000000000000)))

(declare-fun lt!458953 () Unit!34024)

(assert (=> b!1041306 (= lt!458953 lt!458954)))

(declare-fun res!694143 () Bool)

(assert (=> b!1041306 (= res!694143 (= (seekEntryOrOpen!0 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!458870 (mask!30365 thiss!1427)) (Found!9804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1041306 (=> (not res!694143) (not e!589729))))

(declare-fun b!1041307 () Bool)

(declare-fun e!589728 () Bool)

(assert (=> b!1041307 (= e!589728 e!589730)))

(declare-fun c!105589 () Bool)

(assert (=> b!1041307 (= c!105589 (validKeyInArray!0 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!125803 () Bool)

(declare-fun res!694142 () Bool)

(assert (=> d!125803 (=> res!694142 e!589728)))

(assert (=> d!125803 (= res!694142 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 lt!458870)))))

(assert (=> d!125803 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458870 (mask!30365 thiss!1427)) e!589728)))

(declare-fun b!1041308 () Bool)

(assert (=> b!1041308 (= e!589729 call!44108)))

(declare-fun bm!44105 () Bool)

(assert (=> bm!44105 (= call!44108 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!458870 (mask!30365 thiss!1427)))))

(assert (= (and d!125803 (not res!694142)) b!1041307))

(assert (= (and b!1041307 c!105589) b!1041306))

(assert (= (and b!1041307 (not c!105589)) b!1041305))

(assert (= (and b!1041306 res!694143) b!1041308))

(assert (= (or b!1041308 b!1041305) bm!44105))

(assert (=> b!1041306 m!960887))

(declare-fun m!960891 () Bool)

(assert (=> b!1041306 m!960891))

(declare-fun m!960893 () Bool)

(assert (=> b!1041306 m!960893))

(assert (=> b!1041306 m!960887))

(declare-fun m!960895 () Bool)

(assert (=> b!1041306 m!960895))

(assert (=> b!1041307 m!960887))

(assert (=> b!1041307 m!960887))

(declare-fun m!960897 () Bool)

(assert (=> b!1041307 m!960897))

(declare-fun m!960899 () Bool)

(assert (=> bm!44105 m!960899))

(assert (=> bm!44103 d!125803))

(declare-fun b!1041309 () Bool)

(declare-fun e!589731 () (_ BitVec 32))

(declare-fun call!44109 () (_ BitVec 32))

(assert (=> b!1041309 (= e!589731 call!44109)))

(declare-fun d!125805 () Bool)

(declare-fun lt!458956 () (_ BitVec 32))

(assert (=> d!125805 (and (bvsge lt!458956 #b00000000000000000000000000000000) (bvsle lt!458956 (bvsub (size!32108 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun e!589732 () (_ BitVec 32))

(assert (=> d!125805 (= lt!458956 e!589732)))

(declare-fun c!105590 () Bool)

(assert (=> d!125805 (= c!105590 (bvsge #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125805 (and (bvsle #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32108 (_keys!11580 thiss!1427)) (size!32108 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))))))))

(assert (=> d!125805 (= (arrayCountValidKeys!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) lt!458956)))

(declare-fun b!1041310 () Bool)

(assert (=> b!1041310 (= e!589732 #b00000000000000000000000000000000)))

(declare-fun b!1041311 () Bool)

(assert (=> b!1041311 (= e!589731 (bvadd #b00000000000000000000000000000001 call!44109))))

(declare-fun b!1041312 () Bool)

(assert (=> b!1041312 (= e!589732 e!589731)))

(declare-fun c!105591 () Bool)

(assert (=> b!1041312 (= c!105591 (validKeyInArray!0 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!44106 () Bool)

(assert (=> bm!44106 (= call!44109 (arrayCountValidKeys!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (= (and d!125805 c!105590) b!1041310))

(assert (= (and d!125805 (not c!105590)) b!1041312))

(assert (= (and b!1041312 c!105591) b!1041311))

(assert (= (and b!1041312 (not c!105591)) b!1041309))

(assert (= (or b!1041311 b!1041309) bm!44106))

(assert (=> b!1041312 m!960883))

(assert (=> b!1041312 m!960883))

(declare-fun m!960901 () Bool)

(assert (=> b!1041312 m!960901))

(declare-fun m!960903 () Bool)

(assert (=> bm!44106 m!960903))

(assert (=> b!1041169 d!125805))

(assert (=> b!1041169 d!125781))

(declare-fun d!125807 () Bool)

(assert (=> d!125807 (not (arrayContainsKey!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!125807 true))

(declare-fun _$59!26 () Unit!34024)

(assert (=> d!125807 (= (choose!121 (_keys!11580 thiss!1427) (index!41587 lt!458873) key!909) _$59!26)))

(declare-fun bs!30453 () Bool)

(assert (= bs!30453 d!125807))

(assert (=> bs!30453 m!960741))

(assert (=> bs!30453 m!960837))

(assert (=> d!125779 d!125807))

(declare-fun d!125809 () Bool)

(assert (=> d!125809 (= (validKeyInArray!0 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)) (and (not (= (select (arr!31575 lt!458870) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31575 lt!458870) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041210 d!125809))

(declare-fun d!125811 () Bool)

(assert (=> d!125811 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1041167 d!125811))

(declare-fun b!1041313 () Bool)

(declare-fun e!589734 () Bool)

(declare-fun e!589735 () Bool)

(assert (=> b!1041313 (= e!589734 e!589735)))

(declare-fun c!105592 () Bool)

(assert (=> b!1041313 (= c!105592 (validKeyInArray!0 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1041314 () Bool)

(declare-fun e!589736 () Bool)

(assert (=> b!1041314 (= e!589736 (contains!6076 Nil!22085 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1041315 () Bool)

(declare-fun e!589733 () Bool)

(assert (=> b!1041315 (= e!589733 e!589734)))

(declare-fun res!694145 () Bool)

(assert (=> b!1041315 (=> (not res!694145) (not e!589734))))

(assert (=> b!1041315 (= res!694145 (not e!589736))))

(declare-fun res!694146 () Bool)

(assert (=> b!1041315 (=> (not res!694146) (not e!589736))))

(assert (=> b!1041315 (= res!694146 (validKeyInArray!0 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!44107 () Bool)

(declare-fun call!44110 () Bool)

(assert (=> bm!44107 (= call!44110 (arrayNoDuplicates!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105592 (Cons!22084 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000) Nil!22085) Nil!22085)))))

(declare-fun d!125813 () Bool)

(declare-fun res!694144 () Bool)

(assert (=> d!125813 (=> res!694144 e!589733)))

(assert (=> d!125813 (= res!694144 (bvsge #b00000000000000000000000000000000 (size!32108 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))))))))

(assert (=> d!125813 (= (arrayNoDuplicates!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000000 Nil!22085) e!589733)))

(declare-fun b!1041316 () Bool)

(assert (=> b!1041316 (= e!589735 call!44110)))

(declare-fun b!1041317 () Bool)

(assert (=> b!1041317 (= e!589735 call!44110)))

(assert (= (and d!125813 (not res!694144)) b!1041315))

(assert (= (and b!1041315 res!694146) b!1041314))

(assert (= (and b!1041315 res!694145) b!1041313))

(assert (= (and b!1041313 c!105592) b!1041317))

(assert (= (and b!1041313 (not c!105592)) b!1041316))

(assert (= (or b!1041317 b!1041316) bm!44107))

(assert (=> b!1041313 m!960883))

(assert (=> b!1041313 m!960883))

(assert (=> b!1041313 m!960901))

(assert (=> b!1041314 m!960883))

(assert (=> b!1041314 m!960883))

(declare-fun m!960905 () Bool)

(assert (=> b!1041314 m!960905))

(assert (=> b!1041315 m!960883))

(assert (=> b!1041315 m!960883))

(assert (=> b!1041315 m!960901))

(assert (=> bm!44107 m!960883))

(declare-fun m!960907 () Bool)

(assert (=> bm!44107 m!960907))

(assert (=> b!1041214 d!125813))

(declare-fun b!1041318 () Bool)

(declare-fun e!589738 () Bool)

(declare-fun e!589739 () Bool)

(assert (=> b!1041318 (= e!589738 e!589739)))

(declare-fun c!105593 () Bool)

(assert (=> b!1041318 (= c!105593 (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1041319 () Bool)

(declare-fun e!589740 () Bool)

(assert (=> b!1041319 (= e!589740 (contains!6076 Nil!22085 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1041320 () Bool)

(declare-fun e!589737 () Bool)

(assert (=> b!1041320 (= e!589737 e!589738)))

(declare-fun res!694148 () Bool)

(assert (=> b!1041320 (=> (not res!694148) (not e!589738))))

(assert (=> b!1041320 (= res!694148 (not e!589740))))

(declare-fun res!694149 () Bool)

(assert (=> b!1041320 (=> (not res!694149) (not e!589740))))

(assert (=> b!1041320 (= res!694149 (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44108 () Bool)

(declare-fun call!44111 () Bool)

(assert (=> bm!44108 (= call!44111 (arrayNoDuplicates!0 (_keys!11580 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105593 (Cons!22084 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000) Nil!22085) Nil!22085)))))

(declare-fun d!125815 () Bool)

(declare-fun res!694147 () Bool)

(assert (=> d!125815 (=> res!694147 e!589737)))

(assert (=> d!125815 (= res!694147 (bvsge #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125815 (= (arrayNoDuplicates!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 Nil!22085) e!589737)))

(declare-fun b!1041321 () Bool)

(assert (=> b!1041321 (= e!589739 call!44111)))

(declare-fun b!1041322 () Bool)

(assert (=> b!1041322 (= e!589739 call!44111)))

(assert (= (and d!125815 (not res!694147)) b!1041320))

(assert (= (and b!1041320 res!694149) b!1041319))

(assert (= (and b!1041320 res!694148) b!1041318))

(assert (= (and b!1041318 c!105593) b!1041322))

(assert (= (and b!1041318 (not c!105593)) b!1041321))

(assert (= (or b!1041322 b!1041321) bm!44108))

(assert (=> b!1041318 m!960839))

(assert (=> b!1041318 m!960839))

(assert (=> b!1041318 m!960841))

(assert (=> b!1041319 m!960839))

(assert (=> b!1041319 m!960839))

(declare-fun m!960909 () Bool)

(assert (=> b!1041319 m!960909))

(assert (=> b!1041320 m!960839))

(assert (=> b!1041320 m!960839))

(assert (=> b!1041320 m!960841))

(assert (=> bm!44108 m!960839))

(declare-fun m!960911 () Bool)

(assert (=> bm!44108 m!960911))

(assert (=> b!1041157 d!125815))

(declare-fun b!1041323 () Bool)

(declare-fun e!589743 () Bool)

(declare-fun call!44112 () Bool)

(assert (=> b!1041323 (= e!589743 call!44112)))

(declare-fun b!1041324 () Bool)

(declare-fun e!589742 () Bool)

(assert (=> b!1041324 (= e!589743 e!589742)))

(declare-fun lt!458959 () (_ BitVec 64))

(assert (=> b!1041324 (= lt!458959 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!458958 () Unit!34024)

(assert (=> b!1041324 (= lt!458958 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11580 thiss!1427) lt!458959 #b00000000000000000000000000000000))))

(assert (=> b!1041324 (arrayContainsKey!0 (_keys!11580 thiss!1427) lt!458959 #b00000000000000000000000000000000)))

(declare-fun lt!458957 () Unit!34024)

(assert (=> b!1041324 (= lt!458957 lt!458958)))

(declare-fun res!694151 () Bool)

(assert (=> b!1041324 (= res!694151 (= (seekEntryOrOpen!0 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000) (_keys!11580 thiss!1427) (mask!30365 thiss!1427)) (Found!9804 #b00000000000000000000000000000000)))))

(assert (=> b!1041324 (=> (not res!694151) (not e!589742))))

(declare-fun b!1041325 () Bool)

(declare-fun e!589741 () Bool)

(assert (=> b!1041325 (= e!589741 e!589743)))

(declare-fun c!105594 () Bool)

(assert (=> b!1041325 (= c!105594 (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125817 () Bool)

(declare-fun res!694150 () Bool)

(assert (=> d!125817 (=> res!694150 e!589741)))

(assert (=> d!125817 (= res!694150 (bvsge #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)) e!589741)))

(declare-fun b!1041326 () Bool)

(assert (=> b!1041326 (= e!589742 call!44112)))

(declare-fun bm!44109 () Bool)

(assert (=> bm!44109 (= call!44112 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(assert (= (and d!125817 (not res!694150)) b!1041325))

(assert (= (and b!1041325 c!105594) b!1041324))

(assert (= (and b!1041325 (not c!105594)) b!1041323))

(assert (= (and b!1041324 res!694151) b!1041326))

(assert (= (or b!1041326 b!1041323) bm!44109))

(assert (=> b!1041324 m!960839))

(declare-fun m!960913 () Bool)

(assert (=> b!1041324 m!960913))

(declare-fun m!960915 () Bool)

(assert (=> b!1041324 m!960915))

(assert (=> b!1041324 m!960839))

(declare-fun m!960917 () Bool)

(assert (=> b!1041324 m!960917))

(assert (=> b!1041325 m!960839))

(assert (=> b!1041325 m!960839))

(assert (=> b!1041325 m!960841))

(declare-fun m!960919 () Bool)

(assert (=> bm!44109 m!960919))

(assert (=> b!1041156 d!125817))

(declare-fun b!1041327 () Bool)

(declare-fun e!589744 () (_ BitVec 32))

(declare-fun call!44113 () (_ BitVec 32))

(assert (=> b!1041327 (= e!589744 call!44113)))

(declare-fun d!125819 () Bool)

(declare-fun lt!458960 () (_ BitVec 32))

(assert (=> d!125819 (and (bvsge lt!458960 #b00000000000000000000000000000000) (bvsle lt!458960 (bvsub (size!32108 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!589745 () (_ BitVec 32))

(assert (=> d!125819 (= lt!458960 e!589745)))

(declare-fun c!105595 () Bool)

(assert (=> d!125819 (= c!105595 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125819 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32108 (_keys!11580 thiss!1427)) (size!32108 lt!458870)))))

(assert (=> d!125819 (= (arrayCountValidKeys!0 lt!458870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))) lt!458960)))

(declare-fun b!1041328 () Bool)

(assert (=> b!1041328 (= e!589745 #b00000000000000000000000000000000)))

(declare-fun b!1041329 () Bool)

(assert (=> b!1041329 (= e!589744 (bvadd #b00000000000000000000000000000001 call!44113))))

(declare-fun b!1041330 () Bool)

(assert (=> b!1041330 (= e!589745 e!589744)))

(declare-fun c!105596 () Bool)

(assert (=> b!1041330 (= c!105596 (validKeyInArray!0 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!44110 () Bool)

(assert (=> bm!44110 (= call!44113 (arrayCountValidKeys!0 lt!458870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (= (and d!125819 c!105595) b!1041328))

(assert (= (and d!125819 (not c!105595)) b!1041330))

(assert (= (and b!1041330 c!105596) b!1041329))

(assert (= (and b!1041330 (not c!105596)) b!1041327))

(assert (= (or b!1041329 b!1041327) bm!44110))

(assert (=> b!1041330 m!960887))

(assert (=> b!1041330 m!960887))

(assert (=> b!1041330 m!960897))

(declare-fun m!960921 () Bool)

(assert (=> bm!44110 m!960921))

(assert (=> bm!44097 d!125819))

(assert (=> b!1041181 d!125809))

(declare-fun b!1041331 () Bool)

(declare-fun e!589747 () Bool)

(declare-fun e!589748 () Bool)

(assert (=> b!1041331 (= e!589747 e!589748)))

(declare-fun c!105597 () Bool)

(assert (=> b!1041331 (= c!105597 (validKeyInArray!0 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1041332 () Bool)

(declare-fun e!589749 () Bool)

(assert (=> b!1041332 (= e!589749 (contains!6076 (ite c!105556 (Cons!22084 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) Nil!22085) Nil!22085) (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1041333 () Bool)

(declare-fun e!589746 () Bool)

(assert (=> b!1041333 (= e!589746 e!589747)))

(declare-fun res!694153 () Bool)

(assert (=> b!1041333 (=> (not res!694153) (not e!589747))))

(assert (=> b!1041333 (= res!694153 (not e!589749))))

(declare-fun res!694154 () Bool)

(assert (=> b!1041333 (=> (not res!694154) (not e!589749))))

(assert (=> b!1041333 (= res!694154 (validKeyInArray!0 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!44114 () Bool)

(declare-fun bm!44111 () Bool)

(assert (=> bm!44111 (= call!44114 (arrayNoDuplicates!0 lt!458870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!105597 (Cons!22084 (select (arr!31575 lt!458870) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!105556 (Cons!22084 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) Nil!22085) Nil!22085)) (ite c!105556 (Cons!22084 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) Nil!22085) Nil!22085))))))

(declare-fun d!125821 () Bool)

(declare-fun res!694152 () Bool)

(assert (=> d!125821 (=> res!694152 e!589746)))

(assert (=> d!125821 (= res!694152 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 lt!458870)))))

(assert (=> d!125821 (= (arrayNoDuplicates!0 lt!458870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105556 (Cons!22084 (select (arr!31575 lt!458870) #b00000000000000000000000000000000) Nil!22085) Nil!22085)) e!589746)))

(declare-fun b!1041334 () Bool)

(assert (=> b!1041334 (= e!589748 call!44114)))

(declare-fun b!1041335 () Bool)

(assert (=> b!1041335 (= e!589748 call!44114)))

(assert (= (and d!125821 (not res!694152)) b!1041333))

(assert (= (and b!1041333 res!694154) b!1041332))

(assert (= (and b!1041333 res!694153) b!1041331))

(assert (= (and b!1041331 c!105597) b!1041335))

(assert (= (and b!1041331 (not c!105597)) b!1041334))

(assert (= (or b!1041335 b!1041334) bm!44111))

(assert (=> b!1041331 m!960887))

(assert (=> b!1041331 m!960887))

(assert (=> b!1041331 m!960897))

(assert (=> b!1041332 m!960887))

(assert (=> b!1041332 m!960887))

(declare-fun m!960923 () Bool)

(assert (=> b!1041332 m!960923))

(assert (=> b!1041333 m!960887))

(assert (=> b!1041333 m!960887))

(assert (=> b!1041333 m!960897))

(assert (=> bm!44111 m!960887))

(declare-fun m!960925 () Bool)

(assert (=> bm!44111 m!960925))

(assert (=> bm!44100 d!125821))

(assert (=> b!1041155 d!125781))

(assert (=> b!1041197 d!125809))

(declare-fun b!1041346 () Bool)

(declare-fun res!694163 () Bool)

(declare-fun e!589752 () Bool)

(assert (=> b!1041346 (=> (not res!694163) (not e!589752))))

(declare-fun size!32112 (LongMapFixedSize!5940) (_ BitVec 32))

(assert (=> b!1041346 (= res!694163 (= (size!32112 thiss!1427) (bvadd (_size!3025 thiss!1427) (bvsdiv (bvadd (extraKeys!6080 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1041347 () Bool)

(assert (=> b!1041347 (= e!589752 (and (bvsge (extraKeys!6080 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6080 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!3025 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun d!125823 () Bool)

(declare-fun res!694164 () Bool)

(assert (=> d!125823 (=> (not res!694164) (not e!589752))))

(assert (=> d!125823 (= res!694164 (validMask!0 (mask!30365 thiss!1427)))))

(assert (=> d!125823 (= (simpleValid!436 thiss!1427) e!589752)))

(declare-fun b!1041344 () Bool)

(declare-fun res!694166 () Bool)

(assert (=> b!1041344 (=> (not res!694166) (not e!589752))))

(assert (=> b!1041344 (= res!694166 (and (= (size!32109 (_values!6375 thiss!1427)) (bvadd (mask!30365 thiss!1427) #b00000000000000000000000000000001)) (= (size!32108 (_keys!11580 thiss!1427)) (size!32109 (_values!6375 thiss!1427))) (bvsge (_size!3025 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!3025 thiss!1427) (bvadd (mask!30365 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1041345 () Bool)

(declare-fun res!694165 () Bool)

(assert (=> b!1041345 (=> (not res!694165) (not e!589752))))

(assert (=> b!1041345 (= res!694165 (bvsge (size!32112 thiss!1427) (_size!3025 thiss!1427)))))

(assert (= (and d!125823 res!694164) b!1041344))

(assert (= (and b!1041344 res!694166) b!1041345))

(assert (= (and b!1041345 res!694165) b!1041346))

(assert (= (and b!1041346 res!694163) b!1041347))

(declare-fun m!960927 () Bool)

(assert (=> b!1041346 m!960927))

(assert (=> d!125823 m!960731))

(assert (=> b!1041345 m!960927))

(assert (=> d!125757 d!125823))

(declare-fun b!1041360 () Bool)

(declare-fun c!105606 () Bool)

(declare-fun lt!458966 () (_ BitVec 64))

(assert (=> b!1041360 (= c!105606 (= lt!458966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589761 () SeekEntryResult!9804)

(declare-fun e!589759 () SeekEntryResult!9804)

(assert (=> b!1041360 (= e!589761 e!589759)))

(declare-fun b!1041362 () Bool)

(declare-fun e!589760 () SeekEntryResult!9804)

(assert (=> b!1041362 (= e!589760 Undefined!9804)))

(declare-fun b!1041363 () Bool)

(assert (=> b!1041363 (= e!589759 (MissingVacant!9804 (index!41588 lt!458928)))))

(declare-fun b!1041364 () Bool)

(assert (=> b!1041364 (= e!589759 (seekKeyOrZeroReturnVacant!0 (bvadd (x!92944 lt!458928) #b00000000000000000000000000000001) (nextIndex!0 (index!41588 lt!458928) (x!92944 lt!458928) (mask!30365 thiss!1427)) (index!41588 lt!458928) key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)))))

(declare-fun b!1041365 () Bool)

(assert (=> b!1041365 (= e!589761 (Found!9804 (index!41588 lt!458928)))))

(declare-fun d!125825 () Bool)

(declare-fun lt!458965 () SeekEntryResult!9804)

(assert (=> d!125825 (and (or ((_ is Undefined!9804) lt!458965) (not ((_ is Found!9804) lt!458965)) (and (bvsge (index!41587 lt!458965) #b00000000000000000000000000000000) (bvslt (index!41587 lt!458965) (size!32108 (_keys!11580 thiss!1427))))) (or ((_ is Undefined!9804) lt!458965) ((_ is Found!9804) lt!458965) (not ((_ is MissingVacant!9804) lt!458965)) (not (= (index!41589 lt!458965) (index!41588 lt!458928))) (and (bvsge (index!41589 lt!458965) #b00000000000000000000000000000000) (bvslt (index!41589 lt!458965) (size!32108 (_keys!11580 thiss!1427))))) (or ((_ is Undefined!9804) lt!458965) (ite ((_ is Found!9804) lt!458965) (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458965)) key!909) (and ((_ is MissingVacant!9804) lt!458965) (= (index!41589 lt!458965) (index!41588 lt!458928)) (= (select (arr!31575 (_keys!11580 thiss!1427)) (index!41589 lt!458965)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!125825 (= lt!458965 e!589760)))

(declare-fun c!105605 () Bool)

(assert (=> d!125825 (= c!105605 (bvsge (x!92944 lt!458928) #b01111111111111111111111111111110))))

(assert (=> d!125825 (= lt!458966 (select (arr!31575 (_keys!11580 thiss!1427)) (index!41588 lt!458928)))))

(assert (=> d!125825 (validMask!0 (mask!30365 thiss!1427))))

(assert (=> d!125825 (= (seekKeyOrZeroReturnVacant!0 (x!92944 lt!458928) (index!41588 lt!458928) (index!41588 lt!458928) key!909 (_keys!11580 thiss!1427) (mask!30365 thiss!1427)) lt!458965)))

(declare-fun b!1041361 () Bool)

(assert (=> b!1041361 (= e!589760 e!589761)))

(declare-fun c!105604 () Bool)

(assert (=> b!1041361 (= c!105604 (= lt!458966 key!909))))

(assert (= (and d!125825 c!105605) b!1041362))

(assert (= (and d!125825 (not c!105605)) b!1041361))

(assert (= (and b!1041361 c!105604) b!1041365))

(assert (= (and b!1041361 (not c!105604)) b!1041360))

(assert (= (and b!1041360 c!105606) b!1041363))

(assert (= (and b!1041360 (not c!105606)) b!1041364))

(declare-fun m!960929 () Bool)

(assert (=> b!1041364 m!960929))

(assert (=> b!1041364 m!960929))

(declare-fun m!960931 () Bool)

(assert (=> b!1041364 m!960931))

(declare-fun m!960933 () Bool)

(assert (=> d!125825 m!960933))

(declare-fun m!960935 () Bool)

(assert (=> d!125825 m!960935))

(assert (=> d!125825 m!960853))

(assert (=> d!125825 m!960731))

(assert (=> b!1041241 d!125825))

(declare-fun d!125827 () Bool)

(assert (=> d!125827 (= (arrayCountValidKeys!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11580 thiss!1427) #b00000000000000000000000000000000 (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!125827 true))

(declare-fun _$79!26 () Unit!34024)

(assert (=> d!125827 (= (choose!82 (_keys!11580 thiss!1427) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!26)))

(declare-fun bs!30454 () Bool)

(assert (= bs!30454 d!125827))

(assert (=> bs!30454 m!960741))

(assert (=> bs!30454 m!960797))

(assert (=> bs!30454 m!960735))

(assert (=> d!125763 d!125827))

(declare-fun d!125829 () Bool)

(declare-fun lt!458969 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!525 (List!22088) (InoxSet (_ BitVec 64)))

(assert (=> d!125829 (= lt!458969 (select (content!525 Nil!22085) (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun e!589767 () Bool)

(assert (=> d!125829 (= lt!458969 e!589767)))

(declare-fun res!694171 () Bool)

(assert (=> d!125829 (=> (not res!694171) (not e!589767))))

(assert (=> d!125829 (= res!694171 ((_ is Cons!22084) Nil!22085))))

(assert (=> d!125829 (= (contains!6076 Nil!22085 (select (arr!31575 lt!458870) #b00000000000000000000000000000000)) lt!458969)))

(declare-fun b!1041370 () Bool)

(declare-fun e!589766 () Bool)

(assert (=> b!1041370 (= e!589767 e!589766)))

(declare-fun res!694172 () Bool)

(assert (=> b!1041370 (=> res!694172 e!589766)))

(assert (=> b!1041370 (= res!694172 (= (h!23289 Nil!22085) (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(declare-fun b!1041371 () Bool)

(assert (=> b!1041371 (= e!589766 (contains!6076 (t!31309 Nil!22085) (select (arr!31575 lt!458870) #b00000000000000000000000000000000)))))

(assert (= (and d!125829 res!694171) b!1041370))

(assert (= (and b!1041370 (not res!694172)) b!1041371))

(declare-fun m!960937 () Bool)

(assert (=> d!125829 m!960937))

(assert (=> d!125829 m!960807))

(declare-fun m!960939 () Bool)

(assert (=> d!125829 m!960939))

(assert (=> b!1041371 m!960807))

(declare-fun m!960941 () Bool)

(assert (=> b!1041371 m!960941))

(assert (=> b!1041196 d!125829))

(assert (=> b!1041195 d!125809))

(declare-fun b!1041372 () Bool)

(declare-fun e!589770 () Bool)

(declare-fun call!44115 () Bool)

(assert (=> b!1041372 (= e!589770 call!44115)))

(declare-fun b!1041373 () Bool)

(declare-fun e!589769 () Bool)

(assert (=> b!1041373 (= e!589770 e!589769)))

(declare-fun lt!458972 () (_ BitVec 64))

(assert (=> b!1041373 (= lt!458972 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!458971 () Unit!34024)

(assert (=> b!1041373 (= lt!458971 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) lt!458972 #b00000000000000000000000000000000))))

(assert (=> b!1041373 (arrayContainsKey!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) lt!458972 #b00000000000000000000000000000000)))

(declare-fun lt!458970 () Unit!34024)

(assert (=> b!1041373 (= lt!458970 lt!458971)))

(declare-fun res!694174 () Bool)

(assert (=> b!1041373 (= res!694174 (= (seekEntryOrOpen!0 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000) (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (mask!30365 thiss!1427)) (Found!9804 #b00000000000000000000000000000000)))))

(assert (=> b!1041373 (=> (not res!694174) (not e!589769))))

(declare-fun b!1041374 () Bool)

(declare-fun e!589768 () Bool)

(assert (=> b!1041374 (= e!589768 e!589770)))

(declare-fun c!105607 () Bool)

(assert (=> b!1041374 (= c!105607 (validKeyInArray!0 (select (arr!31575 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!125831 () Bool)

(declare-fun res!694173 () Bool)

(assert (=> d!125831 (=> res!694173 e!589768)))

(assert (=> d!125831 (= res!694173 (bvsge #b00000000000000000000000000000000 (size!32108 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))))))))

(assert (=> d!125831 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (mask!30365 thiss!1427)) e!589768)))

(declare-fun b!1041375 () Bool)

(assert (=> b!1041375 (= e!589769 call!44115)))

(declare-fun bm!44112 () Bool)

(assert (=> bm!44112 (= call!44115 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) (mask!30365 thiss!1427)))))

(assert (= (and d!125831 (not res!694173)) b!1041374))

(assert (= (and b!1041374 c!105607) b!1041373))

(assert (= (and b!1041374 (not c!105607)) b!1041372))

(assert (= (and b!1041373 res!694174) b!1041375))

(assert (= (or b!1041375 b!1041372) bm!44112))

(assert (=> b!1041373 m!960883))

(declare-fun m!960943 () Bool)

(assert (=> b!1041373 m!960943))

(declare-fun m!960945 () Bool)

(assert (=> b!1041373 m!960945))

(assert (=> b!1041373 m!960883))

(declare-fun m!960947 () Bool)

(assert (=> b!1041373 m!960947))

(assert (=> b!1041374 m!960883))

(assert (=> b!1041374 m!960883))

(assert (=> b!1041374 m!960901))

(declare-fun m!960949 () Bool)

(assert (=> bm!44112 m!960949))

(assert (=> b!1041184 d!125831))

(declare-fun b!1041376 () Bool)

(declare-fun e!589771 () (_ BitVec 32))

(declare-fun call!44116 () (_ BitVec 32))

(assert (=> b!1041376 (= e!589771 call!44116)))

(declare-fun d!125833 () Bool)

(declare-fun lt!458973 () (_ BitVec 32))

(assert (=> d!125833 (and (bvsge lt!458973 #b00000000000000000000000000000000) (bvsle lt!458973 (bvsub (size!32108 (_keys!11580 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!589772 () (_ BitVec 32))

(assert (=> d!125833 (= lt!458973 e!589772)))

(declare-fun c!105608 () Bool)

(assert (=> d!125833 (= c!105608 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125833 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32108 (_keys!11580 thiss!1427)) (size!32108 (_keys!11580 thiss!1427))))))

(assert (=> d!125833 (= (arrayCountValidKeys!0 (_keys!11580 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))) lt!458973)))

(declare-fun b!1041377 () Bool)

(assert (=> b!1041377 (= e!589772 #b00000000000000000000000000000000)))

(declare-fun b!1041378 () Bool)

(assert (=> b!1041378 (= e!589771 (bvadd #b00000000000000000000000000000001 call!44116))))

(declare-fun b!1041379 () Bool)

(assert (=> b!1041379 (= e!589772 e!589771)))

(declare-fun c!105609 () Bool)

(assert (=> b!1041379 (= c!105609 (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!44113 () Bool)

(assert (=> bm!44113 (= call!44116 (arrayCountValidKeys!0 (_keys!11580 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32108 (_keys!11580 thiss!1427))))))

(assert (= (and d!125833 c!105608) b!1041377))

(assert (= (and d!125833 (not c!105608)) b!1041379))

(assert (= (and b!1041379 c!105609) b!1041378))

(assert (= (and b!1041379 (not c!105609)) b!1041376))

(assert (= (or b!1041378 b!1041376) bm!44113))

(declare-fun m!960951 () Bool)

(assert (=> b!1041379 m!960951))

(assert (=> b!1041379 m!960951))

(declare-fun m!960953 () Bool)

(assert (=> b!1041379 m!960953))

(declare-fun m!960955 () Bool)

(assert (=> bm!44113 m!960955))

(assert (=> bm!44104 d!125833))

(declare-fun d!125835 () Bool)

(assert (=> d!125835 (= (validKeyInArray!0 (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31575 (_keys!11580 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041227 d!125835))

(declare-fun d!125837 () Bool)

(assert (=> d!125837 (arrayNoDuplicates!0 (array!65635 (store (arr!31575 (_keys!11580 thiss!1427)) (index!41587 lt!458873) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32108 (_keys!11580 thiss!1427))) #b00000000000000000000000000000000 Nil!22085)))

(assert (=> d!125837 true))

(declare-fun _$66!50 () Unit!34024)

(assert (=> d!125837 (= (choose!53 (_keys!11580 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41587 lt!458873) #b00000000000000000000000000000000 Nil!22085) _$66!50)))

(declare-fun bs!30455 () Bool)

(assert (= bs!30455 d!125837))

(assert (=> bs!30455 m!960741))

(assert (=> bs!30455 m!960831))

(assert (=> d!125775 d!125837))

(declare-fun mapIsEmpty!38727 () Bool)

(declare-fun mapRes!38727 () Bool)

(assert (=> mapIsEmpty!38727 mapRes!38727))

(declare-fun mapNonEmpty!38727 () Bool)

(declare-fun tp!74318 () Bool)

(declare-fun e!589774 () Bool)

(assert (=> mapNonEmpty!38727 (= mapRes!38727 (and tp!74318 e!589774))))

(declare-fun mapKey!38727 () (_ BitVec 32))

(declare-fun mapRest!38727 () (Array (_ BitVec 32) ValueCell!11673))

(declare-fun mapValue!38727 () ValueCell!11673)

(assert (=> mapNonEmpty!38727 (= mapRest!38726 (store mapRest!38727 mapKey!38727 mapValue!38727))))

(declare-fun b!1041381 () Bool)

(declare-fun e!589773 () Bool)

(assert (=> b!1041381 (= e!589773 tp_is_empty!24753)))

(declare-fun condMapEmpty!38727 () Bool)

(declare-fun mapDefault!38727 () ValueCell!11673)

(assert (=> mapNonEmpty!38726 (= condMapEmpty!38727 (= mapRest!38726 ((as const (Array (_ BitVec 32) ValueCell!11673)) mapDefault!38727)))))

(assert (=> mapNonEmpty!38726 (= tp!74317 (and e!589773 mapRes!38727))))

(declare-fun b!1041380 () Bool)

(assert (=> b!1041380 (= e!589774 tp_is_empty!24753)))

(assert (= (and mapNonEmpty!38726 condMapEmpty!38727) mapIsEmpty!38727))

(assert (= (and mapNonEmpty!38726 (not condMapEmpty!38727)) mapNonEmpty!38727))

(assert (= (and mapNonEmpty!38727 ((_ is ValueCellFull!11673) mapValue!38727)) b!1041380))

(assert (= (and mapNonEmpty!38726 ((_ is ValueCellFull!11673) mapDefault!38727)) b!1041381))

(declare-fun m!960957 () Bool)

(assert (=> mapNonEmpty!38727 m!960957))

(check-sat (not bm!44111) (not b!1041302) (not b!1041345) (not bm!44107) (not b!1041364) (not b!1041314) tp_is_empty!24753 (not bm!44110) (not mapNonEmpty!38727) (not b!1041255) (not b!1041312) (not b!1041325) (not b!1041268) (not d!125801) (not d!125807) (not d!125793) (not d!125837) (not b!1041307) (not bm!44108) (not d!125829) (not d!125827) (not b!1041346) (not b!1041315) (not d!125825) (not b!1041320) (not b!1041324) (not d!125789) (not b!1041313) (not b!1041304) (not bm!44109) b_and!33583 (not b!1041331) (not b!1041332) (not d!125785) (not bm!44106) (not bm!44112) (not b!1041319) (not b!1041292) (not d!125823) (not b!1041374) (not bm!44113) (not b!1041318) (not b!1041330) (not b!1041373) (not bm!44105) (not b_next!21033) (not b!1041379) (not b!1041333) (not b!1041371) (not b!1041306))
(check-sat b_and!33583 (not b_next!21033))
