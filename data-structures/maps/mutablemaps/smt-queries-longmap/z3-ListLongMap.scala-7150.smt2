; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90946 () Bool)

(assert start!90946)

(declare-fun b!1038787 () Bool)

(declare-fun b_free!20955 () Bool)

(declare-fun b_next!20955 () Bool)

(assert (=> b!1038787 (= b_free!20955 (not b_next!20955))))

(declare-fun tp!74033 () Bool)

(declare-fun b_and!33505 () Bool)

(assert (=> b!1038787 (= tp!74033 b_and!33505)))

(declare-fun b!1038780 () Bool)

(declare-fun res!692958 () Bool)

(declare-fun e!587869 () Bool)

(assert (=> b!1038780 (=> (not res!692958) (not e!587869))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038780 (= res!692958 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038782 () Bool)

(declare-fun e!587874 () Bool)

(declare-datatypes ((V!37773 0))(
  ( (V!37774 (val!12388 Int)) )
))
(declare-datatypes ((ValueCell!11634 0))(
  ( (ValueCellFull!11634 (v!14976 V!37773)) (EmptyCell!11634) )
))
(declare-datatypes ((array!65452 0))(
  ( (array!65453 (arr!31497 (Array (_ BitVec 32) (_ BitVec 64))) (size!32029 (_ BitVec 32))) )
))
(declare-datatypes ((array!65454 0))(
  ( (array!65455 (arr!31498 (Array (_ BitVec 32) ValueCell!11634)) (size!32030 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5862 0))(
  ( (LongMapFixedSize!5863 (defaultEntry!6313 Int) (mask!30258 (_ BitVec 32)) (extraKeys!6041 (_ BitVec 32)) (zeroValue!6147 V!37773) (minValue!6147 V!37773) (_size!2986 (_ BitVec 32)) (_keys!11516 array!65452) (_values!6336 array!65454) (_vacant!2986 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5862)

(declare-datatypes ((SeekEntryResult!9774 0))(
  ( (MissingZero!9774 (index!41466 (_ BitVec 32))) (Found!9774 (index!41467 (_ BitVec 32))) (Intermediate!9774 (undefined!10586 Bool) (index!41468 (_ BitVec 32)) (x!92697 (_ BitVec 32))) (Undefined!9774) (MissingVacant!9774 (index!41469 (_ BitVec 32))) )
))
(declare-fun lt!457858 () SeekEntryResult!9774)

(assert (=> b!1038782 (= e!587874 (or (not (= (size!32029 (_keys!11516 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30258 thiss!1427)))) (bvsge (index!41467 lt!457858) #b00000000000000000000000000000000)))))

(declare-fun b!1038783 () Bool)

(declare-fun e!587867 () Bool)

(declare-fun e!587872 () Bool)

(declare-fun mapRes!38563 () Bool)

(assert (=> b!1038783 (= e!587867 (and e!587872 mapRes!38563))))

(declare-fun condMapEmpty!38563 () Bool)

(declare-fun mapDefault!38563 () ValueCell!11634)

(assert (=> b!1038783 (= condMapEmpty!38563 (= (arr!31498 (_values!6336 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11634)) mapDefault!38563)))))

(declare-fun b!1038784 () Bool)

(declare-fun e!587868 () Bool)

(assert (=> b!1038784 (= e!587868 (not e!587874))))

(declare-fun res!692960 () Bool)

(assert (=> b!1038784 (=> res!692960 e!587874)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038784 (= res!692960 (not (validMask!0 (mask!30258 thiss!1427))))))

(declare-fun lt!457859 () array!65452)

(declare-datatypes ((List!22062 0))(
  ( (Nil!22059) (Cons!22058 (h!23262 (_ BitVec 64)) (t!31283 List!22062)) )
))
(declare-fun arrayNoDuplicates!0 (array!65452 (_ BitVec 32) List!22062) Bool)

(assert (=> b!1038784 (arrayNoDuplicates!0 lt!457859 #b00000000000000000000000000000000 Nil!22059)))

(declare-datatypes ((Unit!33974 0))(
  ( (Unit!33975) )
))
(declare-fun lt!457861 () Unit!33974)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65452 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22062) Unit!33974)

(assert (=> b!1038784 (= lt!457861 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11516 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41467 lt!457858) #b00000000000000000000000000000000 Nil!22059))))

(declare-fun arrayCountValidKeys!0 (array!65452 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038784 (= (arrayCountValidKeys!0 lt!457859 #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11516 thiss!1427) #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038784 (= lt!457859 (array!65453 (store (arr!31497 (_keys!11516 thiss!1427)) (index!41467 lt!457858) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32029 (_keys!11516 thiss!1427))))))

(declare-fun lt!457860 () Unit!33974)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65452 (_ BitVec 32) (_ BitVec 64)) Unit!33974)

(assert (=> b!1038784 (= lt!457860 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11516 thiss!1427) (index!41467 lt!457858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38563 () Bool)

(assert (=> mapIsEmpty!38563 mapRes!38563))

(declare-fun b!1038785 () Bool)

(declare-fun e!587873 () Bool)

(declare-fun tp_is_empty!24675 () Bool)

(assert (=> b!1038785 (= e!587873 tp_is_empty!24675)))

(declare-fun b!1038786 () Bool)

(assert (=> b!1038786 (= e!587872 tp_is_empty!24675)))

(declare-fun res!692957 () Bool)

(assert (=> start!90946 (=> (not res!692957) (not e!587869))))

(declare-fun valid!2159 (LongMapFixedSize!5862) Bool)

(assert (=> start!90946 (= res!692957 (valid!2159 thiss!1427))))

(assert (=> start!90946 e!587869))

(declare-fun e!587870 () Bool)

(assert (=> start!90946 e!587870))

(assert (=> start!90946 true))

(declare-fun b!1038781 () Bool)

(assert (=> b!1038781 (= e!587869 e!587868)))

(declare-fun res!692959 () Bool)

(assert (=> b!1038781 (=> (not res!692959) (not e!587868))))

(get-info :version)

(assert (=> b!1038781 (= res!692959 ((_ is Found!9774) lt!457858))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65452 (_ BitVec 32)) SeekEntryResult!9774)

(assert (=> b!1038781 (= lt!457858 (seekEntry!0 key!909 (_keys!11516 thiss!1427) (mask!30258 thiss!1427)))))

(declare-fun array_inv!24193 (array!65452) Bool)

(declare-fun array_inv!24194 (array!65454) Bool)

(assert (=> b!1038787 (= e!587870 (and tp!74033 tp_is_empty!24675 (array_inv!24193 (_keys!11516 thiss!1427)) (array_inv!24194 (_values!6336 thiss!1427)) e!587867))))

(declare-fun mapNonEmpty!38563 () Bool)

(declare-fun tp!74034 () Bool)

(assert (=> mapNonEmpty!38563 (= mapRes!38563 (and tp!74034 e!587873))))

(declare-fun mapRest!38563 () (Array (_ BitVec 32) ValueCell!11634))

(declare-fun mapValue!38563 () ValueCell!11634)

(declare-fun mapKey!38563 () (_ BitVec 32))

(assert (=> mapNonEmpty!38563 (= (arr!31498 (_values!6336 thiss!1427)) (store mapRest!38563 mapKey!38563 mapValue!38563))))

(assert (= (and start!90946 res!692957) b!1038780))

(assert (= (and b!1038780 res!692958) b!1038781))

(assert (= (and b!1038781 res!692959) b!1038784))

(assert (= (and b!1038784 (not res!692960)) b!1038782))

(assert (= (and b!1038783 condMapEmpty!38563) mapIsEmpty!38563))

(assert (= (and b!1038783 (not condMapEmpty!38563)) mapNonEmpty!38563))

(assert (= (and mapNonEmpty!38563 ((_ is ValueCellFull!11634) mapValue!38563)) b!1038785))

(assert (= (and b!1038783 ((_ is ValueCellFull!11634) mapDefault!38563)) b!1038786))

(assert (= b!1038787 b!1038783))

(assert (= start!90946 b!1038787))

(declare-fun m!958761 () Bool)

(assert (=> b!1038781 m!958761))

(declare-fun m!958763 () Bool)

(assert (=> b!1038784 m!958763))

(declare-fun m!958765 () Bool)

(assert (=> b!1038784 m!958765))

(declare-fun m!958767 () Bool)

(assert (=> b!1038784 m!958767))

(declare-fun m!958769 () Bool)

(assert (=> b!1038784 m!958769))

(declare-fun m!958771 () Bool)

(assert (=> b!1038784 m!958771))

(declare-fun m!958773 () Bool)

(assert (=> b!1038784 m!958773))

(declare-fun m!958775 () Bool)

(assert (=> b!1038784 m!958775))

(declare-fun m!958777 () Bool)

(assert (=> mapNonEmpty!38563 m!958777))

(declare-fun m!958779 () Bool)

(assert (=> start!90946 m!958779))

(declare-fun m!958781 () Bool)

(assert (=> b!1038787 m!958781))

(declare-fun m!958783 () Bool)

(assert (=> b!1038787 m!958783))

(check-sat (not b!1038787) (not start!90946) (not b_next!20955) (not b!1038784) (not b!1038781) tp_is_empty!24675 b_and!33505 (not mapNonEmpty!38563))
(check-sat b_and!33505 (not b_next!20955))
(get-model)

(declare-fun b!1038820 () Bool)

(declare-fun e!587903 () (_ BitVec 32))

(declare-fun e!587904 () (_ BitVec 32))

(assert (=> b!1038820 (= e!587903 e!587904)))

(declare-fun c!105221 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1038820 (= c!105221 (validKeyInArray!0 (select (arr!31497 lt!457859) #b00000000000000000000000000000000)))))

(declare-fun b!1038821 () Bool)

(declare-fun call!43968 () (_ BitVec 32))

(assert (=> b!1038821 (= e!587904 (bvadd #b00000000000000000000000000000001 call!43968))))

(declare-fun d!125367 () Bool)

(declare-fun lt!457876 () (_ BitVec 32))

(assert (=> d!125367 (and (bvsge lt!457876 #b00000000000000000000000000000000) (bvsle lt!457876 (bvsub (size!32029 lt!457859) #b00000000000000000000000000000000)))))

(assert (=> d!125367 (= lt!457876 e!587903)))

(declare-fun c!105222 () Bool)

(assert (=> d!125367 (= c!105222 (bvsge #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))))))

(assert (=> d!125367 (and (bvsle #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32029 (_keys!11516 thiss!1427)) (size!32029 lt!457859)))))

(assert (=> d!125367 (= (arrayCountValidKeys!0 lt!457859 #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) lt!457876)))

(declare-fun b!1038822 () Bool)

(assert (=> b!1038822 (= e!587903 #b00000000000000000000000000000000)))

(declare-fun b!1038823 () Bool)

(assert (=> b!1038823 (= e!587904 call!43968)))

(declare-fun bm!43965 () Bool)

(assert (=> bm!43965 (= call!43968 (arrayCountValidKeys!0 lt!457859 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32029 (_keys!11516 thiss!1427))))))

(assert (= (and d!125367 c!105222) b!1038822))

(assert (= (and d!125367 (not c!105222)) b!1038820))

(assert (= (and b!1038820 c!105221) b!1038821))

(assert (= (and b!1038820 (not c!105221)) b!1038823))

(assert (= (or b!1038821 b!1038823) bm!43965))

(declare-fun m!958809 () Bool)

(assert (=> b!1038820 m!958809))

(assert (=> b!1038820 m!958809))

(declare-fun m!958811 () Bool)

(assert (=> b!1038820 m!958811))

(declare-fun m!958813 () Bool)

(assert (=> bm!43965 m!958813))

(assert (=> b!1038784 d!125367))

(declare-fun d!125369 () Bool)

(declare-fun res!692979 () Bool)

(declare-fun e!587915 () Bool)

(assert (=> d!125369 (=> res!692979 e!587915)))

(assert (=> d!125369 (= res!692979 (bvsge #b00000000000000000000000000000000 (size!32029 lt!457859)))))

(assert (=> d!125369 (= (arrayNoDuplicates!0 lt!457859 #b00000000000000000000000000000000 Nil!22059) e!587915)))

(declare-fun b!1038834 () Bool)

(declare-fun e!587914 () Bool)

(assert (=> b!1038834 (= e!587915 e!587914)))

(declare-fun res!692981 () Bool)

(assert (=> b!1038834 (=> (not res!692981) (not e!587914))))

(declare-fun e!587913 () Bool)

(assert (=> b!1038834 (= res!692981 (not e!587913))))

(declare-fun res!692980 () Bool)

(assert (=> b!1038834 (=> (not res!692980) (not e!587913))))

(assert (=> b!1038834 (= res!692980 (validKeyInArray!0 (select (arr!31497 lt!457859) #b00000000000000000000000000000000)))))

(declare-fun b!1038835 () Bool)

(declare-fun e!587916 () Bool)

(assert (=> b!1038835 (= e!587914 e!587916)))

(declare-fun c!105225 () Bool)

(assert (=> b!1038835 (= c!105225 (validKeyInArray!0 (select (arr!31497 lt!457859) #b00000000000000000000000000000000)))))

(declare-fun b!1038836 () Bool)

(declare-fun call!43971 () Bool)

(assert (=> b!1038836 (= e!587916 call!43971)))

(declare-fun bm!43968 () Bool)

(assert (=> bm!43968 (= call!43971 (arrayNoDuplicates!0 lt!457859 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105225 (Cons!22058 (select (arr!31497 lt!457859) #b00000000000000000000000000000000) Nil!22059) Nil!22059)))))

(declare-fun b!1038837 () Bool)

(assert (=> b!1038837 (= e!587916 call!43971)))

(declare-fun b!1038838 () Bool)

(declare-fun contains!6063 (List!22062 (_ BitVec 64)) Bool)

(assert (=> b!1038838 (= e!587913 (contains!6063 Nil!22059 (select (arr!31497 lt!457859) #b00000000000000000000000000000000)))))

(assert (= (and d!125369 (not res!692979)) b!1038834))

(assert (= (and b!1038834 res!692980) b!1038838))

(assert (= (and b!1038834 res!692981) b!1038835))

(assert (= (and b!1038835 c!105225) b!1038836))

(assert (= (and b!1038835 (not c!105225)) b!1038837))

(assert (= (or b!1038836 b!1038837) bm!43968))

(assert (=> b!1038834 m!958809))

(assert (=> b!1038834 m!958809))

(assert (=> b!1038834 m!958811))

(assert (=> b!1038835 m!958809))

(assert (=> b!1038835 m!958809))

(assert (=> b!1038835 m!958811))

(assert (=> bm!43968 m!958809))

(declare-fun m!958815 () Bool)

(assert (=> bm!43968 m!958815))

(assert (=> b!1038838 m!958809))

(assert (=> b!1038838 m!958809))

(declare-fun m!958817 () Bool)

(assert (=> b!1038838 m!958817))

(assert (=> b!1038784 d!125369))

(declare-fun b!1038847 () Bool)

(declare-fun res!692991 () Bool)

(declare-fun e!587922 () Bool)

(assert (=> b!1038847 (=> (not res!692991) (not e!587922))))

(assert (=> b!1038847 (= res!692991 (validKeyInArray!0 (select (arr!31497 (_keys!11516 thiss!1427)) (index!41467 lt!457858))))))

(declare-fun b!1038848 () Bool)

(declare-fun res!692990 () Bool)

(assert (=> b!1038848 (=> (not res!692990) (not e!587922))))

(assert (=> b!1038848 (= res!692990 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1038849 () Bool)

(assert (=> b!1038849 (= e!587922 (bvslt (size!32029 (_keys!11516 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1038850 () Bool)

(declare-fun e!587921 () Bool)

(assert (=> b!1038850 (= e!587921 (= (arrayCountValidKeys!0 (array!65453 (store (arr!31497 (_keys!11516 thiss!1427)) (index!41467 lt!457858) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32029 (_keys!11516 thiss!1427))) #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11516 thiss!1427) #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!125371 () Bool)

(assert (=> d!125371 e!587921))

(declare-fun res!692993 () Bool)

(assert (=> d!125371 (=> (not res!692993) (not e!587921))))

(assert (=> d!125371 (= res!692993 (and (bvsge (index!41467 lt!457858) #b00000000000000000000000000000000) (bvslt (index!41467 lt!457858) (size!32029 (_keys!11516 thiss!1427)))))))

(declare-fun lt!457879 () Unit!33974)

(declare-fun choose!82 (array!65452 (_ BitVec 32) (_ BitVec 64)) Unit!33974)

(assert (=> d!125371 (= lt!457879 (choose!82 (_keys!11516 thiss!1427) (index!41467 lt!457858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125371 e!587922))

(declare-fun res!692992 () Bool)

(assert (=> d!125371 (=> (not res!692992) (not e!587922))))

(assert (=> d!125371 (= res!692992 (and (bvsge (index!41467 lt!457858) #b00000000000000000000000000000000) (bvslt (index!41467 lt!457858) (size!32029 (_keys!11516 thiss!1427)))))))

(assert (=> d!125371 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11516 thiss!1427) (index!41467 lt!457858) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457879)))

(assert (= (and d!125371 res!692992) b!1038847))

(assert (= (and b!1038847 res!692991) b!1038848))

(assert (= (and b!1038848 res!692990) b!1038849))

(assert (= (and d!125371 res!692993) b!1038850))

(declare-fun m!958819 () Bool)

(assert (=> b!1038847 m!958819))

(assert (=> b!1038847 m!958819))

(declare-fun m!958821 () Bool)

(assert (=> b!1038847 m!958821))

(declare-fun m!958823 () Bool)

(assert (=> b!1038848 m!958823))

(assert (=> b!1038850 m!958775))

(declare-fun m!958825 () Bool)

(assert (=> b!1038850 m!958825))

(assert (=> b!1038850 m!958769))

(declare-fun m!958827 () Bool)

(assert (=> d!125371 m!958827))

(assert (=> b!1038784 d!125371))

(declare-fun d!125373 () Bool)

(assert (=> d!125373 (= (validMask!0 (mask!30258 thiss!1427)) (and (or (= (mask!30258 thiss!1427) #b00000000000000000000000000000111) (= (mask!30258 thiss!1427) #b00000000000000000000000000001111) (= (mask!30258 thiss!1427) #b00000000000000000000000000011111) (= (mask!30258 thiss!1427) #b00000000000000000000000000111111) (= (mask!30258 thiss!1427) #b00000000000000000000000001111111) (= (mask!30258 thiss!1427) #b00000000000000000000000011111111) (= (mask!30258 thiss!1427) #b00000000000000000000000111111111) (= (mask!30258 thiss!1427) #b00000000000000000000001111111111) (= (mask!30258 thiss!1427) #b00000000000000000000011111111111) (= (mask!30258 thiss!1427) #b00000000000000000000111111111111) (= (mask!30258 thiss!1427) #b00000000000000000001111111111111) (= (mask!30258 thiss!1427) #b00000000000000000011111111111111) (= (mask!30258 thiss!1427) #b00000000000000000111111111111111) (= (mask!30258 thiss!1427) #b00000000000000001111111111111111) (= (mask!30258 thiss!1427) #b00000000000000011111111111111111) (= (mask!30258 thiss!1427) #b00000000000000111111111111111111) (= (mask!30258 thiss!1427) #b00000000000001111111111111111111) (= (mask!30258 thiss!1427) #b00000000000011111111111111111111) (= (mask!30258 thiss!1427) #b00000000000111111111111111111111) (= (mask!30258 thiss!1427) #b00000000001111111111111111111111) (= (mask!30258 thiss!1427) #b00000000011111111111111111111111) (= (mask!30258 thiss!1427) #b00000000111111111111111111111111) (= (mask!30258 thiss!1427) #b00000001111111111111111111111111) (= (mask!30258 thiss!1427) #b00000011111111111111111111111111) (= (mask!30258 thiss!1427) #b00000111111111111111111111111111) (= (mask!30258 thiss!1427) #b00001111111111111111111111111111) (= (mask!30258 thiss!1427) #b00011111111111111111111111111111) (= (mask!30258 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30258 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1038784 d!125373))

(declare-fun b!1038851 () Bool)

(declare-fun e!587923 () (_ BitVec 32))

(declare-fun e!587924 () (_ BitVec 32))

(assert (=> b!1038851 (= e!587923 e!587924)))

(declare-fun c!105226 () Bool)

(assert (=> b!1038851 (= c!105226 (validKeyInArray!0 (select (arr!31497 (_keys!11516 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1038852 () Bool)

(declare-fun call!43972 () (_ BitVec 32))

(assert (=> b!1038852 (= e!587924 (bvadd #b00000000000000000000000000000001 call!43972))))

(declare-fun d!125375 () Bool)

(declare-fun lt!457880 () (_ BitVec 32))

(assert (=> d!125375 (and (bvsge lt!457880 #b00000000000000000000000000000000) (bvsle lt!457880 (bvsub (size!32029 (_keys!11516 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125375 (= lt!457880 e!587923)))

(declare-fun c!105227 () Bool)

(assert (=> d!125375 (= c!105227 (bvsge #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))))))

(assert (=> d!125375 (and (bvsle #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32029 (_keys!11516 thiss!1427)) (size!32029 (_keys!11516 thiss!1427))))))

(assert (=> d!125375 (= (arrayCountValidKeys!0 (_keys!11516 thiss!1427) #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) lt!457880)))

(declare-fun b!1038853 () Bool)

(assert (=> b!1038853 (= e!587923 #b00000000000000000000000000000000)))

(declare-fun b!1038854 () Bool)

(assert (=> b!1038854 (= e!587924 call!43972)))

(declare-fun bm!43969 () Bool)

(assert (=> bm!43969 (= call!43972 (arrayCountValidKeys!0 (_keys!11516 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32029 (_keys!11516 thiss!1427))))))

(assert (= (and d!125375 c!105227) b!1038853))

(assert (= (and d!125375 (not c!105227)) b!1038851))

(assert (= (and b!1038851 c!105226) b!1038852))

(assert (= (and b!1038851 (not c!105226)) b!1038854))

(assert (= (or b!1038852 b!1038854) bm!43969))

(declare-fun m!958829 () Bool)

(assert (=> b!1038851 m!958829))

(assert (=> b!1038851 m!958829))

(declare-fun m!958831 () Bool)

(assert (=> b!1038851 m!958831))

(declare-fun m!958833 () Bool)

(assert (=> bm!43969 m!958833))

(assert (=> b!1038784 d!125375))

(declare-fun d!125377 () Bool)

(declare-fun e!587927 () Bool)

(assert (=> d!125377 e!587927))

(declare-fun res!692996 () Bool)

(assert (=> d!125377 (=> (not res!692996) (not e!587927))))

(assert (=> d!125377 (= res!692996 (and (bvsge (index!41467 lt!457858) #b00000000000000000000000000000000) (bvslt (index!41467 lt!457858) (size!32029 (_keys!11516 thiss!1427)))))))

(declare-fun lt!457883 () Unit!33974)

(declare-fun choose!53 (array!65452 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22062) Unit!33974)

(assert (=> d!125377 (= lt!457883 (choose!53 (_keys!11516 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41467 lt!457858) #b00000000000000000000000000000000 Nil!22059))))

(assert (=> d!125377 (bvslt (size!32029 (_keys!11516 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125377 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11516 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41467 lt!457858) #b00000000000000000000000000000000 Nil!22059) lt!457883)))

(declare-fun b!1038857 () Bool)

(assert (=> b!1038857 (= e!587927 (arrayNoDuplicates!0 (array!65453 (store (arr!31497 (_keys!11516 thiss!1427)) (index!41467 lt!457858) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32029 (_keys!11516 thiss!1427))) #b00000000000000000000000000000000 Nil!22059))))

(assert (= (and d!125377 res!692996) b!1038857))

(declare-fun m!958835 () Bool)

(assert (=> d!125377 m!958835))

(assert (=> b!1038857 m!958775))

(declare-fun m!958837 () Bool)

(assert (=> b!1038857 m!958837))

(assert (=> b!1038784 d!125377))

(declare-fun d!125379 () Bool)

(assert (=> d!125379 (= (array_inv!24193 (_keys!11516 thiss!1427)) (bvsge (size!32029 (_keys!11516 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038787 d!125379))

(declare-fun d!125381 () Bool)

(assert (=> d!125381 (= (array_inv!24194 (_values!6336 thiss!1427)) (bvsge (size!32030 (_values!6336 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038787 d!125381))

(declare-fun b!1038870 () Bool)

(declare-fun e!587935 () SeekEntryResult!9774)

(assert (=> b!1038870 (= e!587935 Undefined!9774)))

(declare-fun b!1038871 () Bool)

(declare-fun e!587934 () SeekEntryResult!9774)

(assert (=> b!1038871 (= e!587935 e!587934)))

(declare-fun lt!457893 () (_ BitVec 64))

(declare-fun lt!457892 () SeekEntryResult!9774)

(assert (=> b!1038871 (= lt!457893 (select (arr!31497 (_keys!11516 thiss!1427)) (index!41468 lt!457892)))))

(declare-fun c!105235 () Bool)

(assert (=> b!1038871 (= c!105235 (= lt!457893 key!909))))

(declare-fun b!1038872 () Bool)

(assert (=> b!1038872 (= e!587934 (Found!9774 (index!41468 lt!457892)))))

(declare-fun b!1038873 () Bool)

(declare-fun e!587936 () SeekEntryResult!9774)

(declare-fun lt!457894 () SeekEntryResult!9774)

(assert (=> b!1038873 (= e!587936 (ite ((_ is MissingVacant!9774) lt!457894) (MissingZero!9774 (index!41469 lt!457894)) lt!457894))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65452 (_ BitVec 32)) SeekEntryResult!9774)

(assert (=> b!1038873 (= lt!457894 (seekKeyOrZeroReturnVacant!0 (x!92697 lt!457892) (index!41468 lt!457892) (index!41468 lt!457892) key!909 (_keys!11516 thiss!1427) (mask!30258 thiss!1427)))))

(declare-fun b!1038874 () Bool)

(declare-fun c!105236 () Bool)

(assert (=> b!1038874 (= c!105236 (= lt!457893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1038874 (= e!587934 e!587936)))

(declare-fun b!1038875 () Bool)

(assert (=> b!1038875 (= e!587936 (MissingZero!9774 (index!41468 lt!457892)))))

(declare-fun d!125383 () Bool)

(declare-fun lt!457895 () SeekEntryResult!9774)

(assert (=> d!125383 (and (or ((_ is MissingVacant!9774) lt!457895) (not ((_ is Found!9774) lt!457895)) (and (bvsge (index!41467 lt!457895) #b00000000000000000000000000000000) (bvslt (index!41467 lt!457895) (size!32029 (_keys!11516 thiss!1427))))) (not ((_ is MissingVacant!9774) lt!457895)) (or (not ((_ is Found!9774) lt!457895)) (= (select (arr!31497 (_keys!11516 thiss!1427)) (index!41467 lt!457895)) key!909)))))

(assert (=> d!125383 (= lt!457895 e!587935)))

(declare-fun c!105234 () Bool)

(assert (=> d!125383 (= c!105234 (and ((_ is Intermediate!9774) lt!457892) (undefined!10586 lt!457892)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65452 (_ BitVec 32)) SeekEntryResult!9774)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125383 (= lt!457892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30258 thiss!1427)) key!909 (_keys!11516 thiss!1427) (mask!30258 thiss!1427)))))

(assert (=> d!125383 (validMask!0 (mask!30258 thiss!1427))))

(assert (=> d!125383 (= (seekEntry!0 key!909 (_keys!11516 thiss!1427) (mask!30258 thiss!1427)) lt!457895)))

(assert (= (and d!125383 c!105234) b!1038870))

(assert (= (and d!125383 (not c!105234)) b!1038871))

(assert (= (and b!1038871 c!105235) b!1038872))

(assert (= (and b!1038871 (not c!105235)) b!1038874))

(assert (= (and b!1038874 c!105236) b!1038875))

(assert (= (and b!1038874 (not c!105236)) b!1038873))

(declare-fun m!958839 () Bool)

(assert (=> b!1038871 m!958839))

(declare-fun m!958841 () Bool)

(assert (=> b!1038873 m!958841))

(declare-fun m!958843 () Bool)

(assert (=> d!125383 m!958843))

(declare-fun m!958845 () Bool)

(assert (=> d!125383 m!958845))

(assert (=> d!125383 m!958845))

(declare-fun m!958847 () Bool)

(assert (=> d!125383 m!958847))

(assert (=> d!125383 m!958765))

(assert (=> b!1038781 d!125383))

(declare-fun d!125385 () Bool)

(declare-fun res!693003 () Bool)

(declare-fun e!587939 () Bool)

(assert (=> d!125385 (=> (not res!693003) (not e!587939))))

(declare-fun simpleValid!423 (LongMapFixedSize!5862) Bool)

(assert (=> d!125385 (= res!693003 (simpleValid!423 thiss!1427))))

(assert (=> d!125385 (= (valid!2159 thiss!1427) e!587939)))

(declare-fun b!1038882 () Bool)

(declare-fun res!693004 () Bool)

(assert (=> b!1038882 (=> (not res!693004) (not e!587939))))

(assert (=> b!1038882 (= res!693004 (= (arrayCountValidKeys!0 (_keys!11516 thiss!1427) #b00000000000000000000000000000000 (size!32029 (_keys!11516 thiss!1427))) (_size!2986 thiss!1427)))))

(declare-fun b!1038883 () Bool)

(declare-fun res!693005 () Bool)

(assert (=> b!1038883 (=> (not res!693005) (not e!587939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65452 (_ BitVec 32)) Bool)

(assert (=> b!1038883 (= res!693005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11516 thiss!1427) (mask!30258 thiss!1427)))))

(declare-fun b!1038884 () Bool)

(assert (=> b!1038884 (= e!587939 (arrayNoDuplicates!0 (_keys!11516 thiss!1427) #b00000000000000000000000000000000 Nil!22059))))

(assert (= (and d!125385 res!693003) b!1038882))

(assert (= (and b!1038882 res!693004) b!1038883))

(assert (= (and b!1038883 res!693005) b!1038884))

(declare-fun m!958849 () Bool)

(assert (=> d!125385 m!958849))

(assert (=> b!1038882 m!958769))

(declare-fun m!958851 () Bool)

(assert (=> b!1038883 m!958851))

(declare-fun m!958853 () Bool)

(assert (=> b!1038884 m!958853))

(assert (=> start!90946 d!125385))

(declare-fun mapNonEmpty!38569 () Bool)

(declare-fun mapRes!38569 () Bool)

(declare-fun tp!74043 () Bool)

(declare-fun e!587944 () Bool)

(assert (=> mapNonEmpty!38569 (= mapRes!38569 (and tp!74043 e!587944))))

(declare-fun mapValue!38569 () ValueCell!11634)

(declare-fun mapKey!38569 () (_ BitVec 32))

(declare-fun mapRest!38569 () (Array (_ BitVec 32) ValueCell!11634))

(assert (=> mapNonEmpty!38569 (= mapRest!38563 (store mapRest!38569 mapKey!38569 mapValue!38569))))

(declare-fun b!1038892 () Bool)

(declare-fun e!587945 () Bool)

(assert (=> b!1038892 (= e!587945 tp_is_empty!24675)))

(declare-fun mapIsEmpty!38569 () Bool)

(assert (=> mapIsEmpty!38569 mapRes!38569))

(declare-fun condMapEmpty!38569 () Bool)

(declare-fun mapDefault!38569 () ValueCell!11634)

(assert (=> mapNonEmpty!38563 (= condMapEmpty!38569 (= mapRest!38563 ((as const (Array (_ BitVec 32) ValueCell!11634)) mapDefault!38569)))))

(assert (=> mapNonEmpty!38563 (= tp!74034 (and e!587945 mapRes!38569))))

(declare-fun b!1038891 () Bool)

(assert (=> b!1038891 (= e!587944 tp_is_empty!24675)))

(assert (= (and mapNonEmpty!38563 condMapEmpty!38569) mapIsEmpty!38569))

(assert (= (and mapNonEmpty!38563 (not condMapEmpty!38569)) mapNonEmpty!38569))

(assert (= (and mapNonEmpty!38569 ((_ is ValueCellFull!11634) mapValue!38569)) b!1038891))

(assert (= (and mapNonEmpty!38563 ((_ is ValueCellFull!11634) mapDefault!38569)) b!1038892))

(declare-fun m!958855 () Bool)

(assert (=> mapNonEmpty!38569 m!958855))

(check-sat (not b_next!20955) (not b!1038883) (not mapNonEmpty!38569) (not b!1038820) (not d!125377) (not b!1038834) tp_is_empty!24675 (not b!1038838) (not d!125371) (not b!1038847) (not b!1038848) (not b!1038857) (not b!1038873) (not d!125383) (not b!1038882) (not b!1038850) (not d!125385) (not bm!43969) (not b!1038851) (not bm!43965) (not bm!43968) b_and!33505 (not b!1038835) (not b!1038884))
(check-sat b_and!33505 (not b_next!20955))
