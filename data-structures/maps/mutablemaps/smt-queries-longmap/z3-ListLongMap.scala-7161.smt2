; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91234 () Bool)

(assert start!91234)

(declare-fun b!1040643 () Bool)

(declare-fun b_free!21021 () Bool)

(declare-fun b_next!21021 () Bool)

(assert (=> b!1040643 (= b_free!21021 (not b_next!21021))))

(declare-fun tp!74264 () Bool)

(declare-fun b_and!33571 () Bool)

(assert (=> b!1040643 (= tp!74264 b_and!33571)))

(declare-fun b!1040639 () Bool)

(declare-fun e!589248 () Bool)

(declare-datatypes ((V!37861 0))(
  ( (V!37862 (val!12421 Int)) )
))
(declare-datatypes ((ValueCell!11667 0))(
  ( (ValueCellFull!11667 (v!15009 V!37861)) (EmptyCell!11667) )
))
(declare-datatypes ((array!65606 0))(
  ( (array!65607 (arr!31563 (Array (_ BitVec 32) (_ BitVec 64))) (size!32095 (_ BitVec 32))) )
))
(declare-datatypes ((array!65608 0))(
  ( (array!65609 (arr!31564 (Array (_ BitVec 32) ValueCell!11667)) (size!32096 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5928 0))(
  ( (LongMapFixedSize!5929 (defaultEntry!6346 Int) (mask!30342 (_ BitVec 32)) (extraKeys!6074 (_ BitVec 32)) (zeroValue!6180 V!37861) (minValue!6180 V!37861) (_size!3019 (_ BitVec 32)) (_keys!11567 array!65606) (_values!6369 array!65608) (_vacant!3019 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5928)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1040639 (= e!589248 (not (validMask!0 (mask!30342 thiss!1427))))))

(declare-fun lt!458641 () array!65606)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040639 (not (arrayContainsKey!0 lt!458641 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9800 0))(
  ( (MissingZero!9800 (index!41570 (_ BitVec 32))) (Found!9800 (index!41571 (_ BitVec 32))) (Intermediate!9800 (undefined!10612 Bool) (index!41572 (_ BitVec 32)) (x!92899 (_ BitVec 32))) (Undefined!9800) (MissingVacant!9800 (index!41573 (_ BitVec 32))) )
))
(declare-fun lt!458645 () SeekEntryResult!9800)

(declare-datatypes ((Unit!34018 0))(
  ( (Unit!34019) )
))
(declare-fun lt!458644 () Unit!34018)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65606 (_ BitVec 32) (_ BitVec 64)) Unit!34018)

(assert (=> b!1040639 (= lt!458644 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11567 thiss!1427) (index!41571 lt!458645) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65606 (_ BitVec 32)) Bool)

(assert (=> b!1040639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458641 (mask!30342 thiss!1427))))

(declare-fun lt!458642 () Unit!34018)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65606 (_ BitVec 32) (_ BitVec 32)) Unit!34018)

(assert (=> b!1040639 (= lt!458642 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11567 thiss!1427) (index!41571 lt!458645) (mask!30342 thiss!1427)))))

(declare-datatypes ((List!22085 0))(
  ( (Nil!22082) (Cons!22081 (h!23285 (_ BitVec 64)) (t!31306 List!22085)) )
))
(declare-fun arrayNoDuplicates!0 (array!65606 (_ BitVec 32) List!22085) Bool)

(assert (=> b!1040639 (arrayNoDuplicates!0 lt!458641 #b00000000000000000000000000000000 Nil!22082)))

(declare-fun lt!458646 () Unit!34018)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65606 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22085) Unit!34018)

(assert (=> b!1040639 (= lt!458646 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11567 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41571 lt!458645) #b00000000000000000000000000000000 Nil!22082))))

(declare-fun arrayCountValidKeys!0 (array!65606 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040639 (= (arrayCountValidKeys!0 lt!458641 #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11567 thiss!1427) #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040639 (= lt!458641 (array!65607 (store (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32095 (_keys!11567 thiss!1427))))))

(declare-fun lt!458643 () Unit!34018)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65606 (_ BitVec 32) (_ BitVec 64)) Unit!34018)

(assert (=> b!1040639 (= lt!458643 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11567 thiss!1427) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!693841 () Bool)

(declare-fun e!589249 () Bool)

(assert (=> start!91234 (=> (not res!693841) (not e!589249))))

(declare-fun valid!2181 (LongMapFixedSize!5928) Bool)

(assert (=> start!91234 (= res!693841 (valid!2181 thiss!1427))))

(assert (=> start!91234 e!589249))

(declare-fun e!589251 () Bool)

(assert (=> start!91234 e!589251))

(assert (=> start!91234 true))

(declare-fun b!1040640 () Bool)

(declare-fun e!589245 () Bool)

(declare-fun tp_is_empty!24741 () Bool)

(assert (=> b!1040640 (= e!589245 tp_is_empty!24741)))

(declare-fun b!1040641 () Bool)

(declare-fun res!693840 () Bool)

(assert (=> b!1040641 (=> (not res!693840) (not e!589249))))

(assert (=> b!1040641 (= res!693840 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38695 () Bool)

(declare-fun mapRes!38695 () Bool)

(assert (=> mapIsEmpty!38695 mapRes!38695))

(declare-fun b!1040642 () Bool)

(declare-fun e!589247 () Bool)

(declare-fun e!589246 () Bool)

(assert (=> b!1040642 (= e!589247 (and e!589246 mapRes!38695))))

(declare-fun condMapEmpty!38695 () Bool)

(declare-fun mapDefault!38695 () ValueCell!11667)

(assert (=> b!1040642 (= condMapEmpty!38695 (= (arr!31564 (_values!6369 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11667)) mapDefault!38695)))))

(declare-fun array_inv!24231 (array!65606) Bool)

(declare-fun array_inv!24232 (array!65608) Bool)

(assert (=> b!1040643 (= e!589251 (and tp!74264 tp_is_empty!24741 (array_inv!24231 (_keys!11567 thiss!1427)) (array_inv!24232 (_values!6369 thiss!1427)) e!589247))))

(declare-fun b!1040644 () Bool)

(assert (=> b!1040644 (= e!589249 e!589248)))

(declare-fun res!693842 () Bool)

(assert (=> b!1040644 (=> (not res!693842) (not e!589248))))

(get-info :version)

(assert (=> b!1040644 (= res!693842 ((_ is Found!9800) lt!458645))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65606 (_ BitVec 32)) SeekEntryResult!9800)

(assert (=> b!1040644 (= lt!458645 (seekEntry!0 key!909 (_keys!11567 thiss!1427) (mask!30342 thiss!1427)))))

(declare-fun mapNonEmpty!38695 () Bool)

(declare-fun tp!74265 () Bool)

(assert (=> mapNonEmpty!38695 (= mapRes!38695 (and tp!74265 e!589245))))

(declare-fun mapKey!38695 () (_ BitVec 32))

(declare-fun mapRest!38695 () (Array (_ BitVec 32) ValueCell!11667))

(declare-fun mapValue!38695 () ValueCell!11667)

(assert (=> mapNonEmpty!38695 (= (arr!31564 (_values!6369 thiss!1427)) (store mapRest!38695 mapKey!38695 mapValue!38695))))

(declare-fun b!1040645 () Bool)

(assert (=> b!1040645 (= e!589246 tp_is_empty!24741)))

(assert (= (and start!91234 res!693841) b!1040641))

(assert (= (and b!1040641 res!693840) b!1040644))

(assert (= (and b!1040644 res!693842) b!1040639))

(assert (= (and b!1040642 condMapEmpty!38695) mapIsEmpty!38695))

(assert (= (and b!1040642 (not condMapEmpty!38695)) mapNonEmpty!38695))

(assert (= (and mapNonEmpty!38695 ((_ is ValueCellFull!11667) mapValue!38695)) b!1040640))

(assert (= (and b!1040642 ((_ is ValueCellFull!11667) mapDefault!38695)) b!1040645))

(assert (= b!1040643 b!1040642))

(assert (= start!91234 b!1040643))

(declare-fun m!960301 () Bool)

(assert (=> start!91234 m!960301))

(declare-fun m!960303 () Bool)

(assert (=> b!1040644 m!960303))

(declare-fun m!960305 () Bool)

(assert (=> b!1040639 m!960305))

(declare-fun m!960307 () Bool)

(assert (=> b!1040639 m!960307))

(declare-fun m!960309 () Bool)

(assert (=> b!1040639 m!960309))

(declare-fun m!960311 () Bool)

(assert (=> b!1040639 m!960311))

(declare-fun m!960313 () Bool)

(assert (=> b!1040639 m!960313))

(declare-fun m!960315 () Bool)

(assert (=> b!1040639 m!960315))

(declare-fun m!960317 () Bool)

(assert (=> b!1040639 m!960317))

(declare-fun m!960319 () Bool)

(assert (=> b!1040639 m!960319))

(declare-fun m!960321 () Bool)

(assert (=> b!1040639 m!960321))

(declare-fun m!960323 () Bool)

(assert (=> b!1040639 m!960323))

(declare-fun m!960325 () Bool)

(assert (=> b!1040639 m!960325))

(declare-fun m!960327 () Bool)

(assert (=> b!1040643 m!960327))

(declare-fun m!960329 () Bool)

(assert (=> b!1040643 m!960329))

(declare-fun m!960331 () Bool)

(assert (=> mapNonEmpty!38695 m!960331))

(check-sat (not b!1040639) (not start!91234) b_and!33571 tp_is_empty!24741 (not b!1040643) (not mapNonEmpty!38695) (not b!1040644) (not b_next!21021))
(check-sat b_and!33571 (not b_next!21021))
(get-model)

(declare-fun d!125643 () Bool)

(declare-fun res!693858 () Bool)

(declare-fun e!589275 () Bool)

(assert (=> d!125643 (=> (not res!693858) (not e!589275))))

(declare-fun simpleValid!434 (LongMapFixedSize!5928) Bool)

(assert (=> d!125643 (= res!693858 (simpleValid!434 thiss!1427))))

(assert (=> d!125643 (= (valid!2181 thiss!1427) e!589275)))

(declare-fun b!1040673 () Bool)

(declare-fun res!693859 () Bool)

(assert (=> b!1040673 (=> (not res!693859) (not e!589275))))

(assert (=> b!1040673 (= res!693859 (= (arrayCountValidKeys!0 (_keys!11567 thiss!1427) #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) (_size!3019 thiss!1427)))))

(declare-fun b!1040674 () Bool)

(declare-fun res!693860 () Bool)

(assert (=> b!1040674 (=> (not res!693860) (not e!589275))))

(assert (=> b!1040674 (= res!693860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11567 thiss!1427) (mask!30342 thiss!1427)))))

(declare-fun b!1040675 () Bool)

(assert (=> b!1040675 (= e!589275 (arrayNoDuplicates!0 (_keys!11567 thiss!1427) #b00000000000000000000000000000000 Nil!22082))))

(assert (= (and d!125643 res!693858) b!1040673))

(assert (= (and b!1040673 res!693859) b!1040674))

(assert (= (and b!1040674 res!693860) b!1040675))

(declare-fun m!960365 () Bool)

(assert (=> d!125643 m!960365))

(assert (=> b!1040673 m!960315))

(declare-fun m!960367 () Bool)

(assert (=> b!1040674 m!960367))

(declare-fun m!960369 () Bool)

(assert (=> b!1040675 m!960369))

(assert (=> start!91234 d!125643))

(declare-fun d!125645 () Bool)

(assert (=> d!125645 (= (array_inv!24231 (_keys!11567 thiss!1427)) (bvsge (size!32095 (_keys!11567 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040643 d!125645))

(declare-fun d!125647 () Bool)

(assert (=> d!125647 (= (array_inv!24232 (_values!6369 thiss!1427)) (bvsge (size!32096 (_values!6369 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1040643 d!125647))

(declare-fun d!125649 () Bool)

(declare-fun e!589278 () Bool)

(assert (=> d!125649 e!589278))

(declare-fun res!693863 () Bool)

(assert (=> d!125649 (=> (not res!693863) (not e!589278))))

(assert (=> d!125649 (= res!693863 (and (bvsge (index!41571 lt!458645) #b00000000000000000000000000000000) (bvslt (index!41571 lt!458645) (size!32095 (_keys!11567 thiss!1427)))))))

(declare-fun lt!458667 () Unit!34018)

(declare-fun choose!53 (array!65606 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22085) Unit!34018)

(assert (=> d!125649 (= lt!458667 (choose!53 (_keys!11567 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41571 lt!458645) #b00000000000000000000000000000000 Nil!22082))))

(assert (=> d!125649 (bvslt (size!32095 (_keys!11567 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125649 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11567 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41571 lt!458645) #b00000000000000000000000000000000 Nil!22082) lt!458667)))

(declare-fun b!1040678 () Bool)

(assert (=> b!1040678 (= e!589278 (arrayNoDuplicates!0 (array!65607 (store (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32095 (_keys!11567 thiss!1427))) #b00000000000000000000000000000000 Nil!22082))))

(assert (= (and d!125649 res!693863) b!1040678))

(declare-fun m!960371 () Bool)

(assert (=> d!125649 m!960371))

(assert (=> b!1040678 m!960321))

(declare-fun m!960373 () Bool)

(assert (=> b!1040678 m!960373))

(assert (=> b!1040639 d!125649))

(declare-fun bm!44068 () Bool)

(declare-fun call!44071 () (_ BitVec 32))

(assert (=> bm!44068 (= call!44071 (arrayCountValidKeys!0 lt!458641 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32095 (_keys!11567 thiss!1427))))))

(declare-fun b!1040688 () Bool)

(declare-fun e!589284 () (_ BitVec 32))

(assert (=> b!1040688 (= e!589284 (bvadd #b00000000000000000000000000000001 call!44071))))

(declare-fun b!1040689 () Bool)

(assert (=> b!1040689 (= e!589284 call!44071)))

(declare-fun b!1040690 () Bool)

(declare-fun e!589283 () (_ BitVec 32))

(assert (=> b!1040690 (= e!589283 #b00000000000000000000000000000000)))

(declare-fun d!125651 () Bool)

(declare-fun lt!458670 () (_ BitVec 32))

(assert (=> d!125651 (and (bvsge lt!458670 #b00000000000000000000000000000000) (bvsle lt!458670 (bvsub (size!32095 lt!458641) #b00000000000000000000000000000000)))))

(assert (=> d!125651 (= lt!458670 e!589283)))

(declare-fun c!105468 () Bool)

(assert (=> d!125651 (= c!105468 (bvsge #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))))))

(assert (=> d!125651 (and (bvsle #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32095 (_keys!11567 thiss!1427)) (size!32095 lt!458641)))))

(assert (=> d!125651 (= (arrayCountValidKeys!0 lt!458641 #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) lt!458670)))

(declare-fun b!1040687 () Bool)

(assert (=> b!1040687 (= e!589283 e!589284)))

(declare-fun c!105467 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040687 (= c!105467 (validKeyInArray!0 (select (arr!31563 lt!458641) #b00000000000000000000000000000000)))))

(assert (= (and d!125651 c!105468) b!1040690))

(assert (= (and d!125651 (not c!105468)) b!1040687))

(assert (= (and b!1040687 c!105467) b!1040688))

(assert (= (and b!1040687 (not c!105467)) b!1040689))

(assert (= (or b!1040688 b!1040689) bm!44068))

(declare-fun m!960375 () Bool)

(assert (=> bm!44068 m!960375))

(declare-fun m!960377 () Bool)

(assert (=> b!1040687 m!960377))

(assert (=> b!1040687 m!960377))

(declare-fun m!960379 () Bool)

(assert (=> b!1040687 m!960379))

(assert (=> b!1040639 d!125651))

(declare-fun b!1040701 () Bool)

(declare-fun e!589294 () Bool)

(declare-fun e!589293 () Bool)

(assert (=> b!1040701 (= e!589294 e!589293)))

(declare-fun res!693871 () Bool)

(assert (=> b!1040701 (=> (not res!693871) (not e!589293))))

(declare-fun e!589295 () Bool)

(assert (=> b!1040701 (= res!693871 (not e!589295))))

(declare-fun res!693872 () Bool)

(assert (=> b!1040701 (=> (not res!693872) (not e!589295))))

(assert (=> b!1040701 (= res!693872 (validKeyInArray!0 (select (arr!31563 lt!458641) #b00000000000000000000000000000000)))))

(declare-fun b!1040702 () Bool)

(declare-fun contains!6074 (List!22085 (_ BitVec 64)) Bool)

(assert (=> b!1040702 (= e!589295 (contains!6074 Nil!22082 (select (arr!31563 lt!458641) #b00000000000000000000000000000000)))))

(declare-fun b!1040703 () Bool)

(declare-fun e!589296 () Bool)

(declare-fun call!44074 () Bool)

(assert (=> b!1040703 (= e!589296 call!44074)))

(declare-fun bm!44071 () Bool)

(declare-fun c!105471 () Bool)

(assert (=> bm!44071 (= call!44074 (arrayNoDuplicates!0 lt!458641 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105471 (Cons!22081 (select (arr!31563 lt!458641) #b00000000000000000000000000000000) Nil!22082) Nil!22082)))))

(declare-fun d!125653 () Bool)

(declare-fun res!693870 () Bool)

(assert (=> d!125653 (=> res!693870 e!589294)))

(assert (=> d!125653 (= res!693870 (bvsge #b00000000000000000000000000000000 (size!32095 lt!458641)))))

(assert (=> d!125653 (= (arrayNoDuplicates!0 lt!458641 #b00000000000000000000000000000000 Nil!22082) e!589294)))

(declare-fun b!1040704 () Bool)

(assert (=> b!1040704 (= e!589296 call!44074)))

(declare-fun b!1040705 () Bool)

(assert (=> b!1040705 (= e!589293 e!589296)))

(assert (=> b!1040705 (= c!105471 (validKeyInArray!0 (select (arr!31563 lt!458641) #b00000000000000000000000000000000)))))

(assert (= (and d!125653 (not res!693870)) b!1040701))

(assert (= (and b!1040701 res!693872) b!1040702))

(assert (= (and b!1040701 res!693871) b!1040705))

(assert (= (and b!1040705 c!105471) b!1040704))

(assert (= (and b!1040705 (not c!105471)) b!1040703))

(assert (= (or b!1040704 b!1040703) bm!44071))

(assert (=> b!1040701 m!960377))

(assert (=> b!1040701 m!960377))

(assert (=> b!1040701 m!960379))

(assert (=> b!1040702 m!960377))

(assert (=> b!1040702 m!960377))

(declare-fun m!960381 () Bool)

(assert (=> b!1040702 m!960381))

(assert (=> bm!44071 m!960377))

(declare-fun m!960383 () Bool)

(assert (=> bm!44071 m!960383))

(assert (=> b!1040705 m!960377))

(assert (=> b!1040705 m!960377))

(assert (=> b!1040705 m!960379))

(assert (=> b!1040639 d!125653))

(declare-fun d!125655 () Bool)

(declare-fun e!589299 () Bool)

(assert (=> d!125655 e!589299))

(declare-fun res!693875 () Bool)

(assert (=> d!125655 (=> (not res!693875) (not e!589299))))

(assert (=> d!125655 (= res!693875 (bvslt (index!41571 lt!458645) (size!32095 (_keys!11567 thiss!1427))))))

(declare-fun lt!458673 () Unit!34018)

(declare-fun choose!121 (array!65606 (_ BitVec 32) (_ BitVec 64)) Unit!34018)

(assert (=> d!125655 (= lt!458673 (choose!121 (_keys!11567 thiss!1427) (index!41571 lt!458645) key!909))))

(assert (=> d!125655 (bvsge (index!41571 lt!458645) #b00000000000000000000000000000000)))

(assert (=> d!125655 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11567 thiss!1427) (index!41571 lt!458645) key!909) lt!458673)))

(declare-fun b!1040708 () Bool)

(assert (=> b!1040708 (= e!589299 (not (arrayContainsKey!0 (array!65607 (store (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32095 (_keys!11567 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!125655 res!693875) b!1040708))

(declare-fun m!960385 () Bool)

(assert (=> d!125655 m!960385))

(assert (=> b!1040708 m!960321))

(declare-fun m!960387 () Bool)

(assert (=> b!1040708 m!960387))

(assert (=> b!1040639 d!125655))

(declare-fun d!125657 () Bool)

(declare-fun res!693880 () Bool)

(declare-fun e!589304 () Bool)

(assert (=> d!125657 (=> res!693880 e!589304)))

(assert (=> d!125657 (= res!693880 (= (select (arr!31563 lt!458641) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125657 (= (arrayContainsKey!0 lt!458641 key!909 #b00000000000000000000000000000000) e!589304)))

(declare-fun b!1040713 () Bool)

(declare-fun e!589305 () Bool)

(assert (=> b!1040713 (= e!589304 e!589305)))

(declare-fun res!693881 () Bool)

(assert (=> b!1040713 (=> (not res!693881) (not e!589305))))

(assert (=> b!1040713 (= res!693881 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32095 lt!458641)))))

(declare-fun b!1040714 () Bool)

(assert (=> b!1040714 (= e!589305 (arrayContainsKey!0 lt!458641 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125657 (not res!693880)) b!1040713))

(assert (= (and b!1040713 res!693881) b!1040714))

(assert (=> d!125657 m!960377))

(declare-fun m!960389 () Bool)

(assert (=> b!1040714 m!960389))

(assert (=> b!1040639 d!125657))

(declare-fun d!125659 () Bool)

(assert (=> d!125659 (= (validMask!0 (mask!30342 thiss!1427)) (and (or (= (mask!30342 thiss!1427) #b00000000000000000000000000000111) (= (mask!30342 thiss!1427) #b00000000000000000000000000001111) (= (mask!30342 thiss!1427) #b00000000000000000000000000011111) (= (mask!30342 thiss!1427) #b00000000000000000000000000111111) (= (mask!30342 thiss!1427) #b00000000000000000000000001111111) (= (mask!30342 thiss!1427) #b00000000000000000000000011111111) (= (mask!30342 thiss!1427) #b00000000000000000000000111111111) (= (mask!30342 thiss!1427) #b00000000000000000000001111111111) (= (mask!30342 thiss!1427) #b00000000000000000000011111111111) (= (mask!30342 thiss!1427) #b00000000000000000000111111111111) (= (mask!30342 thiss!1427) #b00000000000000000001111111111111) (= (mask!30342 thiss!1427) #b00000000000000000011111111111111) (= (mask!30342 thiss!1427) #b00000000000000000111111111111111) (= (mask!30342 thiss!1427) #b00000000000000001111111111111111) (= (mask!30342 thiss!1427) #b00000000000000011111111111111111) (= (mask!30342 thiss!1427) #b00000000000000111111111111111111) (= (mask!30342 thiss!1427) #b00000000000001111111111111111111) (= (mask!30342 thiss!1427) #b00000000000011111111111111111111) (= (mask!30342 thiss!1427) #b00000000000111111111111111111111) (= (mask!30342 thiss!1427) #b00000000001111111111111111111111) (= (mask!30342 thiss!1427) #b00000000011111111111111111111111) (= (mask!30342 thiss!1427) #b00000000111111111111111111111111) (= (mask!30342 thiss!1427) #b00000001111111111111111111111111) (= (mask!30342 thiss!1427) #b00000011111111111111111111111111) (= (mask!30342 thiss!1427) #b00000111111111111111111111111111) (= (mask!30342 thiss!1427) #b00001111111111111111111111111111) (= (mask!30342 thiss!1427) #b00011111111111111111111111111111) (= (mask!30342 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30342 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1040639 d!125659))

(declare-fun b!1040723 () Bool)

(declare-fun e!589313 () Bool)

(declare-fun e!589312 () Bool)

(assert (=> b!1040723 (= e!589313 e!589312)))

(declare-fun lt!458682 () (_ BitVec 64))

(assert (=> b!1040723 (= lt!458682 (select (arr!31563 lt!458641) #b00000000000000000000000000000000))))

(declare-fun lt!458680 () Unit!34018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65606 (_ BitVec 64) (_ BitVec 32)) Unit!34018)

(assert (=> b!1040723 (= lt!458680 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458641 lt!458682 #b00000000000000000000000000000000))))

(assert (=> b!1040723 (arrayContainsKey!0 lt!458641 lt!458682 #b00000000000000000000000000000000)))

(declare-fun lt!458681 () Unit!34018)

(assert (=> b!1040723 (= lt!458681 lt!458680)))

(declare-fun res!693887 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65606 (_ BitVec 32)) SeekEntryResult!9800)

(assert (=> b!1040723 (= res!693887 (= (seekEntryOrOpen!0 (select (arr!31563 lt!458641) #b00000000000000000000000000000000) lt!458641 (mask!30342 thiss!1427)) (Found!9800 #b00000000000000000000000000000000)))))

(assert (=> b!1040723 (=> (not res!693887) (not e!589312))))

(declare-fun b!1040724 () Bool)

(declare-fun call!44077 () Bool)

(assert (=> b!1040724 (= e!589313 call!44077)))

(declare-fun bm!44074 () Bool)

(assert (=> bm!44074 (= call!44077 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458641 (mask!30342 thiss!1427)))))

(declare-fun b!1040725 () Bool)

(assert (=> b!1040725 (= e!589312 call!44077)))

(declare-fun b!1040726 () Bool)

(declare-fun e!589314 () Bool)

(assert (=> b!1040726 (= e!589314 e!589313)))

(declare-fun c!105474 () Bool)

(assert (=> b!1040726 (= c!105474 (validKeyInArray!0 (select (arr!31563 lt!458641) #b00000000000000000000000000000000)))))

(declare-fun d!125661 () Bool)

(declare-fun res!693886 () Bool)

(assert (=> d!125661 (=> res!693886 e!589314)))

(assert (=> d!125661 (= res!693886 (bvsge #b00000000000000000000000000000000 (size!32095 lt!458641)))))

(assert (=> d!125661 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458641 (mask!30342 thiss!1427)) e!589314)))

(assert (= (and d!125661 (not res!693886)) b!1040726))

(assert (= (and b!1040726 c!105474) b!1040723))

(assert (= (and b!1040726 (not c!105474)) b!1040724))

(assert (= (and b!1040723 res!693887) b!1040725))

(assert (= (or b!1040725 b!1040724) bm!44074))

(assert (=> b!1040723 m!960377))

(declare-fun m!960391 () Bool)

(assert (=> b!1040723 m!960391))

(declare-fun m!960393 () Bool)

(assert (=> b!1040723 m!960393))

(assert (=> b!1040723 m!960377))

(declare-fun m!960395 () Bool)

(assert (=> b!1040723 m!960395))

(declare-fun m!960397 () Bool)

(assert (=> bm!44074 m!960397))

(assert (=> b!1040726 m!960377))

(assert (=> b!1040726 m!960377))

(assert (=> b!1040726 m!960379))

(assert (=> b!1040639 d!125661))

(declare-fun d!125663 () Bool)

(declare-fun e!589317 () Bool)

(assert (=> d!125663 e!589317))

(declare-fun res!693890 () Bool)

(assert (=> d!125663 (=> (not res!693890) (not e!589317))))

(assert (=> d!125663 (= res!693890 (and (bvsge (index!41571 lt!458645) #b00000000000000000000000000000000) (bvslt (index!41571 lt!458645) (size!32095 (_keys!11567 thiss!1427)))))))

(declare-fun lt!458685 () Unit!34018)

(declare-fun choose!25 (array!65606 (_ BitVec 32) (_ BitVec 32)) Unit!34018)

(assert (=> d!125663 (= lt!458685 (choose!25 (_keys!11567 thiss!1427) (index!41571 lt!458645) (mask!30342 thiss!1427)))))

(assert (=> d!125663 (validMask!0 (mask!30342 thiss!1427))))

(assert (=> d!125663 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11567 thiss!1427) (index!41571 lt!458645) (mask!30342 thiss!1427)) lt!458685)))

(declare-fun b!1040729 () Bool)

(assert (=> b!1040729 (= e!589317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65607 (store (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32095 (_keys!11567 thiss!1427))) (mask!30342 thiss!1427)))))

(assert (= (and d!125663 res!693890) b!1040729))

(declare-fun m!960399 () Bool)

(assert (=> d!125663 m!960399))

(assert (=> d!125663 m!960307))

(assert (=> b!1040729 m!960321))

(declare-fun m!960401 () Bool)

(assert (=> b!1040729 m!960401))

(assert (=> b!1040639 d!125663))

(declare-fun bm!44075 () Bool)

(declare-fun call!44078 () (_ BitVec 32))

(assert (=> bm!44075 (= call!44078 (arrayCountValidKeys!0 (_keys!11567 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32095 (_keys!11567 thiss!1427))))))

(declare-fun b!1040731 () Bool)

(declare-fun e!589319 () (_ BitVec 32))

(assert (=> b!1040731 (= e!589319 (bvadd #b00000000000000000000000000000001 call!44078))))

(declare-fun b!1040732 () Bool)

(assert (=> b!1040732 (= e!589319 call!44078)))

(declare-fun b!1040733 () Bool)

(declare-fun e!589318 () (_ BitVec 32))

(assert (=> b!1040733 (= e!589318 #b00000000000000000000000000000000)))

(declare-fun d!125665 () Bool)

(declare-fun lt!458686 () (_ BitVec 32))

(assert (=> d!125665 (and (bvsge lt!458686 #b00000000000000000000000000000000) (bvsle lt!458686 (bvsub (size!32095 (_keys!11567 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125665 (= lt!458686 e!589318)))

(declare-fun c!105476 () Bool)

(assert (=> d!125665 (= c!105476 (bvsge #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))))))

(assert (=> d!125665 (and (bvsle #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32095 (_keys!11567 thiss!1427)) (size!32095 (_keys!11567 thiss!1427))))))

(assert (=> d!125665 (= (arrayCountValidKeys!0 (_keys!11567 thiss!1427) #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) lt!458686)))

(declare-fun b!1040730 () Bool)

(assert (=> b!1040730 (= e!589318 e!589319)))

(declare-fun c!105475 () Bool)

(assert (=> b!1040730 (= c!105475 (validKeyInArray!0 (select (arr!31563 (_keys!11567 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125665 c!105476) b!1040733))

(assert (= (and d!125665 (not c!105476)) b!1040730))

(assert (= (and b!1040730 c!105475) b!1040731))

(assert (= (and b!1040730 (not c!105475)) b!1040732))

(assert (= (or b!1040731 b!1040732) bm!44075))

(declare-fun m!960403 () Bool)

(assert (=> bm!44075 m!960403))

(declare-fun m!960405 () Bool)

(assert (=> b!1040730 m!960405))

(assert (=> b!1040730 m!960405))

(declare-fun m!960407 () Bool)

(assert (=> b!1040730 m!960407))

(assert (=> b!1040639 d!125665))

(declare-fun d!125667 () Bool)

(declare-fun e!589325 () Bool)

(assert (=> d!125667 e!589325))

(declare-fun res!693900 () Bool)

(assert (=> d!125667 (=> (not res!693900) (not e!589325))))

(assert (=> d!125667 (= res!693900 (and (bvsge (index!41571 lt!458645) #b00000000000000000000000000000000) (bvslt (index!41571 lt!458645) (size!32095 (_keys!11567 thiss!1427)))))))

(declare-fun lt!458689 () Unit!34018)

(declare-fun choose!82 (array!65606 (_ BitVec 32) (_ BitVec 64)) Unit!34018)

(assert (=> d!125667 (= lt!458689 (choose!82 (_keys!11567 thiss!1427) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589324 () Bool)

(assert (=> d!125667 e!589324))

(declare-fun res!693901 () Bool)

(assert (=> d!125667 (=> (not res!693901) (not e!589324))))

(assert (=> d!125667 (= res!693901 (and (bvsge (index!41571 lt!458645) #b00000000000000000000000000000000) (bvslt (index!41571 lt!458645) (size!32095 (_keys!11567 thiss!1427)))))))

(assert (=> d!125667 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11567 thiss!1427) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458689)))

(declare-fun b!1040745 () Bool)

(assert (=> b!1040745 (= e!589325 (= (arrayCountValidKeys!0 (array!65607 (store (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458645) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32095 (_keys!11567 thiss!1427))) #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11567 thiss!1427) #b00000000000000000000000000000000 (size!32095 (_keys!11567 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1040742 () Bool)

(declare-fun res!693899 () Bool)

(assert (=> b!1040742 (=> (not res!693899) (not e!589324))))

(assert (=> b!1040742 (= res!693899 (validKeyInArray!0 (select (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458645))))))

(declare-fun b!1040744 () Bool)

(assert (=> b!1040744 (= e!589324 (bvslt (size!32095 (_keys!11567 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1040743 () Bool)

(declare-fun res!693902 () Bool)

(assert (=> b!1040743 (=> (not res!693902) (not e!589324))))

(assert (=> b!1040743 (= res!693902 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125667 res!693901) b!1040742))

(assert (= (and b!1040742 res!693899) b!1040743))

(assert (= (and b!1040743 res!693902) b!1040744))

(assert (= (and d!125667 res!693900) b!1040745))

(declare-fun m!960409 () Bool)

(assert (=> d!125667 m!960409))

(assert (=> b!1040745 m!960321))

(declare-fun m!960411 () Bool)

(assert (=> b!1040745 m!960411))

(assert (=> b!1040745 m!960315))

(declare-fun m!960413 () Bool)

(assert (=> b!1040742 m!960413))

(assert (=> b!1040742 m!960413))

(declare-fun m!960415 () Bool)

(assert (=> b!1040742 m!960415))

(declare-fun m!960417 () Bool)

(assert (=> b!1040743 m!960417))

(assert (=> b!1040639 d!125667))

(declare-fun d!125669 () Bool)

(declare-fun lt!458700 () SeekEntryResult!9800)

(assert (=> d!125669 (and (or ((_ is MissingVacant!9800) lt!458700) (not ((_ is Found!9800) lt!458700)) (and (bvsge (index!41571 lt!458700) #b00000000000000000000000000000000) (bvslt (index!41571 lt!458700) (size!32095 (_keys!11567 thiss!1427))))) (not ((_ is MissingVacant!9800) lt!458700)) (or (not ((_ is Found!9800) lt!458700)) (= (select (arr!31563 (_keys!11567 thiss!1427)) (index!41571 lt!458700)) key!909)))))

(declare-fun e!589333 () SeekEntryResult!9800)

(assert (=> d!125669 (= lt!458700 e!589333)))

(declare-fun c!105483 () Bool)

(declare-fun lt!458698 () SeekEntryResult!9800)

(assert (=> d!125669 (= c!105483 (and ((_ is Intermediate!9800) lt!458698) (undefined!10612 lt!458698)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65606 (_ BitVec 32)) SeekEntryResult!9800)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125669 (= lt!458698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30342 thiss!1427)) key!909 (_keys!11567 thiss!1427) (mask!30342 thiss!1427)))))

(assert (=> d!125669 (validMask!0 (mask!30342 thiss!1427))))

(assert (=> d!125669 (= (seekEntry!0 key!909 (_keys!11567 thiss!1427) (mask!30342 thiss!1427)) lt!458700)))

(declare-fun b!1040758 () Bool)

(declare-fun e!589334 () SeekEntryResult!9800)

(assert (=> b!1040758 (= e!589334 (Found!9800 (index!41572 lt!458698)))))

(declare-fun b!1040759 () Bool)

(assert (=> b!1040759 (= e!589333 e!589334)))

(declare-fun lt!458699 () (_ BitVec 64))

(assert (=> b!1040759 (= lt!458699 (select (arr!31563 (_keys!11567 thiss!1427)) (index!41572 lt!458698)))))

(declare-fun c!105484 () Bool)

(assert (=> b!1040759 (= c!105484 (= lt!458699 key!909))))

(declare-fun b!1040760 () Bool)

(declare-fun c!105485 () Bool)

(assert (=> b!1040760 (= c!105485 (= lt!458699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589332 () SeekEntryResult!9800)

(assert (=> b!1040760 (= e!589334 e!589332)))

(declare-fun b!1040761 () Bool)

(assert (=> b!1040761 (= e!589332 (MissingZero!9800 (index!41572 lt!458698)))))

(declare-fun b!1040762 () Bool)

(declare-fun lt!458701 () SeekEntryResult!9800)

(assert (=> b!1040762 (= e!589332 (ite ((_ is MissingVacant!9800) lt!458701) (MissingZero!9800 (index!41573 lt!458701)) lt!458701))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65606 (_ BitVec 32)) SeekEntryResult!9800)

(assert (=> b!1040762 (= lt!458701 (seekKeyOrZeroReturnVacant!0 (x!92899 lt!458698) (index!41572 lt!458698) (index!41572 lt!458698) key!909 (_keys!11567 thiss!1427) (mask!30342 thiss!1427)))))

(declare-fun b!1040763 () Bool)

(assert (=> b!1040763 (= e!589333 Undefined!9800)))

(assert (= (and d!125669 c!105483) b!1040763))

(assert (= (and d!125669 (not c!105483)) b!1040759))

(assert (= (and b!1040759 c!105484) b!1040758))

(assert (= (and b!1040759 (not c!105484)) b!1040760))

(assert (= (and b!1040760 c!105485) b!1040761))

(assert (= (and b!1040760 (not c!105485)) b!1040762))

(declare-fun m!960419 () Bool)

(assert (=> d!125669 m!960419))

(declare-fun m!960421 () Bool)

(assert (=> d!125669 m!960421))

(assert (=> d!125669 m!960421))

(declare-fun m!960423 () Bool)

(assert (=> d!125669 m!960423))

(assert (=> d!125669 m!960307))

(declare-fun m!960425 () Bool)

(assert (=> b!1040759 m!960425))

(declare-fun m!960427 () Bool)

(assert (=> b!1040762 m!960427))

(assert (=> b!1040644 d!125669))

(declare-fun mapNonEmpty!38701 () Bool)

(declare-fun mapRes!38701 () Bool)

(declare-fun tp!74274 () Bool)

(declare-fun e!589340 () Bool)

(assert (=> mapNonEmpty!38701 (= mapRes!38701 (and tp!74274 e!589340))))

(declare-fun mapKey!38701 () (_ BitVec 32))

(declare-fun mapRest!38701 () (Array (_ BitVec 32) ValueCell!11667))

(declare-fun mapValue!38701 () ValueCell!11667)

(assert (=> mapNonEmpty!38701 (= mapRest!38695 (store mapRest!38701 mapKey!38701 mapValue!38701))))

(declare-fun b!1040771 () Bool)

(declare-fun e!589339 () Bool)

(assert (=> b!1040771 (= e!589339 tp_is_empty!24741)))

(declare-fun mapIsEmpty!38701 () Bool)

(assert (=> mapIsEmpty!38701 mapRes!38701))

(declare-fun b!1040770 () Bool)

(assert (=> b!1040770 (= e!589340 tp_is_empty!24741)))

(declare-fun condMapEmpty!38701 () Bool)

(declare-fun mapDefault!38701 () ValueCell!11667)

(assert (=> mapNonEmpty!38695 (= condMapEmpty!38701 (= mapRest!38695 ((as const (Array (_ BitVec 32) ValueCell!11667)) mapDefault!38701)))))

(assert (=> mapNonEmpty!38695 (= tp!74265 (and e!589339 mapRes!38701))))

(assert (= (and mapNonEmpty!38695 condMapEmpty!38701) mapIsEmpty!38701))

(assert (= (and mapNonEmpty!38695 (not condMapEmpty!38701)) mapNonEmpty!38701))

(assert (= (and mapNonEmpty!38701 ((_ is ValueCellFull!11667) mapValue!38701)) b!1040770))

(assert (= (and mapNonEmpty!38695 ((_ is ValueCellFull!11667) mapDefault!38701)) b!1040771))

(declare-fun m!960429 () Bool)

(assert (=> mapNonEmpty!38701 m!960429))

(check-sat (not b!1040678) (not b!1040723) (not b!1040705) tp_is_empty!24741 (not b!1040675) (not b!1040673) (not d!125663) (not d!125643) (not b!1040743) (not d!125655) (not d!125669) (not b!1040745) (not b!1040708) (not d!125667) (not b!1040762) b_and!33571 (not bm!44068) (not b!1040687) (not b!1040726) (not bm!44071) (not d!125649) (not bm!44074) (not b_next!21021) (not b!1040674) (not b!1040714) (not mapNonEmpty!38701) (not b!1040701) (not b!1040729) (not bm!44075) (not b!1040702) (not b!1040742) (not b!1040730))
(check-sat b_and!33571 (not b_next!21021))
