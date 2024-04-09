; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90532 () Bool)

(assert start!90532)

(declare-fun b!1035234 () Bool)

(declare-fun b_free!20835 () Bool)

(declare-fun b_next!20835 () Bool)

(assert (=> b!1035234 (= b_free!20835 (not b_next!20835))))

(declare-fun tp!73630 () Bool)

(declare-fun b_and!33353 () Bool)

(assert (=> b!1035234 (= tp!73630 b_and!33353)))

(declare-fun res!691343 () Bool)

(declare-fun e!585376 () Bool)

(assert (=> start!90532 (=> (not res!691343) (not e!585376))))

(declare-datatypes ((V!37613 0))(
  ( (V!37614 (val!12328 Int)) )
))
(declare-datatypes ((ValueCell!11574 0))(
  ( (ValueCellFull!11574 (v!14909 V!37613)) (EmptyCell!11574) )
))
(declare-datatypes ((array!65186 0))(
  ( (array!65187 (arr!31377 (Array (_ BitVec 32) (_ BitVec 64))) (size!31905 (_ BitVec 32))) )
))
(declare-datatypes ((array!65188 0))(
  ( (array!65189 (arr!31378 (Array (_ BitVec 32) ValueCell!11574)) (size!31906 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5742 0))(
  ( (LongMapFixedSize!5743 (defaultEntry!6249 Int) (mask!30125 (_ BitVec 32)) (extraKeys!5979 (_ BitVec 32)) (zeroValue!6083 V!37613) (minValue!6085 V!37613) (_size!2926 (_ BitVec 32)) (_keys!11432 array!65186) (_values!6272 array!65188) (_vacant!2926 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5742)

(declare-fun valid!2117 (LongMapFixedSize!5742) Bool)

(assert (=> start!90532 (= res!691343 (valid!2117 thiss!1427))))

(assert (=> start!90532 e!585376))

(declare-fun e!585378 () Bool)

(assert (=> start!90532 e!585378))

(assert (=> start!90532 true))

(declare-fun tp_is_empty!24555 () Bool)

(declare-fun e!585373 () Bool)

(declare-fun array_inv!24101 (array!65186) Bool)

(declare-fun array_inv!24102 (array!65188) Bool)

(assert (=> b!1035234 (= e!585378 (and tp!73630 tp_is_empty!24555 (array_inv!24101 (_keys!11432 thiss!1427)) (array_inv!24102 (_values!6272 thiss!1427)) e!585373))))

(declare-fun mapIsEmpty!38339 () Bool)

(declare-fun mapRes!38339 () Bool)

(assert (=> mapIsEmpty!38339 mapRes!38339))

(declare-fun b!1035235 () Bool)

(declare-fun res!691342 () Bool)

(assert (=> b!1035235 (=> (not res!691342) (not e!585376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035235 (= res!691342 (validMask!0 (mask!30125 thiss!1427)))))

(declare-fun b!1035236 () Bool)

(assert (=> b!1035236 (= e!585376 (and (= (size!31906 (_values!6272 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30125 thiss!1427))) (= (size!31905 (_keys!11432 thiss!1427)) (size!31906 (_values!6272 thiss!1427))) (bvsge (mask!30125 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5979 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5979 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1035237 () Bool)

(declare-fun e!585377 () Bool)

(assert (=> b!1035237 (= e!585377 tp_is_empty!24555)))

(declare-fun mapNonEmpty!38339 () Bool)

(declare-fun tp!73629 () Bool)

(declare-fun e!585375 () Bool)

(assert (=> mapNonEmpty!38339 (= mapRes!38339 (and tp!73629 e!585375))))

(declare-fun mapValue!38339 () ValueCell!11574)

(declare-fun mapRest!38339 () (Array (_ BitVec 32) ValueCell!11574))

(declare-fun mapKey!38339 () (_ BitVec 32))

(assert (=> mapNonEmpty!38339 (= (arr!31378 (_values!6272 thiss!1427)) (store mapRest!38339 mapKey!38339 mapValue!38339))))

(declare-fun b!1035238 () Bool)

(assert (=> b!1035238 (= e!585375 tp_is_empty!24555)))

(declare-fun b!1035239 () Bool)

(assert (=> b!1035239 (= e!585373 (and e!585377 mapRes!38339))))

(declare-fun condMapEmpty!38339 () Bool)

(declare-fun mapDefault!38339 () ValueCell!11574)

(assert (=> b!1035239 (= condMapEmpty!38339 (= (arr!31378 (_values!6272 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11574)) mapDefault!38339)))))

(declare-fun b!1035240 () Bool)

(declare-fun res!691344 () Bool)

(assert (=> b!1035240 (=> (not res!691344) (not e!585376))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035240 (= res!691344 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!90532 res!691343) b!1035240))

(assert (= (and b!1035240 res!691344) b!1035235))

(assert (= (and b!1035235 res!691342) b!1035236))

(assert (= (and b!1035239 condMapEmpty!38339) mapIsEmpty!38339))

(assert (= (and b!1035239 (not condMapEmpty!38339)) mapNonEmpty!38339))

(get-info :version)

(assert (= (and mapNonEmpty!38339 ((_ is ValueCellFull!11574) mapValue!38339)) b!1035238))

(assert (= (and b!1035239 ((_ is ValueCellFull!11574) mapDefault!38339)) b!1035237))

(assert (= b!1035234 b!1035239))

(assert (= start!90532 b!1035234))

(declare-fun m!955395 () Bool)

(assert (=> start!90532 m!955395))

(declare-fun m!955397 () Bool)

(assert (=> b!1035234 m!955397))

(declare-fun m!955399 () Bool)

(assert (=> b!1035234 m!955399))

(declare-fun m!955401 () Bool)

(assert (=> b!1035235 m!955401))

(declare-fun m!955403 () Bool)

(assert (=> mapNonEmpty!38339 m!955403))

(check-sat (not b!1035234) b_and!33353 (not start!90532) (not b!1035235) tp_is_empty!24555 (not b_next!20835) (not mapNonEmpty!38339))
(check-sat b_and!33353 (not b_next!20835))
(get-model)

(declare-fun d!124461 () Bool)

(declare-fun res!691360 () Bool)

(declare-fun e!585399 () Bool)

(assert (=> d!124461 (=> (not res!691360) (not e!585399))))

(declare-fun simpleValid!410 (LongMapFixedSize!5742) Bool)

(assert (=> d!124461 (= res!691360 (simpleValid!410 thiss!1427))))

(assert (=> d!124461 (= (valid!2117 thiss!1427) e!585399)))

(declare-fun b!1035268 () Bool)

(declare-fun res!691361 () Bool)

(assert (=> b!1035268 (=> (not res!691361) (not e!585399))))

(declare-fun arrayCountValidKeys!0 (array!65186 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1035268 (= res!691361 (= (arrayCountValidKeys!0 (_keys!11432 thiss!1427) #b00000000000000000000000000000000 (size!31905 (_keys!11432 thiss!1427))) (_size!2926 thiss!1427)))))

(declare-fun b!1035269 () Bool)

(declare-fun res!691362 () Bool)

(assert (=> b!1035269 (=> (not res!691362) (not e!585399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65186 (_ BitVec 32)) Bool)

(assert (=> b!1035269 (= res!691362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11432 thiss!1427) (mask!30125 thiss!1427)))))

(declare-fun b!1035270 () Bool)

(declare-datatypes ((List!22029 0))(
  ( (Nil!22026) (Cons!22025 (h!23227 (_ BitVec 64)) (t!31239 List!22029)) )
))
(declare-fun arrayNoDuplicates!0 (array!65186 (_ BitVec 32) List!22029) Bool)

(assert (=> b!1035270 (= e!585399 (arrayNoDuplicates!0 (_keys!11432 thiss!1427) #b00000000000000000000000000000000 Nil!22026))))

(assert (= (and d!124461 res!691360) b!1035268))

(assert (= (and b!1035268 res!691361) b!1035269))

(assert (= (and b!1035269 res!691362) b!1035270))

(declare-fun m!955415 () Bool)

(assert (=> d!124461 m!955415))

(declare-fun m!955417 () Bool)

(assert (=> b!1035268 m!955417))

(declare-fun m!955419 () Bool)

(assert (=> b!1035269 m!955419))

(declare-fun m!955421 () Bool)

(assert (=> b!1035270 m!955421))

(assert (=> start!90532 d!124461))

(declare-fun d!124463 () Bool)

(assert (=> d!124463 (= (array_inv!24101 (_keys!11432 thiss!1427)) (bvsge (size!31905 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035234 d!124463))

(declare-fun d!124465 () Bool)

(assert (=> d!124465 (= (array_inv!24102 (_values!6272 thiss!1427)) (bvsge (size!31906 (_values!6272 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035234 d!124465))

(declare-fun d!124467 () Bool)

(assert (=> d!124467 (= (validMask!0 (mask!30125 thiss!1427)) (and (or (= (mask!30125 thiss!1427) #b00000000000000000000000000000111) (= (mask!30125 thiss!1427) #b00000000000000000000000000001111) (= (mask!30125 thiss!1427) #b00000000000000000000000000011111) (= (mask!30125 thiss!1427) #b00000000000000000000000000111111) (= (mask!30125 thiss!1427) #b00000000000000000000000001111111) (= (mask!30125 thiss!1427) #b00000000000000000000000011111111) (= (mask!30125 thiss!1427) #b00000000000000000000000111111111) (= (mask!30125 thiss!1427) #b00000000000000000000001111111111) (= (mask!30125 thiss!1427) #b00000000000000000000011111111111) (= (mask!30125 thiss!1427) #b00000000000000000000111111111111) (= (mask!30125 thiss!1427) #b00000000000000000001111111111111) (= (mask!30125 thiss!1427) #b00000000000000000011111111111111) (= (mask!30125 thiss!1427) #b00000000000000000111111111111111) (= (mask!30125 thiss!1427) #b00000000000000001111111111111111) (= (mask!30125 thiss!1427) #b00000000000000011111111111111111) (= (mask!30125 thiss!1427) #b00000000000000111111111111111111) (= (mask!30125 thiss!1427) #b00000000000001111111111111111111) (= (mask!30125 thiss!1427) #b00000000000011111111111111111111) (= (mask!30125 thiss!1427) #b00000000000111111111111111111111) (= (mask!30125 thiss!1427) #b00000000001111111111111111111111) (= (mask!30125 thiss!1427) #b00000000011111111111111111111111) (= (mask!30125 thiss!1427) #b00000000111111111111111111111111) (= (mask!30125 thiss!1427) #b00000001111111111111111111111111) (= (mask!30125 thiss!1427) #b00000011111111111111111111111111) (= (mask!30125 thiss!1427) #b00000111111111111111111111111111) (= (mask!30125 thiss!1427) #b00001111111111111111111111111111) (= (mask!30125 thiss!1427) #b00011111111111111111111111111111) (= (mask!30125 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30125 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1035235 d!124467))

(declare-fun b!1035278 () Bool)

(declare-fun e!585405 () Bool)

(assert (=> b!1035278 (= e!585405 tp_is_empty!24555)))

(declare-fun b!1035277 () Bool)

(declare-fun e!585404 () Bool)

(assert (=> b!1035277 (= e!585404 tp_is_empty!24555)))

(declare-fun condMapEmpty!38345 () Bool)

(declare-fun mapDefault!38345 () ValueCell!11574)

(assert (=> mapNonEmpty!38339 (= condMapEmpty!38345 (= mapRest!38339 ((as const (Array (_ BitVec 32) ValueCell!11574)) mapDefault!38345)))))

(declare-fun mapRes!38345 () Bool)

(assert (=> mapNonEmpty!38339 (= tp!73629 (and e!585405 mapRes!38345))))

(declare-fun mapIsEmpty!38345 () Bool)

(assert (=> mapIsEmpty!38345 mapRes!38345))

(declare-fun mapNonEmpty!38345 () Bool)

(declare-fun tp!73639 () Bool)

(assert (=> mapNonEmpty!38345 (= mapRes!38345 (and tp!73639 e!585404))))

(declare-fun mapValue!38345 () ValueCell!11574)

(declare-fun mapKey!38345 () (_ BitVec 32))

(declare-fun mapRest!38345 () (Array (_ BitVec 32) ValueCell!11574))

(assert (=> mapNonEmpty!38345 (= mapRest!38339 (store mapRest!38345 mapKey!38345 mapValue!38345))))

(assert (= (and mapNonEmpty!38339 condMapEmpty!38345) mapIsEmpty!38345))

(assert (= (and mapNonEmpty!38339 (not condMapEmpty!38345)) mapNonEmpty!38345))

(assert (= (and mapNonEmpty!38345 ((_ is ValueCellFull!11574) mapValue!38345)) b!1035277))

(assert (= (and mapNonEmpty!38339 ((_ is ValueCellFull!11574) mapDefault!38345)) b!1035278))

(declare-fun m!955423 () Bool)

(assert (=> mapNonEmpty!38345 m!955423))

(check-sat (not b!1035269) b_and!33353 (not b!1035268) tp_is_empty!24555 (not d!124461) (not b_next!20835) (not b!1035270) (not mapNonEmpty!38345))
(check-sat b_and!33353 (not b_next!20835))
(get-model)

(declare-fun b!1035287 () Bool)

(declare-fun res!691374 () Bool)

(declare-fun e!585408 () Bool)

(assert (=> b!1035287 (=> (not res!691374) (not e!585408))))

(assert (=> b!1035287 (= res!691374 (and (= (size!31906 (_values!6272 thiss!1427)) (bvadd (mask!30125 thiss!1427) #b00000000000000000000000000000001)) (= (size!31905 (_keys!11432 thiss!1427)) (size!31906 (_values!6272 thiss!1427))) (bvsge (_size!2926 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2926 thiss!1427) (bvadd (mask!30125 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1035288 () Bool)

(declare-fun res!691373 () Bool)

(assert (=> b!1035288 (=> (not res!691373) (not e!585408))))

(declare-fun size!31909 (LongMapFixedSize!5742) (_ BitVec 32))

(assert (=> b!1035288 (= res!691373 (bvsge (size!31909 thiss!1427) (_size!2926 thiss!1427)))))

(declare-fun d!124469 () Bool)

(declare-fun res!691371 () Bool)

(assert (=> d!124469 (=> (not res!691371) (not e!585408))))

(assert (=> d!124469 (= res!691371 (validMask!0 (mask!30125 thiss!1427)))))

(assert (=> d!124469 (= (simpleValid!410 thiss!1427) e!585408)))

(declare-fun b!1035290 () Bool)

(assert (=> b!1035290 (= e!585408 (and (bvsge (extraKeys!5979 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5979 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2926 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1035289 () Bool)

(declare-fun res!691372 () Bool)

(assert (=> b!1035289 (=> (not res!691372) (not e!585408))))

(assert (=> b!1035289 (= res!691372 (= (size!31909 thiss!1427) (bvadd (_size!2926 thiss!1427) (bvsdiv (bvadd (extraKeys!5979 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!124469 res!691371) b!1035287))

(assert (= (and b!1035287 res!691374) b!1035288))

(assert (= (and b!1035288 res!691373) b!1035289))

(assert (= (and b!1035289 res!691372) b!1035290))

(declare-fun m!955425 () Bool)

(assert (=> b!1035288 m!955425))

(assert (=> d!124469 m!955401))

(assert (=> b!1035289 m!955425))

(assert (=> d!124461 d!124469))

(declare-fun b!1035299 () Bool)

(declare-fun e!585414 () (_ BitVec 32))

(declare-fun e!585413 () (_ BitVec 32))

(assert (=> b!1035299 (= e!585414 e!585413)))

(declare-fun c!104678 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1035299 (= c!104678 (validKeyInArray!0 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035300 () Bool)

(assert (=> b!1035300 (= e!585414 #b00000000000000000000000000000000)))

(declare-fun b!1035301 () Bool)

(declare-fun call!43786 () (_ BitVec 32))

(assert (=> b!1035301 (= e!585413 (bvadd #b00000000000000000000000000000001 call!43786))))

(declare-fun bm!43783 () Bool)

(assert (=> bm!43783 (= call!43786 (arrayCountValidKeys!0 (_keys!11432 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31905 (_keys!11432 thiss!1427))))))

(declare-fun d!124471 () Bool)

(declare-fun lt!456724 () (_ BitVec 32))

(assert (=> d!124471 (and (bvsge lt!456724 #b00000000000000000000000000000000) (bvsle lt!456724 (bvsub (size!31905 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124471 (= lt!456724 e!585414)))

(declare-fun c!104677 () Bool)

(assert (=> d!124471 (= c!104677 (bvsge #b00000000000000000000000000000000 (size!31905 (_keys!11432 thiss!1427))))))

(assert (=> d!124471 (and (bvsle #b00000000000000000000000000000000 (size!31905 (_keys!11432 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31905 (_keys!11432 thiss!1427)) (size!31905 (_keys!11432 thiss!1427))))))

(assert (=> d!124471 (= (arrayCountValidKeys!0 (_keys!11432 thiss!1427) #b00000000000000000000000000000000 (size!31905 (_keys!11432 thiss!1427))) lt!456724)))

(declare-fun b!1035302 () Bool)

(assert (=> b!1035302 (= e!585413 call!43786)))

(assert (= (and d!124471 c!104677) b!1035300))

(assert (= (and d!124471 (not c!104677)) b!1035299))

(assert (= (and b!1035299 c!104678) b!1035301))

(assert (= (and b!1035299 (not c!104678)) b!1035302))

(assert (= (or b!1035301 b!1035302) bm!43783))

(declare-fun m!955427 () Bool)

(assert (=> b!1035299 m!955427))

(assert (=> b!1035299 m!955427))

(declare-fun m!955429 () Bool)

(assert (=> b!1035299 m!955429))

(declare-fun m!955431 () Bool)

(assert (=> bm!43783 m!955431))

(assert (=> b!1035268 d!124471))

(declare-fun b!1035313 () Bool)

(declare-fun e!585426 () Bool)

(declare-fun call!43789 () Bool)

(assert (=> b!1035313 (= e!585426 call!43789)))

(declare-fun bm!43786 () Bool)

(declare-fun c!104681 () Bool)

(assert (=> bm!43786 (= call!43789 (arrayNoDuplicates!0 (_keys!11432 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104681 (Cons!22025 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000) Nil!22026) Nil!22026)))))

(declare-fun b!1035314 () Bool)

(assert (=> b!1035314 (= e!585426 call!43789)))

(declare-fun b!1035315 () Bool)

(declare-fun e!585424 () Bool)

(assert (=> b!1035315 (= e!585424 e!585426)))

(assert (=> b!1035315 (= c!104681 (validKeyInArray!0 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124473 () Bool)

(declare-fun res!691381 () Bool)

(declare-fun e!585423 () Bool)

(assert (=> d!124473 (=> res!691381 e!585423)))

(assert (=> d!124473 (= res!691381 (bvsge #b00000000000000000000000000000000 (size!31905 (_keys!11432 thiss!1427))))))

(assert (=> d!124473 (= (arrayNoDuplicates!0 (_keys!11432 thiss!1427) #b00000000000000000000000000000000 Nil!22026) e!585423)))

(declare-fun b!1035316 () Bool)

(declare-fun e!585425 () Bool)

(declare-fun contains!6042 (List!22029 (_ BitVec 64)) Bool)

(assert (=> b!1035316 (= e!585425 (contains!6042 Nil!22026 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1035317 () Bool)

(assert (=> b!1035317 (= e!585423 e!585424)))

(declare-fun res!691382 () Bool)

(assert (=> b!1035317 (=> (not res!691382) (not e!585424))))

(assert (=> b!1035317 (= res!691382 (not e!585425))))

(declare-fun res!691383 () Bool)

(assert (=> b!1035317 (=> (not res!691383) (not e!585425))))

(assert (=> b!1035317 (= res!691383 (validKeyInArray!0 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124473 (not res!691381)) b!1035317))

(assert (= (and b!1035317 res!691383) b!1035316))

(assert (= (and b!1035317 res!691382) b!1035315))

(assert (= (and b!1035315 c!104681) b!1035314))

(assert (= (and b!1035315 (not c!104681)) b!1035313))

(assert (= (or b!1035314 b!1035313) bm!43786))

(assert (=> bm!43786 m!955427))

(declare-fun m!955433 () Bool)

(assert (=> bm!43786 m!955433))

(assert (=> b!1035315 m!955427))

(assert (=> b!1035315 m!955427))

(assert (=> b!1035315 m!955429))

(assert (=> b!1035316 m!955427))

(assert (=> b!1035316 m!955427))

(declare-fun m!955435 () Bool)

(assert (=> b!1035316 m!955435))

(assert (=> b!1035317 m!955427))

(assert (=> b!1035317 m!955427))

(assert (=> b!1035317 m!955429))

(assert (=> b!1035270 d!124473))

(declare-fun b!1035326 () Bool)

(declare-fun e!585435 () Bool)

(declare-fun e!585433 () Bool)

(assert (=> b!1035326 (= e!585435 e!585433)))

(declare-fun c!104684 () Bool)

(assert (=> b!1035326 (= c!104684 (validKeyInArray!0 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43789 () Bool)

(declare-fun call!43792 () Bool)

(assert (=> bm!43789 (= call!43792 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11432 thiss!1427) (mask!30125 thiss!1427)))))

(declare-fun d!124475 () Bool)

(declare-fun res!691389 () Bool)

(assert (=> d!124475 (=> res!691389 e!585435)))

(assert (=> d!124475 (= res!691389 (bvsge #b00000000000000000000000000000000 (size!31905 (_keys!11432 thiss!1427))))))

(assert (=> d!124475 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11432 thiss!1427) (mask!30125 thiss!1427)) e!585435)))

(declare-fun b!1035327 () Bool)

(declare-fun e!585434 () Bool)

(assert (=> b!1035327 (= e!585433 e!585434)))

(declare-fun lt!456731 () (_ BitVec 64))

(assert (=> b!1035327 (= lt!456731 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33865 0))(
  ( (Unit!33866) )
))
(declare-fun lt!456732 () Unit!33865)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65186 (_ BitVec 64) (_ BitVec 32)) Unit!33865)

(assert (=> b!1035327 (= lt!456732 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11432 thiss!1427) lt!456731 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1035327 (arrayContainsKey!0 (_keys!11432 thiss!1427) lt!456731 #b00000000000000000000000000000000)))

(declare-fun lt!456733 () Unit!33865)

(assert (=> b!1035327 (= lt!456733 lt!456732)))

(declare-fun res!691388 () Bool)

(declare-datatypes ((SeekEntryResult!9738 0))(
  ( (MissingZero!9738 (index!41322 (_ BitVec 32))) (Found!9738 (index!41323 (_ BitVec 32))) (Intermediate!9738 (undefined!10550 Bool) (index!41324 (_ BitVec 32)) (x!92354 (_ BitVec 32))) (Undefined!9738) (MissingVacant!9738 (index!41325 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65186 (_ BitVec 32)) SeekEntryResult!9738)

(assert (=> b!1035327 (= res!691388 (= (seekEntryOrOpen!0 (select (arr!31377 (_keys!11432 thiss!1427)) #b00000000000000000000000000000000) (_keys!11432 thiss!1427) (mask!30125 thiss!1427)) (Found!9738 #b00000000000000000000000000000000)))))

(assert (=> b!1035327 (=> (not res!691388) (not e!585434))))

(declare-fun b!1035328 () Bool)

(assert (=> b!1035328 (= e!585434 call!43792)))

(declare-fun b!1035329 () Bool)

(assert (=> b!1035329 (= e!585433 call!43792)))

(assert (= (and d!124475 (not res!691389)) b!1035326))

(assert (= (and b!1035326 c!104684) b!1035327))

(assert (= (and b!1035326 (not c!104684)) b!1035329))

(assert (= (and b!1035327 res!691388) b!1035328))

(assert (= (or b!1035328 b!1035329) bm!43789))

(assert (=> b!1035326 m!955427))

(assert (=> b!1035326 m!955427))

(assert (=> b!1035326 m!955429))

(declare-fun m!955437 () Bool)

(assert (=> bm!43789 m!955437))

(assert (=> b!1035327 m!955427))

(declare-fun m!955439 () Bool)

(assert (=> b!1035327 m!955439))

(declare-fun m!955441 () Bool)

(assert (=> b!1035327 m!955441))

(assert (=> b!1035327 m!955427))

(declare-fun m!955443 () Bool)

(assert (=> b!1035327 m!955443))

(assert (=> b!1035269 d!124475))

(declare-fun b!1035331 () Bool)

(declare-fun e!585437 () Bool)

(assert (=> b!1035331 (= e!585437 tp_is_empty!24555)))

(declare-fun b!1035330 () Bool)

(declare-fun e!585436 () Bool)

(assert (=> b!1035330 (= e!585436 tp_is_empty!24555)))

(declare-fun condMapEmpty!38346 () Bool)

(declare-fun mapDefault!38346 () ValueCell!11574)

(assert (=> mapNonEmpty!38345 (= condMapEmpty!38346 (= mapRest!38345 ((as const (Array (_ BitVec 32) ValueCell!11574)) mapDefault!38346)))))

(declare-fun mapRes!38346 () Bool)

(assert (=> mapNonEmpty!38345 (= tp!73639 (and e!585437 mapRes!38346))))

(declare-fun mapIsEmpty!38346 () Bool)

(assert (=> mapIsEmpty!38346 mapRes!38346))

(declare-fun mapNonEmpty!38346 () Bool)

(declare-fun tp!73640 () Bool)

(assert (=> mapNonEmpty!38346 (= mapRes!38346 (and tp!73640 e!585436))))

(declare-fun mapKey!38346 () (_ BitVec 32))

(declare-fun mapValue!38346 () ValueCell!11574)

(declare-fun mapRest!38346 () (Array (_ BitVec 32) ValueCell!11574))

(assert (=> mapNonEmpty!38346 (= mapRest!38345 (store mapRest!38346 mapKey!38346 mapValue!38346))))

(assert (= (and mapNonEmpty!38345 condMapEmpty!38346) mapIsEmpty!38346))

(assert (= (and mapNonEmpty!38345 (not condMapEmpty!38346)) mapNonEmpty!38346))

(assert (= (and mapNonEmpty!38346 ((_ is ValueCellFull!11574) mapValue!38346)) b!1035330))

(assert (= (and mapNonEmpty!38345 ((_ is ValueCellFull!11574) mapDefault!38346)) b!1035331))

(declare-fun m!955445 () Bool)

(assert (=> mapNonEmpty!38346 m!955445))

(check-sat (not mapNonEmpty!38346) (not bm!43783) (not b!1035327) (not d!124469) (not b!1035289) tp_is_empty!24555 (not b_next!20835) (not b!1035299) (not b!1035288) (not b!1035326) b_and!33353 (not bm!43786) (not b!1035316) (not b!1035317) (not b!1035315) (not bm!43789))
(check-sat b_and!33353 (not b_next!20835))
