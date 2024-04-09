; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91178 () Bool)

(assert start!91178)

(declare-fun b!1040279 () Bool)

(declare-fun b_free!21009 () Bool)

(declare-fun b_next!21009 () Bool)

(assert (=> b!1040279 (= b_free!21009 (not b_next!21009))))

(declare-fun tp!74222 () Bool)

(declare-fun b_and!33559 () Bool)

(assert (=> b!1040279 (= tp!74222 b_and!33559)))

(declare-fun b!1040276 () Bool)

(declare-fun res!693661 () Bool)

(declare-fun e!588983 () Bool)

(assert (=> b!1040276 (=> (not res!693661) (not e!588983))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1040276 (= res!693661 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38671 () Bool)

(declare-fun mapRes!38671 () Bool)

(assert (=> mapIsEmpty!38671 mapRes!38671))

(declare-fun b!1040277 () Bool)

(declare-fun e!588985 () Bool)

(declare-fun e!588987 () Bool)

(assert (=> b!1040277 (= e!588985 (not e!588987))))

(declare-fun res!693664 () Bool)

(assert (=> b!1040277 (=> res!693664 e!588987)))

(declare-datatypes ((SeekEntryResult!9795 0))(
  ( (MissingZero!9795 (index!41550 (_ BitVec 32))) (Found!9795 (index!41551 (_ BitVec 32))) (Intermediate!9795 (undefined!10607 Bool) (index!41552 (_ BitVec 32)) (x!92862 (_ BitVec 32))) (Undefined!9795) (MissingVacant!9795 (index!41553 (_ BitVec 32))) )
))
(declare-fun lt!458480 () SeekEntryResult!9795)

(declare-datatypes ((V!37845 0))(
  ( (V!37846 (val!12415 Int)) )
))
(declare-datatypes ((ValueCell!11661 0))(
  ( (ValueCellFull!11661 (v!15003 V!37845)) (EmptyCell!11661) )
))
(declare-datatypes ((array!65578 0))(
  ( (array!65579 (arr!31551 (Array (_ BitVec 32) (_ BitVec 64))) (size!32083 (_ BitVec 32))) )
))
(declare-datatypes ((array!65580 0))(
  ( (array!65581 (arr!31552 (Array (_ BitVec 32) ValueCell!11661)) (size!32084 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5916 0))(
  ( (LongMapFixedSize!5917 (defaultEntry!6340 Int) (mask!30326 (_ BitVec 32)) (extraKeys!6068 (_ BitVec 32)) (zeroValue!6174 V!37845) (minValue!6174 V!37845) (_size!3013 (_ BitVec 32)) (_keys!11557 array!65578) (_values!6363 array!65580) (_vacant!3013 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5916)

(assert (=> b!1040277 (= res!693664 (or (bvslt (index!41551 lt!458480) #b00000000000000000000000000000000) (bvsge (index!41551 lt!458480) (size!32083 (_keys!11557 thiss!1427))) (bvsge (size!32083 (_keys!11557 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!458481 () array!65578)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65578 (_ BitVec 32)) Bool)

(assert (=> b!1040277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458481 (mask!30326 thiss!1427))))

(declare-datatypes ((Unit!34008 0))(
  ( (Unit!34009) )
))
(declare-fun lt!458479 () Unit!34008)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65578 (_ BitVec 32) (_ BitVec 32)) Unit!34008)

(assert (=> b!1040277 (= lt!458479 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11557 thiss!1427) (index!41551 lt!458480) (mask!30326 thiss!1427)))))

(declare-datatypes ((List!22080 0))(
  ( (Nil!22077) (Cons!22076 (h!23280 (_ BitVec 64)) (t!31301 List!22080)) )
))
(declare-fun arrayNoDuplicates!0 (array!65578 (_ BitVec 32) List!22080) Bool)

(assert (=> b!1040277 (arrayNoDuplicates!0 lt!458481 #b00000000000000000000000000000000 Nil!22077)))

(declare-fun lt!458478 () Unit!34008)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65578 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22080) Unit!34008)

(assert (=> b!1040277 (= lt!458478 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11557 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41551 lt!458480) #b00000000000000000000000000000000 Nil!22077))))

(declare-fun arrayCountValidKeys!0 (array!65578 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040277 (= (arrayCountValidKeys!0 lt!458481 #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040277 (= lt!458481 (array!65579 (store (arr!31551 (_keys!11557 thiss!1427)) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32083 (_keys!11557 thiss!1427))))))

(declare-fun lt!458482 () Unit!34008)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65578 (_ BitVec 32) (_ BitVec 64)) Unit!34008)

(assert (=> b!1040277 (= lt!458482 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11557 thiss!1427) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1040278 () Bool)

(declare-fun res!693665 () Bool)

(assert (=> b!1040278 (=> res!693665 e!588987)))

(assert (=> b!1040278 (= res!693665 (not (arrayNoDuplicates!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 Nil!22077)))))

(declare-fun e!588982 () Bool)

(declare-fun tp_is_empty!24729 () Bool)

(declare-fun e!588986 () Bool)

(declare-fun array_inv!24225 (array!65578) Bool)

(declare-fun array_inv!24226 (array!65580) Bool)

(assert (=> b!1040279 (= e!588982 (and tp!74222 tp_is_empty!24729 (array_inv!24225 (_keys!11557 thiss!1427)) (array_inv!24226 (_values!6363 thiss!1427)) e!588986))))

(declare-fun b!1040280 () Bool)

(declare-fun e!588980 () Bool)

(assert (=> b!1040280 (= e!588980 tp_is_empty!24729)))

(declare-fun b!1040281 () Bool)

(declare-fun e!588984 () Bool)

(assert (=> b!1040281 (= e!588986 (and e!588984 mapRes!38671))))

(declare-fun condMapEmpty!38671 () Bool)

(declare-fun mapDefault!38671 () ValueCell!11661)

(assert (=> b!1040281 (= condMapEmpty!38671 (= (arr!31552 (_values!6363 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11661)) mapDefault!38671)))))

(declare-fun res!693663 () Bool)

(assert (=> start!91178 (=> (not res!693663) (not e!588983))))

(declare-fun valid!2177 (LongMapFixedSize!5916) Bool)

(assert (=> start!91178 (= res!693663 (valid!2177 thiss!1427))))

(assert (=> start!91178 e!588983))

(assert (=> start!91178 e!588982))

(assert (=> start!91178 true))

(declare-fun b!1040282 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040282 (= e!588987 (validKeyInArray!0 key!909))))

(declare-fun b!1040283 () Bool)

(assert (=> b!1040283 (= e!588984 tp_is_empty!24729)))

(declare-fun b!1040284 () Bool)

(assert (=> b!1040284 (= e!588983 e!588985)))

(declare-fun res!693662 () Bool)

(assert (=> b!1040284 (=> (not res!693662) (not e!588985))))

(get-info :version)

(assert (=> b!1040284 (= res!693662 ((_ is Found!9795) lt!458480))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65578 (_ BitVec 32)) SeekEntryResult!9795)

(assert (=> b!1040284 (= lt!458480 (seekEntry!0 key!909 (_keys!11557 thiss!1427) (mask!30326 thiss!1427)))))

(declare-fun mapNonEmpty!38671 () Bool)

(declare-fun tp!74223 () Bool)

(assert (=> mapNonEmpty!38671 (= mapRes!38671 (and tp!74223 e!588980))))

(declare-fun mapRest!38671 () (Array (_ BitVec 32) ValueCell!11661))

(declare-fun mapValue!38671 () ValueCell!11661)

(declare-fun mapKey!38671 () (_ BitVec 32))

(assert (=> mapNonEmpty!38671 (= (arr!31552 (_values!6363 thiss!1427)) (store mapRest!38671 mapKey!38671 mapValue!38671))))

(assert (= (and start!91178 res!693663) b!1040276))

(assert (= (and b!1040276 res!693661) b!1040284))

(assert (= (and b!1040284 res!693662) b!1040277))

(assert (= (and b!1040277 (not res!693664)) b!1040278))

(assert (= (and b!1040278 (not res!693665)) b!1040282))

(assert (= (and b!1040281 condMapEmpty!38671) mapIsEmpty!38671))

(assert (= (and b!1040281 (not condMapEmpty!38671)) mapNonEmpty!38671))

(assert (= (and mapNonEmpty!38671 ((_ is ValueCellFull!11661) mapValue!38671)) b!1040280))

(assert (= (and b!1040281 ((_ is ValueCellFull!11661) mapDefault!38671)) b!1040283))

(assert (= b!1040279 b!1040281))

(assert (= start!91178 b!1040279))

(declare-fun m!959987 () Bool)

(assert (=> b!1040279 m!959987))

(declare-fun m!959989 () Bool)

(assert (=> b!1040279 m!959989))

(declare-fun m!959991 () Bool)

(assert (=> b!1040277 m!959991))

(declare-fun m!959993 () Bool)

(assert (=> b!1040277 m!959993))

(declare-fun m!959995 () Bool)

(assert (=> b!1040277 m!959995))

(declare-fun m!959997 () Bool)

(assert (=> b!1040277 m!959997))

(declare-fun m!959999 () Bool)

(assert (=> b!1040277 m!959999))

(declare-fun m!960001 () Bool)

(assert (=> b!1040277 m!960001))

(declare-fun m!960003 () Bool)

(assert (=> b!1040277 m!960003))

(declare-fun m!960005 () Bool)

(assert (=> b!1040277 m!960005))

(declare-fun m!960007 () Bool)

(assert (=> b!1040278 m!960007))

(declare-fun m!960009 () Bool)

(assert (=> b!1040282 m!960009))

(declare-fun m!960011 () Bool)

(assert (=> b!1040284 m!960011))

(declare-fun m!960013 () Bool)

(assert (=> start!91178 m!960013))

(declare-fun m!960015 () Bool)

(assert (=> mapNonEmpty!38671 m!960015))

(check-sat (not b!1040282) (not b!1040278) (not b!1040277) tp_is_empty!24729 (not mapNonEmpty!38671) (not b!1040284) (not start!91178) (not b_next!21009) b_and!33559 (not b!1040279))
(check-sat b_and!33559 (not b_next!21009))
(get-model)

(declare-fun d!125587 () Bool)

(assert (=> d!125587 (= (array_inv!24225 (_keys!11557 thiss!1427)) (bvsge (size!32083 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040279 d!125587))

(declare-fun d!125589 () Bool)

(assert (=> d!125589 (= (array_inv!24226 (_values!6363 thiss!1427)) (bvsge (size!32084 (_values!6363 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040279 d!125589))

(declare-fun b!1040320 () Bool)

(declare-fun e!589017 () (_ BitVec 32))

(declare-fun call!44049 () (_ BitVec 32))

(assert (=> b!1040320 (= e!589017 (bvadd #b00000000000000000000000000000001 call!44049))))

(declare-fun b!1040321 () Bool)

(declare-fun e!589016 () (_ BitVec 32))

(assert (=> b!1040321 (= e!589016 e!589017)))

(declare-fun c!105420 () Bool)

(assert (=> b!1040321 (= c!105420 (validKeyInArray!0 (select (arr!31551 lt!458481) #b00000000000000000000000000000000)))))

(declare-fun bm!44046 () Bool)

(assert (=> bm!44046 (= call!44049 (arrayCountValidKeys!0 lt!458481 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32083 (_keys!11557 thiss!1427))))))

(declare-fun b!1040322 () Bool)

(assert (=> b!1040322 (= e!589017 call!44049)))

(declare-fun b!1040323 () Bool)

(assert (=> b!1040323 (= e!589016 #b00000000000000000000000000000000)))

(declare-fun d!125591 () Bool)

(declare-fun lt!458500 () (_ BitVec 32))

(assert (=> d!125591 (and (bvsge lt!458500 #b00000000000000000000000000000000) (bvsle lt!458500 (bvsub (size!32083 lt!458481) #b00000000000000000000000000000000)))))

(assert (=> d!125591 (= lt!458500 e!589016)))

(declare-fun c!105419 () Bool)

(assert (=> d!125591 (= c!105419 (bvsge #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))))))

(assert (=> d!125591 (and (bvsle #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32083 (_keys!11557 thiss!1427)) (size!32083 lt!458481)))))

(assert (=> d!125591 (= (arrayCountValidKeys!0 lt!458481 #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) lt!458500)))

(assert (= (and d!125591 c!105419) b!1040323))

(assert (= (and d!125591 (not c!105419)) b!1040321))

(assert (= (and b!1040321 c!105420) b!1040320))

(assert (= (and b!1040321 (not c!105420)) b!1040322))

(assert (= (or b!1040320 b!1040322) bm!44046))

(declare-fun m!960047 () Bool)

(assert (=> b!1040321 m!960047))

(assert (=> b!1040321 m!960047))

(declare-fun m!960049 () Bool)

(assert (=> b!1040321 m!960049))

(declare-fun m!960051 () Bool)

(assert (=> bm!44046 m!960051))

(assert (=> b!1040277 d!125591))

(declare-fun d!125593 () Bool)

(declare-fun e!589020 () Bool)

(assert (=> d!125593 e!589020))

(declare-fun res!693683 () Bool)

(assert (=> d!125593 (=> (not res!693683) (not e!589020))))

(assert (=> d!125593 (= res!693683 (and (bvsge (index!41551 lt!458480) #b00000000000000000000000000000000) (bvslt (index!41551 lt!458480) (size!32083 (_keys!11557 thiss!1427)))))))

(declare-fun lt!458503 () Unit!34008)

(declare-fun choose!25 (array!65578 (_ BitVec 32) (_ BitVec 32)) Unit!34008)

(assert (=> d!125593 (= lt!458503 (choose!25 (_keys!11557 thiss!1427) (index!41551 lt!458480) (mask!30326 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125593 (validMask!0 (mask!30326 thiss!1427))))

(assert (=> d!125593 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11557 thiss!1427) (index!41551 lt!458480) (mask!30326 thiss!1427)) lt!458503)))

(declare-fun b!1040326 () Bool)

(assert (=> b!1040326 (= e!589020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65579 (store (arr!31551 (_keys!11557 thiss!1427)) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32083 (_keys!11557 thiss!1427))) (mask!30326 thiss!1427)))))

(assert (= (and d!125593 res!693683) b!1040326))

(declare-fun m!960053 () Bool)

(assert (=> d!125593 m!960053))

(declare-fun m!960055 () Bool)

(assert (=> d!125593 m!960055))

(assert (=> b!1040326 m!960001))

(declare-fun m!960057 () Bool)

(assert (=> b!1040326 m!960057))

(assert (=> b!1040277 d!125593))

(declare-fun b!1040335 () Bool)

(declare-fun res!693695 () Bool)

(declare-fun e!589026 () Bool)

(assert (=> b!1040335 (=> (not res!693695) (not e!589026))))

(assert (=> b!1040335 (= res!693695 (validKeyInArray!0 (select (arr!31551 (_keys!11557 thiss!1427)) (index!41551 lt!458480))))))

(declare-fun d!125595 () Bool)

(declare-fun e!589025 () Bool)

(assert (=> d!125595 e!589025))

(declare-fun res!693694 () Bool)

(assert (=> d!125595 (=> (not res!693694) (not e!589025))))

(assert (=> d!125595 (= res!693694 (and (bvsge (index!41551 lt!458480) #b00000000000000000000000000000000) (bvslt (index!41551 lt!458480) (size!32083 (_keys!11557 thiss!1427)))))))

(declare-fun lt!458506 () Unit!34008)

(declare-fun choose!82 (array!65578 (_ BitVec 32) (_ BitVec 64)) Unit!34008)

(assert (=> d!125595 (= lt!458506 (choose!82 (_keys!11557 thiss!1427) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125595 e!589026))

(declare-fun res!693692 () Bool)

(assert (=> d!125595 (=> (not res!693692) (not e!589026))))

(assert (=> d!125595 (= res!693692 (and (bvsge (index!41551 lt!458480) #b00000000000000000000000000000000) (bvslt (index!41551 lt!458480) (size!32083 (_keys!11557 thiss!1427)))))))

(assert (=> d!125595 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11557 thiss!1427) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458506)))

(declare-fun b!1040337 () Bool)

(assert (=> b!1040337 (= e!589026 (bvslt (size!32083 (_keys!11557 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1040338 () Bool)

(assert (=> b!1040338 (= e!589025 (= (arrayCountValidKeys!0 (array!65579 (store (arr!31551 (_keys!11557 thiss!1427)) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32083 (_keys!11557 thiss!1427))) #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1040336 () Bool)

(declare-fun res!693693 () Bool)

(assert (=> b!1040336 (=> (not res!693693) (not e!589026))))

(assert (=> b!1040336 (= res!693693 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125595 res!693692) b!1040335))

(assert (= (and b!1040335 res!693695) b!1040336))

(assert (= (and b!1040336 res!693693) b!1040337))

(assert (= (and d!125595 res!693694) b!1040338))

(declare-fun m!960059 () Bool)

(assert (=> b!1040335 m!960059))

(assert (=> b!1040335 m!960059))

(declare-fun m!960061 () Bool)

(assert (=> b!1040335 m!960061))

(declare-fun m!960063 () Bool)

(assert (=> d!125595 m!960063))

(assert (=> b!1040338 m!960001))

(declare-fun m!960065 () Bool)

(assert (=> b!1040338 m!960065))

(assert (=> b!1040338 m!959997))

(declare-fun m!960067 () Bool)

(assert (=> b!1040336 m!960067))

(assert (=> b!1040277 d!125595))

(declare-fun b!1040347 () Bool)

(declare-fun e!589033 () Bool)

(declare-fun e!589034 () Bool)

(assert (=> b!1040347 (= e!589033 e!589034)))

(declare-fun c!105423 () Bool)

(assert (=> b!1040347 (= c!105423 (validKeyInArray!0 (select (arr!31551 lt!458481) #b00000000000000000000000000000000)))))

(declare-fun d!125597 () Bool)

(declare-fun res!693700 () Bool)

(assert (=> d!125597 (=> res!693700 e!589033)))

(assert (=> d!125597 (= res!693700 (bvsge #b00000000000000000000000000000000 (size!32083 lt!458481)))))

(assert (=> d!125597 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458481 (mask!30326 thiss!1427)) e!589033)))

(declare-fun b!1040348 () Bool)

(declare-fun e!589035 () Bool)

(assert (=> b!1040348 (= e!589034 e!589035)))

(declare-fun lt!458514 () (_ BitVec 64))

(assert (=> b!1040348 (= lt!458514 (select (arr!31551 lt!458481) #b00000000000000000000000000000000))))

(declare-fun lt!458513 () Unit!34008)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65578 (_ BitVec 64) (_ BitVec 32)) Unit!34008)

(assert (=> b!1040348 (= lt!458513 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458481 lt!458514 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040348 (arrayContainsKey!0 lt!458481 lt!458514 #b00000000000000000000000000000000)))

(declare-fun lt!458515 () Unit!34008)

(assert (=> b!1040348 (= lt!458515 lt!458513)))

(declare-fun res!693701 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65578 (_ BitVec 32)) SeekEntryResult!9795)

(assert (=> b!1040348 (= res!693701 (= (seekEntryOrOpen!0 (select (arr!31551 lt!458481) #b00000000000000000000000000000000) lt!458481 (mask!30326 thiss!1427)) (Found!9795 #b00000000000000000000000000000000)))))

(assert (=> b!1040348 (=> (not res!693701) (not e!589035))))

(declare-fun b!1040349 () Bool)

(declare-fun call!44052 () Bool)

(assert (=> b!1040349 (= e!589035 call!44052)))

(declare-fun bm!44049 () Bool)

(assert (=> bm!44049 (= call!44052 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458481 (mask!30326 thiss!1427)))))

(declare-fun b!1040350 () Bool)

(assert (=> b!1040350 (= e!589034 call!44052)))

(assert (= (and d!125597 (not res!693700)) b!1040347))

(assert (= (and b!1040347 c!105423) b!1040348))

(assert (= (and b!1040347 (not c!105423)) b!1040350))

(assert (= (and b!1040348 res!693701) b!1040349))

(assert (= (or b!1040349 b!1040350) bm!44049))

(assert (=> b!1040347 m!960047))

(assert (=> b!1040347 m!960047))

(assert (=> b!1040347 m!960049))

(assert (=> b!1040348 m!960047))

(declare-fun m!960069 () Bool)

(assert (=> b!1040348 m!960069))

(declare-fun m!960071 () Bool)

(assert (=> b!1040348 m!960071))

(assert (=> b!1040348 m!960047))

(declare-fun m!960073 () Bool)

(assert (=> b!1040348 m!960073))

(declare-fun m!960075 () Bool)

(assert (=> bm!44049 m!960075))

(assert (=> b!1040277 d!125597))

(declare-fun bm!44052 () Bool)

(declare-fun call!44055 () Bool)

(declare-fun c!105426 () Bool)

(assert (=> bm!44052 (= call!44055 (arrayNoDuplicates!0 lt!458481 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105426 (Cons!22076 (select (arr!31551 lt!458481) #b00000000000000000000000000000000) Nil!22077) Nil!22077)))))

(declare-fun b!1040361 () Bool)

(declare-fun e!589047 () Bool)

(assert (=> b!1040361 (= e!589047 call!44055)))

(declare-fun b!1040362 () Bool)

(assert (=> b!1040362 (= e!589047 call!44055)))

(declare-fun d!125599 () Bool)

(declare-fun res!693708 () Bool)

(declare-fun e!589044 () Bool)

(assert (=> d!125599 (=> res!693708 e!589044)))

(assert (=> d!125599 (= res!693708 (bvsge #b00000000000000000000000000000000 (size!32083 lt!458481)))))

(assert (=> d!125599 (= (arrayNoDuplicates!0 lt!458481 #b00000000000000000000000000000000 Nil!22077) e!589044)))

(declare-fun b!1040363 () Bool)

(declare-fun e!589046 () Bool)

(declare-fun contains!6072 (List!22080 (_ BitVec 64)) Bool)

(assert (=> b!1040363 (= e!589046 (contains!6072 Nil!22077 (select (arr!31551 lt!458481) #b00000000000000000000000000000000)))))

(declare-fun b!1040364 () Bool)

(declare-fun e!589045 () Bool)

(assert (=> b!1040364 (= e!589045 e!589047)))

(assert (=> b!1040364 (= c!105426 (validKeyInArray!0 (select (arr!31551 lt!458481) #b00000000000000000000000000000000)))))

(declare-fun b!1040365 () Bool)

(assert (=> b!1040365 (= e!589044 e!589045)))

(declare-fun res!693710 () Bool)

(assert (=> b!1040365 (=> (not res!693710) (not e!589045))))

(assert (=> b!1040365 (= res!693710 (not e!589046))))

(declare-fun res!693709 () Bool)

(assert (=> b!1040365 (=> (not res!693709) (not e!589046))))

(assert (=> b!1040365 (= res!693709 (validKeyInArray!0 (select (arr!31551 lt!458481) #b00000000000000000000000000000000)))))

(assert (= (and d!125599 (not res!693708)) b!1040365))

(assert (= (and b!1040365 res!693709) b!1040363))

(assert (= (and b!1040365 res!693710) b!1040364))

(assert (= (and b!1040364 c!105426) b!1040362))

(assert (= (and b!1040364 (not c!105426)) b!1040361))

(assert (= (or b!1040362 b!1040361) bm!44052))

(assert (=> bm!44052 m!960047))

(declare-fun m!960077 () Bool)

(assert (=> bm!44052 m!960077))

(assert (=> b!1040363 m!960047))

(assert (=> b!1040363 m!960047))

(declare-fun m!960079 () Bool)

(assert (=> b!1040363 m!960079))

(assert (=> b!1040364 m!960047))

(assert (=> b!1040364 m!960047))

(assert (=> b!1040364 m!960049))

(assert (=> b!1040365 m!960047))

(assert (=> b!1040365 m!960047))

(assert (=> b!1040365 m!960049))

(assert (=> b!1040277 d!125599))

(declare-fun d!125601 () Bool)

(declare-fun e!589050 () Bool)

(assert (=> d!125601 e!589050))

(declare-fun res!693713 () Bool)

(assert (=> d!125601 (=> (not res!693713) (not e!589050))))

(assert (=> d!125601 (= res!693713 (and (bvsge (index!41551 lt!458480) #b00000000000000000000000000000000) (bvslt (index!41551 lt!458480) (size!32083 (_keys!11557 thiss!1427)))))))

(declare-fun lt!458518 () Unit!34008)

(declare-fun choose!53 (array!65578 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22080) Unit!34008)

(assert (=> d!125601 (= lt!458518 (choose!53 (_keys!11557 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41551 lt!458480) #b00000000000000000000000000000000 Nil!22077))))

(assert (=> d!125601 (bvslt (size!32083 (_keys!11557 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125601 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11557 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41551 lt!458480) #b00000000000000000000000000000000 Nil!22077) lt!458518)))

(declare-fun b!1040368 () Bool)

(assert (=> b!1040368 (= e!589050 (arrayNoDuplicates!0 (array!65579 (store (arr!31551 (_keys!11557 thiss!1427)) (index!41551 lt!458480) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32083 (_keys!11557 thiss!1427))) #b00000000000000000000000000000000 Nil!22077))))

(assert (= (and d!125601 res!693713) b!1040368))

(declare-fun m!960081 () Bool)

(assert (=> d!125601 m!960081))

(assert (=> b!1040368 m!960001))

(declare-fun m!960083 () Bool)

(assert (=> b!1040368 m!960083))

(assert (=> b!1040277 d!125601))

(declare-fun b!1040369 () Bool)

(declare-fun e!589052 () (_ BitVec 32))

(declare-fun call!44056 () (_ BitVec 32))

(assert (=> b!1040369 (= e!589052 (bvadd #b00000000000000000000000000000001 call!44056))))

(declare-fun b!1040370 () Bool)

(declare-fun e!589051 () (_ BitVec 32))

(assert (=> b!1040370 (= e!589051 e!589052)))

(declare-fun c!105428 () Bool)

(assert (=> b!1040370 (= c!105428 (validKeyInArray!0 (select (arr!31551 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44053 () Bool)

(assert (=> bm!44053 (= call!44056 (arrayCountValidKeys!0 (_keys!11557 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32083 (_keys!11557 thiss!1427))))))

(declare-fun b!1040371 () Bool)

(assert (=> b!1040371 (= e!589052 call!44056)))

(declare-fun b!1040372 () Bool)

(assert (=> b!1040372 (= e!589051 #b00000000000000000000000000000000)))

(declare-fun d!125603 () Bool)

(declare-fun lt!458519 () (_ BitVec 32))

(assert (=> d!125603 (and (bvsge lt!458519 #b00000000000000000000000000000000) (bvsle lt!458519 (bvsub (size!32083 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125603 (= lt!458519 e!589051)))

(declare-fun c!105427 () Bool)

(assert (=> d!125603 (= c!105427 (bvsge #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))))))

(assert (=> d!125603 (and (bvsle #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32083 (_keys!11557 thiss!1427)) (size!32083 (_keys!11557 thiss!1427))))))

(assert (=> d!125603 (= (arrayCountValidKeys!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) lt!458519)))

(assert (= (and d!125603 c!105427) b!1040372))

(assert (= (and d!125603 (not c!105427)) b!1040370))

(assert (= (and b!1040370 c!105428) b!1040369))

(assert (= (and b!1040370 (not c!105428)) b!1040371))

(assert (= (or b!1040369 b!1040371) bm!44053))

(declare-fun m!960085 () Bool)

(assert (=> b!1040370 m!960085))

(assert (=> b!1040370 m!960085))

(declare-fun m!960087 () Bool)

(assert (=> b!1040370 m!960087))

(declare-fun m!960089 () Bool)

(assert (=> bm!44053 m!960089))

(assert (=> b!1040277 d!125603))

(declare-fun d!125605 () Bool)

(assert (=> d!125605 (= (validKeyInArray!0 key!909) (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1040282 d!125605))

(declare-fun b!1040385 () Bool)

(declare-fun e!589059 () SeekEntryResult!9795)

(assert (=> b!1040385 (= e!589059 Undefined!9795)))

(declare-fun b!1040386 () Bool)

(declare-fun e!589061 () SeekEntryResult!9795)

(assert (=> b!1040386 (= e!589059 e!589061)))

(declare-fun lt!458530 () (_ BitVec 64))

(declare-fun lt!458528 () SeekEntryResult!9795)

(assert (=> b!1040386 (= lt!458530 (select (arr!31551 (_keys!11557 thiss!1427)) (index!41552 lt!458528)))))

(declare-fun c!105435 () Bool)

(assert (=> b!1040386 (= c!105435 (= lt!458530 key!909))))

(declare-fun d!125607 () Bool)

(declare-fun lt!458531 () SeekEntryResult!9795)

(assert (=> d!125607 (and (or ((_ is MissingVacant!9795) lt!458531) (not ((_ is Found!9795) lt!458531)) (and (bvsge (index!41551 lt!458531) #b00000000000000000000000000000000) (bvslt (index!41551 lt!458531) (size!32083 (_keys!11557 thiss!1427))))) (not ((_ is MissingVacant!9795) lt!458531)) (or (not ((_ is Found!9795) lt!458531)) (= (select (arr!31551 (_keys!11557 thiss!1427)) (index!41551 lt!458531)) key!909)))))

(assert (=> d!125607 (= lt!458531 e!589059)))

(declare-fun c!105437 () Bool)

(assert (=> d!125607 (= c!105437 (and ((_ is Intermediate!9795) lt!458528) (undefined!10607 lt!458528)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65578 (_ BitVec 32)) SeekEntryResult!9795)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125607 (= lt!458528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30326 thiss!1427)) key!909 (_keys!11557 thiss!1427) (mask!30326 thiss!1427)))))

(assert (=> d!125607 (validMask!0 (mask!30326 thiss!1427))))

(assert (=> d!125607 (= (seekEntry!0 key!909 (_keys!11557 thiss!1427) (mask!30326 thiss!1427)) lt!458531)))

(declare-fun b!1040387 () Bool)

(declare-fun e!589060 () SeekEntryResult!9795)

(assert (=> b!1040387 (= e!589060 (MissingZero!9795 (index!41552 lt!458528)))))

(declare-fun b!1040388 () Bool)

(declare-fun c!105436 () Bool)

(assert (=> b!1040388 (= c!105436 (= lt!458530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1040388 (= e!589061 e!589060)))

(declare-fun b!1040389 () Bool)

(declare-fun lt!458529 () SeekEntryResult!9795)

(assert (=> b!1040389 (= e!589060 (ite ((_ is MissingVacant!9795) lt!458529) (MissingZero!9795 (index!41553 lt!458529)) lt!458529))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65578 (_ BitVec 32)) SeekEntryResult!9795)

(assert (=> b!1040389 (= lt!458529 (seekKeyOrZeroReturnVacant!0 (x!92862 lt!458528) (index!41552 lt!458528) (index!41552 lt!458528) key!909 (_keys!11557 thiss!1427) (mask!30326 thiss!1427)))))

(declare-fun b!1040390 () Bool)

(assert (=> b!1040390 (= e!589061 (Found!9795 (index!41552 lt!458528)))))

(assert (= (and d!125607 c!105437) b!1040385))

(assert (= (and d!125607 (not c!105437)) b!1040386))

(assert (= (and b!1040386 c!105435) b!1040390))

(assert (= (and b!1040386 (not c!105435)) b!1040388))

(assert (= (and b!1040388 c!105436) b!1040387))

(assert (= (and b!1040388 (not c!105436)) b!1040389))

(declare-fun m!960091 () Bool)

(assert (=> b!1040386 m!960091))

(declare-fun m!960093 () Bool)

(assert (=> d!125607 m!960093))

(declare-fun m!960095 () Bool)

(assert (=> d!125607 m!960095))

(assert (=> d!125607 m!960095))

(declare-fun m!960097 () Bool)

(assert (=> d!125607 m!960097))

(assert (=> d!125607 m!960055))

(declare-fun m!960099 () Bool)

(assert (=> b!1040389 m!960099))

(assert (=> b!1040284 d!125607))

(declare-fun d!125609 () Bool)

(declare-fun res!693720 () Bool)

(declare-fun e!589064 () Bool)

(assert (=> d!125609 (=> (not res!693720) (not e!589064))))

(declare-fun simpleValid!432 (LongMapFixedSize!5916) Bool)

(assert (=> d!125609 (= res!693720 (simpleValid!432 thiss!1427))))

(assert (=> d!125609 (= (valid!2177 thiss!1427) e!589064)))

(declare-fun b!1040397 () Bool)

(declare-fun res!693721 () Bool)

(assert (=> b!1040397 (=> (not res!693721) (not e!589064))))

(assert (=> b!1040397 (= res!693721 (= (arrayCountValidKeys!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))) (_size!3013 thiss!1427)))))

(declare-fun b!1040398 () Bool)

(declare-fun res!693722 () Bool)

(assert (=> b!1040398 (=> (not res!693722) (not e!589064))))

(assert (=> b!1040398 (= res!693722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11557 thiss!1427) (mask!30326 thiss!1427)))))

(declare-fun b!1040399 () Bool)

(assert (=> b!1040399 (= e!589064 (arrayNoDuplicates!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 Nil!22077))))

(assert (= (and d!125609 res!693720) b!1040397))

(assert (= (and b!1040397 res!693721) b!1040398))

(assert (= (and b!1040398 res!693722) b!1040399))

(declare-fun m!960101 () Bool)

(assert (=> d!125609 m!960101))

(assert (=> b!1040397 m!959997))

(declare-fun m!960103 () Bool)

(assert (=> b!1040398 m!960103))

(assert (=> b!1040399 m!960007))

(assert (=> start!91178 d!125609))

(declare-fun bm!44054 () Bool)

(declare-fun call!44057 () Bool)

(declare-fun c!105438 () Bool)

(assert (=> bm!44054 (= call!44057 (arrayNoDuplicates!0 (_keys!11557 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105438 (Cons!22076 (select (arr!31551 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000) Nil!22077) Nil!22077)))))

(declare-fun b!1040400 () Bool)

(declare-fun e!589068 () Bool)

(assert (=> b!1040400 (= e!589068 call!44057)))

(declare-fun b!1040401 () Bool)

(assert (=> b!1040401 (= e!589068 call!44057)))

(declare-fun d!125611 () Bool)

(declare-fun res!693723 () Bool)

(declare-fun e!589065 () Bool)

(assert (=> d!125611 (=> res!693723 e!589065)))

(assert (=> d!125611 (= res!693723 (bvsge #b00000000000000000000000000000000 (size!32083 (_keys!11557 thiss!1427))))))

(assert (=> d!125611 (= (arrayNoDuplicates!0 (_keys!11557 thiss!1427) #b00000000000000000000000000000000 Nil!22077) e!589065)))

(declare-fun b!1040402 () Bool)

(declare-fun e!589067 () Bool)

(assert (=> b!1040402 (= e!589067 (contains!6072 Nil!22077 (select (arr!31551 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040403 () Bool)

(declare-fun e!589066 () Bool)

(assert (=> b!1040403 (= e!589066 e!589068)))

(assert (=> b!1040403 (= c!105438 (validKeyInArray!0 (select (arr!31551 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040404 () Bool)

(assert (=> b!1040404 (= e!589065 e!589066)))

(declare-fun res!693725 () Bool)

(assert (=> b!1040404 (=> (not res!693725) (not e!589066))))

(assert (=> b!1040404 (= res!693725 (not e!589067))))

(declare-fun res!693724 () Bool)

(assert (=> b!1040404 (=> (not res!693724) (not e!589067))))

(assert (=> b!1040404 (= res!693724 (validKeyInArray!0 (select (arr!31551 (_keys!11557 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125611 (not res!693723)) b!1040404))

(assert (= (and b!1040404 res!693724) b!1040402))

(assert (= (and b!1040404 res!693725) b!1040403))

(assert (= (and b!1040403 c!105438) b!1040401))

(assert (= (and b!1040403 (not c!105438)) b!1040400))

(assert (= (or b!1040401 b!1040400) bm!44054))

(assert (=> bm!44054 m!960085))

(declare-fun m!960105 () Bool)

(assert (=> bm!44054 m!960105))

(assert (=> b!1040402 m!960085))

(assert (=> b!1040402 m!960085))

(declare-fun m!960107 () Bool)

(assert (=> b!1040402 m!960107))

(assert (=> b!1040403 m!960085))

(assert (=> b!1040403 m!960085))

(assert (=> b!1040403 m!960087))

(assert (=> b!1040404 m!960085))

(assert (=> b!1040404 m!960085))

(assert (=> b!1040404 m!960087))

(assert (=> b!1040278 d!125611))

(declare-fun condMapEmpty!38677 () Bool)

(declare-fun mapDefault!38677 () ValueCell!11661)

(assert (=> mapNonEmpty!38671 (= condMapEmpty!38677 (= mapRest!38671 ((as const (Array (_ BitVec 32) ValueCell!11661)) mapDefault!38677)))))

(declare-fun e!589074 () Bool)

(declare-fun mapRes!38677 () Bool)

(assert (=> mapNonEmpty!38671 (= tp!74223 (and e!589074 mapRes!38677))))

(declare-fun b!1040411 () Bool)

(declare-fun e!589073 () Bool)

(assert (=> b!1040411 (= e!589073 tp_is_empty!24729)))

(declare-fun mapIsEmpty!38677 () Bool)

(assert (=> mapIsEmpty!38677 mapRes!38677))

(declare-fun mapNonEmpty!38677 () Bool)

(declare-fun tp!74232 () Bool)

(assert (=> mapNonEmpty!38677 (= mapRes!38677 (and tp!74232 e!589073))))

(declare-fun mapRest!38677 () (Array (_ BitVec 32) ValueCell!11661))

(declare-fun mapKey!38677 () (_ BitVec 32))

(declare-fun mapValue!38677 () ValueCell!11661)

(assert (=> mapNonEmpty!38677 (= mapRest!38671 (store mapRest!38677 mapKey!38677 mapValue!38677))))

(declare-fun b!1040412 () Bool)

(assert (=> b!1040412 (= e!589074 tp_is_empty!24729)))

(assert (= (and mapNonEmpty!38671 condMapEmpty!38677) mapIsEmpty!38677))

(assert (= (and mapNonEmpty!38671 (not condMapEmpty!38677)) mapNonEmpty!38677))

(assert (= (and mapNonEmpty!38677 ((_ is ValueCellFull!11661) mapValue!38677)) b!1040411))

(assert (= (and mapNonEmpty!38671 ((_ is ValueCellFull!11661) mapDefault!38677)) b!1040412))

(declare-fun m!960109 () Bool)

(assert (=> mapNonEmpty!38677 m!960109))

(check-sat (not d!125609) b_and!33559 (not b!1040398) (not b!1040364) (not b!1040363) (not b!1040338) (not b!1040365) (not b!1040335) (not b!1040326) (not b!1040336) (not b!1040404) (not b!1040403) (not b!1040347) (not d!125607) (not b!1040389) (not d!125601) (not b!1040348) (not b!1040368) tp_is_empty!24729 (not b!1040402) (not b!1040397) (not bm!44049) (not bm!44053) (not b!1040399) (not bm!44046) (not bm!44052) (not mapNonEmpty!38677) (not b!1040321) (not bm!44054) (not b!1040370) (not d!125595) (not d!125593) (not b_next!21009))
(check-sat b_and!33559 (not b_next!21009))
