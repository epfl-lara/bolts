; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90760 () Bool)

(assert start!90760)

(declare-fun b!1037344 () Bool)

(declare-fun b_free!20901 () Bool)

(declare-fun b_next!20901 () Bool)

(assert (=> b!1037344 (= b_free!20901 (not b_next!20901))))

(declare-fun tp!73850 () Bool)

(declare-fun b_and!33451 () Bool)

(assert (=> b!1037344 (= tp!73850 b_and!33451)))

(declare-fun res!692223 () Bool)

(declare-fun e!586841 () Bool)

(assert (=> start!90760 (=> (not res!692223) (not e!586841))))

(declare-datatypes ((V!37701 0))(
  ( (V!37702 (val!12361 Int)) )
))
(declare-datatypes ((ValueCell!11607 0))(
  ( (ValueCellFull!11607 (v!14945 V!37701)) (EmptyCell!11607) )
))
(declare-datatypes ((array!65330 0))(
  ( (array!65331 (arr!31443 (Array (_ BitVec 32) (_ BitVec 64))) (size!31974 (_ BitVec 32))) )
))
(declare-datatypes ((array!65332 0))(
  ( (array!65333 (arr!31444 (Array (_ BitVec 32) ValueCell!11607)) (size!31975 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5808 0))(
  ( (LongMapFixedSize!5809 (defaultEntry!6286 Int) (mask!30200 (_ BitVec 32)) (extraKeys!6014 (_ BitVec 32)) (zeroValue!6120 V!37701) (minValue!6120 V!37701) (_size!2959 (_ BitVec 32)) (_keys!11479 array!65330) (_values!6309 array!65332) (_vacant!2959 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5808)

(declare-fun valid!2142 (LongMapFixedSize!5808) Bool)

(assert (=> start!90760 (= res!692223 (valid!2142 thiss!1427))))

(assert (=> start!90760 e!586841))

(declare-fun e!586836 () Bool)

(assert (=> start!90760 e!586836))

(assert (=> start!90760 true))

(declare-fun b!1037342 () Bool)

(declare-fun e!586839 () Bool)

(declare-fun e!586840 () Bool)

(declare-fun mapRes!38460 () Bool)

(assert (=> b!1037342 (= e!586839 (and e!586840 mapRes!38460))))

(declare-fun condMapEmpty!38460 () Bool)

(declare-fun mapDefault!38460 () ValueCell!11607)

(assert (=> b!1037342 (= condMapEmpty!38460 (= (arr!31444 (_values!6309 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11607)) mapDefault!38460)))))

(declare-fun mapNonEmpty!38460 () Bool)

(declare-fun tp!73849 () Bool)

(declare-fun e!586837 () Bool)

(assert (=> mapNonEmpty!38460 (= mapRes!38460 (and tp!73849 e!586837))))

(declare-fun mapRest!38460 () (Array (_ BitVec 32) ValueCell!11607))

(declare-fun mapKey!38460 () (_ BitVec 32))

(declare-fun mapValue!38460 () ValueCell!11607)

(assert (=> mapNonEmpty!38460 (= (arr!31444 (_values!6309 thiss!1427)) (store mapRest!38460 mapKey!38460 mapValue!38460))))

(declare-fun mapIsEmpty!38460 () Bool)

(assert (=> mapIsEmpty!38460 mapRes!38460))

(declare-fun b!1037343 () Bool)

(declare-fun e!586838 () Bool)

(assert (=> b!1037343 (= e!586841 e!586838)))

(declare-fun res!692224 () Bool)

(assert (=> b!1037343 (=> (not res!692224) (not e!586838))))

(declare-datatypes ((SeekEntryResult!9752 0))(
  ( (MissingZero!9752 (index!41378 (_ BitVec 32))) (Found!9752 (index!41379 (_ BitVec 32))) (Intermediate!9752 (undefined!10564 Bool) (index!41380 (_ BitVec 32)) (x!92538 (_ BitVec 32))) (Undefined!9752) (MissingVacant!9752 (index!41381 (_ BitVec 32))) )
))
(declare-fun lt!457458 () SeekEntryResult!9752)

(get-info :version)

(assert (=> b!1037343 (= res!692224 ((_ is Found!9752) lt!457458))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65330 (_ BitVec 32)) SeekEntryResult!9752)

(assert (=> b!1037343 (= lt!457458 (seekEntry!0 key!909 (_keys!11479 thiss!1427) (mask!30200 thiss!1427)))))

(declare-fun tp_is_empty!24621 () Bool)

(declare-fun array_inv!24153 (array!65330) Bool)

(declare-fun array_inv!24154 (array!65332) Bool)

(assert (=> b!1037344 (= e!586836 (and tp!73850 tp_is_empty!24621 (array_inv!24153 (_keys!11479 thiss!1427)) (array_inv!24154 (_values!6309 thiss!1427)) e!586839))))

(declare-fun b!1037345 () Bool)

(assert (=> b!1037345 (= e!586840 tp_is_empty!24621)))

(declare-fun b!1037346 () Bool)

(declare-fun res!692222 () Bool)

(assert (=> b!1037346 (=> (not res!692222) (not e!586841))))

(assert (=> b!1037346 (= res!692222 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037347 () Bool)

(assert (=> b!1037347 (= e!586838 (not (or (bvsge (size!31974 (_keys!11479 thiss!1427)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))))))))

(declare-fun arrayCountValidKeys!0 (array!65330 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037347 (= (arrayCountValidKeys!0 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427))) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11479 thiss!1427) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33936 0))(
  ( (Unit!33937) )
))
(declare-fun lt!457457 () Unit!33936)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65330 (_ BitVec 32) (_ BitVec 64)) Unit!33936)

(assert (=> b!1037347 (= lt!457457 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11479 thiss!1427) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037348 () Bool)

(assert (=> b!1037348 (= e!586837 tp_is_empty!24621)))

(assert (= (and start!90760 res!692223) b!1037346))

(assert (= (and b!1037346 res!692222) b!1037343))

(assert (= (and b!1037343 res!692224) b!1037347))

(assert (= (and b!1037342 condMapEmpty!38460) mapIsEmpty!38460))

(assert (= (and b!1037342 (not condMapEmpty!38460)) mapNonEmpty!38460))

(assert (= (and mapNonEmpty!38460 ((_ is ValueCellFull!11607) mapValue!38460)) b!1037348))

(assert (= (and b!1037342 ((_ is ValueCellFull!11607) mapDefault!38460)) b!1037345))

(assert (= b!1037344 b!1037342))

(assert (= start!90760 b!1037344))

(declare-fun m!957703 () Bool)

(assert (=> b!1037343 m!957703))

(declare-fun m!957705 () Bool)

(assert (=> start!90760 m!957705))

(declare-fun m!957707 () Bool)

(assert (=> mapNonEmpty!38460 m!957707))

(declare-fun m!957709 () Bool)

(assert (=> b!1037344 m!957709))

(declare-fun m!957711 () Bool)

(assert (=> b!1037344 m!957711))

(declare-fun m!957713 () Bool)

(assert (=> b!1037347 m!957713))

(declare-fun m!957715 () Bool)

(assert (=> b!1037347 m!957715))

(declare-fun m!957717 () Bool)

(assert (=> b!1037347 m!957717))

(declare-fun m!957719 () Bool)

(assert (=> b!1037347 m!957719))

(check-sat (not b!1037347) b_and!33451 (not b_next!20901) tp_is_empty!24621 (not b!1037344) (not start!90760) (not b!1037343) (not mapNonEmpty!38460))
(check-sat b_and!33451 (not b_next!20901))
(get-model)

(declare-fun b!1037382 () Bool)

(declare-fun e!586871 () SeekEntryResult!9752)

(declare-fun lt!457473 () SeekEntryResult!9752)

(assert (=> b!1037382 (= e!586871 (MissingZero!9752 (index!41380 lt!457473)))))

(declare-fun b!1037383 () Bool)

(declare-fun lt!457474 () SeekEntryResult!9752)

(assert (=> b!1037383 (= e!586871 (ite ((_ is MissingVacant!9752) lt!457474) (MissingZero!9752 (index!41381 lt!457474)) lt!457474))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65330 (_ BitVec 32)) SeekEntryResult!9752)

(assert (=> b!1037383 (= lt!457474 (seekKeyOrZeroReturnVacant!0 (x!92538 lt!457473) (index!41380 lt!457473) (index!41380 lt!457473) key!909 (_keys!11479 thiss!1427) (mask!30200 thiss!1427)))))

(declare-fun b!1037384 () Bool)

(declare-fun c!105063 () Bool)

(declare-fun lt!457475 () (_ BitVec 64))

(assert (=> b!1037384 (= c!105063 (= lt!457475 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586870 () SeekEntryResult!9752)

(assert (=> b!1037384 (= e!586870 e!586871)))

(declare-fun d!125179 () Bool)

(declare-fun lt!457476 () SeekEntryResult!9752)

(assert (=> d!125179 (and (or ((_ is MissingVacant!9752) lt!457476) (not ((_ is Found!9752) lt!457476)) (and (bvsge (index!41379 lt!457476) #b00000000000000000000000000000000) (bvslt (index!41379 lt!457476) (size!31974 (_keys!11479 thiss!1427))))) (not ((_ is MissingVacant!9752) lt!457476)) (or (not ((_ is Found!9752) lt!457476)) (= (select (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457476)) key!909)))))

(declare-fun e!586869 () SeekEntryResult!9752)

(assert (=> d!125179 (= lt!457476 e!586869)))

(declare-fun c!105062 () Bool)

(assert (=> d!125179 (= c!105062 (and ((_ is Intermediate!9752) lt!457473) (undefined!10564 lt!457473)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65330 (_ BitVec 32)) SeekEntryResult!9752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125179 (= lt!457473 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30200 thiss!1427)) key!909 (_keys!11479 thiss!1427) (mask!30200 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125179 (validMask!0 (mask!30200 thiss!1427))))

(assert (=> d!125179 (= (seekEntry!0 key!909 (_keys!11479 thiss!1427) (mask!30200 thiss!1427)) lt!457476)))

(declare-fun b!1037385 () Bool)

(assert (=> b!1037385 (= e!586869 e!586870)))

(assert (=> b!1037385 (= lt!457475 (select (arr!31443 (_keys!11479 thiss!1427)) (index!41380 lt!457473)))))

(declare-fun c!105064 () Bool)

(assert (=> b!1037385 (= c!105064 (= lt!457475 key!909))))

(declare-fun b!1037386 () Bool)

(assert (=> b!1037386 (= e!586870 (Found!9752 (index!41380 lt!457473)))))

(declare-fun b!1037387 () Bool)

(assert (=> b!1037387 (= e!586869 Undefined!9752)))

(assert (= (and d!125179 c!105062) b!1037387))

(assert (= (and d!125179 (not c!105062)) b!1037385))

(assert (= (and b!1037385 c!105064) b!1037386))

(assert (= (and b!1037385 (not c!105064)) b!1037384))

(assert (= (and b!1037384 c!105063) b!1037382))

(assert (= (and b!1037384 (not c!105063)) b!1037383))

(declare-fun m!957739 () Bool)

(assert (=> b!1037383 m!957739))

(declare-fun m!957741 () Bool)

(assert (=> d!125179 m!957741))

(declare-fun m!957743 () Bool)

(assert (=> d!125179 m!957743))

(assert (=> d!125179 m!957743))

(declare-fun m!957745 () Bool)

(assert (=> d!125179 m!957745))

(declare-fun m!957747 () Bool)

(assert (=> d!125179 m!957747))

(declare-fun m!957749 () Bool)

(assert (=> b!1037385 m!957749))

(assert (=> b!1037343 d!125179))

(declare-fun b!1037396 () Bool)

(declare-fun e!586877 () (_ BitVec 32))

(declare-fun call!43919 () (_ BitVec 32))

(assert (=> b!1037396 (= e!586877 (bvadd #b00000000000000000000000000000001 call!43919))))

(declare-fun b!1037397 () Bool)

(declare-fun e!586876 () (_ BitVec 32))

(assert (=> b!1037397 (= e!586876 #b00000000000000000000000000000000)))

(declare-fun b!1037398 () Bool)

(assert (=> b!1037398 (= e!586877 call!43919)))

(declare-fun d!125181 () Bool)

(declare-fun lt!457479 () (_ BitVec 32))

(assert (=> d!125181 (and (bvsge lt!457479 #b00000000000000000000000000000000) (bvsle lt!457479 (bvsub (size!31974 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125181 (= lt!457479 e!586876)))

(declare-fun c!105069 () Bool)

(assert (=> d!125181 (= c!105069 (bvsge #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))))))

(assert (=> d!125181 (and (bvsle #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31974 (_keys!11479 thiss!1427)) (size!31974 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427))))))))

(assert (=> d!125181 (= (arrayCountValidKeys!0 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427))) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) lt!457479)))

(declare-fun bm!43916 () Bool)

(assert (=> bm!43916 (= call!43919 (arrayCountValidKeys!0 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31974 (_keys!11479 thiss!1427))))))

(declare-fun b!1037399 () Bool)

(assert (=> b!1037399 (= e!586876 e!586877)))

(declare-fun c!105070 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1037399 (= c!105070 (validKeyInArray!0 (select (arr!31443 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125181 c!105069) b!1037397))

(assert (= (and d!125181 (not c!105069)) b!1037399))

(assert (= (and b!1037399 c!105070) b!1037396))

(assert (= (and b!1037399 (not c!105070)) b!1037398))

(assert (= (or b!1037396 b!1037398) bm!43916))

(declare-fun m!957751 () Bool)

(assert (=> bm!43916 m!957751))

(declare-fun m!957753 () Bool)

(assert (=> b!1037399 m!957753))

(assert (=> b!1037399 m!957753))

(declare-fun m!957755 () Bool)

(assert (=> b!1037399 m!957755))

(assert (=> b!1037347 d!125181))

(declare-fun b!1037400 () Bool)

(declare-fun e!586879 () (_ BitVec 32))

(declare-fun call!43920 () (_ BitVec 32))

(assert (=> b!1037400 (= e!586879 (bvadd #b00000000000000000000000000000001 call!43920))))

(declare-fun b!1037401 () Bool)

(declare-fun e!586878 () (_ BitVec 32))

(assert (=> b!1037401 (= e!586878 #b00000000000000000000000000000000)))

(declare-fun b!1037402 () Bool)

(assert (=> b!1037402 (= e!586879 call!43920)))

(declare-fun d!125183 () Bool)

(declare-fun lt!457480 () (_ BitVec 32))

(assert (=> d!125183 (and (bvsge lt!457480 #b00000000000000000000000000000000) (bvsle lt!457480 (bvsub (size!31974 (_keys!11479 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125183 (= lt!457480 e!586878)))

(declare-fun c!105071 () Bool)

(assert (=> d!125183 (= c!105071 (bvsge #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))))))

(assert (=> d!125183 (and (bvsle #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31974 (_keys!11479 thiss!1427)) (size!31974 (_keys!11479 thiss!1427))))))

(assert (=> d!125183 (= (arrayCountValidKeys!0 (_keys!11479 thiss!1427) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) lt!457480)))

(declare-fun bm!43917 () Bool)

(assert (=> bm!43917 (= call!43920 (arrayCountValidKeys!0 (_keys!11479 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31974 (_keys!11479 thiss!1427))))))

(declare-fun b!1037403 () Bool)

(assert (=> b!1037403 (= e!586878 e!586879)))

(declare-fun c!105072 () Bool)

(assert (=> b!1037403 (= c!105072 (validKeyInArray!0 (select (arr!31443 (_keys!11479 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125183 c!105071) b!1037401))

(assert (= (and d!125183 (not c!105071)) b!1037403))

(assert (= (and b!1037403 c!105072) b!1037400))

(assert (= (and b!1037403 (not c!105072)) b!1037402))

(assert (= (or b!1037400 b!1037402) bm!43917))

(declare-fun m!957757 () Bool)

(assert (=> bm!43917 m!957757))

(declare-fun m!957759 () Bool)

(assert (=> b!1037403 m!957759))

(assert (=> b!1037403 m!957759))

(declare-fun m!957761 () Bool)

(assert (=> b!1037403 m!957761))

(assert (=> b!1037347 d!125183))

(declare-fun d!125185 () Bool)

(declare-fun e!586885 () Bool)

(assert (=> d!125185 e!586885))

(declare-fun res!692242 () Bool)

(assert (=> d!125185 (=> (not res!692242) (not e!586885))))

(assert (=> d!125185 (= res!692242 (and (bvsge (index!41379 lt!457458) #b00000000000000000000000000000000) (bvslt (index!41379 lt!457458) (size!31974 (_keys!11479 thiss!1427)))))))

(declare-fun lt!457483 () Unit!33936)

(declare-fun choose!82 (array!65330 (_ BitVec 32) (_ BitVec 64)) Unit!33936)

(assert (=> d!125185 (= lt!457483 (choose!82 (_keys!11479 thiss!1427) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586884 () Bool)

(assert (=> d!125185 e!586884))

(declare-fun res!692244 () Bool)

(assert (=> d!125185 (=> (not res!692244) (not e!586884))))

(assert (=> d!125185 (= res!692244 (and (bvsge (index!41379 lt!457458) #b00000000000000000000000000000000) (bvslt (index!41379 lt!457458) (size!31974 (_keys!11479 thiss!1427)))))))

(assert (=> d!125185 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11479 thiss!1427) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457483)))

(declare-fun b!1037412 () Bool)

(declare-fun res!692245 () Bool)

(assert (=> b!1037412 (=> (not res!692245) (not e!586884))))

(assert (=> b!1037412 (= res!692245 (validKeyInArray!0 (select (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458))))))

(declare-fun b!1037414 () Bool)

(assert (=> b!1037414 (= e!586884 (bvslt (size!31974 (_keys!11479 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1037415 () Bool)

(assert (=> b!1037415 (= e!586885 (= (arrayCountValidKeys!0 (array!65331 (store (arr!31443 (_keys!11479 thiss!1427)) (index!41379 lt!457458) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31974 (_keys!11479 thiss!1427))) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11479 thiss!1427) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1037413 () Bool)

(declare-fun res!692243 () Bool)

(assert (=> b!1037413 (=> (not res!692243) (not e!586884))))

(assert (=> b!1037413 (= res!692243 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125185 res!692244) b!1037412))

(assert (= (and b!1037412 res!692245) b!1037413))

(assert (= (and b!1037413 res!692243) b!1037414))

(assert (= (and d!125185 res!692242) b!1037415))

(declare-fun m!957763 () Bool)

(assert (=> d!125185 m!957763))

(declare-fun m!957765 () Bool)

(assert (=> b!1037412 m!957765))

(assert (=> b!1037412 m!957765))

(declare-fun m!957767 () Bool)

(assert (=> b!1037412 m!957767))

(assert (=> b!1037415 m!957713))

(assert (=> b!1037415 m!957715))

(assert (=> b!1037415 m!957717))

(declare-fun m!957769 () Bool)

(assert (=> b!1037413 m!957769))

(assert (=> b!1037347 d!125185))

(declare-fun d!125187 () Bool)

(declare-fun res!692252 () Bool)

(declare-fun e!586888 () Bool)

(assert (=> d!125187 (=> (not res!692252) (not e!586888))))

(declare-fun simpleValid!416 (LongMapFixedSize!5808) Bool)

(assert (=> d!125187 (= res!692252 (simpleValid!416 thiss!1427))))

(assert (=> d!125187 (= (valid!2142 thiss!1427) e!586888)))

(declare-fun b!1037422 () Bool)

(declare-fun res!692253 () Bool)

(assert (=> b!1037422 (=> (not res!692253) (not e!586888))))

(assert (=> b!1037422 (= res!692253 (= (arrayCountValidKeys!0 (_keys!11479 thiss!1427) #b00000000000000000000000000000000 (size!31974 (_keys!11479 thiss!1427))) (_size!2959 thiss!1427)))))

(declare-fun b!1037423 () Bool)

(declare-fun res!692254 () Bool)

(assert (=> b!1037423 (=> (not res!692254) (not e!586888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65330 (_ BitVec 32)) Bool)

(assert (=> b!1037423 (= res!692254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11479 thiss!1427) (mask!30200 thiss!1427)))))

(declare-fun b!1037424 () Bool)

(declare-datatypes ((List!22039 0))(
  ( (Nil!22036) (Cons!22035 (h!23238 (_ BitVec 64)) (t!31260 List!22039)) )
))
(declare-fun arrayNoDuplicates!0 (array!65330 (_ BitVec 32) List!22039) Bool)

(assert (=> b!1037424 (= e!586888 (arrayNoDuplicates!0 (_keys!11479 thiss!1427) #b00000000000000000000000000000000 Nil!22036))))

(assert (= (and d!125187 res!692252) b!1037422))

(assert (= (and b!1037422 res!692253) b!1037423))

(assert (= (and b!1037423 res!692254) b!1037424))

(declare-fun m!957771 () Bool)

(assert (=> d!125187 m!957771))

(assert (=> b!1037422 m!957717))

(declare-fun m!957773 () Bool)

(assert (=> b!1037423 m!957773))

(declare-fun m!957775 () Bool)

(assert (=> b!1037424 m!957775))

(assert (=> start!90760 d!125187))

(declare-fun d!125189 () Bool)

(assert (=> d!125189 (= (array_inv!24153 (_keys!11479 thiss!1427)) (bvsge (size!31974 (_keys!11479 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037344 d!125189))

(declare-fun d!125191 () Bool)

(assert (=> d!125191 (= (array_inv!24154 (_values!6309 thiss!1427)) (bvsge (size!31975 (_values!6309 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037344 d!125191))

(declare-fun b!1037431 () Bool)

(declare-fun e!586894 () Bool)

(assert (=> b!1037431 (= e!586894 tp_is_empty!24621)))

(declare-fun mapNonEmpty!38466 () Bool)

(declare-fun mapRes!38466 () Bool)

(declare-fun tp!73859 () Bool)

(assert (=> mapNonEmpty!38466 (= mapRes!38466 (and tp!73859 e!586894))))

(declare-fun mapValue!38466 () ValueCell!11607)

(declare-fun mapKey!38466 () (_ BitVec 32))

(declare-fun mapRest!38466 () (Array (_ BitVec 32) ValueCell!11607))

(assert (=> mapNonEmpty!38466 (= mapRest!38460 (store mapRest!38466 mapKey!38466 mapValue!38466))))

(declare-fun mapIsEmpty!38466 () Bool)

(assert (=> mapIsEmpty!38466 mapRes!38466))

(declare-fun condMapEmpty!38466 () Bool)

(declare-fun mapDefault!38466 () ValueCell!11607)

(assert (=> mapNonEmpty!38460 (= condMapEmpty!38466 (= mapRest!38460 ((as const (Array (_ BitVec 32) ValueCell!11607)) mapDefault!38466)))))

(declare-fun e!586893 () Bool)

(assert (=> mapNonEmpty!38460 (= tp!73849 (and e!586893 mapRes!38466))))

(declare-fun b!1037432 () Bool)

(assert (=> b!1037432 (= e!586893 tp_is_empty!24621)))

(assert (= (and mapNonEmpty!38460 condMapEmpty!38466) mapIsEmpty!38466))

(assert (= (and mapNonEmpty!38460 (not condMapEmpty!38466)) mapNonEmpty!38466))

(assert (= (and mapNonEmpty!38466 ((_ is ValueCellFull!11607) mapValue!38466)) b!1037431))

(assert (= (and mapNonEmpty!38460 ((_ is ValueCellFull!11607) mapDefault!38466)) b!1037432))

(declare-fun m!957777 () Bool)

(assert (=> mapNonEmpty!38466 m!957777))

(check-sat (not bm!43916) (not d!125185) (not bm!43917) (not b!1037399) b_and!33451 (not b_next!20901) (not b!1037423) (not b!1037413) (not d!125179) (not b!1037412) (not b!1037422) (not b!1037403) (not d!125187) (not b!1037415) (not mapNonEmpty!38466) (not b!1037383) tp_is_empty!24621 (not b!1037424))
(check-sat b_and!33451 (not b_next!20901))
