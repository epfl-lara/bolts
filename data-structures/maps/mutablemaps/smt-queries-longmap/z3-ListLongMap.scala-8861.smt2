; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107564 () Bool)

(assert start!107564)

(declare-fun b!1273177 () Bool)

(declare-fun b_free!27711 () Bool)

(declare-fun b_next!27711 () Bool)

(assert (=> b!1273177 (= b_free!27711 (not b_next!27711))))

(declare-fun tp!97674 () Bool)

(declare-fun b_and!45777 () Bool)

(assert (=> b!1273177 (= tp!97674 b_and!45777)))

(declare-fun b!1273174 () Bool)

(declare-fun res!846799 () Bool)

(declare-fun e!726379 () Bool)

(assert (=> b!1273174 (=> (not res!846799) (not e!726379))))

(declare-datatypes ((V!49301 0))(
  ( (V!49302 (val!16615 Int)) )
))
(declare-datatypes ((ValueCell!15687 0))(
  ( (ValueCellFull!15687 (v!19250 V!49301)) (EmptyCell!15687) )
))
(declare-datatypes ((array!83373 0))(
  ( (array!83374 (arr!40209 (Array (_ BitVec 32) ValueCell!15687)) (size!40751 (_ BitVec 32))) )
))
(declare-datatypes ((array!83375 0))(
  ( (array!83376 (arr!40210 (Array (_ BitVec 32) (_ BitVec 64))) (size!40752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6138 0))(
  ( (LongMapFixedSize!6139 (defaultEntry!6715 Int) (mask!34485 (_ BitVec 32)) (extraKeys!6394 (_ BitVec 32)) (zeroValue!6500 V!49301) (minValue!6500 V!49301) (_size!3124 (_ BitVec 32)) (_keys!12125 array!83375) (_values!6738 array!83373) (_vacant!3124 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6138)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273174 (= res!846799 (validMask!0 (mask!34485 thiss!1559)))))

(declare-fun mapIsEmpty!51237 () Bool)

(declare-fun mapRes!51237 () Bool)

(assert (=> mapIsEmpty!51237 mapRes!51237))

(declare-fun b!1273175 () Bool)

(declare-fun e!726380 () Bool)

(declare-fun e!726378 () Bool)

(assert (=> b!1273175 (= e!726380 (and e!726378 mapRes!51237))))

(declare-fun condMapEmpty!51237 () Bool)

(declare-fun mapDefault!51237 () ValueCell!15687)

(assert (=> b!1273175 (= condMapEmpty!51237 (= (arr!40209 (_values!6738 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15687)) mapDefault!51237)))))

(declare-fun b!1273176 () Bool)

(declare-fun e!726382 () Bool)

(declare-fun tp_is_empty!33081 () Bool)

(assert (=> b!1273176 (= e!726382 tp_is_empty!33081)))

(declare-fun e!726377 () Bool)

(declare-fun array_inv!30523 (array!83375) Bool)

(declare-fun array_inv!30524 (array!83373) Bool)

(assert (=> b!1273177 (= e!726377 (and tp!97674 tp_is_empty!33081 (array_inv!30523 (_keys!12125 thiss!1559)) (array_inv!30524 (_values!6738 thiss!1559)) e!726380))))

(declare-fun b!1273178 () Bool)

(declare-fun res!846800 () Bool)

(assert (=> b!1273178 (=> (not res!846800) (not e!726379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83375 (_ BitVec 32)) Bool)

(assert (=> b!1273178 (= res!846800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12125 thiss!1559) (mask!34485 thiss!1559)))))

(declare-fun b!1273179 () Bool)

(assert (=> b!1273179 (= e!726378 tp_is_empty!33081)))

(declare-fun b!1273180 () Bool)

(declare-fun res!846797 () Bool)

(assert (=> b!1273180 (=> (not res!846797) (not e!726379))))

(declare-datatypes ((List!28725 0))(
  ( (Nil!28722) (Cons!28721 (h!29930 (_ BitVec 64)) (t!42265 List!28725)) )
))
(declare-fun arrayNoDuplicates!0 (array!83375 (_ BitVec 32) List!28725) Bool)

(assert (=> b!1273180 (= res!846797 (arrayNoDuplicates!0 (_keys!12125 thiss!1559) #b00000000000000000000000000000000 Nil!28722))))

(declare-fun res!846798 () Bool)

(assert (=> start!107564 (=> (not res!846798) (not e!726379))))

(declare-fun valid!2259 (LongMapFixedSize!6138) Bool)

(assert (=> start!107564 (= res!846798 (valid!2259 thiss!1559))))

(assert (=> start!107564 e!726379))

(assert (=> start!107564 e!726377))

(declare-fun mapNonEmpty!51237 () Bool)

(declare-fun tp!97675 () Bool)

(assert (=> mapNonEmpty!51237 (= mapRes!51237 (and tp!97675 e!726382))))

(declare-fun mapKey!51237 () (_ BitVec 32))

(declare-fun mapValue!51237 () ValueCell!15687)

(declare-fun mapRest!51237 () (Array (_ BitVec 32) ValueCell!15687))

(assert (=> mapNonEmpty!51237 (= (arr!40209 (_values!6738 thiss!1559)) (store mapRest!51237 mapKey!51237 mapValue!51237))))

(declare-fun b!1273181 () Bool)

(declare-fun res!846801 () Bool)

(assert (=> b!1273181 (=> (not res!846801) (not e!726379))))

(assert (=> b!1273181 (= res!846801 (and (= (size!40751 (_values!6738 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34485 thiss!1559))) (= (size!40752 (_keys!12125 thiss!1559)) (size!40751 (_values!6738 thiss!1559))) (bvsge (mask!34485 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6394 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6394 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1273182 () Bool)

(assert (=> b!1273182 (= e!726379 (bvsgt #b00000000000000000000000000000000 (size!40752 (_keys!12125 thiss!1559))))))

(assert (= (and start!107564 res!846798) b!1273174))

(assert (= (and b!1273174 res!846799) b!1273181))

(assert (= (and b!1273181 res!846801) b!1273178))

(assert (= (and b!1273178 res!846800) b!1273180))

(assert (= (and b!1273180 res!846797) b!1273182))

(assert (= (and b!1273175 condMapEmpty!51237) mapIsEmpty!51237))

(assert (= (and b!1273175 (not condMapEmpty!51237)) mapNonEmpty!51237))

(get-info :version)

(assert (= (and mapNonEmpty!51237 ((_ is ValueCellFull!15687) mapValue!51237)) b!1273176))

(assert (= (and b!1273175 ((_ is ValueCellFull!15687) mapDefault!51237)) b!1273179))

(assert (= b!1273177 b!1273175))

(assert (= start!107564 b!1273177))

(declare-fun m!1170489 () Bool)

(assert (=> b!1273178 m!1170489))

(declare-fun m!1170491 () Bool)

(assert (=> b!1273174 m!1170491))

(declare-fun m!1170493 () Bool)

(assert (=> b!1273180 m!1170493))

(declare-fun m!1170495 () Bool)

(assert (=> b!1273177 m!1170495))

(declare-fun m!1170497 () Bool)

(assert (=> b!1273177 m!1170497))

(declare-fun m!1170499 () Bool)

(assert (=> mapNonEmpty!51237 m!1170499))

(declare-fun m!1170501 () Bool)

(assert (=> start!107564 m!1170501))

(check-sat (not b!1273177) (not b!1273178) (not mapNonEmpty!51237) b_and!45777 (not start!107564) tp_is_empty!33081 (not b!1273174) (not b!1273180) (not b_next!27711))
(check-sat b_and!45777 (not b_next!27711))
(get-model)

(declare-fun d!139889 () Bool)

(declare-fun res!846823 () Bool)

(declare-fun e!726403 () Bool)

(assert (=> d!139889 (=> (not res!846823) (not e!726403))))

(declare-fun simpleValid!462 (LongMapFixedSize!6138) Bool)

(assert (=> d!139889 (= res!846823 (simpleValid!462 thiss!1559))))

(assert (=> d!139889 (= (valid!2259 thiss!1559) e!726403)))

(declare-fun b!1273216 () Bool)

(declare-fun res!846824 () Bool)

(assert (=> b!1273216 (=> (not res!846824) (not e!726403))))

(declare-fun arrayCountValidKeys!0 (array!83375 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273216 (= res!846824 (= (arrayCountValidKeys!0 (_keys!12125 thiss!1559) #b00000000000000000000000000000000 (size!40752 (_keys!12125 thiss!1559))) (_size!3124 thiss!1559)))))

(declare-fun b!1273217 () Bool)

(declare-fun res!846825 () Bool)

(assert (=> b!1273217 (=> (not res!846825) (not e!726403))))

(assert (=> b!1273217 (= res!846825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12125 thiss!1559) (mask!34485 thiss!1559)))))

(declare-fun b!1273218 () Bool)

(assert (=> b!1273218 (= e!726403 (arrayNoDuplicates!0 (_keys!12125 thiss!1559) #b00000000000000000000000000000000 Nil!28722))))

(assert (= (and d!139889 res!846823) b!1273216))

(assert (= (and b!1273216 res!846824) b!1273217))

(assert (= (and b!1273217 res!846825) b!1273218))

(declare-fun m!1170517 () Bool)

(assert (=> d!139889 m!1170517))

(declare-fun m!1170519 () Bool)

(assert (=> b!1273216 m!1170519))

(assert (=> b!1273217 m!1170489))

(assert (=> b!1273218 m!1170493))

(assert (=> start!107564 d!139889))

(declare-fun d!139891 () Bool)

(assert (=> d!139891 (= (array_inv!30523 (_keys!12125 thiss!1559)) (bvsge (size!40752 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1273177 d!139891))

(declare-fun d!139893 () Bool)

(assert (=> d!139893 (= (array_inv!30524 (_values!6738 thiss!1559)) (bvsge (size!40751 (_values!6738 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1273177 d!139893))

(declare-fun b!1273229 () Bool)

(declare-fun e!726414 () Bool)

(declare-fun e!726412 () Bool)

(assert (=> b!1273229 (= e!726414 e!726412)))

(declare-fun res!846832 () Bool)

(assert (=> b!1273229 (=> (not res!846832) (not e!726412))))

(declare-fun e!726413 () Bool)

(assert (=> b!1273229 (= res!846832 (not e!726413))))

(declare-fun res!846834 () Bool)

(assert (=> b!1273229 (=> (not res!846834) (not e!726413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273229 (= res!846834 (validKeyInArray!0 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1273230 () Bool)

(declare-fun contains!7692 (List!28725 (_ BitVec 64)) Bool)

(assert (=> b!1273230 (= e!726413 (contains!7692 Nil!28722 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun d!139895 () Bool)

(declare-fun res!846833 () Bool)

(assert (=> d!139895 (=> res!846833 e!726414)))

(assert (=> d!139895 (= res!846833 (bvsge #b00000000000000000000000000000000 (size!40752 (_keys!12125 thiss!1559))))))

(assert (=> d!139895 (= (arrayNoDuplicates!0 (_keys!12125 thiss!1559) #b00000000000000000000000000000000 Nil!28722) e!726414)))

(declare-fun bm!62587 () Bool)

(declare-fun call!62590 () Bool)

(declare-fun c!123699 () Bool)

(assert (=> bm!62587 (= call!62590 (arrayNoDuplicates!0 (_keys!12125 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123699 (Cons!28721 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000) Nil!28722) Nil!28722)))))

(declare-fun b!1273231 () Bool)

(declare-fun e!726415 () Bool)

(assert (=> b!1273231 (= e!726415 call!62590)))

(declare-fun b!1273232 () Bool)

(assert (=> b!1273232 (= e!726412 e!726415)))

(assert (=> b!1273232 (= c!123699 (validKeyInArray!0 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1273233 () Bool)

(assert (=> b!1273233 (= e!726415 call!62590)))

(assert (= (and d!139895 (not res!846833)) b!1273229))

(assert (= (and b!1273229 res!846834) b!1273230))

(assert (= (and b!1273229 res!846832) b!1273232))

(assert (= (and b!1273232 c!123699) b!1273231))

(assert (= (and b!1273232 (not c!123699)) b!1273233))

(assert (= (or b!1273231 b!1273233) bm!62587))

(declare-fun m!1170521 () Bool)

(assert (=> b!1273229 m!1170521))

(assert (=> b!1273229 m!1170521))

(declare-fun m!1170523 () Bool)

(assert (=> b!1273229 m!1170523))

(assert (=> b!1273230 m!1170521))

(assert (=> b!1273230 m!1170521))

(declare-fun m!1170525 () Bool)

(assert (=> b!1273230 m!1170525))

(assert (=> bm!62587 m!1170521))

(declare-fun m!1170527 () Bool)

(assert (=> bm!62587 m!1170527))

(assert (=> b!1273232 m!1170521))

(assert (=> b!1273232 m!1170521))

(assert (=> b!1273232 m!1170523))

(assert (=> b!1273180 d!139895))

(declare-fun d!139897 () Bool)

(assert (=> d!139897 (= (validMask!0 (mask!34485 thiss!1559)) (and (or (= (mask!34485 thiss!1559) #b00000000000000000000000000000111) (= (mask!34485 thiss!1559) #b00000000000000000000000000001111) (= (mask!34485 thiss!1559) #b00000000000000000000000000011111) (= (mask!34485 thiss!1559) #b00000000000000000000000000111111) (= (mask!34485 thiss!1559) #b00000000000000000000000001111111) (= (mask!34485 thiss!1559) #b00000000000000000000000011111111) (= (mask!34485 thiss!1559) #b00000000000000000000000111111111) (= (mask!34485 thiss!1559) #b00000000000000000000001111111111) (= (mask!34485 thiss!1559) #b00000000000000000000011111111111) (= (mask!34485 thiss!1559) #b00000000000000000000111111111111) (= (mask!34485 thiss!1559) #b00000000000000000001111111111111) (= (mask!34485 thiss!1559) #b00000000000000000011111111111111) (= (mask!34485 thiss!1559) #b00000000000000000111111111111111) (= (mask!34485 thiss!1559) #b00000000000000001111111111111111) (= (mask!34485 thiss!1559) #b00000000000000011111111111111111) (= (mask!34485 thiss!1559) #b00000000000000111111111111111111) (= (mask!34485 thiss!1559) #b00000000000001111111111111111111) (= (mask!34485 thiss!1559) #b00000000000011111111111111111111) (= (mask!34485 thiss!1559) #b00000000000111111111111111111111) (= (mask!34485 thiss!1559) #b00000000001111111111111111111111) (= (mask!34485 thiss!1559) #b00000000011111111111111111111111) (= (mask!34485 thiss!1559) #b00000000111111111111111111111111) (= (mask!34485 thiss!1559) #b00000001111111111111111111111111) (= (mask!34485 thiss!1559) #b00000011111111111111111111111111) (= (mask!34485 thiss!1559) #b00000111111111111111111111111111) (= (mask!34485 thiss!1559) #b00001111111111111111111111111111) (= (mask!34485 thiss!1559) #b00011111111111111111111111111111) (= (mask!34485 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34485 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1273174 d!139897))

(declare-fun bm!62590 () Bool)

(declare-fun call!62593 () Bool)

(assert (=> bm!62590 (= call!62593 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12125 thiss!1559) (mask!34485 thiss!1559)))))

(declare-fun b!1273242 () Bool)

(declare-fun e!726424 () Bool)

(declare-fun e!726422 () Bool)

(assert (=> b!1273242 (= e!726424 e!726422)))

(declare-fun lt!575066 () (_ BitVec 64))

(assert (=> b!1273242 (= lt!575066 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42276 0))(
  ( (Unit!42277) )
))
(declare-fun lt!575065 () Unit!42276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83375 (_ BitVec 64) (_ BitVec 32)) Unit!42276)

(assert (=> b!1273242 (= lt!575065 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12125 thiss!1559) lt!575066 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1273242 (arrayContainsKey!0 (_keys!12125 thiss!1559) lt!575066 #b00000000000000000000000000000000)))

(declare-fun lt!575067 () Unit!42276)

(assert (=> b!1273242 (= lt!575067 lt!575065)))

(declare-fun res!846840 () Bool)

(declare-datatypes ((SeekEntryResult!9993 0))(
  ( (MissingZero!9993 (index!42342 (_ BitVec 32))) (Found!9993 (index!42343 (_ BitVec 32))) (Intermediate!9993 (undefined!10805 Bool) (index!42344 (_ BitVec 32)) (x!112561 (_ BitVec 32))) (Undefined!9993) (MissingVacant!9993 (index!42345 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83375 (_ BitVec 32)) SeekEntryResult!9993)

(assert (=> b!1273242 (= res!846840 (= (seekEntryOrOpen!0 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000) (_keys!12125 thiss!1559) (mask!34485 thiss!1559)) (Found!9993 #b00000000000000000000000000000000)))))

(assert (=> b!1273242 (=> (not res!846840) (not e!726422))))

(declare-fun b!1273243 () Bool)

(assert (=> b!1273243 (= e!726422 call!62593)))

(declare-fun d!139899 () Bool)

(declare-fun res!846839 () Bool)

(declare-fun e!726423 () Bool)

(assert (=> d!139899 (=> res!846839 e!726423)))

(assert (=> d!139899 (= res!846839 (bvsge #b00000000000000000000000000000000 (size!40752 (_keys!12125 thiss!1559))))))

(assert (=> d!139899 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12125 thiss!1559) (mask!34485 thiss!1559)) e!726423)))

(declare-fun b!1273244 () Bool)

(assert (=> b!1273244 (= e!726423 e!726424)))

(declare-fun c!123702 () Bool)

(assert (=> b!1273244 (= c!123702 (validKeyInArray!0 (select (arr!40210 (_keys!12125 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1273245 () Bool)

(assert (=> b!1273245 (= e!726424 call!62593)))

(assert (= (and d!139899 (not res!846839)) b!1273244))

(assert (= (and b!1273244 c!123702) b!1273242))

(assert (= (and b!1273244 (not c!123702)) b!1273245))

(assert (= (and b!1273242 res!846840) b!1273243))

(assert (= (or b!1273243 b!1273245) bm!62590))

(declare-fun m!1170529 () Bool)

(assert (=> bm!62590 m!1170529))

(assert (=> b!1273242 m!1170521))

(declare-fun m!1170531 () Bool)

(assert (=> b!1273242 m!1170531))

(declare-fun m!1170533 () Bool)

(assert (=> b!1273242 m!1170533))

(assert (=> b!1273242 m!1170521))

(declare-fun m!1170535 () Bool)

(assert (=> b!1273242 m!1170535))

(assert (=> b!1273244 m!1170521))

(assert (=> b!1273244 m!1170521))

(assert (=> b!1273244 m!1170523))

(assert (=> b!1273178 d!139899))

(declare-fun b!1273252 () Bool)

(declare-fun e!726429 () Bool)

(assert (=> b!1273252 (= e!726429 tp_is_empty!33081)))

(declare-fun condMapEmpty!51243 () Bool)

(declare-fun mapDefault!51243 () ValueCell!15687)

(assert (=> mapNonEmpty!51237 (= condMapEmpty!51243 (= mapRest!51237 ((as const (Array (_ BitVec 32) ValueCell!15687)) mapDefault!51243)))))

(declare-fun e!726430 () Bool)

(declare-fun mapRes!51243 () Bool)

(assert (=> mapNonEmpty!51237 (= tp!97675 (and e!726430 mapRes!51243))))

(declare-fun b!1273253 () Bool)

(assert (=> b!1273253 (= e!726430 tp_is_empty!33081)))

(declare-fun mapNonEmpty!51243 () Bool)

(declare-fun tp!97684 () Bool)

(assert (=> mapNonEmpty!51243 (= mapRes!51243 (and tp!97684 e!726429))))

(declare-fun mapRest!51243 () (Array (_ BitVec 32) ValueCell!15687))

(declare-fun mapKey!51243 () (_ BitVec 32))

(declare-fun mapValue!51243 () ValueCell!15687)

(assert (=> mapNonEmpty!51243 (= mapRest!51237 (store mapRest!51243 mapKey!51243 mapValue!51243))))

(declare-fun mapIsEmpty!51243 () Bool)

(assert (=> mapIsEmpty!51243 mapRes!51243))

(assert (= (and mapNonEmpty!51237 condMapEmpty!51243) mapIsEmpty!51243))

(assert (= (and mapNonEmpty!51237 (not condMapEmpty!51243)) mapNonEmpty!51243))

(assert (= (and mapNonEmpty!51243 ((_ is ValueCellFull!15687) mapValue!51243)) b!1273252))

(assert (= (and mapNonEmpty!51237 ((_ is ValueCellFull!15687) mapDefault!51243)) b!1273253))

(declare-fun m!1170537 () Bool)

(assert (=> mapNonEmpty!51243 m!1170537))

(check-sat (not bm!62587) (not b!1273232) (not b_next!27711) (not b!1273218) (not b!1273217) (not b!1273230) (not mapNonEmpty!51243) b_and!45777 (not b!1273242) (not b!1273244) (not b!1273216) tp_is_empty!33081 (not d!139889) (not b!1273229) (not bm!62590))
(check-sat b_and!45777 (not b_next!27711))
