; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90510 () Bool)

(assert start!90510)

(declare-fun b!1035107 () Bool)

(declare-fun b_free!20829 () Bool)

(declare-fun b_next!20829 () Bool)

(assert (=> b!1035107 (= b_free!20829 (not b_next!20829))))

(declare-fun tp!73608 () Bool)

(declare-fun b_and!33347 () Bool)

(assert (=> b!1035107 (= tp!73608 b_and!33347)))

(declare-fun b!1035101 () Bool)

(declare-fun e!585283 () Bool)

(declare-fun tp_is_empty!24549 () Bool)

(assert (=> b!1035101 (= e!585283 tp_is_empty!24549)))

(declare-fun b!1035102 () Bool)

(declare-fun e!585278 () Bool)

(assert (=> b!1035102 (= e!585278 tp_is_empty!24549)))

(declare-fun b!1035103 () Bool)

(declare-fun res!691279 () Bool)

(declare-fun e!585281 () Bool)

(assert (=> b!1035103 (=> (not res!691279) (not e!585281))))

(declare-datatypes ((V!37605 0))(
  ( (V!37606 (val!12325 Int)) )
))
(declare-datatypes ((ValueCell!11571 0))(
  ( (ValueCellFull!11571 (v!14906 V!37605)) (EmptyCell!11571) )
))
(declare-datatypes ((array!65172 0))(
  ( (array!65173 (arr!31371 (Array (_ BitVec 32) (_ BitVec 64))) (size!31898 (_ BitVec 32))) )
))
(declare-datatypes ((array!65174 0))(
  ( (array!65175 (arr!31372 (Array (_ BitVec 32) ValueCell!11571)) (size!31899 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5736 0))(
  ( (LongMapFixedSize!5737 (defaultEntry!6246 Int) (mask!30118 (_ BitVec 32)) (extraKeys!5976 (_ BitVec 32)) (zeroValue!6080 V!37605) (minValue!6082 V!37605) (_size!2923 (_ BitVec 32)) (_keys!11428 array!65172) (_values!6269 array!65174) (_vacant!2923 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5736)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035103 (= res!691279 (validMask!0 (mask!30118 thiss!1427)))))

(declare-fun b!1035104 () Bool)

(assert (=> b!1035104 (= e!585281 (and (= (size!31899 (_values!6269 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30118 thiss!1427))) (= (size!31898 (_keys!11428 thiss!1427)) (size!31899 (_values!6269 thiss!1427))) (bvsge (mask!30118 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5976 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1035105 () Bool)

(declare-fun e!585282 () Bool)

(declare-fun mapRes!38326 () Bool)

(assert (=> b!1035105 (= e!585282 (and e!585283 mapRes!38326))))

(declare-fun condMapEmpty!38326 () Bool)

(declare-fun mapDefault!38326 () ValueCell!11571)

(assert (=> b!1035105 (= condMapEmpty!38326 (= (arr!31372 (_values!6269 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11571)) mapDefault!38326)))))

(declare-fun b!1035106 () Bool)

(declare-fun res!691280 () Bool)

(assert (=> b!1035106 (=> (not res!691280) (not e!585281))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035106 (= res!691280 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!691281 () Bool)

(assert (=> start!90510 (=> (not res!691281) (not e!585281))))

(declare-fun valid!2115 (LongMapFixedSize!5736) Bool)

(assert (=> start!90510 (= res!691281 (valid!2115 thiss!1427))))

(assert (=> start!90510 e!585281))

(declare-fun e!585280 () Bool)

(assert (=> start!90510 e!585280))

(assert (=> start!90510 true))

(declare-fun mapIsEmpty!38326 () Bool)

(assert (=> mapIsEmpty!38326 mapRes!38326))

(declare-fun array_inv!24099 (array!65172) Bool)

(declare-fun array_inv!24100 (array!65174) Bool)

(assert (=> b!1035107 (= e!585280 (and tp!73608 tp_is_empty!24549 (array_inv!24099 (_keys!11428 thiss!1427)) (array_inv!24100 (_values!6269 thiss!1427)) e!585282))))

(declare-fun mapNonEmpty!38326 () Bool)

(declare-fun tp!73607 () Bool)

(assert (=> mapNonEmpty!38326 (= mapRes!38326 (and tp!73607 e!585278))))

(declare-fun mapKey!38326 () (_ BitVec 32))

(declare-fun mapRest!38326 () (Array (_ BitVec 32) ValueCell!11571))

(declare-fun mapValue!38326 () ValueCell!11571)

(assert (=> mapNonEmpty!38326 (= (arr!31372 (_values!6269 thiss!1427)) (store mapRest!38326 mapKey!38326 mapValue!38326))))

(assert (= (and start!90510 res!691281) b!1035106))

(assert (= (and b!1035106 res!691280) b!1035103))

(assert (= (and b!1035103 res!691279) b!1035104))

(assert (= (and b!1035105 condMapEmpty!38326) mapIsEmpty!38326))

(assert (= (and b!1035105 (not condMapEmpty!38326)) mapNonEmpty!38326))

(get-info :version)

(assert (= (and mapNonEmpty!38326 ((_ is ValueCellFull!11571) mapValue!38326)) b!1035102))

(assert (= (and b!1035105 ((_ is ValueCellFull!11571) mapDefault!38326)) b!1035101))

(assert (= b!1035107 b!1035105))

(assert (= start!90510 b!1035107))

(declare-fun m!955333 () Bool)

(assert (=> b!1035103 m!955333))

(declare-fun m!955335 () Bool)

(assert (=> start!90510 m!955335))

(declare-fun m!955337 () Bool)

(assert (=> b!1035107 m!955337))

(declare-fun m!955339 () Bool)

(assert (=> b!1035107 m!955339))

(declare-fun m!955341 () Bool)

(assert (=> mapNonEmpty!38326 m!955341))

(check-sat (not b_next!20829) (not mapNonEmpty!38326) b_and!33347 (not start!90510) tp_is_empty!24549 (not b!1035103) (not b!1035107))
(check-sat b_and!33347 (not b_next!20829))
(get-model)

(declare-fun d!124443 () Bool)

(assert (=> d!124443 (= (validMask!0 (mask!30118 thiss!1427)) (and (or (= (mask!30118 thiss!1427) #b00000000000000000000000000000111) (= (mask!30118 thiss!1427) #b00000000000000000000000000001111) (= (mask!30118 thiss!1427) #b00000000000000000000000000011111) (= (mask!30118 thiss!1427) #b00000000000000000000000000111111) (= (mask!30118 thiss!1427) #b00000000000000000000000001111111) (= (mask!30118 thiss!1427) #b00000000000000000000000011111111) (= (mask!30118 thiss!1427) #b00000000000000000000000111111111) (= (mask!30118 thiss!1427) #b00000000000000000000001111111111) (= (mask!30118 thiss!1427) #b00000000000000000000011111111111) (= (mask!30118 thiss!1427) #b00000000000000000000111111111111) (= (mask!30118 thiss!1427) #b00000000000000000001111111111111) (= (mask!30118 thiss!1427) #b00000000000000000011111111111111) (= (mask!30118 thiss!1427) #b00000000000000000111111111111111) (= (mask!30118 thiss!1427) #b00000000000000001111111111111111) (= (mask!30118 thiss!1427) #b00000000000000011111111111111111) (= (mask!30118 thiss!1427) #b00000000000000111111111111111111) (= (mask!30118 thiss!1427) #b00000000000001111111111111111111) (= (mask!30118 thiss!1427) #b00000000000011111111111111111111) (= (mask!30118 thiss!1427) #b00000000000111111111111111111111) (= (mask!30118 thiss!1427) #b00000000001111111111111111111111) (= (mask!30118 thiss!1427) #b00000000011111111111111111111111) (= (mask!30118 thiss!1427) #b00000000111111111111111111111111) (= (mask!30118 thiss!1427) #b00000001111111111111111111111111) (= (mask!30118 thiss!1427) #b00000011111111111111111111111111) (= (mask!30118 thiss!1427) #b00000111111111111111111111111111) (= (mask!30118 thiss!1427) #b00001111111111111111111111111111) (= (mask!30118 thiss!1427) #b00011111111111111111111111111111) (= (mask!30118 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30118 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1035103 d!124443))

(declare-fun d!124445 () Bool)

(declare-fun res!691297 () Bool)

(declare-fun e!585304 () Bool)

(assert (=> d!124445 (=> (not res!691297) (not e!585304))))

(declare-fun simpleValid!409 (LongMapFixedSize!5736) Bool)

(assert (=> d!124445 (= res!691297 (simpleValid!409 thiss!1427))))

(assert (=> d!124445 (= (valid!2115 thiss!1427) e!585304)))

(declare-fun b!1035135 () Bool)

(declare-fun res!691298 () Bool)

(assert (=> b!1035135 (=> (not res!691298) (not e!585304))))

(declare-fun arrayCountValidKeys!0 (array!65172 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1035135 (= res!691298 (= (arrayCountValidKeys!0 (_keys!11428 thiss!1427) #b00000000000000000000000000000000 (size!31898 (_keys!11428 thiss!1427))) (_size!2923 thiss!1427)))))

(declare-fun b!1035136 () Bool)

(declare-fun res!691299 () Bool)

(assert (=> b!1035136 (=> (not res!691299) (not e!585304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65172 (_ BitVec 32)) Bool)

(assert (=> b!1035136 (= res!691299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11428 thiss!1427) (mask!30118 thiss!1427)))))

(declare-fun b!1035137 () Bool)

(declare-datatypes ((List!22028 0))(
  ( (Nil!22025) (Cons!22024 (h!23226 (_ BitVec 64)) (t!31238 List!22028)) )
))
(declare-fun arrayNoDuplicates!0 (array!65172 (_ BitVec 32) List!22028) Bool)

(assert (=> b!1035137 (= e!585304 (arrayNoDuplicates!0 (_keys!11428 thiss!1427) #b00000000000000000000000000000000 Nil!22025))))

(assert (= (and d!124445 res!691297) b!1035135))

(assert (= (and b!1035135 res!691298) b!1035136))

(assert (= (and b!1035136 res!691299) b!1035137))

(declare-fun m!955353 () Bool)

(assert (=> d!124445 m!955353))

(declare-fun m!955355 () Bool)

(assert (=> b!1035135 m!955355))

(declare-fun m!955357 () Bool)

(assert (=> b!1035136 m!955357))

(declare-fun m!955359 () Bool)

(assert (=> b!1035137 m!955359))

(assert (=> start!90510 d!124445))

(declare-fun d!124447 () Bool)

(assert (=> d!124447 (= (array_inv!24099 (_keys!11428 thiss!1427)) (bvsge (size!31898 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035107 d!124447))

(declare-fun d!124449 () Bool)

(assert (=> d!124449 (= (array_inv!24100 (_values!6269 thiss!1427)) (bvsge (size!31899 (_values!6269 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035107 d!124449))

(declare-fun b!1035145 () Bool)

(declare-fun e!585310 () Bool)

(assert (=> b!1035145 (= e!585310 tp_is_empty!24549)))

(declare-fun mapIsEmpty!38332 () Bool)

(declare-fun mapRes!38332 () Bool)

(assert (=> mapIsEmpty!38332 mapRes!38332))

(declare-fun b!1035144 () Bool)

(declare-fun e!585309 () Bool)

(assert (=> b!1035144 (= e!585309 tp_is_empty!24549)))

(declare-fun condMapEmpty!38332 () Bool)

(declare-fun mapDefault!38332 () ValueCell!11571)

(assert (=> mapNonEmpty!38326 (= condMapEmpty!38332 (= mapRest!38326 ((as const (Array (_ BitVec 32) ValueCell!11571)) mapDefault!38332)))))

(assert (=> mapNonEmpty!38326 (= tp!73607 (and e!585310 mapRes!38332))))

(declare-fun mapNonEmpty!38332 () Bool)

(declare-fun tp!73617 () Bool)

(assert (=> mapNonEmpty!38332 (= mapRes!38332 (and tp!73617 e!585309))))

(declare-fun mapValue!38332 () ValueCell!11571)

(declare-fun mapKey!38332 () (_ BitVec 32))

(declare-fun mapRest!38332 () (Array (_ BitVec 32) ValueCell!11571))

(assert (=> mapNonEmpty!38332 (= mapRest!38326 (store mapRest!38332 mapKey!38332 mapValue!38332))))

(assert (= (and mapNonEmpty!38326 condMapEmpty!38332) mapIsEmpty!38332))

(assert (= (and mapNonEmpty!38326 (not condMapEmpty!38332)) mapNonEmpty!38332))

(assert (= (and mapNonEmpty!38332 ((_ is ValueCellFull!11571) mapValue!38332)) b!1035144))

(assert (= (and mapNonEmpty!38326 ((_ is ValueCellFull!11571) mapDefault!38332)) b!1035145))

(declare-fun m!955361 () Bool)

(assert (=> mapNonEmpty!38332 m!955361))

(check-sat (not d!124445) (not b_next!20829) (not b!1035137) (not mapNonEmpty!38332) b_and!33347 (not b!1035135) (not b!1035136) tp_is_empty!24549)
(check-sat b_and!33347 (not b_next!20829))
(get-model)

(declare-fun b!1035156 () Bool)

(declare-fun e!585319 () Bool)

(declare-fun contains!6041 (List!22028 (_ BitVec 64)) Bool)

(assert (=> b!1035156 (= e!585319 (contains!6041 Nil!22025 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035157 () Bool)

(declare-fun e!585322 () Bool)

(declare-fun call!43777 () Bool)

(assert (=> b!1035157 (= e!585322 call!43777)))

(declare-fun b!1035158 () Bool)

(assert (=> b!1035158 (= e!585322 call!43777)))

(declare-fun b!1035159 () Bool)

(declare-fun e!585321 () Bool)

(assert (=> b!1035159 (= e!585321 e!585322)))

(declare-fun c!104663 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1035159 (= c!104663 (validKeyInArray!0 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124451 () Bool)

(declare-fun res!691308 () Bool)

(declare-fun e!585320 () Bool)

(assert (=> d!124451 (=> res!691308 e!585320)))

(assert (=> d!124451 (= res!691308 (bvsge #b00000000000000000000000000000000 (size!31898 (_keys!11428 thiss!1427))))))

(assert (=> d!124451 (= (arrayNoDuplicates!0 (_keys!11428 thiss!1427) #b00000000000000000000000000000000 Nil!22025) e!585320)))

(declare-fun bm!43774 () Bool)

(assert (=> bm!43774 (= call!43777 (arrayNoDuplicates!0 (_keys!11428 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104663 (Cons!22024 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000) Nil!22025) Nil!22025)))))

(declare-fun b!1035160 () Bool)

(assert (=> b!1035160 (= e!585320 e!585321)))

(declare-fun res!691306 () Bool)

(assert (=> b!1035160 (=> (not res!691306) (not e!585321))))

(assert (=> b!1035160 (= res!691306 (not e!585319))))

(declare-fun res!691307 () Bool)

(assert (=> b!1035160 (=> (not res!691307) (not e!585319))))

(assert (=> b!1035160 (= res!691307 (validKeyInArray!0 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124451 (not res!691308)) b!1035160))

(assert (= (and b!1035160 res!691307) b!1035156))

(assert (= (and b!1035160 res!691306) b!1035159))

(assert (= (and b!1035159 c!104663) b!1035158))

(assert (= (and b!1035159 (not c!104663)) b!1035157))

(assert (= (or b!1035158 b!1035157) bm!43774))

(declare-fun m!955363 () Bool)

(assert (=> b!1035156 m!955363))

(assert (=> b!1035156 m!955363))

(declare-fun m!955365 () Bool)

(assert (=> b!1035156 m!955365))

(assert (=> b!1035159 m!955363))

(assert (=> b!1035159 m!955363))

(declare-fun m!955367 () Bool)

(assert (=> b!1035159 m!955367))

(assert (=> bm!43774 m!955363))

(declare-fun m!955369 () Bool)

(assert (=> bm!43774 m!955369))

(assert (=> b!1035160 m!955363))

(assert (=> b!1035160 m!955363))

(assert (=> b!1035160 m!955367))

(assert (=> b!1035137 d!124451))

(declare-fun b!1035169 () Bool)

(declare-fun e!585328 () (_ BitVec 32))

(declare-fun call!43780 () (_ BitVec 32))

(assert (=> b!1035169 (= e!585328 call!43780)))

(declare-fun b!1035170 () Bool)

(assert (=> b!1035170 (= e!585328 (bvadd #b00000000000000000000000000000001 call!43780))))

(declare-fun b!1035171 () Bool)

(declare-fun e!585327 () (_ BitVec 32))

(assert (=> b!1035171 (= e!585327 e!585328)))

(declare-fun c!104668 () Bool)

(assert (=> b!1035171 (= c!104668 (validKeyInArray!0 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124453 () Bool)

(declare-fun lt!456712 () (_ BitVec 32))

(assert (=> d!124453 (and (bvsge lt!456712 #b00000000000000000000000000000000) (bvsle lt!456712 (bvsub (size!31898 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124453 (= lt!456712 e!585327)))

(declare-fun c!104669 () Bool)

(assert (=> d!124453 (= c!104669 (bvsge #b00000000000000000000000000000000 (size!31898 (_keys!11428 thiss!1427))))))

(assert (=> d!124453 (and (bvsle #b00000000000000000000000000000000 (size!31898 (_keys!11428 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31898 (_keys!11428 thiss!1427)) (size!31898 (_keys!11428 thiss!1427))))))

(assert (=> d!124453 (= (arrayCountValidKeys!0 (_keys!11428 thiss!1427) #b00000000000000000000000000000000 (size!31898 (_keys!11428 thiss!1427))) lt!456712)))

(declare-fun bm!43777 () Bool)

(assert (=> bm!43777 (= call!43780 (arrayCountValidKeys!0 (_keys!11428 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31898 (_keys!11428 thiss!1427))))))

(declare-fun b!1035172 () Bool)

(assert (=> b!1035172 (= e!585327 #b00000000000000000000000000000000)))

(assert (= (and d!124453 c!104669) b!1035172))

(assert (= (and d!124453 (not c!104669)) b!1035171))

(assert (= (and b!1035171 c!104668) b!1035170))

(assert (= (and b!1035171 (not c!104668)) b!1035169))

(assert (= (or b!1035170 b!1035169) bm!43777))

(assert (=> b!1035171 m!955363))

(assert (=> b!1035171 m!955363))

(assert (=> b!1035171 m!955367))

(declare-fun m!955371 () Bool)

(assert (=> bm!43777 m!955371))

(assert (=> b!1035135 d!124453))

(declare-fun b!1035183 () Bool)

(declare-fun res!691318 () Bool)

(declare-fun e!585331 () Bool)

(assert (=> b!1035183 (=> (not res!691318) (not e!585331))))

(declare-fun size!31902 (LongMapFixedSize!5736) (_ BitVec 32))

(assert (=> b!1035183 (= res!691318 (= (size!31902 thiss!1427) (bvadd (_size!2923 thiss!1427) (bvsdiv (bvadd (extraKeys!5976 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!124455 () Bool)

(declare-fun res!691320 () Bool)

(assert (=> d!124455 (=> (not res!691320) (not e!585331))))

(assert (=> d!124455 (= res!691320 (validMask!0 (mask!30118 thiss!1427)))))

(assert (=> d!124455 (= (simpleValid!409 thiss!1427) e!585331)))

(declare-fun b!1035184 () Bool)

(assert (=> b!1035184 (= e!585331 (and (bvsge (extraKeys!5976 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5976 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2923 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1035181 () Bool)

(declare-fun res!691317 () Bool)

(assert (=> b!1035181 (=> (not res!691317) (not e!585331))))

(assert (=> b!1035181 (= res!691317 (and (= (size!31899 (_values!6269 thiss!1427)) (bvadd (mask!30118 thiss!1427) #b00000000000000000000000000000001)) (= (size!31898 (_keys!11428 thiss!1427)) (size!31899 (_values!6269 thiss!1427))) (bvsge (_size!2923 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2923 thiss!1427) (bvadd (mask!30118 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1035182 () Bool)

(declare-fun res!691319 () Bool)

(assert (=> b!1035182 (=> (not res!691319) (not e!585331))))

(assert (=> b!1035182 (= res!691319 (bvsge (size!31902 thiss!1427) (_size!2923 thiss!1427)))))

(assert (= (and d!124455 res!691320) b!1035181))

(assert (= (and b!1035181 res!691317) b!1035182))

(assert (= (and b!1035182 res!691319) b!1035183))

(assert (= (and b!1035183 res!691318) b!1035184))

(declare-fun m!955373 () Bool)

(assert (=> b!1035183 m!955373))

(assert (=> d!124455 m!955333))

(assert (=> b!1035182 m!955373))

(assert (=> d!124445 d!124455))

(declare-fun bm!43780 () Bool)

(declare-fun call!43783 () Bool)

(assert (=> bm!43780 (= call!43783 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11428 thiss!1427) (mask!30118 thiss!1427)))))

(declare-fun d!124457 () Bool)

(declare-fun res!691325 () Bool)

(declare-fun e!585339 () Bool)

(assert (=> d!124457 (=> res!691325 e!585339)))

(assert (=> d!124457 (= res!691325 (bvsge #b00000000000000000000000000000000 (size!31898 (_keys!11428 thiss!1427))))))

(assert (=> d!124457 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11428 thiss!1427) (mask!30118 thiss!1427)) e!585339)))

(declare-fun b!1035193 () Bool)

(declare-fun e!585340 () Bool)

(assert (=> b!1035193 (= e!585340 call!43783)))

(declare-fun b!1035194 () Bool)

(declare-fun e!585338 () Bool)

(assert (=> b!1035194 (= e!585339 e!585338)))

(declare-fun c!104672 () Bool)

(assert (=> b!1035194 (= c!104672 (validKeyInArray!0 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035195 () Bool)

(assert (=> b!1035195 (= e!585338 e!585340)))

(declare-fun lt!456721 () (_ BitVec 64))

(assert (=> b!1035195 (= lt!456721 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33863 0))(
  ( (Unit!33864) )
))
(declare-fun lt!456719 () Unit!33863)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65172 (_ BitVec 64) (_ BitVec 32)) Unit!33863)

(assert (=> b!1035195 (= lt!456719 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11428 thiss!1427) lt!456721 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1035195 (arrayContainsKey!0 (_keys!11428 thiss!1427) lt!456721 #b00000000000000000000000000000000)))

(declare-fun lt!456720 () Unit!33863)

(assert (=> b!1035195 (= lt!456720 lt!456719)))

(declare-fun res!691326 () Bool)

(declare-datatypes ((SeekEntryResult!9737 0))(
  ( (MissingZero!9737 (index!41318 (_ BitVec 32))) (Found!9737 (index!41319 (_ BitVec 32))) (Intermediate!9737 (undefined!10549 Bool) (index!41320 (_ BitVec 32)) (x!92331 (_ BitVec 32))) (Undefined!9737) (MissingVacant!9737 (index!41321 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65172 (_ BitVec 32)) SeekEntryResult!9737)

(assert (=> b!1035195 (= res!691326 (= (seekEntryOrOpen!0 (select (arr!31371 (_keys!11428 thiss!1427)) #b00000000000000000000000000000000) (_keys!11428 thiss!1427) (mask!30118 thiss!1427)) (Found!9737 #b00000000000000000000000000000000)))))

(assert (=> b!1035195 (=> (not res!691326) (not e!585340))))

(declare-fun b!1035196 () Bool)

(assert (=> b!1035196 (= e!585338 call!43783)))

(assert (= (and d!124457 (not res!691325)) b!1035194))

(assert (= (and b!1035194 c!104672) b!1035195))

(assert (= (and b!1035194 (not c!104672)) b!1035196))

(assert (= (and b!1035195 res!691326) b!1035193))

(assert (= (or b!1035193 b!1035196) bm!43780))

(declare-fun m!955375 () Bool)

(assert (=> bm!43780 m!955375))

(assert (=> b!1035194 m!955363))

(assert (=> b!1035194 m!955363))

(assert (=> b!1035194 m!955367))

(assert (=> b!1035195 m!955363))

(declare-fun m!955377 () Bool)

(assert (=> b!1035195 m!955377))

(declare-fun m!955379 () Bool)

(assert (=> b!1035195 m!955379))

(assert (=> b!1035195 m!955363))

(declare-fun m!955381 () Bool)

(assert (=> b!1035195 m!955381))

(assert (=> b!1035136 d!124457))

(declare-fun b!1035198 () Bool)

(declare-fun e!585342 () Bool)

(assert (=> b!1035198 (= e!585342 tp_is_empty!24549)))

(declare-fun mapIsEmpty!38333 () Bool)

(declare-fun mapRes!38333 () Bool)

(assert (=> mapIsEmpty!38333 mapRes!38333))

(declare-fun b!1035197 () Bool)

(declare-fun e!585341 () Bool)

(assert (=> b!1035197 (= e!585341 tp_is_empty!24549)))

(declare-fun condMapEmpty!38333 () Bool)

(declare-fun mapDefault!38333 () ValueCell!11571)

(assert (=> mapNonEmpty!38332 (= condMapEmpty!38333 (= mapRest!38332 ((as const (Array (_ BitVec 32) ValueCell!11571)) mapDefault!38333)))))

(assert (=> mapNonEmpty!38332 (= tp!73617 (and e!585342 mapRes!38333))))

(declare-fun mapNonEmpty!38333 () Bool)

(declare-fun tp!73618 () Bool)

(assert (=> mapNonEmpty!38333 (= mapRes!38333 (and tp!73618 e!585341))))

(declare-fun mapRest!38333 () (Array (_ BitVec 32) ValueCell!11571))

(declare-fun mapValue!38333 () ValueCell!11571)

(declare-fun mapKey!38333 () (_ BitVec 32))

(assert (=> mapNonEmpty!38333 (= mapRest!38332 (store mapRest!38333 mapKey!38333 mapValue!38333))))

(assert (= (and mapNonEmpty!38332 condMapEmpty!38333) mapIsEmpty!38333))

(assert (= (and mapNonEmpty!38332 (not condMapEmpty!38333)) mapNonEmpty!38333))

(assert (= (and mapNonEmpty!38333 ((_ is ValueCellFull!11571) mapValue!38333)) b!1035197))

(assert (= (and mapNonEmpty!38332 ((_ is ValueCellFull!11571) mapDefault!38333)) b!1035198))

(declare-fun m!955383 () Bool)

(assert (=> mapNonEmpty!38333 m!955383))

(check-sat (not mapNonEmpty!38333) (not b!1035156) (not bm!43777) (not bm!43780) (not b!1035183) (not b!1035182) (not b!1035160) (not b!1035195) (not bm!43774) tp_is_empty!24549 (not b!1035171) (not b_next!20829) (not d!124455) (not b!1035159) (not b!1035194) b_and!33347)
(check-sat b_and!33347 (not b_next!20829))
