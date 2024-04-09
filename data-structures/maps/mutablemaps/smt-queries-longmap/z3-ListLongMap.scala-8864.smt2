; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107610 () Bool)

(assert start!107610)

(declare-fun b!1273418 () Bool)

(declare-fun b_free!27729 () Bool)

(declare-fun b_next!27729 () Bool)

(assert (=> b!1273418 (= b_free!27729 (not b_next!27729))))

(declare-fun tp!97738 () Bool)

(declare-fun b_and!45795 () Bool)

(assert (=> b!1273418 (= tp!97738 b_and!45795)))

(declare-fun mapIsEmpty!51274 () Bool)

(declare-fun mapRes!51274 () Bool)

(assert (=> mapIsEmpty!51274 mapRes!51274))

(declare-fun b!1273417 () Bool)

(declare-fun e!726592 () Bool)

(declare-fun tp_is_empty!33099 () Bool)

(assert (=> b!1273417 (= e!726592 tp_is_empty!33099)))

(declare-fun mapNonEmpty!51274 () Bool)

(declare-fun tp!97739 () Bool)

(declare-fun e!726593 () Bool)

(assert (=> mapNonEmpty!51274 (= mapRes!51274 (and tp!97739 e!726593))))

(declare-datatypes ((V!49325 0))(
  ( (V!49326 (val!16624 Int)) )
))
(declare-datatypes ((ValueCell!15696 0))(
  ( (ValueCellFull!15696 (v!19259 V!49325)) (EmptyCell!15696) )
))
(declare-fun mapRest!51274 () (Array (_ BitVec 32) ValueCell!15696))

(declare-fun mapValue!51274 () ValueCell!15696)

(declare-fun mapKey!51274 () (_ BitVec 32))

(declare-datatypes ((array!83415 0))(
  ( (array!83416 (arr!40227 (Array (_ BitVec 32) ValueCell!15696)) (size!40771 (_ BitVec 32))) )
))
(declare-datatypes ((array!83417 0))(
  ( (array!83418 (arr!40228 (Array (_ BitVec 32) (_ BitVec 64))) (size!40772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6156 0))(
  ( (LongMapFixedSize!6157 (defaultEntry!6724 Int) (mask!34503 (_ BitVec 32)) (extraKeys!6403 (_ BitVec 32)) (zeroValue!6509 V!49325) (minValue!6509 V!49325) (_size!3133 (_ BitVec 32)) (_keys!12135 array!83417) (_values!6747 array!83415) (_vacant!3133 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6156)

(assert (=> mapNonEmpty!51274 (= (arr!40227 (_values!6747 thiss!1551)) (store mapRest!51274 mapKey!51274 mapValue!51274))))

(declare-fun e!726589 () Bool)

(declare-fun e!726590 () Bool)

(declare-fun array_inv!30535 (array!83417) Bool)

(declare-fun array_inv!30536 (array!83415) Bool)

(assert (=> b!1273418 (= e!726590 (and tp!97738 tp_is_empty!33099 (array_inv!30535 (_keys!12135 thiss!1551)) (array_inv!30536 (_values!6747 thiss!1551)) e!726589))))

(declare-fun b!1273419 () Bool)

(declare-fun res!846893 () Bool)

(declare-fun e!726591 () Bool)

(assert (=> b!1273419 (=> (not res!846893) (not e!726591))))

(declare-fun arrayCountValidKeys!0 (array!83417 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273419 (= res!846893 (= (arrayCountValidKeys!0 (_keys!12135 thiss!1551) #b00000000000000000000000000000000 (size!40772 (_keys!12135 thiss!1551))) (_size!3133 thiss!1551)))))

(declare-fun b!1273420 () Bool)

(assert (=> b!1273420 (= e!726589 (and e!726592 mapRes!51274))))

(declare-fun condMapEmpty!51274 () Bool)

(declare-fun mapDefault!51274 () ValueCell!15696)

(assert (=> b!1273420 (= condMapEmpty!51274 (= (arr!40227 (_values!6747 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15696)) mapDefault!51274)))))

(declare-fun b!1273421 () Bool)

(assert (=> b!1273421 (= e!726593 tp_is_empty!33099)))

(declare-fun b!1273416 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273416 (= e!726591 (not (validMask!0 (mask!34503 thiss!1551))))))

(declare-fun res!846894 () Bool)

(assert (=> start!107610 (=> (not res!846894) (not e!726591))))

(declare-fun simpleValid!467 (LongMapFixedSize!6156) Bool)

(assert (=> start!107610 (= res!846894 (simpleValid!467 thiss!1551))))

(assert (=> start!107610 e!726591))

(assert (=> start!107610 e!726590))

(assert (= (and start!107610 res!846894) b!1273419))

(assert (= (and b!1273419 res!846893) b!1273416))

(assert (= (and b!1273420 condMapEmpty!51274) mapIsEmpty!51274))

(assert (= (and b!1273420 (not condMapEmpty!51274)) mapNonEmpty!51274))

(get-info :version)

(assert (= (and mapNonEmpty!51274 ((_ is ValueCellFull!15696) mapValue!51274)) b!1273421))

(assert (= (and b!1273420 ((_ is ValueCellFull!15696) mapDefault!51274)) b!1273417))

(assert (= b!1273418 b!1273420))

(assert (= start!107610 b!1273418))

(declare-fun m!1170613 () Bool)

(assert (=> start!107610 m!1170613))

(declare-fun m!1170615 () Bool)

(assert (=> b!1273416 m!1170615))

(declare-fun m!1170617 () Bool)

(assert (=> b!1273418 m!1170617))

(declare-fun m!1170619 () Bool)

(assert (=> b!1273418 m!1170619))

(declare-fun m!1170621 () Bool)

(assert (=> b!1273419 m!1170621))

(declare-fun m!1170623 () Bool)

(assert (=> mapNonEmpty!51274 m!1170623))

(check-sat tp_is_empty!33099 (not mapNonEmpty!51274) (not b!1273418) (not start!107610) (not b!1273419) b_and!45795 (not b_next!27729) (not b!1273416))
(check-sat b_and!45795 (not b_next!27729))
(get-model)

(declare-fun d!139923 () Bool)

(assert (=> d!139923 (= (validMask!0 (mask!34503 thiss!1551)) (and (or (= (mask!34503 thiss!1551) #b00000000000000000000000000000111) (= (mask!34503 thiss!1551) #b00000000000000000000000000001111) (= (mask!34503 thiss!1551) #b00000000000000000000000000011111) (= (mask!34503 thiss!1551) #b00000000000000000000000000111111) (= (mask!34503 thiss!1551) #b00000000000000000000000001111111) (= (mask!34503 thiss!1551) #b00000000000000000000000011111111) (= (mask!34503 thiss!1551) #b00000000000000000000000111111111) (= (mask!34503 thiss!1551) #b00000000000000000000001111111111) (= (mask!34503 thiss!1551) #b00000000000000000000011111111111) (= (mask!34503 thiss!1551) #b00000000000000000000111111111111) (= (mask!34503 thiss!1551) #b00000000000000000001111111111111) (= (mask!34503 thiss!1551) #b00000000000000000011111111111111) (= (mask!34503 thiss!1551) #b00000000000000000111111111111111) (= (mask!34503 thiss!1551) #b00000000000000001111111111111111) (= (mask!34503 thiss!1551) #b00000000000000011111111111111111) (= (mask!34503 thiss!1551) #b00000000000000111111111111111111) (= (mask!34503 thiss!1551) #b00000000000001111111111111111111) (= (mask!34503 thiss!1551) #b00000000000011111111111111111111) (= (mask!34503 thiss!1551) #b00000000000111111111111111111111) (= (mask!34503 thiss!1551) #b00000000001111111111111111111111) (= (mask!34503 thiss!1551) #b00000000011111111111111111111111) (= (mask!34503 thiss!1551) #b00000000111111111111111111111111) (= (mask!34503 thiss!1551) #b00000001111111111111111111111111) (= (mask!34503 thiss!1551) #b00000011111111111111111111111111) (= (mask!34503 thiss!1551) #b00000111111111111111111111111111) (= (mask!34503 thiss!1551) #b00001111111111111111111111111111) (= (mask!34503 thiss!1551) #b00011111111111111111111111111111) (= (mask!34503 thiss!1551) #b00111111111111111111111111111111)) (bvsle (mask!34503 thiss!1551) #b00111111111111111111111111111111)))))

(assert (=> b!1273416 d!139923))

(declare-fun d!139925 () Bool)

(assert (=> d!139925 (= (array_inv!30535 (_keys!12135 thiss!1551)) (bvsge (size!40772 (_keys!12135 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273418 d!139925))

(declare-fun d!139927 () Bool)

(assert (=> d!139927 (= (array_inv!30536 (_values!6747 thiss!1551)) (bvsge (size!40771 (_values!6747 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273418 d!139927))

(declare-fun b!1273448 () Bool)

(declare-fun e!726617 () (_ BitVec 32))

(assert (=> b!1273448 (= e!726617 #b00000000000000000000000000000000)))

(declare-fun b!1273449 () Bool)

(declare-fun e!726618 () (_ BitVec 32))

(declare-fun call!62596 () (_ BitVec 32))

(assert (=> b!1273449 (= e!726618 (bvadd #b00000000000000000000000000000001 call!62596))))

(declare-fun d!139929 () Bool)

(declare-fun lt!575070 () (_ BitVec 32))

(assert (=> d!139929 (and (bvsge lt!575070 #b00000000000000000000000000000000) (bvsle lt!575070 (bvsub (size!40772 (_keys!12135 thiss!1551)) #b00000000000000000000000000000000)))))

(assert (=> d!139929 (= lt!575070 e!726617)))

(declare-fun c!123707 () Bool)

(assert (=> d!139929 (= c!123707 (bvsge #b00000000000000000000000000000000 (size!40772 (_keys!12135 thiss!1551))))))

(assert (=> d!139929 (and (bvsle #b00000000000000000000000000000000 (size!40772 (_keys!12135 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40772 (_keys!12135 thiss!1551)) (size!40772 (_keys!12135 thiss!1551))))))

(assert (=> d!139929 (= (arrayCountValidKeys!0 (_keys!12135 thiss!1551) #b00000000000000000000000000000000 (size!40772 (_keys!12135 thiss!1551))) lt!575070)))

(declare-fun b!1273450 () Bool)

(assert (=> b!1273450 (= e!726618 call!62596)))

(declare-fun bm!62593 () Bool)

(assert (=> bm!62593 (= call!62596 (arrayCountValidKeys!0 (_keys!12135 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40772 (_keys!12135 thiss!1551))))))

(declare-fun b!1273451 () Bool)

(assert (=> b!1273451 (= e!726617 e!726618)))

(declare-fun c!123708 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273451 (= c!123708 (validKeyInArray!0 (select (arr!40228 (_keys!12135 thiss!1551)) #b00000000000000000000000000000000)))))

(assert (= (and d!139929 c!123707) b!1273448))

(assert (= (and d!139929 (not c!123707)) b!1273451))

(assert (= (and b!1273451 c!123708) b!1273449))

(assert (= (and b!1273451 (not c!123708)) b!1273450))

(assert (= (or b!1273449 b!1273450) bm!62593))

(declare-fun m!1170637 () Bool)

(assert (=> bm!62593 m!1170637))

(declare-fun m!1170639 () Bool)

(assert (=> b!1273451 m!1170639))

(assert (=> b!1273451 m!1170639))

(declare-fun m!1170641 () Bool)

(assert (=> b!1273451 m!1170641))

(assert (=> b!1273419 d!139929))

(declare-fun b!1273461 () Bool)

(declare-fun res!846912 () Bool)

(declare-fun e!726621 () Bool)

(assert (=> b!1273461 (=> (not res!846912) (not e!726621))))

(declare-fun size!40775 (LongMapFixedSize!6156) (_ BitVec 32))

(assert (=> b!1273461 (= res!846912 (bvsge (size!40775 thiss!1551) (_size!3133 thiss!1551)))))

(declare-fun b!1273463 () Bool)

(assert (=> b!1273463 (= e!726621 (and (bvsge (extraKeys!6403 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6403 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3133 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273460 () Bool)

(declare-fun res!846910 () Bool)

(assert (=> b!1273460 (=> (not res!846910) (not e!726621))))

(assert (=> b!1273460 (= res!846910 (and (= (size!40771 (_values!6747 thiss!1551)) (bvadd (mask!34503 thiss!1551) #b00000000000000000000000000000001)) (= (size!40772 (_keys!12135 thiss!1551)) (size!40771 (_values!6747 thiss!1551))) (bvsge (_size!3133 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3133 thiss!1551) (bvadd (mask!34503 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun d!139931 () Bool)

(declare-fun res!846909 () Bool)

(assert (=> d!139931 (=> (not res!846909) (not e!726621))))

(assert (=> d!139931 (= res!846909 (validMask!0 (mask!34503 thiss!1551)))))

(assert (=> d!139931 (= (simpleValid!467 thiss!1551) e!726621)))

(declare-fun b!1273462 () Bool)

(declare-fun res!846911 () Bool)

(assert (=> b!1273462 (=> (not res!846911) (not e!726621))))

(assert (=> b!1273462 (= res!846911 (= (size!40775 thiss!1551) (bvadd (_size!3133 thiss!1551) (bvsdiv (bvadd (extraKeys!6403 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!139931 res!846909) b!1273460))

(assert (= (and b!1273460 res!846910) b!1273461))

(assert (= (and b!1273461 res!846912) b!1273462))

(assert (= (and b!1273462 res!846911) b!1273463))

(declare-fun m!1170643 () Bool)

(assert (=> b!1273461 m!1170643))

(assert (=> d!139931 m!1170615))

(assert (=> b!1273462 m!1170643))

(assert (=> start!107610 d!139931))

(declare-fun mapIsEmpty!51280 () Bool)

(declare-fun mapRes!51280 () Bool)

(assert (=> mapIsEmpty!51280 mapRes!51280))

(declare-fun mapNonEmpty!51280 () Bool)

(declare-fun tp!97748 () Bool)

(declare-fun e!726626 () Bool)

(assert (=> mapNonEmpty!51280 (= mapRes!51280 (and tp!97748 e!726626))))

(declare-fun mapValue!51280 () ValueCell!15696)

(declare-fun mapKey!51280 () (_ BitVec 32))

(declare-fun mapRest!51280 () (Array (_ BitVec 32) ValueCell!15696))

(assert (=> mapNonEmpty!51280 (= mapRest!51274 (store mapRest!51280 mapKey!51280 mapValue!51280))))

(declare-fun b!1273471 () Bool)

(declare-fun e!726627 () Bool)

(assert (=> b!1273471 (= e!726627 tp_is_empty!33099)))

(declare-fun condMapEmpty!51280 () Bool)

(declare-fun mapDefault!51280 () ValueCell!15696)

(assert (=> mapNonEmpty!51274 (= condMapEmpty!51280 (= mapRest!51274 ((as const (Array (_ BitVec 32) ValueCell!15696)) mapDefault!51280)))))

(assert (=> mapNonEmpty!51274 (= tp!97739 (and e!726627 mapRes!51280))))

(declare-fun b!1273470 () Bool)

(assert (=> b!1273470 (= e!726626 tp_is_empty!33099)))

(assert (= (and mapNonEmpty!51274 condMapEmpty!51280) mapIsEmpty!51280))

(assert (= (and mapNonEmpty!51274 (not condMapEmpty!51280)) mapNonEmpty!51280))

(assert (= (and mapNonEmpty!51280 ((_ is ValueCellFull!15696) mapValue!51280)) b!1273470))

(assert (= (and mapNonEmpty!51274 ((_ is ValueCellFull!15696) mapDefault!51280)) b!1273471))

(declare-fun m!1170645 () Bool)

(assert (=> mapNonEmpty!51280 m!1170645))

(check-sat (not b_next!27729) (not bm!62593) (not d!139931) (not b!1273461) b_and!45795 tp_is_empty!33099 (not mapNonEmpty!51280) (not b!1273451) (not b!1273462))
(check-sat b_and!45795 (not b_next!27729))
