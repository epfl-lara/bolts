; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107508 () Bool)

(assert start!107508)

(declare-fun b!1272831 () Bool)

(declare-fun b_free!27693 () Bool)

(declare-fun b_next!27693 () Bool)

(assert (=> b!1272831 (= b_free!27693 (not b_next!27693))))

(declare-fun tp!97610 () Bool)

(declare-fun b_and!45759 () Bool)

(assert (=> b!1272831 (= tp!97610 b_and!45759)))

(declare-fun res!846627 () Bool)

(declare-fun e!726129 () Bool)

(assert (=> start!107508 (=> (not res!846627) (not e!726129))))

(declare-datatypes ((V!49277 0))(
  ( (V!49278 (val!16606 Int)) )
))
(declare-datatypes ((ValueCell!15678 0))(
  ( (ValueCellFull!15678 (v!19241 V!49277)) (EmptyCell!15678) )
))
(declare-datatypes ((array!83331 0))(
  ( (array!83332 (arr!40191 (Array (_ BitVec 32) ValueCell!15678)) (size!40732 (_ BitVec 32))) )
))
(declare-datatypes ((array!83333 0))(
  ( (array!83334 (arr!40192 (Array (_ BitVec 32) (_ BitVec 64))) (size!40733 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6120 0))(
  ( (LongMapFixedSize!6121 (defaultEntry!6706 Int) (mask!34464 (_ BitVec 32)) (extraKeys!6385 (_ BitVec 32)) (zeroValue!6491 V!49277) (minValue!6491 V!49277) (_size!3115 (_ BitVec 32)) (_keys!12113 array!83333) (_values!6729 array!83331) (_vacant!3115 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6120)

(declare-fun valid!2251 (LongMapFixedSize!6120) Bool)

(assert (=> start!107508 (= res!846627 (valid!2251 thiss!1559))))

(assert (=> start!107508 e!726129))

(declare-fun e!726128 () Bool)

(assert (=> start!107508 e!726128))

(declare-fun b!1272827 () Bool)

(assert (=> b!1272827 (= e!726129 (and (= (size!40732 (_values!6729 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34464 thiss!1559))) (= (size!40733 (_keys!12113 thiss!1559)) (size!40732 (_values!6729 thiss!1559))) (bvsge (mask!34464 thiss!1559) #b00000000000000000000000000000000) (bvsge (extraKeys!6385 thiss!1559) #b00000000000000000000000000000000) (bvsgt (extraKeys!6385 thiss!1559) #b00000000000000000000000000000011)))))

(declare-fun b!1272828 () Bool)

(declare-fun e!726126 () Bool)

(declare-fun tp_is_empty!33063 () Bool)

(assert (=> b!1272828 (= e!726126 tp_is_empty!33063)))

(declare-fun b!1272829 () Bool)

(declare-fun e!726127 () Bool)

(assert (=> b!1272829 (= e!726127 tp_is_empty!33063)))

(declare-fun b!1272830 () Bool)

(declare-fun res!846626 () Bool)

(assert (=> b!1272830 (=> (not res!846626) (not e!726129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272830 (= res!846626 (validMask!0 (mask!34464 thiss!1559)))))

(declare-fun e!726131 () Bool)

(declare-fun array_inv!30509 (array!83333) Bool)

(declare-fun array_inv!30510 (array!83331) Bool)

(assert (=> b!1272831 (= e!726128 (and tp!97610 tp_is_empty!33063 (array_inv!30509 (_keys!12113 thiss!1559)) (array_inv!30510 (_values!6729 thiss!1559)) e!726131))))

(declare-fun mapIsEmpty!51200 () Bool)

(declare-fun mapRes!51200 () Bool)

(assert (=> mapIsEmpty!51200 mapRes!51200))

(declare-fun b!1272832 () Bool)

(assert (=> b!1272832 (= e!726131 (and e!726126 mapRes!51200))))

(declare-fun condMapEmpty!51200 () Bool)

(declare-fun mapDefault!51200 () ValueCell!15678)

(assert (=> b!1272832 (= condMapEmpty!51200 (= (arr!40191 (_values!6729 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15678)) mapDefault!51200)))))

(declare-fun mapNonEmpty!51200 () Bool)

(declare-fun tp!97611 () Bool)

(assert (=> mapNonEmpty!51200 (= mapRes!51200 (and tp!97611 e!726127))))

(declare-fun mapRest!51200 () (Array (_ BitVec 32) ValueCell!15678))

(declare-fun mapValue!51200 () ValueCell!15678)

(declare-fun mapKey!51200 () (_ BitVec 32))

(assert (=> mapNonEmpty!51200 (= (arr!40191 (_values!6729 thiss!1559)) (store mapRest!51200 mapKey!51200 mapValue!51200))))

(assert (= (and start!107508 res!846627) b!1272830))

(assert (= (and b!1272830 res!846626) b!1272827))

(assert (= (and b!1272832 condMapEmpty!51200) mapIsEmpty!51200))

(assert (= (and b!1272832 (not condMapEmpty!51200)) mapNonEmpty!51200))

(get-info :version)

(assert (= (and mapNonEmpty!51200 ((_ is ValueCellFull!15678) mapValue!51200)) b!1272829))

(assert (= (and b!1272832 ((_ is ValueCellFull!15678) mapDefault!51200)) b!1272828))

(assert (= b!1272831 b!1272832))

(assert (= start!107508 b!1272831))

(declare-fun m!1170303 () Bool)

(assert (=> start!107508 m!1170303))

(declare-fun m!1170305 () Bool)

(assert (=> b!1272830 m!1170305))

(declare-fun m!1170307 () Bool)

(assert (=> b!1272831 m!1170307))

(declare-fun m!1170309 () Bool)

(assert (=> b!1272831 m!1170309))

(declare-fun m!1170311 () Bool)

(assert (=> mapNonEmpty!51200 m!1170311))

(check-sat (not start!107508) (not b!1272830) (not mapNonEmpty!51200) tp_is_empty!33063 (not b!1272831) (not b_next!27693) b_and!45759)
(check-sat b_and!45759 (not b_next!27693))
(get-model)

(declare-fun d!139845 () Bool)

(declare-fun res!846640 () Bool)

(declare-fun e!726152 () Bool)

(assert (=> d!139845 (=> (not res!846640) (not e!726152))))

(declare-fun simpleValid!459 (LongMapFixedSize!6120) Bool)

(assert (=> d!139845 (= res!846640 (simpleValid!459 thiss!1559))))

(assert (=> d!139845 (= (valid!2251 thiss!1559) e!726152)))

(declare-fun b!1272857 () Bool)

(declare-fun res!846641 () Bool)

(assert (=> b!1272857 (=> (not res!846641) (not e!726152))))

(declare-fun arrayCountValidKeys!0 (array!83333 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272857 (= res!846641 (= (arrayCountValidKeys!0 (_keys!12113 thiss!1559) #b00000000000000000000000000000000 (size!40733 (_keys!12113 thiss!1559))) (_size!3115 thiss!1559)))))

(declare-fun b!1272858 () Bool)

(declare-fun res!846642 () Bool)

(assert (=> b!1272858 (=> (not res!846642) (not e!726152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83333 (_ BitVec 32)) Bool)

(assert (=> b!1272858 (= res!846642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12113 thiss!1559) (mask!34464 thiss!1559)))))

(declare-fun b!1272859 () Bool)

(declare-datatypes ((List!28721 0))(
  ( (Nil!28718) (Cons!28717 (h!29926 (_ BitVec 64)) (t!42261 List!28721)) )
))
(declare-fun arrayNoDuplicates!0 (array!83333 (_ BitVec 32) List!28721) Bool)

(assert (=> b!1272859 (= e!726152 (arrayNoDuplicates!0 (_keys!12113 thiss!1559) #b00000000000000000000000000000000 Nil!28718))))

(assert (= (and d!139845 res!846640) b!1272857))

(assert (= (and b!1272857 res!846641) b!1272858))

(assert (= (and b!1272858 res!846642) b!1272859))

(declare-fun m!1170323 () Bool)

(assert (=> d!139845 m!1170323))

(declare-fun m!1170325 () Bool)

(assert (=> b!1272857 m!1170325))

(declare-fun m!1170327 () Bool)

(assert (=> b!1272858 m!1170327))

(declare-fun m!1170329 () Bool)

(assert (=> b!1272859 m!1170329))

(assert (=> start!107508 d!139845))

(declare-fun d!139847 () Bool)

(assert (=> d!139847 (= (validMask!0 (mask!34464 thiss!1559)) (and (or (= (mask!34464 thiss!1559) #b00000000000000000000000000000111) (= (mask!34464 thiss!1559) #b00000000000000000000000000001111) (= (mask!34464 thiss!1559) #b00000000000000000000000000011111) (= (mask!34464 thiss!1559) #b00000000000000000000000000111111) (= (mask!34464 thiss!1559) #b00000000000000000000000001111111) (= (mask!34464 thiss!1559) #b00000000000000000000000011111111) (= (mask!34464 thiss!1559) #b00000000000000000000000111111111) (= (mask!34464 thiss!1559) #b00000000000000000000001111111111) (= (mask!34464 thiss!1559) #b00000000000000000000011111111111) (= (mask!34464 thiss!1559) #b00000000000000000000111111111111) (= (mask!34464 thiss!1559) #b00000000000000000001111111111111) (= (mask!34464 thiss!1559) #b00000000000000000011111111111111) (= (mask!34464 thiss!1559) #b00000000000000000111111111111111) (= (mask!34464 thiss!1559) #b00000000000000001111111111111111) (= (mask!34464 thiss!1559) #b00000000000000011111111111111111) (= (mask!34464 thiss!1559) #b00000000000000111111111111111111) (= (mask!34464 thiss!1559) #b00000000000001111111111111111111) (= (mask!34464 thiss!1559) #b00000000000011111111111111111111) (= (mask!34464 thiss!1559) #b00000000000111111111111111111111) (= (mask!34464 thiss!1559) #b00000000001111111111111111111111) (= (mask!34464 thiss!1559) #b00000000011111111111111111111111) (= (mask!34464 thiss!1559) #b00000000111111111111111111111111) (= (mask!34464 thiss!1559) #b00000001111111111111111111111111) (= (mask!34464 thiss!1559) #b00000011111111111111111111111111) (= (mask!34464 thiss!1559) #b00000111111111111111111111111111) (= (mask!34464 thiss!1559) #b00001111111111111111111111111111) (= (mask!34464 thiss!1559) #b00011111111111111111111111111111) (= (mask!34464 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34464 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272830 d!139847))

(declare-fun d!139849 () Bool)

(assert (=> d!139849 (= (array_inv!30509 (_keys!12113 thiss!1559)) (bvsge (size!40733 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272831 d!139849))

(declare-fun d!139851 () Bool)

(assert (=> d!139851 (= (array_inv!30510 (_values!6729 thiss!1559)) (bvsge (size!40732 (_values!6729 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272831 d!139851))

(declare-fun condMapEmpty!51206 () Bool)

(declare-fun mapDefault!51206 () ValueCell!15678)

(assert (=> mapNonEmpty!51200 (= condMapEmpty!51206 (= mapRest!51200 ((as const (Array (_ BitVec 32) ValueCell!15678)) mapDefault!51206)))))

(declare-fun e!726157 () Bool)

(declare-fun mapRes!51206 () Bool)

(assert (=> mapNonEmpty!51200 (= tp!97611 (and e!726157 mapRes!51206))))

(declare-fun b!1272866 () Bool)

(declare-fun e!726158 () Bool)

(assert (=> b!1272866 (= e!726158 tp_is_empty!33063)))

(declare-fun mapIsEmpty!51206 () Bool)

(assert (=> mapIsEmpty!51206 mapRes!51206))

(declare-fun b!1272867 () Bool)

(assert (=> b!1272867 (= e!726157 tp_is_empty!33063)))

(declare-fun mapNonEmpty!51206 () Bool)

(declare-fun tp!97620 () Bool)

(assert (=> mapNonEmpty!51206 (= mapRes!51206 (and tp!97620 e!726158))))

(declare-fun mapKey!51206 () (_ BitVec 32))

(declare-fun mapRest!51206 () (Array (_ BitVec 32) ValueCell!15678))

(declare-fun mapValue!51206 () ValueCell!15678)

(assert (=> mapNonEmpty!51206 (= mapRest!51200 (store mapRest!51206 mapKey!51206 mapValue!51206))))

(assert (= (and mapNonEmpty!51200 condMapEmpty!51206) mapIsEmpty!51206))

(assert (= (and mapNonEmpty!51200 (not condMapEmpty!51206)) mapNonEmpty!51206))

(assert (= (and mapNonEmpty!51206 ((_ is ValueCellFull!15678) mapValue!51206)) b!1272866))

(assert (= (and mapNonEmpty!51200 ((_ is ValueCellFull!15678) mapDefault!51206)) b!1272867))

(declare-fun m!1170331 () Bool)

(assert (=> mapNonEmpty!51206 m!1170331))

(check-sat (not b!1272859) (not b!1272858) tp_is_empty!33063 (not mapNonEmpty!51206) (not b!1272857) (not d!139845) (not b_next!27693) b_and!45759)
(check-sat b_and!45759 (not b_next!27693))
(get-model)

(declare-fun b!1272876 () Bool)

(declare-fun e!726165 () Bool)

(declare-fun e!726167 () Bool)

(assert (=> b!1272876 (= e!726165 e!726167)))

(declare-fun lt!575036 () (_ BitVec 64))

(assert (=> b!1272876 (= lt!575036 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42270 0))(
  ( (Unit!42271) )
))
(declare-fun lt!575037 () Unit!42270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83333 (_ BitVec 64) (_ BitVec 32)) Unit!42270)

(assert (=> b!1272876 (= lt!575037 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12113 thiss!1559) lt!575036 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1272876 (arrayContainsKey!0 (_keys!12113 thiss!1559) lt!575036 #b00000000000000000000000000000000)))

(declare-fun lt!575035 () Unit!42270)

(assert (=> b!1272876 (= lt!575035 lt!575037)))

(declare-fun res!846648 () Bool)

(declare-datatypes ((SeekEntryResult!9990 0))(
  ( (MissingZero!9990 (index!42330 (_ BitVec 32))) (Found!9990 (index!42331 (_ BitVec 32))) (Intermediate!9990 (undefined!10802 Bool) (index!42332 (_ BitVec 32)) (x!112510 (_ BitVec 32))) (Undefined!9990) (MissingVacant!9990 (index!42333 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83333 (_ BitVec 32)) SeekEntryResult!9990)

(assert (=> b!1272876 (= res!846648 (= (seekEntryOrOpen!0 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000) (_keys!12113 thiss!1559) (mask!34464 thiss!1559)) (Found!9990 #b00000000000000000000000000000000)))))

(assert (=> b!1272876 (=> (not res!846648) (not e!726167))))

(declare-fun b!1272877 () Bool)

(declare-fun call!62572 () Bool)

(assert (=> b!1272877 (= e!726167 call!62572)))

(declare-fun b!1272878 () Bool)

(assert (=> b!1272878 (= e!726165 call!62572)))

(declare-fun b!1272879 () Bool)

(declare-fun e!726166 () Bool)

(assert (=> b!1272879 (= e!726166 e!726165)))

(declare-fun c!123678 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1272879 (= c!123678 (validKeyInArray!0 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun d!139853 () Bool)

(declare-fun res!846647 () Bool)

(assert (=> d!139853 (=> res!846647 e!726166)))

(assert (=> d!139853 (= res!846647 (bvsge #b00000000000000000000000000000000 (size!40733 (_keys!12113 thiss!1559))))))

(assert (=> d!139853 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12113 thiss!1559) (mask!34464 thiss!1559)) e!726166)))

(declare-fun bm!62569 () Bool)

(assert (=> bm!62569 (= call!62572 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12113 thiss!1559) (mask!34464 thiss!1559)))))

(assert (= (and d!139853 (not res!846647)) b!1272879))

(assert (= (and b!1272879 c!123678) b!1272876))

(assert (= (and b!1272879 (not c!123678)) b!1272878))

(assert (= (and b!1272876 res!846648) b!1272877))

(assert (= (or b!1272877 b!1272878) bm!62569))

(declare-fun m!1170333 () Bool)

(assert (=> b!1272876 m!1170333))

(declare-fun m!1170335 () Bool)

(assert (=> b!1272876 m!1170335))

(declare-fun m!1170337 () Bool)

(assert (=> b!1272876 m!1170337))

(assert (=> b!1272876 m!1170333))

(declare-fun m!1170339 () Bool)

(assert (=> b!1272876 m!1170339))

(assert (=> b!1272879 m!1170333))

(assert (=> b!1272879 m!1170333))

(declare-fun m!1170341 () Bool)

(assert (=> b!1272879 m!1170341))

(declare-fun m!1170343 () Bool)

(assert (=> bm!62569 m!1170343))

(assert (=> b!1272858 d!139853))

(declare-fun b!1272888 () Bool)

(declare-fun e!726172 () (_ BitVec 32))

(declare-fun call!62575 () (_ BitVec 32))

(assert (=> b!1272888 (= e!726172 call!62575)))

(declare-fun d!139855 () Bool)

(declare-fun lt!575040 () (_ BitVec 32))

(assert (=> d!139855 (and (bvsge lt!575040 #b00000000000000000000000000000000) (bvsle lt!575040 (bvsub (size!40733 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun e!726173 () (_ BitVec 32))

(assert (=> d!139855 (= lt!575040 e!726173)))

(declare-fun c!123683 () Bool)

(assert (=> d!139855 (= c!123683 (bvsge #b00000000000000000000000000000000 (size!40733 (_keys!12113 thiss!1559))))))

(assert (=> d!139855 (and (bvsle #b00000000000000000000000000000000 (size!40733 (_keys!12113 thiss!1559))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40733 (_keys!12113 thiss!1559)) (size!40733 (_keys!12113 thiss!1559))))))

(assert (=> d!139855 (= (arrayCountValidKeys!0 (_keys!12113 thiss!1559) #b00000000000000000000000000000000 (size!40733 (_keys!12113 thiss!1559))) lt!575040)))

(declare-fun b!1272889 () Bool)

(assert (=> b!1272889 (= e!726173 #b00000000000000000000000000000000)))

(declare-fun bm!62572 () Bool)

(assert (=> bm!62572 (= call!62575 (arrayCountValidKeys!0 (_keys!12113 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40733 (_keys!12113 thiss!1559))))))

(declare-fun b!1272890 () Bool)

(assert (=> b!1272890 (= e!726172 (bvadd #b00000000000000000000000000000001 call!62575))))

(declare-fun b!1272891 () Bool)

(assert (=> b!1272891 (= e!726173 e!726172)))

(declare-fun c!123684 () Bool)

(assert (=> b!1272891 (= c!123684 (validKeyInArray!0 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (= (and d!139855 c!123683) b!1272889))

(assert (= (and d!139855 (not c!123683)) b!1272891))

(assert (= (and b!1272891 c!123684) b!1272890))

(assert (= (and b!1272891 (not c!123684)) b!1272888))

(assert (= (or b!1272890 b!1272888) bm!62572))

(declare-fun m!1170345 () Bool)

(assert (=> bm!62572 m!1170345))

(assert (=> b!1272891 m!1170333))

(assert (=> b!1272891 m!1170333))

(assert (=> b!1272891 m!1170341))

(assert (=> b!1272857 d!139855))

(declare-fun b!1272903 () Bool)

(declare-fun e!726176 () Bool)

(assert (=> b!1272903 (= e!726176 (and (bvsge (extraKeys!6385 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6385 thiss!1559) #b00000000000000000000000000000011) (bvsge (_vacant!3115 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272902 () Bool)

(declare-fun res!846658 () Bool)

(assert (=> b!1272902 (=> (not res!846658) (not e!726176))))

(declare-fun size!40736 (LongMapFixedSize!6120) (_ BitVec 32))

(assert (=> b!1272902 (= res!846658 (= (size!40736 thiss!1559) (bvadd (_size!3115 thiss!1559) (bvsdiv (bvadd (extraKeys!6385 thiss!1559) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1272900 () Bool)

(declare-fun res!846659 () Bool)

(assert (=> b!1272900 (=> (not res!846659) (not e!726176))))

(assert (=> b!1272900 (= res!846659 (and (= (size!40732 (_values!6729 thiss!1559)) (bvadd (mask!34464 thiss!1559) #b00000000000000000000000000000001)) (= (size!40733 (_keys!12113 thiss!1559)) (size!40732 (_values!6729 thiss!1559))) (bvsge (_size!3115 thiss!1559) #b00000000000000000000000000000000) (bvsle (_size!3115 thiss!1559) (bvadd (mask!34464 thiss!1559) #b00000000000000000000000000000001))))))

(declare-fun b!1272901 () Bool)

(declare-fun res!846657 () Bool)

(assert (=> b!1272901 (=> (not res!846657) (not e!726176))))

(assert (=> b!1272901 (= res!846657 (bvsge (size!40736 thiss!1559) (_size!3115 thiss!1559)))))

(declare-fun d!139857 () Bool)

(declare-fun res!846660 () Bool)

(assert (=> d!139857 (=> (not res!846660) (not e!726176))))

(assert (=> d!139857 (= res!846660 (validMask!0 (mask!34464 thiss!1559)))))

(assert (=> d!139857 (= (simpleValid!459 thiss!1559) e!726176)))

(assert (= (and d!139857 res!846660) b!1272900))

(assert (= (and b!1272900 res!846659) b!1272901))

(assert (= (and b!1272901 res!846657) b!1272902))

(assert (= (and b!1272902 res!846658) b!1272903))

(declare-fun m!1170347 () Bool)

(assert (=> b!1272902 m!1170347))

(assert (=> b!1272901 m!1170347))

(assert (=> d!139857 m!1170305))

(assert (=> d!139845 d!139857))

(declare-fun b!1272914 () Bool)

(declare-fun e!726185 () Bool)

(declare-fun call!62578 () Bool)

(assert (=> b!1272914 (= e!726185 call!62578)))

(declare-fun b!1272915 () Bool)

(assert (=> b!1272915 (= e!726185 call!62578)))

(declare-fun d!139859 () Bool)

(declare-fun res!846669 () Bool)

(declare-fun e!726187 () Bool)

(assert (=> d!139859 (=> res!846669 e!726187)))

(assert (=> d!139859 (= res!846669 (bvsge #b00000000000000000000000000000000 (size!40733 (_keys!12113 thiss!1559))))))

(assert (=> d!139859 (= (arrayNoDuplicates!0 (_keys!12113 thiss!1559) #b00000000000000000000000000000000 Nil!28718) e!726187)))

(declare-fun b!1272916 () Bool)

(declare-fun e!726186 () Bool)

(assert (=> b!1272916 (= e!726187 e!726186)))

(declare-fun res!846668 () Bool)

(assert (=> b!1272916 (=> (not res!846668) (not e!726186))))

(declare-fun e!726188 () Bool)

(assert (=> b!1272916 (= res!846668 (not e!726188))))

(declare-fun res!846667 () Bool)

(assert (=> b!1272916 (=> (not res!846667) (not e!726188))))

(assert (=> b!1272916 (= res!846667 (validKeyInArray!0 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun bm!62575 () Bool)

(declare-fun c!123687 () Bool)

(assert (=> bm!62575 (= call!62578 (arrayNoDuplicates!0 (_keys!12113 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123687 (Cons!28717 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000) Nil!28718) Nil!28718)))))

(declare-fun b!1272917 () Bool)

(assert (=> b!1272917 (= e!726186 e!726185)))

(assert (=> b!1272917 (= c!123687 (validKeyInArray!0 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272918 () Bool)

(declare-fun contains!7690 (List!28721 (_ BitVec 64)) Bool)

(assert (=> b!1272918 (= e!726188 (contains!7690 Nil!28718 (select (arr!40192 (_keys!12113 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (= (and d!139859 (not res!846669)) b!1272916))

(assert (= (and b!1272916 res!846667) b!1272918))

(assert (= (and b!1272916 res!846668) b!1272917))

(assert (= (and b!1272917 c!123687) b!1272915))

(assert (= (and b!1272917 (not c!123687)) b!1272914))

(assert (= (or b!1272915 b!1272914) bm!62575))

(assert (=> b!1272916 m!1170333))

(assert (=> b!1272916 m!1170333))

(assert (=> b!1272916 m!1170341))

(assert (=> bm!62575 m!1170333))

(declare-fun m!1170349 () Bool)

(assert (=> bm!62575 m!1170349))

(assert (=> b!1272917 m!1170333))

(assert (=> b!1272917 m!1170333))

(assert (=> b!1272917 m!1170341))

(assert (=> b!1272918 m!1170333))

(assert (=> b!1272918 m!1170333))

(declare-fun m!1170351 () Bool)

(assert (=> b!1272918 m!1170351))

(assert (=> b!1272859 d!139859))

(declare-fun condMapEmpty!51207 () Bool)

(declare-fun mapDefault!51207 () ValueCell!15678)

(assert (=> mapNonEmpty!51206 (= condMapEmpty!51207 (= mapRest!51206 ((as const (Array (_ BitVec 32) ValueCell!15678)) mapDefault!51207)))))

(declare-fun e!726189 () Bool)

(declare-fun mapRes!51207 () Bool)

(assert (=> mapNonEmpty!51206 (= tp!97620 (and e!726189 mapRes!51207))))

(declare-fun b!1272919 () Bool)

(declare-fun e!726190 () Bool)

(assert (=> b!1272919 (= e!726190 tp_is_empty!33063)))

(declare-fun mapIsEmpty!51207 () Bool)

(assert (=> mapIsEmpty!51207 mapRes!51207))

(declare-fun b!1272920 () Bool)

(assert (=> b!1272920 (= e!726189 tp_is_empty!33063)))

(declare-fun mapNonEmpty!51207 () Bool)

(declare-fun tp!97621 () Bool)

(assert (=> mapNonEmpty!51207 (= mapRes!51207 (and tp!97621 e!726190))))

(declare-fun mapValue!51207 () ValueCell!15678)

(declare-fun mapRest!51207 () (Array (_ BitVec 32) ValueCell!15678))

(declare-fun mapKey!51207 () (_ BitVec 32))

(assert (=> mapNonEmpty!51207 (= mapRest!51206 (store mapRest!51207 mapKey!51207 mapValue!51207))))

(assert (= (and mapNonEmpty!51206 condMapEmpty!51207) mapIsEmpty!51207))

(assert (= (and mapNonEmpty!51206 (not condMapEmpty!51207)) mapNonEmpty!51207))

(assert (= (and mapNonEmpty!51207 ((_ is ValueCellFull!15678) mapValue!51207)) b!1272919))

(assert (= (and mapNonEmpty!51206 ((_ is ValueCellFull!15678) mapDefault!51207)) b!1272920))

(declare-fun m!1170353 () Bool)

(assert (=> mapNonEmpty!51207 m!1170353))

(check-sat (not mapNonEmpty!51207) (not bm!62569) (not b!1272891) (not b!1272917) (not bm!62572) (not b!1272901) tp_is_empty!33063 (not d!139857) (not bm!62575) (not b!1272916) (not b!1272902) (not b!1272918) (not b_next!27693) b_and!45759 (not b!1272876) (not b!1272879))
(check-sat b_and!45759 (not b_next!27693))
