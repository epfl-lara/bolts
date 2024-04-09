; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107664 () Bool)

(assert start!107664)

(declare-fun b!1273742 () Bool)

(declare-fun b_free!27753 () Bool)

(declare-fun b_next!27753 () Bool)

(assert (=> b!1273742 (= b_free!27753 (not b_next!27753))))

(declare-fun tp!97820 () Bool)

(declare-fun b_and!45819 () Bool)

(assert (=> b!1273742 (= tp!97820 b_and!45819)))

(declare-fun res!847017 () Bool)

(declare-fun e!726853 () Bool)

(assert (=> start!107664 (=> (not res!847017) (not e!726853))))

(declare-datatypes ((V!49357 0))(
  ( (V!49358 (val!16636 Int)) )
))
(declare-datatypes ((ValueCell!15708 0))(
  ( (ValueCellFull!15708 (v!19271 V!49357)) (EmptyCell!15708) )
))
(declare-datatypes ((array!83469 0))(
  ( (array!83470 (arr!40251 (Array (_ BitVec 32) ValueCell!15708)) (size!40798 (_ BitVec 32))) )
))
(declare-datatypes ((array!83471 0))(
  ( (array!83472 (arr!40252 (Array (_ BitVec 32) (_ BitVec 64))) (size!40799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6180 0))(
  ( (LongMapFixedSize!6181 (defaultEntry!6736 Int) (mask!34526 (_ BitVec 32)) (extraKeys!6415 (_ BitVec 32)) (zeroValue!6521 V!49357) (minValue!6521 V!49357) (_size!3145 (_ BitVec 32)) (_keys!12147 array!83471) (_values!6759 array!83469) (_vacant!3145 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6180)

(declare-fun simpleValid!473 (LongMapFixedSize!6180) Bool)

(assert (=> start!107664 (= res!847017 (simpleValid!473 thiss!1551))))

(assert (=> start!107664 e!726853))

(declare-fun e!726854 () Bool)

(assert (=> start!107664 e!726854))

(declare-fun mapIsEmpty!51319 () Bool)

(declare-fun mapRes!51319 () Bool)

(assert (=> mapIsEmpty!51319 mapRes!51319))

(declare-fun e!726855 () Bool)

(declare-fun tp_is_empty!33123 () Bool)

(declare-fun array_inv!30549 (array!83471) Bool)

(declare-fun array_inv!30550 (array!83469) Bool)

(assert (=> b!1273742 (= e!726854 (and tp!97820 tp_is_empty!33123 (array_inv!30549 (_keys!12147 thiss!1551)) (array_inv!30550 (_values!6759 thiss!1551)) e!726855))))

(declare-fun mapNonEmpty!51319 () Bool)

(declare-fun tp!97819 () Bool)

(declare-fun e!726852 () Bool)

(assert (=> mapNonEmpty!51319 (= mapRes!51319 (and tp!97819 e!726852))))

(declare-fun mapKey!51319 () (_ BitVec 32))

(declare-fun mapValue!51319 () ValueCell!15708)

(declare-fun mapRest!51319 () (Array (_ BitVec 32) ValueCell!15708))

(assert (=> mapNonEmpty!51319 (= (arr!40251 (_values!6759 thiss!1551)) (store mapRest!51319 mapKey!51319 mapValue!51319))))

(declare-fun b!1273743 () Bool)

(declare-fun e!726850 () Bool)

(assert (=> b!1273743 (= e!726850 tp_is_empty!33123)))

(declare-fun b!1273744 () Bool)

(assert (=> b!1273744 (= e!726853 (bvsgt #b00000000000000000000000000000000 (size!40799 (_keys!12147 thiss!1551))))))

(declare-fun b!1273745 () Bool)

(assert (=> b!1273745 (= e!726855 (and e!726850 mapRes!51319))))

(declare-fun condMapEmpty!51319 () Bool)

(declare-fun mapDefault!51319 () ValueCell!15708)

(assert (=> b!1273745 (= condMapEmpty!51319 (= (arr!40251 (_values!6759 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15708)) mapDefault!51319)))))

(declare-fun b!1273746 () Bool)

(declare-fun res!847015 () Bool)

(assert (=> b!1273746 (=> (not res!847015) (not e!726853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83471 (_ BitVec 32)) Bool)

(assert (=> b!1273746 (= res!847015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12147 thiss!1551) (mask!34526 thiss!1551)))))

(declare-fun b!1273747 () Bool)

(declare-fun res!847016 () Bool)

(assert (=> b!1273747 (=> (not res!847016) (not e!726853))))

(declare-fun arrayCountValidKeys!0 (array!83471 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273747 (= res!847016 (= (arrayCountValidKeys!0 (_keys!12147 thiss!1551) #b00000000000000000000000000000000 (size!40799 (_keys!12147 thiss!1551))) (_size!3145 thiss!1551)))))

(declare-fun b!1273748 () Bool)

(assert (=> b!1273748 (= e!726852 tp_is_empty!33123)))

(assert (= (and start!107664 res!847017) b!1273747))

(assert (= (and b!1273747 res!847016) b!1273746))

(assert (= (and b!1273746 res!847015) b!1273744))

(assert (= (and b!1273745 condMapEmpty!51319) mapIsEmpty!51319))

(assert (= (and b!1273745 (not condMapEmpty!51319)) mapNonEmpty!51319))

(get-info :version)

(assert (= (and mapNonEmpty!51319 ((_ is ValueCellFull!15708) mapValue!51319)) b!1273748))

(assert (= (and b!1273745 ((_ is ValueCellFull!15708) mapDefault!51319)) b!1273743))

(assert (= b!1273742 b!1273745))

(assert (= start!107664 b!1273742))

(declare-fun m!1170781 () Bool)

(assert (=> b!1273742 m!1170781))

(declare-fun m!1170783 () Bool)

(assert (=> b!1273742 m!1170783))

(declare-fun m!1170785 () Bool)

(assert (=> mapNonEmpty!51319 m!1170785))

(declare-fun m!1170787 () Bool)

(assert (=> b!1273747 m!1170787))

(declare-fun m!1170789 () Bool)

(assert (=> b!1273746 m!1170789))

(declare-fun m!1170791 () Bool)

(assert (=> start!107664 m!1170791))

(check-sat b_and!45819 (not b!1273746) (not b!1273742) (not start!107664) tp_is_empty!33123 (not b!1273747) (not mapNonEmpty!51319) (not b_next!27753))
(check-sat b_and!45819 (not b_next!27753))
(get-model)

(declare-fun b!1273780 () Bool)

(declare-fun res!847037 () Bool)

(declare-fun e!726876 () Bool)

(assert (=> b!1273780 (=> (not res!847037) (not e!726876))))

(declare-fun size!40802 (LongMapFixedSize!6180) (_ BitVec 32))

(assert (=> b!1273780 (= res!847037 (= (size!40802 thiss!1551) (bvadd (_size!3145 thiss!1551) (bvsdiv (bvadd (extraKeys!6415 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1273781 () Bool)

(assert (=> b!1273781 (= e!726876 (and (bvsge (extraKeys!6415 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6415 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3145 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273779 () Bool)

(declare-fun res!847038 () Bool)

(assert (=> b!1273779 (=> (not res!847038) (not e!726876))))

(assert (=> b!1273779 (= res!847038 (bvsge (size!40802 thiss!1551) (_size!3145 thiss!1551)))))

(declare-fun b!1273778 () Bool)

(declare-fun res!847036 () Bool)

(assert (=> b!1273778 (=> (not res!847036) (not e!726876))))

(assert (=> b!1273778 (= res!847036 (and (= (size!40798 (_values!6759 thiss!1551)) (bvadd (mask!34526 thiss!1551) #b00000000000000000000000000000001)) (= (size!40799 (_keys!12147 thiss!1551)) (size!40798 (_values!6759 thiss!1551))) (bvsge (_size!3145 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3145 thiss!1551) (bvadd (mask!34526 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun d!139961 () Bool)

(declare-fun res!847035 () Bool)

(assert (=> d!139961 (=> (not res!847035) (not e!726876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!139961 (= res!847035 (validMask!0 (mask!34526 thiss!1551)))))

(assert (=> d!139961 (= (simpleValid!473 thiss!1551) e!726876)))

(assert (= (and d!139961 res!847035) b!1273778))

(assert (= (and b!1273778 res!847036) b!1273779))

(assert (= (and b!1273779 res!847038) b!1273780))

(assert (= (and b!1273780 res!847037) b!1273781))

(declare-fun m!1170805 () Bool)

(assert (=> b!1273780 m!1170805))

(assert (=> b!1273779 m!1170805))

(declare-fun m!1170807 () Bool)

(assert (=> d!139961 m!1170807))

(assert (=> start!107664 d!139961))

(declare-fun d!139963 () Bool)

(assert (=> d!139963 (= (array_inv!30549 (_keys!12147 thiss!1551)) (bvsge (size!40799 (_keys!12147 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273742 d!139963))

(declare-fun d!139965 () Bool)

(assert (=> d!139965 (= (array_inv!30550 (_values!6759 thiss!1551)) (bvsge (size!40798 (_values!6759 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273742 d!139965))

(declare-fun b!1273790 () Bool)

(declare-fun e!726884 () Bool)

(declare-fun call!62605 () Bool)

(assert (=> b!1273790 (= e!726884 call!62605)))

(declare-fun b!1273791 () Bool)

(declare-fun e!726883 () Bool)

(assert (=> b!1273791 (= e!726883 e!726884)))

(declare-fun c!123723 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273791 (= c!123723 (validKeyInArray!0 (select (arr!40252 (_keys!12147 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun b!1273792 () Bool)

(declare-fun e!726885 () Bool)

(assert (=> b!1273792 (= e!726885 call!62605)))

(declare-fun b!1273793 () Bool)

(assert (=> b!1273793 (= e!726884 e!726885)))

(declare-fun lt!575094 () (_ BitVec 64))

(assert (=> b!1273793 (= lt!575094 (select (arr!40252 (_keys!12147 thiss!1551)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42278 0))(
  ( (Unit!42279) )
))
(declare-fun lt!575092 () Unit!42278)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83471 (_ BitVec 64) (_ BitVec 32)) Unit!42278)

(assert (=> b!1273793 (= lt!575092 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12147 thiss!1551) lt!575094 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1273793 (arrayContainsKey!0 (_keys!12147 thiss!1551) lt!575094 #b00000000000000000000000000000000)))

(declare-fun lt!575093 () Unit!42278)

(assert (=> b!1273793 (= lt!575093 lt!575092)))

(declare-fun res!847044 () Bool)

(declare-datatypes ((SeekEntryResult!9994 0))(
  ( (MissingZero!9994 (index!42346 (_ BitVec 32))) (Found!9994 (index!42347 (_ BitVec 32))) (Intermediate!9994 (undefined!10806 Bool) (index!42348 (_ BitVec 32)) (x!112672 (_ BitVec 32))) (Undefined!9994) (MissingVacant!9994 (index!42349 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83471 (_ BitVec 32)) SeekEntryResult!9994)

(assert (=> b!1273793 (= res!847044 (= (seekEntryOrOpen!0 (select (arr!40252 (_keys!12147 thiss!1551)) #b00000000000000000000000000000000) (_keys!12147 thiss!1551) (mask!34526 thiss!1551)) (Found!9994 #b00000000000000000000000000000000)))))

(assert (=> b!1273793 (=> (not res!847044) (not e!726885))))

(declare-fun bm!62602 () Bool)

(assert (=> bm!62602 (= call!62605 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12147 thiss!1551) (mask!34526 thiss!1551)))))

(declare-fun d!139967 () Bool)

(declare-fun res!847043 () Bool)

(assert (=> d!139967 (=> res!847043 e!726883)))

(assert (=> d!139967 (= res!847043 (bvsge #b00000000000000000000000000000000 (size!40799 (_keys!12147 thiss!1551))))))

(assert (=> d!139967 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12147 thiss!1551) (mask!34526 thiss!1551)) e!726883)))

(assert (= (and d!139967 (not res!847043)) b!1273791))

(assert (= (and b!1273791 c!123723) b!1273793))

(assert (= (and b!1273791 (not c!123723)) b!1273790))

(assert (= (and b!1273793 res!847044) b!1273792))

(assert (= (or b!1273792 b!1273790) bm!62602))

(declare-fun m!1170809 () Bool)

(assert (=> b!1273791 m!1170809))

(assert (=> b!1273791 m!1170809))

(declare-fun m!1170811 () Bool)

(assert (=> b!1273791 m!1170811))

(assert (=> b!1273793 m!1170809))

(declare-fun m!1170813 () Bool)

(assert (=> b!1273793 m!1170813))

(declare-fun m!1170815 () Bool)

(assert (=> b!1273793 m!1170815))

(assert (=> b!1273793 m!1170809))

(declare-fun m!1170817 () Bool)

(assert (=> b!1273793 m!1170817))

(declare-fun m!1170819 () Bool)

(assert (=> bm!62602 m!1170819))

(assert (=> b!1273746 d!139967))

(declare-fun b!1273802 () Bool)

(declare-fun e!726891 () (_ BitVec 32))

(assert (=> b!1273802 (= e!726891 #b00000000000000000000000000000000)))

(declare-fun b!1273803 () Bool)

(declare-fun e!726890 () (_ BitVec 32))

(declare-fun call!62608 () (_ BitVec 32))

(assert (=> b!1273803 (= e!726890 call!62608)))

(declare-fun d!139969 () Bool)

(declare-fun lt!575097 () (_ BitVec 32))

(assert (=> d!139969 (and (bvsge lt!575097 #b00000000000000000000000000000000) (bvsle lt!575097 (bvsub (size!40799 (_keys!12147 thiss!1551)) #b00000000000000000000000000000000)))))

(assert (=> d!139969 (= lt!575097 e!726891)))

(declare-fun c!123728 () Bool)

(assert (=> d!139969 (= c!123728 (bvsge #b00000000000000000000000000000000 (size!40799 (_keys!12147 thiss!1551))))))

(assert (=> d!139969 (and (bvsle #b00000000000000000000000000000000 (size!40799 (_keys!12147 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40799 (_keys!12147 thiss!1551)) (size!40799 (_keys!12147 thiss!1551))))))

(assert (=> d!139969 (= (arrayCountValidKeys!0 (_keys!12147 thiss!1551) #b00000000000000000000000000000000 (size!40799 (_keys!12147 thiss!1551))) lt!575097)))

(declare-fun b!1273804 () Bool)

(assert (=> b!1273804 (= e!726891 e!726890)))

(declare-fun c!123729 () Bool)

(assert (=> b!1273804 (= c!123729 (validKeyInArray!0 (select (arr!40252 (_keys!12147 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun bm!62605 () Bool)

(assert (=> bm!62605 (= call!62608 (arrayCountValidKeys!0 (_keys!12147 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40799 (_keys!12147 thiss!1551))))))

(declare-fun b!1273805 () Bool)

(assert (=> b!1273805 (= e!726890 (bvadd #b00000000000000000000000000000001 call!62608))))

(assert (= (and d!139969 c!123728) b!1273802))

(assert (= (and d!139969 (not c!123728)) b!1273804))

(assert (= (and b!1273804 c!123729) b!1273805))

(assert (= (and b!1273804 (not c!123729)) b!1273803))

(assert (= (or b!1273805 b!1273803) bm!62605))

(assert (=> b!1273804 m!1170809))

(assert (=> b!1273804 m!1170809))

(assert (=> b!1273804 m!1170811))

(declare-fun m!1170821 () Bool)

(assert (=> bm!62605 m!1170821))

(assert (=> b!1273747 d!139969))

(declare-fun mapIsEmpty!51325 () Bool)

(declare-fun mapRes!51325 () Bool)

(assert (=> mapIsEmpty!51325 mapRes!51325))

(declare-fun mapNonEmpty!51325 () Bool)

(declare-fun tp!97829 () Bool)

(declare-fun e!726897 () Bool)

(assert (=> mapNonEmpty!51325 (= mapRes!51325 (and tp!97829 e!726897))))

(declare-fun mapRest!51325 () (Array (_ BitVec 32) ValueCell!15708))

(declare-fun mapValue!51325 () ValueCell!15708)

(declare-fun mapKey!51325 () (_ BitVec 32))

(assert (=> mapNonEmpty!51325 (= mapRest!51319 (store mapRest!51325 mapKey!51325 mapValue!51325))))

(declare-fun b!1273812 () Bool)

(assert (=> b!1273812 (= e!726897 tp_is_empty!33123)))

(declare-fun b!1273813 () Bool)

(declare-fun e!726896 () Bool)

(assert (=> b!1273813 (= e!726896 tp_is_empty!33123)))

(declare-fun condMapEmpty!51325 () Bool)

(declare-fun mapDefault!51325 () ValueCell!15708)

(assert (=> mapNonEmpty!51319 (= condMapEmpty!51325 (= mapRest!51319 ((as const (Array (_ BitVec 32) ValueCell!15708)) mapDefault!51325)))))

(assert (=> mapNonEmpty!51319 (= tp!97819 (and e!726896 mapRes!51325))))

(assert (= (and mapNonEmpty!51319 condMapEmpty!51325) mapIsEmpty!51325))

(assert (= (and mapNonEmpty!51319 (not condMapEmpty!51325)) mapNonEmpty!51325))

(assert (= (and mapNonEmpty!51325 ((_ is ValueCellFull!15708) mapValue!51325)) b!1273812))

(assert (= (and mapNonEmpty!51319 ((_ is ValueCellFull!15708) mapDefault!51325)) b!1273813))

(declare-fun m!1170823 () Bool)

(assert (=> mapNonEmpty!51325 m!1170823))

(check-sat (not b_next!27753) (not b!1273780) (not b!1273779) b_and!45819 (not bm!62602) (not b!1273804) tp_is_empty!33123 (not b!1273791) (not bm!62605) (not d!139961) (not mapNonEmpty!51325) (not b!1273793))
(check-sat b_and!45819 (not b_next!27753))
