; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90496 () Bool)

(assert start!90496)

(declare-fun b!1035024 () Bool)

(declare-fun b_free!20823 () Bool)

(declare-fun b_next!20823 () Bool)

(assert (=> b!1035024 (= b_free!20823 (not b_next!20823))))

(declare-fun tp!73586 () Bool)

(declare-fun b_and!33341 () Bool)

(assert (=> b!1035024 (= tp!73586 b_and!33341)))

(declare-fun mapIsEmpty!38314 () Bool)

(declare-fun mapRes!38314 () Bool)

(assert (=> mapIsEmpty!38314 mapRes!38314))

(declare-fun mapNonEmpty!38314 () Bool)

(declare-fun tp!73587 () Bool)

(declare-fun e!585219 () Bool)

(assert (=> mapNonEmpty!38314 (= mapRes!38314 (and tp!73587 e!585219))))

(declare-fun mapKey!38314 () (_ BitVec 32))

(declare-datatypes ((V!37597 0))(
  ( (V!37598 (val!12322 Int)) )
))
(declare-datatypes ((ValueCell!11568 0))(
  ( (ValueCellFull!11568 (v!14903 V!37597)) (EmptyCell!11568) )
))
(declare-fun mapRest!38314 () (Array (_ BitVec 32) ValueCell!11568))

(declare-datatypes ((array!65158 0))(
  ( (array!65159 (arr!31365 (Array (_ BitVec 32) (_ BitVec 64))) (size!31892 (_ BitVec 32))) )
))
(declare-datatypes ((array!65160 0))(
  ( (array!65161 (arr!31366 (Array (_ BitVec 32) ValueCell!11568)) (size!31893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5730 0))(
  ( (LongMapFixedSize!5731 (defaultEntry!6243 Int) (mask!30112 (_ BitVec 32)) (extraKeys!5973 (_ BitVec 32)) (zeroValue!6077 V!37597) (minValue!6079 V!37597) (_size!2920 (_ BitVec 32)) (_keys!11425 array!65158) (_values!6266 array!65160) (_vacant!2920 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5730)

(declare-fun mapValue!38314 () ValueCell!11568)

(assert (=> mapNonEmpty!38314 (= (arr!31366 (_values!6266 thiss!1427)) (store mapRest!38314 mapKey!38314 mapValue!38314))))

(declare-fun b!1035021 () Bool)

(declare-fun e!585216 () Bool)

(declare-fun e!585217 () Bool)

(assert (=> b!1035021 (= e!585216 (and e!585217 mapRes!38314))))

(declare-fun condMapEmpty!38314 () Bool)

(declare-fun mapDefault!38314 () ValueCell!11568)

(assert (=> b!1035021 (= condMapEmpty!38314 (= (arr!31366 (_values!6266 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11568)) mapDefault!38314)))))

(declare-fun b!1035022 () Bool)

(declare-fun tp_is_empty!24543 () Bool)

(assert (=> b!1035022 (= e!585217 tp_is_empty!24543)))

(declare-fun res!691243 () Bool)

(declare-fun e!585215 () Bool)

(assert (=> start!90496 (=> (not res!691243) (not e!585215))))

(declare-fun valid!2113 (LongMapFixedSize!5730) Bool)

(assert (=> start!90496 (= res!691243 (valid!2113 thiss!1427))))

(assert (=> start!90496 e!585215))

(declare-fun e!585218 () Bool)

(assert (=> start!90496 e!585218))

(assert (=> start!90496 true))

(declare-fun b!1035023 () Bool)

(declare-fun res!691244 () Bool)

(assert (=> b!1035023 (=> (not res!691244) (not e!585215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035023 (= res!691244 (validMask!0 (mask!30112 thiss!1427)))))

(declare-fun array_inv!24095 (array!65158) Bool)

(declare-fun array_inv!24096 (array!65160) Bool)

(assert (=> b!1035024 (= e!585218 (and tp!73586 tp_is_empty!24543 (array_inv!24095 (_keys!11425 thiss!1427)) (array_inv!24096 (_values!6266 thiss!1427)) e!585216))))

(declare-fun b!1035025 () Bool)

(assert (=> b!1035025 (= e!585215 (and (= (size!31893 (_values!6266 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30112 thiss!1427))) (= (size!31892 (_keys!11425 thiss!1427)) (size!31893 (_values!6266 thiss!1427))) (bvslt (mask!30112 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1035026 () Bool)

(declare-fun res!691245 () Bool)

(assert (=> b!1035026 (=> (not res!691245) (not e!585215))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035026 (= res!691245 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035027 () Bool)

(assert (=> b!1035027 (= e!585219 tp_is_empty!24543)))

(assert (= (and start!90496 res!691243) b!1035026))

(assert (= (and b!1035026 res!691245) b!1035023))

(assert (= (and b!1035023 res!691244) b!1035025))

(assert (= (and b!1035021 condMapEmpty!38314) mapIsEmpty!38314))

(assert (= (and b!1035021 (not condMapEmpty!38314)) mapNonEmpty!38314))

(get-info :version)

(assert (= (and mapNonEmpty!38314 ((_ is ValueCellFull!11568) mapValue!38314)) b!1035027))

(assert (= (and b!1035021 ((_ is ValueCellFull!11568) mapDefault!38314)) b!1035022))

(assert (= b!1035024 b!1035021))

(assert (= start!90496 b!1035024))

(declare-fun m!955293 () Bool)

(assert (=> mapNonEmpty!38314 m!955293))

(declare-fun m!955295 () Bool)

(assert (=> start!90496 m!955295))

(declare-fun m!955297 () Bool)

(assert (=> b!1035023 m!955297))

(declare-fun m!955299 () Bool)

(assert (=> b!1035024 m!955299))

(declare-fun m!955301 () Bool)

(assert (=> b!1035024 m!955301))

(check-sat tp_is_empty!24543 b_and!33341 (not start!90496) (not mapNonEmpty!38314) (not b_next!20823) (not b!1035023) (not b!1035024))
(check-sat b_and!33341 (not b_next!20823))
(get-model)

(declare-fun d!124433 () Bool)

(assert (=> d!124433 (= (array_inv!24095 (_keys!11425 thiss!1427)) (bvsge (size!31892 (_keys!11425 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035024 d!124433))

(declare-fun d!124435 () Bool)

(assert (=> d!124435 (= (array_inv!24096 (_values!6266 thiss!1427)) (bvsge (size!31893 (_values!6266 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1035024 d!124435))

(declare-fun d!124437 () Bool)

(assert (=> d!124437 (= (validMask!0 (mask!30112 thiss!1427)) (and (or (= (mask!30112 thiss!1427) #b00000000000000000000000000000111) (= (mask!30112 thiss!1427) #b00000000000000000000000000001111) (= (mask!30112 thiss!1427) #b00000000000000000000000000011111) (= (mask!30112 thiss!1427) #b00000000000000000000000000111111) (= (mask!30112 thiss!1427) #b00000000000000000000000001111111) (= (mask!30112 thiss!1427) #b00000000000000000000000011111111) (= (mask!30112 thiss!1427) #b00000000000000000000000111111111) (= (mask!30112 thiss!1427) #b00000000000000000000001111111111) (= (mask!30112 thiss!1427) #b00000000000000000000011111111111) (= (mask!30112 thiss!1427) #b00000000000000000000111111111111) (= (mask!30112 thiss!1427) #b00000000000000000001111111111111) (= (mask!30112 thiss!1427) #b00000000000000000011111111111111) (= (mask!30112 thiss!1427) #b00000000000000000111111111111111) (= (mask!30112 thiss!1427) #b00000000000000001111111111111111) (= (mask!30112 thiss!1427) #b00000000000000011111111111111111) (= (mask!30112 thiss!1427) #b00000000000000111111111111111111) (= (mask!30112 thiss!1427) #b00000000000001111111111111111111) (= (mask!30112 thiss!1427) #b00000000000011111111111111111111) (= (mask!30112 thiss!1427) #b00000000000111111111111111111111) (= (mask!30112 thiss!1427) #b00000000001111111111111111111111) (= (mask!30112 thiss!1427) #b00000000011111111111111111111111) (= (mask!30112 thiss!1427) #b00000000111111111111111111111111) (= (mask!30112 thiss!1427) #b00000001111111111111111111111111) (= (mask!30112 thiss!1427) #b00000011111111111111111111111111) (= (mask!30112 thiss!1427) #b00000111111111111111111111111111) (= (mask!30112 thiss!1427) #b00001111111111111111111111111111) (= (mask!30112 thiss!1427) #b00011111111111111111111111111111) (= (mask!30112 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30112 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1035023 d!124437))

(declare-fun d!124439 () Bool)

(declare-fun res!691261 () Bool)

(declare-fun e!585241 () Bool)

(assert (=> d!124439 (=> (not res!691261) (not e!585241))))

(declare-fun simpleValid!408 (LongMapFixedSize!5730) Bool)

(assert (=> d!124439 (= res!691261 (simpleValid!408 thiss!1427))))

(assert (=> d!124439 (= (valid!2113 thiss!1427) e!585241)))

(declare-fun b!1035055 () Bool)

(declare-fun res!691262 () Bool)

(assert (=> b!1035055 (=> (not res!691262) (not e!585241))))

(declare-fun arrayCountValidKeys!0 (array!65158 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1035055 (= res!691262 (= (arrayCountValidKeys!0 (_keys!11425 thiss!1427) #b00000000000000000000000000000000 (size!31892 (_keys!11425 thiss!1427))) (_size!2920 thiss!1427)))))

(declare-fun b!1035056 () Bool)

(declare-fun res!691263 () Bool)

(assert (=> b!1035056 (=> (not res!691263) (not e!585241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65158 (_ BitVec 32)) Bool)

(assert (=> b!1035056 (= res!691263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11425 thiss!1427) (mask!30112 thiss!1427)))))

(declare-fun b!1035057 () Bool)

(declare-datatypes ((List!22027 0))(
  ( (Nil!22024) (Cons!22023 (h!23225 (_ BitVec 64)) (t!31237 List!22027)) )
))
(declare-fun arrayNoDuplicates!0 (array!65158 (_ BitVec 32) List!22027) Bool)

(assert (=> b!1035057 (= e!585241 (arrayNoDuplicates!0 (_keys!11425 thiss!1427) #b00000000000000000000000000000000 Nil!22024))))

(assert (= (and d!124439 res!691261) b!1035055))

(assert (= (and b!1035055 res!691262) b!1035056))

(assert (= (and b!1035056 res!691263) b!1035057))

(declare-fun m!955313 () Bool)

(assert (=> d!124439 m!955313))

(declare-fun m!955315 () Bool)

(assert (=> b!1035055 m!955315))

(declare-fun m!955317 () Bool)

(assert (=> b!1035056 m!955317))

(declare-fun m!955319 () Bool)

(assert (=> b!1035057 m!955319))

(assert (=> start!90496 d!124439))

(declare-fun condMapEmpty!38320 () Bool)

(declare-fun mapDefault!38320 () ValueCell!11568)

(assert (=> mapNonEmpty!38314 (= condMapEmpty!38320 (= mapRest!38314 ((as const (Array (_ BitVec 32) ValueCell!11568)) mapDefault!38320)))))

(declare-fun e!585247 () Bool)

(declare-fun mapRes!38320 () Bool)

(assert (=> mapNonEmpty!38314 (= tp!73587 (and e!585247 mapRes!38320))))

(declare-fun b!1035064 () Bool)

(declare-fun e!585246 () Bool)

(assert (=> b!1035064 (= e!585246 tp_is_empty!24543)))

(declare-fun b!1035065 () Bool)

(assert (=> b!1035065 (= e!585247 tp_is_empty!24543)))

(declare-fun mapNonEmpty!38320 () Bool)

(declare-fun tp!73596 () Bool)

(assert (=> mapNonEmpty!38320 (= mapRes!38320 (and tp!73596 e!585246))))

(declare-fun mapValue!38320 () ValueCell!11568)

(declare-fun mapKey!38320 () (_ BitVec 32))

(declare-fun mapRest!38320 () (Array (_ BitVec 32) ValueCell!11568))

(assert (=> mapNonEmpty!38320 (= mapRest!38314 (store mapRest!38320 mapKey!38320 mapValue!38320))))

(declare-fun mapIsEmpty!38320 () Bool)

(assert (=> mapIsEmpty!38320 mapRes!38320))

(assert (= (and mapNonEmpty!38314 condMapEmpty!38320) mapIsEmpty!38320))

(assert (= (and mapNonEmpty!38314 (not condMapEmpty!38320)) mapNonEmpty!38320))

(assert (= (and mapNonEmpty!38320 ((_ is ValueCellFull!11568) mapValue!38320)) b!1035064))

(assert (= (and mapNonEmpty!38314 ((_ is ValueCellFull!11568) mapDefault!38320)) b!1035065))

(declare-fun m!955321 () Bool)

(assert (=> mapNonEmpty!38320 m!955321))

(check-sat tp_is_empty!24543 (not b_next!20823) (not b!1035056) (not b!1035055) (not d!124439) (not mapNonEmpty!38320) (not b!1035057) b_and!33341)
(check-sat b_and!33341 (not b_next!20823))
