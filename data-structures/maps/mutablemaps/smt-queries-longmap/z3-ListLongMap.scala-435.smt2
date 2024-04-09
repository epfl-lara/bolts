; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8208 () Bool)

(assert start!8208)

(declare-fun b!51869 () Bool)

(declare-fun b_free!1613 () Bool)

(declare-fun b_next!1613 () Bool)

(assert (=> b!51869 (= b_free!1613 (not b_next!1613))))

(declare-fun tp!6933 () Bool)

(declare-fun b_and!2833 () Bool)

(assert (=> b!51869 (= tp!6933 b_and!2833)))

(declare-fun b!51874 () Bool)

(declare-fun b_free!1615 () Bool)

(declare-fun b_next!1615 () Bool)

(assert (=> b!51874 (= b_free!1615 (not b_next!1615))))

(declare-fun tp!6935 () Bool)

(declare-fun b_and!2835 () Bool)

(assert (=> b!51874 (= tp!6935 b_and!2835)))

(declare-fun mapNonEmpty!2333 () Bool)

(declare-fun mapRes!2334 () Bool)

(declare-fun tp!6936 () Bool)

(declare-fun e!33661 () Bool)

(assert (=> mapNonEmpty!2333 (= mapRes!2334 (and tp!6936 e!33661))))

(declare-datatypes ((V!2611 0))(
  ( (V!2612 (val!1156 Int)) )
))
(declare-datatypes ((ValueCell!768 0))(
  ( (ValueCellFull!768 (v!2197 V!2611)) (EmptyCell!768) )
))
(declare-fun mapRest!2334 () (Array (_ BitVec 32) ValueCell!768))

(declare-fun mapKey!2333 () (_ BitVec 32))

(declare-fun mapValue!2333 () ValueCell!768)

(declare-datatypes ((array!3366 0))(
  ( (array!3367 (arr!1606 (Array (_ BitVec 32) (_ BitVec 64))) (size!1834 (_ BitVec 32))) )
))
(declare-datatypes ((array!3368 0))(
  ( (array!3369 (arr!1607 (Array (_ BitVec 32) ValueCell!768)) (size!1835 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!444 0))(
  ( (LongMapFixedSize!445 (defaultEntry!1936 Int) (mask!5750 (_ BitVec 32)) (extraKeys!1827 (_ BitVec 32)) (zeroValue!1854 V!2611) (minValue!1854 V!2611) (_size!271 (_ BitVec 32)) (_keys!3554 array!3366) (_values!1919 array!3368) (_vacant!271 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!262 0))(
  ( (Cell!263 (v!2198 LongMapFixedSize!444)) )
))
(declare-datatypes ((LongMap!262 0))(
  ( (LongMap!263 (underlying!142 Cell!262)) )
))
(declare-fun thiss!992 () LongMap!262)

(assert (=> mapNonEmpty!2333 (= (arr!1607 (_values!1919 (v!2198 (underlying!142 thiss!992)))) (store mapRest!2334 mapKey!2333 mapValue!2333))))

(declare-fun b!51861 () Bool)

(declare-fun res!29603 () Bool)

(declare-fun e!33668 () Bool)

(assert (=> b!51861 (=> (not res!29603) (not e!33668))))

(declare-fun newMap!16 () LongMapFixedSize!444)

(assert (=> b!51861 (= res!29603 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5750 newMap!16)) (_size!271 (v!2198 (underlying!142 thiss!992)))))))

(declare-fun mapNonEmpty!2334 () Bool)

(declare-fun mapRes!2333 () Bool)

(declare-fun tp!6934 () Bool)

(declare-fun e!33666 () Bool)

(assert (=> mapNonEmpty!2334 (= mapRes!2333 (and tp!6934 e!33666))))

(declare-fun mapRest!2333 () (Array (_ BitVec 32) ValueCell!768))

(declare-fun mapKey!2334 () (_ BitVec 32))

(declare-fun mapValue!2334 () ValueCell!768)

(assert (=> mapNonEmpty!2334 (= (arr!1607 (_values!1919 newMap!16)) (store mapRest!2333 mapKey!2334 mapValue!2334))))

(declare-fun b!51862 () Bool)

(declare-fun res!29606 () Bool)

(assert (=> b!51862 (=> (not res!29606) (not e!33668))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!51862 (= res!29606 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992)))))))))

(declare-fun b!51863 () Bool)

(declare-fun e!33664 () Bool)

(declare-fun tp_is_empty!2223 () Bool)

(assert (=> b!51863 (= e!33664 tp_is_empty!2223)))

(declare-fun b!51864 () Bool)

(declare-fun e!33670 () Bool)

(assert (=> b!51864 (= e!33670 (and e!33664 mapRes!2334))))

(declare-fun condMapEmpty!2334 () Bool)

(declare-fun mapDefault!2333 () ValueCell!768)

(assert (=> b!51864 (= condMapEmpty!2334 (= (arr!1607 (_values!1919 (v!2198 (underlying!142 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!768)) mapDefault!2333)))))

(declare-fun b!51865 () Bool)

(assert (=> b!51865 (= e!33661 tp_is_empty!2223)))

(declare-fun b!51866 () Bool)

(declare-fun res!29602 () Bool)

(assert (=> b!51866 (=> (not res!29602) (not e!33668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!51866 (= res!29602 (validMask!0 (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(declare-fun mapIsEmpty!2333 () Bool)

(assert (=> mapIsEmpty!2333 mapRes!2333))

(declare-fun res!29605 () Bool)

(assert (=> start!8208 (=> (not res!29605) (not e!33668))))

(declare-fun valid!153 (LongMap!262) Bool)

(assert (=> start!8208 (= res!29605 (valid!153 thiss!992))))

(assert (=> start!8208 e!33668))

(declare-fun e!33659 () Bool)

(assert (=> start!8208 e!33659))

(assert (=> start!8208 true))

(declare-fun e!33663 () Bool)

(assert (=> start!8208 e!33663))

(declare-fun b!51867 () Bool)

(assert (=> b!51867 (= e!33666 tp_is_empty!2223)))

(declare-fun mapIsEmpty!2334 () Bool)

(assert (=> mapIsEmpty!2334 mapRes!2334))

(declare-fun b!51868 () Bool)

(declare-fun e!33667 () Bool)

(assert (=> b!51868 (= e!33659 e!33667)))

(declare-fun e!33660 () Bool)

(declare-fun array_inv!935 (array!3366) Bool)

(declare-fun array_inv!936 (array!3368) Bool)

(assert (=> b!51869 (= e!33660 (and tp!6933 tp_is_empty!2223 (array_inv!935 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (array_inv!936 (_values!1919 (v!2198 (underlying!142 thiss!992)))) e!33670))))

(declare-fun b!51870 () Bool)

(declare-fun res!29600 () Bool)

(assert (=> b!51870 (=> (not res!29600) (not e!33668))))

(declare-fun valid!154 (LongMapFixedSize!444) Bool)

(assert (=> b!51870 (= res!29600 (valid!154 newMap!16))))

(declare-fun b!51871 () Bool)

(declare-fun res!29601 () Bool)

(assert (=> b!51871 (=> (not res!29601) (not e!33668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3366 (_ BitVec 32)) Bool)

(assert (=> b!51871 (= res!29601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(declare-fun b!51872 () Bool)

(declare-datatypes ((List!1354 0))(
  ( (Nil!1351) (Cons!1350 (h!1930 (_ BitVec 64)) (t!4396 List!1354)) )
))
(declare-fun arrayNoDuplicates!0 (array!3366 (_ BitVec 32) List!1354) Bool)

(assert (=> b!51872 (= e!33668 (not (arrayNoDuplicates!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000000 Nil!1351)))))

(declare-fun b!51873 () Bool)

(declare-fun e!33669 () Bool)

(declare-fun e!33665 () Bool)

(assert (=> b!51873 (= e!33669 (and e!33665 mapRes!2333))))

(declare-fun condMapEmpty!2333 () Bool)

(declare-fun mapDefault!2334 () ValueCell!768)

(assert (=> b!51873 (= condMapEmpty!2333 (= (arr!1607 (_values!1919 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!768)) mapDefault!2334)))))

(assert (=> b!51874 (= e!33663 (and tp!6935 tp_is_empty!2223 (array_inv!935 (_keys!3554 newMap!16)) (array_inv!936 (_values!1919 newMap!16)) e!33669))))

(declare-fun b!51875 () Bool)

(assert (=> b!51875 (= e!33665 tp_is_empty!2223)))

(declare-fun b!51876 () Bool)

(assert (=> b!51876 (= e!33667 e!33660)))

(declare-fun b!51877 () Bool)

(declare-fun res!29604 () Bool)

(assert (=> b!51877 (=> (not res!29604) (not e!33668))))

(assert (=> b!51877 (= res!29604 (and (= (size!1835 (_values!1919 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5750 (v!2198 (underlying!142 thiss!992))))) (= (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (size!1835 (_values!1919 (v!2198 (underlying!142 thiss!992))))) (bvsge (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1827 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1827 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000011)))))

(assert (= (and start!8208 res!29605) b!51862))

(assert (= (and b!51862 res!29606) b!51870))

(assert (= (and b!51870 res!29600) b!51861))

(assert (= (and b!51861 res!29603) b!51866))

(assert (= (and b!51866 res!29602) b!51877))

(assert (= (and b!51877 res!29604) b!51871))

(assert (= (and b!51871 res!29601) b!51872))

(assert (= (and b!51864 condMapEmpty!2334) mapIsEmpty!2334))

(assert (= (and b!51864 (not condMapEmpty!2334)) mapNonEmpty!2333))

(get-info :version)

(assert (= (and mapNonEmpty!2333 ((_ is ValueCellFull!768) mapValue!2333)) b!51865))

(assert (= (and b!51864 ((_ is ValueCellFull!768) mapDefault!2333)) b!51863))

(assert (= b!51869 b!51864))

(assert (= b!51876 b!51869))

(assert (= b!51868 b!51876))

(assert (= start!8208 b!51868))

(assert (= (and b!51873 condMapEmpty!2333) mapIsEmpty!2333))

(assert (= (and b!51873 (not condMapEmpty!2333)) mapNonEmpty!2334))

(assert (= (and mapNonEmpty!2334 ((_ is ValueCellFull!768) mapValue!2334)) b!51867))

(assert (= (and b!51873 ((_ is ValueCellFull!768) mapDefault!2334)) b!51875))

(assert (= b!51874 b!51873))

(assert (= start!8208 b!51874))

(declare-fun m!44573 () Bool)

(assert (=> mapNonEmpty!2334 m!44573))

(declare-fun m!44575 () Bool)

(assert (=> b!51869 m!44575))

(declare-fun m!44577 () Bool)

(assert (=> b!51869 m!44577))

(declare-fun m!44579 () Bool)

(assert (=> start!8208 m!44579))

(declare-fun m!44581 () Bool)

(assert (=> b!51870 m!44581))

(declare-fun m!44583 () Bool)

(assert (=> b!51874 m!44583))

(declare-fun m!44585 () Bool)

(assert (=> b!51874 m!44585))

(declare-fun m!44587 () Bool)

(assert (=> b!51866 m!44587))

(declare-fun m!44589 () Bool)

(assert (=> b!51872 m!44589))

(declare-fun m!44591 () Bool)

(assert (=> mapNonEmpty!2333 m!44591))

(declare-fun m!44593 () Bool)

(assert (=> b!51871 m!44593))

(check-sat (not start!8208) (not b!51874) b_and!2835 b_and!2833 (not mapNonEmpty!2334) (not mapNonEmpty!2333) (not b!51872) (not b!51871) (not b_next!1613) tp_is_empty!2223 (not b!51870) (not b!51869) (not b!51866) (not b_next!1615))
(check-sat b_and!2833 b_and!2835 (not b_next!1613) (not b_next!1615))
(get-model)

(declare-fun b!51939 () Bool)

(declare-fun e!33720 () Bool)

(declare-fun e!33719 () Bool)

(assert (=> b!51939 (= e!33720 e!33719)))

(declare-fun c!6948 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!51939 (= c!6948 (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51940 () Bool)

(declare-fun e!33722 () Bool)

(declare-fun contains!625 (List!1354 (_ BitVec 64)) Bool)

(assert (=> b!51940 (= e!33722 (contains!625 Nil!1351 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!3959 () Bool)

(declare-fun call!3962 () Bool)

(assert (=> bm!3959 (= call!3962 (arrayNoDuplicates!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6948 (Cons!1350 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) Nil!1351) Nil!1351)))))

(declare-fun b!51941 () Bool)

(assert (=> b!51941 (= e!33719 call!3962)))

(declare-fun b!51942 () Bool)

(declare-fun e!33721 () Bool)

(assert (=> b!51942 (= e!33721 e!33720)))

(declare-fun res!29634 () Bool)

(assert (=> b!51942 (=> (not res!29634) (not e!33720))))

(assert (=> b!51942 (= res!29634 (not e!33722))))

(declare-fun res!29636 () Bool)

(assert (=> b!51942 (=> (not res!29636) (not e!33722))))

(assert (=> b!51942 (= res!29636 (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51943 () Bool)

(assert (=> b!51943 (= e!33719 call!3962)))

(declare-fun d!10435 () Bool)

(declare-fun res!29635 () Bool)

(assert (=> d!10435 (=> res!29635 e!33721)))

(assert (=> d!10435 (= res!29635 (bvsge #b00000000000000000000000000000000 (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))))

(assert (=> d!10435 (= (arrayNoDuplicates!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000000 Nil!1351) e!33721)))

(assert (= (and d!10435 (not res!29635)) b!51942))

(assert (= (and b!51942 res!29636) b!51940))

(assert (= (and b!51942 res!29634) b!51939))

(assert (= (and b!51939 c!6948) b!51941))

(assert (= (and b!51939 (not c!6948)) b!51943))

(assert (= (or b!51941 b!51943) bm!3959))

(declare-fun m!44617 () Bool)

(assert (=> b!51939 m!44617))

(assert (=> b!51939 m!44617))

(declare-fun m!44619 () Bool)

(assert (=> b!51939 m!44619))

(assert (=> b!51940 m!44617))

(assert (=> b!51940 m!44617))

(declare-fun m!44621 () Bool)

(assert (=> b!51940 m!44621))

(assert (=> bm!3959 m!44617))

(declare-fun m!44623 () Bool)

(assert (=> bm!3959 m!44623))

(assert (=> b!51942 m!44617))

(assert (=> b!51942 m!44617))

(assert (=> b!51942 m!44619))

(assert (=> b!51872 d!10435))

(declare-fun d!10437 () Bool)

(assert (=> d!10437 (= (array_inv!935 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvsge (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51869 d!10437))

(declare-fun d!10439 () Bool)

(assert (=> d!10439 (= (array_inv!936 (_values!1919 (v!2198 (underlying!142 thiss!992)))) (bvsge (size!1835 (_values!1919 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51869 d!10439))

(declare-fun d!10441 () Bool)

(assert (=> d!10441 (= (array_inv!935 (_keys!3554 newMap!16)) (bvsge (size!1834 (_keys!3554 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51874 d!10441))

(declare-fun d!10443 () Bool)

(assert (=> d!10443 (= (array_inv!936 (_values!1919 newMap!16)) (bvsge (size!1835 (_values!1919 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51874 d!10443))

(declare-fun d!10445 () Bool)

(assert (=> d!10445 (= (validMask!0 (mask!5750 (v!2198 (underlying!142 thiss!992)))) (and (or (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000001111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000011111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000001111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000011111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000001111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000011111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000001111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000011111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000000111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000001111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000011111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000000111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000001111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000011111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000000111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000001111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000011111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000000111111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000001111111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000011111111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00000111111111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00001111111111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00011111111111111111111111111111) (= (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5750 (v!2198 (underlying!142 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!51866 d!10445))

(declare-fun d!10447 () Bool)

(assert (=> d!10447 (= (valid!153 thiss!992) (valid!154 (v!2198 (underlying!142 thiss!992))))))

(declare-fun bs!2387 () Bool)

(assert (= bs!2387 d!10447))

(declare-fun m!44625 () Bool)

(assert (=> bs!2387 m!44625))

(assert (=> start!8208 d!10447))

(declare-fun d!10449 () Bool)

(declare-fun res!29643 () Bool)

(declare-fun e!33725 () Bool)

(assert (=> d!10449 (=> (not res!29643) (not e!33725))))

(declare-fun simpleValid!38 (LongMapFixedSize!444) Bool)

(assert (=> d!10449 (= res!29643 (simpleValid!38 newMap!16))))

(assert (=> d!10449 (= (valid!154 newMap!16) e!33725)))

(declare-fun b!51950 () Bool)

(declare-fun res!29644 () Bool)

(assert (=> b!51950 (=> (not res!29644) (not e!33725))))

(declare-fun arrayCountValidKeys!0 (array!3366 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!51950 (= res!29644 (= (arrayCountValidKeys!0 (_keys!3554 newMap!16) #b00000000000000000000000000000000 (size!1834 (_keys!3554 newMap!16))) (_size!271 newMap!16)))))

(declare-fun b!51951 () Bool)

(declare-fun res!29645 () Bool)

(assert (=> b!51951 (=> (not res!29645) (not e!33725))))

(assert (=> b!51951 (= res!29645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3554 newMap!16) (mask!5750 newMap!16)))))

(declare-fun b!51952 () Bool)

(assert (=> b!51952 (= e!33725 (arrayNoDuplicates!0 (_keys!3554 newMap!16) #b00000000000000000000000000000000 Nil!1351))))

(assert (= (and d!10449 res!29643) b!51950))

(assert (= (and b!51950 res!29644) b!51951))

(assert (= (and b!51951 res!29645) b!51952))

(declare-fun m!44627 () Bool)

(assert (=> d!10449 m!44627))

(declare-fun m!44629 () Bool)

(assert (=> b!51950 m!44629))

(declare-fun m!44631 () Bool)

(assert (=> b!51951 m!44631))

(declare-fun m!44633 () Bool)

(assert (=> b!51952 m!44633))

(assert (=> b!51870 d!10449))

(declare-fun b!51961 () Bool)

(declare-fun e!33733 () Bool)

(declare-fun call!3965 () Bool)

(assert (=> b!51961 (= e!33733 call!3965)))

(declare-fun b!51962 () Bool)

(declare-fun e!33732 () Bool)

(assert (=> b!51962 (= e!33732 e!33733)))

(declare-fun c!6951 () Bool)

(assert (=> b!51962 (= c!6951 (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51963 () Bool)

(declare-fun e!33734 () Bool)

(assert (=> b!51963 (= e!33734 call!3965)))

(declare-fun d!10451 () Bool)

(declare-fun res!29651 () Bool)

(assert (=> d!10451 (=> res!29651 e!33732)))

(assert (=> d!10451 (= res!29651 (bvsge #b00000000000000000000000000000000 (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))))

(assert (=> d!10451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))) e!33732)))

(declare-fun b!51964 () Bool)

(assert (=> b!51964 (= e!33733 e!33734)))

(declare-fun lt!21238 () (_ BitVec 64))

(assert (=> b!51964 (= lt!21238 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1430 0))(
  ( (Unit!1431) )
))
(declare-fun lt!21236 () Unit!1430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3366 (_ BitVec 64) (_ BitVec 32)) Unit!1430)

(assert (=> b!51964 (= lt!21236 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!51964 (arrayContainsKey!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 #b00000000000000000000000000000000)))

(declare-fun lt!21237 () Unit!1430)

(assert (=> b!51964 (= lt!21237 lt!21236)))

(declare-fun res!29650 () Bool)

(declare-datatypes ((SeekEntryResult!234 0))(
  ( (MissingZero!234 (index!3058 (_ BitVec 32))) (Found!234 (index!3059 (_ BitVec 32))) (Intermediate!234 (undefined!1046 Bool) (index!3060 (_ BitVec 32)) (x!9434 (_ BitVec 32))) (Undefined!234) (MissingVacant!234 (index!3061 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3366 (_ BitVec 32)) SeekEntryResult!234)

(assert (=> b!51964 (= res!29650 (= (seekEntryOrOpen!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))) (Found!234 #b00000000000000000000000000000000)))))

(assert (=> b!51964 (=> (not res!29650) (not e!33734))))

(declare-fun bm!3962 () Bool)

(assert (=> bm!3962 (= call!3965 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(assert (= (and d!10451 (not res!29651)) b!51962))

(assert (= (and b!51962 c!6951) b!51964))

(assert (= (and b!51962 (not c!6951)) b!51961))

(assert (= (and b!51964 res!29650) b!51963))

(assert (= (or b!51963 b!51961) bm!3962))

(assert (=> b!51962 m!44617))

(assert (=> b!51962 m!44617))

(assert (=> b!51962 m!44619))

(assert (=> b!51964 m!44617))

(declare-fun m!44635 () Bool)

(assert (=> b!51964 m!44635))

(declare-fun m!44637 () Bool)

(assert (=> b!51964 m!44637))

(assert (=> b!51964 m!44617))

(declare-fun m!44639 () Bool)

(assert (=> b!51964 m!44639))

(declare-fun m!44641 () Bool)

(assert (=> bm!3962 m!44641))

(assert (=> b!51871 d!10451))

(declare-fun b!51972 () Bool)

(declare-fun e!33740 () Bool)

(assert (=> b!51972 (= e!33740 tp_is_empty!2223)))

(declare-fun mapIsEmpty!2343 () Bool)

(declare-fun mapRes!2343 () Bool)

(assert (=> mapIsEmpty!2343 mapRes!2343))

(declare-fun condMapEmpty!2343 () Bool)

(declare-fun mapDefault!2343 () ValueCell!768)

(assert (=> mapNonEmpty!2333 (= condMapEmpty!2343 (= mapRest!2334 ((as const (Array (_ BitVec 32) ValueCell!768)) mapDefault!2343)))))

(assert (=> mapNonEmpty!2333 (= tp!6936 (and e!33740 mapRes!2343))))

(declare-fun b!51971 () Bool)

(declare-fun e!33739 () Bool)

(assert (=> b!51971 (= e!33739 tp_is_empty!2223)))

(declare-fun mapNonEmpty!2343 () Bool)

(declare-fun tp!6951 () Bool)

(assert (=> mapNonEmpty!2343 (= mapRes!2343 (and tp!6951 e!33739))))

(declare-fun mapRest!2343 () (Array (_ BitVec 32) ValueCell!768))

(declare-fun mapValue!2343 () ValueCell!768)

(declare-fun mapKey!2343 () (_ BitVec 32))

(assert (=> mapNonEmpty!2343 (= mapRest!2334 (store mapRest!2343 mapKey!2343 mapValue!2343))))

(assert (= (and mapNonEmpty!2333 condMapEmpty!2343) mapIsEmpty!2343))

(assert (= (and mapNonEmpty!2333 (not condMapEmpty!2343)) mapNonEmpty!2343))

(assert (= (and mapNonEmpty!2343 ((_ is ValueCellFull!768) mapValue!2343)) b!51971))

(assert (= (and mapNonEmpty!2333 ((_ is ValueCellFull!768) mapDefault!2343)) b!51972))

(declare-fun m!44643 () Bool)

(assert (=> mapNonEmpty!2343 m!44643))

(declare-fun b!51974 () Bool)

(declare-fun e!33742 () Bool)

(assert (=> b!51974 (= e!33742 tp_is_empty!2223)))

(declare-fun mapIsEmpty!2344 () Bool)

(declare-fun mapRes!2344 () Bool)

(assert (=> mapIsEmpty!2344 mapRes!2344))

(declare-fun condMapEmpty!2344 () Bool)

(declare-fun mapDefault!2344 () ValueCell!768)

(assert (=> mapNonEmpty!2334 (= condMapEmpty!2344 (= mapRest!2333 ((as const (Array (_ BitVec 32) ValueCell!768)) mapDefault!2344)))))

(assert (=> mapNonEmpty!2334 (= tp!6934 (and e!33742 mapRes!2344))))

(declare-fun b!51973 () Bool)

(declare-fun e!33741 () Bool)

(assert (=> b!51973 (= e!33741 tp_is_empty!2223)))

(declare-fun mapNonEmpty!2344 () Bool)

(declare-fun tp!6952 () Bool)

(assert (=> mapNonEmpty!2344 (= mapRes!2344 (and tp!6952 e!33741))))

(declare-fun mapKey!2344 () (_ BitVec 32))

(declare-fun mapRest!2344 () (Array (_ BitVec 32) ValueCell!768))

(declare-fun mapValue!2344 () ValueCell!768)

(assert (=> mapNonEmpty!2344 (= mapRest!2333 (store mapRest!2344 mapKey!2344 mapValue!2344))))

(assert (= (and mapNonEmpty!2334 condMapEmpty!2344) mapIsEmpty!2344))

(assert (= (and mapNonEmpty!2334 (not condMapEmpty!2344)) mapNonEmpty!2344))

(assert (= (and mapNonEmpty!2344 ((_ is ValueCellFull!768) mapValue!2344)) b!51973))

(assert (= (and mapNonEmpty!2334 ((_ is ValueCellFull!768) mapDefault!2344)) b!51974))

(declare-fun m!44645 () Bool)

(assert (=> mapNonEmpty!2344 m!44645))

(check-sat (not bm!3959) (not bm!3962) (not b!51942) b_and!2835 (not mapNonEmpty!2343) b_and!2833 (not b!51952) (not b_next!1613) (not d!10447) (not b!51951) (not b!51964) (not mapNonEmpty!2344) (not b!51939) (not d!10449) (not b_next!1615) (not b!51950) (not b!51940) tp_is_empty!2223 (not b!51962))
(check-sat b_and!2833 b_and!2835 (not b_next!1613) (not b_next!1615))
(get-model)

(declare-fun d!10453 () Bool)

(assert (=> d!10453 (arrayContainsKey!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 #b00000000000000000000000000000000)))

(declare-fun lt!21241 () Unit!1430)

(declare-fun choose!13 (array!3366 (_ BitVec 64) (_ BitVec 32)) Unit!1430)

(assert (=> d!10453 (= lt!21241 (choose!13 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 #b00000000000000000000000000000000))))

(assert (=> d!10453 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10453 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 #b00000000000000000000000000000000) lt!21241)))

(declare-fun bs!2388 () Bool)

(assert (= bs!2388 d!10453))

(assert (=> bs!2388 m!44637))

(declare-fun m!44647 () Bool)

(assert (=> bs!2388 m!44647))

(assert (=> b!51964 d!10453))

(declare-fun d!10455 () Bool)

(declare-fun res!29656 () Bool)

(declare-fun e!33747 () Bool)

(assert (=> d!10455 (=> res!29656 e!33747)))

(assert (=> d!10455 (= res!29656 (= (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) lt!21238))))

(assert (=> d!10455 (= (arrayContainsKey!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 #b00000000000000000000000000000000) e!33747)))

(declare-fun b!51979 () Bool)

(declare-fun e!33748 () Bool)

(assert (=> b!51979 (= e!33747 e!33748)))

(declare-fun res!29657 () Bool)

(assert (=> b!51979 (=> (not res!29657) (not e!33748))))

(assert (=> b!51979 (= res!29657 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))))

(declare-fun b!51980 () Bool)

(assert (=> b!51980 (= e!33748 (arrayContainsKey!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21238 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10455 (not res!29656)) b!51979))

(assert (= (and b!51979 res!29657) b!51980))

(assert (=> d!10455 m!44617))

(declare-fun m!44649 () Bool)

(assert (=> b!51980 m!44649))

(assert (=> b!51964 d!10455))

(declare-fun b!51993 () Bool)

(declare-fun e!33755 () SeekEntryResult!234)

(assert (=> b!51993 (= e!33755 Undefined!234)))

(declare-fun b!51994 () Bool)

(declare-fun e!33756 () SeekEntryResult!234)

(declare-fun lt!21248 () SeekEntryResult!234)

(assert (=> b!51994 (= e!33756 (MissingZero!234 (index!3060 lt!21248)))))

(declare-fun d!10457 () Bool)

(declare-fun lt!21250 () SeekEntryResult!234)

(assert (=> d!10457 (and (or ((_ is Undefined!234) lt!21250) (not ((_ is Found!234) lt!21250)) (and (bvsge (index!3059 lt!21250) #b00000000000000000000000000000000) (bvslt (index!3059 lt!21250) (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))) (or ((_ is Undefined!234) lt!21250) ((_ is Found!234) lt!21250) (not ((_ is MissingZero!234) lt!21250)) (and (bvsge (index!3058 lt!21250) #b00000000000000000000000000000000) (bvslt (index!3058 lt!21250) (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))) (or ((_ is Undefined!234) lt!21250) ((_ is Found!234) lt!21250) ((_ is MissingZero!234) lt!21250) (not ((_ is MissingVacant!234) lt!21250)) (and (bvsge (index!3061 lt!21250) #b00000000000000000000000000000000) (bvslt (index!3061 lt!21250) (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))) (or ((_ is Undefined!234) lt!21250) (ite ((_ is Found!234) lt!21250) (= (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (index!3059 lt!21250)) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!234) lt!21250) (= (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (index!3058 lt!21250)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!234) lt!21250) (= (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (index!3061 lt!21250)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10457 (= lt!21250 e!33755)))

(declare-fun c!6959 () Bool)

(assert (=> d!10457 (= c!6959 (and ((_ is Intermediate!234) lt!21248) (undefined!1046 lt!21248)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3366 (_ BitVec 32)) SeekEntryResult!234)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10457 (= lt!21248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) (mask!5750 (v!2198 (underlying!142 thiss!992)))) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(assert (=> d!10457 (validMask!0 (mask!5750 (v!2198 (underlying!142 thiss!992))))))

(assert (=> d!10457 (= (seekEntryOrOpen!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))) lt!21250)))

(declare-fun b!51995 () Bool)

(declare-fun e!33757 () SeekEntryResult!234)

(assert (=> b!51995 (= e!33757 (Found!234 (index!3060 lt!21248)))))

(declare-fun b!51996 () Bool)

(assert (=> b!51996 (= e!33755 e!33757)))

(declare-fun lt!21249 () (_ BitVec 64))

(assert (=> b!51996 (= lt!21249 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (index!3060 lt!21248)))))

(declare-fun c!6958 () Bool)

(assert (=> b!51996 (= c!6958 (= lt!21249 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51997 () Bool)

(declare-fun c!6960 () Bool)

(assert (=> b!51997 (= c!6960 (= lt!21249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!51997 (= e!33757 e!33756)))

(declare-fun b!51998 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3366 (_ BitVec 32)) SeekEntryResult!234)

(assert (=> b!51998 (= e!33756 (seekKeyOrZeroReturnVacant!0 (x!9434 lt!21248) (index!3060 lt!21248) (index!3060 lt!21248) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(assert (= (and d!10457 c!6959) b!51993))

(assert (= (and d!10457 (not c!6959)) b!51996))

(assert (= (and b!51996 c!6958) b!51995))

(assert (= (and b!51996 (not c!6958)) b!51997))

(assert (= (and b!51997 c!6960) b!51994))

(assert (= (and b!51997 (not c!6960)) b!51998))

(declare-fun m!44651 () Bool)

(assert (=> d!10457 m!44651))

(declare-fun m!44653 () Bool)

(assert (=> d!10457 m!44653))

(assert (=> d!10457 m!44587))

(assert (=> d!10457 m!44617))

(declare-fun m!44655 () Bool)

(assert (=> d!10457 m!44655))

(assert (=> d!10457 m!44655))

(assert (=> d!10457 m!44617))

(declare-fun m!44657 () Bool)

(assert (=> d!10457 m!44657))

(declare-fun m!44659 () Bool)

(assert (=> d!10457 m!44659))

(declare-fun m!44661 () Bool)

(assert (=> b!51996 m!44661))

(assert (=> b!51998 m!44617))

(declare-fun m!44663 () Bool)

(assert (=> b!51998 m!44663))

(assert (=> b!51964 d!10457))

(declare-fun b!51999 () Bool)

(declare-fun e!33759 () Bool)

(declare-fun call!3966 () Bool)

(assert (=> b!51999 (= e!33759 call!3966)))

(declare-fun b!52000 () Bool)

(declare-fun e!33758 () Bool)

(assert (=> b!52000 (= e!33758 e!33759)))

(declare-fun c!6961 () Bool)

(assert (=> b!52000 (= c!6961 (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!52001 () Bool)

(declare-fun e!33760 () Bool)

(assert (=> b!52001 (= e!33760 call!3966)))

(declare-fun d!10459 () Bool)

(declare-fun res!29659 () Bool)

(assert (=> d!10459 (=> res!29659 e!33758)))

(assert (=> d!10459 (= res!29659 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))))

(assert (=> d!10459 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))) e!33758)))

(declare-fun b!52002 () Bool)

(assert (=> b!52002 (= e!33759 e!33760)))

(declare-fun lt!21253 () (_ BitVec 64))

(assert (=> b!52002 (= lt!21253 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21251 () Unit!1430)

(assert (=> b!52002 (= lt!21251 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21253 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!52002 (arrayContainsKey!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) lt!21253 #b00000000000000000000000000000000)))

(declare-fun lt!21252 () Unit!1430)

(assert (=> b!52002 (= lt!21252 lt!21251)))

(declare-fun res!29658 () Bool)

(assert (=> b!52002 (= res!29658 (= (seekEntryOrOpen!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))) (Found!234 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!52002 (=> (not res!29658) (not e!33760))))

(declare-fun bm!3963 () Bool)

(assert (=> bm!3963 (= call!3966 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(assert (= (and d!10459 (not res!29659)) b!52000))

(assert (= (and b!52000 c!6961) b!52002))

(assert (= (and b!52000 (not c!6961)) b!51999))

(assert (= (and b!52002 res!29658) b!52001))

(assert (= (or b!52001 b!51999) bm!3963))

(declare-fun m!44665 () Bool)

(assert (=> b!52000 m!44665))

(assert (=> b!52000 m!44665))

(declare-fun m!44667 () Bool)

(assert (=> b!52000 m!44667))

(assert (=> b!52002 m!44665))

(declare-fun m!44669 () Bool)

(assert (=> b!52002 m!44669))

(declare-fun m!44671 () Bool)

(assert (=> b!52002 m!44671))

(assert (=> b!52002 m!44665))

(declare-fun m!44673 () Bool)

(assert (=> b!52002 m!44673))

(declare-fun m!44675 () Bool)

(assert (=> bm!3963 m!44675))

(assert (=> bm!3962 d!10459))

(declare-fun b!52011 () Bool)

(declare-fun res!29671 () Bool)

(declare-fun e!33763 () Bool)

(assert (=> b!52011 (=> (not res!29671) (not e!33763))))

(assert (=> b!52011 (= res!29671 (and (= (size!1835 (_values!1919 newMap!16)) (bvadd (mask!5750 newMap!16) #b00000000000000000000000000000001)) (= (size!1834 (_keys!3554 newMap!16)) (size!1835 (_values!1919 newMap!16))) (bvsge (_size!271 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!271 newMap!16) (bvadd (mask!5750 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!52013 () Bool)

(declare-fun res!29669 () Bool)

(assert (=> b!52013 (=> (not res!29669) (not e!33763))))

(declare-fun size!1838 (LongMapFixedSize!444) (_ BitVec 32))

(assert (=> b!52013 (= res!29669 (= (size!1838 newMap!16) (bvadd (_size!271 newMap!16) (bvsdiv (bvadd (extraKeys!1827 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!10461 () Bool)

(declare-fun res!29670 () Bool)

(assert (=> d!10461 (=> (not res!29670) (not e!33763))))

(assert (=> d!10461 (= res!29670 (validMask!0 (mask!5750 newMap!16)))))

(assert (=> d!10461 (= (simpleValid!38 newMap!16) e!33763)))

(declare-fun b!52014 () Bool)

(assert (=> b!52014 (= e!33763 (and (bvsge (extraKeys!1827 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1827 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!271 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!52012 () Bool)

(declare-fun res!29668 () Bool)

(assert (=> b!52012 (=> (not res!29668) (not e!33763))))

(assert (=> b!52012 (= res!29668 (bvsge (size!1838 newMap!16) (_size!271 newMap!16)))))

(assert (= (and d!10461 res!29670) b!52011))

(assert (= (and b!52011 res!29671) b!52012))

(assert (= (and b!52012 res!29668) b!52013))

(assert (= (and b!52013 res!29669) b!52014))

(declare-fun m!44677 () Bool)

(assert (=> b!52013 m!44677))

(declare-fun m!44679 () Bool)

(assert (=> d!10461 m!44679))

(assert (=> b!52012 m!44677))

(assert (=> d!10449 d!10461))

(declare-fun d!10463 () Bool)

(assert (=> d!10463 (= (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!51962 d!10463))

(assert (=> b!51942 d!10463))

(assert (=> b!51939 d!10463))

(declare-fun d!10465 () Bool)

(declare-fun lt!21256 () (_ BitVec 32))

(assert (=> d!10465 (and (bvsge lt!21256 #b00000000000000000000000000000000) (bvsle lt!21256 (bvsub (size!1834 (_keys!3554 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!33769 () (_ BitVec 32))

(assert (=> d!10465 (= lt!21256 e!33769)))

(declare-fun c!6967 () Bool)

(assert (=> d!10465 (= c!6967 (bvsge #b00000000000000000000000000000000 (size!1834 (_keys!3554 newMap!16))))))

(assert (=> d!10465 (and (bvsle #b00000000000000000000000000000000 (size!1834 (_keys!3554 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1834 (_keys!3554 newMap!16)) (size!1834 (_keys!3554 newMap!16))))))

(assert (=> d!10465 (= (arrayCountValidKeys!0 (_keys!3554 newMap!16) #b00000000000000000000000000000000 (size!1834 (_keys!3554 newMap!16))) lt!21256)))

(declare-fun b!52023 () Bool)

(assert (=> b!52023 (= e!33769 #b00000000000000000000000000000000)))

(declare-fun b!52024 () Bool)

(declare-fun e!33768 () (_ BitVec 32))

(declare-fun call!3969 () (_ BitVec 32))

(assert (=> b!52024 (= e!33768 call!3969)))

(declare-fun b!52025 () Bool)

(assert (=> b!52025 (= e!33769 e!33768)))

(declare-fun c!6966 () Bool)

(assert (=> b!52025 (= c!6966 (validKeyInArray!0 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!3966 () Bool)

(assert (=> bm!3966 (= call!3969 (arrayCountValidKeys!0 (_keys!3554 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1834 (_keys!3554 newMap!16))))))

(declare-fun b!52026 () Bool)

(assert (=> b!52026 (= e!33768 (bvadd #b00000000000000000000000000000001 call!3969))))

(assert (= (and d!10465 c!6967) b!52023))

(assert (= (and d!10465 (not c!6967)) b!52025))

(assert (= (and b!52025 c!6966) b!52026))

(assert (= (and b!52025 (not c!6966)) b!52024))

(assert (= (or b!52026 b!52024) bm!3966))

(declare-fun m!44681 () Bool)

(assert (=> b!52025 m!44681))

(assert (=> b!52025 m!44681))

(declare-fun m!44683 () Bool)

(assert (=> b!52025 m!44683))

(declare-fun m!44685 () Bool)

(assert (=> bm!3966 m!44685))

(assert (=> b!51950 d!10465))

(declare-fun b!52027 () Bool)

(declare-fun e!33771 () Bool)

(declare-fun call!3970 () Bool)

(assert (=> b!52027 (= e!33771 call!3970)))

(declare-fun b!52028 () Bool)

(declare-fun e!33770 () Bool)

(assert (=> b!52028 (= e!33770 e!33771)))

(declare-fun c!6968 () Bool)

(assert (=> b!52028 (= c!6968 (validKeyInArray!0 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!52029 () Bool)

(declare-fun e!33772 () Bool)

(assert (=> b!52029 (= e!33772 call!3970)))

(declare-fun d!10467 () Bool)

(declare-fun res!29673 () Bool)

(assert (=> d!10467 (=> res!29673 e!33770)))

(assert (=> d!10467 (= res!29673 (bvsge #b00000000000000000000000000000000 (size!1834 (_keys!3554 newMap!16))))))

(assert (=> d!10467 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3554 newMap!16) (mask!5750 newMap!16)) e!33770)))

(declare-fun b!52030 () Bool)

(assert (=> b!52030 (= e!33771 e!33772)))

(declare-fun lt!21259 () (_ BitVec 64))

(assert (=> b!52030 (= lt!21259 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!21257 () Unit!1430)

(assert (=> b!52030 (= lt!21257 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3554 newMap!16) lt!21259 #b00000000000000000000000000000000))))

(assert (=> b!52030 (arrayContainsKey!0 (_keys!3554 newMap!16) lt!21259 #b00000000000000000000000000000000)))

(declare-fun lt!21258 () Unit!1430)

(assert (=> b!52030 (= lt!21258 lt!21257)))

(declare-fun res!29672 () Bool)

(assert (=> b!52030 (= res!29672 (= (seekEntryOrOpen!0 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000) (_keys!3554 newMap!16) (mask!5750 newMap!16)) (Found!234 #b00000000000000000000000000000000)))))

(assert (=> b!52030 (=> (not res!29672) (not e!33772))))

(declare-fun bm!3967 () Bool)

(assert (=> bm!3967 (= call!3970 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3554 newMap!16) (mask!5750 newMap!16)))))

(assert (= (and d!10467 (not res!29673)) b!52028))

(assert (= (and b!52028 c!6968) b!52030))

(assert (= (and b!52028 (not c!6968)) b!52027))

(assert (= (and b!52030 res!29672) b!52029))

(assert (= (or b!52029 b!52027) bm!3967))

(assert (=> b!52028 m!44681))

(assert (=> b!52028 m!44681))

(assert (=> b!52028 m!44683))

(assert (=> b!52030 m!44681))

(declare-fun m!44687 () Bool)

(assert (=> b!52030 m!44687))

(declare-fun m!44689 () Bool)

(assert (=> b!52030 m!44689))

(assert (=> b!52030 m!44681))

(declare-fun m!44691 () Bool)

(assert (=> b!52030 m!44691))

(declare-fun m!44693 () Bool)

(assert (=> bm!3967 m!44693))

(assert (=> b!51951 d!10467))

(declare-fun d!10469 () Bool)

(declare-fun lt!21262 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!59 (List!1354) (InoxSet (_ BitVec 64)))

(assert (=> d!10469 (= lt!21262 (select (content!59 Nil!1351) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!33778 () Bool)

(assert (=> d!10469 (= lt!21262 e!33778)))

(declare-fun res!29679 () Bool)

(assert (=> d!10469 (=> (not res!29679) (not e!33778))))

(assert (=> d!10469 (= res!29679 ((_ is Cons!1350) Nil!1351))))

(assert (=> d!10469 (= (contains!625 Nil!1351 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)) lt!21262)))

(declare-fun b!52035 () Bool)

(declare-fun e!33777 () Bool)

(assert (=> b!52035 (= e!33778 e!33777)))

(declare-fun res!29678 () Bool)

(assert (=> b!52035 (=> res!29678 e!33777)))

(assert (=> b!52035 (= res!29678 (= (h!1930 Nil!1351) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!52036 () Bool)

(assert (=> b!52036 (= e!33777 (contains!625 (t!4396 Nil!1351) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!10469 res!29679) b!52035))

(assert (= (and b!52035 (not res!29678)) b!52036))

(declare-fun m!44695 () Bool)

(assert (=> d!10469 m!44695))

(assert (=> d!10469 m!44617))

(declare-fun m!44697 () Bool)

(assert (=> d!10469 m!44697))

(assert (=> b!52036 m!44617))

(declare-fun m!44699 () Bool)

(assert (=> b!52036 m!44699))

(assert (=> b!51940 d!10469))

(declare-fun b!52037 () Bool)

(declare-fun e!33780 () Bool)

(declare-fun e!33779 () Bool)

(assert (=> b!52037 (= e!33780 e!33779)))

(declare-fun c!6969 () Bool)

(assert (=> b!52037 (= c!6969 (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!52038 () Bool)

(declare-fun e!33782 () Bool)

(assert (=> b!52038 (= e!33782 (contains!625 (ite c!6948 (Cons!1350 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) Nil!1351) Nil!1351) (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3968 () Bool)

(declare-fun call!3971 () Bool)

(assert (=> bm!3968 (= call!3971 (arrayNoDuplicates!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6969 (Cons!1350 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!6948 (Cons!1350 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) Nil!1351) Nil!1351)) (ite c!6948 (Cons!1350 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) Nil!1351) Nil!1351))))))

(declare-fun b!52039 () Bool)

(assert (=> b!52039 (= e!33779 call!3971)))

(declare-fun b!52040 () Bool)

(declare-fun e!33781 () Bool)

(assert (=> b!52040 (= e!33781 e!33780)))

(declare-fun res!29680 () Bool)

(assert (=> b!52040 (=> (not res!29680) (not e!33780))))

(assert (=> b!52040 (= res!29680 (not e!33782))))

(declare-fun res!29682 () Bool)

(assert (=> b!52040 (=> (not res!29682) (not e!33782))))

(assert (=> b!52040 (= res!29682 (validKeyInArray!0 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!52041 () Bool)

(assert (=> b!52041 (= e!33779 call!3971)))

(declare-fun d!10471 () Bool)

(declare-fun res!29681 () Bool)

(assert (=> d!10471 (=> res!29681 e!33781)))

(assert (=> d!10471 (= res!29681 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))))))

(assert (=> d!10471 (= (arrayNoDuplicates!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6948 (Cons!1350 (select (arr!1606 (_keys!3554 (v!2198 (underlying!142 thiss!992)))) #b00000000000000000000000000000000) Nil!1351) Nil!1351)) e!33781)))

(assert (= (and d!10471 (not res!29681)) b!52040))

(assert (= (and b!52040 res!29682) b!52038))

(assert (= (and b!52040 res!29680) b!52037))

(assert (= (and b!52037 c!6969) b!52039))

(assert (= (and b!52037 (not c!6969)) b!52041))

(assert (= (or b!52039 b!52041) bm!3968))

(assert (=> b!52037 m!44665))

(assert (=> b!52037 m!44665))

(assert (=> b!52037 m!44667))

(assert (=> b!52038 m!44665))

(assert (=> b!52038 m!44665))

(declare-fun m!44701 () Bool)

(assert (=> b!52038 m!44701))

(assert (=> bm!3968 m!44665))

(declare-fun m!44703 () Bool)

(assert (=> bm!3968 m!44703))

(assert (=> b!52040 m!44665))

(assert (=> b!52040 m!44665))

(assert (=> b!52040 m!44667))

(assert (=> bm!3959 d!10471))

(declare-fun b!52042 () Bool)

(declare-fun e!33784 () Bool)

(declare-fun e!33783 () Bool)

(assert (=> b!52042 (= e!33784 e!33783)))

(declare-fun c!6970 () Bool)

(assert (=> b!52042 (= c!6970 (validKeyInArray!0 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!52043 () Bool)

(declare-fun e!33786 () Bool)

(assert (=> b!52043 (= e!33786 (contains!625 Nil!1351 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!3969 () Bool)

(declare-fun call!3972 () Bool)

(assert (=> bm!3969 (= call!3972 (arrayNoDuplicates!0 (_keys!3554 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6970 (Cons!1350 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000) Nil!1351) Nil!1351)))))

(declare-fun b!52044 () Bool)

(assert (=> b!52044 (= e!33783 call!3972)))

(declare-fun b!52045 () Bool)

(declare-fun e!33785 () Bool)

(assert (=> b!52045 (= e!33785 e!33784)))

(declare-fun res!29683 () Bool)

(assert (=> b!52045 (=> (not res!29683) (not e!33784))))

(assert (=> b!52045 (= res!29683 (not e!33786))))

(declare-fun res!29685 () Bool)

(assert (=> b!52045 (=> (not res!29685) (not e!33786))))

(assert (=> b!52045 (= res!29685 (validKeyInArray!0 (select (arr!1606 (_keys!3554 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!52046 () Bool)

(assert (=> b!52046 (= e!33783 call!3972)))

(declare-fun d!10473 () Bool)

(declare-fun res!29684 () Bool)

(assert (=> d!10473 (=> res!29684 e!33785)))

(assert (=> d!10473 (= res!29684 (bvsge #b00000000000000000000000000000000 (size!1834 (_keys!3554 newMap!16))))))

(assert (=> d!10473 (= (arrayNoDuplicates!0 (_keys!3554 newMap!16) #b00000000000000000000000000000000 Nil!1351) e!33785)))

(assert (= (and d!10473 (not res!29684)) b!52045))

(assert (= (and b!52045 res!29685) b!52043))

(assert (= (and b!52045 res!29683) b!52042))

(assert (= (and b!52042 c!6970) b!52044))

(assert (= (and b!52042 (not c!6970)) b!52046))

(assert (= (or b!52044 b!52046) bm!3969))

(assert (=> b!52042 m!44681))

(assert (=> b!52042 m!44681))

(assert (=> b!52042 m!44683))

(assert (=> b!52043 m!44681))

(assert (=> b!52043 m!44681))

(declare-fun m!44705 () Bool)

(assert (=> b!52043 m!44705))

(assert (=> bm!3969 m!44681))

(declare-fun m!44707 () Bool)

(assert (=> bm!3969 m!44707))

(assert (=> b!52045 m!44681))

(assert (=> b!52045 m!44681))

(assert (=> b!52045 m!44683))

(assert (=> b!51952 d!10473))

(declare-fun d!10475 () Bool)

(declare-fun res!29686 () Bool)

(declare-fun e!33787 () Bool)

(assert (=> d!10475 (=> (not res!29686) (not e!33787))))

(assert (=> d!10475 (= res!29686 (simpleValid!38 (v!2198 (underlying!142 thiss!992))))))

(assert (=> d!10475 (= (valid!154 (v!2198 (underlying!142 thiss!992))) e!33787)))

(declare-fun b!52047 () Bool)

(declare-fun res!29687 () Bool)

(assert (=> b!52047 (=> (not res!29687) (not e!33787))))

(assert (=> b!52047 (= res!29687 (= (arrayCountValidKeys!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000000 (size!1834 (_keys!3554 (v!2198 (underlying!142 thiss!992))))) (_size!271 (v!2198 (underlying!142 thiss!992)))))))

(declare-fun b!52048 () Bool)

(declare-fun res!29688 () Bool)

(assert (=> b!52048 (=> (not res!29688) (not e!33787))))

(assert (=> b!52048 (= res!29688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3554 (v!2198 (underlying!142 thiss!992))) (mask!5750 (v!2198 (underlying!142 thiss!992)))))))

(declare-fun b!52049 () Bool)

(assert (=> b!52049 (= e!33787 (arrayNoDuplicates!0 (_keys!3554 (v!2198 (underlying!142 thiss!992))) #b00000000000000000000000000000000 Nil!1351))))

(assert (= (and d!10475 res!29686) b!52047))

(assert (= (and b!52047 res!29687) b!52048))

(assert (= (and b!52048 res!29688) b!52049))

(declare-fun m!44709 () Bool)

(assert (=> d!10475 m!44709))

(declare-fun m!44711 () Bool)

(assert (=> b!52047 m!44711))

(assert (=> b!52048 m!44593))

(assert (=> b!52049 m!44589))

(assert (=> d!10447 d!10475))

(declare-fun b!52051 () Bool)

(declare-fun e!33789 () Bool)

(assert (=> b!52051 (= e!33789 tp_is_empty!2223)))

(declare-fun mapIsEmpty!2345 () Bool)

(declare-fun mapRes!2345 () Bool)

(assert (=> mapIsEmpty!2345 mapRes!2345))

(declare-fun condMapEmpty!2345 () Bool)

(declare-fun mapDefault!2345 () ValueCell!768)

(assert (=> mapNonEmpty!2344 (= condMapEmpty!2345 (= mapRest!2344 ((as const (Array (_ BitVec 32) ValueCell!768)) mapDefault!2345)))))

(assert (=> mapNonEmpty!2344 (= tp!6952 (and e!33789 mapRes!2345))))

(declare-fun b!52050 () Bool)

(declare-fun e!33788 () Bool)

(assert (=> b!52050 (= e!33788 tp_is_empty!2223)))

(declare-fun mapNonEmpty!2345 () Bool)

(declare-fun tp!6953 () Bool)

(assert (=> mapNonEmpty!2345 (= mapRes!2345 (and tp!6953 e!33788))))

(declare-fun mapKey!2345 () (_ BitVec 32))

(declare-fun mapValue!2345 () ValueCell!768)

(declare-fun mapRest!2345 () (Array (_ BitVec 32) ValueCell!768))

(assert (=> mapNonEmpty!2345 (= mapRest!2344 (store mapRest!2345 mapKey!2345 mapValue!2345))))

(assert (= (and mapNonEmpty!2344 condMapEmpty!2345) mapIsEmpty!2345))

(assert (= (and mapNonEmpty!2344 (not condMapEmpty!2345)) mapNonEmpty!2345))

(assert (= (and mapNonEmpty!2345 ((_ is ValueCellFull!768) mapValue!2345)) b!52050))

(assert (= (and mapNonEmpty!2344 ((_ is ValueCellFull!768) mapDefault!2345)) b!52051))

(declare-fun m!44713 () Bool)

(assert (=> mapNonEmpty!2345 m!44713))

(declare-fun b!52053 () Bool)

(declare-fun e!33791 () Bool)

(assert (=> b!52053 (= e!33791 tp_is_empty!2223)))

(declare-fun mapIsEmpty!2346 () Bool)

(declare-fun mapRes!2346 () Bool)

(assert (=> mapIsEmpty!2346 mapRes!2346))

(declare-fun condMapEmpty!2346 () Bool)

(declare-fun mapDefault!2346 () ValueCell!768)

(assert (=> mapNonEmpty!2343 (= condMapEmpty!2346 (= mapRest!2343 ((as const (Array (_ BitVec 32) ValueCell!768)) mapDefault!2346)))))

(assert (=> mapNonEmpty!2343 (= tp!6951 (and e!33791 mapRes!2346))))

(declare-fun b!52052 () Bool)

(declare-fun e!33790 () Bool)

(assert (=> b!52052 (= e!33790 tp_is_empty!2223)))

(declare-fun mapNonEmpty!2346 () Bool)

(declare-fun tp!6954 () Bool)

(assert (=> mapNonEmpty!2346 (= mapRes!2346 (and tp!6954 e!33790))))

(declare-fun mapKey!2346 () (_ BitVec 32))

(declare-fun mapRest!2346 () (Array (_ BitVec 32) ValueCell!768))

(declare-fun mapValue!2346 () ValueCell!768)

(assert (=> mapNonEmpty!2346 (= mapRest!2343 (store mapRest!2346 mapKey!2346 mapValue!2346))))

(assert (= (and mapNonEmpty!2343 condMapEmpty!2346) mapIsEmpty!2346))

(assert (= (and mapNonEmpty!2343 (not condMapEmpty!2346)) mapNonEmpty!2346))

(assert (= (and mapNonEmpty!2346 ((_ is ValueCellFull!768) mapValue!2346)) b!52052))

(assert (= (and mapNonEmpty!2343 ((_ is ValueCellFull!768) mapDefault!2346)) b!52053))

(declare-fun m!44715 () Bool)

(assert (=> mapNonEmpty!2346 m!44715))

(check-sat (not bm!3963) (not bm!3967) (not d!10461) (not b!52012) (not d!10469) b_and!2835 b_and!2833 (not d!10453) (not b!51980) (not b!52000) (not b!52025) (not b!52042) (not bm!3966) (not bm!3968) tp_is_empty!2223 (not b!52043) (not b!52037) (not bm!3969) (not b!52048) (not b!52002) (not b!52038) (not b!52013) (not b!52040) (not d!10457) (not b!52028) (not mapNonEmpty!2345) (not b_next!1613) (not mapNonEmpty!2346) (not b!52045) (not b!52047) (not b_next!1615) (not b!52036) (not b!52030) (not d!10475) (not b!52049) (not b!51998))
(check-sat b_and!2833 b_and!2835 (not b_next!1613) (not b_next!1615))
