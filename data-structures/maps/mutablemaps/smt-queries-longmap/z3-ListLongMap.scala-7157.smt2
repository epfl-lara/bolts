; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91126 () Bool)

(assert start!91126)

(declare-fun b!1039935 () Bool)

(declare-fun b_free!20997 () Bool)

(declare-fun b_next!20997 () Bool)

(assert (=> b!1039935 (= b_free!20997 (not b_next!20997))))

(declare-fun tp!74180 () Bool)

(declare-fun b_and!33547 () Bool)

(assert (=> b!1039935 (= tp!74180 b_and!33547)))

(declare-fun b!1039934 () Bool)

(declare-fun e!588723 () Bool)

(declare-fun tp_is_empty!24717 () Bool)

(assert (=> b!1039934 (= e!588723 tp_is_empty!24717)))

(declare-fun mapIsEmpty!38647 () Bool)

(declare-fun mapRes!38647 () Bool)

(assert (=> mapIsEmpty!38647 mapRes!38647))

(declare-fun mapNonEmpty!38647 () Bool)

(declare-fun tp!74181 () Bool)

(assert (=> mapNonEmpty!38647 (= mapRes!38647 (and tp!74181 e!588723))))

(declare-datatypes ((V!37829 0))(
  ( (V!37830 (val!12409 Int)) )
))
(declare-datatypes ((ValueCell!11655 0))(
  ( (ValueCellFull!11655 (v!14997 V!37829)) (EmptyCell!11655) )
))
(declare-fun mapValue!38647 () ValueCell!11655)

(declare-fun mapRest!38647 () (Array (_ BitVec 32) ValueCell!11655))

(declare-fun mapKey!38647 () (_ BitVec 32))

(declare-datatypes ((array!65550 0))(
  ( (array!65551 (arr!31539 (Array (_ BitVec 32) (_ BitVec 64))) (size!32071 (_ BitVec 32))) )
))
(declare-datatypes ((array!65552 0))(
  ( (array!65553 (arr!31540 (Array (_ BitVec 32) ValueCell!11655)) (size!32072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5904 0))(
  ( (LongMapFixedSize!5905 (defaultEntry!6334 Int) (mask!30310 (_ BitVec 32)) (extraKeys!6062 (_ BitVec 32)) (zeroValue!6168 V!37829) (minValue!6168 V!37829) (_size!3007 (_ BitVec 32)) (_keys!11547 array!65550) (_values!6357 array!65552) (_vacant!3007 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5904)

(assert (=> mapNonEmpty!38647 (= (arr!31540 (_values!6357 thiss!1427)) (store mapRest!38647 mapKey!38647 mapValue!38647))))

(declare-fun e!588718 () Bool)

(declare-fun e!588720 () Bool)

(declare-fun array_inv!24217 (array!65550) Bool)

(declare-fun array_inv!24218 (array!65552) Bool)

(assert (=> b!1039935 (= e!588718 (and tp!74180 tp_is_empty!24717 (array_inv!24217 (_keys!11547 thiss!1427)) (array_inv!24218 (_values!6357 thiss!1427)) e!588720))))

(declare-fun res!693503 () Bool)

(declare-fun e!588719 () Bool)

(assert (=> start!91126 (=> (not res!693503) (not e!588719))))

(declare-fun valid!2172 (LongMapFixedSize!5904) Bool)

(assert (=> start!91126 (= res!693503 (valid!2172 thiss!1427))))

(assert (=> start!91126 e!588719))

(assert (=> start!91126 e!588718))

(assert (=> start!91126 true))

(declare-fun b!1039936 () Bool)

(declare-fun e!588722 () Bool)

(declare-datatypes ((SeekEntryResult!9790 0))(
  ( (MissingZero!9790 (index!41530 (_ BitVec 32))) (Found!9790 (index!41531 (_ BitVec 32))) (Intermediate!9790 (undefined!10602 Bool) (index!41532 (_ BitVec 32)) (x!92825 (_ BitVec 32))) (Undefined!9790) (MissingVacant!9790 (index!41533 (_ BitVec 32))) )
))
(declare-fun lt!458324 () SeekEntryResult!9790)

(assert (=> b!1039936 (= e!588722 (not (or (bvslt (index!41531 lt!458324) #b00000000000000000000000000000000) (bvsge (index!41531 lt!458324) (size!32071 (_keys!11547 thiss!1427))) (bvslt (size!32071 (_keys!11547 thiss!1427)) #b01111111111111111111111111111111))))))

(declare-fun lt!458321 () array!65550)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65550 (_ BitVec 32)) Bool)

(assert (=> b!1039936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458321 (mask!30310 thiss!1427))))

(declare-datatypes ((Unit!34000 0))(
  ( (Unit!34001) )
))
(declare-fun lt!458322 () Unit!34000)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65550 (_ BitVec 32) (_ BitVec 32)) Unit!34000)

(assert (=> b!1039936 (= lt!458322 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11547 thiss!1427) (index!41531 lt!458324) (mask!30310 thiss!1427)))))

(declare-datatypes ((List!22076 0))(
  ( (Nil!22073) (Cons!22072 (h!23276 (_ BitVec 64)) (t!31297 List!22076)) )
))
(declare-fun arrayNoDuplicates!0 (array!65550 (_ BitVec 32) List!22076) Bool)

(assert (=> b!1039936 (arrayNoDuplicates!0 lt!458321 #b00000000000000000000000000000000 Nil!22073)))

(declare-fun lt!458320 () Unit!34000)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65550 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22076) Unit!34000)

(assert (=> b!1039936 (= lt!458320 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11547 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41531 lt!458324) #b00000000000000000000000000000000 Nil!22073))))

(declare-fun arrayCountValidKeys!0 (array!65550 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039936 (= (arrayCountValidKeys!0 lt!458321 #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11547 thiss!1427) #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039936 (= lt!458321 (array!65551 (store (arr!31539 (_keys!11547 thiss!1427)) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32071 (_keys!11547 thiss!1427))))))

(declare-fun lt!458323 () Unit!34000)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65550 (_ BitVec 32) (_ BitVec 64)) Unit!34000)

(assert (=> b!1039936 (= lt!458323 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11547 thiss!1427) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1039937 () Bool)

(declare-fun res!693502 () Bool)

(assert (=> b!1039937 (=> (not res!693502) (not e!588719))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039937 (= res!693502 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039938 () Bool)

(declare-fun e!588721 () Bool)

(assert (=> b!1039938 (= e!588720 (and e!588721 mapRes!38647))))

(declare-fun condMapEmpty!38647 () Bool)

(declare-fun mapDefault!38647 () ValueCell!11655)

(assert (=> b!1039938 (= condMapEmpty!38647 (= (arr!31540 (_values!6357 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11655)) mapDefault!38647)))))

(declare-fun b!1039939 () Bool)

(assert (=> b!1039939 (= e!588721 tp_is_empty!24717)))

(declare-fun b!1039940 () Bool)

(assert (=> b!1039940 (= e!588719 e!588722)))

(declare-fun res!693501 () Bool)

(assert (=> b!1039940 (=> (not res!693501) (not e!588722))))

(get-info :version)

(assert (=> b!1039940 (= res!693501 ((_ is Found!9790) lt!458324))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65550 (_ BitVec 32)) SeekEntryResult!9790)

(assert (=> b!1039940 (= lt!458324 (seekEntry!0 key!909 (_keys!11547 thiss!1427) (mask!30310 thiss!1427)))))

(assert (= (and start!91126 res!693503) b!1039937))

(assert (= (and b!1039937 res!693502) b!1039940))

(assert (= (and b!1039940 res!693501) b!1039936))

(assert (= (and b!1039938 condMapEmpty!38647) mapIsEmpty!38647))

(assert (= (and b!1039938 (not condMapEmpty!38647)) mapNonEmpty!38647))

(assert (= (and mapNonEmpty!38647 ((_ is ValueCellFull!11655) mapValue!38647)) b!1039934))

(assert (= (and b!1039938 ((_ is ValueCellFull!11655) mapDefault!38647)) b!1039939))

(assert (= b!1039935 b!1039938))

(assert (= start!91126 b!1039935))

(declare-fun m!959695 () Bool)

(assert (=> mapNonEmpty!38647 m!959695))

(declare-fun m!959697 () Bool)

(assert (=> b!1039940 m!959697))

(declare-fun m!959699 () Bool)

(assert (=> b!1039936 m!959699))

(declare-fun m!959701 () Bool)

(assert (=> b!1039936 m!959701))

(declare-fun m!959703 () Bool)

(assert (=> b!1039936 m!959703))

(declare-fun m!959705 () Bool)

(assert (=> b!1039936 m!959705))

(declare-fun m!959707 () Bool)

(assert (=> b!1039936 m!959707))

(declare-fun m!959709 () Bool)

(assert (=> b!1039936 m!959709))

(declare-fun m!959711 () Bool)

(assert (=> b!1039936 m!959711))

(declare-fun m!959713 () Bool)

(assert (=> b!1039936 m!959713))

(declare-fun m!959715 () Bool)

(assert (=> start!91126 m!959715))

(declare-fun m!959717 () Bool)

(assert (=> b!1039935 m!959717))

(declare-fun m!959719 () Bool)

(assert (=> b!1039935 m!959719))

(check-sat (not mapNonEmpty!38647) tp_is_empty!24717 (not b!1039935) (not b!1039940) b_and!33547 (not start!91126) (not b!1039936) (not b_next!20997))
(check-sat b_and!33547 (not b_next!20997))
(get-model)

(declare-fun b!1039974 () Bool)

(declare-fun e!588752 () SeekEntryResult!9790)

(declare-fun e!588753 () SeekEntryResult!9790)

(assert (=> b!1039974 (= e!588752 e!588753)))

(declare-fun lt!458349 () (_ BitVec 64))

(declare-fun lt!458348 () SeekEntryResult!9790)

(assert (=> b!1039974 (= lt!458349 (select (arr!31539 (_keys!11547 thiss!1427)) (index!41532 lt!458348)))))

(declare-fun c!105375 () Bool)

(assert (=> b!1039974 (= c!105375 (= lt!458349 key!909))))

(declare-fun b!1039975 () Bool)

(assert (=> b!1039975 (= e!588752 Undefined!9790)))

(declare-fun b!1039976 () Bool)

(declare-fun e!588754 () SeekEntryResult!9790)

(assert (=> b!1039976 (= e!588754 (MissingZero!9790 (index!41532 lt!458348)))))

(declare-fun b!1039977 () Bool)

(declare-fun c!105374 () Bool)

(assert (=> b!1039977 (= c!105374 (= lt!458349 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1039977 (= e!588753 e!588754)))

(declare-fun b!1039979 () Bool)

(declare-fun lt!458351 () SeekEntryResult!9790)

(assert (=> b!1039979 (= e!588754 (ite ((_ is MissingVacant!9790) lt!458351) (MissingZero!9790 (index!41533 lt!458351)) lt!458351))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65550 (_ BitVec 32)) SeekEntryResult!9790)

(assert (=> b!1039979 (= lt!458351 (seekKeyOrZeroReturnVacant!0 (x!92825 lt!458348) (index!41532 lt!458348) (index!41532 lt!458348) key!909 (_keys!11547 thiss!1427) (mask!30310 thiss!1427)))))

(declare-fun b!1039978 () Bool)

(assert (=> b!1039978 (= e!588753 (Found!9790 (index!41532 lt!458348)))))

(declare-fun d!125537 () Bool)

(declare-fun lt!458350 () SeekEntryResult!9790)

(assert (=> d!125537 (and (or ((_ is MissingVacant!9790) lt!458350) (not ((_ is Found!9790) lt!458350)) (and (bvsge (index!41531 lt!458350) #b00000000000000000000000000000000) (bvslt (index!41531 lt!458350) (size!32071 (_keys!11547 thiss!1427))))) (not ((_ is MissingVacant!9790) lt!458350)) (or (not ((_ is Found!9790) lt!458350)) (= (select (arr!31539 (_keys!11547 thiss!1427)) (index!41531 lt!458350)) key!909)))))

(assert (=> d!125537 (= lt!458350 e!588752)))

(declare-fun c!105376 () Bool)

(assert (=> d!125537 (= c!105376 (and ((_ is Intermediate!9790) lt!458348) (undefined!10602 lt!458348)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65550 (_ BitVec 32)) SeekEntryResult!9790)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125537 (= lt!458348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30310 thiss!1427)) key!909 (_keys!11547 thiss!1427) (mask!30310 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125537 (validMask!0 (mask!30310 thiss!1427))))

(assert (=> d!125537 (= (seekEntry!0 key!909 (_keys!11547 thiss!1427) (mask!30310 thiss!1427)) lt!458350)))

(assert (= (and d!125537 c!105376) b!1039975))

(assert (= (and d!125537 (not c!105376)) b!1039974))

(assert (= (and b!1039974 c!105375) b!1039978))

(assert (= (and b!1039974 (not c!105375)) b!1039977))

(assert (= (and b!1039977 c!105374) b!1039976))

(assert (= (and b!1039977 (not c!105374)) b!1039979))

(declare-fun m!959747 () Bool)

(assert (=> b!1039974 m!959747))

(declare-fun m!959749 () Bool)

(assert (=> b!1039979 m!959749))

(declare-fun m!959751 () Bool)

(assert (=> d!125537 m!959751))

(declare-fun m!959753 () Bool)

(assert (=> d!125537 m!959753))

(assert (=> d!125537 m!959753))

(declare-fun m!959755 () Bool)

(assert (=> d!125537 m!959755))

(declare-fun m!959757 () Bool)

(assert (=> d!125537 m!959757))

(assert (=> b!1039940 d!125537))

(declare-fun d!125539 () Bool)

(declare-fun res!693519 () Bool)

(declare-fun e!588757 () Bool)

(assert (=> d!125539 (=> (not res!693519) (not e!588757))))

(declare-fun simpleValid!430 (LongMapFixedSize!5904) Bool)

(assert (=> d!125539 (= res!693519 (simpleValid!430 thiss!1427))))

(assert (=> d!125539 (= (valid!2172 thiss!1427) e!588757)))

(declare-fun b!1039986 () Bool)

(declare-fun res!693520 () Bool)

(assert (=> b!1039986 (=> (not res!693520) (not e!588757))))

(assert (=> b!1039986 (= res!693520 (= (arrayCountValidKeys!0 (_keys!11547 thiss!1427) #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) (_size!3007 thiss!1427)))))

(declare-fun b!1039987 () Bool)

(declare-fun res!693521 () Bool)

(assert (=> b!1039987 (=> (not res!693521) (not e!588757))))

(assert (=> b!1039987 (= res!693521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11547 thiss!1427) (mask!30310 thiss!1427)))))

(declare-fun b!1039988 () Bool)

(assert (=> b!1039988 (= e!588757 (arrayNoDuplicates!0 (_keys!11547 thiss!1427) #b00000000000000000000000000000000 Nil!22073))))

(assert (= (and d!125539 res!693519) b!1039986))

(assert (= (and b!1039986 res!693520) b!1039987))

(assert (= (and b!1039987 res!693521) b!1039988))

(declare-fun m!959759 () Bool)

(assert (=> d!125539 m!959759))

(assert (=> b!1039986 m!959709))

(declare-fun m!959761 () Bool)

(assert (=> b!1039987 m!959761))

(declare-fun m!959763 () Bool)

(assert (=> b!1039988 m!959763))

(assert (=> start!91126 d!125539))

(declare-fun d!125541 () Bool)

(assert (=> d!125541 (= (array_inv!24217 (_keys!11547 thiss!1427)) (bvsge (size!32071 (_keys!11547 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039935 d!125541))

(declare-fun d!125543 () Bool)

(assert (=> d!125543 (= (array_inv!24218 (_values!6357 thiss!1427)) (bvsge (size!32072 (_values!6357 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039935 d!125543))

(declare-fun b!1039999 () Bool)

(declare-fun e!588768 () Bool)

(declare-fun call!44028 () Bool)

(assert (=> b!1039999 (= e!588768 call!44028)))

(declare-fun b!1040000 () Bool)

(declare-fun e!588767 () Bool)

(declare-fun contains!6070 (List!22076 (_ BitVec 64)) Bool)

(assert (=> b!1040000 (= e!588767 (contains!6070 Nil!22073 (select (arr!31539 lt!458321) #b00000000000000000000000000000000)))))

(declare-fun b!1040001 () Bool)

(declare-fun e!588769 () Bool)

(declare-fun e!588766 () Bool)

(assert (=> b!1040001 (= e!588769 e!588766)))

(declare-fun res!693529 () Bool)

(assert (=> b!1040001 (=> (not res!693529) (not e!588766))))

(assert (=> b!1040001 (= res!693529 (not e!588767))))

(declare-fun res!693528 () Bool)

(assert (=> b!1040001 (=> (not res!693528) (not e!588767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040001 (= res!693528 (validKeyInArray!0 (select (arr!31539 lt!458321) #b00000000000000000000000000000000)))))

(declare-fun d!125545 () Bool)

(declare-fun res!693530 () Bool)

(assert (=> d!125545 (=> res!693530 e!588769)))

(assert (=> d!125545 (= res!693530 (bvsge #b00000000000000000000000000000000 (size!32071 lt!458321)))))

(assert (=> d!125545 (= (arrayNoDuplicates!0 lt!458321 #b00000000000000000000000000000000 Nil!22073) e!588769)))

(declare-fun b!1040002 () Bool)

(assert (=> b!1040002 (= e!588766 e!588768)))

(declare-fun c!105379 () Bool)

(assert (=> b!1040002 (= c!105379 (validKeyInArray!0 (select (arr!31539 lt!458321) #b00000000000000000000000000000000)))))

(declare-fun b!1040003 () Bool)

(assert (=> b!1040003 (= e!588768 call!44028)))

(declare-fun bm!44025 () Bool)

(assert (=> bm!44025 (= call!44028 (arrayNoDuplicates!0 lt!458321 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105379 (Cons!22072 (select (arr!31539 lt!458321) #b00000000000000000000000000000000) Nil!22073) Nil!22073)))))

(assert (= (and d!125545 (not res!693530)) b!1040001))

(assert (= (and b!1040001 res!693528) b!1040000))

(assert (= (and b!1040001 res!693529) b!1040002))

(assert (= (and b!1040002 c!105379) b!1040003))

(assert (= (and b!1040002 (not c!105379)) b!1039999))

(assert (= (or b!1040003 b!1039999) bm!44025))

(declare-fun m!959765 () Bool)

(assert (=> b!1040000 m!959765))

(assert (=> b!1040000 m!959765))

(declare-fun m!959767 () Bool)

(assert (=> b!1040000 m!959767))

(assert (=> b!1040001 m!959765))

(assert (=> b!1040001 m!959765))

(declare-fun m!959769 () Bool)

(assert (=> b!1040001 m!959769))

(assert (=> b!1040002 m!959765))

(assert (=> b!1040002 m!959765))

(assert (=> b!1040002 m!959769))

(assert (=> bm!44025 m!959765))

(declare-fun m!959771 () Bool)

(assert (=> bm!44025 m!959771))

(assert (=> b!1039936 d!125545))

(declare-fun d!125547 () Bool)

(declare-fun e!588772 () Bool)

(assert (=> d!125547 e!588772))

(declare-fun res!693533 () Bool)

(assert (=> d!125547 (=> (not res!693533) (not e!588772))))

(assert (=> d!125547 (= res!693533 (and (bvsge (index!41531 lt!458324) #b00000000000000000000000000000000) (bvslt (index!41531 lt!458324) (size!32071 (_keys!11547 thiss!1427)))))))

(declare-fun lt!458354 () Unit!34000)

(declare-fun choose!25 (array!65550 (_ BitVec 32) (_ BitVec 32)) Unit!34000)

(assert (=> d!125547 (= lt!458354 (choose!25 (_keys!11547 thiss!1427) (index!41531 lt!458324) (mask!30310 thiss!1427)))))

(assert (=> d!125547 (validMask!0 (mask!30310 thiss!1427))))

(assert (=> d!125547 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11547 thiss!1427) (index!41531 lt!458324) (mask!30310 thiss!1427)) lt!458354)))

(declare-fun b!1040006 () Bool)

(assert (=> b!1040006 (= e!588772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65551 (store (arr!31539 (_keys!11547 thiss!1427)) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32071 (_keys!11547 thiss!1427))) (mask!30310 thiss!1427)))))

(assert (= (and d!125547 res!693533) b!1040006))

(declare-fun m!959773 () Bool)

(assert (=> d!125547 m!959773))

(assert (=> d!125547 m!959757))

(assert (=> b!1040006 m!959713))

(declare-fun m!959775 () Bool)

(assert (=> b!1040006 m!959775))

(assert (=> b!1039936 d!125547))

(declare-fun b!1040015 () Bool)

(declare-fun e!588781 () Bool)

(declare-fun call!44031 () Bool)

(assert (=> b!1040015 (= e!588781 call!44031)))

(declare-fun b!1040016 () Bool)

(declare-fun e!588779 () Bool)

(assert (=> b!1040016 (= e!588779 e!588781)))

(declare-fun lt!458362 () (_ BitVec 64))

(assert (=> b!1040016 (= lt!458362 (select (arr!31539 lt!458321) #b00000000000000000000000000000000))))

(declare-fun lt!458363 () Unit!34000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65550 (_ BitVec 64) (_ BitVec 32)) Unit!34000)

(assert (=> b!1040016 (= lt!458363 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458321 lt!458362 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040016 (arrayContainsKey!0 lt!458321 lt!458362 #b00000000000000000000000000000000)))

(declare-fun lt!458361 () Unit!34000)

(assert (=> b!1040016 (= lt!458361 lt!458363)))

(declare-fun res!693538 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65550 (_ BitVec 32)) SeekEntryResult!9790)

(assert (=> b!1040016 (= res!693538 (= (seekEntryOrOpen!0 (select (arr!31539 lt!458321) #b00000000000000000000000000000000) lt!458321 (mask!30310 thiss!1427)) (Found!9790 #b00000000000000000000000000000000)))))

(assert (=> b!1040016 (=> (not res!693538) (not e!588781))))

(declare-fun bm!44028 () Bool)

(assert (=> bm!44028 (= call!44031 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458321 (mask!30310 thiss!1427)))))

(declare-fun b!1040017 () Bool)

(declare-fun e!588780 () Bool)

(assert (=> b!1040017 (= e!588780 e!588779)))

(declare-fun c!105382 () Bool)

(assert (=> b!1040017 (= c!105382 (validKeyInArray!0 (select (arr!31539 lt!458321) #b00000000000000000000000000000000)))))

(declare-fun b!1040018 () Bool)

(assert (=> b!1040018 (= e!588779 call!44031)))

(declare-fun d!125549 () Bool)

(declare-fun res!693539 () Bool)

(assert (=> d!125549 (=> res!693539 e!588780)))

(assert (=> d!125549 (= res!693539 (bvsge #b00000000000000000000000000000000 (size!32071 lt!458321)))))

(assert (=> d!125549 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458321 (mask!30310 thiss!1427)) e!588780)))

(assert (= (and d!125549 (not res!693539)) b!1040017))

(assert (= (and b!1040017 c!105382) b!1040016))

(assert (= (and b!1040017 (not c!105382)) b!1040018))

(assert (= (and b!1040016 res!693538) b!1040015))

(assert (= (or b!1040015 b!1040018) bm!44028))

(assert (=> b!1040016 m!959765))

(declare-fun m!959777 () Bool)

(assert (=> b!1040016 m!959777))

(declare-fun m!959779 () Bool)

(assert (=> b!1040016 m!959779))

(assert (=> b!1040016 m!959765))

(declare-fun m!959781 () Bool)

(assert (=> b!1040016 m!959781))

(declare-fun m!959783 () Bool)

(assert (=> bm!44028 m!959783))

(assert (=> b!1040017 m!959765))

(assert (=> b!1040017 m!959765))

(assert (=> b!1040017 m!959769))

(assert (=> b!1039936 d!125549))

(declare-fun b!1040027 () Bool)

(declare-fun e!588787 () (_ BitVec 32))

(declare-fun e!588786 () (_ BitVec 32))

(assert (=> b!1040027 (= e!588787 e!588786)))

(declare-fun c!105387 () Bool)

(assert (=> b!1040027 (= c!105387 (validKeyInArray!0 (select (arr!31539 lt!458321) #b00000000000000000000000000000000)))))

(declare-fun b!1040028 () Bool)

(assert (=> b!1040028 (= e!588787 #b00000000000000000000000000000000)))

(declare-fun b!1040029 () Bool)

(declare-fun call!44034 () (_ BitVec 32))

(assert (=> b!1040029 (= e!588786 (bvadd #b00000000000000000000000000000001 call!44034))))

(declare-fun d!125551 () Bool)

(declare-fun lt!458366 () (_ BitVec 32))

(assert (=> d!125551 (and (bvsge lt!458366 #b00000000000000000000000000000000) (bvsle lt!458366 (bvsub (size!32071 lt!458321) #b00000000000000000000000000000000)))))

(assert (=> d!125551 (= lt!458366 e!588787)))

(declare-fun c!105388 () Bool)

(assert (=> d!125551 (= c!105388 (bvsge #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))))))

(assert (=> d!125551 (and (bvsle #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32071 (_keys!11547 thiss!1427)) (size!32071 lt!458321)))))

(assert (=> d!125551 (= (arrayCountValidKeys!0 lt!458321 #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) lt!458366)))

(declare-fun b!1040030 () Bool)

(assert (=> b!1040030 (= e!588786 call!44034)))

(declare-fun bm!44031 () Bool)

(assert (=> bm!44031 (= call!44034 (arrayCountValidKeys!0 lt!458321 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32071 (_keys!11547 thiss!1427))))))

(assert (= (and d!125551 c!105388) b!1040028))

(assert (= (and d!125551 (not c!105388)) b!1040027))

(assert (= (and b!1040027 c!105387) b!1040029))

(assert (= (and b!1040027 (not c!105387)) b!1040030))

(assert (= (or b!1040029 b!1040030) bm!44031))

(assert (=> b!1040027 m!959765))

(assert (=> b!1040027 m!959765))

(assert (=> b!1040027 m!959769))

(declare-fun m!959785 () Bool)

(assert (=> bm!44031 m!959785))

(assert (=> b!1039936 d!125551))

(declare-fun b!1040041 () Bool)

(declare-fun e!588792 () Bool)

(assert (=> b!1040041 (= e!588792 (bvslt (size!32071 (_keys!11547 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1040039 () Bool)

(declare-fun res!693548 () Bool)

(assert (=> b!1040039 (=> (not res!693548) (not e!588792))))

(assert (=> b!1040039 (= res!693548 (validKeyInArray!0 (select (arr!31539 (_keys!11547 thiss!1427)) (index!41531 lt!458324))))))

(declare-fun d!125553 () Bool)

(declare-fun e!588793 () Bool)

(assert (=> d!125553 e!588793))

(declare-fun res!693550 () Bool)

(assert (=> d!125553 (=> (not res!693550) (not e!588793))))

(assert (=> d!125553 (= res!693550 (and (bvsge (index!41531 lt!458324) #b00000000000000000000000000000000) (bvslt (index!41531 lt!458324) (size!32071 (_keys!11547 thiss!1427)))))))

(declare-fun lt!458369 () Unit!34000)

(declare-fun choose!82 (array!65550 (_ BitVec 32) (_ BitVec 64)) Unit!34000)

(assert (=> d!125553 (= lt!458369 (choose!82 (_keys!11547 thiss!1427) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125553 e!588792))

(declare-fun res!693551 () Bool)

(assert (=> d!125553 (=> (not res!693551) (not e!588792))))

(assert (=> d!125553 (= res!693551 (and (bvsge (index!41531 lt!458324) #b00000000000000000000000000000000) (bvslt (index!41531 lt!458324) (size!32071 (_keys!11547 thiss!1427)))))))

(assert (=> d!125553 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11547 thiss!1427) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458369)))

(declare-fun b!1040042 () Bool)

(assert (=> b!1040042 (= e!588793 (= (arrayCountValidKeys!0 (array!65551 (store (arr!31539 (_keys!11547 thiss!1427)) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32071 (_keys!11547 thiss!1427))) #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11547 thiss!1427) #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1040040 () Bool)

(declare-fun res!693549 () Bool)

(assert (=> b!1040040 (=> (not res!693549) (not e!588792))))

(assert (=> b!1040040 (= res!693549 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125553 res!693551) b!1040039))

(assert (= (and b!1040039 res!693548) b!1040040))

(assert (= (and b!1040040 res!693549) b!1040041))

(assert (= (and d!125553 res!693550) b!1040042))

(declare-fun m!959787 () Bool)

(assert (=> b!1040039 m!959787))

(assert (=> b!1040039 m!959787))

(declare-fun m!959789 () Bool)

(assert (=> b!1040039 m!959789))

(declare-fun m!959791 () Bool)

(assert (=> d!125553 m!959791))

(assert (=> b!1040042 m!959713))

(declare-fun m!959793 () Bool)

(assert (=> b!1040042 m!959793))

(assert (=> b!1040042 m!959709))

(declare-fun m!959795 () Bool)

(assert (=> b!1040040 m!959795))

(assert (=> b!1039936 d!125553))

(declare-fun b!1040043 () Bool)

(declare-fun e!588795 () (_ BitVec 32))

(declare-fun e!588794 () (_ BitVec 32))

(assert (=> b!1040043 (= e!588795 e!588794)))

(declare-fun c!105389 () Bool)

(assert (=> b!1040043 (= c!105389 (validKeyInArray!0 (select (arr!31539 (_keys!11547 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040044 () Bool)

(assert (=> b!1040044 (= e!588795 #b00000000000000000000000000000000)))

(declare-fun b!1040045 () Bool)

(declare-fun call!44035 () (_ BitVec 32))

(assert (=> b!1040045 (= e!588794 (bvadd #b00000000000000000000000000000001 call!44035))))

(declare-fun d!125555 () Bool)

(declare-fun lt!458370 () (_ BitVec 32))

(assert (=> d!125555 (and (bvsge lt!458370 #b00000000000000000000000000000000) (bvsle lt!458370 (bvsub (size!32071 (_keys!11547 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125555 (= lt!458370 e!588795)))

(declare-fun c!105390 () Bool)

(assert (=> d!125555 (= c!105390 (bvsge #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))))))

(assert (=> d!125555 (and (bvsle #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32071 (_keys!11547 thiss!1427)) (size!32071 (_keys!11547 thiss!1427))))))

(assert (=> d!125555 (= (arrayCountValidKeys!0 (_keys!11547 thiss!1427) #b00000000000000000000000000000000 (size!32071 (_keys!11547 thiss!1427))) lt!458370)))

(declare-fun b!1040046 () Bool)

(assert (=> b!1040046 (= e!588794 call!44035)))

(declare-fun bm!44032 () Bool)

(assert (=> bm!44032 (= call!44035 (arrayCountValidKeys!0 (_keys!11547 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32071 (_keys!11547 thiss!1427))))))

(assert (= (and d!125555 c!105390) b!1040044))

(assert (= (and d!125555 (not c!105390)) b!1040043))

(assert (= (and b!1040043 c!105389) b!1040045))

(assert (= (and b!1040043 (not c!105389)) b!1040046))

(assert (= (or b!1040045 b!1040046) bm!44032))

(declare-fun m!959797 () Bool)

(assert (=> b!1040043 m!959797))

(assert (=> b!1040043 m!959797))

(declare-fun m!959799 () Bool)

(assert (=> b!1040043 m!959799))

(declare-fun m!959801 () Bool)

(assert (=> bm!44032 m!959801))

(assert (=> b!1039936 d!125555))

(declare-fun d!125557 () Bool)

(declare-fun e!588798 () Bool)

(assert (=> d!125557 e!588798))

(declare-fun res!693554 () Bool)

(assert (=> d!125557 (=> (not res!693554) (not e!588798))))

(assert (=> d!125557 (= res!693554 (and (bvsge (index!41531 lt!458324) #b00000000000000000000000000000000) (bvslt (index!41531 lt!458324) (size!32071 (_keys!11547 thiss!1427)))))))

(declare-fun lt!458373 () Unit!34000)

(declare-fun choose!53 (array!65550 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22076) Unit!34000)

(assert (=> d!125557 (= lt!458373 (choose!53 (_keys!11547 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41531 lt!458324) #b00000000000000000000000000000000 Nil!22073))))

(assert (=> d!125557 (bvslt (size!32071 (_keys!11547 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125557 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11547 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41531 lt!458324) #b00000000000000000000000000000000 Nil!22073) lt!458373)))

(declare-fun b!1040049 () Bool)

(assert (=> b!1040049 (= e!588798 (arrayNoDuplicates!0 (array!65551 (store (arr!31539 (_keys!11547 thiss!1427)) (index!41531 lt!458324) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32071 (_keys!11547 thiss!1427))) #b00000000000000000000000000000000 Nil!22073))))

(assert (= (and d!125557 res!693554) b!1040049))

(declare-fun m!959803 () Bool)

(assert (=> d!125557 m!959803))

(assert (=> b!1040049 m!959713))

(declare-fun m!959805 () Bool)

(assert (=> b!1040049 m!959805))

(assert (=> b!1039936 d!125557))

(declare-fun b!1040057 () Bool)

(declare-fun e!588803 () Bool)

(assert (=> b!1040057 (= e!588803 tp_is_empty!24717)))

(declare-fun b!1040056 () Bool)

(declare-fun e!588804 () Bool)

(assert (=> b!1040056 (= e!588804 tp_is_empty!24717)))

(declare-fun mapIsEmpty!38653 () Bool)

(declare-fun mapRes!38653 () Bool)

(assert (=> mapIsEmpty!38653 mapRes!38653))

(declare-fun mapNonEmpty!38653 () Bool)

(declare-fun tp!74190 () Bool)

(assert (=> mapNonEmpty!38653 (= mapRes!38653 (and tp!74190 e!588804))))

(declare-fun mapRest!38653 () (Array (_ BitVec 32) ValueCell!11655))

(declare-fun mapKey!38653 () (_ BitVec 32))

(declare-fun mapValue!38653 () ValueCell!11655)

(assert (=> mapNonEmpty!38653 (= mapRest!38647 (store mapRest!38653 mapKey!38653 mapValue!38653))))

(declare-fun condMapEmpty!38653 () Bool)

(declare-fun mapDefault!38653 () ValueCell!11655)

(assert (=> mapNonEmpty!38647 (= condMapEmpty!38653 (= mapRest!38647 ((as const (Array (_ BitVec 32) ValueCell!11655)) mapDefault!38653)))))

(assert (=> mapNonEmpty!38647 (= tp!74181 (and e!588803 mapRes!38653))))

(assert (= (and mapNonEmpty!38647 condMapEmpty!38653) mapIsEmpty!38653))

(assert (= (and mapNonEmpty!38647 (not condMapEmpty!38653)) mapNonEmpty!38653))

(assert (= (and mapNonEmpty!38653 ((_ is ValueCellFull!11655) mapValue!38653)) b!1040056))

(assert (= (and mapNonEmpty!38647 ((_ is ValueCellFull!11655) mapDefault!38653)) b!1040057))

(declare-fun m!959807 () Bool)

(assert (=> mapNonEmpty!38653 m!959807))

(check-sat (not b!1040016) (not b!1040040) (not b!1040027) (not bm!44032) (not b!1040043) (not b!1040002) (not b!1040039) (not d!125553) (not d!125547) (not b!1040017) (not b!1039988) tp_is_empty!24717 (not d!125557) (not b!1039987) (not bm!44025) (not d!125537) (not b!1040049) (not b!1040001) (not bm!44028) (not d!125539) (not b!1040042) (not b!1039979) b_and!33547 (not b_next!20997) (not b!1040006) (not b!1039986) (not mapNonEmpty!38653) (not b!1040000) (not bm!44031))
(check-sat b_and!33547 (not b_next!20997))
