; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107530 () Bool)

(assert start!107530)

(declare-fun b!1272957 () Bool)

(declare-fun b_free!27699 () Bool)

(declare-fun b_next!27699 () Bool)

(assert (=> b!1272957 (= b_free!27699 (not b_next!27699))))

(declare-fun tp!97633 () Bool)

(declare-fun b_and!45765 () Bool)

(assert (=> b!1272957 (= tp!97633 b_and!45765)))

(declare-fun b!1272956 () Bool)

(declare-fun res!846686 () Bool)

(declare-fun e!726224 () Bool)

(assert (=> b!1272956 (=> (not res!846686) (not e!726224))))

(declare-datatypes ((V!49285 0))(
  ( (V!49286 (val!16609 Int)) )
))
(declare-datatypes ((ValueCell!15681 0))(
  ( (ValueCellFull!15681 (v!19244 V!49285)) (EmptyCell!15681) )
))
(declare-datatypes ((array!83345 0))(
  ( (array!83346 (arr!40197 (Array (_ BitVec 32) ValueCell!15681)) (size!40739 (_ BitVec 32))) )
))
(declare-datatypes ((array!83347 0))(
  ( (array!83348 (arr!40198 (Array (_ BitVec 32) (_ BitVec 64))) (size!40740 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6126 0))(
  ( (LongMapFixedSize!6127 (defaultEntry!6709 Int) (mask!34471 (_ BitVec 32)) (extraKeys!6388 (_ BitVec 32)) (zeroValue!6494 V!49285) (minValue!6494 V!49285) (_size!3118 (_ BitVec 32)) (_keys!12117 array!83347) (_values!6732 array!83345) (_vacant!3118 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6126)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272956 (= res!846686 (validMask!0 (mask!34471 thiss!1559)))))

(declare-fun tp_is_empty!33069 () Bool)

(declare-fun e!726221 () Bool)

(declare-fun e!726223 () Bool)

(declare-fun array_inv!30515 (array!83347) Bool)

(declare-fun array_inv!30516 (array!83345) Bool)

(assert (=> b!1272957 (= e!726221 (and tp!97633 tp_is_empty!33069 (array_inv!30515 (_keys!12117 thiss!1559)) (array_inv!30516 (_values!6732 thiss!1559)) e!726223))))

(declare-fun b!1272958 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83347 (_ BitVec 32)) Bool)

(assert (=> b!1272958 (= e!726224 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12117 thiss!1559) (mask!34471 thiss!1559))))))

(declare-fun b!1272959 () Bool)

(declare-fun res!846687 () Bool)

(assert (=> b!1272959 (=> (not res!846687) (not e!726224))))

(assert (=> b!1272959 (= res!846687 (and (= (size!40739 (_values!6732 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34471 thiss!1559))) (= (size!40740 (_keys!12117 thiss!1559)) (size!40739 (_values!6732 thiss!1559))) (bvsge (mask!34471 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6388 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6388 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1272960 () Bool)

(declare-fun e!726226 () Bool)

(declare-fun mapRes!51213 () Bool)

(assert (=> b!1272960 (= e!726223 (and e!726226 mapRes!51213))))

(declare-fun condMapEmpty!51213 () Bool)

(declare-fun mapDefault!51213 () ValueCell!15681)

(assert (=> b!1272960 (= condMapEmpty!51213 (= (arr!40197 (_values!6732 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15681)) mapDefault!51213)))))

(declare-fun mapNonEmpty!51213 () Bool)

(declare-fun tp!97632 () Bool)

(declare-fun e!726222 () Bool)

(assert (=> mapNonEmpty!51213 (= mapRes!51213 (and tp!97632 e!726222))))

(declare-fun mapValue!51213 () ValueCell!15681)

(declare-fun mapRest!51213 () (Array (_ BitVec 32) ValueCell!15681))

(declare-fun mapKey!51213 () (_ BitVec 32))

(assert (=> mapNonEmpty!51213 (= (arr!40197 (_values!6732 thiss!1559)) (store mapRest!51213 mapKey!51213 mapValue!51213))))

(declare-fun b!1272962 () Bool)

(assert (=> b!1272962 (= e!726226 tp_is_empty!33069)))

(declare-fun mapIsEmpty!51213 () Bool)

(assert (=> mapIsEmpty!51213 mapRes!51213))

(declare-fun res!846685 () Bool)

(assert (=> start!107530 (=> (not res!846685) (not e!726224))))

(declare-fun valid!2254 (LongMapFixedSize!6126) Bool)

(assert (=> start!107530 (= res!846685 (valid!2254 thiss!1559))))

(assert (=> start!107530 e!726224))

(assert (=> start!107530 e!726221))

(declare-fun b!1272961 () Bool)

(assert (=> b!1272961 (= e!726222 tp_is_empty!33069)))

(assert (= (and start!107530 res!846685) b!1272956))

(assert (= (and b!1272956 res!846686) b!1272959))

(assert (= (and b!1272959 res!846687) b!1272958))

(assert (= (and b!1272960 condMapEmpty!51213) mapIsEmpty!51213))

(assert (= (and b!1272960 (not condMapEmpty!51213)) mapNonEmpty!51213))

(get-info :version)

(assert (= (and mapNonEmpty!51213 ((_ is ValueCellFull!15681) mapValue!51213)) b!1272961))

(assert (= (and b!1272960 ((_ is ValueCellFull!15681) mapDefault!51213)) b!1272962))

(assert (= b!1272957 b!1272960))

(assert (= start!107530 b!1272957))

(declare-fun m!1170367 () Bool)

(assert (=> start!107530 m!1170367))

(declare-fun m!1170369 () Bool)

(assert (=> b!1272957 m!1170369))

(declare-fun m!1170371 () Bool)

(assert (=> b!1272957 m!1170371))

(declare-fun m!1170373 () Bool)

(assert (=> mapNonEmpty!51213 m!1170373))

(declare-fun m!1170375 () Bool)

(assert (=> b!1272956 m!1170375))

(declare-fun m!1170377 () Bool)

(assert (=> b!1272958 m!1170377))

(check-sat b_and!45765 (not b!1272956) (not b!1272957) (not b_next!27699) (not b!1272958) (not mapNonEmpty!51213) (not start!107530) tp_is_empty!33069)
(check-sat b_and!45765 (not b_next!27699))
(get-model)

(declare-fun d!139863 () Bool)

(declare-fun res!846703 () Bool)

(declare-fun e!726247 () Bool)

(assert (=> d!139863 (=> (not res!846703) (not e!726247))))

(declare-fun simpleValid!460 (LongMapFixedSize!6126) Bool)

(assert (=> d!139863 (= res!846703 (simpleValid!460 thiss!1559))))

(assert (=> d!139863 (= (valid!2254 thiss!1559) e!726247)))

(declare-fun b!1272990 () Bool)

(declare-fun res!846704 () Bool)

(assert (=> b!1272990 (=> (not res!846704) (not e!726247))))

(declare-fun arrayCountValidKeys!0 (array!83347 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272990 (= res!846704 (= (arrayCountValidKeys!0 (_keys!12117 thiss!1559) #b00000000000000000000000000000000 (size!40740 (_keys!12117 thiss!1559))) (_size!3118 thiss!1559)))))

(declare-fun b!1272991 () Bool)

(declare-fun res!846705 () Bool)

(assert (=> b!1272991 (=> (not res!846705) (not e!726247))))

(assert (=> b!1272991 (= res!846705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12117 thiss!1559) (mask!34471 thiss!1559)))))

(declare-fun b!1272992 () Bool)

(declare-datatypes ((List!28722 0))(
  ( (Nil!28719) (Cons!28718 (h!29927 (_ BitVec 64)) (t!42262 List!28722)) )
))
(declare-fun arrayNoDuplicates!0 (array!83347 (_ BitVec 32) List!28722) Bool)

(assert (=> b!1272992 (= e!726247 (arrayNoDuplicates!0 (_keys!12117 thiss!1559) #b00000000000000000000000000000000 Nil!28719))))

(assert (= (and d!139863 res!846703) b!1272990))

(assert (= (and b!1272990 res!846704) b!1272991))

(assert (= (and b!1272991 res!846705) b!1272992))

(declare-fun m!1170391 () Bool)

(assert (=> d!139863 m!1170391))

(declare-fun m!1170393 () Bool)

(assert (=> b!1272990 m!1170393))

(assert (=> b!1272991 m!1170377))

(declare-fun m!1170395 () Bool)

(assert (=> b!1272992 m!1170395))

(assert (=> start!107530 d!139863))

(declare-fun d!139865 () Bool)

(declare-fun res!846710 () Bool)

(declare-fun e!726254 () Bool)

(assert (=> d!139865 (=> res!846710 e!726254)))

(assert (=> d!139865 (= res!846710 (bvsge #b00000000000000000000000000000000 (size!40740 (_keys!12117 thiss!1559))))))

(assert (=> d!139865 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12117 thiss!1559) (mask!34471 thiss!1559)) e!726254)))

(declare-fun b!1273001 () Bool)

(declare-fun e!726256 () Bool)

(assert (=> b!1273001 (= e!726254 e!726256)))

(declare-fun c!123690 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273001 (= c!123690 (validKeyInArray!0 (select (arr!40198 (_keys!12117 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun bm!62578 () Bool)

(declare-fun call!62581 () Bool)

(assert (=> bm!62578 (= call!62581 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12117 thiss!1559) (mask!34471 thiss!1559)))))

(declare-fun b!1273002 () Bool)

(assert (=> b!1273002 (= e!726256 call!62581)))

(declare-fun b!1273003 () Bool)

(declare-fun e!726255 () Bool)

(assert (=> b!1273003 (= e!726256 e!726255)))

(declare-fun lt!575048 () (_ BitVec 64))

(assert (=> b!1273003 (= lt!575048 (select (arr!40198 (_keys!12117 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42272 0))(
  ( (Unit!42273) )
))
(declare-fun lt!575049 () Unit!42272)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83347 (_ BitVec 64) (_ BitVec 32)) Unit!42272)

(assert (=> b!1273003 (= lt!575049 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12117 thiss!1559) lt!575048 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1273003 (arrayContainsKey!0 (_keys!12117 thiss!1559) lt!575048 #b00000000000000000000000000000000)))

(declare-fun lt!575047 () Unit!42272)

(assert (=> b!1273003 (= lt!575047 lt!575049)))

(declare-fun res!846711 () Bool)

(declare-datatypes ((SeekEntryResult!9991 0))(
  ( (MissingZero!9991 (index!42334 (_ BitVec 32))) (Found!9991 (index!42335 (_ BitVec 32))) (Intermediate!9991 (undefined!10803 Bool) (index!42336 (_ BitVec 32)) (x!112527 (_ BitVec 32))) (Undefined!9991) (MissingVacant!9991 (index!42337 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83347 (_ BitVec 32)) SeekEntryResult!9991)

(assert (=> b!1273003 (= res!846711 (= (seekEntryOrOpen!0 (select (arr!40198 (_keys!12117 thiss!1559)) #b00000000000000000000000000000000) (_keys!12117 thiss!1559) (mask!34471 thiss!1559)) (Found!9991 #b00000000000000000000000000000000)))))

(assert (=> b!1273003 (=> (not res!846711) (not e!726255))))

(declare-fun b!1273004 () Bool)

(assert (=> b!1273004 (= e!726255 call!62581)))

(assert (= (and d!139865 (not res!846710)) b!1273001))

(assert (= (and b!1273001 c!123690) b!1273003))

(assert (= (and b!1273001 (not c!123690)) b!1273002))

(assert (= (and b!1273003 res!846711) b!1273004))

(assert (= (or b!1273004 b!1273002) bm!62578))

(declare-fun m!1170397 () Bool)

(assert (=> b!1273001 m!1170397))

(assert (=> b!1273001 m!1170397))

(declare-fun m!1170399 () Bool)

(assert (=> b!1273001 m!1170399))

(declare-fun m!1170401 () Bool)

(assert (=> bm!62578 m!1170401))

(assert (=> b!1273003 m!1170397))

(declare-fun m!1170403 () Bool)

(assert (=> b!1273003 m!1170403))

(declare-fun m!1170405 () Bool)

(assert (=> b!1273003 m!1170405))

(assert (=> b!1273003 m!1170397))

(declare-fun m!1170407 () Bool)

(assert (=> b!1273003 m!1170407))

(assert (=> b!1272958 d!139865))

(declare-fun d!139867 () Bool)

(assert (=> d!139867 (= (array_inv!30515 (_keys!12117 thiss!1559)) (bvsge (size!40740 (_keys!12117 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272957 d!139867))

(declare-fun d!139869 () Bool)

(assert (=> d!139869 (= (array_inv!30516 (_values!6732 thiss!1559)) (bvsge (size!40739 (_values!6732 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272957 d!139869))

(declare-fun d!139871 () Bool)

(assert (=> d!139871 (= (validMask!0 (mask!34471 thiss!1559)) (and (or (= (mask!34471 thiss!1559) #b00000000000000000000000000000111) (= (mask!34471 thiss!1559) #b00000000000000000000000000001111) (= (mask!34471 thiss!1559) #b00000000000000000000000000011111) (= (mask!34471 thiss!1559) #b00000000000000000000000000111111) (= (mask!34471 thiss!1559) #b00000000000000000000000001111111) (= (mask!34471 thiss!1559) #b00000000000000000000000011111111) (= (mask!34471 thiss!1559) #b00000000000000000000000111111111) (= (mask!34471 thiss!1559) #b00000000000000000000001111111111) (= (mask!34471 thiss!1559) #b00000000000000000000011111111111) (= (mask!34471 thiss!1559) #b00000000000000000000111111111111) (= (mask!34471 thiss!1559) #b00000000000000000001111111111111) (= (mask!34471 thiss!1559) #b00000000000000000011111111111111) (= (mask!34471 thiss!1559) #b00000000000000000111111111111111) (= (mask!34471 thiss!1559) #b00000000000000001111111111111111) (= (mask!34471 thiss!1559) #b00000000000000011111111111111111) (= (mask!34471 thiss!1559) #b00000000000000111111111111111111) (= (mask!34471 thiss!1559) #b00000000000001111111111111111111) (= (mask!34471 thiss!1559) #b00000000000011111111111111111111) (= (mask!34471 thiss!1559) #b00000000000111111111111111111111) (= (mask!34471 thiss!1559) #b00000000001111111111111111111111) (= (mask!34471 thiss!1559) #b00000000011111111111111111111111) (= (mask!34471 thiss!1559) #b00000000111111111111111111111111) (= (mask!34471 thiss!1559) #b00000001111111111111111111111111) (= (mask!34471 thiss!1559) #b00000011111111111111111111111111) (= (mask!34471 thiss!1559) #b00000111111111111111111111111111) (= (mask!34471 thiss!1559) #b00001111111111111111111111111111) (= (mask!34471 thiss!1559) #b00011111111111111111111111111111) (= (mask!34471 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34471 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272956 d!139871))

(declare-fun b!1273012 () Bool)

(declare-fun e!726261 () Bool)

(assert (=> b!1273012 (= e!726261 tp_is_empty!33069)))

(declare-fun mapNonEmpty!51219 () Bool)

(declare-fun mapRes!51219 () Bool)

(declare-fun tp!97642 () Bool)

(declare-fun e!726262 () Bool)

(assert (=> mapNonEmpty!51219 (= mapRes!51219 (and tp!97642 e!726262))))

(declare-fun mapValue!51219 () ValueCell!15681)

(declare-fun mapKey!51219 () (_ BitVec 32))

(declare-fun mapRest!51219 () (Array (_ BitVec 32) ValueCell!15681))

(assert (=> mapNonEmpty!51219 (= mapRest!51213 (store mapRest!51219 mapKey!51219 mapValue!51219))))

(declare-fun mapIsEmpty!51219 () Bool)

(assert (=> mapIsEmpty!51219 mapRes!51219))

(declare-fun b!1273011 () Bool)

(assert (=> b!1273011 (= e!726262 tp_is_empty!33069)))

(declare-fun condMapEmpty!51219 () Bool)

(declare-fun mapDefault!51219 () ValueCell!15681)

(assert (=> mapNonEmpty!51213 (= condMapEmpty!51219 (= mapRest!51213 ((as const (Array (_ BitVec 32) ValueCell!15681)) mapDefault!51219)))))

(assert (=> mapNonEmpty!51213 (= tp!97632 (and e!726261 mapRes!51219))))

(assert (= (and mapNonEmpty!51213 condMapEmpty!51219) mapIsEmpty!51219))

(assert (= (and mapNonEmpty!51213 (not condMapEmpty!51219)) mapNonEmpty!51219))

(assert (= (and mapNonEmpty!51219 ((_ is ValueCellFull!15681) mapValue!51219)) b!1273011))

(assert (= (and mapNonEmpty!51213 ((_ is ValueCellFull!15681) mapDefault!51219)) b!1273012))

(declare-fun m!1170409 () Bool)

(assert (=> mapNonEmpty!51219 m!1170409))

(check-sat b_and!45765 (not b!1272992) (not b!1273003) (not b!1272991) (not mapNonEmpty!51219) (not b!1272990) (not bm!62578) (not b!1273001) (not b_next!27699) (not d!139863) tp_is_empty!33069)
(check-sat b_and!45765 (not b_next!27699))
