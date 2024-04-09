; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91020 () Bool)

(assert start!91020)

(declare-fun b!1039263 () Bool)

(declare-fun b_free!20973 () Bool)

(declare-fun b_next!20973 () Bool)

(assert (=> b!1039263 (= b_free!20973 (not b_next!20973))))

(declare-fun tp!74096 () Bool)

(declare-fun b_and!33523 () Bool)

(assert (=> b!1039263 (= tp!74096 b_and!33523)))

(declare-fun b!1039258 () Bool)

(declare-fun res!693184 () Bool)

(declare-fun e!588226 () Bool)

(assert (=> b!1039258 (=> (not res!693184) (not e!588226))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039258 (= res!693184 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38599 () Bool)

(declare-fun mapRes!38599 () Bool)

(assert (=> mapIsEmpty!38599 mapRes!38599))

(declare-fun b!1039259 () Bool)

(declare-fun e!588229 () Bool)

(declare-datatypes ((V!37797 0))(
  ( (V!37798 (val!12397 Int)) )
))
(declare-datatypes ((ValueCell!11643 0))(
  ( (ValueCellFull!11643 (v!14985 V!37797)) (EmptyCell!11643) )
))
(declare-datatypes ((array!65494 0))(
  ( (array!65495 (arr!31515 (Array (_ BitVec 32) (_ BitVec 64))) (size!32047 (_ BitVec 32))) )
))
(declare-datatypes ((array!65496 0))(
  ( (array!65497 (arr!31516 (Array (_ BitVec 32) ValueCell!11643)) (size!32048 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5880 0))(
  ( (LongMapFixedSize!5881 (defaultEntry!6322 Int) (mask!30279 (_ BitVec 32)) (extraKeys!6050 (_ BitVec 32)) (zeroValue!6156 V!37797) (minValue!6156 V!37797) (_size!2995 (_ BitVec 32)) (_keys!11528 array!65494) (_values!6345 array!65496) (_vacant!2995 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5880)

(declare-datatypes ((List!22068 0))(
  ( (Nil!22065) (Cons!22064 (h!23268 (_ BitVec 64)) (t!31289 List!22068)) )
))
(declare-fun arrayNoDuplicates!0 (array!65494 (_ BitVec 32) List!22068) Bool)

(assert (=> b!1039259 (= e!588229 (arrayNoDuplicates!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 Nil!22065))))

(declare-fun b!1039260 () Bool)

(declare-fun res!693183 () Bool)

(assert (=> b!1039260 (=> res!693183 e!588229)))

(declare-datatypes ((SeekEntryResult!9782 0))(
  ( (MissingZero!9782 (index!41498 (_ BitVec 32))) (Found!9782 (index!41499 (_ BitVec 32))) (Intermediate!9782 (undefined!10594 Bool) (index!41500 (_ BitVec 32)) (x!92753 (_ BitVec 32))) (Undefined!9782) (MissingVacant!9782 (index!41501 (_ BitVec 32))) )
))
(declare-fun lt!458034 () SeekEntryResult!9782)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039260 (= res!693183 (not (validKeyInArray!0 (select (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034)))))))

(declare-fun mapNonEmpty!38599 () Bool)

(declare-fun tp!74097 () Bool)

(declare-fun e!588228 () Bool)

(assert (=> mapNonEmpty!38599 (= mapRes!38599 (and tp!74097 e!588228))))

(declare-fun mapValue!38599 () ValueCell!11643)

(declare-fun mapKey!38599 () (_ BitVec 32))

(declare-fun mapRest!38599 () (Array (_ BitVec 32) ValueCell!11643))

(assert (=> mapNonEmpty!38599 (= (arr!31516 (_values!6345 thiss!1427)) (store mapRest!38599 mapKey!38599 mapValue!38599))))

(declare-fun b!1039261 () Bool)

(declare-fun res!693188 () Bool)

(assert (=> b!1039261 (=> res!693188 e!588229)))

(assert (=> b!1039261 (= res!693188 (or (not (= (size!32047 (_keys!11528 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30279 thiss!1427)))) (bvslt (index!41499 lt!458034) #b00000000000000000000000000000000) (bvsge (index!41499 lt!458034) (size!32047 (_keys!11528 thiss!1427)))))))

(declare-fun res!693186 () Bool)

(assert (=> start!91020 (=> (not res!693186) (not e!588226))))

(declare-fun valid!2164 (LongMapFixedSize!5880) Bool)

(assert (=> start!91020 (= res!693186 (valid!2164 thiss!1427))))

(assert (=> start!91020 e!588226))

(declare-fun e!588230 () Bool)

(assert (=> start!91020 e!588230))

(assert (=> start!91020 true))

(declare-fun b!1039262 () Bool)

(declare-fun e!588224 () Bool)

(assert (=> b!1039262 (= e!588226 e!588224)))

(declare-fun res!693185 () Bool)

(assert (=> b!1039262 (=> (not res!693185) (not e!588224))))

(get-info :version)

(assert (=> b!1039262 (= res!693185 ((_ is Found!9782) lt!458034))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65494 (_ BitVec 32)) SeekEntryResult!9782)

(assert (=> b!1039262 (= lt!458034 (seekEntry!0 key!909 (_keys!11528 thiss!1427) (mask!30279 thiss!1427)))))

(declare-fun e!588231 () Bool)

(declare-fun tp_is_empty!24693 () Bool)

(declare-fun array_inv!24203 (array!65494) Bool)

(declare-fun array_inv!24204 (array!65496) Bool)

(assert (=> b!1039263 (= e!588230 (and tp!74096 tp_is_empty!24693 (array_inv!24203 (_keys!11528 thiss!1427)) (array_inv!24204 (_values!6345 thiss!1427)) e!588231))))

(declare-fun b!1039264 () Bool)

(assert (=> b!1039264 (= e!588228 tp_is_empty!24693)))

(declare-fun b!1039265 () Bool)

(assert (=> b!1039265 (= e!588224 (not e!588229))))

(declare-fun res!693187 () Bool)

(assert (=> b!1039265 (=> res!693187 e!588229)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1039265 (= res!693187 (not (validMask!0 (mask!30279 thiss!1427))))))

(declare-fun lt!458035 () array!65494)

(assert (=> b!1039265 (arrayNoDuplicates!0 lt!458035 #b00000000000000000000000000000000 Nil!22065)))

(declare-datatypes ((Unit!33986 0))(
  ( (Unit!33987) )
))
(declare-fun lt!458033 () Unit!33986)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22068) Unit!33986)

(assert (=> b!1039265 (= lt!458033 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11528 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41499 lt!458034) #b00000000000000000000000000000000 Nil!22065))))

(declare-fun arrayCountValidKeys!0 (array!65494 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039265 (= (arrayCountValidKeys!0 lt!458035 #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039265 (= lt!458035 (array!65495 (store (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32047 (_keys!11528 thiss!1427))))))

(declare-fun lt!458032 () Unit!33986)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65494 (_ BitVec 32) (_ BitVec 64)) Unit!33986)

(assert (=> b!1039265 (= lt!458032 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11528 thiss!1427) (index!41499 lt!458034) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1039266 () Bool)

(declare-fun e!588227 () Bool)

(assert (=> b!1039266 (= e!588227 tp_is_empty!24693)))

(declare-fun b!1039267 () Bool)

(assert (=> b!1039267 (= e!588231 (and e!588227 mapRes!38599))))

(declare-fun condMapEmpty!38599 () Bool)

(declare-fun mapDefault!38599 () ValueCell!11643)

(assert (=> b!1039267 (= condMapEmpty!38599 (= (arr!31516 (_values!6345 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11643)) mapDefault!38599)))))

(assert (= (and start!91020 res!693186) b!1039258))

(assert (= (and b!1039258 res!693184) b!1039262))

(assert (= (and b!1039262 res!693185) b!1039265))

(assert (= (and b!1039265 (not res!693187)) b!1039261))

(assert (= (and b!1039261 (not res!693188)) b!1039260))

(assert (= (and b!1039260 (not res!693183)) b!1039259))

(assert (= (and b!1039267 condMapEmpty!38599) mapIsEmpty!38599))

(assert (= (and b!1039267 (not condMapEmpty!38599)) mapNonEmpty!38599))

(assert (= (and mapNonEmpty!38599 ((_ is ValueCellFull!11643) mapValue!38599)) b!1039264))

(assert (= (and b!1039267 ((_ is ValueCellFull!11643) mapDefault!38599)) b!1039266))

(assert (= b!1039263 b!1039267))

(assert (= start!91020 b!1039263))

(declare-fun m!959135 () Bool)

(assert (=> b!1039259 m!959135))

(declare-fun m!959137 () Bool)

(assert (=> b!1039265 m!959137))

(declare-fun m!959139 () Bool)

(assert (=> b!1039265 m!959139))

(declare-fun m!959141 () Bool)

(assert (=> b!1039265 m!959141))

(declare-fun m!959143 () Bool)

(assert (=> b!1039265 m!959143))

(declare-fun m!959145 () Bool)

(assert (=> b!1039265 m!959145))

(declare-fun m!959147 () Bool)

(assert (=> b!1039265 m!959147))

(declare-fun m!959149 () Bool)

(assert (=> b!1039265 m!959149))

(declare-fun m!959151 () Bool)

(assert (=> b!1039260 m!959151))

(assert (=> b!1039260 m!959151))

(declare-fun m!959153 () Bool)

(assert (=> b!1039260 m!959153))

(declare-fun m!959155 () Bool)

(assert (=> b!1039262 m!959155))

(declare-fun m!959157 () Bool)

(assert (=> start!91020 m!959157))

(declare-fun m!959159 () Bool)

(assert (=> mapNonEmpty!38599 m!959159))

(declare-fun m!959161 () Bool)

(assert (=> b!1039263 m!959161))

(declare-fun m!959163 () Bool)

(assert (=> b!1039263 m!959163))

(check-sat (not b!1039265) (not mapNonEmpty!38599) (not b!1039262) (not b!1039263) (not b_next!20973) b_and!33523 tp_is_empty!24693 (not b!1039259) (not b!1039260) (not start!91020))
(check-sat b_and!33523 (not b_next!20973))
(get-model)

(declare-fun b!1039306 () Bool)

(declare-fun e!588260 () (_ BitVec 32))

(assert (=> b!1039306 (= e!588260 #b00000000000000000000000000000000)))

(declare-fun b!1039307 () Bool)

(declare-fun e!588261 () (_ BitVec 32))

(assert (=> b!1039307 (= e!588260 e!588261)))

(declare-fun c!105282 () Bool)

(assert (=> b!1039307 (= c!105282 (validKeyInArray!0 (select (arr!31515 lt!458035) #b00000000000000000000000000000000)))))

(declare-fun bm!43986 () Bool)

(declare-fun call!43989 () (_ BitVec 32))

(assert (=> bm!43986 (= call!43989 (arrayCountValidKeys!0 lt!458035 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32047 (_keys!11528 thiss!1427))))))

(declare-fun b!1039308 () Bool)

(assert (=> b!1039308 (= e!588261 call!43989)))

(declare-fun d!125435 () Bool)

(declare-fun lt!458050 () (_ BitVec 32))

(assert (=> d!125435 (and (bvsge lt!458050 #b00000000000000000000000000000000) (bvsle lt!458050 (bvsub (size!32047 lt!458035) #b00000000000000000000000000000000)))))

(assert (=> d!125435 (= lt!458050 e!588260)))

(declare-fun c!105281 () Bool)

(assert (=> d!125435 (= c!105281 (bvsge #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))))))

(assert (=> d!125435 (and (bvsle #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32047 (_keys!11528 thiss!1427)) (size!32047 lt!458035)))))

(assert (=> d!125435 (= (arrayCountValidKeys!0 lt!458035 #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) lt!458050)))

(declare-fun b!1039309 () Bool)

(assert (=> b!1039309 (= e!588261 (bvadd #b00000000000000000000000000000001 call!43989))))

(assert (= (and d!125435 c!105281) b!1039306))

(assert (= (and d!125435 (not c!105281)) b!1039307))

(assert (= (and b!1039307 c!105282) b!1039309))

(assert (= (and b!1039307 (not c!105282)) b!1039308))

(assert (= (or b!1039309 b!1039308) bm!43986))

(declare-fun m!959195 () Bool)

(assert (=> b!1039307 m!959195))

(assert (=> b!1039307 m!959195))

(declare-fun m!959197 () Bool)

(assert (=> b!1039307 m!959197))

(declare-fun m!959199 () Bool)

(assert (=> bm!43986 m!959199))

(assert (=> b!1039265 d!125435))

(declare-fun d!125437 () Bool)

(assert (=> d!125437 (= (validMask!0 (mask!30279 thiss!1427)) (and (or (= (mask!30279 thiss!1427) #b00000000000000000000000000000111) (= (mask!30279 thiss!1427) #b00000000000000000000000000001111) (= (mask!30279 thiss!1427) #b00000000000000000000000000011111) (= (mask!30279 thiss!1427) #b00000000000000000000000000111111) (= (mask!30279 thiss!1427) #b00000000000000000000000001111111) (= (mask!30279 thiss!1427) #b00000000000000000000000011111111) (= (mask!30279 thiss!1427) #b00000000000000000000000111111111) (= (mask!30279 thiss!1427) #b00000000000000000000001111111111) (= (mask!30279 thiss!1427) #b00000000000000000000011111111111) (= (mask!30279 thiss!1427) #b00000000000000000000111111111111) (= (mask!30279 thiss!1427) #b00000000000000000001111111111111) (= (mask!30279 thiss!1427) #b00000000000000000011111111111111) (= (mask!30279 thiss!1427) #b00000000000000000111111111111111) (= (mask!30279 thiss!1427) #b00000000000000001111111111111111) (= (mask!30279 thiss!1427) #b00000000000000011111111111111111) (= (mask!30279 thiss!1427) #b00000000000000111111111111111111) (= (mask!30279 thiss!1427) #b00000000000001111111111111111111) (= (mask!30279 thiss!1427) #b00000000000011111111111111111111) (= (mask!30279 thiss!1427) #b00000000000111111111111111111111) (= (mask!30279 thiss!1427) #b00000000001111111111111111111111) (= (mask!30279 thiss!1427) #b00000000011111111111111111111111) (= (mask!30279 thiss!1427) #b00000000111111111111111111111111) (= (mask!30279 thiss!1427) #b00000001111111111111111111111111) (= (mask!30279 thiss!1427) #b00000011111111111111111111111111) (= (mask!30279 thiss!1427) #b00000111111111111111111111111111) (= (mask!30279 thiss!1427) #b00001111111111111111111111111111) (= (mask!30279 thiss!1427) #b00011111111111111111111111111111) (= (mask!30279 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30279 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1039265 d!125437))

(declare-fun d!125439 () Bool)

(declare-fun e!588266 () Bool)

(assert (=> d!125439 e!588266))

(declare-fun res!693215 () Bool)

(assert (=> d!125439 (=> (not res!693215) (not e!588266))))

(assert (=> d!125439 (= res!693215 (and (bvsge (index!41499 lt!458034) #b00000000000000000000000000000000) (bvslt (index!41499 lt!458034) (size!32047 (_keys!11528 thiss!1427)))))))

(declare-fun lt!458053 () Unit!33986)

(declare-fun choose!82 (array!65494 (_ BitVec 32) (_ BitVec 64)) Unit!33986)

(assert (=> d!125439 (= lt!458053 (choose!82 (_keys!11528 thiss!1427) (index!41499 lt!458034) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588267 () Bool)

(assert (=> d!125439 e!588267))

(declare-fun res!693216 () Bool)

(assert (=> d!125439 (=> (not res!693216) (not e!588267))))

(assert (=> d!125439 (= res!693216 (and (bvsge (index!41499 lt!458034) #b00000000000000000000000000000000) (bvslt (index!41499 lt!458034) (size!32047 (_keys!11528 thiss!1427)))))))

(assert (=> d!125439 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11528 thiss!1427) (index!41499 lt!458034) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458053)))

(declare-fun b!1039320 () Bool)

(assert (=> b!1039320 (= e!588267 (bvslt (size!32047 (_keys!11528 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1039319 () Bool)

(declare-fun res!693218 () Bool)

(assert (=> b!1039319 (=> (not res!693218) (not e!588267))))

(assert (=> b!1039319 (= res!693218 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1039321 () Bool)

(assert (=> b!1039321 (= e!588266 (= (arrayCountValidKeys!0 (array!65495 (store (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32047 (_keys!11528 thiss!1427))) #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1039318 () Bool)

(declare-fun res!693217 () Bool)

(assert (=> b!1039318 (=> (not res!693217) (not e!588267))))

(assert (=> b!1039318 (= res!693217 (validKeyInArray!0 (select (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034))))))

(assert (= (and d!125439 res!693216) b!1039318))

(assert (= (and b!1039318 res!693217) b!1039319))

(assert (= (and b!1039319 res!693218) b!1039320))

(assert (= (and d!125439 res!693215) b!1039321))

(declare-fun m!959201 () Bool)

(assert (=> d!125439 m!959201))

(declare-fun m!959203 () Bool)

(assert (=> b!1039319 m!959203))

(assert (=> b!1039321 m!959147))

(declare-fun m!959205 () Bool)

(assert (=> b!1039321 m!959205))

(assert (=> b!1039321 m!959149))

(assert (=> b!1039318 m!959151))

(assert (=> b!1039318 m!959151))

(assert (=> b!1039318 m!959153))

(assert (=> b!1039265 d!125439))

(declare-fun b!1039332 () Bool)

(declare-fun e!588277 () Bool)

(declare-fun call!43992 () Bool)

(assert (=> b!1039332 (= e!588277 call!43992)))

(declare-fun b!1039333 () Bool)

(declare-fun e!588279 () Bool)

(declare-fun contains!6066 (List!22068 (_ BitVec 64)) Bool)

(assert (=> b!1039333 (= e!588279 (contains!6066 Nil!22065 (select (arr!31515 lt!458035) #b00000000000000000000000000000000)))))

(declare-fun d!125441 () Bool)

(declare-fun res!693226 () Bool)

(declare-fun e!588276 () Bool)

(assert (=> d!125441 (=> res!693226 e!588276)))

(assert (=> d!125441 (= res!693226 (bvsge #b00000000000000000000000000000000 (size!32047 lt!458035)))))

(assert (=> d!125441 (= (arrayNoDuplicates!0 lt!458035 #b00000000000000000000000000000000 Nil!22065) e!588276)))

(declare-fun b!1039334 () Bool)

(declare-fun e!588278 () Bool)

(assert (=> b!1039334 (= e!588278 e!588277)))

(declare-fun c!105285 () Bool)

(assert (=> b!1039334 (= c!105285 (validKeyInArray!0 (select (arr!31515 lt!458035) #b00000000000000000000000000000000)))))

(declare-fun bm!43989 () Bool)

(assert (=> bm!43989 (= call!43992 (arrayNoDuplicates!0 lt!458035 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105285 (Cons!22064 (select (arr!31515 lt!458035) #b00000000000000000000000000000000) Nil!22065) Nil!22065)))))

(declare-fun b!1039335 () Bool)

(assert (=> b!1039335 (= e!588277 call!43992)))

(declare-fun b!1039336 () Bool)

(assert (=> b!1039336 (= e!588276 e!588278)))

(declare-fun res!693227 () Bool)

(assert (=> b!1039336 (=> (not res!693227) (not e!588278))))

(assert (=> b!1039336 (= res!693227 (not e!588279))))

(declare-fun res!693225 () Bool)

(assert (=> b!1039336 (=> (not res!693225) (not e!588279))))

(assert (=> b!1039336 (= res!693225 (validKeyInArray!0 (select (arr!31515 lt!458035) #b00000000000000000000000000000000)))))

(assert (= (and d!125441 (not res!693226)) b!1039336))

(assert (= (and b!1039336 res!693225) b!1039333))

(assert (= (and b!1039336 res!693227) b!1039334))

(assert (= (and b!1039334 c!105285) b!1039335))

(assert (= (and b!1039334 (not c!105285)) b!1039332))

(assert (= (or b!1039335 b!1039332) bm!43989))

(assert (=> b!1039333 m!959195))

(assert (=> b!1039333 m!959195))

(declare-fun m!959207 () Bool)

(assert (=> b!1039333 m!959207))

(assert (=> b!1039334 m!959195))

(assert (=> b!1039334 m!959195))

(assert (=> b!1039334 m!959197))

(assert (=> bm!43989 m!959195))

(declare-fun m!959209 () Bool)

(assert (=> bm!43989 m!959209))

(assert (=> b!1039336 m!959195))

(assert (=> b!1039336 m!959195))

(assert (=> b!1039336 m!959197))

(assert (=> b!1039265 d!125441))

(declare-fun b!1039337 () Bool)

(declare-fun e!588280 () (_ BitVec 32))

(assert (=> b!1039337 (= e!588280 #b00000000000000000000000000000000)))

(declare-fun b!1039338 () Bool)

(declare-fun e!588281 () (_ BitVec 32))

(assert (=> b!1039338 (= e!588280 e!588281)))

(declare-fun c!105287 () Bool)

(assert (=> b!1039338 (= c!105287 (validKeyInArray!0 (select (arr!31515 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43990 () Bool)

(declare-fun call!43993 () (_ BitVec 32))

(assert (=> bm!43990 (= call!43993 (arrayCountValidKeys!0 (_keys!11528 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32047 (_keys!11528 thiss!1427))))))

(declare-fun b!1039339 () Bool)

(assert (=> b!1039339 (= e!588281 call!43993)))

(declare-fun d!125443 () Bool)

(declare-fun lt!458054 () (_ BitVec 32))

(assert (=> d!125443 (and (bvsge lt!458054 #b00000000000000000000000000000000) (bvsle lt!458054 (bvsub (size!32047 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125443 (= lt!458054 e!588280)))

(declare-fun c!105286 () Bool)

(assert (=> d!125443 (= c!105286 (bvsge #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))))))

(assert (=> d!125443 (and (bvsle #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32047 (_keys!11528 thiss!1427)) (size!32047 (_keys!11528 thiss!1427))))))

(assert (=> d!125443 (= (arrayCountValidKeys!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) lt!458054)))

(declare-fun b!1039340 () Bool)

(assert (=> b!1039340 (= e!588281 (bvadd #b00000000000000000000000000000001 call!43993))))

(assert (= (and d!125443 c!105286) b!1039337))

(assert (= (and d!125443 (not c!105286)) b!1039338))

(assert (= (and b!1039338 c!105287) b!1039340))

(assert (= (and b!1039338 (not c!105287)) b!1039339))

(assert (= (or b!1039340 b!1039339) bm!43990))

(declare-fun m!959211 () Bool)

(assert (=> b!1039338 m!959211))

(assert (=> b!1039338 m!959211))

(declare-fun m!959213 () Bool)

(assert (=> b!1039338 m!959213))

(declare-fun m!959215 () Bool)

(assert (=> bm!43990 m!959215))

(assert (=> b!1039265 d!125443))

(declare-fun d!125445 () Bool)

(declare-fun e!588284 () Bool)

(assert (=> d!125445 e!588284))

(declare-fun res!693230 () Bool)

(assert (=> d!125445 (=> (not res!693230) (not e!588284))))

(assert (=> d!125445 (= res!693230 (and (bvsge (index!41499 lt!458034) #b00000000000000000000000000000000) (bvslt (index!41499 lt!458034) (size!32047 (_keys!11528 thiss!1427)))))))

(declare-fun lt!458057 () Unit!33986)

(declare-fun choose!53 (array!65494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22068) Unit!33986)

(assert (=> d!125445 (= lt!458057 (choose!53 (_keys!11528 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41499 lt!458034) #b00000000000000000000000000000000 Nil!22065))))

(assert (=> d!125445 (bvslt (size!32047 (_keys!11528 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125445 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11528 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41499 lt!458034) #b00000000000000000000000000000000 Nil!22065) lt!458057)))

(declare-fun b!1039343 () Bool)

(assert (=> b!1039343 (= e!588284 (arrayNoDuplicates!0 (array!65495 (store (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32047 (_keys!11528 thiss!1427))) #b00000000000000000000000000000000 Nil!22065))))

(assert (= (and d!125445 res!693230) b!1039343))

(declare-fun m!959217 () Bool)

(assert (=> d!125445 m!959217))

(assert (=> b!1039343 m!959147))

(declare-fun m!959219 () Bool)

(assert (=> b!1039343 m!959219))

(assert (=> b!1039265 d!125445))

(declare-fun d!125447 () Bool)

(assert (=> d!125447 (= (validKeyInArray!0 (select (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034))) (and (not (= (select (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458034)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1039260 d!125447))

(declare-fun b!1039356 () Bool)

(declare-fun e!588291 () SeekEntryResult!9782)

(declare-fun lt!458069 () SeekEntryResult!9782)

(assert (=> b!1039356 (= e!588291 (MissingZero!9782 (index!41500 lt!458069)))))

(declare-fun b!1039357 () Bool)

(declare-fun e!588293 () SeekEntryResult!9782)

(assert (=> b!1039357 (= e!588293 (Found!9782 (index!41500 lt!458069)))))

(declare-fun b!1039358 () Bool)

(declare-fun e!588292 () SeekEntryResult!9782)

(assert (=> b!1039358 (= e!588292 Undefined!9782)))

(declare-fun d!125449 () Bool)

(declare-fun lt!458066 () SeekEntryResult!9782)

(assert (=> d!125449 (and (or ((_ is MissingVacant!9782) lt!458066) (not ((_ is Found!9782) lt!458066)) (and (bvsge (index!41499 lt!458066) #b00000000000000000000000000000000) (bvslt (index!41499 lt!458066) (size!32047 (_keys!11528 thiss!1427))))) (not ((_ is MissingVacant!9782) lt!458066)) (or (not ((_ is Found!9782) lt!458066)) (= (select (arr!31515 (_keys!11528 thiss!1427)) (index!41499 lt!458066)) key!909)))))

(assert (=> d!125449 (= lt!458066 e!588292)))

(declare-fun c!105296 () Bool)

(assert (=> d!125449 (= c!105296 (and ((_ is Intermediate!9782) lt!458069) (undefined!10594 lt!458069)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65494 (_ BitVec 32)) SeekEntryResult!9782)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125449 (= lt!458069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30279 thiss!1427)) key!909 (_keys!11528 thiss!1427) (mask!30279 thiss!1427)))))

(assert (=> d!125449 (validMask!0 (mask!30279 thiss!1427))))

(assert (=> d!125449 (= (seekEntry!0 key!909 (_keys!11528 thiss!1427) (mask!30279 thiss!1427)) lt!458066)))

(declare-fun b!1039359 () Bool)

(declare-fun c!105295 () Bool)

(declare-fun lt!458068 () (_ BitVec 64))

(assert (=> b!1039359 (= c!105295 (= lt!458068 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1039359 (= e!588293 e!588291)))

(declare-fun b!1039360 () Bool)

(assert (=> b!1039360 (= e!588292 e!588293)))

(assert (=> b!1039360 (= lt!458068 (select (arr!31515 (_keys!11528 thiss!1427)) (index!41500 lt!458069)))))

(declare-fun c!105294 () Bool)

(assert (=> b!1039360 (= c!105294 (= lt!458068 key!909))))

(declare-fun b!1039361 () Bool)

(declare-fun lt!458067 () SeekEntryResult!9782)

(assert (=> b!1039361 (= e!588291 (ite ((_ is MissingVacant!9782) lt!458067) (MissingZero!9782 (index!41501 lt!458067)) lt!458067))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65494 (_ BitVec 32)) SeekEntryResult!9782)

(assert (=> b!1039361 (= lt!458067 (seekKeyOrZeroReturnVacant!0 (x!92753 lt!458069) (index!41500 lt!458069) (index!41500 lt!458069) key!909 (_keys!11528 thiss!1427) (mask!30279 thiss!1427)))))

(assert (= (and d!125449 c!105296) b!1039358))

(assert (= (and d!125449 (not c!105296)) b!1039360))

(assert (= (and b!1039360 c!105294) b!1039357))

(assert (= (and b!1039360 (not c!105294)) b!1039359))

(assert (= (and b!1039359 c!105295) b!1039356))

(assert (= (and b!1039359 (not c!105295)) b!1039361))

(declare-fun m!959221 () Bool)

(assert (=> d!125449 m!959221))

(declare-fun m!959223 () Bool)

(assert (=> d!125449 m!959223))

(assert (=> d!125449 m!959223))

(declare-fun m!959225 () Bool)

(assert (=> d!125449 m!959225))

(assert (=> d!125449 m!959137))

(declare-fun m!959227 () Bool)

(assert (=> b!1039360 m!959227))

(declare-fun m!959229 () Bool)

(assert (=> b!1039361 m!959229))

(assert (=> b!1039262 d!125449))

(declare-fun d!125451 () Bool)

(assert (=> d!125451 (= (array_inv!24203 (_keys!11528 thiss!1427)) (bvsge (size!32047 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039263 d!125451))

(declare-fun d!125453 () Bool)

(assert (=> d!125453 (= (array_inv!24204 (_values!6345 thiss!1427)) (bvsge (size!32048 (_values!6345 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039263 d!125453))

(declare-fun d!125455 () Bool)

(declare-fun res!693237 () Bool)

(declare-fun e!588296 () Bool)

(assert (=> d!125455 (=> (not res!693237) (not e!588296))))

(declare-fun simpleValid!426 (LongMapFixedSize!5880) Bool)

(assert (=> d!125455 (= res!693237 (simpleValid!426 thiss!1427))))

(assert (=> d!125455 (= (valid!2164 thiss!1427) e!588296)))

(declare-fun b!1039368 () Bool)

(declare-fun res!693238 () Bool)

(assert (=> b!1039368 (=> (not res!693238) (not e!588296))))

(assert (=> b!1039368 (= res!693238 (= (arrayCountValidKeys!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))) (_size!2995 thiss!1427)))))

(declare-fun b!1039369 () Bool)

(declare-fun res!693239 () Bool)

(assert (=> b!1039369 (=> (not res!693239) (not e!588296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65494 (_ BitVec 32)) Bool)

(assert (=> b!1039369 (= res!693239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11528 thiss!1427) (mask!30279 thiss!1427)))))

(declare-fun b!1039370 () Bool)

(assert (=> b!1039370 (= e!588296 (arrayNoDuplicates!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 Nil!22065))))

(assert (= (and d!125455 res!693237) b!1039368))

(assert (= (and b!1039368 res!693238) b!1039369))

(assert (= (and b!1039369 res!693239) b!1039370))

(declare-fun m!959231 () Bool)

(assert (=> d!125455 m!959231))

(assert (=> b!1039368 m!959149))

(declare-fun m!959233 () Bool)

(assert (=> b!1039369 m!959233))

(assert (=> b!1039370 m!959135))

(assert (=> start!91020 d!125455))

(declare-fun b!1039371 () Bool)

(declare-fun e!588298 () Bool)

(declare-fun call!43994 () Bool)

(assert (=> b!1039371 (= e!588298 call!43994)))

(declare-fun b!1039372 () Bool)

(declare-fun e!588300 () Bool)

(assert (=> b!1039372 (= e!588300 (contains!6066 Nil!22065 (select (arr!31515 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125457 () Bool)

(declare-fun res!693241 () Bool)

(declare-fun e!588297 () Bool)

(assert (=> d!125457 (=> res!693241 e!588297)))

(assert (=> d!125457 (= res!693241 (bvsge #b00000000000000000000000000000000 (size!32047 (_keys!11528 thiss!1427))))))

(assert (=> d!125457 (= (arrayNoDuplicates!0 (_keys!11528 thiss!1427) #b00000000000000000000000000000000 Nil!22065) e!588297)))

(declare-fun b!1039373 () Bool)

(declare-fun e!588299 () Bool)

(assert (=> b!1039373 (= e!588299 e!588298)))

(declare-fun c!105297 () Bool)

(assert (=> b!1039373 (= c!105297 (validKeyInArray!0 (select (arr!31515 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43991 () Bool)

(assert (=> bm!43991 (= call!43994 (arrayNoDuplicates!0 (_keys!11528 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105297 (Cons!22064 (select (arr!31515 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000) Nil!22065) Nil!22065)))))

(declare-fun b!1039374 () Bool)

(assert (=> b!1039374 (= e!588298 call!43994)))

(declare-fun b!1039375 () Bool)

(assert (=> b!1039375 (= e!588297 e!588299)))

(declare-fun res!693242 () Bool)

(assert (=> b!1039375 (=> (not res!693242) (not e!588299))))

(assert (=> b!1039375 (= res!693242 (not e!588300))))

(declare-fun res!693240 () Bool)

(assert (=> b!1039375 (=> (not res!693240) (not e!588300))))

(assert (=> b!1039375 (= res!693240 (validKeyInArray!0 (select (arr!31515 (_keys!11528 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125457 (not res!693241)) b!1039375))

(assert (= (and b!1039375 res!693240) b!1039372))

(assert (= (and b!1039375 res!693242) b!1039373))

(assert (= (and b!1039373 c!105297) b!1039374))

(assert (= (and b!1039373 (not c!105297)) b!1039371))

(assert (= (or b!1039374 b!1039371) bm!43991))

(assert (=> b!1039372 m!959211))

(assert (=> b!1039372 m!959211))

(declare-fun m!959235 () Bool)

(assert (=> b!1039372 m!959235))

(assert (=> b!1039373 m!959211))

(assert (=> b!1039373 m!959211))

(assert (=> b!1039373 m!959213))

(assert (=> bm!43991 m!959211))

(declare-fun m!959237 () Bool)

(assert (=> bm!43991 m!959237))

(assert (=> b!1039375 m!959211))

(assert (=> b!1039375 m!959211))

(assert (=> b!1039375 m!959213))

(assert (=> b!1039259 d!125457))

(declare-fun mapIsEmpty!38605 () Bool)

(declare-fun mapRes!38605 () Bool)

(assert (=> mapIsEmpty!38605 mapRes!38605))

(declare-fun condMapEmpty!38605 () Bool)

(declare-fun mapDefault!38605 () ValueCell!11643)

(assert (=> mapNonEmpty!38599 (= condMapEmpty!38605 (= mapRest!38599 ((as const (Array (_ BitVec 32) ValueCell!11643)) mapDefault!38605)))))

(declare-fun e!588305 () Bool)

(assert (=> mapNonEmpty!38599 (= tp!74097 (and e!588305 mapRes!38605))))

(declare-fun mapNonEmpty!38605 () Bool)

(declare-fun tp!74106 () Bool)

(declare-fun e!588306 () Bool)

(assert (=> mapNonEmpty!38605 (= mapRes!38605 (and tp!74106 e!588306))))

(declare-fun mapRest!38605 () (Array (_ BitVec 32) ValueCell!11643))

(declare-fun mapKey!38605 () (_ BitVec 32))

(declare-fun mapValue!38605 () ValueCell!11643)

(assert (=> mapNonEmpty!38605 (= mapRest!38599 (store mapRest!38605 mapKey!38605 mapValue!38605))))

(declare-fun b!1039382 () Bool)

(assert (=> b!1039382 (= e!588306 tp_is_empty!24693)))

(declare-fun b!1039383 () Bool)

(assert (=> b!1039383 (= e!588305 tp_is_empty!24693)))

(assert (= (and mapNonEmpty!38599 condMapEmpty!38605) mapIsEmpty!38605))

(assert (= (and mapNonEmpty!38599 (not condMapEmpty!38605)) mapNonEmpty!38605))

(assert (= (and mapNonEmpty!38605 ((_ is ValueCellFull!11643) mapValue!38605)) b!1039382))

(assert (= (and mapNonEmpty!38599 ((_ is ValueCellFull!11643) mapDefault!38605)) b!1039383))

(declare-fun m!959239 () Bool)

(assert (=> mapNonEmpty!38605 m!959239))

(check-sat (not b!1039368) (not b!1039370) (not b!1039334) (not b!1039369) (not b!1039373) (not b!1039336) (not bm!43986) (not mapNonEmpty!38605) b_and!33523 (not bm!43990) (not b!1039321) tp_is_empty!24693 (not b_next!20973) (not d!125445) (not d!125455) (not d!125439) (not b!1039318) (not b!1039338) (not b!1039319) (not b!1039333) (not b!1039361) (not d!125449) (not b!1039372) (not bm!43989) (not b!1039343) (not b!1039375) (not bm!43991) (not b!1039307))
(check-sat b_and!33523 (not b_next!20973))
