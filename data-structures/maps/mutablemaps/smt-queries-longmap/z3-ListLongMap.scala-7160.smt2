; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91206 () Bool)

(assert start!91206)

(declare-fun b!1040463 () Bool)

(declare-fun b_free!21015 () Bool)

(declare-fun b_next!21015 () Bool)

(assert (=> b!1040463 (= b_free!21015 (not b_next!21015))))

(declare-fun tp!74243 () Bool)

(declare-fun b_and!33565 () Bool)

(assert (=> b!1040463 (= tp!74243 b_and!33565)))

(declare-fun e!589119 () Bool)

(declare-fun e!589120 () Bool)

(declare-fun tp_is_empty!24735 () Bool)

(declare-datatypes ((V!37853 0))(
  ( (V!37854 (val!12418 Int)) )
))
(declare-datatypes ((ValueCell!11664 0))(
  ( (ValueCellFull!11664 (v!15006 V!37853)) (EmptyCell!11664) )
))
(declare-datatypes ((array!65592 0))(
  ( (array!65593 (arr!31557 (Array (_ BitVec 32) (_ BitVec 64))) (size!32089 (_ BitVec 32))) )
))
(declare-datatypes ((array!65594 0))(
  ( (array!65595 (arr!31558 (Array (_ BitVec 32) ValueCell!11664)) (size!32090 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5922 0))(
  ( (LongMapFixedSize!5923 (defaultEntry!6343 Int) (mask!30334 (_ BitVec 32)) (extraKeys!6071 (_ BitVec 32)) (zeroValue!6177 V!37853) (minValue!6177 V!37853) (_size!3016 (_ BitVec 32)) (_keys!11562 array!65592) (_values!6366 array!65594) (_vacant!3016 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5922)

(declare-fun array_inv!24227 (array!65592) Bool)

(declare-fun array_inv!24228 (array!65594) Bool)

(assert (=> b!1040463 (= e!589120 (and tp!74243 tp_is_empty!24735 (array_inv!24227 (_keys!11562 thiss!1427)) (array_inv!24228 (_values!6366 thiss!1427)) e!589119))))

(declare-fun res!693760 () Bool)

(declare-fun e!589118 () Bool)

(assert (=> start!91206 (=> (not res!693760) (not e!589118))))

(declare-fun valid!2179 (LongMapFixedSize!5922) Bool)

(assert (=> start!91206 (= res!693760 (valid!2179 thiss!1427))))

(assert (=> start!91206 e!589118))

(assert (=> start!91206 e!589120))

(assert (=> start!91206 true))

(declare-fun b!1040464 () Bool)

(declare-fun e!589116 () Bool)

(assert (=> b!1040464 (= e!589116 tp_is_empty!24735)))

(declare-fun b!1040465 () Bool)

(declare-fun res!693758 () Bool)

(declare-fun e!589117 () Bool)

(assert (=> b!1040465 (=> res!693758 e!589117)))

(declare-datatypes ((List!22082 0))(
  ( (Nil!22079) (Cons!22078 (h!23282 (_ BitVec 64)) (t!31303 List!22082)) )
))
(declare-fun arrayNoDuplicates!0 (array!65592 (_ BitVec 32) List!22082) Bool)

(assert (=> b!1040465 (= res!693758 (not (arrayNoDuplicates!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 Nil!22079)))))

(declare-fun b!1040466 () Bool)

(declare-datatypes ((SeekEntryResult!9797 0))(
  ( (MissingZero!9797 (index!41558 (_ BitVec 32))) (Found!9797 (index!41559 (_ BitVec 32))) (Intermediate!9797 (undefined!10609 Bool) (index!41560 (_ BitVec 32)) (x!92880 (_ BitVec 32))) (Undefined!9797) (MissingVacant!9797 (index!41561 (_ BitVec 32))) )
))
(declare-fun lt!458559 () SeekEntryResult!9797)

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1040466 (= e!589117 (= (select (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458559)) key!909))))

(declare-fun b!1040467 () Bool)

(declare-fun e!589121 () Bool)

(assert (=> b!1040467 (= e!589121 tp_is_empty!24735)))

(declare-fun mapIsEmpty!38683 () Bool)

(declare-fun mapRes!38683 () Bool)

(assert (=> mapIsEmpty!38683 mapRes!38683))

(declare-fun b!1040468 () Bool)

(assert (=> b!1040468 (= e!589119 (and e!589116 mapRes!38683))))

(declare-fun condMapEmpty!38683 () Bool)

(declare-fun mapDefault!38683 () ValueCell!11664)

(assert (=> b!1040468 (= condMapEmpty!38683 (= (arr!31558 (_values!6366 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11664)) mapDefault!38683)))))

(declare-fun b!1040469 () Bool)

(declare-fun e!589115 () Bool)

(assert (=> b!1040469 (= e!589118 e!589115)))

(declare-fun res!693756 () Bool)

(assert (=> b!1040469 (=> (not res!693756) (not e!589115))))

(get-info :version)

(assert (=> b!1040469 (= res!693756 ((_ is Found!9797) lt!458559))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65592 (_ BitVec 32)) SeekEntryResult!9797)

(assert (=> b!1040469 (= lt!458559 (seekEntry!0 key!909 (_keys!11562 thiss!1427) (mask!30334 thiss!1427)))))

(declare-fun b!1040470 () Bool)

(declare-fun res!693757 () Bool)

(assert (=> b!1040470 (=> (not res!693757) (not e!589118))))

(assert (=> b!1040470 (= res!693757 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38683 () Bool)

(declare-fun tp!74244 () Bool)

(assert (=> mapNonEmpty!38683 (= mapRes!38683 (and tp!74244 e!589121))))

(declare-fun mapValue!38683 () ValueCell!11664)

(declare-fun mapKey!38683 () (_ BitVec 32))

(declare-fun mapRest!38683 () (Array (_ BitVec 32) ValueCell!11664))

(assert (=> mapNonEmpty!38683 (= (arr!31558 (_values!6366 thiss!1427)) (store mapRest!38683 mapKey!38683 mapValue!38683))))

(declare-fun b!1040471 () Bool)

(declare-fun res!693761 () Bool)

(assert (=> b!1040471 (=> res!693761 e!589117)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040471 (= res!693761 (not (validKeyInArray!0 key!909)))))

(declare-fun b!1040472 () Bool)

(assert (=> b!1040472 (= e!589115 (not e!589117))))

(declare-fun res!693759 () Bool)

(assert (=> b!1040472 (=> res!693759 e!589117)))

(assert (=> b!1040472 (= res!693759 (or (bvslt (index!41559 lt!458559) #b00000000000000000000000000000000) (bvsge (index!41559 lt!458559) (size!32089 (_keys!11562 thiss!1427))) (bvsge (size!32089 (_keys!11562 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!458557 () array!65592)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65592 (_ BitVec 32)) Bool)

(assert (=> b!1040472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458557 (mask!30334 thiss!1427))))

(declare-datatypes ((Unit!34012 0))(
  ( (Unit!34013) )
))
(declare-fun lt!458561 () Unit!34012)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65592 (_ BitVec 32) (_ BitVec 32)) Unit!34012)

(assert (=> b!1040472 (= lt!458561 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11562 thiss!1427) (index!41559 lt!458559) (mask!30334 thiss!1427)))))

(assert (=> b!1040472 (arrayNoDuplicates!0 lt!458557 #b00000000000000000000000000000000 Nil!22079)))

(declare-fun lt!458560 () Unit!34012)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65592 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22082) Unit!34012)

(assert (=> b!1040472 (= lt!458560 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11562 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41559 lt!458559) #b00000000000000000000000000000000 Nil!22079))))

(declare-fun arrayCountValidKeys!0 (array!65592 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040472 (= (arrayCountValidKeys!0 lt!458557 #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040472 (= lt!458557 (array!65593 (store (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32089 (_keys!11562 thiss!1427))))))

(declare-fun lt!458558 () Unit!34012)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65592 (_ BitVec 32) (_ BitVec 64)) Unit!34012)

(assert (=> b!1040472 (= lt!458558 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11562 thiss!1427) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!91206 res!693760) b!1040470))

(assert (= (and b!1040470 res!693757) b!1040469))

(assert (= (and b!1040469 res!693756) b!1040472))

(assert (= (and b!1040472 (not res!693759)) b!1040465))

(assert (= (and b!1040465 (not res!693758)) b!1040471))

(assert (= (and b!1040471 (not res!693761)) b!1040466))

(assert (= (and b!1040468 condMapEmpty!38683) mapIsEmpty!38683))

(assert (= (and b!1040468 (not condMapEmpty!38683)) mapNonEmpty!38683))

(assert (= (and mapNonEmpty!38683 ((_ is ValueCellFull!11664) mapValue!38683)) b!1040467))

(assert (= (and b!1040468 ((_ is ValueCellFull!11664) mapDefault!38683)) b!1040464))

(assert (= b!1040463 b!1040468))

(assert (= start!91206 b!1040463))

(declare-fun m!960143 () Bool)

(assert (=> b!1040472 m!960143))

(declare-fun m!960145 () Bool)

(assert (=> b!1040472 m!960145))

(declare-fun m!960147 () Bool)

(assert (=> b!1040472 m!960147))

(declare-fun m!960149 () Bool)

(assert (=> b!1040472 m!960149))

(declare-fun m!960151 () Bool)

(assert (=> b!1040472 m!960151))

(declare-fun m!960153 () Bool)

(assert (=> b!1040472 m!960153))

(declare-fun m!960155 () Bool)

(assert (=> b!1040472 m!960155))

(declare-fun m!960157 () Bool)

(assert (=> b!1040472 m!960157))

(declare-fun m!960159 () Bool)

(assert (=> mapNonEmpty!38683 m!960159))

(declare-fun m!960161 () Bool)

(assert (=> b!1040469 m!960161))

(declare-fun m!960163 () Bool)

(assert (=> b!1040466 m!960163))

(declare-fun m!960165 () Bool)

(assert (=> start!91206 m!960165))

(declare-fun m!960167 () Bool)

(assert (=> b!1040465 m!960167))

(declare-fun m!960169 () Bool)

(assert (=> b!1040463 m!960169))

(declare-fun m!960171 () Bool)

(assert (=> b!1040463 m!960171))

(declare-fun m!960173 () Bool)

(assert (=> b!1040471 m!960173))

(check-sat (not b!1040469) (not start!91206) b_and!33565 (not b!1040465) (not b_next!21015) (not b!1040463) (not b!1040471) tp_is_empty!24735 (not b!1040472) (not mapNonEmpty!38683))
(check-sat b_and!33565 (not b_next!21015))
(get-model)

(declare-fun b!1040511 () Bool)

(declare-fun res!693789 () Bool)

(declare-fun e!589151 () Bool)

(assert (=> b!1040511 (=> (not res!693789) (not e!589151))))

(assert (=> b!1040511 (= res!693789 (validKeyInArray!0 (select (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458559))))))

(declare-fun b!1040514 () Bool)

(declare-fun e!589152 () Bool)

(assert (=> b!1040514 (= e!589152 (= (arrayCountValidKeys!0 (array!65593 (store (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32089 (_keys!11562 thiss!1427))) #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1040512 () Bool)

(declare-fun res!693788 () Bool)

(assert (=> b!1040512 (=> (not res!693788) (not e!589151))))

(assert (=> b!1040512 (= res!693788 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!125615 () Bool)

(assert (=> d!125615 e!589152))

(declare-fun res!693791 () Bool)

(assert (=> d!125615 (=> (not res!693791) (not e!589152))))

(assert (=> d!125615 (= res!693791 (and (bvsge (index!41559 lt!458559) #b00000000000000000000000000000000) (bvslt (index!41559 lt!458559) (size!32089 (_keys!11562 thiss!1427)))))))

(declare-fun lt!458579 () Unit!34012)

(declare-fun choose!82 (array!65592 (_ BitVec 32) (_ BitVec 64)) Unit!34012)

(assert (=> d!125615 (= lt!458579 (choose!82 (_keys!11562 thiss!1427) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125615 e!589151))

(declare-fun res!693790 () Bool)

(assert (=> d!125615 (=> (not res!693790) (not e!589151))))

(assert (=> d!125615 (= res!693790 (and (bvsge (index!41559 lt!458559) #b00000000000000000000000000000000) (bvslt (index!41559 lt!458559) (size!32089 (_keys!11562 thiss!1427)))))))

(assert (=> d!125615 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11562 thiss!1427) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458579)))

(declare-fun b!1040513 () Bool)

(assert (=> b!1040513 (= e!589151 (bvslt (size!32089 (_keys!11562 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!125615 res!693790) b!1040511))

(assert (= (and b!1040511 res!693789) b!1040512))

(assert (= (and b!1040512 res!693788) b!1040513))

(assert (= (and d!125615 res!693791) b!1040514))

(assert (=> b!1040511 m!960163))

(assert (=> b!1040511 m!960163))

(declare-fun m!960207 () Bool)

(assert (=> b!1040511 m!960207))

(assert (=> b!1040514 m!960143))

(declare-fun m!960209 () Bool)

(assert (=> b!1040514 m!960209))

(assert (=> b!1040514 m!960149))

(declare-fun m!960211 () Bool)

(assert (=> b!1040512 m!960211))

(declare-fun m!960213 () Bool)

(assert (=> d!125615 m!960213))

(assert (=> b!1040472 d!125615))

(declare-fun b!1040523 () Bool)

(declare-fun e!589160 () Bool)

(declare-fun e!589161 () Bool)

(assert (=> b!1040523 (= e!589160 e!589161)))

(declare-fun lt!458586 () (_ BitVec 64))

(assert (=> b!1040523 (= lt!458586 (select (arr!31557 lt!458557) #b00000000000000000000000000000000))))

(declare-fun lt!458587 () Unit!34012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65592 (_ BitVec 64) (_ BitVec 32)) Unit!34012)

(assert (=> b!1040523 (= lt!458587 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458557 lt!458586 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040523 (arrayContainsKey!0 lt!458557 lt!458586 #b00000000000000000000000000000000)))

(declare-fun lt!458588 () Unit!34012)

(assert (=> b!1040523 (= lt!458588 lt!458587)))

(declare-fun res!693797 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65592 (_ BitVec 32)) SeekEntryResult!9797)

(assert (=> b!1040523 (= res!693797 (= (seekEntryOrOpen!0 (select (arr!31557 lt!458557) #b00000000000000000000000000000000) lt!458557 (mask!30334 thiss!1427)) (Found!9797 #b00000000000000000000000000000000)))))

(assert (=> b!1040523 (=> (not res!693797) (not e!589161))))

(declare-fun b!1040524 () Bool)

(declare-fun call!44060 () Bool)

(assert (=> b!1040524 (= e!589161 call!44060)))

(declare-fun d!125617 () Bool)

(declare-fun res!693796 () Bool)

(declare-fun e!589159 () Bool)

(assert (=> d!125617 (=> res!693796 e!589159)))

(assert (=> d!125617 (= res!693796 (bvsge #b00000000000000000000000000000000 (size!32089 lt!458557)))))

(assert (=> d!125617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458557 (mask!30334 thiss!1427)) e!589159)))

(declare-fun bm!44057 () Bool)

(assert (=> bm!44057 (= call!44060 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458557 (mask!30334 thiss!1427)))))

(declare-fun b!1040525 () Bool)

(assert (=> b!1040525 (= e!589159 e!589160)))

(declare-fun c!105441 () Bool)

(assert (=> b!1040525 (= c!105441 (validKeyInArray!0 (select (arr!31557 lt!458557) #b00000000000000000000000000000000)))))

(declare-fun b!1040526 () Bool)

(assert (=> b!1040526 (= e!589160 call!44060)))

(assert (= (and d!125617 (not res!693796)) b!1040525))

(assert (= (and b!1040525 c!105441) b!1040523))

(assert (= (and b!1040525 (not c!105441)) b!1040526))

(assert (= (and b!1040523 res!693797) b!1040524))

(assert (= (or b!1040524 b!1040526) bm!44057))

(declare-fun m!960215 () Bool)

(assert (=> b!1040523 m!960215))

(declare-fun m!960217 () Bool)

(assert (=> b!1040523 m!960217))

(declare-fun m!960219 () Bool)

(assert (=> b!1040523 m!960219))

(assert (=> b!1040523 m!960215))

(declare-fun m!960221 () Bool)

(assert (=> b!1040523 m!960221))

(declare-fun m!960223 () Bool)

(assert (=> bm!44057 m!960223))

(assert (=> b!1040525 m!960215))

(assert (=> b!1040525 m!960215))

(declare-fun m!960225 () Bool)

(assert (=> b!1040525 m!960225))

(assert (=> b!1040472 d!125617))

(declare-fun bm!44060 () Bool)

(declare-fun call!44063 () (_ BitVec 32))

(assert (=> bm!44060 (= call!44063 (arrayCountValidKeys!0 (_keys!11562 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32089 (_keys!11562 thiss!1427))))))

(declare-fun d!125619 () Bool)

(declare-fun lt!458591 () (_ BitVec 32))

(assert (=> d!125619 (and (bvsge lt!458591 #b00000000000000000000000000000000) (bvsle lt!458591 (bvsub (size!32089 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!589166 () (_ BitVec 32))

(assert (=> d!125619 (= lt!458591 e!589166)))

(declare-fun c!105446 () Bool)

(assert (=> d!125619 (= c!105446 (bvsge #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))))))

(assert (=> d!125619 (and (bvsle #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32089 (_keys!11562 thiss!1427)) (size!32089 (_keys!11562 thiss!1427))))))

(assert (=> d!125619 (= (arrayCountValidKeys!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) lt!458591)))

(declare-fun b!1040535 () Bool)

(declare-fun e!589167 () (_ BitVec 32))

(assert (=> b!1040535 (= e!589167 (bvadd #b00000000000000000000000000000001 call!44063))))

(declare-fun b!1040536 () Bool)

(assert (=> b!1040536 (= e!589166 #b00000000000000000000000000000000)))

(declare-fun b!1040537 () Bool)

(assert (=> b!1040537 (= e!589167 call!44063)))

(declare-fun b!1040538 () Bool)

(assert (=> b!1040538 (= e!589166 e!589167)))

(declare-fun c!105447 () Bool)

(assert (=> b!1040538 (= c!105447 (validKeyInArray!0 (select (arr!31557 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125619 c!105446) b!1040536))

(assert (= (and d!125619 (not c!105446)) b!1040538))

(assert (= (and b!1040538 c!105447) b!1040535))

(assert (= (and b!1040538 (not c!105447)) b!1040537))

(assert (= (or b!1040535 b!1040537) bm!44060))

(declare-fun m!960227 () Bool)

(assert (=> bm!44060 m!960227))

(declare-fun m!960229 () Bool)

(assert (=> b!1040538 m!960229))

(assert (=> b!1040538 m!960229))

(declare-fun m!960231 () Bool)

(assert (=> b!1040538 m!960231))

(assert (=> b!1040472 d!125619))

(declare-fun d!125621 () Bool)

(declare-fun e!589170 () Bool)

(assert (=> d!125621 e!589170))

(declare-fun res!693800 () Bool)

(assert (=> d!125621 (=> (not res!693800) (not e!589170))))

(assert (=> d!125621 (= res!693800 (and (bvsge (index!41559 lt!458559) #b00000000000000000000000000000000) (bvslt (index!41559 lt!458559) (size!32089 (_keys!11562 thiss!1427)))))))

(declare-fun lt!458594 () Unit!34012)

(declare-fun choose!53 (array!65592 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22082) Unit!34012)

(assert (=> d!125621 (= lt!458594 (choose!53 (_keys!11562 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41559 lt!458559) #b00000000000000000000000000000000 Nil!22079))))

(assert (=> d!125621 (bvslt (size!32089 (_keys!11562 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125621 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11562 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41559 lt!458559) #b00000000000000000000000000000000 Nil!22079) lt!458594)))

(declare-fun b!1040541 () Bool)

(assert (=> b!1040541 (= e!589170 (arrayNoDuplicates!0 (array!65593 (store (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32089 (_keys!11562 thiss!1427))) #b00000000000000000000000000000000 Nil!22079))))

(assert (= (and d!125621 res!693800) b!1040541))

(declare-fun m!960233 () Bool)

(assert (=> d!125621 m!960233))

(assert (=> b!1040541 m!960143))

(declare-fun m!960235 () Bool)

(assert (=> b!1040541 m!960235))

(assert (=> b!1040472 d!125621))

(declare-fun d!125623 () Bool)

(declare-fun e!589173 () Bool)

(assert (=> d!125623 e!589173))

(declare-fun res!693803 () Bool)

(assert (=> d!125623 (=> (not res!693803) (not e!589173))))

(assert (=> d!125623 (= res!693803 (and (bvsge (index!41559 lt!458559) #b00000000000000000000000000000000) (bvslt (index!41559 lt!458559) (size!32089 (_keys!11562 thiss!1427)))))))

(declare-fun lt!458597 () Unit!34012)

(declare-fun choose!25 (array!65592 (_ BitVec 32) (_ BitVec 32)) Unit!34012)

(assert (=> d!125623 (= lt!458597 (choose!25 (_keys!11562 thiss!1427) (index!41559 lt!458559) (mask!30334 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125623 (validMask!0 (mask!30334 thiss!1427))))

(assert (=> d!125623 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11562 thiss!1427) (index!41559 lt!458559) (mask!30334 thiss!1427)) lt!458597)))

(declare-fun b!1040544 () Bool)

(assert (=> b!1040544 (= e!589173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65593 (store (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458559) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32089 (_keys!11562 thiss!1427))) (mask!30334 thiss!1427)))))

(assert (= (and d!125623 res!693803) b!1040544))

(declare-fun m!960237 () Bool)

(assert (=> d!125623 m!960237))

(declare-fun m!960239 () Bool)

(assert (=> d!125623 m!960239))

(assert (=> b!1040544 m!960143))

(declare-fun m!960241 () Bool)

(assert (=> b!1040544 m!960241))

(assert (=> b!1040472 d!125623))

(declare-fun bm!44061 () Bool)

(declare-fun call!44064 () (_ BitVec 32))

(assert (=> bm!44061 (= call!44064 (arrayCountValidKeys!0 lt!458557 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32089 (_keys!11562 thiss!1427))))))

(declare-fun d!125625 () Bool)

(declare-fun lt!458598 () (_ BitVec 32))

(assert (=> d!125625 (and (bvsge lt!458598 #b00000000000000000000000000000000) (bvsle lt!458598 (bvsub (size!32089 lt!458557) #b00000000000000000000000000000000)))))

(declare-fun e!589174 () (_ BitVec 32))

(assert (=> d!125625 (= lt!458598 e!589174)))

(declare-fun c!105448 () Bool)

(assert (=> d!125625 (= c!105448 (bvsge #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))))))

(assert (=> d!125625 (and (bvsle #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32089 (_keys!11562 thiss!1427)) (size!32089 lt!458557)))))

(assert (=> d!125625 (= (arrayCountValidKeys!0 lt!458557 #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) lt!458598)))

(declare-fun b!1040545 () Bool)

(declare-fun e!589175 () (_ BitVec 32))

(assert (=> b!1040545 (= e!589175 (bvadd #b00000000000000000000000000000001 call!44064))))

(declare-fun b!1040546 () Bool)

(assert (=> b!1040546 (= e!589174 #b00000000000000000000000000000000)))

(declare-fun b!1040547 () Bool)

(assert (=> b!1040547 (= e!589175 call!44064)))

(declare-fun b!1040548 () Bool)

(assert (=> b!1040548 (= e!589174 e!589175)))

(declare-fun c!105449 () Bool)

(assert (=> b!1040548 (= c!105449 (validKeyInArray!0 (select (arr!31557 lt!458557) #b00000000000000000000000000000000)))))

(assert (= (and d!125625 c!105448) b!1040546))

(assert (= (and d!125625 (not c!105448)) b!1040548))

(assert (= (and b!1040548 c!105449) b!1040545))

(assert (= (and b!1040548 (not c!105449)) b!1040547))

(assert (= (or b!1040545 b!1040547) bm!44061))

(declare-fun m!960243 () Bool)

(assert (=> bm!44061 m!960243))

(assert (=> b!1040548 m!960215))

(assert (=> b!1040548 m!960215))

(assert (=> b!1040548 m!960225))

(assert (=> b!1040472 d!125625))

(declare-fun b!1040559 () Bool)

(declare-fun e!589185 () Bool)

(declare-fun e!589184 () Bool)

(assert (=> b!1040559 (= e!589185 e!589184)))

(declare-fun c!105452 () Bool)

(assert (=> b!1040559 (= c!105452 (validKeyInArray!0 (select (arr!31557 lt!458557) #b00000000000000000000000000000000)))))

(declare-fun b!1040560 () Bool)

(declare-fun e!589186 () Bool)

(assert (=> b!1040560 (= e!589186 e!589185)))

(declare-fun res!693812 () Bool)

(assert (=> b!1040560 (=> (not res!693812) (not e!589185))))

(declare-fun e!589187 () Bool)

(assert (=> b!1040560 (= res!693812 (not e!589187))))

(declare-fun res!693810 () Bool)

(assert (=> b!1040560 (=> (not res!693810) (not e!589187))))

(assert (=> b!1040560 (= res!693810 (validKeyInArray!0 (select (arr!31557 lt!458557) #b00000000000000000000000000000000)))))

(declare-fun b!1040561 () Bool)

(declare-fun call!44067 () Bool)

(assert (=> b!1040561 (= e!589184 call!44067)))

(declare-fun d!125627 () Bool)

(declare-fun res!693811 () Bool)

(assert (=> d!125627 (=> res!693811 e!589186)))

(assert (=> d!125627 (= res!693811 (bvsge #b00000000000000000000000000000000 (size!32089 lt!458557)))))

(assert (=> d!125627 (= (arrayNoDuplicates!0 lt!458557 #b00000000000000000000000000000000 Nil!22079) e!589186)))

(declare-fun bm!44064 () Bool)

(assert (=> bm!44064 (= call!44067 (arrayNoDuplicates!0 lt!458557 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105452 (Cons!22078 (select (arr!31557 lt!458557) #b00000000000000000000000000000000) Nil!22079) Nil!22079)))))

(declare-fun b!1040562 () Bool)

(declare-fun contains!6073 (List!22082 (_ BitVec 64)) Bool)

(assert (=> b!1040562 (= e!589187 (contains!6073 Nil!22079 (select (arr!31557 lt!458557) #b00000000000000000000000000000000)))))

(declare-fun b!1040563 () Bool)

(assert (=> b!1040563 (= e!589184 call!44067)))

(assert (= (and d!125627 (not res!693811)) b!1040560))

(assert (= (and b!1040560 res!693810) b!1040562))

(assert (= (and b!1040560 res!693812) b!1040559))

(assert (= (and b!1040559 c!105452) b!1040561))

(assert (= (and b!1040559 (not c!105452)) b!1040563))

(assert (= (or b!1040561 b!1040563) bm!44064))

(assert (=> b!1040559 m!960215))

(assert (=> b!1040559 m!960215))

(assert (=> b!1040559 m!960225))

(assert (=> b!1040560 m!960215))

(assert (=> b!1040560 m!960215))

(assert (=> b!1040560 m!960225))

(assert (=> bm!44064 m!960215))

(declare-fun m!960245 () Bool)

(assert (=> bm!44064 m!960245))

(assert (=> b!1040562 m!960215))

(assert (=> b!1040562 m!960215))

(declare-fun m!960247 () Bool)

(assert (=> b!1040562 m!960247))

(assert (=> b!1040472 d!125627))

(declare-fun d!125629 () Bool)

(assert (=> d!125629 (= (array_inv!24227 (_keys!11562 thiss!1427)) (bvsge (size!32089 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040463 d!125629))

(declare-fun d!125631 () Bool)

(assert (=> d!125631 (= (array_inv!24228 (_values!6366 thiss!1427)) (bvsge (size!32090 (_values!6366 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040463 d!125631))

(declare-fun b!1040576 () Bool)

(declare-fun e!589196 () SeekEntryResult!9797)

(declare-fun lt!458609 () SeekEntryResult!9797)

(assert (=> b!1040576 (= e!589196 (ite ((_ is MissingVacant!9797) lt!458609) (MissingZero!9797 (index!41561 lt!458609)) lt!458609))))

(declare-fun lt!458607 () SeekEntryResult!9797)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65592 (_ BitVec 32)) SeekEntryResult!9797)

(assert (=> b!1040576 (= lt!458609 (seekKeyOrZeroReturnVacant!0 (x!92880 lt!458607) (index!41560 lt!458607) (index!41560 lt!458607) key!909 (_keys!11562 thiss!1427) (mask!30334 thiss!1427)))))

(declare-fun b!1040577 () Bool)

(declare-fun e!589194 () SeekEntryResult!9797)

(assert (=> b!1040577 (= e!589194 Undefined!9797)))

(declare-fun b!1040578 () Bool)

(assert (=> b!1040578 (= e!589196 (MissingZero!9797 (index!41560 lt!458607)))))

(declare-fun d!125633 () Bool)

(declare-fun lt!458608 () SeekEntryResult!9797)

(assert (=> d!125633 (and (or ((_ is MissingVacant!9797) lt!458608) (not ((_ is Found!9797) lt!458608)) (and (bvsge (index!41559 lt!458608) #b00000000000000000000000000000000) (bvslt (index!41559 lt!458608) (size!32089 (_keys!11562 thiss!1427))))) (not ((_ is MissingVacant!9797) lt!458608)) (or (not ((_ is Found!9797) lt!458608)) (= (select (arr!31557 (_keys!11562 thiss!1427)) (index!41559 lt!458608)) key!909)))))

(assert (=> d!125633 (= lt!458608 e!589194)))

(declare-fun c!105461 () Bool)

(assert (=> d!125633 (= c!105461 (and ((_ is Intermediate!9797) lt!458607) (undefined!10609 lt!458607)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65592 (_ BitVec 32)) SeekEntryResult!9797)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125633 (= lt!458607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30334 thiss!1427)) key!909 (_keys!11562 thiss!1427) (mask!30334 thiss!1427)))))

(assert (=> d!125633 (validMask!0 (mask!30334 thiss!1427))))

(assert (=> d!125633 (= (seekEntry!0 key!909 (_keys!11562 thiss!1427) (mask!30334 thiss!1427)) lt!458608)))

(declare-fun b!1040579 () Bool)

(declare-fun e!589195 () SeekEntryResult!9797)

(assert (=> b!1040579 (= e!589195 (Found!9797 (index!41560 lt!458607)))))

(declare-fun b!1040580 () Bool)

(assert (=> b!1040580 (= e!589194 e!589195)))

(declare-fun lt!458610 () (_ BitVec 64))

(assert (=> b!1040580 (= lt!458610 (select (arr!31557 (_keys!11562 thiss!1427)) (index!41560 lt!458607)))))

(declare-fun c!105460 () Bool)

(assert (=> b!1040580 (= c!105460 (= lt!458610 key!909))))

(declare-fun b!1040581 () Bool)

(declare-fun c!105459 () Bool)

(assert (=> b!1040581 (= c!105459 (= lt!458610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1040581 (= e!589195 e!589196)))

(assert (= (and d!125633 c!105461) b!1040577))

(assert (= (and d!125633 (not c!105461)) b!1040580))

(assert (= (and b!1040580 c!105460) b!1040579))

(assert (= (and b!1040580 (not c!105460)) b!1040581))

(assert (= (and b!1040581 c!105459) b!1040578))

(assert (= (and b!1040581 (not c!105459)) b!1040576))

(declare-fun m!960249 () Bool)

(assert (=> b!1040576 m!960249))

(declare-fun m!960251 () Bool)

(assert (=> d!125633 m!960251))

(declare-fun m!960253 () Bool)

(assert (=> d!125633 m!960253))

(assert (=> d!125633 m!960253))

(declare-fun m!960255 () Bool)

(assert (=> d!125633 m!960255))

(assert (=> d!125633 m!960239))

(declare-fun m!960257 () Bool)

(assert (=> b!1040580 m!960257))

(assert (=> b!1040469 d!125633))

(declare-fun b!1040582 () Bool)

(declare-fun e!589198 () Bool)

(declare-fun e!589197 () Bool)

(assert (=> b!1040582 (= e!589198 e!589197)))

(declare-fun c!105462 () Bool)

(assert (=> b!1040582 (= c!105462 (validKeyInArray!0 (select (arr!31557 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040583 () Bool)

(declare-fun e!589199 () Bool)

(assert (=> b!1040583 (= e!589199 e!589198)))

(declare-fun res!693815 () Bool)

(assert (=> b!1040583 (=> (not res!693815) (not e!589198))))

(declare-fun e!589200 () Bool)

(assert (=> b!1040583 (= res!693815 (not e!589200))))

(declare-fun res!693813 () Bool)

(assert (=> b!1040583 (=> (not res!693813) (not e!589200))))

(assert (=> b!1040583 (= res!693813 (validKeyInArray!0 (select (arr!31557 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040584 () Bool)

(declare-fun call!44068 () Bool)

(assert (=> b!1040584 (= e!589197 call!44068)))

(declare-fun d!125635 () Bool)

(declare-fun res!693814 () Bool)

(assert (=> d!125635 (=> res!693814 e!589199)))

(assert (=> d!125635 (= res!693814 (bvsge #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))))))

(assert (=> d!125635 (= (arrayNoDuplicates!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 Nil!22079) e!589199)))

(declare-fun bm!44065 () Bool)

(assert (=> bm!44065 (= call!44068 (arrayNoDuplicates!0 (_keys!11562 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105462 (Cons!22078 (select (arr!31557 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000) Nil!22079) Nil!22079)))))

(declare-fun b!1040585 () Bool)

(assert (=> b!1040585 (= e!589200 (contains!6073 Nil!22079 (select (arr!31557 (_keys!11562 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1040586 () Bool)

(assert (=> b!1040586 (= e!589197 call!44068)))

(assert (= (and d!125635 (not res!693814)) b!1040583))

(assert (= (and b!1040583 res!693813) b!1040585))

(assert (= (and b!1040583 res!693815) b!1040582))

(assert (= (and b!1040582 c!105462) b!1040584))

(assert (= (and b!1040582 (not c!105462)) b!1040586))

(assert (= (or b!1040584 b!1040586) bm!44065))

(assert (=> b!1040582 m!960229))

(assert (=> b!1040582 m!960229))

(assert (=> b!1040582 m!960231))

(assert (=> b!1040583 m!960229))

(assert (=> b!1040583 m!960229))

(assert (=> b!1040583 m!960231))

(assert (=> bm!44065 m!960229))

(declare-fun m!960259 () Bool)

(assert (=> bm!44065 m!960259))

(assert (=> b!1040585 m!960229))

(assert (=> b!1040585 m!960229))

(declare-fun m!960261 () Bool)

(assert (=> b!1040585 m!960261))

(assert (=> b!1040465 d!125635))

(declare-fun d!125637 () Bool)

(assert (=> d!125637 (= (validKeyInArray!0 key!909) (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1040471 d!125637))

(declare-fun d!125639 () Bool)

(declare-fun res!693822 () Bool)

(declare-fun e!589203 () Bool)

(assert (=> d!125639 (=> (not res!693822) (not e!589203))))

(declare-fun simpleValid!433 (LongMapFixedSize!5922) Bool)

(assert (=> d!125639 (= res!693822 (simpleValid!433 thiss!1427))))

(assert (=> d!125639 (= (valid!2179 thiss!1427) e!589203)))

(declare-fun b!1040593 () Bool)

(declare-fun res!693823 () Bool)

(assert (=> b!1040593 (=> (not res!693823) (not e!589203))))

(assert (=> b!1040593 (= res!693823 (= (arrayCountValidKeys!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 (size!32089 (_keys!11562 thiss!1427))) (_size!3016 thiss!1427)))))

(declare-fun b!1040594 () Bool)

(declare-fun res!693824 () Bool)

(assert (=> b!1040594 (=> (not res!693824) (not e!589203))))

(assert (=> b!1040594 (= res!693824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11562 thiss!1427) (mask!30334 thiss!1427)))))

(declare-fun b!1040595 () Bool)

(assert (=> b!1040595 (= e!589203 (arrayNoDuplicates!0 (_keys!11562 thiss!1427) #b00000000000000000000000000000000 Nil!22079))))

(assert (= (and d!125639 res!693822) b!1040593))

(assert (= (and b!1040593 res!693823) b!1040594))

(assert (= (and b!1040594 res!693824) b!1040595))

(declare-fun m!960263 () Bool)

(assert (=> d!125639 m!960263))

(assert (=> b!1040593 m!960149))

(declare-fun m!960265 () Bool)

(assert (=> b!1040594 m!960265))

(assert (=> b!1040595 m!960167))

(assert (=> start!91206 d!125639))

(declare-fun b!1040603 () Bool)

(declare-fun e!589208 () Bool)

(assert (=> b!1040603 (= e!589208 tp_is_empty!24735)))

(declare-fun mapNonEmpty!38689 () Bool)

(declare-fun mapRes!38689 () Bool)

(declare-fun tp!74253 () Bool)

(declare-fun e!589209 () Bool)

(assert (=> mapNonEmpty!38689 (= mapRes!38689 (and tp!74253 e!589209))))

(declare-fun mapValue!38689 () ValueCell!11664)

(declare-fun mapRest!38689 () (Array (_ BitVec 32) ValueCell!11664))

(declare-fun mapKey!38689 () (_ BitVec 32))

(assert (=> mapNonEmpty!38689 (= mapRest!38683 (store mapRest!38689 mapKey!38689 mapValue!38689))))

(declare-fun condMapEmpty!38689 () Bool)

(declare-fun mapDefault!38689 () ValueCell!11664)

(assert (=> mapNonEmpty!38683 (= condMapEmpty!38689 (= mapRest!38683 ((as const (Array (_ BitVec 32) ValueCell!11664)) mapDefault!38689)))))

(assert (=> mapNonEmpty!38683 (= tp!74244 (and e!589208 mapRes!38689))))

(declare-fun mapIsEmpty!38689 () Bool)

(assert (=> mapIsEmpty!38689 mapRes!38689))

(declare-fun b!1040602 () Bool)

(assert (=> b!1040602 (= e!589209 tp_is_empty!24735)))

(assert (= (and mapNonEmpty!38683 condMapEmpty!38689) mapIsEmpty!38689))

(assert (= (and mapNonEmpty!38683 (not condMapEmpty!38689)) mapNonEmpty!38689))

(assert (= (and mapNonEmpty!38689 ((_ is ValueCellFull!11664) mapValue!38689)) b!1040602))

(assert (= (and mapNonEmpty!38683 ((_ is ValueCellFull!11664) mapDefault!38689)) b!1040603))

(declare-fun m!960267 () Bool)

(assert (=> mapNonEmpty!38689 m!960267))

(check-sat (not d!125639) (not b!1040562) b_and!33565 (not b!1040548) (not b!1040512) (not b!1040544) (not b!1040514) tp_is_empty!24735 (not d!125615) (not b!1040582) (not b!1040595) (not b!1040541) (not b!1040560) (not bm!44065) (not b!1040523) (not d!125633) (not b!1040576) (not b_next!21015) (not d!125623) (not b!1040585) (not b!1040594) (not d!125621) (not b!1040583) (not bm!44060) (not bm!44064) (not bm!44061) (not b!1040525) (not bm!44057) (not b!1040511) (not b!1040559) (not b!1040593) (not mapNonEmpty!38689) (not b!1040538))
(check-sat b_and!33565 (not b_next!21015))
