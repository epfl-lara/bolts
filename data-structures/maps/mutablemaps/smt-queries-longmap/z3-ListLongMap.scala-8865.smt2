; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107626 () Bool)

(assert start!107626)

(declare-fun b!1273510 () Bool)

(declare-fun b_free!27735 () Bool)

(declare-fun b_next!27735 () Bool)

(assert (=> b!1273510 (= b_free!27735 (not b_next!27735))))

(declare-fun tp!97760 () Bool)

(declare-fun b_and!45801 () Bool)

(assert (=> b!1273510 (= tp!97760 b_and!45801)))

(declare-fun b!1273507 () Bool)

(declare-fun res!846928 () Bool)

(declare-fun e!726658 () Bool)

(assert (=> b!1273507 (=> (not res!846928) (not e!726658))))

(declare-datatypes ((V!49333 0))(
  ( (V!49334 (val!16627 Int)) )
))
(declare-datatypes ((ValueCell!15699 0))(
  ( (ValueCellFull!15699 (v!19262 V!49333)) (EmptyCell!15699) )
))
(declare-datatypes ((array!83429 0))(
  ( (array!83430 (arr!40233 (Array (_ BitVec 32) ValueCell!15699)) (size!40778 (_ BitVec 32))) )
))
(declare-datatypes ((array!83431 0))(
  ( (array!83432 (arr!40234 (Array (_ BitVec 32) (_ BitVec 64))) (size!40779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6162 0))(
  ( (LongMapFixedSize!6163 (defaultEntry!6727 Int) (mask!34509 (_ BitVec 32)) (extraKeys!6406 (_ BitVec 32)) (zeroValue!6512 V!49333) (minValue!6512 V!49333) (_size!3136 (_ BitVec 32)) (_keys!12138 array!83431) (_values!6750 array!83429) (_vacant!3136 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6162)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273507 (= res!846928 (validMask!0 (mask!34509 thiss!1551)))))

(declare-fun b!1273508 () Bool)

(declare-fun e!726662 () Bool)

(declare-fun tp_is_empty!33105 () Bool)

(assert (=> b!1273508 (= e!726662 tp_is_empty!33105)))

(declare-fun res!846930 () Bool)

(assert (=> start!107626 (=> (not res!846930) (not e!726658))))

(declare-fun simpleValid!470 (LongMapFixedSize!6162) Bool)

(assert (=> start!107626 (= res!846930 (simpleValid!470 thiss!1551))))

(assert (=> start!107626 e!726658))

(declare-fun e!726663 () Bool)

(assert (=> start!107626 e!726663))

(declare-fun b!1273509 () Bool)

(declare-fun e!726659 () Bool)

(assert (=> b!1273509 (= e!726659 tp_is_empty!33105)))

(declare-fun e!726660 () Bool)

(declare-fun array_inv!30539 (array!83431) Bool)

(declare-fun array_inv!30540 (array!83429) Bool)

(assert (=> b!1273510 (= e!726663 (and tp!97760 tp_is_empty!33105 (array_inv!30539 (_keys!12138 thiss!1551)) (array_inv!30540 (_values!6750 thiss!1551)) e!726660))))

(declare-fun b!1273511 () Bool)

(declare-fun mapRes!51286 () Bool)

(assert (=> b!1273511 (= e!726660 (and e!726659 mapRes!51286))))

(declare-fun condMapEmpty!51286 () Bool)

(declare-fun mapDefault!51286 () ValueCell!15699)

(assert (=> b!1273511 (= condMapEmpty!51286 (= (arr!40233 (_values!6750 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15699)) mapDefault!51286)))))

(declare-fun mapNonEmpty!51286 () Bool)

(declare-fun tp!97759 () Bool)

(assert (=> mapNonEmpty!51286 (= mapRes!51286 (and tp!97759 e!726662))))

(declare-fun mapValue!51286 () ValueCell!15699)

(declare-fun mapRest!51286 () (Array (_ BitVec 32) ValueCell!15699))

(declare-fun mapKey!51286 () (_ BitVec 32))

(assert (=> mapNonEmpty!51286 (= (arr!40233 (_values!6750 thiss!1551)) (store mapRest!51286 mapKey!51286 mapValue!51286))))

(declare-fun b!1273512 () Bool)

(assert (=> b!1273512 (= e!726658 (not (= (size!40779 (_keys!12138 thiss!1551)) (bvadd #b00000000000000000000000000000001 (mask!34509 thiss!1551)))))))

(declare-fun b!1273513 () Bool)

(declare-fun res!846929 () Bool)

(assert (=> b!1273513 (=> (not res!846929) (not e!726658))))

(declare-fun arrayCountValidKeys!0 (array!83431 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273513 (= res!846929 (= (arrayCountValidKeys!0 (_keys!12138 thiss!1551) #b00000000000000000000000000000000 (size!40779 (_keys!12138 thiss!1551))) (_size!3136 thiss!1551)))))

(declare-fun mapIsEmpty!51286 () Bool)

(assert (=> mapIsEmpty!51286 mapRes!51286))

(assert (= (and start!107626 res!846930) b!1273513))

(assert (= (and b!1273513 res!846929) b!1273507))

(assert (= (and b!1273507 res!846928) b!1273512))

(assert (= (and b!1273511 condMapEmpty!51286) mapIsEmpty!51286))

(assert (= (and b!1273511 (not condMapEmpty!51286)) mapNonEmpty!51286))

(get-info :version)

(assert (= (and mapNonEmpty!51286 ((_ is ValueCellFull!15699) mapValue!51286)) b!1273508))

(assert (= (and b!1273511 ((_ is ValueCellFull!15699) mapDefault!51286)) b!1273509))

(assert (= b!1273510 b!1273511))

(assert (= start!107626 b!1273510))

(declare-fun m!1170659 () Bool)

(assert (=> start!107626 m!1170659))

(declare-fun m!1170661 () Bool)

(assert (=> b!1273510 m!1170661))

(declare-fun m!1170663 () Bool)

(assert (=> b!1273510 m!1170663))

(declare-fun m!1170665 () Bool)

(assert (=> mapNonEmpty!51286 m!1170665))

(declare-fun m!1170667 () Bool)

(assert (=> b!1273507 m!1170667))

(declare-fun m!1170669 () Bool)

(assert (=> b!1273513 m!1170669))

(check-sat (not b!1273510) b_and!45801 (not mapNonEmpty!51286) (not b_next!27735) (not b!1273507) tp_is_empty!33105 (not b!1273513) (not start!107626))
(check-sat b_and!45801 (not b_next!27735))
(get-model)

(declare-fun d!139935 () Bool)

(assert (=> d!139935 (= (validMask!0 (mask!34509 thiss!1551)) (and (or (= (mask!34509 thiss!1551) #b00000000000000000000000000000111) (= (mask!34509 thiss!1551) #b00000000000000000000000000001111) (= (mask!34509 thiss!1551) #b00000000000000000000000000011111) (= (mask!34509 thiss!1551) #b00000000000000000000000000111111) (= (mask!34509 thiss!1551) #b00000000000000000000000001111111) (= (mask!34509 thiss!1551) #b00000000000000000000000011111111) (= (mask!34509 thiss!1551) #b00000000000000000000000111111111) (= (mask!34509 thiss!1551) #b00000000000000000000001111111111) (= (mask!34509 thiss!1551) #b00000000000000000000011111111111) (= (mask!34509 thiss!1551) #b00000000000000000000111111111111) (= (mask!34509 thiss!1551) #b00000000000000000001111111111111) (= (mask!34509 thiss!1551) #b00000000000000000011111111111111) (= (mask!34509 thiss!1551) #b00000000000000000111111111111111) (= (mask!34509 thiss!1551) #b00000000000000001111111111111111) (= (mask!34509 thiss!1551) #b00000000000000011111111111111111) (= (mask!34509 thiss!1551) #b00000000000000111111111111111111) (= (mask!34509 thiss!1551) #b00000000000001111111111111111111) (= (mask!34509 thiss!1551) #b00000000000011111111111111111111) (= (mask!34509 thiss!1551) #b00000000000111111111111111111111) (= (mask!34509 thiss!1551) #b00000000001111111111111111111111) (= (mask!34509 thiss!1551) #b00000000011111111111111111111111) (= (mask!34509 thiss!1551) #b00000000111111111111111111111111) (= (mask!34509 thiss!1551) #b00000001111111111111111111111111) (= (mask!34509 thiss!1551) #b00000011111111111111111111111111) (= (mask!34509 thiss!1551) #b00000111111111111111111111111111) (= (mask!34509 thiss!1551) #b00001111111111111111111111111111) (= (mask!34509 thiss!1551) #b00011111111111111111111111111111) (= (mask!34509 thiss!1551) #b00111111111111111111111111111111)) (bvsle (mask!34509 thiss!1551) #b00111111111111111111111111111111)))))

(assert (=> b!1273507 d!139935))

(declare-fun b!1273543 () Bool)

(declare-fun e!726686 () (_ BitVec 32))

(declare-fun call!62599 () (_ BitVec 32))

(assert (=> b!1273543 (= e!726686 (bvadd #b00000000000000000000000000000001 call!62599))))

(declare-fun b!1273544 () Bool)

(assert (=> b!1273544 (= e!726686 call!62599)))

(declare-fun bm!62596 () Bool)

(assert (=> bm!62596 (= call!62599 (arrayCountValidKeys!0 (_keys!12138 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40779 (_keys!12138 thiss!1551))))))

(declare-fun d!139937 () Bool)

(declare-fun lt!575073 () (_ BitVec 32))

(assert (=> d!139937 (and (bvsge lt!575073 #b00000000000000000000000000000000) (bvsle lt!575073 (bvsub (size!40779 (_keys!12138 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun e!726687 () (_ BitVec 32))

(assert (=> d!139937 (= lt!575073 e!726687)))

(declare-fun c!123713 () Bool)

(assert (=> d!139937 (= c!123713 (bvsge #b00000000000000000000000000000000 (size!40779 (_keys!12138 thiss!1551))))))

(assert (=> d!139937 (and (bvsle #b00000000000000000000000000000000 (size!40779 (_keys!12138 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40779 (_keys!12138 thiss!1551)) (size!40779 (_keys!12138 thiss!1551))))))

(assert (=> d!139937 (= (arrayCountValidKeys!0 (_keys!12138 thiss!1551) #b00000000000000000000000000000000 (size!40779 (_keys!12138 thiss!1551))) lt!575073)))

(declare-fun b!1273545 () Bool)

(assert (=> b!1273545 (= e!726687 e!726686)))

(declare-fun c!123714 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273545 (= c!123714 (validKeyInArray!0 (select (arr!40234 (_keys!12138 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun b!1273546 () Bool)

(assert (=> b!1273546 (= e!726687 #b00000000000000000000000000000000)))

(assert (= (and d!139937 c!123713) b!1273546))

(assert (= (and d!139937 (not c!123713)) b!1273545))

(assert (= (and b!1273545 c!123714) b!1273543))

(assert (= (and b!1273545 (not c!123714)) b!1273544))

(assert (= (or b!1273543 b!1273544) bm!62596))

(declare-fun m!1170683 () Bool)

(assert (=> bm!62596 m!1170683))

(declare-fun m!1170685 () Bool)

(assert (=> b!1273545 m!1170685))

(assert (=> b!1273545 m!1170685))

(declare-fun m!1170687 () Bool)

(assert (=> b!1273545 m!1170687))

(assert (=> b!1273513 d!139937))

(declare-fun d!139939 () Bool)

(assert (=> d!139939 (= (array_inv!30539 (_keys!12138 thiss!1551)) (bvsge (size!40779 (_keys!12138 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273510 d!139939))

(declare-fun d!139941 () Bool)

(assert (=> d!139941 (= (array_inv!30540 (_values!6750 thiss!1551)) (bvsge (size!40778 (_values!6750 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273510 d!139941))

(declare-fun b!1273557 () Bool)

(declare-fun res!846951 () Bool)

(declare-fun e!726690 () Bool)

(assert (=> b!1273557 (=> (not res!846951) (not e!726690))))

(declare-fun size!40782 (LongMapFixedSize!6162) (_ BitVec 32))

(assert (=> b!1273557 (= res!846951 (= (size!40782 thiss!1551) (bvadd (_size!3136 thiss!1551) (bvsdiv (bvadd (extraKeys!6406 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1273555 () Bool)

(declare-fun res!846948 () Bool)

(assert (=> b!1273555 (=> (not res!846948) (not e!726690))))

(assert (=> b!1273555 (= res!846948 (and (= (size!40778 (_values!6750 thiss!1551)) (bvadd (mask!34509 thiss!1551) #b00000000000000000000000000000001)) (= (size!40779 (_keys!12138 thiss!1551)) (size!40778 (_values!6750 thiss!1551))) (bvsge (_size!3136 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3136 thiss!1551) (bvadd (mask!34509 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun d!139943 () Bool)

(declare-fun res!846950 () Bool)

(assert (=> d!139943 (=> (not res!846950) (not e!726690))))

(assert (=> d!139943 (= res!846950 (validMask!0 (mask!34509 thiss!1551)))))

(assert (=> d!139943 (= (simpleValid!470 thiss!1551) e!726690)))

(declare-fun b!1273558 () Bool)

(assert (=> b!1273558 (= e!726690 (and (bvsge (extraKeys!6406 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6406 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3136 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273556 () Bool)

(declare-fun res!846949 () Bool)

(assert (=> b!1273556 (=> (not res!846949) (not e!726690))))

(assert (=> b!1273556 (= res!846949 (bvsge (size!40782 thiss!1551) (_size!3136 thiss!1551)))))

(assert (= (and d!139943 res!846950) b!1273555))

(assert (= (and b!1273555 res!846948) b!1273556))

(assert (= (and b!1273556 res!846949) b!1273557))

(assert (= (and b!1273557 res!846951) b!1273558))

(declare-fun m!1170689 () Bool)

(assert (=> b!1273557 m!1170689))

(assert (=> d!139943 m!1170667))

(assert (=> b!1273556 m!1170689))

(assert (=> start!107626 d!139943))

(declare-fun mapNonEmpty!51292 () Bool)

(declare-fun mapRes!51292 () Bool)

(declare-fun tp!97769 () Bool)

(declare-fun e!726696 () Bool)

(assert (=> mapNonEmpty!51292 (= mapRes!51292 (and tp!97769 e!726696))))

(declare-fun mapKey!51292 () (_ BitVec 32))

(declare-fun mapRest!51292 () (Array (_ BitVec 32) ValueCell!15699))

(declare-fun mapValue!51292 () ValueCell!15699)

(assert (=> mapNonEmpty!51292 (= mapRest!51286 (store mapRest!51292 mapKey!51292 mapValue!51292))))

(declare-fun b!1273566 () Bool)

(declare-fun e!726695 () Bool)

(assert (=> b!1273566 (= e!726695 tp_is_empty!33105)))

(declare-fun mapIsEmpty!51292 () Bool)

(assert (=> mapIsEmpty!51292 mapRes!51292))

(declare-fun b!1273565 () Bool)

(assert (=> b!1273565 (= e!726696 tp_is_empty!33105)))

(declare-fun condMapEmpty!51292 () Bool)

(declare-fun mapDefault!51292 () ValueCell!15699)

(assert (=> mapNonEmpty!51286 (= condMapEmpty!51292 (= mapRest!51286 ((as const (Array (_ BitVec 32) ValueCell!15699)) mapDefault!51292)))))

(assert (=> mapNonEmpty!51286 (= tp!97759 (and e!726695 mapRes!51292))))

(assert (= (and mapNonEmpty!51286 condMapEmpty!51292) mapIsEmpty!51292))

(assert (= (and mapNonEmpty!51286 (not condMapEmpty!51292)) mapNonEmpty!51292))

(assert (= (and mapNonEmpty!51292 ((_ is ValueCellFull!15699) mapValue!51292)) b!1273565))

(assert (= (and mapNonEmpty!51286 ((_ is ValueCellFull!15699) mapDefault!51292)) b!1273566))

(declare-fun m!1170691 () Bool)

(assert (=> mapNonEmpty!51292 m!1170691))

(check-sat (not d!139943) b_and!45801 (not bm!62596) (not mapNonEmpty!51292) tp_is_empty!33105 (not b!1273557) (not b!1273556) (not b!1273545) (not b_next!27735))
(check-sat b_and!45801 (not b_next!27735))
