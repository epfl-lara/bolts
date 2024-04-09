; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90850 () Bool)

(assert start!90850)

(declare-fun b!1038095 () Bool)

(declare-fun b_free!20931 () Bool)

(declare-fun b_next!20931 () Bool)

(assert (=> b!1038095 (= b_free!20931 (not b_next!20931))))

(declare-fun tp!73951 () Bool)

(declare-fun b_and!33481 () Bool)

(assert (=> b!1038095 (= tp!73951 b_and!33481)))

(declare-fun b!1038091 () Bool)

(declare-fun res!692623 () Bool)

(declare-fun e!587375 () Bool)

(assert (=> b!1038091 (=> res!692623 e!587375)))

(declare-datatypes ((List!22052 0))(
  ( (Nil!22049) (Cons!22048 (h!23251 (_ BitVec 64)) (t!31273 List!22052)) )
))
(declare-fun noDuplicate!1499 (List!22052) Bool)

(assert (=> b!1038091 (= res!692623 (not (noDuplicate!1499 Nil!22049)))))

(declare-fun b!1038092 () Bool)

(declare-fun res!692617 () Bool)

(declare-fun e!587380 () Bool)

(assert (=> b!1038092 (=> (not res!692617) (not e!587380))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038092 (= res!692617 (not (= key!909 (bvneg key!909))))))

(declare-fun res!692618 () Bool)

(assert (=> start!90850 (=> (not res!692618) (not e!587380))))

(declare-datatypes ((V!37741 0))(
  ( (V!37742 (val!12376 Int)) )
))
(declare-datatypes ((ValueCell!11622 0))(
  ( (ValueCellFull!11622 (v!14962 V!37741)) (EmptyCell!11622) )
))
(declare-datatypes ((array!65398 0))(
  ( (array!65399 (arr!31473 (Array (_ BitVec 32) (_ BitVec 64))) (size!32004 (_ BitVec 32))) )
))
(declare-datatypes ((array!65400 0))(
  ( (array!65401 (arr!31474 (Array (_ BitVec 32) ValueCell!11622)) (size!32005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5838 0))(
  ( (LongMapFixedSize!5839 (defaultEntry!6301 Int) (mask!30229 (_ BitVec 32)) (extraKeys!6029 (_ BitVec 32)) (zeroValue!6135 V!37741) (minValue!6135 V!37741) (_size!2974 (_ BitVec 32)) (_keys!11498 array!65398) (_values!6324 array!65400) (_vacant!2974 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5838)

(declare-fun valid!2151 (LongMapFixedSize!5838) Bool)

(assert (=> start!90850 (= res!692618 (valid!2151 thiss!1427))))

(assert (=> start!90850 e!587380))

(declare-fun e!587377 () Bool)

(assert (=> start!90850 e!587377))

(assert (=> start!90850 true))

(declare-fun b!1038093 () Bool)

(declare-fun e!587374 () Bool)

(declare-fun e!587381 () Bool)

(declare-fun mapRes!38517 () Bool)

(assert (=> b!1038093 (= e!587374 (and e!587381 mapRes!38517))))

(declare-fun condMapEmpty!38517 () Bool)

(declare-fun mapDefault!38517 () ValueCell!11622)

(assert (=> b!1038093 (= condMapEmpty!38517 (= (arr!31474 (_values!6324 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11622)) mapDefault!38517)))))

(declare-fun b!1038094 () Bool)

(declare-fun tp_is_empty!24651 () Bool)

(assert (=> b!1038094 (= e!587381 tp_is_empty!24651)))

(declare-fun array_inv!24173 (array!65398) Bool)

(declare-fun array_inv!24174 (array!65400) Bool)

(assert (=> b!1038095 (= e!587377 (and tp!73951 tp_is_empty!24651 (array_inv!24173 (_keys!11498 thiss!1427)) (array_inv!24174 (_values!6324 thiss!1427)) e!587374))))

(declare-fun b!1038096 () Bool)

(declare-fun e!587376 () Bool)

(assert (=> b!1038096 (= e!587376 (not e!587375))))

(declare-fun res!692624 () Bool)

(assert (=> b!1038096 (=> res!692624 e!587375)))

(assert (=> b!1038096 (= res!692624 (or (bvsge (size!32004 (_keys!11498 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9762 0))(
  ( (MissingZero!9762 (index!41418 (_ BitVec 32))) (Found!9762 (index!41419 (_ BitVec 32))) (Intermediate!9762 (undefined!10574 Bool) (index!41420 (_ BitVec 32)) (x!92620 (_ BitVec 32))) (Undefined!9762) (MissingVacant!9762 (index!41421 (_ BitVec 32))) )
))
(declare-fun lt!457640 () SeekEntryResult!9762)

(declare-fun arrayCountValidKeys!0 (array!65398 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038096 (= (arrayCountValidKeys!0 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427))) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33954 0))(
  ( (Unit!33955) )
))
(declare-fun lt!457641 () Unit!33954)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65398 (_ BitVec 32) (_ BitVec 64)) Unit!33954)

(assert (=> b!1038096 (= lt!457641 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11498 thiss!1427) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038097 () Bool)

(declare-fun e!587378 () Bool)

(assert (=> b!1038097 (= e!587378 tp_is_empty!24651)))

(declare-fun b!1038098 () Bool)

(declare-fun res!692622 () Bool)

(assert (=> b!1038098 (=> res!692622 e!587375)))

(declare-fun contains!6056 (List!22052 (_ BitVec 64)) Bool)

(assert (=> b!1038098 (= res!692622 (contains!6056 Nil!22049 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038099 () Bool)

(declare-fun res!692619 () Bool)

(assert (=> b!1038099 (=> res!692619 e!587375)))

(declare-fun arrayNoDuplicates!0 (array!65398 (_ BitVec 32) List!22052) Bool)

(assert (=> b!1038099 (= res!692619 (not (arrayNoDuplicates!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 Nil!22049)))))

(declare-fun b!1038100 () Bool)

(assert (=> b!1038100 (= e!587380 e!587376)))

(declare-fun res!692621 () Bool)

(assert (=> b!1038100 (=> (not res!692621) (not e!587376))))

(get-info :version)

(assert (=> b!1038100 (= res!692621 ((_ is Found!9762) lt!457640))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65398 (_ BitVec 32)) SeekEntryResult!9762)

(assert (=> b!1038100 (= lt!457640 (seekEntry!0 key!909 (_keys!11498 thiss!1427) (mask!30229 thiss!1427)))))

(declare-fun mapIsEmpty!38517 () Bool)

(assert (=> mapIsEmpty!38517 mapRes!38517))

(declare-fun b!1038101 () Bool)

(assert (=> b!1038101 (= e!587375 (and (bvsge (index!41419 lt!457640) #b00000000000000000000000000000000) (bvslt (index!41419 lt!457640) (size!32004 (_keys!11498 thiss!1427)))))))

(declare-fun b!1038102 () Bool)

(declare-fun res!692620 () Bool)

(assert (=> b!1038102 (=> res!692620 e!587375)))

(assert (=> b!1038102 (= res!692620 (contains!6056 Nil!22049 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38517 () Bool)

(declare-fun tp!73952 () Bool)

(assert (=> mapNonEmpty!38517 (= mapRes!38517 (and tp!73952 e!587378))))

(declare-fun mapRest!38517 () (Array (_ BitVec 32) ValueCell!11622))

(declare-fun mapValue!38517 () ValueCell!11622)

(declare-fun mapKey!38517 () (_ BitVec 32))

(assert (=> mapNonEmpty!38517 (= (arr!31474 (_values!6324 thiss!1427)) (store mapRest!38517 mapKey!38517 mapValue!38517))))

(assert (= (and start!90850 res!692618) b!1038092))

(assert (= (and b!1038092 res!692617) b!1038100))

(assert (= (and b!1038100 res!692621) b!1038096))

(assert (= (and b!1038096 (not res!692624)) b!1038091))

(assert (= (and b!1038091 (not res!692623)) b!1038098))

(assert (= (and b!1038098 (not res!692622)) b!1038102))

(assert (= (and b!1038102 (not res!692620)) b!1038099))

(assert (= (and b!1038099 (not res!692619)) b!1038101))

(assert (= (and b!1038093 condMapEmpty!38517) mapIsEmpty!38517))

(assert (= (and b!1038093 (not condMapEmpty!38517)) mapNonEmpty!38517))

(assert (= (and mapNonEmpty!38517 ((_ is ValueCellFull!11622) mapValue!38517)) b!1038097))

(assert (= (and b!1038093 ((_ is ValueCellFull!11622) mapDefault!38517)) b!1038094))

(assert (= b!1038095 b!1038093))

(assert (= start!90850 b!1038095))

(declare-fun m!958247 () Bool)

(assert (=> mapNonEmpty!38517 m!958247))

(declare-fun m!958249 () Bool)

(assert (=> b!1038096 m!958249))

(declare-fun m!958251 () Bool)

(assert (=> b!1038096 m!958251))

(declare-fun m!958253 () Bool)

(assert (=> b!1038096 m!958253))

(declare-fun m!958255 () Bool)

(assert (=> b!1038096 m!958255))

(declare-fun m!958257 () Bool)

(assert (=> b!1038091 m!958257))

(declare-fun m!958259 () Bool)

(assert (=> b!1038099 m!958259))

(declare-fun m!958261 () Bool)

(assert (=> b!1038095 m!958261))

(declare-fun m!958263 () Bool)

(assert (=> b!1038095 m!958263))

(declare-fun m!958265 () Bool)

(assert (=> b!1038098 m!958265))

(declare-fun m!958267 () Bool)

(assert (=> b!1038102 m!958267))

(declare-fun m!958269 () Bool)

(assert (=> b!1038100 m!958269))

(declare-fun m!958271 () Bool)

(assert (=> start!90850 m!958271))

(check-sat (not b!1038099) b_and!33481 (not b!1038100) (not b_next!20931) (not b!1038095) (not b!1038098) (not start!90850) (not b!1038091) tp_is_empty!24651 (not b!1038102) (not b!1038096) (not mapNonEmpty!38517))
(check-sat b_and!33481 (not b_next!20931))
(get-model)

(declare-fun d!125261 () Bool)

(declare-fun res!692653 () Bool)

(declare-fun e!587410 () Bool)

(assert (=> d!125261 (=> res!692653 e!587410)))

(assert (=> d!125261 (= res!692653 ((_ is Nil!22049) Nil!22049))))

(assert (=> d!125261 (= (noDuplicate!1499 Nil!22049) e!587410)))

(declare-fun b!1038143 () Bool)

(declare-fun e!587411 () Bool)

(assert (=> b!1038143 (= e!587410 e!587411)))

(declare-fun res!692654 () Bool)

(assert (=> b!1038143 (=> (not res!692654) (not e!587411))))

(assert (=> b!1038143 (= res!692654 (not (contains!6056 (t!31273 Nil!22049) (h!23251 Nil!22049))))))

(declare-fun b!1038144 () Bool)

(assert (=> b!1038144 (= e!587411 (noDuplicate!1499 (t!31273 Nil!22049)))))

(assert (= (and d!125261 (not res!692653)) b!1038143))

(assert (= (and b!1038143 res!692654) b!1038144))

(declare-fun m!958299 () Bool)

(assert (=> b!1038143 m!958299))

(declare-fun m!958301 () Bool)

(assert (=> b!1038144 m!958301))

(assert (=> b!1038091 d!125261))

(declare-fun d!125263 () Bool)

(declare-fun lt!457650 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!522 (List!22052) (InoxSet (_ BitVec 64)))

(assert (=> d!125263 (= lt!457650 (select (content!522 Nil!22049) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587417 () Bool)

(assert (=> d!125263 (= lt!457650 e!587417)))

(declare-fun res!692660 () Bool)

(assert (=> d!125263 (=> (not res!692660) (not e!587417))))

(assert (=> d!125263 (= res!692660 ((_ is Cons!22048) Nil!22049))))

(assert (=> d!125263 (= (contains!6056 Nil!22049 #b0000000000000000000000000000000000000000000000000000000000000000) lt!457650)))

(declare-fun b!1038149 () Bool)

(declare-fun e!587416 () Bool)

(assert (=> b!1038149 (= e!587417 e!587416)))

(declare-fun res!692659 () Bool)

(assert (=> b!1038149 (=> res!692659 e!587416)))

(assert (=> b!1038149 (= res!692659 (= (h!23251 Nil!22049) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038150 () Bool)

(assert (=> b!1038150 (= e!587416 (contains!6056 (t!31273 Nil!22049) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125263 res!692660) b!1038149))

(assert (= (and b!1038149 (not res!692659)) b!1038150))

(declare-fun m!958303 () Bool)

(assert (=> d!125263 m!958303))

(declare-fun m!958305 () Bool)

(assert (=> d!125263 m!958305))

(declare-fun m!958307 () Bool)

(assert (=> b!1038150 m!958307))

(assert (=> b!1038098 d!125263))

(declare-fun d!125265 () Bool)

(declare-fun lt!457651 () Bool)

(assert (=> d!125265 (= lt!457651 (select (content!522 Nil!22049) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587419 () Bool)

(assert (=> d!125265 (= lt!457651 e!587419)))

(declare-fun res!692662 () Bool)

(assert (=> d!125265 (=> (not res!692662) (not e!587419))))

(assert (=> d!125265 (= res!692662 ((_ is Cons!22048) Nil!22049))))

(assert (=> d!125265 (= (contains!6056 Nil!22049 #b1000000000000000000000000000000000000000000000000000000000000000) lt!457651)))

(declare-fun b!1038151 () Bool)

(declare-fun e!587418 () Bool)

(assert (=> b!1038151 (= e!587419 e!587418)))

(declare-fun res!692661 () Bool)

(assert (=> b!1038151 (=> res!692661 e!587418)))

(assert (=> b!1038151 (= res!692661 (= (h!23251 Nil!22049) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038152 () Bool)

(assert (=> b!1038152 (= e!587418 (contains!6056 (t!31273 Nil!22049) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!125265 res!692662) b!1038151))

(assert (= (and b!1038151 (not res!692661)) b!1038152))

(assert (=> d!125265 m!958303))

(declare-fun m!958309 () Bool)

(assert (=> d!125265 m!958309))

(declare-fun m!958311 () Bool)

(assert (=> b!1038152 m!958311))

(assert (=> b!1038102 d!125265))

(declare-fun d!125267 () Bool)

(declare-fun res!692669 () Bool)

(declare-fun e!587422 () Bool)

(assert (=> d!125267 (=> (not res!692669) (not e!587422))))

(declare-fun simpleValid!420 (LongMapFixedSize!5838) Bool)

(assert (=> d!125267 (= res!692669 (simpleValid!420 thiss!1427))))

(assert (=> d!125267 (= (valid!2151 thiss!1427) e!587422)))

(declare-fun b!1038159 () Bool)

(declare-fun res!692670 () Bool)

(assert (=> b!1038159 (=> (not res!692670) (not e!587422))))

(assert (=> b!1038159 (= res!692670 (= (arrayCountValidKeys!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) (_size!2974 thiss!1427)))))

(declare-fun b!1038160 () Bool)

(declare-fun res!692671 () Bool)

(assert (=> b!1038160 (=> (not res!692671) (not e!587422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65398 (_ BitVec 32)) Bool)

(assert (=> b!1038160 (= res!692671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11498 thiss!1427) (mask!30229 thiss!1427)))))

(declare-fun b!1038161 () Bool)

(assert (=> b!1038161 (= e!587422 (arrayNoDuplicates!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 Nil!22049))))

(assert (= (and d!125267 res!692669) b!1038159))

(assert (= (and b!1038159 res!692670) b!1038160))

(assert (= (and b!1038160 res!692671) b!1038161))

(declare-fun m!958313 () Bool)

(assert (=> d!125267 m!958313))

(assert (=> b!1038159 m!958253))

(declare-fun m!958315 () Bool)

(assert (=> b!1038160 m!958315))

(assert (=> b!1038161 m!958259))

(assert (=> start!90850 d!125267))

(declare-fun b!1038172 () Bool)

(declare-fun e!587434 () Bool)

(declare-fun call!43938 () Bool)

(assert (=> b!1038172 (= e!587434 call!43938)))

(declare-fun b!1038173 () Bool)

(declare-fun e!587432 () Bool)

(assert (=> b!1038173 (= e!587432 e!587434)))

(declare-fun c!105129 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1038173 (= c!105129 (validKeyInArray!0 (select (arr!31473 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1038174 () Bool)

(declare-fun e!587431 () Bool)

(assert (=> b!1038174 (= e!587431 (contains!6056 Nil!22049 (select (arr!31473 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1038175 () Bool)

(assert (=> b!1038175 (= e!587434 call!43938)))

(declare-fun bm!43935 () Bool)

(assert (=> bm!43935 (= call!43938 (arrayNoDuplicates!0 (_keys!11498 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105129 (Cons!22048 (select (arr!31473 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000) Nil!22049) Nil!22049)))))

(declare-fun d!125269 () Bool)

(declare-fun res!692680 () Bool)

(declare-fun e!587433 () Bool)

(assert (=> d!125269 (=> res!692680 e!587433)))

(assert (=> d!125269 (= res!692680 (bvsge #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))))))

(assert (=> d!125269 (= (arrayNoDuplicates!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 Nil!22049) e!587433)))

(declare-fun b!1038176 () Bool)

(assert (=> b!1038176 (= e!587433 e!587432)))

(declare-fun res!692678 () Bool)

(assert (=> b!1038176 (=> (not res!692678) (not e!587432))))

(assert (=> b!1038176 (= res!692678 (not e!587431))))

(declare-fun res!692679 () Bool)

(assert (=> b!1038176 (=> (not res!692679) (not e!587431))))

(assert (=> b!1038176 (= res!692679 (validKeyInArray!0 (select (arr!31473 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125269 (not res!692680)) b!1038176))

(assert (= (and b!1038176 res!692679) b!1038174))

(assert (= (and b!1038176 res!692678) b!1038173))

(assert (= (and b!1038173 c!105129) b!1038172))

(assert (= (and b!1038173 (not c!105129)) b!1038175))

(assert (= (or b!1038172 b!1038175) bm!43935))

(declare-fun m!958317 () Bool)

(assert (=> b!1038173 m!958317))

(assert (=> b!1038173 m!958317))

(declare-fun m!958319 () Bool)

(assert (=> b!1038173 m!958319))

(assert (=> b!1038174 m!958317))

(assert (=> b!1038174 m!958317))

(declare-fun m!958321 () Bool)

(assert (=> b!1038174 m!958321))

(assert (=> bm!43935 m!958317))

(declare-fun m!958323 () Bool)

(assert (=> bm!43935 m!958323))

(assert (=> b!1038176 m!958317))

(assert (=> b!1038176 m!958317))

(assert (=> b!1038176 m!958319))

(assert (=> b!1038099 d!125269))

(declare-fun b!1038189 () Bool)

(declare-fun e!587441 () SeekEntryResult!9762)

(declare-fun lt!457663 () SeekEntryResult!9762)

(assert (=> b!1038189 (= e!587441 (Found!9762 (index!41420 lt!457663)))))

(declare-fun b!1038190 () Bool)

(declare-fun c!105137 () Bool)

(declare-fun lt!457661 () (_ BitVec 64))

(assert (=> b!1038190 (= c!105137 (= lt!457661 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587443 () SeekEntryResult!9762)

(assert (=> b!1038190 (= e!587441 e!587443)))

(declare-fun d!125271 () Bool)

(declare-fun lt!457660 () SeekEntryResult!9762)

(assert (=> d!125271 (and (or ((_ is MissingVacant!9762) lt!457660) (not ((_ is Found!9762) lt!457660)) (and (bvsge (index!41419 lt!457660) #b00000000000000000000000000000000) (bvslt (index!41419 lt!457660) (size!32004 (_keys!11498 thiss!1427))))) (not ((_ is MissingVacant!9762) lt!457660)) (or (not ((_ is Found!9762) lt!457660)) (= (select (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457660)) key!909)))))

(declare-fun e!587442 () SeekEntryResult!9762)

(assert (=> d!125271 (= lt!457660 e!587442)))

(declare-fun c!105138 () Bool)

(assert (=> d!125271 (= c!105138 (and ((_ is Intermediate!9762) lt!457663) (undefined!10574 lt!457663)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65398 (_ BitVec 32)) SeekEntryResult!9762)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125271 (= lt!457663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30229 thiss!1427)) key!909 (_keys!11498 thiss!1427) (mask!30229 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125271 (validMask!0 (mask!30229 thiss!1427))))

(assert (=> d!125271 (= (seekEntry!0 key!909 (_keys!11498 thiss!1427) (mask!30229 thiss!1427)) lt!457660)))

(declare-fun b!1038191 () Bool)

(assert (=> b!1038191 (= e!587442 Undefined!9762)))

(declare-fun b!1038192 () Bool)

(assert (=> b!1038192 (= e!587442 e!587441)))

(assert (=> b!1038192 (= lt!457661 (select (arr!31473 (_keys!11498 thiss!1427)) (index!41420 lt!457663)))))

(declare-fun c!105136 () Bool)

(assert (=> b!1038192 (= c!105136 (= lt!457661 key!909))))

(declare-fun b!1038193 () Bool)

(assert (=> b!1038193 (= e!587443 (MissingZero!9762 (index!41420 lt!457663)))))

(declare-fun b!1038194 () Bool)

(declare-fun lt!457662 () SeekEntryResult!9762)

(assert (=> b!1038194 (= e!587443 (ite ((_ is MissingVacant!9762) lt!457662) (MissingZero!9762 (index!41421 lt!457662)) lt!457662))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65398 (_ BitVec 32)) SeekEntryResult!9762)

(assert (=> b!1038194 (= lt!457662 (seekKeyOrZeroReturnVacant!0 (x!92620 lt!457663) (index!41420 lt!457663) (index!41420 lt!457663) key!909 (_keys!11498 thiss!1427) (mask!30229 thiss!1427)))))

(assert (= (and d!125271 c!105138) b!1038191))

(assert (= (and d!125271 (not c!105138)) b!1038192))

(assert (= (and b!1038192 c!105136) b!1038189))

(assert (= (and b!1038192 (not c!105136)) b!1038190))

(assert (= (and b!1038190 c!105137) b!1038193))

(assert (= (and b!1038190 (not c!105137)) b!1038194))

(declare-fun m!958325 () Bool)

(assert (=> d!125271 m!958325))

(declare-fun m!958327 () Bool)

(assert (=> d!125271 m!958327))

(assert (=> d!125271 m!958327))

(declare-fun m!958329 () Bool)

(assert (=> d!125271 m!958329))

(declare-fun m!958331 () Bool)

(assert (=> d!125271 m!958331))

(declare-fun m!958333 () Bool)

(assert (=> b!1038192 m!958333))

(declare-fun m!958335 () Bool)

(assert (=> b!1038194 m!958335))

(assert (=> b!1038100 d!125271))

(declare-fun d!125273 () Bool)

(assert (=> d!125273 (= (array_inv!24173 (_keys!11498 thiss!1427)) (bvsge (size!32004 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038095 d!125273))

(declare-fun d!125275 () Bool)

(assert (=> d!125275 (= (array_inv!24174 (_values!6324 thiss!1427)) (bvsge (size!32005 (_values!6324 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038095 d!125275))

(declare-fun bm!43938 () Bool)

(declare-fun call!43941 () (_ BitVec 32))

(assert (=> bm!43938 (= call!43941 (arrayCountValidKeys!0 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32004 (_keys!11498 thiss!1427))))))

(declare-fun b!1038203 () Bool)

(declare-fun e!587448 () (_ BitVec 32))

(assert (=> b!1038203 (= e!587448 call!43941)))

(declare-fun b!1038204 () Bool)

(assert (=> b!1038204 (= e!587448 (bvadd #b00000000000000000000000000000001 call!43941))))

(declare-fun d!125277 () Bool)

(declare-fun lt!457666 () (_ BitVec 32))

(assert (=> d!125277 (and (bvsge lt!457666 #b00000000000000000000000000000000) (bvsle lt!457666 (bvsub (size!32004 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun e!587449 () (_ BitVec 32))

(assert (=> d!125277 (= lt!457666 e!587449)))

(declare-fun c!105143 () Bool)

(assert (=> d!125277 (= c!105143 (bvsge #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))))))

(assert (=> d!125277 (and (bvsle #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32004 (_keys!11498 thiss!1427)) (size!32004 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427))))))))

(assert (=> d!125277 (= (arrayCountValidKeys!0 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427))) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) lt!457666)))

(declare-fun b!1038205 () Bool)

(assert (=> b!1038205 (= e!587449 #b00000000000000000000000000000000)))

(declare-fun b!1038206 () Bool)

(assert (=> b!1038206 (= e!587449 e!587448)))

(declare-fun c!105144 () Bool)

(assert (=> b!1038206 (= c!105144 (validKeyInArray!0 (select (arr!31473 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125277 c!105143) b!1038205))

(assert (= (and d!125277 (not c!105143)) b!1038206))

(assert (= (and b!1038206 c!105144) b!1038204))

(assert (= (and b!1038206 (not c!105144)) b!1038203))

(assert (= (or b!1038204 b!1038203) bm!43938))

(declare-fun m!958337 () Bool)

(assert (=> bm!43938 m!958337))

(declare-fun m!958339 () Bool)

(assert (=> b!1038206 m!958339))

(assert (=> b!1038206 m!958339))

(declare-fun m!958341 () Bool)

(assert (=> b!1038206 m!958341))

(assert (=> b!1038096 d!125277))

(declare-fun bm!43939 () Bool)

(declare-fun call!43942 () (_ BitVec 32))

(assert (=> bm!43939 (= call!43942 (arrayCountValidKeys!0 (_keys!11498 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32004 (_keys!11498 thiss!1427))))))

(declare-fun b!1038207 () Bool)

(declare-fun e!587450 () (_ BitVec 32))

(assert (=> b!1038207 (= e!587450 call!43942)))

(declare-fun b!1038208 () Bool)

(assert (=> b!1038208 (= e!587450 (bvadd #b00000000000000000000000000000001 call!43942))))

(declare-fun d!125279 () Bool)

(declare-fun lt!457667 () (_ BitVec 32))

(assert (=> d!125279 (and (bvsge lt!457667 #b00000000000000000000000000000000) (bvsle lt!457667 (bvsub (size!32004 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!587451 () (_ BitVec 32))

(assert (=> d!125279 (= lt!457667 e!587451)))

(declare-fun c!105145 () Bool)

(assert (=> d!125279 (= c!105145 (bvsge #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))))))

(assert (=> d!125279 (and (bvsle #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32004 (_keys!11498 thiss!1427)) (size!32004 (_keys!11498 thiss!1427))))))

(assert (=> d!125279 (= (arrayCountValidKeys!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) lt!457667)))

(declare-fun b!1038209 () Bool)

(assert (=> b!1038209 (= e!587451 #b00000000000000000000000000000000)))

(declare-fun b!1038210 () Bool)

(assert (=> b!1038210 (= e!587451 e!587450)))

(declare-fun c!105146 () Bool)

(assert (=> b!1038210 (= c!105146 (validKeyInArray!0 (select (arr!31473 (_keys!11498 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125279 c!105145) b!1038209))

(assert (= (and d!125279 (not c!105145)) b!1038210))

(assert (= (and b!1038210 c!105146) b!1038208))

(assert (= (and b!1038210 (not c!105146)) b!1038207))

(assert (= (or b!1038208 b!1038207) bm!43939))

(declare-fun m!958343 () Bool)

(assert (=> bm!43939 m!958343))

(assert (=> b!1038210 m!958317))

(assert (=> b!1038210 m!958317))

(assert (=> b!1038210 m!958319))

(assert (=> b!1038096 d!125279))

(declare-fun d!125281 () Bool)

(declare-fun e!587457 () Bool)

(assert (=> d!125281 e!587457))

(declare-fun res!692689 () Bool)

(assert (=> d!125281 (=> (not res!692689) (not e!587457))))

(assert (=> d!125281 (= res!692689 (and (bvsge (index!41419 lt!457640) #b00000000000000000000000000000000) (bvslt (index!41419 lt!457640) (size!32004 (_keys!11498 thiss!1427)))))))

(declare-fun lt!457670 () Unit!33954)

(declare-fun choose!82 (array!65398 (_ BitVec 32) (_ BitVec 64)) Unit!33954)

(assert (=> d!125281 (= lt!457670 (choose!82 (_keys!11498 thiss!1427) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587456 () Bool)

(assert (=> d!125281 e!587456))

(declare-fun res!692692 () Bool)

(assert (=> d!125281 (=> (not res!692692) (not e!587456))))

(assert (=> d!125281 (= res!692692 (and (bvsge (index!41419 lt!457640) #b00000000000000000000000000000000) (bvslt (index!41419 lt!457640) (size!32004 (_keys!11498 thiss!1427)))))))

(assert (=> d!125281 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11498 thiss!1427) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457670)))

(declare-fun b!1038221 () Bool)

(assert (=> b!1038221 (= e!587456 (bvslt (size!32004 (_keys!11498 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1038219 () Bool)

(declare-fun res!692691 () Bool)

(assert (=> b!1038219 (=> (not res!692691) (not e!587456))))

(assert (=> b!1038219 (= res!692691 (validKeyInArray!0 (select (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640))))))

(declare-fun b!1038222 () Bool)

(assert (=> b!1038222 (= e!587457 (= (arrayCountValidKeys!0 (array!65399 (store (arr!31473 (_keys!11498 thiss!1427)) (index!41419 lt!457640) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32004 (_keys!11498 thiss!1427))) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11498 thiss!1427) #b00000000000000000000000000000000 (size!32004 (_keys!11498 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1038220 () Bool)

(declare-fun res!692690 () Bool)

(assert (=> b!1038220 (=> (not res!692690) (not e!587456))))

(assert (=> b!1038220 (= res!692690 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125281 res!692692) b!1038219))

(assert (= (and b!1038219 res!692691) b!1038220))

(assert (= (and b!1038220 res!692690) b!1038221))

(assert (= (and d!125281 res!692689) b!1038222))

(declare-fun m!958345 () Bool)

(assert (=> d!125281 m!958345))

(declare-fun m!958347 () Bool)

(assert (=> b!1038219 m!958347))

(assert (=> b!1038219 m!958347))

(declare-fun m!958349 () Bool)

(assert (=> b!1038219 m!958349))

(assert (=> b!1038222 m!958249))

(assert (=> b!1038222 m!958251))

(assert (=> b!1038222 m!958253))

(declare-fun m!958351 () Bool)

(assert (=> b!1038220 m!958351))

(assert (=> b!1038096 d!125281))

(declare-fun b!1038230 () Bool)

(declare-fun e!587463 () Bool)

(assert (=> b!1038230 (= e!587463 tp_is_empty!24651)))

(declare-fun mapIsEmpty!38523 () Bool)

(declare-fun mapRes!38523 () Bool)

(assert (=> mapIsEmpty!38523 mapRes!38523))

(declare-fun condMapEmpty!38523 () Bool)

(declare-fun mapDefault!38523 () ValueCell!11622)

(assert (=> mapNonEmpty!38517 (= condMapEmpty!38523 (= mapRest!38517 ((as const (Array (_ BitVec 32) ValueCell!11622)) mapDefault!38523)))))

(assert (=> mapNonEmpty!38517 (= tp!73952 (and e!587463 mapRes!38523))))

(declare-fun b!1038229 () Bool)

(declare-fun e!587462 () Bool)

(assert (=> b!1038229 (= e!587462 tp_is_empty!24651)))

(declare-fun mapNonEmpty!38523 () Bool)

(declare-fun tp!73961 () Bool)

(assert (=> mapNonEmpty!38523 (= mapRes!38523 (and tp!73961 e!587462))))

(declare-fun mapValue!38523 () ValueCell!11622)

(declare-fun mapRest!38523 () (Array (_ BitVec 32) ValueCell!11622))

(declare-fun mapKey!38523 () (_ BitVec 32))

(assert (=> mapNonEmpty!38523 (= mapRest!38517 (store mapRest!38523 mapKey!38523 mapValue!38523))))

(assert (= (and mapNonEmpty!38517 condMapEmpty!38523) mapIsEmpty!38523))

(assert (= (and mapNonEmpty!38517 (not condMapEmpty!38523)) mapNonEmpty!38523))

(assert (= (and mapNonEmpty!38523 ((_ is ValueCellFull!11622) mapValue!38523)) b!1038229))

(assert (= (and mapNonEmpty!38517 ((_ is ValueCellFull!11622) mapDefault!38523)) b!1038230))

(declare-fun m!958353 () Bool)

(assert (=> mapNonEmpty!38523 m!958353))

(check-sat (not b!1038210) (not b!1038159) (not b!1038161) (not b_next!20931) (not d!125263) (not d!125265) (not b!1038174) (not d!125281) (not d!125271) (not b!1038150) (not mapNonEmpty!38523) (not b!1038152) (not b!1038206) (not b!1038222) (not b!1038160) (not b!1038194) b_and!33481 (not d!125267) (not b!1038143) (not b!1038144) (not b!1038176) (not bm!43935) (not bm!43939) tp_is_empty!24651 (not bm!43938) (not b!1038220) (not b!1038173) (not b!1038219))
(check-sat b_and!33481 (not b_next!20931))
