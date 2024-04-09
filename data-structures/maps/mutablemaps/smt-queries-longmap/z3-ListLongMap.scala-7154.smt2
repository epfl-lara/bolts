; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91046 () Bool)

(assert start!91046)

(declare-fun b!1039443 () Bool)

(declare-fun b_free!20979 () Bool)

(declare-fun b_next!20979 () Bool)

(assert (=> b!1039443 (= b_free!20979 (not b_next!20979))))

(declare-fun tp!74117 () Bool)

(declare-fun b_and!33529 () Bool)

(assert (=> b!1039443 (= tp!74117 b_and!33529)))

(declare-fun b!1039439 () Bool)

(declare-fun e!588351 () Bool)

(declare-fun tp_is_empty!24699 () Bool)

(assert (=> b!1039439 (= e!588351 tp_is_empty!24699)))

(declare-fun res!693283 () Bool)

(declare-fun e!588348 () Bool)

(assert (=> start!91046 (=> (not res!693283) (not e!588348))))

(declare-datatypes ((V!37805 0))(
  ( (V!37806 (val!12400 Int)) )
))
(declare-datatypes ((ValueCell!11646 0))(
  ( (ValueCellFull!11646 (v!14988 V!37805)) (EmptyCell!11646) )
))
(declare-datatypes ((array!65508 0))(
  ( (array!65509 (arr!31521 (Array (_ BitVec 32) (_ BitVec 64))) (size!32053 (_ BitVec 32))) )
))
(declare-datatypes ((array!65510 0))(
  ( (array!65511 (arr!31522 (Array (_ BitVec 32) ValueCell!11646)) (size!32054 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5886 0))(
  ( (LongMapFixedSize!5887 (defaultEntry!6325 Int) (mask!30286 (_ BitVec 32)) (extraKeys!6053 (_ BitVec 32)) (zeroValue!6159 V!37805) (minValue!6159 V!37805) (_size!2998 (_ BitVec 32)) (_keys!11532 array!65508) (_values!6348 array!65510) (_vacant!2998 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5886)

(declare-fun valid!2165 (LongMapFixedSize!5886) Bool)

(assert (=> start!91046 (= res!693283 (valid!2165 thiss!1427))))

(assert (=> start!91046 e!588348))

(declare-fun e!588350 () Bool)

(assert (=> start!91046 e!588350))

(assert (=> start!91046 true))

(declare-fun b!1039440 () Bool)

(declare-fun res!693284 () Bool)

(declare-fun e!588354 () Bool)

(assert (=> b!1039440 (=> res!693284 e!588354)))

(declare-datatypes ((List!22070 0))(
  ( (Nil!22067) (Cons!22066 (h!23270 (_ BitVec 64)) (t!31291 List!22070)) )
))
(declare-fun arrayNoDuplicates!0 (array!65508 (_ BitVec 32) List!22070) Bool)

(assert (=> b!1039440 (= res!693284 (not (arrayNoDuplicates!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 Nil!22067)))))

(declare-fun b!1039441 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65508 (_ BitVec 32)) Bool)

(assert (=> b!1039441 (= e!588354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)))))

(declare-fun b!1039442 () Bool)

(declare-fun e!588349 () Bool)

(assert (=> b!1039442 (= e!588348 e!588349)))

(declare-fun res!693280 () Bool)

(assert (=> b!1039442 (=> (not res!693280) (not e!588349))))

(declare-datatypes ((SeekEntryResult!9784 0))(
  ( (MissingZero!9784 (index!41506 (_ BitVec 32))) (Found!9784 (index!41507 (_ BitVec 32))) (Intermediate!9784 (undefined!10596 Bool) (index!41508 (_ BitVec 32)) (x!92771 (_ BitVec 32))) (Undefined!9784) (MissingVacant!9784 (index!41509 (_ BitVec 32))) )
))
(declare-fun lt!458093 () SeekEntryResult!9784)

(get-info :version)

(assert (=> b!1039442 (= res!693280 ((_ is Found!9784) lt!458093))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65508 (_ BitVec 32)) SeekEntryResult!9784)

(assert (=> b!1039442 (= lt!458093 (seekEntry!0 key!909 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)))))

(declare-fun e!588353 () Bool)

(declare-fun array_inv!24205 (array!65508) Bool)

(declare-fun array_inv!24206 (array!65510) Bool)

(assert (=> b!1039443 (= e!588350 (and tp!74117 tp_is_empty!24699 (array_inv!24205 (_keys!11532 thiss!1427)) (array_inv!24206 (_values!6348 thiss!1427)) e!588353))))

(declare-fun b!1039444 () Bool)

(assert (=> b!1039444 (= e!588349 (not e!588354))))

(declare-fun res!693278 () Bool)

(assert (=> b!1039444 (=> res!693278 e!588354)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1039444 (= res!693278 (not (validMask!0 (mask!30286 thiss!1427))))))

(declare-fun lt!458090 () array!65508)

(assert (=> b!1039444 (arrayNoDuplicates!0 lt!458090 #b00000000000000000000000000000000 Nil!22067)))

(declare-datatypes ((Unit!33988 0))(
  ( (Unit!33989) )
))
(declare-fun lt!458091 () Unit!33988)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22070) Unit!33988)

(assert (=> b!1039444 (= lt!458091 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11532 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41507 lt!458093) #b00000000000000000000000000000000 Nil!22067))))

(declare-fun arrayCountValidKeys!0 (array!65508 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039444 (= (arrayCountValidKeys!0 lt!458090 #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039444 (= lt!458090 (array!65509 (store (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32053 (_keys!11532 thiss!1427))))))

(declare-fun lt!458092 () Unit!33988)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65508 (_ BitVec 32) (_ BitVec 64)) Unit!33988)

(assert (=> b!1039444 (= lt!458092 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11532 thiss!1427) (index!41507 lt!458093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1039445 () Bool)

(declare-fun mapRes!38611 () Bool)

(assert (=> b!1039445 (= e!588353 (and e!588351 mapRes!38611))))

(declare-fun condMapEmpty!38611 () Bool)

(declare-fun mapDefault!38611 () ValueCell!11646)

(assert (=> b!1039445 (= condMapEmpty!38611 (= (arr!31522 (_values!6348 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11646)) mapDefault!38611)))))

(declare-fun b!1039446 () Bool)

(declare-fun res!693282 () Bool)

(assert (=> b!1039446 (=> res!693282 e!588354)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039446 (= res!693282 (not (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093)))))))

(declare-fun b!1039447 () Bool)

(declare-fun res!693281 () Bool)

(assert (=> b!1039447 (=> (not res!693281) (not e!588348))))

(assert (=> b!1039447 (= res!693281 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039448 () Bool)

(declare-fun res!693279 () Bool)

(assert (=> b!1039448 (=> res!693279 e!588354)))

(assert (=> b!1039448 (= res!693279 (or (not (= (size!32053 (_keys!11532 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30286 thiss!1427)))) (bvslt (index!41507 lt!458093) #b00000000000000000000000000000000) (bvsge (index!41507 lt!458093) (size!32053 (_keys!11532 thiss!1427)))))))

(declare-fun mapNonEmpty!38611 () Bool)

(declare-fun tp!74118 () Bool)

(declare-fun e!588347 () Bool)

(assert (=> mapNonEmpty!38611 (= mapRes!38611 (and tp!74118 e!588347))))

(declare-fun mapRest!38611 () (Array (_ BitVec 32) ValueCell!11646))

(declare-fun mapValue!38611 () ValueCell!11646)

(declare-fun mapKey!38611 () (_ BitVec 32))

(assert (=> mapNonEmpty!38611 (= (arr!31522 (_values!6348 thiss!1427)) (store mapRest!38611 mapKey!38611 mapValue!38611))))

(declare-fun mapIsEmpty!38611 () Bool)

(assert (=> mapIsEmpty!38611 mapRes!38611))

(declare-fun b!1039449 () Bool)

(assert (=> b!1039449 (= e!588347 tp_is_empty!24699)))

(assert (= (and start!91046 res!693283) b!1039447))

(assert (= (and b!1039447 res!693281) b!1039442))

(assert (= (and b!1039442 res!693280) b!1039444))

(assert (= (and b!1039444 (not res!693278)) b!1039448))

(assert (= (and b!1039448 (not res!693279)) b!1039446))

(assert (= (and b!1039446 (not res!693282)) b!1039440))

(assert (= (and b!1039440 (not res!693284)) b!1039441))

(assert (= (and b!1039445 condMapEmpty!38611) mapIsEmpty!38611))

(assert (= (and b!1039445 (not condMapEmpty!38611)) mapNonEmpty!38611))

(assert (= (and mapNonEmpty!38611 ((_ is ValueCellFull!11646) mapValue!38611)) b!1039449))

(assert (= (and b!1039445 ((_ is ValueCellFull!11646) mapDefault!38611)) b!1039439))

(assert (= b!1039443 b!1039445))

(assert (= start!91046 b!1039443))

(declare-fun m!959273 () Bool)

(assert (=> mapNonEmpty!38611 m!959273))

(declare-fun m!959275 () Bool)

(assert (=> b!1039446 m!959275))

(assert (=> b!1039446 m!959275))

(declare-fun m!959277 () Bool)

(assert (=> b!1039446 m!959277))

(declare-fun m!959279 () Bool)

(assert (=> b!1039444 m!959279))

(declare-fun m!959281 () Bool)

(assert (=> b!1039444 m!959281))

(declare-fun m!959283 () Bool)

(assert (=> b!1039444 m!959283))

(declare-fun m!959285 () Bool)

(assert (=> b!1039444 m!959285))

(declare-fun m!959287 () Bool)

(assert (=> b!1039444 m!959287))

(declare-fun m!959289 () Bool)

(assert (=> b!1039444 m!959289))

(declare-fun m!959291 () Bool)

(assert (=> b!1039444 m!959291))

(declare-fun m!959293 () Bool)

(assert (=> b!1039443 m!959293))

(declare-fun m!959295 () Bool)

(assert (=> b!1039443 m!959295))

(declare-fun m!959297 () Bool)

(assert (=> start!91046 m!959297))

(declare-fun m!959299 () Bool)

(assert (=> b!1039442 m!959299))

(declare-fun m!959301 () Bool)

(assert (=> b!1039440 m!959301))

(declare-fun m!959303 () Bool)

(assert (=> b!1039441 m!959303))

(check-sat (not b_next!20979) (not b!1039443) (not mapNonEmpty!38611) tp_is_empty!24699 (not start!91046) (not b!1039442) (not b!1039444) (not b!1039440) (not b!1039446) (not b!1039441) b_and!33529)
(check-sat b_and!33529 (not b_next!20979))
(get-model)

(declare-fun b!1039495 () Bool)

(declare-fun e!588386 () SeekEntryResult!9784)

(declare-fun lt!458115 () SeekEntryResult!9784)

(assert (=> b!1039495 (= e!588386 (Found!9784 (index!41508 lt!458115)))))

(declare-fun d!125461 () Bool)

(declare-fun lt!458116 () SeekEntryResult!9784)

(assert (=> d!125461 (and (or ((_ is MissingVacant!9784) lt!458116) (not ((_ is Found!9784) lt!458116)) (and (bvsge (index!41507 lt!458116) #b00000000000000000000000000000000) (bvslt (index!41507 lt!458116) (size!32053 (_keys!11532 thiss!1427))))) (not ((_ is MissingVacant!9784) lt!458116)) (or (not ((_ is Found!9784) lt!458116)) (= (select (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458116)) key!909)))))

(declare-fun e!588385 () SeekEntryResult!9784)

(assert (=> d!125461 (= lt!458116 e!588385)))

(declare-fun c!105304 () Bool)

(assert (=> d!125461 (= c!105304 (and ((_ is Intermediate!9784) lt!458115) (undefined!10596 lt!458115)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65508 (_ BitVec 32)) SeekEntryResult!9784)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125461 (= lt!458115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30286 thiss!1427)) key!909 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)))))

(assert (=> d!125461 (validMask!0 (mask!30286 thiss!1427))))

(assert (=> d!125461 (= (seekEntry!0 key!909 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)) lt!458116)))

(declare-fun b!1039496 () Bool)

(assert (=> b!1039496 (= e!588385 Undefined!9784)))

(declare-fun b!1039497 () Bool)

(declare-fun c!105306 () Bool)

(declare-fun lt!458114 () (_ BitVec 64))

(assert (=> b!1039497 (= c!105306 (= lt!458114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588387 () SeekEntryResult!9784)

(assert (=> b!1039497 (= e!588386 e!588387)))

(declare-fun b!1039498 () Bool)

(assert (=> b!1039498 (= e!588387 (MissingZero!9784 (index!41508 lt!458115)))))

(declare-fun b!1039499 () Bool)

(assert (=> b!1039499 (= e!588385 e!588386)))

(assert (=> b!1039499 (= lt!458114 (select (arr!31521 (_keys!11532 thiss!1427)) (index!41508 lt!458115)))))

(declare-fun c!105305 () Bool)

(assert (=> b!1039499 (= c!105305 (= lt!458114 key!909))))

(declare-fun b!1039500 () Bool)

(declare-fun lt!458117 () SeekEntryResult!9784)

(assert (=> b!1039500 (= e!588387 (ite ((_ is MissingVacant!9784) lt!458117) (MissingZero!9784 (index!41509 lt!458117)) lt!458117))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65508 (_ BitVec 32)) SeekEntryResult!9784)

(assert (=> b!1039500 (= lt!458117 (seekKeyOrZeroReturnVacant!0 (x!92771 lt!458115) (index!41508 lt!458115) (index!41508 lt!458115) key!909 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)))))

(assert (= (and d!125461 c!105304) b!1039496))

(assert (= (and d!125461 (not c!105304)) b!1039499))

(assert (= (and b!1039499 c!105305) b!1039495))

(assert (= (and b!1039499 (not c!105305)) b!1039497))

(assert (= (and b!1039497 c!105306) b!1039498))

(assert (= (and b!1039497 (not c!105306)) b!1039500))

(declare-fun m!959337 () Bool)

(assert (=> d!125461 m!959337))

(declare-fun m!959339 () Bool)

(assert (=> d!125461 m!959339))

(assert (=> d!125461 m!959339))

(declare-fun m!959341 () Bool)

(assert (=> d!125461 m!959341))

(assert (=> d!125461 m!959283))

(declare-fun m!959343 () Bool)

(assert (=> b!1039499 m!959343))

(declare-fun m!959345 () Bool)

(assert (=> b!1039500 m!959345))

(assert (=> b!1039442 d!125461))

(declare-fun d!125463 () Bool)

(assert (=> d!125463 (= (array_inv!24205 (_keys!11532 thiss!1427)) (bvsge (size!32053 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039443 d!125463))

(declare-fun d!125465 () Bool)

(assert (=> d!125465 (= (array_inv!24206 (_values!6348 thiss!1427)) (bvsge (size!32054 (_values!6348 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039443 d!125465))

(declare-fun d!125467 () Bool)

(declare-fun e!588390 () Bool)

(assert (=> d!125467 e!588390))

(declare-fun res!693308 () Bool)

(assert (=> d!125467 (=> (not res!693308) (not e!588390))))

(assert (=> d!125467 (= res!693308 (and (bvsge (index!41507 lt!458093) #b00000000000000000000000000000000) (bvslt (index!41507 lt!458093) (size!32053 (_keys!11532 thiss!1427)))))))

(declare-fun lt!458120 () Unit!33988)

(declare-fun choose!53 (array!65508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22070) Unit!33988)

(assert (=> d!125467 (= lt!458120 (choose!53 (_keys!11532 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41507 lt!458093) #b00000000000000000000000000000000 Nil!22067))))

(assert (=> d!125467 (bvslt (size!32053 (_keys!11532 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125467 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11532 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41507 lt!458093) #b00000000000000000000000000000000 Nil!22067) lt!458120)))

(declare-fun b!1039503 () Bool)

(assert (=> b!1039503 (= e!588390 (arrayNoDuplicates!0 (array!65509 (store (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32053 (_keys!11532 thiss!1427))) #b00000000000000000000000000000000 Nil!22067))))

(assert (= (and d!125467 res!693308) b!1039503))

(declare-fun m!959347 () Bool)

(assert (=> d!125467 m!959347))

(assert (=> b!1039503 m!959291))

(declare-fun m!959349 () Bool)

(assert (=> b!1039503 m!959349))

(assert (=> b!1039444 d!125467))

(declare-fun b!1039514 () Bool)

(declare-fun e!588401 () Bool)

(declare-fun contains!6067 (List!22070 (_ BitVec 64)) Bool)

(assert (=> b!1039514 (= e!588401 (contains!6067 Nil!22067 (select (arr!31521 lt!458090) #b00000000000000000000000000000000)))))

(declare-fun b!1039515 () Bool)

(declare-fun e!588399 () Bool)

(declare-fun call!43997 () Bool)

(assert (=> b!1039515 (= e!588399 call!43997)))

(declare-fun d!125469 () Bool)

(declare-fun res!693316 () Bool)

(declare-fun e!588400 () Bool)

(assert (=> d!125469 (=> res!693316 e!588400)))

(assert (=> d!125469 (= res!693316 (bvsge #b00000000000000000000000000000000 (size!32053 lt!458090)))))

(assert (=> d!125469 (= (arrayNoDuplicates!0 lt!458090 #b00000000000000000000000000000000 Nil!22067) e!588400)))

(declare-fun b!1039516 () Bool)

(declare-fun e!588402 () Bool)

(assert (=> b!1039516 (= e!588402 e!588399)))

(declare-fun c!105309 () Bool)

(assert (=> b!1039516 (= c!105309 (validKeyInArray!0 (select (arr!31521 lt!458090) #b00000000000000000000000000000000)))))

(declare-fun b!1039517 () Bool)

(assert (=> b!1039517 (= e!588399 call!43997)))

(declare-fun b!1039518 () Bool)

(assert (=> b!1039518 (= e!588400 e!588402)))

(declare-fun res!693315 () Bool)

(assert (=> b!1039518 (=> (not res!693315) (not e!588402))))

(assert (=> b!1039518 (= res!693315 (not e!588401))))

(declare-fun res!693317 () Bool)

(assert (=> b!1039518 (=> (not res!693317) (not e!588401))))

(assert (=> b!1039518 (= res!693317 (validKeyInArray!0 (select (arr!31521 lt!458090) #b00000000000000000000000000000000)))))

(declare-fun bm!43994 () Bool)

(assert (=> bm!43994 (= call!43997 (arrayNoDuplicates!0 lt!458090 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105309 (Cons!22066 (select (arr!31521 lt!458090) #b00000000000000000000000000000000) Nil!22067) Nil!22067)))))

(assert (= (and d!125469 (not res!693316)) b!1039518))

(assert (= (and b!1039518 res!693317) b!1039514))

(assert (= (and b!1039518 res!693315) b!1039516))

(assert (= (and b!1039516 c!105309) b!1039515))

(assert (= (and b!1039516 (not c!105309)) b!1039517))

(assert (= (or b!1039515 b!1039517) bm!43994))

(declare-fun m!959351 () Bool)

(assert (=> b!1039514 m!959351))

(assert (=> b!1039514 m!959351))

(declare-fun m!959353 () Bool)

(assert (=> b!1039514 m!959353))

(assert (=> b!1039516 m!959351))

(assert (=> b!1039516 m!959351))

(declare-fun m!959355 () Bool)

(assert (=> b!1039516 m!959355))

(assert (=> b!1039518 m!959351))

(assert (=> b!1039518 m!959351))

(assert (=> b!1039518 m!959355))

(assert (=> bm!43994 m!959351))

(declare-fun m!959357 () Bool)

(assert (=> bm!43994 m!959357))

(assert (=> b!1039444 d!125469))

(declare-fun b!1039529 () Bool)

(declare-fun e!588407 () Bool)

(assert (=> b!1039529 (= e!588407 (bvslt (size!32053 (_keys!11532 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun d!125471 () Bool)

(declare-fun e!588408 () Bool)

(assert (=> d!125471 e!588408))

(declare-fun res!693327 () Bool)

(assert (=> d!125471 (=> (not res!693327) (not e!588408))))

(assert (=> d!125471 (= res!693327 (and (bvsge (index!41507 lt!458093) #b00000000000000000000000000000000) (bvslt (index!41507 lt!458093) (size!32053 (_keys!11532 thiss!1427)))))))

(declare-fun lt!458123 () Unit!33988)

(declare-fun choose!82 (array!65508 (_ BitVec 32) (_ BitVec 64)) Unit!33988)

(assert (=> d!125471 (= lt!458123 (choose!82 (_keys!11532 thiss!1427) (index!41507 lt!458093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125471 e!588407))

(declare-fun res!693326 () Bool)

(assert (=> d!125471 (=> (not res!693326) (not e!588407))))

(assert (=> d!125471 (= res!693326 (and (bvsge (index!41507 lt!458093) #b00000000000000000000000000000000) (bvslt (index!41507 lt!458093) (size!32053 (_keys!11532 thiss!1427)))))))

(assert (=> d!125471 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11532 thiss!1427) (index!41507 lt!458093) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458123)))

(declare-fun b!1039530 () Bool)

(assert (=> b!1039530 (= e!588408 (= (arrayCountValidKeys!0 (array!65509 (store (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32053 (_keys!11532 thiss!1427))) #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1039528 () Bool)

(declare-fun res!693329 () Bool)

(assert (=> b!1039528 (=> (not res!693329) (not e!588407))))

(assert (=> b!1039528 (= res!693329 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1039527 () Bool)

(declare-fun res!693328 () Bool)

(assert (=> b!1039527 (=> (not res!693328) (not e!588407))))

(assert (=> b!1039527 (= res!693328 (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093))))))

(assert (= (and d!125471 res!693326) b!1039527))

(assert (= (and b!1039527 res!693328) b!1039528))

(assert (= (and b!1039528 res!693329) b!1039529))

(assert (= (and d!125471 res!693327) b!1039530))

(declare-fun m!959359 () Bool)

(assert (=> d!125471 m!959359))

(assert (=> b!1039530 m!959291))

(declare-fun m!959361 () Bool)

(assert (=> b!1039530 m!959361))

(assert (=> b!1039530 m!959287))

(declare-fun m!959363 () Bool)

(assert (=> b!1039528 m!959363))

(assert (=> b!1039527 m!959275))

(assert (=> b!1039527 m!959275))

(assert (=> b!1039527 m!959277))

(assert (=> b!1039444 d!125471))

(declare-fun b!1039539 () Bool)

(declare-fun e!588414 () (_ BitVec 32))

(declare-fun e!588413 () (_ BitVec 32))

(assert (=> b!1039539 (= e!588414 e!588413)))

(declare-fun c!105314 () Bool)

(assert (=> b!1039539 (= c!105314 (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125473 () Bool)

(declare-fun lt!458126 () (_ BitVec 32))

(assert (=> d!125473 (and (bvsge lt!458126 #b00000000000000000000000000000000) (bvsle lt!458126 (bvsub (size!32053 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125473 (= lt!458126 e!588414)))

(declare-fun c!105315 () Bool)

(assert (=> d!125473 (= c!105315 (bvsge #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))))))

(assert (=> d!125473 (and (bvsle #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32053 (_keys!11532 thiss!1427)) (size!32053 (_keys!11532 thiss!1427))))))

(assert (=> d!125473 (= (arrayCountValidKeys!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) lt!458126)))

(declare-fun b!1039540 () Bool)

(assert (=> b!1039540 (= e!588414 #b00000000000000000000000000000000)))

(declare-fun b!1039541 () Bool)

(declare-fun call!44000 () (_ BitVec 32))

(assert (=> b!1039541 (= e!588413 (bvadd #b00000000000000000000000000000001 call!44000))))

(declare-fun bm!43997 () Bool)

(assert (=> bm!43997 (= call!44000 (arrayCountValidKeys!0 (_keys!11532 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32053 (_keys!11532 thiss!1427))))))

(declare-fun b!1039542 () Bool)

(assert (=> b!1039542 (= e!588413 call!44000)))

(assert (= (and d!125473 c!105315) b!1039540))

(assert (= (and d!125473 (not c!105315)) b!1039539))

(assert (= (and b!1039539 c!105314) b!1039541))

(assert (= (and b!1039539 (not c!105314)) b!1039542))

(assert (= (or b!1039541 b!1039542) bm!43997))

(declare-fun m!959365 () Bool)

(assert (=> b!1039539 m!959365))

(assert (=> b!1039539 m!959365))

(declare-fun m!959367 () Bool)

(assert (=> b!1039539 m!959367))

(declare-fun m!959369 () Bool)

(assert (=> bm!43997 m!959369))

(assert (=> b!1039444 d!125473))

(declare-fun d!125475 () Bool)

(assert (=> d!125475 (= (validMask!0 (mask!30286 thiss!1427)) (and (or (= (mask!30286 thiss!1427) #b00000000000000000000000000000111) (= (mask!30286 thiss!1427) #b00000000000000000000000000001111) (= (mask!30286 thiss!1427) #b00000000000000000000000000011111) (= (mask!30286 thiss!1427) #b00000000000000000000000000111111) (= (mask!30286 thiss!1427) #b00000000000000000000000001111111) (= (mask!30286 thiss!1427) #b00000000000000000000000011111111) (= (mask!30286 thiss!1427) #b00000000000000000000000111111111) (= (mask!30286 thiss!1427) #b00000000000000000000001111111111) (= (mask!30286 thiss!1427) #b00000000000000000000011111111111) (= (mask!30286 thiss!1427) #b00000000000000000000111111111111) (= (mask!30286 thiss!1427) #b00000000000000000001111111111111) (= (mask!30286 thiss!1427) #b00000000000000000011111111111111) (= (mask!30286 thiss!1427) #b00000000000000000111111111111111) (= (mask!30286 thiss!1427) #b00000000000000001111111111111111) (= (mask!30286 thiss!1427) #b00000000000000011111111111111111) (= (mask!30286 thiss!1427) #b00000000000000111111111111111111) (= (mask!30286 thiss!1427) #b00000000000001111111111111111111) (= (mask!30286 thiss!1427) #b00000000000011111111111111111111) (= (mask!30286 thiss!1427) #b00000000000111111111111111111111) (= (mask!30286 thiss!1427) #b00000000001111111111111111111111) (= (mask!30286 thiss!1427) #b00000000011111111111111111111111) (= (mask!30286 thiss!1427) #b00000000111111111111111111111111) (= (mask!30286 thiss!1427) #b00000001111111111111111111111111) (= (mask!30286 thiss!1427) #b00000011111111111111111111111111) (= (mask!30286 thiss!1427) #b00000111111111111111111111111111) (= (mask!30286 thiss!1427) #b00001111111111111111111111111111) (= (mask!30286 thiss!1427) #b00011111111111111111111111111111) (= (mask!30286 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30286 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1039444 d!125475))

(declare-fun b!1039543 () Bool)

(declare-fun e!588416 () (_ BitVec 32))

(declare-fun e!588415 () (_ BitVec 32))

(assert (=> b!1039543 (= e!588416 e!588415)))

(declare-fun c!105316 () Bool)

(assert (=> b!1039543 (= c!105316 (validKeyInArray!0 (select (arr!31521 lt!458090) #b00000000000000000000000000000000)))))

(declare-fun d!125477 () Bool)

(declare-fun lt!458127 () (_ BitVec 32))

(assert (=> d!125477 (and (bvsge lt!458127 #b00000000000000000000000000000000) (bvsle lt!458127 (bvsub (size!32053 lt!458090) #b00000000000000000000000000000000)))))

(assert (=> d!125477 (= lt!458127 e!588416)))

(declare-fun c!105317 () Bool)

(assert (=> d!125477 (= c!105317 (bvsge #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))))))

(assert (=> d!125477 (and (bvsle #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32053 (_keys!11532 thiss!1427)) (size!32053 lt!458090)))))

(assert (=> d!125477 (= (arrayCountValidKeys!0 lt!458090 #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) lt!458127)))

(declare-fun b!1039544 () Bool)

(assert (=> b!1039544 (= e!588416 #b00000000000000000000000000000000)))

(declare-fun b!1039545 () Bool)

(declare-fun call!44001 () (_ BitVec 32))

(assert (=> b!1039545 (= e!588415 (bvadd #b00000000000000000000000000000001 call!44001))))

(declare-fun bm!43998 () Bool)

(assert (=> bm!43998 (= call!44001 (arrayCountValidKeys!0 lt!458090 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32053 (_keys!11532 thiss!1427))))))

(declare-fun b!1039546 () Bool)

(assert (=> b!1039546 (= e!588415 call!44001)))

(assert (= (and d!125477 c!105317) b!1039544))

(assert (= (and d!125477 (not c!105317)) b!1039543))

(assert (= (and b!1039543 c!105316) b!1039545))

(assert (= (and b!1039543 (not c!105316)) b!1039546))

(assert (= (or b!1039545 b!1039546) bm!43998))

(assert (=> b!1039543 m!959351))

(assert (=> b!1039543 m!959351))

(assert (=> b!1039543 m!959355))

(declare-fun m!959371 () Bool)

(assert (=> bm!43998 m!959371))

(assert (=> b!1039444 d!125477))

(declare-fun b!1039547 () Bool)

(declare-fun e!588419 () Bool)

(assert (=> b!1039547 (= e!588419 (contains!6067 Nil!22067 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1039548 () Bool)

(declare-fun e!588417 () Bool)

(declare-fun call!44002 () Bool)

(assert (=> b!1039548 (= e!588417 call!44002)))

(declare-fun d!125479 () Bool)

(declare-fun res!693331 () Bool)

(declare-fun e!588418 () Bool)

(assert (=> d!125479 (=> res!693331 e!588418)))

(assert (=> d!125479 (= res!693331 (bvsge #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))))))

(assert (=> d!125479 (= (arrayNoDuplicates!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 Nil!22067) e!588418)))

(declare-fun b!1039549 () Bool)

(declare-fun e!588420 () Bool)

(assert (=> b!1039549 (= e!588420 e!588417)))

(declare-fun c!105318 () Bool)

(assert (=> b!1039549 (= c!105318 (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1039550 () Bool)

(assert (=> b!1039550 (= e!588417 call!44002)))

(declare-fun b!1039551 () Bool)

(assert (=> b!1039551 (= e!588418 e!588420)))

(declare-fun res!693330 () Bool)

(assert (=> b!1039551 (=> (not res!693330) (not e!588420))))

(assert (=> b!1039551 (= res!693330 (not e!588419))))

(declare-fun res!693332 () Bool)

(assert (=> b!1039551 (=> (not res!693332) (not e!588419))))

(assert (=> b!1039551 (= res!693332 (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43999 () Bool)

(assert (=> bm!43999 (= call!44002 (arrayNoDuplicates!0 (_keys!11532 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105318 (Cons!22066 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000) Nil!22067) Nil!22067)))))

(assert (= (and d!125479 (not res!693331)) b!1039551))

(assert (= (and b!1039551 res!693332) b!1039547))

(assert (= (and b!1039551 res!693330) b!1039549))

(assert (= (and b!1039549 c!105318) b!1039548))

(assert (= (and b!1039549 (not c!105318)) b!1039550))

(assert (= (or b!1039548 b!1039550) bm!43999))

(assert (=> b!1039547 m!959365))

(assert (=> b!1039547 m!959365))

(declare-fun m!959373 () Bool)

(assert (=> b!1039547 m!959373))

(assert (=> b!1039549 m!959365))

(assert (=> b!1039549 m!959365))

(assert (=> b!1039549 m!959367))

(assert (=> b!1039551 m!959365))

(assert (=> b!1039551 m!959365))

(assert (=> b!1039551 m!959367))

(assert (=> bm!43999 m!959365))

(declare-fun m!959375 () Bool)

(assert (=> bm!43999 m!959375))

(assert (=> b!1039440 d!125479))

(declare-fun bm!44002 () Bool)

(declare-fun call!44005 () Bool)

(assert (=> bm!44002 (= call!44005 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11532 thiss!1427) (mask!30286 thiss!1427)))))

(declare-fun b!1039561 () Bool)

(declare-fun e!588428 () Bool)

(declare-fun e!588429 () Bool)

(assert (=> b!1039561 (= e!588428 e!588429)))

(declare-fun lt!458136 () (_ BitVec 64))

(assert (=> b!1039561 (= lt!458136 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!458135 () Unit!33988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65508 (_ BitVec 64) (_ BitVec 32)) Unit!33988)

(assert (=> b!1039561 (= lt!458135 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11532 thiss!1427) lt!458136 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1039561 (arrayContainsKey!0 (_keys!11532 thiss!1427) lt!458136 #b00000000000000000000000000000000)))

(declare-fun lt!458134 () Unit!33988)

(assert (=> b!1039561 (= lt!458134 lt!458135)))

(declare-fun res!693338 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65508 (_ BitVec 32)) SeekEntryResult!9784)

(assert (=> b!1039561 (= res!693338 (= (seekEntryOrOpen!0 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000) (_keys!11532 thiss!1427) (mask!30286 thiss!1427)) (Found!9784 #b00000000000000000000000000000000)))))

(assert (=> b!1039561 (=> (not res!693338) (not e!588429))))

(declare-fun b!1039562 () Bool)

(assert (=> b!1039562 (= e!588429 call!44005)))

(declare-fun b!1039563 () Bool)

(declare-fun e!588427 () Bool)

(assert (=> b!1039563 (= e!588427 e!588428)))

(declare-fun c!105321 () Bool)

(assert (=> b!1039563 (= c!105321 (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1039560 () Bool)

(assert (=> b!1039560 (= e!588428 call!44005)))

(declare-fun d!125481 () Bool)

(declare-fun res!693337 () Bool)

(assert (=> d!125481 (=> res!693337 e!588427)))

(assert (=> d!125481 (= res!693337 (bvsge #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))))))

(assert (=> d!125481 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)) e!588427)))

(assert (= (and d!125481 (not res!693337)) b!1039563))

(assert (= (and b!1039563 c!105321) b!1039561))

(assert (= (and b!1039563 (not c!105321)) b!1039560))

(assert (= (and b!1039561 res!693338) b!1039562))

(assert (= (or b!1039562 b!1039560) bm!44002))

(declare-fun m!959377 () Bool)

(assert (=> bm!44002 m!959377))

(assert (=> b!1039561 m!959365))

(declare-fun m!959379 () Bool)

(assert (=> b!1039561 m!959379))

(declare-fun m!959381 () Bool)

(assert (=> b!1039561 m!959381))

(assert (=> b!1039561 m!959365))

(declare-fun m!959383 () Bool)

(assert (=> b!1039561 m!959383))

(assert (=> b!1039563 m!959365))

(assert (=> b!1039563 m!959365))

(assert (=> b!1039563 m!959367))

(assert (=> b!1039441 d!125481))

(declare-fun d!125483 () Bool)

(declare-fun res!693345 () Bool)

(declare-fun e!588432 () Bool)

(assert (=> d!125483 (=> (not res!693345) (not e!588432))))

(declare-fun simpleValid!427 (LongMapFixedSize!5886) Bool)

(assert (=> d!125483 (= res!693345 (simpleValid!427 thiss!1427))))

(assert (=> d!125483 (= (valid!2165 thiss!1427) e!588432)))

(declare-fun b!1039570 () Bool)

(declare-fun res!693346 () Bool)

(assert (=> b!1039570 (=> (not res!693346) (not e!588432))))

(assert (=> b!1039570 (= res!693346 (= (arrayCountValidKeys!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 (size!32053 (_keys!11532 thiss!1427))) (_size!2998 thiss!1427)))))

(declare-fun b!1039571 () Bool)

(declare-fun res!693347 () Bool)

(assert (=> b!1039571 (=> (not res!693347) (not e!588432))))

(assert (=> b!1039571 (= res!693347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11532 thiss!1427) (mask!30286 thiss!1427)))))

(declare-fun b!1039572 () Bool)

(assert (=> b!1039572 (= e!588432 (arrayNoDuplicates!0 (_keys!11532 thiss!1427) #b00000000000000000000000000000000 Nil!22067))))

(assert (= (and d!125483 res!693345) b!1039570))

(assert (= (and b!1039570 res!693346) b!1039571))

(assert (= (and b!1039571 res!693347) b!1039572))

(declare-fun m!959385 () Bool)

(assert (=> d!125483 m!959385))

(assert (=> b!1039570 m!959287))

(assert (=> b!1039571 m!959303))

(assert (=> b!1039572 m!959301))

(assert (=> start!91046 d!125483))

(declare-fun d!125485 () Bool)

(assert (=> d!125485 (= (validKeyInArray!0 (select (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093))) (and (not (= (select (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31521 (_keys!11532 thiss!1427)) (index!41507 lt!458093)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1039446 d!125485))

(declare-fun condMapEmpty!38617 () Bool)

(declare-fun mapDefault!38617 () ValueCell!11646)

(assert (=> mapNonEmpty!38611 (= condMapEmpty!38617 (= mapRest!38611 ((as const (Array (_ BitVec 32) ValueCell!11646)) mapDefault!38617)))))

(declare-fun e!588438 () Bool)

(declare-fun mapRes!38617 () Bool)

(assert (=> mapNonEmpty!38611 (= tp!74118 (and e!588438 mapRes!38617))))

(declare-fun b!1039580 () Bool)

(assert (=> b!1039580 (= e!588438 tp_is_empty!24699)))

(declare-fun mapNonEmpty!38617 () Bool)

(declare-fun tp!74127 () Bool)

(declare-fun e!588437 () Bool)

(assert (=> mapNonEmpty!38617 (= mapRes!38617 (and tp!74127 e!588437))))

(declare-fun mapKey!38617 () (_ BitVec 32))

(declare-fun mapValue!38617 () ValueCell!11646)

(declare-fun mapRest!38617 () (Array (_ BitVec 32) ValueCell!11646))

(assert (=> mapNonEmpty!38617 (= mapRest!38611 (store mapRest!38617 mapKey!38617 mapValue!38617))))

(declare-fun mapIsEmpty!38617 () Bool)

(assert (=> mapIsEmpty!38617 mapRes!38617))

(declare-fun b!1039579 () Bool)

(assert (=> b!1039579 (= e!588437 tp_is_empty!24699)))

(assert (= (and mapNonEmpty!38611 condMapEmpty!38617) mapIsEmpty!38617))

(assert (= (and mapNonEmpty!38611 (not condMapEmpty!38617)) mapNonEmpty!38617))

(assert (= (and mapNonEmpty!38617 ((_ is ValueCellFull!11646) mapValue!38617)) b!1039579))

(assert (= (and mapNonEmpty!38611 ((_ is ValueCellFull!11646) mapDefault!38617)) b!1039580))

(declare-fun m!959387 () Bool)

(assert (=> mapNonEmpty!38617 m!959387))

(check-sat (not b_next!20979) (not b!1039551) (not b!1039563) (not b!1039527) tp_is_empty!24699 (not b!1039503) (not bm!43998) (not d!125483) (not b!1039543) (not b!1039516) (not bm!43999) (not d!125467) (not b!1039528) (not bm!44002) (not d!125471) (not bm!43994) (not bm!43997) (not b!1039570) (not d!125461) (not b!1039500) (not b!1039571) (not mapNonEmpty!38617) (not b!1039518) (not b!1039549) (not b!1039572) b_and!33529 (not b!1039514) (not b!1039530) (not b!1039561) (not b!1039547) (not b!1039539))
(check-sat b_and!33529 (not b_next!20979))
