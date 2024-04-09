; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90320 () Bool)

(assert start!90320)

(declare-fun b!1033426 () Bool)

(declare-fun b_free!20793 () Bool)

(declare-fun b_next!20793 () Bool)

(assert (=> b!1033426 (= b_free!20793 (not b_next!20793))))

(declare-fun tp!73477 () Bool)

(declare-fun b_and!33279 () Bool)

(assert (=> b!1033426 (= tp!73477 b_and!33279)))

(declare-fun b!1033422 () Bool)

(declare-fun e!584162 () Bool)

(declare-fun tp_is_empty!24513 () Bool)

(assert (=> b!1033422 (= e!584162 tp_is_empty!24513)))

(declare-fun b!1033423 () Bool)

(declare-fun e!584160 () Bool)

(declare-fun e!584163 () Bool)

(declare-fun mapRes!38249 () Bool)

(assert (=> b!1033423 (= e!584160 (and e!584163 mapRes!38249))))

(declare-fun condMapEmpty!38249 () Bool)

(declare-datatypes ((V!37557 0))(
  ( (V!37558 (val!12307 Int)) )
))
(declare-datatypes ((ValueCell!11553 0))(
  ( (ValueCellFull!11553 (v!14885 V!37557)) (EmptyCell!11553) )
))
(declare-datatypes ((array!65088 0))(
  ( (array!65089 (arr!31335 (Array (_ BitVec 32) (_ BitVec 64))) (size!31858 (_ BitVec 32))) )
))
(declare-datatypes ((array!65090 0))(
  ( (array!65091 (arr!31336 (Array (_ BitVec 32) ValueCell!11553)) (size!31859 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5700 0))(
  ( (LongMapFixedSize!5701 (defaultEntry!6224 Int) (mask!30072 (_ BitVec 32)) (extraKeys!5956 (_ BitVec 32)) (zeroValue!6060 V!37557) (minValue!6060 V!37557) (_size!2905 (_ BitVec 32)) (_keys!11400 array!65088) (_values!6247 array!65090) (_vacant!2905 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5700)

(declare-fun mapDefault!38249 () ValueCell!11553)

(assert (=> b!1033423 (= condMapEmpty!38249 (= (arr!31336 (_values!6247 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11553)) mapDefault!38249)))))

(declare-fun b!1033425 () Bool)

(declare-fun res!690585 () Bool)

(declare-fun e!584161 () Bool)

(assert (=> b!1033425 (=> (not res!690585) (not e!584161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65088 (_ BitVec 32)) Bool)

(assert (=> b!1033425 (= res!690585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11400 thiss!1427) (mask!30072 thiss!1427)))))

(declare-fun e!584165 () Bool)

(declare-fun array_inv!24075 (array!65088) Bool)

(declare-fun array_inv!24076 (array!65090) Bool)

(assert (=> b!1033426 (= e!584165 (and tp!73477 tp_is_empty!24513 (array_inv!24075 (_keys!11400 thiss!1427)) (array_inv!24076 (_values!6247 thiss!1427)) e!584160))))

(declare-fun b!1033427 () Bool)

(assert (=> b!1033427 (= e!584163 tp_is_empty!24513)))

(declare-fun b!1033428 () Bool)

(declare-fun res!690584 () Bool)

(assert (=> b!1033428 (=> (not res!690584) (not e!584161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033428 (= res!690584 (validMask!0 (mask!30072 thiss!1427)))))

(declare-fun mapIsEmpty!38249 () Bool)

(assert (=> mapIsEmpty!38249 mapRes!38249))

(declare-fun b!1033429 () Bool)

(declare-fun res!690582 () Bool)

(assert (=> b!1033429 (=> (not res!690582) (not e!584161))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033429 (= res!690582 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033424 () Bool)

(declare-datatypes ((List!22020 0))(
  ( (Nil!22017) (Cons!22016 (h!23218 (_ BitVec 64)) (t!31221 List!22020)) )
))
(declare-fun arrayNoDuplicates!0 (array!65088 (_ BitVec 32) List!22020) Bool)

(assert (=> b!1033424 (= e!584161 (not (arrayNoDuplicates!0 (_keys!11400 thiss!1427) #b00000000000000000000000000000000 Nil!22017)))))

(declare-fun res!690583 () Bool)

(assert (=> start!90320 (=> (not res!690583) (not e!584161))))

(declare-fun valid!2103 (LongMapFixedSize!5700) Bool)

(assert (=> start!90320 (= res!690583 (valid!2103 thiss!1427))))

(assert (=> start!90320 e!584161))

(assert (=> start!90320 e!584165))

(assert (=> start!90320 true))

(declare-fun b!1033430 () Bool)

(declare-fun res!690581 () Bool)

(assert (=> b!1033430 (=> (not res!690581) (not e!584161))))

(assert (=> b!1033430 (= res!690581 (and (= (size!31859 (_values!6247 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30072 thiss!1427))) (= (size!31858 (_keys!11400 thiss!1427)) (size!31859 (_values!6247 thiss!1427))) (bvsge (mask!30072 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5956 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5956 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5956 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5956 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5956 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5956 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5956 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!38249 () Bool)

(declare-fun tp!73476 () Bool)

(assert (=> mapNonEmpty!38249 (= mapRes!38249 (and tp!73476 e!584162))))

(declare-fun mapKey!38249 () (_ BitVec 32))

(declare-fun mapValue!38249 () ValueCell!11553)

(declare-fun mapRest!38249 () (Array (_ BitVec 32) ValueCell!11553))

(assert (=> mapNonEmpty!38249 (= (arr!31336 (_values!6247 thiss!1427)) (store mapRest!38249 mapKey!38249 mapValue!38249))))

(assert (= (and start!90320 res!690583) b!1033429))

(assert (= (and b!1033429 res!690582) b!1033428))

(assert (= (and b!1033428 res!690584) b!1033430))

(assert (= (and b!1033430 res!690581) b!1033425))

(assert (= (and b!1033425 res!690585) b!1033424))

(assert (= (and b!1033423 condMapEmpty!38249) mapIsEmpty!38249))

(assert (= (and b!1033423 (not condMapEmpty!38249)) mapNonEmpty!38249))

(get-info :version)

(assert (= (and mapNonEmpty!38249 ((_ is ValueCellFull!11553) mapValue!38249)) b!1033422))

(assert (= (and b!1033423 ((_ is ValueCellFull!11553) mapDefault!38249)) b!1033427))

(assert (= b!1033426 b!1033423))

(assert (= start!90320 b!1033426))

(declare-fun m!953301 () Bool)

(assert (=> b!1033425 m!953301))

(declare-fun m!953303 () Bool)

(assert (=> mapNonEmpty!38249 m!953303))

(declare-fun m!953305 () Bool)

(assert (=> b!1033428 m!953305))

(declare-fun m!953307 () Bool)

(assert (=> b!1033426 m!953307))

(declare-fun m!953309 () Bool)

(assert (=> b!1033426 m!953309))

(declare-fun m!953311 () Bool)

(assert (=> b!1033424 m!953311))

(declare-fun m!953313 () Bool)

(assert (=> start!90320 m!953313))

(check-sat (not b_next!20793) (not b!1033424) (not b!1033425) b_and!33279 (not b!1033428) (not start!90320) (not b!1033426) tp_is_empty!24513 (not mapNonEmpty!38249))
(check-sat b_and!33279 (not b_next!20793))
(get-model)

(declare-fun d!123745 () Bool)

(assert (=> d!123745 (= (validMask!0 (mask!30072 thiss!1427)) (and (or (= (mask!30072 thiss!1427) #b00000000000000000000000000000111) (= (mask!30072 thiss!1427) #b00000000000000000000000000001111) (= (mask!30072 thiss!1427) #b00000000000000000000000000011111) (= (mask!30072 thiss!1427) #b00000000000000000000000000111111) (= (mask!30072 thiss!1427) #b00000000000000000000000001111111) (= (mask!30072 thiss!1427) #b00000000000000000000000011111111) (= (mask!30072 thiss!1427) #b00000000000000000000000111111111) (= (mask!30072 thiss!1427) #b00000000000000000000001111111111) (= (mask!30072 thiss!1427) #b00000000000000000000011111111111) (= (mask!30072 thiss!1427) #b00000000000000000000111111111111) (= (mask!30072 thiss!1427) #b00000000000000000001111111111111) (= (mask!30072 thiss!1427) #b00000000000000000011111111111111) (= (mask!30072 thiss!1427) #b00000000000000000111111111111111) (= (mask!30072 thiss!1427) #b00000000000000001111111111111111) (= (mask!30072 thiss!1427) #b00000000000000011111111111111111) (= (mask!30072 thiss!1427) #b00000000000000111111111111111111) (= (mask!30072 thiss!1427) #b00000000000001111111111111111111) (= (mask!30072 thiss!1427) #b00000000000011111111111111111111) (= (mask!30072 thiss!1427) #b00000000000111111111111111111111) (= (mask!30072 thiss!1427) #b00000000001111111111111111111111) (= (mask!30072 thiss!1427) #b00000000011111111111111111111111) (= (mask!30072 thiss!1427) #b00000000111111111111111111111111) (= (mask!30072 thiss!1427) #b00000001111111111111111111111111) (= (mask!30072 thiss!1427) #b00000011111111111111111111111111) (= (mask!30072 thiss!1427) #b00000111111111111111111111111111) (= (mask!30072 thiss!1427) #b00001111111111111111111111111111) (= (mask!30072 thiss!1427) #b00011111111111111111111111111111) (= (mask!30072 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30072 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1033428 d!123745))

(declare-fun d!123747 () Bool)

(declare-fun res!690607 () Bool)

(declare-fun e!584186 () Bool)

(assert (=> d!123747 (=> (not res!690607) (not e!584186))))

(declare-fun simpleValid!403 (LongMapFixedSize!5700) Bool)

(assert (=> d!123747 (= res!690607 (simpleValid!403 thiss!1427))))

(assert (=> d!123747 (= (valid!2103 thiss!1427) e!584186)))

(declare-fun b!1033464 () Bool)

(declare-fun res!690608 () Bool)

(assert (=> b!1033464 (=> (not res!690608) (not e!584186))))

(declare-fun arrayCountValidKeys!0 (array!65088 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1033464 (= res!690608 (= (arrayCountValidKeys!0 (_keys!11400 thiss!1427) #b00000000000000000000000000000000 (size!31858 (_keys!11400 thiss!1427))) (_size!2905 thiss!1427)))))

(declare-fun b!1033465 () Bool)

(declare-fun res!690609 () Bool)

(assert (=> b!1033465 (=> (not res!690609) (not e!584186))))

(assert (=> b!1033465 (= res!690609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11400 thiss!1427) (mask!30072 thiss!1427)))))

(declare-fun b!1033466 () Bool)

(assert (=> b!1033466 (= e!584186 (arrayNoDuplicates!0 (_keys!11400 thiss!1427) #b00000000000000000000000000000000 Nil!22017))))

(assert (= (and d!123747 res!690607) b!1033464))

(assert (= (and b!1033464 res!690608) b!1033465))

(assert (= (and b!1033465 res!690609) b!1033466))

(declare-fun m!953329 () Bool)

(assert (=> d!123747 m!953329))

(declare-fun m!953331 () Bool)

(assert (=> b!1033464 m!953331))

(assert (=> b!1033465 m!953301))

(assert (=> b!1033466 m!953311))

(assert (=> start!90320 d!123747))

(declare-fun d!123749 () Bool)

(assert (=> d!123749 (= (array_inv!24075 (_keys!11400 thiss!1427)) (bvsge (size!31858 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033426 d!123749))

(declare-fun d!123751 () Bool)

(assert (=> d!123751 (= (array_inv!24076 (_values!6247 thiss!1427)) (bvsge (size!31859 (_values!6247 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033426 d!123751))

(declare-fun b!1033477 () Bool)

(declare-fun e!584196 () Bool)

(declare-fun e!584195 () Bool)

(assert (=> b!1033477 (= e!584196 e!584195)))

(declare-fun c!104315 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1033477 (= c!104315 (validKeyInArray!0 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43639 () Bool)

(declare-fun call!43642 () Bool)

(assert (=> bm!43639 (= call!43642 (arrayNoDuplicates!0 (_keys!11400 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104315 (Cons!22016 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000) Nil!22017) Nil!22017)))))

(declare-fun b!1033478 () Bool)

(assert (=> b!1033478 (= e!584195 call!43642)))

(declare-fun b!1033479 () Bool)

(declare-fun e!584198 () Bool)

(assert (=> b!1033479 (= e!584198 e!584196)))

(declare-fun res!690617 () Bool)

(assert (=> b!1033479 (=> (not res!690617) (not e!584196))))

(declare-fun e!584197 () Bool)

(assert (=> b!1033479 (= res!690617 (not e!584197))))

(declare-fun res!690618 () Bool)

(assert (=> b!1033479 (=> (not res!690618) (not e!584197))))

(assert (=> b!1033479 (= res!690618 (validKeyInArray!0 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033480 () Bool)

(assert (=> b!1033480 (= e!584195 call!43642)))

(declare-fun d!123753 () Bool)

(declare-fun res!690616 () Bool)

(assert (=> d!123753 (=> res!690616 e!584198)))

(assert (=> d!123753 (= res!690616 (bvsge #b00000000000000000000000000000000 (size!31858 (_keys!11400 thiss!1427))))))

(assert (=> d!123753 (= (arrayNoDuplicates!0 (_keys!11400 thiss!1427) #b00000000000000000000000000000000 Nil!22017) e!584198)))

(declare-fun b!1033481 () Bool)

(declare-fun contains!6034 (List!22020 (_ BitVec 64)) Bool)

(assert (=> b!1033481 (= e!584197 (contains!6034 Nil!22017 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123753 (not res!690616)) b!1033479))

(assert (= (and b!1033479 res!690618) b!1033481))

(assert (= (and b!1033479 res!690617) b!1033477))

(assert (= (and b!1033477 c!104315) b!1033478))

(assert (= (and b!1033477 (not c!104315)) b!1033480))

(assert (= (or b!1033478 b!1033480) bm!43639))

(declare-fun m!953333 () Bool)

(assert (=> b!1033477 m!953333))

(assert (=> b!1033477 m!953333))

(declare-fun m!953335 () Bool)

(assert (=> b!1033477 m!953335))

(assert (=> bm!43639 m!953333))

(declare-fun m!953337 () Bool)

(assert (=> bm!43639 m!953337))

(assert (=> b!1033479 m!953333))

(assert (=> b!1033479 m!953333))

(assert (=> b!1033479 m!953335))

(assert (=> b!1033481 m!953333))

(assert (=> b!1033481 m!953333))

(declare-fun m!953339 () Bool)

(assert (=> b!1033481 m!953339))

(assert (=> b!1033424 d!123753))

(declare-fun b!1033490 () Bool)

(declare-fun e!584205 () Bool)

(declare-fun call!43645 () Bool)

(assert (=> b!1033490 (= e!584205 call!43645)))

(declare-fun b!1033491 () Bool)

(declare-fun e!584206 () Bool)

(declare-fun e!584207 () Bool)

(assert (=> b!1033491 (= e!584206 e!584207)))

(declare-fun c!104318 () Bool)

(assert (=> b!1033491 (= c!104318 (validKeyInArray!0 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43642 () Bool)

(assert (=> bm!43642 (= call!43645 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11400 thiss!1427) (mask!30072 thiss!1427)))))

(declare-fun b!1033492 () Bool)

(assert (=> b!1033492 (= e!584207 e!584205)))

(declare-fun lt!456082 () (_ BitVec 64))

(assert (=> b!1033492 (= lt!456082 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33808 0))(
  ( (Unit!33809) )
))
(declare-fun lt!456083 () Unit!33808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65088 (_ BitVec 64) (_ BitVec 32)) Unit!33808)

(assert (=> b!1033492 (= lt!456083 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11400 thiss!1427) lt!456082 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1033492 (arrayContainsKey!0 (_keys!11400 thiss!1427) lt!456082 #b00000000000000000000000000000000)))

(declare-fun lt!456084 () Unit!33808)

(assert (=> b!1033492 (= lt!456084 lt!456083)))

(declare-fun res!690624 () Bool)

(declare-datatypes ((SeekEntryResult!9732 0))(
  ( (MissingZero!9732 (index!41298 (_ BitVec 32))) (Found!9732 (index!41299 (_ BitVec 32))) (Intermediate!9732 (undefined!10544 Bool) (index!41300 (_ BitVec 32)) (x!92173 (_ BitVec 32))) (Undefined!9732) (MissingVacant!9732 (index!41301 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65088 (_ BitVec 32)) SeekEntryResult!9732)

(assert (=> b!1033492 (= res!690624 (= (seekEntryOrOpen!0 (select (arr!31335 (_keys!11400 thiss!1427)) #b00000000000000000000000000000000) (_keys!11400 thiss!1427) (mask!30072 thiss!1427)) (Found!9732 #b00000000000000000000000000000000)))))

(assert (=> b!1033492 (=> (not res!690624) (not e!584205))))

(declare-fun d!123755 () Bool)

(declare-fun res!690623 () Bool)

(assert (=> d!123755 (=> res!690623 e!584206)))

(assert (=> d!123755 (= res!690623 (bvsge #b00000000000000000000000000000000 (size!31858 (_keys!11400 thiss!1427))))))

(assert (=> d!123755 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11400 thiss!1427) (mask!30072 thiss!1427)) e!584206)))

(declare-fun b!1033493 () Bool)

(assert (=> b!1033493 (= e!584207 call!43645)))

(assert (= (and d!123755 (not res!690623)) b!1033491))

(assert (= (and b!1033491 c!104318) b!1033492))

(assert (= (and b!1033491 (not c!104318)) b!1033493))

(assert (= (and b!1033492 res!690624) b!1033490))

(assert (= (or b!1033490 b!1033493) bm!43642))

(assert (=> b!1033491 m!953333))

(assert (=> b!1033491 m!953333))

(assert (=> b!1033491 m!953335))

(declare-fun m!953341 () Bool)

(assert (=> bm!43642 m!953341))

(assert (=> b!1033492 m!953333))

(declare-fun m!953343 () Bool)

(assert (=> b!1033492 m!953343))

(declare-fun m!953345 () Bool)

(assert (=> b!1033492 m!953345))

(assert (=> b!1033492 m!953333))

(declare-fun m!953347 () Bool)

(assert (=> b!1033492 m!953347))

(assert (=> b!1033425 d!123755))

(declare-fun condMapEmpty!38255 () Bool)

(declare-fun mapDefault!38255 () ValueCell!11553)

(assert (=> mapNonEmpty!38249 (= condMapEmpty!38255 (= mapRest!38249 ((as const (Array (_ BitVec 32) ValueCell!11553)) mapDefault!38255)))))

(declare-fun e!584212 () Bool)

(declare-fun mapRes!38255 () Bool)

(assert (=> mapNonEmpty!38249 (= tp!73476 (and e!584212 mapRes!38255))))

(declare-fun b!1033501 () Bool)

(assert (=> b!1033501 (= e!584212 tp_is_empty!24513)))

(declare-fun b!1033500 () Bool)

(declare-fun e!584213 () Bool)

(assert (=> b!1033500 (= e!584213 tp_is_empty!24513)))

(declare-fun mapNonEmpty!38255 () Bool)

(declare-fun tp!73486 () Bool)

(assert (=> mapNonEmpty!38255 (= mapRes!38255 (and tp!73486 e!584213))))

(declare-fun mapValue!38255 () ValueCell!11553)

(declare-fun mapKey!38255 () (_ BitVec 32))

(declare-fun mapRest!38255 () (Array (_ BitVec 32) ValueCell!11553))

(assert (=> mapNonEmpty!38255 (= mapRest!38249 (store mapRest!38255 mapKey!38255 mapValue!38255))))

(declare-fun mapIsEmpty!38255 () Bool)

(assert (=> mapIsEmpty!38255 mapRes!38255))

(assert (= (and mapNonEmpty!38249 condMapEmpty!38255) mapIsEmpty!38255))

(assert (= (and mapNonEmpty!38249 (not condMapEmpty!38255)) mapNonEmpty!38255))

(assert (= (and mapNonEmpty!38255 ((_ is ValueCellFull!11553) mapValue!38255)) b!1033500))

(assert (= (and mapNonEmpty!38249 ((_ is ValueCellFull!11553) mapDefault!38255)) b!1033501))

(declare-fun m!953349 () Bool)

(assert (=> mapNonEmpty!38255 m!953349))

(check-sat (not b_next!20793) (not bm!43639) (not d!123747) (not b!1033479) (not b!1033464) tp_is_empty!24513 b_and!33279 (not b!1033481) (not b!1033477) (not bm!43642) (not b!1033492) (not b!1033466) (not mapNonEmpty!38255) (not b!1033491) (not b!1033465))
(check-sat b_and!33279 (not b_next!20793))
