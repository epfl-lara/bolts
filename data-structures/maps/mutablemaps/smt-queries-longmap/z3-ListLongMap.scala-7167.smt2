; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91522 () Bool)

(assert start!91522)

(declare-fun b!1042221 () Bool)

(declare-fun b_free!21057 () Bool)

(declare-fun b_next!21057 () Bool)

(assert (=> b!1042221 (= b_free!21057 (not b_next!21057))))

(declare-fun tp!74395 () Bool)

(declare-fun b_and!33607 () Bool)

(assert (=> b!1042221 (= tp!74395 b_and!33607)))

(declare-fun res!694559 () Bool)

(declare-fun e!590389 () Bool)

(assert (=> start!91522 (=> (not res!694559) (not e!590389))))

(declare-datatypes ((V!37909 0))(
  ( (V!37910 (val!12439 Int)) )
))
(declare-datatypes ((ValueCell!11685 0))(
  ( (ValueCellFull!11685 (v!15031 V!37909)) (EmptyCell!11685) )
))
(declare-datatypes ((array!65690 0))(
  ( (array!65691 (arr!31599 (Array (_ BitVec 32) (_ BitVec 64))) (size!32135 (_ BitVec 32))) )
))
(declare-datatypes ((array!65692 0))(
  ( (array!65693 (arr!31600 (Array (_ BitVec 32) ValueCell!11685)) (size!32136 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5964 0))(
  ( (LongMapFixedSize!5965 (defaultEntry!6364 Int) (mask!30416 (_ BitVec 32)) (extraKeys!6092 (_ BitVec 32)) (zeroValue!6198 V!37909) (minValue!6198 V!37909) (_size!3037 (_ BitVec 32)) (_keys!11609 array!65690) (_values!6387 array!65692) (_vacant!3037 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5964)

(declare-fun valid!2192 (LongMapFixedSize!5964) Bool)

(assert (=> start!91522 (= res!694559 (valid!2192 thiss!1427))))

(assert (=> start!91522 e!590389))

(declare-fun e!590393 () Bool)

(assert (=> start!91522 e!590393))

(assert (=> start!91522 true))

(declare-fun b!1042214 () Bool)

(declare-fun e!590395 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65690 (_ BitVec 32)) Bool)

(assert (=> b!1042214 (= e!590395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)))))

(declare-fun b!1042215 () Bool)

(declare-fun res!694561 () Bool)

(assert (=> b!1042215 (=> (not res!694561) (not e!590389))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1042215 (= res!694561 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1042216 () Bool)

(declare-fun e!590391 () Bool)

(declare-fun tp_is_empty!24777 () Bool)

(assert (=> b!1042216 (= e!590391 tp_is_empty!24777)))

(declare-fun b!1042217 () Bool)

(declare-fun e!590390 () Bool)

(assert (=> b!1042217 (= e!590389 e!590390)))

(declare-fun res!694563 () Bool)

(assert (=> b!1042217 (=> (not res!694563) (not e!590390))))

(declare-datatypes ((SeekEntryResult!9815 0))(
  ( (MissingZero!9815 (index!41630 (_ BitVec 32))) (Found!9815 (index!41631 (_ BitVec 32))) (Intermediate!9815 (undefined!10627 Bool) (index!41632 (_ BitVec 32)) (x!93046 (_ BitVec 32))) (Undefined!9815) (MissingVacant!9815 (index!41633 (_ BitVec 32))) )
))
(declare-fun lt!459372 () SeekEntryResult!9815)

(get-info :version)

(assert (=> b!1042217 (= res!694563 ((_ is Found!9815) lt!459372))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65690 (_ BitVec 32)) SeekEntryResult!9815)

(assert (=> b!1042217 (= lt!459372 (seekEntry!0 key!909 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)))))

(declare-fun b!1042218 () Bool)

(assert (=> b!1042218 (= e!590390 (not e!590395))))

(declare-fun res!694560 () Bool)

(assert (=> b!1042218 (=> res!694560 e!590395)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042218 (= res!694560 (not (validMask!0 (mask!30416 thiss!1427))))))

(declare-fun lt!459369 () array!65690)

(declare-fun arrayContainsKey!0 (array!65690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042218 (not (arrayContainsKey!0 lt!459369 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34046 0))(
  ( (Unit!34047) )
))
(declare-fun lt!459367 () Unit!34046)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65690 (_ BitVec 32) (_ BitVec 64)) Unit!34046)

(assert (=> b!1042218 (= lt!459367 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11609 thiss!1427) (index!41631 lt!459372) key!909))))

(assert (=> b!1042218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459369 (mask!30416 thiss!1427))))

(declare-fun lt!459371 () Unit!34046)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65690 (_ BitVec 32) (_ BitVec 32)) Unit!34046)

(assert (=> b!1042218 (= lt!459371 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11609 thiss!1427) (index!41631 lt!459372) (mask!30416 thiss!1427)))))

(declare-datatypes ((List!22099 0))(
  ( (Nil!22096) (Cons!22095 (h!23303 (_ BitVec 64)) (t!31320 List!22099)) )
))
(declare-fun arrayNoDuplicates!0 (array!65690 (_ BitVec 32) List!22099) Bool)

(assert (=> b!1042218 (arrayNoDuplicates!0 lt!459369 #b00000000000000000000000000000000 Nil!22096)))

(declare-fun lt!459370 () Unit!34046)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22099) Unit!34046)

(assert (=> b!1042218 (= lt!459370 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11609 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41631 lt!459372) #b00000000000000000000000000000000 Nil!22096))))

(declare-fun arrayCountValidKeys!0 (array!65690 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042218 (= (arrayCountValidKeys!0 lt!459369 #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11609 thiss!1427) #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042218 (= lt!459369 (array!65691 (store (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32135 (_keys!11609 thiss!1427))))))

(declare-fun lt!459368 () Unit!34046)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65690 (_ BitVec 32) (_ BitVec 64)) Unit!34046)

(assert (=> b!1042218 (= lt!459368 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11609 thiss!1427) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042219 () Bool)

(declare-fun res!694562 () Bool)

(assert (=> b!1042219 (=> res!694562 e!590395)))

(assert (=> b!1042219 (= res!694562 (or (not (= (size!32136 (_values!6387 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30416 thiss!1427)))) (not (= (size!32135 (_keys!11609 thiss!1427)) (size!32136 (_values!6387 thiss!1427)))) (bvslt (mask!30416 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6092 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6092 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38771 () Bool)

(declare-fun mapRes!38771 () Bool)

(assert (=> mapIsEmpty!38771 mapRes!38771))

(declare-fun b!1042220 () Bool)

(declare-fun e!590394 () Bool)

(declare-fun e!590392 () Bool)

(assert (=> b!1042220 (= e!590394 (and e!590392 mapRes!38771))))

(declare-fun condMapEmpty!38771 () Bool)

(declare-fun mapDefault!38771 () ValueCell!11685)

(assert (=> b!1042220 (= condMapEmpty!38771 (= (arr!31600 (_values!6387 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11685)) mapDefault!38771)))))

(declare-fun array_inv!24259 (array!65690) Bool)

(declare-fun array_inv!24260 (array!65692) Bool)

(assert (=> b!1042221 (= e!590393 (and tp!74395 tp_is_empty!24777 (array_inv!24259 (_keys!11609 thiss!1427)) (array_inv!24260 (_values!6387 thiss!1427)) e!590394))))

(declare-fun b!1042222 () Bool)

(assert (=> b!1042222 (= e!590392 tp_is_empty!24777)))

(declare-fun mapNonEmpty!38771 () Bool)

(declare-fun tp!74394 () Bool)

(assert (=> mapNonEmpty!38771 (= mapRes!38771 (and tp!74394 e!590391))))

(declare-fun mapKey!38771 () (_ BitVec 32))

(declare-fun mapValue!38771 () ValueCell!11685)

(declare-fun mapRest!38771 () (Array (_ BitVec 32) ValueCell!11685))

(assert (=> mapNonEmpty!38771 (= (arr!31600 (_values!6387 thiss!1427)) (store mapRest!38771 mapKey!38771 mapValue!38771))))

(assert (= (and start!91522 res!694559) b!1042215))

(assert (= (and b!1042215 res!694561) b!1042217))

(assert (= (and b!1042217 res!694563) b!1042218))

(assert (= (and b!1042218 (not res!694560)) b!1042219))

(assert (= (and b!1042219 (not res!694562)) b!1042214))

(assert (= (and b!1042220 condMapEmpty!38771) mapIsEmpty!38771))

(assert (= (and b!1042220 (not condMapEmpty!38771)) mapNonEmpty!38771))

(assert (= (and mapNonEmpty!38771 ((_ is ValueCellFull!11685) mapValue!38771)) b!1042216))

(assert (= (and b!1042220 ((_ is ValueCellFull!11685) mapDefault!38771)) b!1042222))

(assert (= b!1042221 b!1042220))

(assert (= start!91522 b!1042221))

(declare-fun m!961683 () Bool)

(assert (=> b!1042218 m!961683))

(declare-fun m!961685 () Bool)

(assert (=> b!1042218 m!961685))

(declare-fun m!961687 () Bool)

(assert (=> b!1042218 m!961687))

(declare-fun m!961689 () Bool)

(assert (=> b!1042218 m!961689))

(declare-fun m!961691 () Bool)

(assert (=> b!1042218 m!961691))

(declare-fun m!961693 () Bool)

(assert (=> b!1042218 m!961693))

(declare-fun m!961695 () Bool)

(assert (=> b!1042218 m!961695))

(declare-fun m!961697 () Bool)

(assert (=> b!1042218 m!961697))

(declare-fun m!961699 () Bool)

(assert (=> b!1042218 m!961699))

(declare-fun m!961701 () Bool)

(assert (=> b!1042218 m!961701))

(declare-fun m!961703 () Bool)

(assert (=> b!1042218 m!961703))

(declare-fun m!961705 () Bool)

(assert (=> mapNonEmpty!38771 m!961705))

(declare-fun m!961707 () Bool)

(assert (=> b!1042221 m!961707))

(declare-fun m!961709 () Bool)

(assert (=> b!1042221 m!961709))

(declare-fun m!961711 () Bool)

(assert (=> start!91522 m!961711))

(declare-fun m!961713 () Bool)

(assert (=> b!1042217 m!961713))

(declare-fun m!961715 () Bool)

(assert (=> b!1042214 m!961715))

(check-sat (not b_next!21057) tp_is_empty!24777 b_and!33607 (not b!1042214) (not b!1042217) (not start!91522) (not b!1042221) (not mapNonEmpty!38771) (not b!1042218))
(check-sat b_and!33607 (not b_next!21057))
(get-model)

(declare-fun b!1042258 () Bool)

(declare-fun e!590428 () Bool)

(declare-fun e!590429 () Bool)

(assert (=> b!1042258 (= e!590428 e!590429)))

(declare-fun lt!459398 () (_ BitVec 64))

(assert (=> b!1042258 (= lt!459398 (select (arr!31599 (_keys!11609 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459397 () Unit!34046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65690 (_ BitVec 64) (_ BitVec 32)) Unit!34046)

(assert (=> b!1042258 (= lt!459397 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11609 thiss!1427) lt!459398 #b00000000000000000000000000000000))))

(assert (=> b!1042258 (arrayContainsKey!0 (_keys!11609 thiss!1427) lt!459398 #b00000000000000000000000000000000)))

(declare-fun lt!459399 () Unit!34046)

(assert (=> b!1042258 (= lt!459399 lt!459397)))

(declare-fun res!694584 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65690 (_ BitVec 32)) SeekEntryResult!9815)

(assert (=> b!1042258 (= res!694584 (= (seekEntryOrOpen!0 (select (arr!31599 (_keys!11609 thiss!1427)) #b00000000000000000000000000000000) (_keys!11609 thiss!1427) (mask!30416 thiss!1427)) (Found!9815 #b00000000000000000000000000000000)))))

(assert (=> b!1042258 (=> (not res!694584) (not e!590429))))

(declare-fun b!1042259 () Bool)

(declare-fun call!44167 () Bool)

(assert (=> b!1042259 (= e!590429 call!44167)))

(declare-fun bm!44164 () Bool)

(assert (=> bm!44164 (= call!44167 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11609 thiss!1427) (mask!30416 thiss!1427)))))

(declare-fun b!1042260 () Bool)

(declare-fun e!590427 () Bool)

(assert (=> b!1042260 (= e!590427 e!590428)))

(declare-fun c!105759 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1042260 (= c!105759 (validKeyInArray!0 (select (arr!31599 (_keys!11609 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042261 () Bool)

(assert (=> b!1042261 (= e!590428 call!44167)))

(declare-fun d!126039 () Bool)

(declare-fun res!694583 () Bool)

(assert (=> d!126039 (=> res!694583 e!590427)))

(assert (=> d!126039 (= res!694583 (bvsge #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))))))

(assert (=> d!126039 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)) e!590427)))

(assert (= (and d!126039 (not res!694583)) b!1042260))

(assert (= (and b!1042260 c!105759) b!1042258))

(assert (= (and b!1042260 (not c!105759)) b!1042261))

(assert (= (and b!1042258 res!694584) b!1042259))

(assert (= (or b!1042259 b!1042261) bm!44164))

(declare-fun m!961751 () Bool)

(assert (=> b!1042258 m!961751))

(declare-fun m!961753 () Bool)

(assert (=> b!1042258 m!961753))

(declare-fun m!961755 () Bool)

(assert (=> b!1042258 m!961755))

(assert (=> b!1042258 m!961751))

(declare-fun m!961757 () Bool)

(assert (=> b!1042258 m!961757))

(declare-fun m!961759 () Bool)

(assert (=> bm!44164 m!961759))

(assert (=> b!1042260 m!961751))

(assert (=> b!1042260 m!961751))

(declare-fun m!961761 () Bool)

(assert (=> b!1042260 m!961761))

(assert (=> b!1042214 d!126039))

(declare-fun d!126041 () Bool)

(declare-fun res!694591 () Bool)

(declare-fun e!590432 () Bool)

(assert (=> d!126041 (=> (not res!694591) (not e!590432))))

(declare-fun simpleValid!440 (LongMapFixedSize!5964) Bool)

(assert (=> d!126041 (= res!694591 (simpleValid!440 thiss!1427))))

(assert (=> d!126041 (= (valid!2192 thiss!1427) e!590432)))

(declare-fun b!1042268 () Bool)

(declare-fun res!694592 () Bool)

(assert (=> b!1042268 (=> (not res!694592) (not e!590432))))

(assert (=> b!1042268 (= res!694592 (= (arrayCountValidKeys!0 (_keys!11609 thiss!1427) #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) (_size!3037 thiss!1427)))))

(declare-fun b!1042269 () Bool)

(declare-fun res!694593 () Bool)

(assert (=> b!1042269 (=> (not res!694593) (not e!590432))))

(assert (=> b!1042269 (= res!694593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)))))

(declare-fun b!1042270 () Bool)

(assert (=> b!1042270 (= e!590432 (arrayNoDuplicates!0 (_keys!11609 thiss!1427) #b00000000000000000000000000000000 Nil!22096))))

(assert (= (and d!126041 res!694591) b!1042268))

(assert (= (and b!1042268 res!694592) b!1042269))

(assert (= (and b!1042269 res!694593) b!1042270))

(declare-fun m!961763 () Bool)

(assert (=> d!126041 m!961763))

(assert (=> b!1042268 m!961701))

(assert (=> b!1042269 m!961715))

(declare-fun m!961765 () Bool)

(assert (=> b!1042270 m!961765))

(assert (=> start!91522 d!126041))

(declare-fun d!126043 () Bool)

(assert (=> d!126043 (= (array_inv!24259 (_keys!11609 thiss!1427)) (bvsge (size!32135 (_keys!11609 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042221 d!126043))

(declare-fun d!126045 () Bool)

(assert (=> d!126045 (= (array_inv!24260 (_values!6387 thiss!1427)) (bvsge (size!32136 (_values!6387 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042221 d!126045))

(declare-fun b!1042283 () Bool)

(declare-fun e!590439 () SeekEntryResult!9815)

(declare-fun lt!459408 () SeekEntryResult!9815)

(assert (=> b!1042283 (= e!590439 (MissingZero!9815 (index!41632 lt!459408)))))

(declare-fun b!1042284 () Bool)

(declare-fun e!590441 () SeekEntryResult!9815)

(declare-fun e!590440 () SeekEntryResult!9815)

(assert (=> b!1042284 (= e!590441 e!590440)))

(declare-fun lt!459409 () (_ BitVec 64))

(assert (=> b!1042284 (= lt!459409 (select (arr!31599 (_keys!11609 thiss!1427)) (index!41632 lt!459408)))))

(declare-fun c!105767 () Bool)

(assert (=> b!1042284 (= c!105767 (= lt!459409 key!909))))

(declare-fun b!1042285 () Bool)

(declare-fun lt!459410 () SeekEntryResult!9815)

(assert (=> b!1042285 (= e!590439 (ite ((_ is MissingVacant!9815) lt!459410) (MissingZero!9815 (index!41633 lt!459410)) lt!459410))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65690 (_ BitVec 32)) SeekEntryResult!9815)

(assert (=> b!1042285 (= lt!459410 (seekKeyOrZeroReturnVacant!0 (x!93046 lt!459408) (index!41632 lt!459408) (index!41632 lt!459408) key!909 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)))))

(declare-fun b!1042286 () Bool)

(declare-fun c!105766 () Bool)

(assert (=> b!1042286 (= c!105766 (= lt!459409 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042286 (= e!590440 e!590439)))

(declare-fun d!126047 () Bool)

(declare-fun lt!459411 () SeekEntryResult!9815)

(assert (=> d!126047 (and (or ((_ is MissingVacant!9815) lt!459411) (not ((_ is Found!9815) lt!459411)) (and (bvsge (index!41631 lt!459411) #b00000000000000000000000000000000) (bvslt (index!41631 lt!459411) (size!32135 (_keys!11609 thiss!1427))))) (not ((_ is MissingVacant!9815) lt!459411)) (or (not ((_ is Found!9815) lt!459411)) (= (select (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459411)) key!909)))))

(assert (=> d!126047 (= lt!459411 e!590441)))

(declare-fun c!105768 () Bool)

(assert (=> d!126047 (= c!105768 (and ((_ is Intermediate!9815) lt!459408) (undefined!10627 lt!459408)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65690 (_ BitVec 32)) SeekEntryResult!9815)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126047 (= lt!459408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30416 thiss!1427)) key!909 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)))))

(assert (=> d!126047 (validMask!0 (mask!30416 thiss!1427))))

(assert (=> d!126047 (= (seekEntry!0 key!909 (_keys!11609 thiss!1427) (mask!30416 thiss!1427)) lt!459411)))

(declare-fun b!1042287 () Bool)

(assert (=> b!1042287 (= e!590440 (Found!9815 (index!41632 lt!459408)))))

(declare-fun b!1042288 () Bool)

(assert (=> b!1042288 (= e!590441 Undefined!9815)))

(assert (= (and d!126047 c!105768) b!1042288))

(assert (= (and d!126047 (not c!105768)) b!1042284))

(assert (= (and b!1042284 c!105767) b!1042287))

(assert (= (and b!1042284 (not c!105767)) b!1042286))

(assert (= (and b!1042286 c!105766) b!1042283))

(assert (= (and b!1042286 (not c!105766)) b!1042285))

(declare-fun m!961767 () Bool)

(assert (=> b!1042284 m!961767))

(declare-fun m!961769 () Bool)

(assert (=> b!1042285 m!961769))

(declare-fun m!961771 () Bool)

(assert (=> d!126047 m!961771))

(declare-fun m!961773 () Bool)

(assert (=> d!126047 m!961773))

(assert (=> d!126047 m!961773))

(declare-fun m!961775 () Bool)

(assert (=> d!126047 m!961775))

(assert (=> d!126047 m!961687))

(assert (=> b!1042217 d!126047))

(declare-fun b!1042297 () Bool)

(declare-fun e!590446 () (_ BitVec 32))

(assert (=> b!1042297 (= e!590446 #b00000000000000000000000000000000)))

(declare-fun b!1042298 () Bool)

(declare-fun e!590447 () (_ BitVec 32))

(declare-fun call!44170 () (_ BitVec 32))

(assert (=> b!1042298 (= e!590447 call!44170)))

(declare-fun b!1042299 () Bool)

(assert (=> b!1042299 (= e!590446 e!590447)))

(declare-fun c!105774 () Bool)

(assert (=> b!1042299 (= c!105774 (validKeyInArray!0 (select (arr!31599 lt!459369) #b00000000000000000000000000000000)))))

(declare-fun bm!44167 () Bool)

(assert (=> bm!44167 (= call!44170 (arrayCountValidKeys!0 lt!459369 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32135 (_keys!11609 thiss!1427))))))

(declare-fun b!1042300 () Bool)

(assert (=> b!1042300 (= e!590447 (bvadd #b00000000000000000000000000000001 call!44170))))

(declare-fun d!126049 () Bool)

(declare-fun lt!459414 () (_ BitVec 32))

(assert (=> d!126049 (and (bvsge lt!459414 #b00000000000000000000000000000000) (bvsle lt!459414 (bvsub (size!32135 lt!459369) #b00000000000000000000000000000000)))))

(assert (=> d!126049 (= lt!459414 e!590446)))

(declare-fun c!105773 () Bool)

(assert (=> d!126049 (= c!105773 (bvsge #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))))))

(assert (=> d!126049 (and (bvsle #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32135 (_keys!11609 thiss!1427)) (size!32135 lt!459369)))))

(assert (=> d!126049 (= (arrayCountValidKeys!0 lt!459369 #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) lt!459414)))

(assert (= (and d!126049 c!105773) b!1042297))

(assert (= (and d!126049 (not c!105773)) b!1042299))

(assert (= (and b!1042299 c!105774) b!1042300))

(assert (= (and b!1042299 (not c!105774)) b!1042298))

(assert (= (or b!1042300 b!1042298) bm!44167))

(declare-fun m!961777 () Bool)

(assert (=> b!1042299 m!961777))

(assert (=> b!1042299 m!961777))

(declare-fun m!961779 () Bool)

(assert (=> b!1042299 m!961779))

(declare-fun m!961781 () Bool)

(assert (=> bm!44167 m!961781))

(assert (=> b!1042218 d!126049))

(declare-fun d!126051 () Bool)

(declare-fun res!694598 () Bool)

(declare-fun e!590452 () Bool)

(assert (=> d!126051 (=> res!694598 e!590452)))

(assert (=> d!126051 (= res!694598 (= (select (arr!31599 lt!459369) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126051 (= (arrayContainsKey!0 lt!459369 key!909 #b00000000000000000000000000000000) e!590452)))

(declare-fun b!1042305 () Bool)

(declare-fun e!590453 () Bool)

(assert (=> b!1042305 (= e!590452 e!590453)))

(declare-fun res!694599 () Bool)

(assert (=> b!1042305 (=> (not res!694599) (not e!590453))))

(assert (=> b!1042305 (= res!694599 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32135 lt!459369)))))

(declare-fun b!1042306 () Bool)

(assert (=> b!1042306 (= e!590453 (arrayContainsKey!0 lt!459369 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126051 (not res!694598)) b!1042305))

(assert (= (and b!1042305 res!694599) b!1042306))

(assert (=> d!126051 m!961777))

(declare-fun m!961783 () Bool)

(assert (=> b!1042306 m!961783))

(assert (=> b!1042218 d!126051))

(declare-fun d!126053 () Bool)

(declare-fun e!590456 () Bool)

(assert (=> d!126053 e!590456))

(declare-fun res!694602 () Bool)

(assert (=> d!126053 (=> (not res!694602) (not e!590456))))

(assert (=> d!126053 (= res!694602 (and (bvsge (index!41631 lt!459372) #b00000000000000000000000000000000) (bvslt (index!41631 lt!459372) (size!32135 (_keys!11609 thiss!1427)))))))

(declare-fun lt!459417 () Unit!34046)

(declare-fun choose!53 (array!65690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22099) Unit!34046)

(assert (=> d!126053 (= lt!459417 (choose!53 (_keys!11609 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41631 lt!459372) #b00000000000000000000000000000000 Nil!22096))))

(assert (=> d!126053 (bvslt (size!32135 (_keys!11609 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126053 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11609 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41631 lt!459372) #b00000000000000000000000000000000 Nil!22096) lt!459417)))

(declare-fun b!1042309 () Bool)

(assert (=> b!1042309 (= e!590456 (arrayNoDuplicates!0 (array!65691 (store (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32135 (_keys!11609 thiss!1427))) #b00000000000000000000000000000000 Nil!22096))))

(assert (= (and d!126053 res!694602) b!1042309))

(declare-fun m!961785 () Bool)

(assert (=> d!126053 m!961785))

(assert (=> b!1042309 m!961691))

(declare-fun m!961787 () Bool)

(assert (=> b!1042309 m!961787))

(assert (=> b!1042218 d!126053))

(declare-fun d!126055 () Bool)

(assert (=> d!126055 (= (validMask!0 (mask!30416 thiss!1427)) (and (or (= (mask!30416 thiss!1427) #b00000000000000000000000000000111) (= (mask!30416 thiss!1427) #b00000000000000000000000000001111) (= (mask!30416 thiss!1427) #b00000000000000000000000000011111) (= (mask!30416 thiss!1427) #b00000000000000000000000000111111) (= (mask!30416 thiss!1427) #b00000000000000000000000001111111) (= (mask!30416 thiss!1427) #b00000000000000000000000011111111) (= (mask!30416 thiss!1427) #b00000000000000000000000111111111) (= (mask!30416 thiss!1427) #b00000000000000000000001111111111) (= (mask!30416 thiss!1427) #b00000000000000000000011111111111) (= (mask!30416 thiss!1427) #b00000000000000000000111111111111) (= (mask!30416 thiss!1427) #b00000000000000000001111111111111) (= (mask!30416 thiss!1427) #b00000000000000000011111111111111) (= (mask!30416 thiss!1427) #b00000000000000000111111111111111) (= (mask!30416 thiss!1427) #b00000000000000001111111111111111) (= (mask!30416 thiss!1427) #b00000000000000011111111111111111) (= (mask!30416 thiss!1427) #b00000000000000111111111111111111) (= (mask!30416 thiss!1427) #b00000000000001111111111111111111) (= (mask!30416 thiss!1427) #b00000000000011111111111111111111) (= (mask!30416 thiss!1427) #b00000000000111111111111111111111) (= (mask!30416 thiss!1427) #b00000000001111111111111111111111) (= (mask!30416 thiss!1427) #b00000000011111111111111111111111) (= (mask!30416 thiss!1427) #b00000000111111111111111111111111) (= (mask!30416 thiss!1427) #b00000001111111111111111111111111) (= (mask!30416 thiss!1427) #b00000011111111111111111111111111) (= (mask!30416 thiss!1427) #b00000111111111111111111111111111) (= (mask!30416 thiss!1427) #b00001111111111111111111111111111) (= (mask!30416 thiss!1427) #b00011111111111111111111111111111) (= (mask!30416 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30416 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1042218 d!126055))

(declare-fun b!1042320 () Bool)

(declare-fun e!590468 () Bool)

(declare-fun contains!6080 (List!22099 (_ BitVec 64)) Bool)

(assert (=> b!1042320 (= e!590468 (contains!6080 Nil!22096 (select (arr!31599 lt!459369) #b00000000000000000000000000000000)))))

(declare-fun b!1042321 () Bool)

(declare-fun e!590465 () Bool)

(declare-fun e!590466 () Bool)

(assert (=> b!1042321 (= e!590465 e!590466)))

(declare-fun c!105777 () Bool)

(assert (=> b!1042321 (= c!105777 (validKeyInArray!0 (select (arr!31599 lt!459369) #b00000000000000000000000000000000)))))

(declare-fun bm!44170 () Bool)

(declare-fun call!44173 () Bool)

(assert (=> bm!44170 (= call!44173 (arrayNoDuplicates!0 lt!459369 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105777 (Cons!22095 (select (arr!31599 lt!459369) #b00000000000000000000000000000000) Nil!22096) Nil!22096)))))

(declare-fun b!1042322 () Bool)

(assert (=> b!1042322 (= e!590466 call!44173)))

(declare-fun b!1042323 () Bool)

(assert (=> b!1042323 (= e!590466 call!44173)))

(declare-fun d!126057 () Bool)

(declare-fun res!694609 () Bool)

(declare-fun e!590467 () Bool)

(assert (=> d!126057 (=> res!694609 e!590467)))

(assert (=> d!126057 (= res!694609 (bvsge #b00000000000000000000000000000000 (size!32135 lt!459369)))))

(assert (=> d!126057 (= (arrayNoDuplicates!0 lt!459369 #b00000000000000000000000000000000 Nil!22096) e!590467)))

(declare-fun b!1042324 () Bool)

(assert (=> b!1042324 (= e!590467 e!590465)))

(declare-fun res!694611 () Bool)

(assert (=> b!1042324 (=> (not res!694611) (not e!590465))))

(assert (=> b!1042324 (= res!694611 (not e!590468))))

(declare-fun res!694610 () Bool)

(assert (=> b!1042324 (=> (not res!694610) (not e!590468))))

(assert (=> b!1042324 (= res!694610 (validKeyInArray!0 (select (arr!31599 lt!459369) #b00000000000000000000000000000000)))))

(assert (= (and d!126057 (not res!694609)) b!1042324))

(assert (= (and b!1042324 res!694610) b!1042320))

(assert (= (and b!1042324 res!694611) b!1042321))

(assert (= (and b!1042321 c!105777) b!1042323))

(assert (= (and b!1042321 (not c!105777)) b!1042322))

(assert (= (or b!1042323 b!1042322) bm!44170))

(assert (=> b!1042320 m!961777))

(assert (=> b!1042320 m!961777))

(declare-fun m!961789 () Bool)

(assert (=> b!1042320 m!961789))

(assert (=> b!1042321 m!961777))

(assert (=> b!1042321 m!961777))

(assert (=> b!1042321 m!961779))

(assert (=> bm!44170 m!961777))

(declare-fun m!961791 () Bool)

(assert (=> bm!44170 m!961791))

(assert (=> b!1042324 m!961777))

(assert (=> b!1042324 m!961777))

(assert (=> b!1042324 m!961779))

(assert (=> b!1042218 d!126057))

(declare-fun d!126059 () Bool)

(declare-fun e!590471 () Bool)

(assert (=> d!126059 e!590471))

(declare-fun res!694614 () Bool)

(assert (=> d!126059 (=> (not res!694614) (not e!590471))))

(assert (=> d!126059 (= res!694614 (and (bvsge (index!41631 lt!459372) #b00000000000000000000000000000000) (bvslt (index!41631 lt!459372) (size!32135 (_keys!11609 thiss!1427)))))))

(declare-fun lt!459420 () Unit!34046)

(declare-fun choose!25 (array!65690 (_ BitVec 32) (_ BitVec 32)) Unit!34046)

(assert (=> d!126059 (= lt!459420 (choose!25 (_keys!11609 thiss!1427) (index!41631 lt!459372) (mask!30416 thiss!1427)))))

(assert (=> d!126059 (validMask!0 (mask!30416 thiss!1427))))

(assert (=> d!126059 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11609 thiss!1427) (index!41631 lt!459372) (mask!30416 thiss!1427)) lt!459420)))

(declare-fun b!1042327 () Bool)

(assert (=> b!1042327 (= e!590471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65691 (store (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32135 (_keys!11609 thiss!1427))) (mask!30416 thiss!1427)))))

(assert (= (and d!126059 res!694614) b!1042327))

(declare-fun m!961793 () Bool)

(assert (=> d!126059 m!961793))

(assert (=> d!126059 m!961687))

(assert (=> b!1042327 m!961691))

(declare-fun m!961795 () Bool)

(assert (=> b!1042327 m!961795))

(assert (=> b!1042218 d!126059))

(declare-fun d!126061 () Bool)

(declare-fun e!590474 () Bool)

(assert (=> d!126061 e!590474))

(declare-fun res!694617 () Bool)

(assert (=> d!126061 (=> (not res!694617) (not e!590474))))

(assert (=> d!126061 (= res!694617 (bvslt (index!41631 lt!459372) (size!32135 (_keys!11609 thiss!1427))))))

(declare-fun lt!459423 () Unit!34046)

(declare-fun choose!121 (array!65690 (_ BitVec 32) (_ BitVec 64)) Unit!34046)

(assert (=> d!126061 (= lt!459423 (choose!121 (_keys!11609 thiss!1427) (index!41631 lt!459372) key!909))))

(assert (=> d!126061 (bvsge (index!41631 lt!459372) #b00000000000000000000000000000000)))

(assert (=> d!126061 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11609 thiss!1427) (index!41631 lt!459372) key!909) lt!459423)))

(declare-fun b!1042330 () Bool)

(assert (=> b!1042330 (= e!590474 (not (arrayContainsKey!0 (array!65691 (store (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32135 (_keys!11609 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126061 res!694617) b!1042330))

(declare-fun m!961797 () Bool)

(assert (=> d!126061 m!961797))

(assert (=> b!1042330 m!961691))

(declare-fun m!961799 () Bool)

(assert (=> b!1042330 m!961799))

(assert (=> b!1042218 d!126061))

(declare-fun b!1042341 () Bool)

(declare-fun e!590479 () Bool)

(assert (=> b!1042341 (= e!590479 (bvslt (size!32135 (_keys!11609 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1042339 () Bool)

(declare-fun res!694627 () Bool)

(assert (=> b!1042339 (=> (not res!694627) (not e!590479))))

(assert (=> b!1042339 (= res!694627 (validKeyInArray!0 (select (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459372))))))

(declare-fun b!1042342 () Bool)

(declare-fun e!590480 () Bool)

(assert (=> b!1042342 (= e!590480 (= (arrayCountValidKeys!0 (array!65691 (store (arr!31599 (_keys!11609 thiss!1427)) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32135 (_keys!11609 thiss!1427))) #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11609 thiss!1427) #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1042340 () Bool)

(declare-fun res!694626 () Bool)

(assert (=> b!1042340 (=> (not res!694626) (not e!590479))))

(assert (=> b!1042340 (= res!694626 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!126063 () Bool)

(assert (=> d!126063 e!590480))

(declare-fun res!694628 () Bool)

(assert (=> d!126063 (=> (not res!694628) (not e!590480))))

(assert (=> d!126063 (= res!694628 (and (bvsge (index!41631 lt!459372) #b00000000000000000000000000000000) (bvslt (index!41631 lt!459372) (size!32135 (_keys!11609 thiss!1427)))))))

(declare-fun lt!459426 () Unit!34046)

(declare-fun choose!82 (array!65690 (_ BitVec 32) (_ BitVec 64)) Unit!34046)

(assert (=> d!126063 (= lt!459426 (choose!82 (_keys!11609 thiss!1427) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126063 e!590479))

(declare-fun res!694629 () Bool)

(assert (=> d!126063 (=> (not res!694629) (not e!590479))))

(assert (=> d!126063 (= res!694629 (and (bvsge (index!41631 lt!459372) #b00000000000000000000000000000000) (bvslt (index!41631 lt!459372) (size!32135 (_keys!11609 thiss!1427)))))))

(assert (=> d!126063 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11609 thiss!1427) (index!41631 lt!459372) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459426)))

(assert (= (and d!126063 res!694629) b!1042339))

(assert (= (and b!1042339 res!694627) b!1042340))

(assert (= (and b!1042340 res!694626) b!1042341))

(assert (= (and d!126063 res!694628) b!1042342))

(declare-fun m!961801 () Bool)

(assert (=> b!1042339 m!961801))

(assert (=> b!1042339 m!961801))

(declare-fun m!961803 () Bool)

(assert (=> b!1042339 m!961803))

(assert (=> b!1042342 m!961691))

(declare-fun m!961805 () Bool)

(assert (=> b!1042342 m!961805))

(assert (=> b!1042342 m!961701))

(declare-fun m!961807 () Bool)

(assert (=> b!1042340 m!961807))

(declare-fun m!961809 () Bool)

(assert (=> d!126063 m!961809))

(assert (=> b!1042218 d!126063))

(declare-fun b!1042343 () Bool)

(declare-fun e!590481 () (_ BitVec 32))

(assert (=> b!1042343 (= e!590481 #b00000000000000000000000000000000)))

(declare-fun b!1042344 () Bool)

(declare-fun e!590482 () (_ BitVec 32))

(declare-fun call!44174 () (_ BitVec 32))

(assert (=> b!1042344 (= e!590482 call!44174)))

(declare-fun b!1042345 () Bool)

(assert (=> b!1042345 (= e!590481 e!590482)))

(declare-fun c!105779 () Bool)

(assert (=> b!1042345 (= c!105779 (validKeyInArray!0 (select (arr!31599 (_keys!11609 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44171 () Bool)

(assert (=> bm!44171 (= call!44174 (arrayCountValidKeys!0 (_keys!11609 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32135 (_keys!11609 thiss!1427))))))

(declare-fun b!1042346 () Bool)

(assert (=> b!1042346 (= e!590482 (bvadd #b00000000000000000000000000000001 call!44174))))

(declare-fun d!126065 () Bool)

(declare-fun lt!459427 () (_ BitVec 32))

(assert (=> d!126065 (and (bvsge lt!459427 #b00000000000000000000000000000000) (bvsle lt!459427 (bvsub (size!32135 (_keys!11609 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126065 (= lt!459427 e!590481)))

(declare-fun c!105778 () Bool)

(assert (=> d!126065 (= c!105778 (bvsge #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))))))

(assert (=> d!126065 (and (bvsle #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32135 (_keys!11609 thiss!1427)) (size!32135 (_keys!11609 thiss!1427))))))

(assert (=> d!126065 (= (arrayCountValidKeys!0 (_keys!11609 thiss!1427) #b00000000000000000000000000000000 (size!32135 (_keys!11609 thiss!1427))) lt!459427)))

(assert (= (and d!126065 c!105778) b!1042343))

(assert (= (and d!126065 (not c!105778)) b!1042345))

(assert (= (and b!1042345 c!105779) b!1042346))

(assert (= (and b!1042345 (not c!105779)) b!1042344))

(assert (= (or b!1042346 b!1042344) bm!44171))

(assert (=> b!1042345 m!961751))

(assert (=> b!1042345 m!961751))

(assert (=> b!1042345 m!961761))

(declare-fun m!961811 () Bool)

(assert (=> bm!44171 m!961811))

(assert (=> b!1042218 d!126065))

(declare-fun b!1042347 () Bool)

(declare-fun e!590484 () Bool)

(declare-fun e!590485 () Bool)

(assert (=> b!1042347 (= e!590484 e!590485)))

(declare-fun lt!459429 () (_ BitVec 64))

(assert (=> b!1042347 (= lt!459429 (select (arr!31599 lt!459369) #b00000000000000000000000000000000))))

(declare-fun lt!459428 () Unit!34046)

(assert (=> b!1042347 (= lt!459428 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459369 lt!459429 #b00000000000000000000000000000000))))

(assert (=> b!1042347 (arrayContainsKey!0 lt!459369 lt!459429 #b00000000000000000000000000000000)))

(declare-fun lt!459430 () Unit!34046)

(assert (=> b!1042347 (= lt!459430 lt!459428)))

(declare-fun res!694631 () Bool)

(assert (=> b!1042347 (= res!694631 (= (seekEntryOrOpen!0 (select (arr!31599 lt!459369) #b00000000000000000000000000000000) lt!459369 (mask!30416 thiss!1427)) (Found!9815 #b00000000000000000000000000000000)))))

(assert (=> b!1042347 (=> (not res!694631) (not e!590485))))

(declare-fun b!1042348 () Bool)

(declare-fun call!44175 () Bool)

(assert (=> b!1042348 (= e!590485 call!44175)))

(declare-fun bm!44172 () Bool)

(assert (=> bm!44172 (= call!44175 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459369 (mask!30416 thiss!1427)))))

(declare-fun b!1042349 () Bool)

(declare-fun e!590483 () Bool)

(assert (=> b!1042349 (= e!590483 e!590484)))

(declare-fun c!105780 () Bool)

(assert (=> b!1042349 (= c!105780 (validKeyInArray!0 (select (arr!31599 lt!459369) #b00000000000000000000000000000000)))))

(declare-fun b!1042350 () Bool)

(assert (=> b!1042350 (= e!590484 call!44175)))

(declare-fun d!126067 () Bool)

(declare-fun res!694630 () Bool)

(assert (=> d!126067 (=> res!694630 e!590483)))

(assert (=> d!126067 (= res!694630 (bvsge #b00000000000000000000000000000000 (size!32135 lt!459369)))))

(assert (=> d!126067 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459369 (mask!30416 thiss!1427)) e!590483)))

(assert (= (and d!126067 (not res!694630)) b!1042349))

(assert (= (and b!1042349 c!105780) b!1042347))

(assert (= (and b!1042349 (not c!105780)) b!1042350))

(assert (= (and b!1042347 res!694631) b!1042348))

(assert (= (or b!1042348 b!1042350) bm!44172))

(assert (=> b!1042347 m!961777))

(declare-fun m!961813 () Bool)

(assert (=> b!1042347 m!961813))

(declare-fun m!961815 () Bool)

(assert (=> b!1042347 m!961815))

(assert (=> b!1042347 m!961777))

(declare-fun m!961817 () Bool)

(assert (=> b!1042347 m!961817))

(declare-fun m!961819 () Bool)

(assert (=> bm!44172 m!961819))

(assert (=> b!1042349 m!961777))

(assert (=> b!1042349 m!961777))

(assert (=> b!1042349 m!961779))

(assert (=> b!1042218 d!126067))

(declare-fun condMapEmpty!38777 () Bool)

(declare-fun mapDefault!38777 () ValueCell!11685)

(assert (=> mapNonEmpty!38771 (= condMapEmpty!38777 (= mapRest!38771 ((as const (Array (_ BitVec 32) ValueCell!11685)) mapDefault!38777)))))

(declare-fun e!590491 () Bool)

(declare-fun mapRes!38777 () Bool)

(assert (=> mapNonEmpty!38771 (= tp!74394 (and e!590491 mapRes!38777))))

(declare-fun b!1042358 () Bool)

(assert (=> b!1042358 (= e!590491 tp_is_empty!24777)))

(declare-fun mapNonEmpty!38777 () Bool)

(declare-fun tp!74404 () Bool)

(declare-fun e!590490 () Bool)

(assert (=> mapNonEmpty!38777 (= mapRes!38777 (and tp!74404 e!590490))))

(declare-fun mapRest!38777 () (Array (_ BitVec 32) ValueCell!11685))

(declare-fun mapKey!38777 () (_ BitVec 32))

(declare-fun mapValue!38777 () ValueCell!11685)

(assert (=> mapNonEmpty!38777 (= mapRest!38771 (store mapRest!38777 mapKey!38777 mapValue!38777))))

(declare-fun mapIsEmpty!38777 () Bool)

(assert (=> mapIsEmpty!38777 mapRes!38777))

(declare-fun b!1042357 () Bool)

(assert (=> b!1042357 (= e!590490 tp_is_empty!24777)))

(assert (= (and mapNonEmpty!38771 condMapEmpty!38777) mapIsEmpty!38777))

(assert (= (and mapNonEmpty!38771 (not condMapEmpty!38777)) mapNonEmpty!38777))

(assert (= (and mapNonEmpty!38777 ((_ is ValueCellFull!11685) mapValue!38777)) b!1042357))

(assert (= (and mapNonEmpty!38771 ((_ is ValueCellFull!11685) mapDefault!38777)) b!1042358))

(declare-fun m!961821 () Bool)

(assert (=> mapNonEmpty!38777 m!961821))

(check-sat (not b!1042320) (not b!1042309) (not bm!44171) (not b!1042268) (not bm!44167) (not d!126041) b_and!33607 (not b!1042321) (not b!1042260) (not d!126059) (not b!1042347) (not b!1042306) (not b!1042269) (not b!1042345) (not b_next!21057) (not b!1042270) (not mapNonEmpty!38777) (not d!126061) tp_is_empty!24777 (not b!1042258) (not b!1042299) (not b!1042285) (not d!126053) (not b!1042327) (not b!1042330) (not d!126047) (not b!1042342) (not b!1042324) (not b!1042339) (not b!1042349) (not bm!44170) (not b!1042340) (not bm!44164) (not d!126063) (not bm!44172))
(check-sat b_and!33607 (not b_next!21057))
