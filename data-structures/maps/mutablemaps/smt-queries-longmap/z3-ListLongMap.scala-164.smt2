; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3130 () Bool)

(assert start!3130)

(declare-fun b!19089 () Bool)

(declare-fun b_free!663 () Bool)

(declare-fun b_next!663 () Bool)

(assert (=> b!19089 (= b_free!663 (not b_next!663))))

(declare-fun tp!3187 () Bool)

(declare-fun b_and!1325 () Bool)

(assert (=> b!19089 (= tp!3187 b_and!1325)))

(declare-fun b!19088 () Bool)

(declare-fun e!12271 () Bool)

(declare-fun tp_is_empty!927 () Bool)

(assert (=> b!19088 (= e!12271 tp_is_empty!927)))

(declare-fun e!12266 () Bool)

(declare-fun e!12267 () Bool)

(declare-datatypes ((V!1061 0))(
  ( (V!1062 (val!490 Int)) )
))
(declare-datatypes ((ValueCell!264 0))(
  ( (ValueCellFull!264 (v!1496 V!1061)) (EmptyCell!264) )
))
(declare-datatypes ((array!1055 0))(
  ( (array!1056 (arr!507 (Array (_ BitVec 32) ValueCell!264)) (size!597 (_ BitVec 32))) )
))
(declare-datatypes ((array!1057 0))(
  ( (array!1058 (arr!508 (Array (_ BitVec 32) (_ BitVec 64))) (size!598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!114 0))(
  ( (LongMapFixedSize!115 (defaultEntry!1676 Int) (mask!4615 (_ BitVec 32)) (extraKeys!1586 (_ BitVec 32)) (zeroValue!1610 V!1061) (minValue!1610 V!1061) (_size!90 (_ BitVec 32)) (_keys!3101 array!1057) (_values!1672 array!1055) (_vacant!90 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!114 0))(
  ( (Cell!115 (v!1497 LongMapFixedSize!114)) )
))
(declare-datatypes ((LongMap!114 0))(
  ( (LongMap!115 (underlying!68 Cell!114)) )
))
(declare-fun thiss!938 () LongMap!114)

(declare-fun array_inv!361 (array!1057) Bool)

(declare-fun array_inv!362 (array!1055) Bool)

(assert (=> b!19089 (= e!12267 (and tp!3187 tp_is_empty!927 (array_inv!361 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) (array_inv!362 (_values!1672 (v!1497 (underlying!68 thiss!938)))) e!12266))))

(declare-fun res!13059 () Bool)

(declare-fun e!12269 () Bool)

(assert (=> start!3130 (=> (not res!13059) (not e!12269))))

(declare-fun valid!58 (LongMap!114) Bool)

(assert (=> start!3130 (= res!13059 (valid!58 thiss!938))))

(assert (=> start!3130 e!12269))

(declare-fun e!12273 () Bool)

(assert (=> start!3130 e!12273))

(declare-fun b!19090 () Bool)

(declare-fun e!12268 () Bool)

(assert (=> b!19090 (= e!12268 e!12267)))

(declare-fun mapNonEmpty!832 () Bool)

(declare-fun mapRes!832 () Bool)

(declare-fun tp!3186 () Bool)

(assert (=> mapNonEmpty!832 (= mapRes!832 (and tp!3186 e!12271))))

(declare-fun mapRest!832 () (Array (_ BitVec 32) ValueCell!264))

(declare-fun mapValue!832 () ValueCell!264)

(declare-fun mapKey!832 () (_ BitVec 32))

(assert (=> mapNonEmpty!832 (= (arr!507 (_values!1672 (v!1497 (underlying!68 thiss!938)))) (store mapRest!832 mapKey!832 mapValue!832))))

(declare-fun b!19091 () Bool)

(declare-fun e!12272 () Bool)

(assert (=> b!19091 (= e!12266 (and e!12272 mapRes!832))))

(declare-fun condMapEmpty!832 () Bool)

(declare-fun mapDefault!832 () ValueCell!264)

(assert (=> b!19091 (= condMapEmpty!832 (= (arr!507 (_values!1672 (v!1497 (underlying!68 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!264)) mapDefault!832)))))

(declare-fun mapIsEmpty!832 () Bool)

(assert (=> mapIsEmpty!832 mapRes!832))

(declare-fun b!19092 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!19092 (= e!12269 (not (validMask!0 (mask!4615 (v!1497 (underlying!68 thiss!938))))))))

(declare-fun b!19093 () Bool)

(assert (=> b!19093 (= e!12272 tp_is_empty!927)))

(declare-fun b!19094 () Bool)

(assert (=> b!19094 (= e!12273 e!12268)))

(assert (= (and start!3130 res!13059) b!19092))

(assert (= (and b!19091 condMapEmpty!832) mapIsEmpty!832))

(assert (= (and b!19091 (not condMapEmpty!832)) mapNonEmpty!832))

(get-info :version)

(assert (= (and mapNonEmpty!832 ((_ is ValueCellFull!264) mapValue!832)) b!19088))

(assert (= (and b!19091 ((_ is ValueCellFull!264) mapDefault!832)) b!19093))

(assert (= b!19089 b!19091))

(assert (= b!19090 b!19089))

(assert (= b!19094 b!19090))

(assert (= start!3130 b!19094))

(declare-fun m!13523 () Bool)

(assert (=> b!19089 m!13523))

(declare-fun m!13525 () Bool)

(assert (=> b!19089 m!13525))

(declare-fun m!13527 () Bool)

(assert (=> start!3130 m!13527))

(declare-fun m!13529 () Bool)

(assert (=> mapNonEmpty!832 m!13529))

(declare-fun m!13531 () Bool)

(assert (=> b!19092 m!13531))

(check-sat (not start!3130) (not mapNonEmpty!832) (not b!19089) b_and!1325 tp_is_empty!927 (not b!19092) (not b_next!663))
(check-sat b_and!1325 (not b_next!663))
(get-model)

(declare-fun d!3549 () Bool)

(assert (=> d!3549 (= (array_inv!361 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) (bvsge (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19089 d!3549))

(declare-fun d!3551 () Bool)

(assert (=> d!3551 (= (array_inv!362 (_values!1672 (v!1497 (underlying!68 thiss!938)))) (bvsge (size!597 (_values!1672 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19089 d!3551))

(declare-fun d!3553 () Bool)

(assert (=> d!3553 (= (validMask!0 (mask!4615 (v!1497 (underlying!68 thiss!938)))) (and (or (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000001111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000011111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000001111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000011111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000001111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000011111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000001111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000011111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000001111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000011111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000001111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000011111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000001111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000011111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000111111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000001111111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000011111111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000111111111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00001111111111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00011111111111111111111111111111) (= (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!19092 d!3553))

(declare-fun d!3555 () Bool)

(declare-fun valid!60 (LongMapFixedSize!114) Bool)

(assert (=> d!3555 (= (valid!58 thiss!938) (valid!60 (v!1497 (underlying!68 thiss!938))))))

(declare-fun bs!861 () Bool)

(assert (= bs!861 d!3555))

(declare-fun m!13543 () Bool)

(assert (=> bs!861 m!13543))

(assert (=> start!3130 d!3555))

(declare-fun b!19123 () Bool)

(declare-fun e!12303 () Bool)

(assert (=> b!19123 (= e!12303 tp_is_empty!927)))

(declare-fun condMapEmpty!838 () Bool)

(declare-fun mapDefault!838 () ValueCell!264)

(assert (=> mapNonEmpty!832 (= condMapEmpty!838 (= mapRest!832 ((as const (Array (_ BitVec 32) ValueCell!264)) mapDefault!838)))))

(declare-fun mapRes!838 () Bool)

(assert (=> mapNonEmpty!832 (= tp!3186 (and e!12303 mapRes!838))))

(declare-fun b!19122 () Bool)

(declare-fun e!12302 () Bool)

(assert (=> b!19122 (= e!12302 tp_is_empty!927)))

(declare-fun mapNonEmpty!838 () Bool)

(declare-fun tp!3196 () Bool)

(assert (=> mapNonEmpty!838 (= mapRes!838 (and tp!3196 e!12302))))

(declare-fun mapValue!838 () ValueCell!264)

(declare-fun mapKey!838 () (_ BitVec 32))

(declare-fun mapRest!838 () (Array (_ BitVec 32) ValueCell!264))

(assert (=> mapNonEmpty!838 (= mapRest!832 (store mapRest!838 mapKey!838 mapValue!838))))

(declare-fun mapIsEmpty!838 () Bool)

(assert (=> mapIsEmpty!838 mapRes!838))

(assert (= (and mapNonEmpty!832 condMapEmpty!838) mapIsEmpty!838))

(assert (= (and mapNonEmpty!832 (not condMapEmpty!838)) mapNonEmpty!838))

(assert (= (and mapNonEmpty!838 ((_ is ValueCellFull!264) mapValue!838)) b!19122))

(assert (= (and mapNonEmpty!832 ((_ is ValueCellFull!264) mapDefault!838)) b!19123))

(declare-fun m!13545 () Bool)

(assert (=> mapNonEmpty!838 m!13545))

(check-sat (not mapNonEmpty!838) b_and!1325 (not d!3555) tp_is_empty!927 (not b_next!663))
(check-sat b_and!1325 (not b_next!663))
(get-model)

(declare-fun d!3557 () Bool)

(declare-fun res!13069 () Bool)

(declare-fun e!12306 () Bool)

(assert (=> d!3557 (=> (not res!13069) (not e!12306))))

(declare-fun simpleValid!9 (LongMapFixedSize!114) Bool)

(assert (=> d!3557 (= res!13069 (simpleValid!9 (v!1497 (underlying!68 thiss!938))))))

(assert (=> d!3557 (= (valid!60 (v!1497 (underlying!68 thiss!938))) e!12306)))

(declare-fun b!19130 () Bool)

(declare-fun res!13070 () Bool)

(assert (=> b!19130 (=> (not res!13070) (not e!12306))))

(declare-fun arrayCountValidKeys!0 (array!1057 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19130 (= res!13070 (= (arrayCountValidKeys!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000 (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))) (_size!90 (v!1497 (underlying!68 thiss!938)))))))

(declare-fun b!19131 () Bool)

(declare-fun res!13071 () Bool)

(assert (=> b!19131 (=> (not res!13071) (not e!12306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1057 (_ BitVec 32)) Bool)

(assert (=> b!19131 (= res!13071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3101 (v!1497 (underlying!68 thiss!938))) (mask!4615 (v!1497 (underlying!68 thiss!938)))))))

(declare-fun b!19132 () Bool)

(declare-datatypes ((List!540 0))(
  ( (Nil!537) (Cons!536 (h!1102 (_ BitVec 64)) (t!3185 List!540)) )
))
(declare-fun arrayNoDuplicates!0 (array!1057 (_ BitVec 32) List!540) Bool)

(assert (=> b!19132 (= e!12306 (arrayNoDuplicates!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000 Nil!537))))

(assert (= (and d!3557 res!13069) b!19130))

(assert (= (and b!19130 res!13070) b!19131))

(assert (= (and b!19131 res!13071) b!19132))

(declare-fun m!13547 () Bool)

(assert (=> d!3557 m!13547))

(declare-fun m!13549 () Bool)

(assert (=> b!19130 m!13549))

(declare-fun m!13551 () Bool)

(assert (=> b!19131 m!13551))

(declare-fun m!13553 () Bool)

(assert (=> b!19132 m!13553))

(assert (=> d!3555 d!3557))

(declare-fun b!19134 () Bool)

(declare-fun e!12308 () Bool)

(assert (=> b!19134 (= e!12308 tp_is_empty!927)))

(declare-fun condMapEmpty!839 () Bool)

(declare-fun mapDefault!839 () ValueCell!264)

(assert (=> mapNonEmpty!838 (= condMapEmpty!839 (= mapRest!838 ((as const (Array (_ BitVec 32) ValueCell!264)) mapDefault!839)))))

(declare-fun mapRes!839 () Bool)

(assert (=> mapNonEmpty!838 (= tp!3196 (and e!12308 mapRes!839))))

(declare-fun b!19133 () Bool)

(declare-fun e!12307 () Bool)

(assert (=> b!19133 (= e!12307 tp_is_empty!927)))

(declare-fun mapNonEmpty!839 () Bool)

(declare-fun tp!3197 () Bool)

(assert (=> mapNonEmpty!839 (= mapRes!839 (and tp!3197 e!12307))))

(declare-fun mapValue!839 () ValueCell!264)

(declare-fun mapRest!839 () (Array (_ BitVec 32) ValueCell!264))

(declare-fun mapKey!839 () (_ BitVec 32))

(assert (=> mapNonEmpty!839 (= mapRest!838 (store mapRest!839 mapKey!839 mapValue!839))))

(declare-fun mapIsEmpty!839 () Bool)

(assert (=> mapIsEmpty!839 mapRes!839))

(assert (= (and mapNonEmpty!838 condMapEmpty!839) mapIsEmpty!839))

(assert (= (and mapNonEmpty!838 (not condMapEmpty!839)) mapNonEmpty!839))

(assert (= (and mapNonEmpty!839 ((_ is ValueCellFull!264) mapValue!839)) b!19133))

(assert (= (and mapNonEmpty!838 ((_ is ValueCellFull!264) mapDefault!839)) b!19134))

(declare-fun m!13555 () Bool)

(assert (=> mapNonEmpty!839 m!13555))

(check-sat (not b!19130) (not b!19131) b_and!1325 (not d!3557) tp_is_empty!927 (not b!19132) (not b_next!663) (not mapNonEmpty!839))
(check-sat b_and!1325 (not b_next!663))
(get-model)

(declare-fun b!19143 () Bool)

(declare-fun e!12315 () Bool)

(declare-fun e!12316 () Bool)

(assert (=> b!19143 (= e!12315 e!12316)))

(declare-fun lt!5397 () (_ BitVec 64))

(assert (=> b!19143 (= lt!5397 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!380 0))(
  ( (Unit!381) )
))
(declare-fun lt!5399 () Unit!380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1057 (_ BitVec 64) (_ BitVec 32)) Unit!380)

(assert (=> b!19143 (= lt!5399 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) lt!5397 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!19143 (arrayContainsKey!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) lt!5397 #b00000000000000000000000000000000)))

(declare-fun lt!5398 () Unit!380)

(assert (=> b!19143 (= lt!5398 lt!5399)))

(declare-fun res!13077 () Bool)

(declare-datatypes ((SeekEntryResult!49 0))(
  ( (MissingZero!49 (index!2316 (_ BitVec 32))) (Found!49 (index!2317 (_ BitVec 32))) (Intermediate!49 (undefined!861 Bool) (index!2318 (_ BitVec 32)) (x!4704 (_ BitVec 32))) (Undefined!49) (MissingVacant!49 (index!2319 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1057 (_ BitVec 32)) SeekEntryResult!49)

(assert (=> b!19143 (= res!13077 (= (seekEntryOrOpen!0 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000) (_keys!3101 (v!1497 (underlying!68 thiss!938))) (mask!4615 (v!1497 (underlying!68 thiss!938)))) (Found!49 #b00000000000000000000000000000000)))))

(assert (=> b!19143 (=> (not res!13077) (not e!12316))))

(declare-fun bm!877 () Bool)

(declare-fun call!880 () Bool)

(assert (=> bm!877 (= call!880 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3101 (v!1497 (underlying!68 thiss!938))) (mask!4615 (v!1497 (underlying!68 thiss!938)))))))

(declare-fun b!19144 () Bool)

(assert (=> b!19144 (= e!12315 call!880)))

(declare-fun b!19146 () Bool)

(assert (=> b!19146 (= e!12316 call!880)))

(declare-fun d!3559 () Bool)

(declare-fun res!13076 () Bool)

(declare-fun e!12317 () Bool)

(assert (=> d!3559 (=> res!13076 e!12317)))

(assert (=> d!3559 (= res!13076 (bvsge #b00000000000000000000000000000000 (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))))))

(assert (=> d!3559 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3101 (v!1497 (underlying!68 thiss!938))) (mask!4615 (v!1497 (underlying!68 thiss!938)))) e!12317)))

(declare-fun b!19145 () Bool)

(assert (=> b!19145 (= e!12317 e!12315)))

(declare-fun c!2052 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!19145 (= c!2052 (validKeyInArray!0 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000)))))

(assert (= (and d!3559 (not res!13076)) b!19145))

(assert (= (and b!19145 c!2052) b!19143))

(assert (= (and b!19145 (not c!2052)) b!19144))

(assert (= (and b!19143 res!13077) b!19146))

(assert (= (or b!19146 b!19144) bm!877))

(declare-fun m!13557 () Bool)

(assert (=> b!19143 m!13557))

(declare-fun m!13559 () Bool)

(assert (=> b!19143 m!13559))

(declare-fun m!13561 () Bool)

(assert (=> b!19143 m!13561))

(assert (=> b!19143 m!13557))

(declare-fun m!13563 () Bool)

(assert (=> b!19143 m!13563))

(declare-fun m!13565 () Bool)

(assert (=> bm!877 m!13565))

(assert (=> b!19145 m!13557))

(assert (=> b!19145 m!13557))

(declare-fun m!13567 () Bool)

(assert (=> b!19145 m!13567))

(assert (=> b!19131 d!3559))

(declare-fun d!3561 () Bool)

(declare-fun lt!5402 () (_ BitVec 32))

(assert (=> d!3561 (and (bvsge lt!5402 #b00000000000000000000000000000000) (bvsle lt!5402 (bvsub (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun e!12322 () (_ BitVec 32))

(assert (=> d!3561 (= lt!5402 e!12322)))

(declare-fun c!2057 () Bool)

(assert (=> d!3561 (= c!2057 (bvsge #b00000000000000000000000000000000 (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))))))

(assert (=> d!3561 (and (bvsle #b00000000000000000000000000000000 (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))))))

(assert (=> d!3561 (= (arrayCountValidKeys!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000 (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))) lt!5402)))

(declare-fun bm!880 () Bool)

(declare-fun call!883 () (_ BitVec 32))

(assert (=> bm!880 (= call!883 (arrayCountValidKeys!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))))))

(declare-fun b!19155 () Bool)

(declare-fun e!12323 () (_ BitVec 32))

(assert (=> b!19155 (= e!12322 e!12323)))

(declare-fun c!2058 () Bool)

(assert (=> b!19155 (= c!2058 (validKeyInArray!0 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19156 () Bool)

(assert (=> b!19156 (= e!12323 (bvadd #b00000000000000000000000000000001 call!883))))

(declare-fun b!19157 () Bool)

(assert (=> b!19157 (= e!12322 #b00000000000000000000000000000000)))

(declare-fun b!19158 () Bool)

(assert (=> b!19158 (= e!12323 call!883)))

(assert (= (and d!3561 c!2057) b!19157))

(assert (= (and d!3561 (not c!2057)) b!19155))

(assert (= (and b!19155 c!2058) b!19156))

(assert (= (and b!19155 (not c!2058)) b!19158))

(assert (= (or b!19156 b!19158) bm!880))

(declare-fun m!13569 () Bool)

(assert (=> bm!880 m!13569))

(assert (=> b!19155 m!13557))

(assert (=> b!19155 m!13557))

(assert (=> b!19155 m!13567))

(assert (=> b!19130 d!3561))

(declare-fun b!19169 () Bool)

(declare-fun e!12332 () Bool)

(declare-fun call!886 () Bool)

(assert (=> b!19169 (= e!12332 call!886)))

(declare-fun bm!883 () Bool)

(declare-fun c!2061 () Bool)

(assert (=> bm!883 (= call!886 (arrayNoDuplicates!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!2061 (Cons!536 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000) Nil!537) Nil!537)))))

(declare-fun b!19170 () Bool)

(declare-fun e!12333 () Bool)

(assert (=> b!19170 (= e!12333 e!12332)))

(assert (=> b!19170 (= c!2061 (validKeyInArray!0 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19171 () Bool)

(declare-fun e!12335 () Bool)

(declare-fun contains!208 (List!540 (_ BitVec 64)) Bool)

(assert (=> b!19171 (= e!12335 (contains!208 Nil!537 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19172 () Bool)

(declare-fun e!12334 () Bool)

(assert (=> b!19172 (= e!12334 e!12333)))

(declare-fun res!13085 () Bool)

(assert (=> b!19172 (=> (not res!13085) (not e!12333))))

(assert (=> b!19172 (= res!13085 (not e!12335))))

(declare-fun res!13086 () Bool)

(assert (=> b!19172 (=> (not res!13086) (not e!12335))))

(assert (=> b!19172 (= res!13086 (validKeyInArray!0 (select (arr!508 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun d!3563 () Bool)

(declare-fun res!13084 () Bool)

(assert (=> d!3563 (=> res!13084 e!12334)))

(assert (=> d!3563 (= res!13084 (bvsge #b00000000000000000000000000000000 (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938))))))))

(assert (=> d!3563 (= (arrayNoDuplicates!0 (_keys!3101 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000 Nil!537) e!12334)))

(declare-fun b!19173 () Bool)

(assert (=> b!19173 (= e!12332 call!886)))

(assert (= (and d!3563 (not res!13084)) b!19172))

(assert (= (and b!19172 res!13086) b!19171))

(assert (= (and b!19172 res!13085) b!19170))

(assert (= (and b!19170 c!2061) b!19173))

(assert (= (and b!19170 (not c!2061)) b!19169))

(assert (= (or b!19173 b!19169) bm!883))

(assert (=> bm!883 m!13557))

(declare-fun m!13571 () Bool)

(assert (=> bm!883 m!13571))

(assert (=> b!19170 m!13557))

(assert (=> b!19170 m!13557))

(assert (=> b!19170 m!13567))

(assert (=> b!19171 m!13557))

(assert (=> b!19171 m!13557))

(declare-fun m!13573 () Bool)

(assert (=> b!19171 m!13573))

(assert (=> b!19172 m!13557))

(assert (=> b!19172 m!13557))

(assert (=> b!19172 m!13567))

(assert (=> b!19132 d!3563))

(declare-fun b!19183 () Bool)

(declare-fun res!13095 () Bool)

(declare-fun e!12338 () Bool)

(assert (=> b!19183 (=> (not res!13095) (not e!12338))))

(declare-fun size!601 (LongMapFixedSize!114) (_ BitVec 32))

(assert (=> b!19183 (= res!13095 (bvsge (size!601 (v!1497 (underlying!68 thiss!938))) (_size!90 (v!1497 (underlying!68 thiss!938)))))))

(declare-fun b!19182 () Bool)

(declare-fun res!13098 () Bool)

(assert (=> b!19182 (=> (not res!13098) (not e!12338))))

(assert (=> b!19182 (= res!13098 (and (= (size!597 (_values!1672 (v!1497 (underlying!68 thiss!938)))) (bvadd (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000001)) (= (size!598 (_keys!3101 (v!1497 (underlying!68 thiss!938)))) (size!597 (_values!1672 (v!1497 (underlying!68 thiss!938))))) (bvsge (_size!90 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000) (bvsle (_size!90 (v!1497 (underlying!68 thiss!938))) (bvadd (mask!4615 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000001))))))

(declare-fun d!3565 () Bool)

(declare-fun res!13097 () Bool)

(assert (=> d!3565 (=> (not res!13097) (not e!12338))))

(assert (=> d!3565 (= res!13097 (validMask!0 (mask!4615 (v!1497 (underlying!68 thiss!938)))))))

(assert (=> d!3565 (= (simpleValid!9 (v!1497 (underlying!68 thiss!938))) e!12338)))

(declare-fun b!19185 () Bool)

(assert (=> b!19185 (= e!12338 (and (bvsge (extraKeys!1586 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000) (bvsle (extraKeys!1586 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000011) (bvsge (_vacant!90 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000000)))))

(declare-fun b!19184 () Bool)

(declare-fun res!13096 () Bool)

(assert (=> b!19184 (=> (not res!13096) (not e!12338))))

(assert (=> b!19184 (= res!13096 (= (size!601 (v!1497 (underlying!68 thiss!938))) (bvadd (_size!90 (v!1497 (underlying!68 thiss!938))) (bvsdiv (bvadd (extraKeys!1586 (v!1497 (underlying!68 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!3565 res!13097) b!19182))

(assert (= (and b!19182 res!13098) b!19183))

(assert (= (and b!19183 res!13095) b!19184))

(assert (= (and b!19184 res!13096) b!19185))

(declare-fun m!13575 () Bool)

(assert (=> b!19183 m!13575))

(assert (=> d!3565 m!13531))

(assert (=> b!19184 m!13575))

(assert (=> d!3557 d!3565))

(declare-fun b!19187 () Bool)

(declare-fun e!12340 () Bool)

(assert (=> b!19187 (= e!12340 tp_is_empty!927)))

(declare-fun condMapEmpty!840 () Bool)

(declare-fun mapDefault!840 () ValueCell!264)

(assert (=> mapNonEmpty!839 (= condMapEmpty!840 (= mapRest!839 ((as const (Array (_ BitVec 32) ValueCell!264)) mapDefault!840)))))

(declare-fun mapRes!840 () Bool)

(assert (=> mapNonEmpty!839 (= tp!3197 (and e!12340 mapRes!840))))

(declare-fun b!19186 () Bool)

(declare-fun e!12339 () Bool)

(assert (=> b!19186 (= e!12339 tp_is_empty!927)))

(declare-fun mapNonEmpty!840 () Bool)

(declare-fun tp!3198 () Bool)

(assert (=> mapNonEmpty!840 (= mapRes!840 (and tp!3198 e!12339))))

(declare-fun mapRest!840 () (Array (_ BitVec 32) ValueCell!264))

(declare-fun mapKey!840 () (_ BitVec 32))

(declare-fun mapValue!840 () ValueCell!264)

(assert (=> mapNonEmpty!840 (= mapRest!839 (store mapRest!840 mapKey!840 mapValue!840))))

(declare-fun mapIsEmpty!840 () Bool)

(assert (=> mapIsEmpty!840 mapRes!840))

(assert (= (and mapNonEmpty!839 condMapEmpty!840) mapIsEmpty!840))

(assert (= (and mapNonEmpty!839 (not condMapEmpty!840)) mapNonEmpty!840))

(assert (= (and mapNonEmpty!840 ((_ is ValueCellFull!264) mapValue!840)) b!19186))

(assert (= (and mapNonEmpty!839 ((_ is ValueCellFull!264) mapDefault!840)) b!19187))

(declare-fun m!13577 () Bool)

(assert (=> mapNonEmpty!840 m!13577))

(check-sat (not b!19170) (not b!19155) (not d!3565) tp_is_empty!927 (not bm!877) (not b!19172) (not b!19143) (not b!19145) b_and!1325 (not bm!880) (not mapNonEmpty!840) (not b!19183) (not b!19171) (not bm!883) (not b_next!663) (not b!19184))
(check-sat b_and!1325 (not b_next!663))
