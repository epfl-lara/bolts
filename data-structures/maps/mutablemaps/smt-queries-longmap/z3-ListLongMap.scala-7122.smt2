; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90304 () Bool)

(assert start!90304)

(declare-fun b!1033319 () Bool)

(declare-fun b_free!20787 () Bool)

(declare-fun b_next!20787 () Bool)

(assert (=> b!1033319 (= b_free!20787 (not b_next!20787))))

(declare-fun tp!73456 () Bool)

(declare-fun b_and!33273 () Bool)

(assert (=> b!1033319 (= tp!73456 b_and!33273)))

(declare-fun b!1033316 () Bool)

(declare-fun e!584092 () Bool)

(declare-fun tp_is_empty!24507 () Bool)

(assert (=> b!1033316 (= e!584092 tp_is_empty!24507)))

(declare-fun b!1033317 () Bool)

(declare-fun e!584090 () Bool)

(declare-fun mapRes!38237 () Bool)

(assert (=> b!1033317 (= e!584090 (and e!584092 mapRes!38237))))

(declare-fun condMapEmpty!38237 () Bool)

(declare-datatypes ((V!37549 0))(
  ( (V!37550 (val!12304 Int)) )
))
(declare-datatypes ((ValueCell!11550 0))(
  ( (ValueCellFull!11550 (v!14882 V!37549)) (EmptyCell!11550) )
))
(declare-datatypes ((array!65074 0))(
  ( (array!65075 (arr!31329 (Array (_ BitVec 32) (_ BitVec 64))) (size!31852 (_ BitVec 32))) )
))
(declare-datatypes ((array!65076 0))(
  ( (array!65077 (arr!31330 (Array (_ BitVec 32) ValueCell!11550)) (size!31853 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5694 0))(
  ( (LongMapFixedSize!5695 (defaultEntry!6221 Int) (mask!30065 (_ BitVec 32)) (extraKeys!5953 (_ BitVec 32)) (zeroValue!6057 V!37549) (minValue!6057 V!37549) (_size!2902 (_ BitVec 32)) (_keys!11396 array!65074) (_values!6244 array!65076) (_vacant!2902 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5694)

(declare-fun mapDefault!38237 () ValueCell!11550)

(assert (=> b!1033317 (= condMapEmpty!38237 (= (arr!31330 (_values!6244 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11550)) mapDefault!38237)))))

(declare-fun b!1033318 () Bool)

(declare-fun res!690526 () Bool)

(declare-fun e!584089 () Bool)

(assert (=> b!1033318 (=> (not res!690526) (not e!584089))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033318 (= res!690526 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!584091 () Bool)

(declare-fun array_inv!24073 (array!65074) Bool)

(declare-fun array_inv!24074 (array!65076) Bool)

(assert (=> b!1033319 (= e!584091 (and tp!73456 tp_is_empty!24507 (array_inv!24073 (_keys!11396 thiss!1427)) (array_inv!24074 (_values!6244 thiss!1427)) e!584090))))

(declare-fun b!1033320 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65074 (_ BitVec 32)) Bool)

(assert (=> b!1033320 (= e!584089 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11396 thiss!1427) (mask!30065 thiss!1427))))))

(declare-fun b!1033321 () Bool)

(declare-fun res!690527 () Bool)

(assert (=> b!1033321 (=> (not res!690527) (not e!584089))))

(assert (=> b!1033321 (= res!690527 (and (= (size!31853 (_values!6244 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30065 thiss!1427))) (= (size!31852 (_keys!11396 thiss!1427)) (size!31853 (_values!6244 thiss!1427))) (bvsge (mask!30065 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5953 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5953 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5953 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5953 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5953 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5953 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5953 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!690528 () Bool)

(assert (=> start!90304 (=> (not res!690528) (not e!584089))))

(declare-fun valid!2102 (LongMapFixedSize!5694) Bool)

(assert (=> start!90304 (= res!690528 (valid!2102 thiss!1427))))

(assert (=> start!90304 e!584089))

(assert (=> start!90304 e!584091))

(assert (=> start!90304 true))

(declare-fun b!1033322 () Bool)

(declare-fun e!584093 () Bool)

(assert (=> b!1033322 (= e!584093 tp_is_empty!24507)))

(declare-fun mapNonEmpty!38237 () Bool)

(declare-fun tp!73455 () Bool)

(assert (=> mapNonEmpty!38237 (= mapRes!38237 (and tp!73455 e!584093))))

(declare-fun mapValue!38237 () ValueCell!11550)

(declare-fun mapKey!38237 () (_ BitVec 32))

(declare-fun mapRest!38237 () (Array (_ BitVec 32) ValueCell!11550))

(assert (=> mapNonEmpty!38237 (= (arr!31330 (_values!6244 thiss!1427)) (store mapRest!38237 mapKey!38237 mapValue!38237))))

(declare-fun b!1033323 () Bool)

(declare-fun res!690525 () Bool)

(assert (=> b!1033323 (=> (not res!690525) (not e!584089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033323 (= res!690525 (validMask!0 (mask!30065 thiss!1427)))))

(declare-fun mapIsEmpty!38237 () Bool)

(assert (=> mapIsEmpty!38237 mapRes!38237))

(assert (= (and start!90304 res!690528) b!1033318))

(assert (= (and b!1033318 res!690526) b!1033323))

(assert (= (and b!1033323 res!690525) b!1033321))

(assert (= (and b!1033321 res!690527) b!1033320))

(assert (= (and b!1033317 condMapEmpty!38237) mapIsEmpty!38237))

(assert (= (and b!1033317 (not condMapEmpty!38237)) mapNonEmpty!38237))

(get-info :version)

(assert (= (and mapNonEmpty!38237 ((_ is ValueCellFull!11550) mapValue!38237)) b!1033322))

(assert (= (and b!1033317 ((_ is ValueCellFull!11550) mapDefault!38237)) b!1033316))

(assert (= b!1033319 b!1033317))

(assert (= start!90304 b!1033319))

(declare-fun m!953243 () Bool)

(assert (=> b!1033320 m!953243))

(declare-fun m!953245 () Bool)

(assert (=> b!1033319 m!953245))

(declare-fun m!953247 () Bool)

(assert (=> b!1033319 m!953247))

(declare-fun m!953249 () Bool)

(assert (=> mapNonEmpty!38237 m!953249))

(declare-fun m!953251 () Bool)

(assert (=> start!90304 m!953251))

(declare-fun m!953253 () Bool)

(assert (=> b!1033323 m!953253))

(check-sat (not b!1033320) (not start!90304) (not b!1033323) (not b_next!20787) (not b!1033319) b_and!33273 tp_is_empty!24507 (not mapNonEmpty!38237))
(check-sat b_and!33273 (not b_next!20787))
(get-model)

(declare-fun b!1033356 () Bool)

(declare-fun e!584118 () Bool)

(declare-fun e!584119 () Bool)

(assert (=> b!1033356 (= e!584118 e!584119)))

(declare-fun c!104312 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1033356 (= c!104312 (validKeyInArray!0 (select (arr!31329 (_keys!11396 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033357 () Bool)

(declare-fun e!584120 () Bool)

(declare-fun call!43639 () Bool)

(assert (=> b!1033357 (= e!584120 call!43639)))

(declare-fun d!123733 () Bool)

(declare-fun res!690546 () Bool)

(assert (=> d!123733 (=> res!690546 e!584118)))

(assert (=> d!123733 (= res!690546 (bvsge #b00000000000000000000000000000000 (size!31852 (_keys!11396 thiss!1427))))))

(assert (=> d!123733 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11396 thiss!1427) (mask!30065 thiss!1427)) e!584118)))

(declare-fun b!1033358 () Bool)

(assert (=> b!1033358 (= e!584119 call!43639)))

(declare-fun bm!43636 () Bool)

(assert (=> bm!43636 (= call!43639 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11396 thiss!1427) (mask!30065 thiss!1427)))))

(declare-fun b!1033359 () Bool)

(assert (=> b!1033359 (= e!584119 e!584120)))

(declare-fun lt!456073 () (_ BitVec 64))

(assert (=> b!1033359 (= lt!456073 (select (arr!31329 (_keys!11396 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33806 0))(
  ( (Unit!33807) )
))
(declare-fun lt!456074 () Unit!33806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65074 (_ BitVec 64) (_ BitVec 32)) Unit!33806)

(assert (=> b!1033359 (= lt!456074 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11396 thiss!1427) lt!456073 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1033359 (arrayContainsKey!0 (_keys!11396 thiss!1427) lt!456073 #b00000000000000000000000000000000)))

(declare-fun lt!456075 () Unit!33806)

(assert (=> b!1033359 (= lt!456075 lt!456074)))

(declare-fun res!690545 () Bool)

(declare-datatypes ((SeekEntryResult!9731 0))(
  ( (MissingZero!9731 (index!41294 (_ BitVec 32))) (Found!9731 (index!41295 (_ BitVec 32))) (Intermediate!9731 (undefined!10543 Bool) (index!41296 (_ BitVec 32)) (x!92156 (_ BitVec 32))) (Undefined!9731) (MissingVacant!9731 (index!41297 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65074 (_ BitVec 32)) SeekEntryResult!9731)

(assert (=> b!1033359 (= res!690545 (= (seekEntryOrOpen!0 (select (arr!31329 (_keys!11396 thiss!1427)) #b00000000000000000000000000000000) (_keys!11396 thiss!1427) (mask!30065 thiss!1427)) (Found!9731 #b00000000000000000000000000000000)))))

(assert (=> b!1033359 (=> (not res!690545) (not e!584120))))

(assert (= (and d!123733 (not res!690546)) b!1033356))

(assert (= (and b!1033356 c!104312) b!1033359))

(assert (= (and b!1033356 (not c!104312)) b!1033358))

(assert (= (and b!1033359 res!690545) b!1033357))

(assert (= (or b!1033357 b!1033358) bm!43636))

(declare-fun m!953267 () Bool)

(assert (=> b!1033356 m!953267))

(assert (=> b!1033356 m!953267))

(declare-fun m!953269 () Bool)

(assert (=> b!1033356 m!953269))

(declare-fun m!953271 () Bool)

(assert (=> bm!43636 m!953271))

(assert (=> b!1033359 m!953267))

(declare-fun m!953273 () Bool)

(assert (=> b!1033359 m!953273))

(declare-fun m!953275 () Bool)

(assert (=> b!1033359 m!953275))

(assert (=> b!1033359 m!953267))

(declare-fun m!953277 () Bool)

(assert (=> b!1033359 m!953277))

(assert (=> b!1033320 d!123733))

(declare-fun d!123735 () Bool)

(assert (=> d!123735 (= (array_inv!24073 (_keys!11396 thiss!1427)) (bvsge (size!31852 (_keys!11396 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033319 d!123735))

(declare-fun d!123737 () Bool)

(assert (=> d!123737 (= (array_inv!24074 (_values!6244 thiss!1427)) (bvsge (size!31853 (_values!6244 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033319 d!123737))

(declare-fun d!123739 () Bool)

(declare-fun res!690553 () Bool)

(declare-fun e!584123 () Bool)

(assert (=> d!123739 (=> (not res!690553) (not e!584123))))

(declare-fun simpleValid!402 (LongMapFixedSize!5694) Bool)

(assert (=> d!123739 (= res!690553 (simpleValid!402 thiss!1427))))

(assert (=> d!123739 (= (valid!2102 thiss!1427) e!584123)))

(declare-fun b!1033366 () Bool)

(declare-fun res!690554 () Bool)

(assert (=> b!1033366 (=> (not res!690554) (not e!584123))))

(declare-fun arrayCountValidKeys!0 (array!65074 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1033366 (= res!690554 (= (arrayCountValidKeys!0 (_keys!11396 thiss!1427) #b00000000000000000000000000000000 (size!31852 (_keys!11396 thiss!1427))) (_size!2902 thiss!1427)))))

(declare-fun b!1033367 () Bool)

(declare-fun res!690555 () Bool)

(assert (=> b!1033367 (=> (not res!690555) (not e!584123))))

(assert (=> b!1033367 (= res!690555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11396 thiss!1427) (mask!30065 thiss!1427)))))

(declare-fun b!1033368 () Bool)

(declare-datatypes ((List!22018 0))(
  ( (Nil!22015) (Cons!22014 (h!23216 (_ BitVec 64)) (t!31219 List!22018)) )
))
(declare-fun arrayNoDuplicates!0 (array!65074 (_ BitVec 32) List!22018) Bool)

(assert (=> b!1033368 (= e!584123 (arrayNoDuplicates!0 (_keys!11396 thiss!1427) #b00000000000000000000000000000000 Nil!22015))))

(assert (= (and d!123739 res!690553) b!1033366))

(assert (= (and b!1033366 res!690554) b!1033367))

(assert (= (and b!1033367 res!690555) b!1033368))

(declare-fun m!953279 () Bool)

(assert (=> d!123739 m!953279))

(declare-fun m!953281 () Bool)

(assert (=> b!1033366 m!953281))

(assert (=> b!1033367 m!953243))

(declare-fun m!953283 () Bool)

(assert (=> b!1033368 m!953283))

(assert (=> start!90304 d!123739))

(declare-fun d!123741 () Bool)

(assert (=> d!123741 (= (validMask!0 (mask!30065 thiss!1427)) (and (or (= (mask!30065 thiss!1427) #b00000000000000000000000000000111) (= (mask!30065 thiss!1427) #b00000000000000000000000000001111) (= (mask!30065 thiss!1427) #b00000000000000000000000000011111) (= (mask!30065 thiss!1427) #b00000000000000000000000000111111) (= (mask!30065 thiss!1427) #b00000000000000000000000001111111) (= (mask!30065 thiss!1427) #b00000000000000000000000011111111) (= (mask!30065 thiss!1427) #b00000000000000000000000111111111) (= (mask!30065 thiss!1427) #b00000000000000000000001111111111) (= (mask!30065 thiss!1427) #b00000000000000000000011111111111) (= (mask!30065 thiss!1427) #b00000000000000000000111111111111) (= (mask!30065 thiss!1427) #b00000000000000000001111111111111) (= (mask!30065 thiss!1427) #b00000000000000000011111111111111) (= (mask!30065 thiss!1427) #b00000000000000000111111111111111) (= (mask!30065 thiss!1427) #b00000000000000001111111111111111) (= (mask!30065 thiss!1427) #b00000000000000011111111111111111) (= (mask!30065 thiss!1427) #b00000000000000111111111111111111) (= (mask!30065 thiss!1427) #b00000000000001111111111111111111) (= (mask!30065 thiss!1427) #b00000000000011111111111111111111) (= (mask!30065 thiss!1427) #b00000000000111111111111111111111) (= (mask!30065 thiss!1427) #b00000000001111111111111111111111) (= (mask!30065 thiss!1427) #b00000000011111111111111111111111) (= (mask!30065 thiss!1427) #b00000000111111111111111111111111) (= (mask!30065 thiss!1427) #b00000001111111111111111111111111) (= (mask!30065 thiss!1427) #b00000011111111111111111111111111) (= (mask!30065 thiss!1427) #b00000111111111111111111111111111) (= (mask!30065 thiss!1427) #b00001111111111111111111111111111) (= (mask!30065 thiss!1427) #b00011111111111111111111111111111) (= (mask!30065 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30065 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1033323 d!123741))

(declare-fun condMapEmpty!38243 () Bool)

(declare-fun mapDefault!38243 () ValueCell!11550)

(assert (=> mapNonEmpty!38237 (= condMapEmpty!38243 (= mapRest!38237 ((as const (Array (_ BitVec 32) ValueCell!11550)) mapDefault!38243)))))

(declare-fun e!584128 () Bool)

(declare-fun mapRes!38243 () Bool)

(assert (=> mapNonEmpty!38237 (= tp!73455 (and e!584128 mapRes!38243))))

(declare-fun b!1033375 () Bool)

(declare-fun e!584129 () Bool)

(assert (=> b!1033375 (= e!584129 tp_is_empty!24507)))

(declare-fun mapIsEmpty!38243 () Bool)

(assert (=> mapIsEmpty!38243 mapRes!38243))

(declare-fun b!1033376 () Bool)

(assert (=> b!1033376 (= e!584128 tp_is_empty!24507)))

(declare-fun mapNonEmpty!38243 () Bool)

(declare-fun tp!73465 () Bool)

(assert (=> mapNonEmpty!38243 (= mapRes!38243 (and tp!73465 e!584129))))

(declare-fun mapKey!38243 () (_ BitVec 32))

(declare-fun mapValue!38243 () ValueCell!11550)

(declare-fun mapRest!38243 () (Array (_ BitVec 32) ValueCell!11550))

(assert (=> mapNonEmpty!38243 (= mapRest!38237 (store mapRest!38243 mapKey!38243 mapValue!38243))))

(assert (= (and mapNonEmpty!38237 condMapEmpty!38243) mapIsEmpty!38243))

(assert (= (and mapNonEmpty!38237 (not condMapEmpty!38243)) mapNonEmpty!38243))

(assert (= (and mapNonEmpty!38243 ((_ is ValueCellFull!11550) mapValue!38243)) b!1033375))

(assert (= (and mapNonEmpty!38237 ((_ is ValueCellFull!11550) mapDefault!38243)) b!1033376))

(declare-fun m!953285 () Bool)

(assert (=> mapNonEmpty!38243 m!953285))

(check-sat (not bm!43636) (not b_next!20787) (not b!1033368) b_and!33273 (not b!1033367) (not b!1033366) (not mapNonEmpty!38243) (not b!1033359) (not b!1033356) (not d!123739) tp_is_empty!24507)
(check-sat b_and!33273 (not b_next!20787))
