; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107648 () Bool)

(assert start!107648)

(declare-fun b!1273649 () Bool)

(declare-fun b_free!27747 () Bool)

(declare-fun b_next!27747 () Bool)

(assert (=> b!1273649 (= b_free!27747 (not b_next!27747))))

(declare-fun tp!97798 () Bool)

(declare-fun b_and!45813 () Bool)

(assert (=> b!1273649 (= tp!97798 b_and!45813)))

(declare-fun mapIsEmpty!51307 () Bool)

(declare-fun mapRes!51307 () Bool)

(assert (=> mapIsEmpty!51307 mapRes!51307))

(declare-fun b!1273647 () Bool)

(declare-fun e!726784 () Bool)

(declare-fun tp_is_empty!33117 () Bool)

(assert (=> b!1273647 (= e!726784 tp_is_empty!33117)))

(declare-fun b!1273648 () Bool)

(declare-fun e!726786 () Bool)

(declare-datatypes ((V!49349 0))(
  ( (V!49350 (val!16633 Int)) )
))
(declare-datatypes ((ValueCell!15705 0))(
  ( (ValueCellFull!15705 (v!19268 V!49349)) (EmptyCell!15705) )
))
(declare-datatypes ((array!83455 0))(
  ( (array!83456 (arr!40245 (Array (_ BitVec 32) ValueCell!15705)) (size!40791 (_ BitVec 32))) )
))
(declare-datatypes ((array!83457 0))(
  ( (array!83458 (arr!40246 (Array (_ BitVec 32) (_ BitVec 64))) (size!40792 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6174 0))(
  ( (LongMapFixedSize!6175 (defaultEntry!6733 Int) (mask!34520 (_ BitVec 32)) (extraKeys!6412 (_ BitVec 32)) (zeroValue!6518 V!49349) (minValue!6518 V!49349) (_size!3142 (_ BitVec 32)) (_keys!12144 array!83457) (_values!6756 array!83455) (_vacant!3142 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6174)

(assert (=> b!1273648 (= e!726786 (and (= (size!40792 (_keys!12144 thiss!1551)) (bvadd #b00000000000000000000000000000001 (mask!34520 thiss!1551))) (bvsgt #b00000000000000000000000000000000 (size!40792 (_keys!12144 thiss!1551)))))))

(declare-fun e!726782 () Bool)

(declare-fun e!726781 () Bool)

(declare-fun array_inv!30545 (array!83457) Bool)

(declare-fun array_inv!30546 (array!83455) Bool)

(assert (=> b!1273649 (= e!726781 (and tp!97798 tp_is_empty!33117 (array_inv!30545 (_keys!12144 thiss!1551)) (array_inv!30546 (_values!6756 thiss!1551)) e!726782))))

(declare-fun res!846978 () Bool)

(assert (=> start!107648 (=> (not res!846978) (not e!726786))))

(declare-fun simpleValid!472 (LongMapFixedSize!6174) Bool)

(assert (=> start!107648 (= res!846978 (simpleValid!472 thiss!1551))))

(assert (=> start!107648 e!726786))

(assert (=> start!107648 e!726781))

(declare-fun b!1273650 () Bool)

(declare-fun res!846977 () Bool)

(assert (=> b!1273650 (=> (not res!846977) (not e!726786))))

(declare-fun arrayCountValidKeys!0 (array!83457 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273650 (= res!846977 (= (arrayCountValidKeys!0 (_keys!12144 thiss!1551) #b00000000000000000000000000000000 (size!40792 (_keys!12144 thiss!1551))) (_size!3142 thiss!1551)))))

(declare-fun b!1273651 () Bool)

(declare-fun res!846976 () Bool)

(assert (=> b!1273651 (=> (not res!846976) (not e!726786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273651 (= res!846976 (validMask!0 (mask!34520 thiss!1551)))))

(declare-fun b!1273652 () Bool)

(declare-fun e!726783 () Bool)

(assert (=> b!1273652 (= e!726783 tp_is_empty!33117)))

(declare-fun b!1273653 () Bool)

(assert (=> b!1273653 (= e!726782 (and e!726784 mapRes!51307))))

(declare-fun condMapEmpty!51307 () Bool)

(declare-fun mapDefault!51307 () ValueCell!15705)

(assert (=> b!1273653 (= condMapEmpty!51307 (= (arr!40245 (_values!6756 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15705)) mapDefault!51307)))))

(declare-fun mapNonEmpty!51307 () Bool)

(declare-fun tp!97799 () Bool)

(assert (=> mapNonEmpty!51307 (= mapRes!51307 (and tp!97799 e!726783))))

(declare-fun mapValue!51307 () ValueCell!15705)

(declare-fun mapRest!51307 () (Array (_ BitVec 32) ValueCell!15705))

(declare-fun mapKey!51307 () (_ BitVec 32))

(assert (=> mapNonEmpty!51307 (= (arr!40245 (_values!6756 thiss!1551)) (store mapRest!51307 mapKey!51307 mapValue!51307))))

(assert (= (and start!107648 res!846978) b!1273650))

(assert (= (and b!1273650 res!846977) b!1273651))

(assert (= (and b!1273651 res!846976) b!1273648))

(assert (= (and b!1273653 condMapEmpty!51307) mapIsEmpty!51307))

(assert (= (and b!1273653 (not condMapEmpty!51307)) mapNonEmpty!51307))

(get-info :version)

(assert (= (and mapNonEmpty!51307 ((_ is ValueCellFull!15705) mapValue!51307)) b!1273652))

(assert (= (and b!1273653 ((_ is ValueCellFull!15705) mapDefault!51307)) b!1273647))

(assert (= b!1273649 b!1273653))

(assert (= start!107648 b!1273649))

(declare-fun m!1170735 () Bool)

(assert (=> b!1273650 m!1170735))

(declare-fun m!1170737 () Bool)

(assert (=> b!1273649 m!1170737))

(declare-fun m!1170739 () Bool)

(assert (=> b!1273649 m!1170739))

(declare-fun m!1170741 () Bool)

(assert (=> mapNonEmpty!51307 m!1170741))

(declare-fun m!1170743 () Bool)

(assert (=> b!1273651 m!1170743))

(declare-fun m!1170745 () Bool)

(assert (=> start!107648 m!1170745))

(check-sat (not b!1273650) (not b!1273649) tp_is_empty!33117 b_and!45813 (not b_next!27747) (not mapNonEmpty!51307) (not b!1273651) (not start!107648))
(check-sat b_and!45813 (not b_next!27747))
(get-model)

(declare-fun b!1273685 () Bool)

(declare-fun res!846996 () Bool)

(declare-fun e!726807 () Bool)

(assert (=> b!1273685 (=> (not res!846996) (not e!726807))))

(declare-fun size!40795 (LongMapFixedSize!6174) (_ BitVec 32))

(assert (=> b!1273685 (= res!846996 (= (size!40795 thiss!1551) (bvadd (_size!3142 thiss!1551) (bvsdiv (bvadd (extraKeys!6412 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1273683 () Bool)

(declare-fun res!846998 () Bool)

(assert (=> b!1273683 (=> (not res!846998) (not e!726807))))

(assert (=> b!1273683 (= res!846998 (and (= (size!40791 (_values!6756 thiss!1551)) (bvadd (mask!34520 thiss!1551) #b00000000000000000000000000000001)) (= (size!40792 (_keys!12144 thiss!1551)) (size!40791 (_values!6756 thiss!1551))) (bvsge (_size!3142 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3142 thiss!1551) (bvadd (mask!34520 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun b!1273686 () Bool)

(assert (=> b!1273686 (= e!726807 (and (bvsge (extraKeys!6412 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6412 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3142 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273684 () Bool)

(declare-fun res!846997 () Bool)

(assert (=> b!1273684 (=> (not res!846997) (not e!726807))))

(assert (=> b!1273684 (= res!846997 (bvsge (size!40795 thiss!1551) (_size!3142 thiss!1551)))))

(declare-fun d!139949 () Bool)

(declare-fun res!846999 () Bool)

(assert (=> d!139949 (=> (not res!846999) (not e!726807))))

(assert (=> d!139949 (= res!846999 (validMask!0 (mask!34520 thiss!1551)))))

(assert (=> d!139949 (= (simpleValid!472 thiss!1551) e!726807)))

(assert (= (and d!139949 res!846999) b!1273683))

(assert (= (and b!1273683 res!846998) b!1273684))

(assert (= (and b!1273684 res!846997) b!1273685))

(assert (= (and b!1273685 res!846996) b!1273686))

(declare-fun m!1170759 () Bool)

(assert (=> b!1273685 m!1170759))

(assert (=> b!1273684 m!1170759))

(assert (=> d!139949 m!1170743))

(assert (=> start!107648 d!139949))

(declare-fun d!139951 () Bool)

(assert (=> d!139951 (= (array_inv!30545 (_keys!12144 thiss!1551)) (bvsge (size!40792 (_keys!12144 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273649 d!139951))

(declare-fun d!139953 () Bool)

(assert (=> d!139953 (= (array_inv!30546 (_values!6756 thiss!1551)) (bvsge (size!40791 (_values!6756 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273649 d!139953))

(declare-fun d!139955 () Bool)

(declare-fun lt!575085 () (_ BitVec 32))

(assert (=> d!139955 (and (bvsge lt!575085 #b00000000000000000000000000000000) (bvsle lt!575085 (bvsub (size!40792 (_keys!12144 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun e!726813 () (_ BitVec 32))

(assert (=> d!139955 (= lt!575085 e!726813)))

(declare-fun c!123719 () Bool)

(assert (=> d!139955 (= c!123719 (bvsge #b00000000000000000000000000000000 (size!40792 (_keys!12144 thiss!1551))))))

(assert (=> d!139955 (and (bvsle #b00000000000000000000000000000000 (size!40792 (_keys!12144 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40792 (_keys!12144 thiss!1551)) (size!40792 (_keys!12144 thiss!1551))))))

(assert (=> d!139955 (= (arrayCountValidKeys!0 (_keys!12144 thiss!1551) #b00000000000000000000000000000000 (size!40792 (_keys!12144 thiss!1551))) lt!575085)))

(declare-fun b!1273695 () Bool)

(declare-fun e!726812 () (_ BitVec 32))

(assert (=> b!1273695 (= e!726813 e!726812)))

(declare-fun c!123720 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273695 (= c!123720 (validKeyInArray!0 (select (arr!40246 (_keys!12144 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun bm!62599 () Bool)

(declare-fun call!62602 () (_ BitVec 32))

(assert (=> bm!62599 (= call!62602 (arrayCountValidKeys!0 (_keys!12144 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40792 (_keys!12144 thiss!1551))))))

(declare-fun b!1273696 () Bool)

(assert (=> b!1273696 (= e!726812 call!62602)))

(declare-fun b!1273697 () Bool)

(assert (=> b!1273697 (= e!726813 #b00000000000000000000000000000000)))

(declare-fun b!1273698 () Bool)

(assert (=> b!1273698 (= e!726812 (bvadd #b00000000000000000000000000000001 call!62602))))

(assert (= (and d!139955 c!123719) b!1273697))

(assert (= (and d!139955 (not c!123719)) b!1273695))

(assert (= (and b!1273695 c!123720) b!1273698))

(assert (= (and b!1273695 (not c!123720)) b!1273696))

(assert (= (or b!1273698 b!1273696) bm!62599))

(declare-fun m!1170761 () Bool)

(assert (=> b!1273695 m!1170761))

(assert (=> b!1273695 m!1170761))

(declare-fun m!1170763 () Bool)

(assert (=> b!1273695 m!1170763))

(declare-fun m!1170765 () Bool)

(assert (=> bm!62599 m!1170765))

(assert (=> b!1273650 d!139955))

(declare-fun d!139957 () Bool)

(assert (=> d!139957 (= (validMask!0 (mask!34520 thiss!1551)) (and (or (= (mask!34520 thiss!1551) #b00000000000000000000000000000111) (= (mask!34520 thiss!1551) #b00000000000000000000000000001111) (= (mask!34520 thiss!1551) #b00000000000000000000000000011111) (= (mask!34520 thiss!1551) #b00000000000000000000000000111111) (= (mask!34520 thiss!1551) #b00000000000000000000000001111111) (= (mask!34520 thiss!1551) #b00000000000000000000000011111111) (= (mask!34520 thiss!1551) #b00000000000000000000000111111111) (= (mask!34520 thiss!1551) #b00000000000000000000001111111111) (= (mask!34520 thiss!1551) #b00000000000000000000011111111111) (= (mask!34520 thiss!1551) #b00000000000000000000111111111111) (= (mask!34520 thiss!1551) #b00000000000000000001111111111111) (= (mask!34520 thiss!1551) #b00000000000000000011111111111111) (= (mask!34520 thiss!1551) #b00000000000000000111111111111111) (= (mask!34520 thiss!1551) #b00000000000000001111111111111111) (= (mask!34520 thiss!1551) #b00000000000000011111111111111111) (= (mask!34520 thiss!1551) #b00000000000000111111111111111111) (= (mask!34520 thiss!1551) #b00000000000001111111111111111111) (= (mask!34520 thiss!1551) #b00000000000011111111111111111111) (= (mask!34520 thiss!1551) #b00000000000111111111111111111111) (= (mask!34520 thiss!1551) #b00000000001111111111111111111111) (= (mask!34520 thiss!1551) #b00000000011111111111111111111111) (= (mask!34520 thiss!1551) #b00000000111111111111111111111111) (= (mask!34520 thiss!1551) #b00000001111111111111111111111111) (= (mask!34520 thiss!1551) #b00000011111111111111111111111111) (= (mask!34520 thiss!1551) #b00000111111111111111111111111111) (= (mask!34520 thiss!1551) #b00001111111111111111111111111111) (= (mask!34520 thiss!1551) #b00011111111111111111111111111111) (= (mask!34520 thiss!1551) #b00111111111111111111111111111111)) (bvsle (mask!34520 thiss!1551) #b00111111111111111111111111111111)))))

(assert (=> b!1273651 d!139957))

(declare-fun b!1273706 () Bool)

(declare-fun e!726819 () Bool)

(assert (=> b!1273706 (= e!726819 tp_is_empty!33117)))

(declare-fun mapIsEmpty!51313 () Bool)

(declare-fun mapRes!51313 () Bool)

(assert (=> mapIsEmpty!51313 mapRes!51313))

(declare-fun b!1273705 () Bool)

(declare-fun e!726818 () Bool)

(assert (=> b!1273705 (= e!726818 tp_is_empty!33117)))

(declare-fun condMapEmpty!51313 () Bool)

(declare-fun mapDefault!51313 () ValueCell!15705)

(assert (=> mapNonEmpty!51307 (= condMapEmpty!51313 (= mapRest!51307 ((as const (Array (_ BitVec 32) ValueCell!15705)) mapDefault!51313)))))

(assert (=> mapNonEmpty!51307 (= tp!97799 (and e!726819 mapRes!51313))))

(declare-fun mapNonEmpty!51313 () Bool)

(declare-fun tp!97808 () Bool)

(assert (=> mapNonEmpty!51313 (= mapRes!51313 (and tp!97808 e!726818))))

(declare-fun mapRest!51313 () (Array (_ BitVec 32) ValueCell!15705))

(declare-fun mapValue!51313 () ValueCell!15705)

(declare-fun mapKey!51313 () (_ BitVec 32))

(assert (=> mapNonEmpty!51313 (= mapRest!51307 (store mapRest!51313 mapKey!51313 mapValue!51313))))

(assert (= (and mapNonEmpty!51307 condMapEmpty!51313) mapIsEmpty!51313))

(assert (= (and mapNonEmpty!51307 (not condMapEmpty!51313)) mapNonEmpty!51313))

(assert (= (and mapNonEmpty!51313 ((_ is ValueCellFull!15705) mapValue!51313)) b!1273705))

(assert (= (and mapNonEmpty!51307 ((_ is ValueCellFull!15705) mapDefault!51313)) b!1273706))

(declare-fun m!1170767 () Bool)

(assert (=> mapNonEmpty!51313 m!1170767))

(check-sat (not mapNonEmpty!51313) (not b!1273684) (not d!139949) (not b!1273695) (not b!1273685) tp_is_empty!33117 b_and!45813 (not b_next!27747) (not bm!62599))
(check-sat b_and!45813 (not b_next!27747))
