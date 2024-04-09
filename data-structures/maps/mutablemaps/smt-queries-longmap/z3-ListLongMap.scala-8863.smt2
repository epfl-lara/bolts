; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107594 () Bool)

(assert start!107594)

(declare-fun b!1273348 () Bool)

(declare-fun b_free!27723 () Bool)

(declare-fun b_next!27723 () Bool)

(assert (=> b!1273348 (= b_free!27723 (not b_next!27723))))

(declare-fun tp!97716 () Bool)

(declare-fun b_and!45789 () Bool)

(assert (=> b!1273348 (= tp!97716 b_and!45789)))

(declare-fun b!1273344 () Bool)

(declare-fun e!726527 () Bool)

(declare-datatypes ((V!49317 0))(
  ( (V!49318 (val!16621 Int)) )
))
(declare-datatypes ((ValueCell!15693 0))(
  ( (ValueCellFull!15693 (v!19256 V!49317)) (EmptyCell!15693) )
))
(declare-datatypes ((array!83401 0))(
  ( (array!83402 (arr!40221 (Array (_ BitVec 32) ValueCell!15693)) (size!40764 (_ BitVec 32))) )
))
(declare-datatypes ((array!83403 0))(
  ( (array!83404 (arr!40222 (Array (_ BitVec 32) (_ BitVec 64))) (size!40765 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6150 0))(
  ( (LongMapFixedSize!6151 (defaultEntry!6721 Int) (mask!34497 (_ BitVec 32)) (extraKeys!6400 (_ BitVec 32)) (zeroValue!6506 V!49317) (minValue!6506 V!49317) (_size!3130 (_ BitVec 32)) (_keys!12132 array!83403) (_values!6744 array!83401) (_vacant!3130 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6150)

(assert (=> b!1273344 (= e!726527 (and (bvsle #b00000000000000000000000000000000 (size!40765 (_keys!12132 thiss!1551))) (bvsge (size!40765 (_keys!12132 thiss!1551)) #b01111111111111111111111111111111)))))

(declare-fun b!1273345 () Bool)

(declare-fun e!726524 () Bool)

(declare-fun tp_is_empty!33093 () Bool)

(assert (=> b!1273345 (= e!726524 tp_is_empty!33093)))

(declare-fun b!1273346 () Bool)

(declare-fun e!726525 () Bool)

(assert (=> b!1273346 (= e!726525 tp_is_empty!33093)))

(declare-fun b!1273347 () Bool)

(declare-fun e!726528 () Bool)

(declare-fun mapRes!51261 () Bool)

(assert (=> b!1273347 (= e!726528 (and e!726525 mapRes!51261))))

(declare-fun condMapEmpty!51261 () Bool)

(declare-fun mapDefault!51261 () ValueCell!15693)

(assert (=> b!1273347 (= condMapEmpty!51261 (= (arr!40221 (_values!6744 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15693)) mapDefault!51261)))))

(declare-fun res!846867 () Bool)

(assert (=> start!107594 (=> (not res!846867) (not e!726527))))

(declare-fun simpleValid!465 (LongMapFixedSize!6150) Bool)

(assert (=> start!107594 (= res!846867 (simpleValid!465 thiss!1551))))

(assert (=> start!107594 e!726527))

(declare-fun e!726526 () Bool)

(assert (=> start!107594 e!726526))

(declare-fun mapIsEmpty!51261 () Bool)

(assert (=> mapIsEmpty!51261 mapRes!51261))

(declare-fun mapNonEmpty!51261 () Bool)

(declare-fun tp!97717 () Bool)

(assert (=> mapNonEmpty!51261 (= mapRes!51261 (and tp!97717 e!726524))))

(declare-fun mapValue!51261 () ValueCell!15693)

(declare-fun mapKey!51261 () (_ BitVec 32))

(declare-fun mapRest!51261 () (Array (_ BitVec 32) ValueCell!15693))

(assert (=> mapNonEmpty!51261 (= (arr!40221 (_values!6744 thiss!1551)) (store mapRest!51261 mapKey!51261 mapValue!51261))))

(declare-fun array_inv!30531 (array!83403) Bool)

(declare-fun array_inv!30532 (array!83401) Bool)

(assert (=> b!1273348 (= e!726526 (and tp!97716 tp_is_empty!33093 (array_inv!30531 (_keys!12132 thiss!1551)) (array_inv!30532 (_values!6744 thiss!1551)) e!726528))))

(assert (= (and start!107594 res!846867) b!1273344))

(assert (= (and b!1273347 condMapEmpty!51261) mapIsEmpty!51261))

(assert (= (and b!1273347 (not condMapEmpty!51261)) mapNonEmpty!51261))

(get-info :version)

(assert (= (and mapNonEmpty!51261 ((_ is ValueCellFull!15693) mapValue!51261)) b!1273345))

(assert (= (and b!1273347 ((_ is ValueCellFull!15693) mapDefault!51261)) b!1273346))

(assert (= b!1273348 b!1273347))

(assert (= start!107594 b!1273348))

(declare-fun m!1170577 () Bool)

(assert (=> start!107594 m!1170577))

(declare-fun m!1170579 () Bool)

(assert (=> mapNonEmpty!51261 m!1170579))

(declare-fun m!1170581 () Bool)

(assert (=> b!1273348 m!1170581))

(declare-fun m!1170583 () Bool)

(assert (=> b!1273348 m!1170583))

(check-sat (not b_next!27723) tp_is_empty!33093 b_and!45789 (not start!107594) (not b!1273348) (not mapNonEmpty!51261))
(check-sat b_and!45789 (not b_next!27723))
(get-model)

(declare-fun d!139911 () Bool)

(assert (=> d!139911 (= (array_inv!30531 (_keys!12132 thiss!1551)) (bvsge (size!40765 (_keys!12132 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273348 d!139911))

(declare-fun d!139913 () Bool)

(assert (=> d!139913 (= (array_inv!30532 (_values!6744 thiss!1551)) (bvsge (size!40764 (_values!6744 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273348 d!139913))

(declare-fun b!1273373 () Bool)

(declare-fun res!846882 () Bool)

(declare-fun e!726550 () Bool)

(assert (=> b!1273373 (=> (not res!846882) (not e!726550))))

(declare-fun size!40768 (LongMapFixedSize!6150) (_ BitVec 32))

(assert (=> b!1273373 (= res!846882 (bvsge (size!40768 thiss!1551) (_size!3130 thiss!1551)))))

(declare-fun b!1273374 () Bool)

(declare-fun res!846880 () Bool)

(assert (=> b!1273374 (=> (not res!846880) (not e!726550))))

(assert (=> b!1273374 (= res!846880 (= (size!40768 thiss!1551) (bvadd (_size!3130 thiss!1551) (bvsdiv (bvadd (extraKeys!6400 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!139915 () Bool)

(declare-fun res!846881 () Bool)

(assert (=> d!139915 (=> (not res!846881) (not e!726550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!139915 (= res!846881 (validMask!0 (mask!34497 thiss!1551)))))

(assert (=> d!139915 (= (simpleValid!465 thiss!1551) e!726550)))

(declare-fun b!1273375 () Bool)

(assert (=> b!1273375 (= e!726550 (and (bvsge (extraKeys!6400 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6400 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3130 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273372 () Bool)

(declare-fun res!846879 () Bool)

(assert (=> b!1273372 (=> (not res!846879) (not e!726550))))

(assert (=> b!1273372 (= res!846879 (and (= (size!40764 (_values!6744 thiss!1551)) (bvadd (mask!34497 thiss!1551) #b00000000000000000000000000000001)) (= (size!40765 (_keys!12132 thiss!1551)) (size!40764 (_values!6744 thiss!1551))) (bvsge (_size!3130 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3130 thiss!1551) (bvadd (mask!34497 thiss!1551) #b00000000000000000000000000000001))))))

(assert (= (and d!139915 res!846881) b!1273372))

(assert (= (and b!1273372 res!846879) b!1273373))

(assert (= (and b!1273373 res!846882) b!1273374))

(assert (= (and b!1273374 res!846880) b!1273375))

(declare-fun m!1170593 () Bool)

(assert (=> b!1273373 m!1170593))

(assert (=> b!1273374 m!1170593))

(declare-fun m!1170595 () Bool)

(assert (=> d!139915 m!1170595))

(assert (=> start!107594 d!139915))

(declare-fun mapNonEmpty!51267 () Bool)

(declare-fun mapRes!51267 () Bool)

(declare-fun tp!97726 () Bool)

(declare-fun e!726556 () Bool)

(assert (=> mapNonEmpty!51267 (= mapRes!51267 (and tp!97726 e!726556))))

(declare-fun mapKey!51267 () (_ BitVec 32))

(declare-fun mapRest!51267 () (Array (_ BitVec 32) ValueCell!15693))

(declare-fun mapValue!51267 () ValueCell!15693)

(assert (=> mapNonEmpty!51267 (= mapRest!51261 (store mapRest!51267 mapKey!51267 mapValue!51267))))

(declare-fun b!1273383 () Bool)

(declare-fun e!726555 () Bool)

(assert (=> b!1273383 (= e!726555 tp_is_empty!33093)))

(declare-fun mapIsEmpty!51267 () Bool)

(assert (=> mapIsEmpty!51267 mapRes!51267))

(declare-fun condMapEmpty!51267 () Bool)

(declare-fun mapDefault!51267 () ValueCell!15693)

(assert (=> mapNonEmpty!51261 (= condMapEmpty!51267 (= mapRest!51261 ((as const (Array (_ BitVec 32) ValueCell!15693)) mapDefault!51267)))))

(assert (=> mapNonEmpty!51261 (= tp!97717 (and e!726555 mapRes!51267))))

(declare-fun b!1273382 () Bool)

(assert (=> b!1273382 (= e!726556 tp_is_empty!33093)))

(assert (= (and mapNonEmpty!51261 condMapEmpty!51267) mapIsEmpty!51267))

(assert (= (and mapNonEmpty!51261 (not condMapEmpty!51267)) mapNonEmpty!51267))

(assert (= (and mapNonEmpty!51267 ((_ is ValueCellFull!15693) mapValue!51267)) b!1273382))

(assert (= (and mapNonEmpty!51261 ((_ is ValueCellFull!15693) mapDefault!51267)) b!1273383))

(declare-fun m!1170597 () Bool)

(assert (=> mapNonEmpty!51267 m!1170597))

(check-sat (not b_next!27723) tp_is_empty!33093 (not mapNonEmpty!51267) b_and!45789 (not d!139915) (not b!1273374) (not b!1273373))
(check-sat b_and!45789 (not b_next!27723))
(get-model)

(declare-fun d!139917 () Bool)

(assert (=> d!139917 (= (size!40768 thiss!1551) (bvadd (_size!3130 thiss!1551) (bvsdiv (bvadd (extraKeys!6400 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!1273373 d!139917))

(assert (=> b!1273374 d!139917))

(declare-fun d!139919 () Bool)

(assert (=> d!139919 (= (validMask!0 (mask!34497 thiss!1551)) (and (or (= (mask!34497 thiss!1551) #b00000000000000000000000000000111) (= (mask!34497 thiss!1551) #b00000000000000000000000000001111) (= (mask!34497 thiss!1551) #b00000000000000000000000000011111) (= (mask!34497 thiss!1551) #b00000000000000000000000000111111) (= (mask!34497 thiss!1551) #b00000000000000000000000001111111) (= (mask!34497 thiss!1551) #b00000000000000000000000011111111) (= (mask!34497 thiss!1551) #b00000000000000000000000111111111) (= (mask!34497 thiss!1551) #b00000000000000000000001111111111) (= (mask!34497 thiss!1551) #b00000000000000000000011111111111) (= (mask!34497 thiss!1551) #b00000000000000000000111111111111) (= (mask!34497 thiss!1551) #b00000000000000000001111111111111) (= (mask!34497 thiss!1551) #b00000000000000000011111111111111) (= (mask!34497 thiss!1551) #b00000000000000000111111111111111) (= (mask!34497 thiss!1551) #b00000000000000001111111111111111) (= (mask!34497 thiss!1551) #b00000000000000011111111111111111) (= (mask!34497 thiss!1551) #b00000000000000111111111111111111) (= (mask!34497 thiss!1551) #b00000000000001111111111111111111) (= (mask!34497 thiss!1551) #b00000000000011111111111111111111) (= (mask!34497 thiss!1551) #b00000000000111111111111111111111) (= (mask!34497 thiss!1551) #b00000000001111111111111111111111) (= (mask!34497 thiss!1551) #b00000000011111111111111111111111) (= (mask!34497 thiss!1551) #b00000000111111111111111111111111) (= (mask!34497 thiss!1551) #b00000001111111111111111111111111) (= (mask!34497 thiss!1551) #b00000011111111111111111111111111) (= (mask!34497 thiss!1551) #b00000111111111111111111111111111) (= (mask!34497 thiss!1551) #b00001111111111111111111111111111) (= (mask!34497 thiss!1551) #b00011111111111111111111111111111) (= (mask!34497 thiss!1551) #b00111111111111111111111111111111)) (bvsle (mask!34497 thiss!1551) #b00111111111111111111111111111111)))))

(assert (=> d!139915 d!139919))

(declare-fun mapNonEmpty!51268 () Bool)

(declare-fun mapRes!51268 () Bool)

(declare-fun tp!97727 () Bool)

(declare-fun e!726558 () Bool)

(assert (=> mapNonEmpty!51268 (= mapRes!51268 (and tp!97727 e!726558))))

(declare-fun mapValue!51268 () ValueCell!15693)

(declare-fun mapKey!51268 () (_ BitVec 32))

(declare-fun mapRest!51268 () (Array (_ BitVec 32) ValueCell!15693))

(assert (=> mapNonEmpty!51268 (= mapRest!51267 (store mapRest!51268 mapKey!51268 mapValue!51268))))

(declare-fun b!1273385 () Bool)

(declare-fun e!726557 () Bool)

(assert (=> b!1273385 (= e!726557 tp_is_empty!33093)))

(declare-fun mapIsEmpty!51268 () Bool)

(assert (=> mapIsEmpty!51268 mapRes!51268))

(declare-fun condMapEmpty!51268 () Bool)

(declare-fun mapDefault!51268 () ValueCell!15693)

(assert (=> mapNonEmpty!51267 (= condMapEmpty!51268 (= mapRest!51267 ((as const (Array (_ BitVec 32) ValueCell!15693)) mapDefault!51268)))))

(assert (=> mapNonEmpty!51267 (= tp!97726 (and e!726557 mapRes!51268))))

(declare-fun b!1273384 () Bool)

(assert (=> b!1273384 (= e!726558 tp_is_empty!33093)))

(assert (= (and mapNonEmpty!51267 condMapEmpty!51268) mapIsEmpty!51268))

(assert (= (and mapNonEmpty!51267 (not condMapEmpty!51268)) mapNonEmpty!51268))

(assert (= (and mapNonEmpty!51268 ((_ is ValueCellFull!15693) mapValue!51268)) b!1273384))

(assert (= (and mapNonEmpty!51267 ((_ is ValueCellFull!15693) mapDefault!51268)) b!1273385))

(declare-fun m!1170599 () Bool)

(assert (=> mapNonEmpty!51268 m!1170599))

(check-sat (not mapNonEmpty!51268) tp_is_empty!33093 b_and!45789 (not b_next!27723))
(check-sat b_and!45789 (not b_next!27723))
