; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90994 () Bool)

(assert start!90994)

(declare-fun b!1039098 () Bool)

(declare-fun b_free!20967 () Bool)

(declare-fun b_next!20967 () Bool)

(assert (=> b!1039098 (= b_free!20967 (not b_next!20967))))

(declare-fun tp!74075 () Bool)

(declare-fun b_and!33517 () Bool)

(assert (=> b!1039098 (= tp!74075 b_and!33517)))

(declare-fun b!1039091 () Bool)

(declare-fun e!588109 () Bool)

(declare-fun tp_is_empty!24687 () Bool)

(assert (=> b!1039091 (= e!588109 tp_is_empty!24687)))

(declare-fun b!1039092 () Bool)

(declare-fun e!588105 () Bool)

(declare-fun e!588106 () Bool)

(assert (=> b!1039092 (= e!588105 e!588106)))

(declare-fun res!693102 () Bool)

(assert (=> b!1039092 (=> (not res!693102) (not e!588106))))

(declare-datatypes ((SeekEntryResult!9779 0))(
  ( (MissingZero!9779 (index!41486 (_ BitVec 32))) (Found!9779 (index!41487 (_ BitVec 32))) (Intermediate!9779 (undefined!10591 Bool) (index!41488 (_ BitVec 32)) (x!92734 (_ BitVec 32))) (Undefined!9779) (MissingVacant!9779 (index!41489 (_ BitVec 32))) )
))
(declare-fun lt!457975 () SeekEntryResult!9779)

(get-info :version)

(assert (=> b!1039092 (= res!693102 ((_ is Found!9779) lt!457975))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37789 0))(
  ( (V!37790 (val!12394 Int)) )
))
(declare-datatypes ((ValueCell!11640 0))(
  ( (ValueCellFull!11640 (v!14982 V!37789)) (EmptyCell!11640) )
))
(declare-datatypes ((array!65480 0))(
  ( (array!65481 (arr!31509 (Array (_ BitVec 32) (_ BitVec 64))) (size!32041 (_ BitVec 32))) )
))
(declare-datatypes ((array!65482 0))(
  ( (array!65483 (arr!31510 (Array (_ BitVec 32) ValueCell!11640)) (size!32042 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5874 0))(
  ( (LongMapFixedSize!5875 (defaultEntry!6319 Int) (mask!30272 (_ BitVec 32)) (extraKeys!6047 (_ BitVec 32)) (zeroValue!6153 V!37789) (minValue!6153 V!37789) (_size!2992 (_ BitVec 32)) (_keys!11524 array!65480) (_values!6342 array!65482) (_vacant!2992 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5874)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65480 (_ BitVec 32)) SeekEntryResult!9779)

(assert (=> b!1039092 (= lt!457975 (seekEntry!0 key!909 (_keys!11524 thiss!1427) (mask!30272 thiss!1427)))))

(declare-fun b!1039094 () Bool)

(declare-fun res!693100 () Bool)

(assert (=> b!1039094 (=> (not res!693100) (not e!588105))))

(assert (=> b!1039094 (= res!693100 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38587 () Bool)

(declare-fun mapRes!38587 () Bool)

(assert (=> mapIsEmpty!38587 mapRes!38587))

(declare-fun b!1039095 () Bool)

(declare-fun e!588111 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039095 (= e!588111 (validKeyInArray!0 (select (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975))))))

(declare-fun b!1039096 () Bool)

(declare-fun res!693104 () Bool)

(assert (=> b!1039096 (=> res!693104 e!588111)))

(assert (=> b!1039096 (= res!693104 (or (not (= (size!32041 (_keys!11524 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30272 thiss!1427)))) (bvslt (index!41487 lt!457975) #b00000000000000000000000000000000) (bvsge (index!41487 lt!457975) (size!32041 (_keys!11524 thiss!1427)))))))

(declare-fun b!1039097 () Bool)

(declare-fun e!588110 () Bool)

(assert (=> b!1039097 (= e!588110 (and e!588109 mapRes!38587))))

(declare-fun condMapEmpty!38587 () Bool)

(declare-fun mapDefault!38587 () ValueCell!11640)

(assert (=> b!1039097 (= condMapEmpty!38587 (= (arr!31510 (_values!6342 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11640)) mapDefault!38587)))))

(declare-fun e!588108 () Bool)

(declare-fun array_inv!24201 (array!65480) Bool)

(declare-fun array_inv!24202 (array!65482) Bool)

(assert (=> b!1039098 (= e!588108 (and tp!74075 tp_is_empty!24687 (array_inv!24201 (_keys!11524 thiss!1427)) (array_inv!24202 (_values!6342 thiss!1427)) e!588110))))

(declare-fun b!1039099 () Bool)

(declare-fun e!588107 () Bool)

(assert (=> b!1039099 (= e!588107 tp_is_empty!24687)))

(declare-fun mapNonEmpty!38587 () Bool)

(declare-fun tp!74076 () Bool)

(assert (=> mapNonEmpty!38587 (= mapRes!38587 (and tp!74076 e!588107))))

(declare-fun mapValue!38587 () ValueCell!11640)

(declare-fun mapRest!38587 () (Array (_ BitVec 32) ValueCell!11640))

(declare-fun mapKey!38587 () (_ BitVec 32))

(assert (=> mapNonEmpty!38587 (= (arr!31510 (_values!6342 thiss!1427)) (store mapRest!38587 mapKey!38587 mapValue!38587))))

(declare-fun b!1039093 () Bool)

(assert (=> b!1039093 (= e!588106 (not e!588111))))

(declare-fun res!693101 () Bool)

(assert (=> b!1039093 (=> res!693101 e!588111)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1039093 (= res!693101 (not (validMask!0 (mask!30272 thiss!1427))))))

(declare-fun lt!457976 () array!65480)

(declare-datatypes ((List!22066 0))(
  ( (Nil!22063) (Cons!22062 (h!23266 (_ BitVec 64)) (t!31287 List!22066)) )
))
(declare-fun arrayNoDuplicates!0 (array!65480 (_ BitVec 32) List!22066) Bool)

(assert (=> b!1039093 (arrayNoDuplicates!0 lt!457976 #b00000000000000000000000000000000 Nil!22063)))

(declare-datatypes ((Unit!33982 0))(
  ( (Unit!33983) )
))
(declare-fun lt!457974 () Unit!33982)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65480 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22066) Unit!33982)

(assert (=> b!1039093 (= lt!457974 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11524 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41487 lt!457975) #b00000000000000000000000000000000 Nil!22063))))

(declare-fun arrayCountValidKeys!0 (array!65480 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039093 (= (arrayCountValidKeys!0 lt!457976 #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11524 thiss!1427) #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039093 (= lt!457976 (array!65481 (store (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32041 (_keys!11524 thiss!1427))))))

(declare-fun lt!457977 () Unit!33982)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65480 (_ BitVec 32) (_ BitVec 64)) Unit!33982)

(assert (=> b!1039093 (= lt!457977 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11524 thiss!1427) (index!41487 lt!457975) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!693103 () Bool)

(assert (=> start!90994 (=> (not res!693103) (not e!588105))))

(declare-fun valid!2162 (LongMapFixedSize!5874) Bool)

(assert (=> start!90994 (= res!693103 (valid!2162 thiss!1427))))

(assert (=> start!90994 e!588105))

(assert (=> start!90994 e!588108))

(assert (=> start!90994 true))

(assert (= (and start!90994 res!693103) b!1039094))

(assert (= (and b!1039094 res!693100) b!1039092))

(assert (= (and b!1039092 res!693102) b!1039093))

(assert (= (and b!1039093 (not res!693101)) b!1039096))

(assert (= (and b!1039096 (not res!693104)) b!1039095))

(assert (= (and b!1039097 condMapEmpty!38587) mapIsEmpty!38587))

(assert (= (and b!1039097 (not condMapEmpty!38587)) mapNonEmpty!38587))

(assert (= (and mapNonEmpty!38587 ((_ is ValueCellFull!11640) mapValue!38587)) b!1039099))

(assert (= (and b!1039097 ((_ is ValueCellFull!11640) mapDefault!38587)) b!1039091))

(assert (= b!1039098 b!1039097))

(assert (= start!90994 b!1039098))

(declare-fun m!959005 () Bool)

(assert (=> b!1039098 m!959005))

(declare-fun m!959007 () Bool)

(assert (=> b!1039098 m!959007))

(declare-fun m!959009 () Bool)

(assert (=> mapNonEmpty!38587 m!959009))

(declare-fun m!959011 () Bool)

(assert (=> b!1039093 m!959011))

(declare-fun m!959013 () Bool)

(assert (=> b!1039093 m!959013))

(declare-fun m!959015 () Bool)

(assert (=> b!1039093 m!959015))

(declare-fun m!959017 () Bool)

(assert (=> b!1039093 m!959017))

(declare-fun m!959019 () Bool)

(assert (=> b!1039093 m!959019))

(declare-fun m!959021 () Bool)

(assert (=> b!1039093 m!959021))

(declare-fun m!959023 () Bool)

(assert (=> b!1039093 m!959023))

(declare-fun m!959025 () Bool)

(assert (=> b!1039092 m!959025))

(declare-fun m!959027 () Bool)

(assert (=> b!1039095 m!959027))

(assert (=> b!1039095 m!959027))

(declare-fun m!959029 () Bool)

(assert (=> b!1039095 m!959029))

(declare-fun m!959031 () Bool)

(assert (=> start!90994 m!959031))

(check-sat (not mapNonEmpty!38587) (not b!1039098) (not start!90994) b_and!33517 tp_is_empty!24687 (not b!1039093) (not b!1039092) (not b!1039095) (not b_next!20967))
(check-sat b_and!33517 (not b_next!20967))
(get-model)

(declare-fun d!125411 () Bool)

(assert (=> d!125411 (= (array_inv!24201 (_keys!11524 thiss!1427)) (bvsge (size!32041 (_keys!11524 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039098 d!125411))

(declare-fun d!125413 () Bool)

(assert (=> d!125413 (= (array_inv!24202 (_values!6342 thiss!1427)) (bvsge (size!32042 (_values!6342 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039098 d!125413))

(declare-fun d!125415 () Bool)

(assert (=> d!125415 (= (validMask!0 (mask!30272 thiss!1427)) (and (or (= (mask!30272 thiss!1427) #b00000000000000000000000000000111) (= (mask!30272 thiss!1427) #b00000000000000000000000000001111) (= (mask!30272 thiss!1427) #b00000000000000000000000000011111) (= (mask!30272 thiss!1427) #b00000000000000000000000000111111) (= (mask!30272 thiss!1427) #b00000000000000000000000001111111) (= (mask!30272 thiss!1427) #b00000000000000000000000011111111) (= (mask!30272 thiss!1427) #b00000000000000000000000111111111) (= (mask!30272 thiss!1427) #b00000000000000000000001111111111) (= (mask!30272 thiss!1427) #b00000000000000000000011111111111) (= (mask!30272 thiss!1427) #b00000000000000000000111111111111) (= (mask!30272 thiss!1427) #b00000000000000000001111111111111) (= (mask!30272 thiss!1427) #b00000000000000000011111111111111) (= (mask!30272 thiss!1427) #b00000000000000000111111111111111) (= (mask!30272 thiss!1427) #b00000000000000001111111111111111) (= (mask!30272 thiss!1427) #b00000000000000011111111111111111) (= (mask!30272 thiss!1427) #b00000000000000111111111111111111) (= (mask!30272 thiss!1427) #b00000000000001111111111111111111) (= (mask!30272 thiss!1427) #b00000000000011111111111111111111) (= (mask!30272 thiss!1427) #b00000000000111111111111111111111) (= (mask!30272 thiss!1427) #b00000000001111111111111111111111) (= (mask!30272 thiss!1427) #b00000000011111111111111111111111) (= (mask!30272 thiss!1427) #b00000000111111111111111111111111) (= (mask!30272 thiss!1427) #b00000001111111111111111111111111) (= (mask!30272 thiss!1427) #b00000011111111111111111111111111) (= (mask!30272 thiss!1427) #b00000111111111111111111111111111) (= (mask!30272 thiss!1427) #b00001111111111111111111111111111) (= (mask!30272 thiss!1427) #b00011111111111111111111111111111) (= (mask!30272 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30272 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1039093 d!125415))

(declare-fun d!125417 () Bool)

(declare-fun e!588142 () Bool)

(assert (=> d!125417 e!588142))

(declare-fun res!693131 () Bool)

(assert (=> d!125417 (=> (not res!693131) (not e!588142))))

(assert (=> d!125417 (= res!693131 (and (bvsge (index!41487 lt!457975) #b00000000000000000000000000000000) (bvslt (index!41487 lt!457975) (size!32041 (_keys!11524 thiss!1427)))))))

(declare-fun lt!457992 () Unit!33982)

(declare-fun choose!82 (array!65480 (_ BitVec 32) (_ BitVec 64)) Unit!33982)

(assert (=> d!125417 (= lt!457992 (choose!82 (_keys!11524 thiss!1427) (index!41487 lt!457975) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588141 () Bool)

(assert (=> d!125417 e!588141))

(declare-fun res!693129 () Bool)

(assert (=> d!125417 (=> (not res!693129) (not e!588141))))

(assert (=> d!125417 (= res!693129 (and (bvsge (index!41487 lt!457975) #b00000000000000000000000000000000) (bvslt (index!41487 lt!457975) (size!32041 (_keys!11524 thiss!1427)))))))

(assert (=> d!125417 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11524 thiss!1427) (index!41487 lt!457975) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457992)))

(declare-fun b!1039135 () Bool)

(declare-fun res!693130 () Bool)

(assert (=> b!1039135 (=> (not res!693130) (not e!588141))))

(assert (=> b!1039135 (= res!693130 (validKeyInArray!0 (select (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975))))))

(declare-fun b!1039136 () Bool)

(declare-fun res!693128 () Bool)

(assert (=> b!1039136 (=> (not res!693128) (not e!588141))))

(assert (=> b!1039136 (= res!693128 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1039137 () Bool)

(assert (=> b!1039137 (= e!588141 (bvslt (size!32041 (_keys!11524 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1039138 () Bool)

(assert (=> b!1039138 (= e!588142 (= (arrayCountValidKeys!0 (array!65481 (store (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32041 (_keys!11524 thiss!1427))) #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11524 thiss!1427) #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!125417 res!693129) b!1039135))

(assert (= (and b!1039135 res!693130) b!1039136))

(assert (= (and b!1039136 res!693128) b!1039137))

(assert (= (and d!125417 res!693131) b!1039138))

(declare-fun m!959061 () Bool)

(assert (=> d!125417 m!959061))

(assert (=> b!1039135 m!959027))

(assert (=> b!1039135 m!959027))

(assert (=> b!1039135 m!959029))

(declare-fun m!959063 () Bool)

(assert (=> b!1039136 m!959063))

(assert (=> b!1039138 m!959017))

(declare-fun m!959065 () Bool)

(assert (=> b!1039138 m!959065))

(assert (=> b!1039138 m!959019))

(assert (=> b!1039093 d!125417))

(declare-fun bm!43979 () Bool)

(declare-fun call!43982 () (_ BitVec 32))

(assert (=> bm!43979 (= call!43982 (arrayCountValidKeys!0 lt!457976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32041 (_keys!11524 thiss!1427))))))

(declare-fun b!1039148 () Bool)

(declare-fun e!588147 () (_ BitVec 32))

(assert (=> b!1039148 (= e!588147 #b00000000000000000000000000000000)))

(declare-fun b!1039149 () Bool)

(declare-fun e!588148 () (_ BitVec 32))

(assert (=> b!1039149 (= e!588148 (bvadd #b00000000000000000000000000000001 call!43982))))

(declare-fun b!1039150 () Bool)

(assert (=> b!1039150 (= e!588147 e!588148)))

(declare-fun c!105262 () Bool)

(assert (=> b!1039150 (= c!105262 (validKeyInArray!0 (select (arr!31509 lt!457976) #b00000000000000000000000000000000)))))

(declare-fun b!1039147 () Bool)

(assert (=> b!1039147 (= e!588148 call!43982)))

(declare-fun d!125419 () Bool)

(declare-fun lt!457995 () (_ BitVec 32))

(assert (=> d!125419 (and (bvsge lt!457995 #b00000000000000000000000000000000) (bvsle lt!457995 (bvsub (size!32041 lt!457976) #b00000000000000000000000000000000)))))

(assert (=> d!125419 (= lt!457995 e!588147)))

(declare-fun c!105261 () Bool)

(assert (=> d!125419 (= c!105261 (bvsge #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))))))

(assert (=> d!125419 (and (bvsle #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32041 (_keys!11524 thiss!1427)) (size!32041 lt!457976)))))

(assert (=> d!125419 (= (arrayCountValidKeys!0 lt!457976 #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) lt!457995)))

(assert (= (and d!125419 c!105261) b!1039148))

(assert (= (and d!125419 (not c!105261)) b!1039150))

(assert (= (and b!1039150 c!105262) b!1039149))

(assert (= (and b!1039150 (not c!105262)) b!1039147))

(assert (= (or b!1039149 b!1039147) bm!43979))

(declare-fun m!959067 () Bool)

(assert (=> bm!43979 m!959067))

(declare-fun m!959069 () Bool)

(assert (=> b!1039150 m!959069))

(assert (=> b!1039150 m!959069))

(declare-fun m!959071 () Bool)

(assert (=> b!1039150 m!959071))

(assert (=> b!1039093 d!125419))

(declare-fun d!125421 () Bool)

(declare-fun e!588151 () Bool)

(assert (=> d!125421 e!588151))

(declare-fun res!693134 () Bool)

(assert (=> d!125421 (=> (not res!693134) (not e!588151))))

(assert (=> d!125421 (= res!693134 (and (bvsge (index!41487 lt!457975) #b00000000000000000000000000000000) (bvslt (index!41487 lt!457975) (size!32041 (_keys!11524 thiss!1427)))))))

(declare-fun lt!457998 () Unit!33982)

(declare-fun choose!53 (array!65480 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22066) Unit!33982)

(assert (=> d!125421 (= lt!457998 (choose!53 (_keys!11524 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41487 lt!457975) #b00000000000000000000000000000000 Nil!22063))))

(assert (=> d!125421 (bvslt (size!32041 (_keys!11524 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125421 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11524 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41487 lt!457975) #b00000000000000000000000000000000 Nil!22063) lt!457998)))

(declare-fun b!1039153 () Bool)

(assert (=> b!1039153 (= e!588151 (arrayNoDuplicates!0 (array!65481 (store (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32041 (_keys!11524 thiss!1427))) #b00000000000000000000000000000000 Nil!22063))))

(assert (= (and d!125421 res!693134) b!1039153))

(declare-fun m!959073 () Bool)

(assert (=> d!125421 m!959073))

(assert (=> b!1039153 m!959017))

(declare-fun m!959075 () Bool)

(assert (=> b!1039153 m!959075))

(assert (=> b!1039093 d!125421))

(declare-fun bm!43980 () Bool)

(declare-fun call!43983 () (_ BitVec 32))

(assert (=> bm!43980 (= call!43983 (arrayCountValidKeys!0 (_keys!11524 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32041 (_keys!11524 thiss!1427))))))

(declare-fun b!1039155 () Bool)

(declare-fun e!588152 () (_ BitVec 32))

(assert (=> b!1039155 (= e!588152 #b00000000000000000000000000000000)))

(declare-fun b!1039156 () Bool)

(declare-fun e!588153 () (_ BitVec 32))

(assert (=> b!1039156 (= e!588153 (bvadd #b00000000000000000000000000000001 call!43983))))

(declare-fun b!1039157 () Bool)

(assert (=> b!1039157 (= e!588152 e!588153)))

(declare-fun c!105264 () Bool)

(assert (=> b!1039157 (= c!105264 (validKeyInArray!0 (select (arr!31509 (_keys!11524 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1039154 () Bool)

(assert (=> b!1039154 (= e!588153 call!43983)))

(declare-fun d!125423 () Bool)

(declare-fun lt!457999 () (_ BitVec 32))

(assert (=> d!125423 (and (bvsge lt!457999 #b00000000000000000000000000000000) (bvsle lt!457999 (bvsub (size!32041 (_keys!11524 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125423 (= lt!457999 e!588152)))

(declare-fun c!105263 () Bool)

(assert (=> d!125423 (= c!105263 (bvsge #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))))))

(assert (=> d!125423 (and (bvsle #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32041 (_keys!11524 thiss!1427)) (size!32041 (_keys!11524 thiss!1427))))))

(assert (=> d!125423 (= (arrayCountValidKeys!0 (_keys!11524 thiss!1427) #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) lt!457999)))

(assert (= (and d!125423 c!105263) b!1039155))

(assert (= (and d!125423 (not c!105263)) b!1039157))

(assert (= (and b!1039157 c!105264) b!1039156))

(assert (= (and b!1039157 (not c!105264)) b!1039154))

(assert (= (or b!1039156 b!1039154) bm!43980))

(declare-fun m!959077 () Bool)

(assert (=> bm!43980 m!959077))

(declare-fun m!959079 () Bool)

(assert (=> b!1039157 m!959079))

(assert (=> b!1039157 m!959079))

(declare-fun m!959081 () Bool)

(assert (=> b!1039157 m!959081))

(assert (=> b!1039093 d!125423))

(declare-fun b!1039168 () Bool)

(declare-fun e!588164 () Bool)

(declare-fun call!43986 () Bool)

(assert (=> b!1039168 (= e!588164 call!43986)))

(declare-fun b!1039169 () Bool)

(assert (=> b!1039169 (= e!588164 call!43986)))

(declare-fun bm!43983 () Bool)

(declare-fun c!105267 () Bool)

(assert (=> bm!43983 (= call!43986 (arrayNoDuplicates!0 lt!457976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105267 (Cons!22062 (select (arr!31509 lt!457976) #b00000000000000000000000000000000) Nil!22063) Nil!22063)))))

(declare-fun d!125425 () Bool)

(declare-fun res!693143 () Bool)

(declare-fun e!588163 () Bool)

(assert (=> d!125425 (=> res!693143 e!588163)))

(assert (=> d!125425 (= res!693143 (bvsge #b00000000000000000000000000000000 (size!32041 lt!457976)))))

(assert (=> d!125425 (= (arrayNoDuplicates!0 lt!457976 #b00000000000000000000000000000000 Nil!22063) e!588163)))

(declare-fun b!1039170 () Bool)

(declare-fun e!588165 () Bool)

(assert (=> b!1039170 (= e!588163 e!588165)))

(declare-fun res!693141 () Bool)

(assert (=> b!1039170 (=> (not res!693141) (not e!588165))))

(declare-fun e!588162 () Bool)

(assert (=> b!1039170 (= res!693141 (not e!588162))))

(declare-fun res!693142 () Bool)

(assert (=> b!1039170 (=> (not res!693142) (not e!588162))))

(assert (=> b!1039170 (= res!693142 (validKeyInArray!0 (select (arr!31509 lt!457976) #b00000000000000000000000000000000)))))

(declare-fun b!1039171 () Bool)

(assert (=> b!1039171 (= e!588165 e!588164)))

(assert (=> b!1039171 (= c!105267 (validKeyInArray!0 (select (arr!31509 lt!457976) #b00000000000000000000000000000000)))))

(declare-fun b!1039172 () Bool)

(declare-fun contains!6065 (List!22066 (_ BitVec 64)) Bool)

(assert (=> b!1039172 (= e!588162 (contains!6065 Nil!22063 (select (arr!31509 lt!457976) #b00000000000000000000000000000000)))))

(assert (= (and d!125425 (not res!693143)) b!1039170))

(assert (= (and b!1039170 res!693142) b!1039172))

(assert (= (and b!1039170 res!693141) b!1039171))

(assert (= (and b!1039171 c!105267) b!1039168))

(assert (= (and b!1039171 (not c!105267)) b!1039169))

(assert (= (or b!1039168 b!1039169) bm!43983))

(assert (=> bm!43983 m!959069))

(declare-fun m!959083 () Bool)

(assert (=> bm!43983 m!959083))

(assert (=> b!1039170 m!959069))

(assert (=> b!1039170 m!959069))

(assert (=> b!1039170 m!959071))

(assert (=> b!1039171 m!959069))

(assert (=> b!1039171 m!959069))

(assert (=> b!1039171 m!959071))

(assert (=> b!1039172 m!959069))

(assert (=> b!1039172 m!959069))

(declare-fun m!959085 () Bool)

(assert (=> b!1039172 m!959085))

(assert (=> b!1039093 d!125425))

(declare-fun d!125427 () Bool)

(assert (=> d!125427 (= (validKeyInArray!0 (select (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975))) (and (not (= (select (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!457975)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1039095 d!125427))

(declare-fun d!125429 () Bool)

(declare-fun res!693150 () Bool)

(declare-fun e!588168 () Bool)

(assert (=> d!125429 (=> (not res!693150) (not e!588168))))

(declare-fun simpleValid!425 (LongMapFixedSize!5874) Bool)

(assert (=> d!125429 (= res!693150 (simpleValid!425 thiss!1427))))

(assert (=> d!125429 (= (valid!2162 thiss!1427) e!588168)))

(declare-fun b!1039179 () Bool)

(declare-fun res!693151 () Bool)

(assert (=> b!1039179 (=> (not res!693151) (not e!588168))))

(assert (=> b!1039179 (= res!693151 (= (arrayCountValidKeys!0 (_keys!11524 thiss!1427) #b00000000000000000000000000000000 (size!32041 (_keys!11524 thiss!1427))) (_size!2992 thiss!1427)))))

(declare-fun b!1039180 () Bool)

(declare-fun res!693152 () Bool)

(assert (=> b!1039180 (=> (not res!693152) (not e!588168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65480 (_ BitVec 32)) Bool)

(assert (=> b!1039180 (= res!693152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11524 thiss!1427) (mask!30272 thiss!1427)))))

(declare-fun b!1039181 () Bool)

(assert (=> b!1039181 (= e!588168 (arrayNoDuplicates!0 (_keys!11524 thiss!1427) #b00000000000000000000000000000000 Nil!22063))))

(assert (= (and d!125429 res!693150) b!1039179))

(assert (= (and b!1039179 res!693151) b!1039180))

(assert (= (and b!1039180 res!693152) b!1039181))

(declare-fun m!959087 () Bool)

(assert (=> d!125429 m!959087))

(assert (=> b!1039179 m!959019))

(declare-fun m!959089 () Bool)

(assert (=> b!1039180 m!959089))

(declare-fun m!959091 () Bool)

(assert (=> b!1039181 m!959091))

(assert (=> start!90994 d!125429))

(declare-fun b!1039194 () Bool)

(declare-fun e!588175 () SeekEntryResult!9779)

(declare-fun lt!458008 () SeekEntryResult!9779)

(assert (=> b!1039194 (= e!588175 (ite ((_ is MissingVacant!9779) lt!458008) (MissingZero!9779 (index!41489 lt!458008)) lt!458008))))

(declare-fun lt!458010 () SeekEntryResult!9779)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65480 (_ BitVec 32)) SeekEntryResult!9779)

(assert (=> b!1039194 (= lt!458008 (seekKeyOrZeroReturnVacant!0 (x!92734 lt!458010) (index!41488 lt!458010) (index!41488 lt!458010) key!909 (_keys!11524 thiss!1427) (mask!30272 thiss!1427)))))

(declare-fun b!1039195 () Bool)

(assert (=> b!1039195 (= e!588175 (MissingZero!9779 (index!41488 lt!458010)))))

(declare-fun d!125431 () Bool)

(declare-fun lt!458011 () SeekEntryResult!9779)

(assert (=> d!125431 (and (or ((_ is MissingVacant!9779) lt!458011) (not ((_ is Found!9779) lt!458011)) (and (bvsge (index!41487 lt!458011) #b00000000000000000000000000000000) (bvslt (index!41487 lt!458011) (size!32041 (_keys!11524 thiss!1427))))) (not ((_ is MissingVacant!9779) lt!458011)) (or (not ((_ is Found!9779) lt!458011)) (= (select (arr!31509 (_keys!11524 thiss!1427)) (index!41487 lt!458011)) key!909)))))

(declare-fun e!588176 () SeekEntryResult!9779)

(assert (=> d!125431 (= lt!458011 e!588176)))

(declare-fun c!105274 () Bool)

(assert (=> d!125431 (= c!105274 (and ((_ is Intermediate!9779) lt!458010) (undefined!10591 lt!458010)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65480 (_ BitVec 32)) SeekEntryResult!9779)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125431 (= lt!458010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30272 thiss!1427)) key!909 (_keys!11524 thiss!1427) (mask!30272 thiss!1427)))))

(assert (=> d!125431 (validMask!0 (mask!30272 thiss!1427))))

(assert (=> d!125431 (= (seekEntry!0 key!909 (_keys!11524 thiss!1427) (mask!30272 thiss!1427)) lt!458011)))

(declare-fun b!1039196 () Bool)

(declare-fun e!588177 () SeekEntryResult!9779)

(assert (=> b!1039196 (= e!588176 e!588177)))

(declare-fun lt!458009 () (_ BitVec 64))

(assert (=> b!1039196 (= lt!458009 (select (arr!31509 (_keys!11524 thiss!1427)) (index!41488 lt!458010)))))

(declare-fun c!105276 () Bool)

(assert (=> b!1039196 (= c!105276 (= lt!458009 key!909))))

(declare-fun b!1039197 () Bool)

(assert (=> b!1039197 (= e!588177 (Found!9779 (index!41488 lt!458010)))))

(declare-fun b!1039198 () Bool)

(declare-fun c!105275 () Bool)

(assert (=> b!1039198 (= c!105275 (= lt!458009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1039198 (= e!588177 e!588175)))

(declare-fun b!1039199 () Bool)

(assert (=> b!1039199 (= e!588176 Undefined!9779)))

(assert (= (and d!125431 c!105274) b!1039199))

(assert (= (and d!125431 (not c!105274)) b!1039196))

(assert (= (and b!1039196 c!105276) b!1039197))

(assert (= (and b!1039196 (not c!105276)) b!1039198))

(assert (= (and b!1039198 c!105275) b!1039195))

(assert (= (and b!1039198 (not c!105275)) b!1039194))

(declare-fun m!959093 () Bool)

(assert (=> b!1039194 m!959093))

(declare-fun m!959095 () Bool)

(assert (=> d!125431 m!959095))

(declare-fun m!959097 () Bool)

(assert (=> d!125431 m!959097))

(assert (=> d!125431 m!959097))

(declare-fun m!959099 () Bool)

(assert (=> d!125431 m!959099))

(assert (=> d!125431 m!959023))

(declare-fun m!959101 () Bool)

(assert (=> b!1039196 m!959101))

(assert (=> b!1039092 d!125431))

(declare-fun mapNonEmpty!38593 () Bool)

(declare-fun mapRes!38593 () Bool)

(declare-fun tp!74085 () Bool)

(declare-fun e!588183 () Bool)

(assert (=> mapNonEmpty!38593 (= mapRes!38593 (and tp!74085 e!588183))))

(declare-fun mapRest!38593 () (Array (_ BitVec 32) ValueCell!11640))

(declare-fun mapKey!38593 () (_ BitVec 32))

(declare-fun mapValue!38593 () ValueCell!11640)

(assert (=> mapNonEmpty!38593 (= mapRest!38587 (store mapRest!38593 mapKey!38593 mapValue!38593))))

(declare-fun b!1039206 () Bool)

(assert (=> b!1039206 (= e!588183 tp_is_empty!24687)))

(declare-fun b!1039207 () Bool)

(declare-fun e!588182 () Bool)

(assert (=> b!1039207 (= e!588182 tp_is_empty!24687)))

(declare-fun mapIsEmpty!38593 () Bool)

(assert (=> mapIsEmpty!38593 mapRes!38593))

(declare-fun condMapEmpty!38593 () Bool)

(declare-fun mapDefault!38593 () ValueCell!11640)

(assert (=> mapNonEmpty!38587 (= condMapEmpty!38593 (= mapRest!38587 ((as const (Array (_ BitVec 32) ValueCell!11640)) mapDefault!38593)))))

(assert (=> mapNonEmpty!38587 (= tp!74076 (and e!588182 mapRes!38593))))

(assert (= (and mapNonEmpty!38587 condMapEmpty!38593) mapIsEmpty!38593))

(assert (= (and mapNonEmpty!38587 (not condMapEmpty!38593)) mapNonEmpty!38593))

(assert (= (and mapNonEmpty!38593 ((_ is ValueCellFull!11640) mapValue!38593)) b!1039206))

(assert (= (and mapNonEmpty!38587 ((_ is ValueCellFull!11640) mapDefault!38593)) b!1039207))

(declare-fun m!959103 () Bool)

(assert (=> mapNonEmpty!38593 m!959103))

(check-sat (not b!1039153) (not b!1039172) (not b!1039181) (not b!1039171) (not bm!43980) (not d!125421) (not d!125417) b_and!33517 tp_is_empty!24687 (not b!1039135) (not b!1039179) (not bm!43983) (not b!1039157) (not b!1039150) (not b!1039170) (not b_next!20967) (not d!125431) (not d!125429) (not b!1039138) (not b!1039180) (not bm!43979) (not b!1039136) (not b!1039194) (not mapNonEmpty!38593))
(check-sat b_and!33517 (not b_next!20967))
