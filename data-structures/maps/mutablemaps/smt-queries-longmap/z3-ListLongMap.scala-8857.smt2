; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107486 () Bool)

(assert start!107486)

(declare-fun b!1272708 () Bool)

(declare-fun b_free!27687 () Bool)

(declare-fun b_next!27687 () Bool)

(assert (=> b!1272708 (= b_free!27687 (not b_next!27687))))

(declare-fun tp!97589 () Bool)

(declare-fun b_and!45753 () Bool)

(assert (=> b!1272708 (= tp!97589 b_and!45753)))

(declare-fun mapNonEmpty!51187 () Bool)

(declare-fun mapRes!51187 () Bool)

(declare-fun tp!97588 () Bool)

(declare-fun e!726032 () Bool)

(assert (=> mapNonEmpty!51187 (= mapRes!51187 (and tp!97588 e!726032))))

(declare-datatypes ((V!49269 0))(
  ( (V!49270 (val!16603 Int)) )
))
(declare-datatypes ((ValueCell!15675 0))(
  ( (ValueCellFull!15675 (v!19238 V!49269)) (EmptyCell!15675) )
))
(declare-datatypes ((array!83317 0))(
  ( (array!83318 (arr!40185 (Array (_ BitVec 32) ValueCell!15675)) (size!40725 (_ BitVec 32))) )
))
(declare-datatypes ((array!83319 0))(
  ( (array!83320 (arr!40186 (Array (_ BitVec 32) (_ BitVec 64))) (size!40726 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6114 0))(
  ( (LongMapFixedSize!6115 (defaultEntry!6703 Int) (mask!34457 (_ BitVec 32)) (extraKeys!6382 (_ BitVec 32)) (zeroValue!6488 V!49269) (minValue!6488 V!49269) (_size!3112 (_ BitVec 32)) (_keys!12109 array!83319) (_values!6726 array!83317) (_vacant!3112 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6114)

(declare-fun mapKey!51187 () (_ BitVec 32))

(declare-fun mapRest!51187 () (Array (_ BitVec 32) ValueCell!15675))

(declare-fun mapValue!51187 () ValueCell!15675)

(assert (=> mapNonEmpty!51187 (= (arr!40185 (_values!6726 thiss!1559)) (store mapRest!51187 mapKey!51187 mapValue!51187))))

(declare-fun res!846573 () Bool)

(declare-fun e!726034 () Bool)

(assert (=> start!107486 (=> (not res!846573) (not e!726034))))

(declare-fun valid!2249 (LongMapFixedSize!6114) Bool)

(assert (=> start!107486 (= res!846573 (valid!2249 thiss!1559))))

(assert (=> start!107486 e!726034))

(declare-fun e!726033 () Bool)

(assert (=> start!107486 e!726033))

(declare-fun b!1272703 () Bool)

(declare-fun e!726036 () Bool)

(declare-fun tp_is_empty!33057 () Bool)

(assert (=> b!1272703 (= e!726036 tp_is_empty!33057)))

(declare-fun b!1272704 () Bool)

(assert (=> b!1272704 (= e!726032 tp_is_empty!33057)))

(declare-fun b!1272705 () Bool)

(declare-fun e!726035 () Bool)

(assert (=> b!1272705 (= e!726035 (and e!726036 mapRes!51187))))

(declare-fun condMapEmpty!51187 () Bool)

(declare-fun mapDefault!51187 () ValueCell!15675)

(assert (=> b!1272705 (= condMapEmpty!51187 (= (arr!40185 (_values!6726 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15675)) mapDefault!51187)))))

(declare-fun b!1272706 () Bool)

(assert (=> b!1272706 (= e!726034 (and (= (size!40725 (_values!6726 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34457 thiss!1559))) (= (size!40726 (_keys!12109 thiss!1559)) (size!40725 (_values!6726 thiss!1559))) (bvsge (mask!34457 thiss!1559) #b00000000000000000000000000000000) (bvslt (extraKeys!6382 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272707 () Bool)

(declare-fun res!846572 () Bool)

(assert (=> b!1272707 (=> (not res!846572) (not e!726034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272707 (= res!846572 (validMask!0 (mask!34457 thiss!1559)))))

(declare-fun array_inv!30505 (array!83319) Bool)

(declare-fun array_inv!30506 (array!83317) Bool)

(assert (=> b!1272708 (= e!726033 (and tp!97589 tp_is_empty!33057 (array_inv!30505 (_keys!12109 thiss!1559)) (array_inv!30506 (_values!6726 thiss!1559)) e!726035))))

(declare-fun mapIsEmpty!51187 () Bool)

(assert (=> mapIsEmpty!51187 mapRes!51187))

(assert (= (and start!107486 res!846573) b!1272707))

(assert (= (and b!1272707 res!846572) b!1272706))

(assert (= (and b!1272705 condMapEmpty!51187) mapIsEmpty!51187))

(assert (= (and b!1272705 (not condMapEmpty!51187)) mapNonEmpty!51187))

(get-info :version)

(assert (= (and mapNonEmpty!51187 ((_ is ValueCellFull!15675) mapValue!51187)) b!1272704))

(assert (= (and b!1272705 ((_ is ValueCellFull!15675) mapDefault!51187)) b!1272703))

(assert (= b!1272708 b!1272705))

(assert (= start!107486 b!1272708))

(declare-fun m!1170241 () Bool)

(assert (=> mapNonEmpty!51187 m!1170241))

(declare-fun m!1170243 () Bool)

(assert (=> start!107486 m!1170243))

(declare-fun m!1170245 () Bool)

(assert (=> b!1272707 m!1170245))

(declare-fun m!1170247 () Bool)

(assert (=> b!1272708 m!1170247))

(declare-fun m!1170249 () Bool)

(assert (=> b!1272708 m!1170249))

(check-sat tp_is_empty!33057 (not b!1272708) (not b_next!27687) (not start!107486) (not b!1272707) b_and!45753 (not mapNonEmpty!51187))
(check-sat b_and!45753 (not b_next!27687))
(get-model)

(declare-fun d!139827 () Bool)

(assert (=> d!139827 (= (validMask!0 (mask!34457 thiss!1559)) (and (or (= (mask!34457 thiss!1559) #b00000000000000000000000000000111) (= (mask!34457 thiss!1559) #b00000000000000000000000000001111) (= (mask!34457 thiss!1559) #b00000000000000000000000000011111) (= (mask!34457 thiss!1559) #b00000000000000000000000000111111) (= (mask!34457 thiss!1559) #b00000000000000000000000001111111) (= (mask!34457 thiss!1559) #b00000000000000000000000011111111) (= (mask!34457 thiss!1559) #b00000000000000000000000111111111) (= (mask!34457 thiss!1559) #b00000000000000000000001111111111) (= (mask!34457 thiss!1559) #b00000000000000000000011111111111) (= (mask!34457 thiss!1559) #b00000000000000000000111111111111) (= (mask!34457 thiss!1559) #b00000000000000000001111111111111) (= (mask!34457 thiss!1559) #b00000000000000000011111111111111) (= (mask!34457 thiss!1559) #b00000000000000000111111111111111) (= (mask!34457 thiss!1559) #b00000000000000001111111111111111) (= (mask!34457 thiss!1559) #b00000000000000011111111111111111) (= (mask!34457 thiss!1559) #b00000000000000111111111111111111) (= (mask!34457 thiss!1559) #b00000000000001111111111111111111) (= (mask!34457 thiss!1559) #b00000000000011111111111111111111) (= (mask!34457 thiss!1559) #b00000000000111111111111111111111) (= (mask!34457 thiss!1559) #b00000000001111111111111111111111) (= (mask!34457 thiss!1559) #b00000000011111111111111111111111) (= (mask!34457 thiss!1559) #b00000000111111111111111111111111) (= (mask!34457 thiss!1559) #b00000001111111111111111111111111) (= (mask!34457 thiss!1559) #b00000011111111111111111111111111) (= (mask!34457 thiss!1559) #b00000111111111111111111111111111) (= (mask!34457 thiss!1559) #b00001111111111111111111111111111) (= (mask!34457 thiss!1559) #b00011111111111111111111111111111) (= (mask!34457 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34457 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272707 d!139827))

(declare-fun d!139829 () Bool)

(assert (=> d!139829 (= (array_inv!30505 (_keys!12109 thiss!1559)) (bvsge (size!40726 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272708 d!139829))

(declare-fun d!139831 () Bool)

(assert (=> d!139831 (= (array_inv!30506 (_values!6726 thiss!1559)) (bvsge (size!40725 (_values!6726 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272708 d!139831))

(declare-fun d!139833 () Bool)

(declare-fun res!846586 () Bool)

(declare-fun e!726057 () Bool)

(assert (=> d!139833 (=> (not res!846586) (not e!726057))))

(declare-fun simpleValid!458 (LongMapFixedSize!6114) Bool)

(assert (=> d!139833 (= res!846586 (simpleValid!458 thiss!1559))))

(assert (=> d!139833 (= (valid!2249 thiss!1559) e!726057)))

(declare-fun b!1272733 () Bool)

(declare-fun res!846587 () Bool)

(assert (=> b!1272733 (=> (not res!846587) (not e!726057))))

(declare-fun arrayCountValidKeys!0 (array!83319 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272733 (= res!846587 (= (arrayCountValidKeys!0 (_keys!12109 thiss!1559) #b00000000000000000000000000000000 (size!40726 (_keys!12109 thiss!1559))) (_size!3112 thiss!1559)))))

(declare-fun b!1272734 () Bool)

(declare-fun res!846588 () Bool)

(assert (=> b!1272734 (=> (not res!846588) (not e!726057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83319 (_ BitVec 32)) Bool)

(assert (=> b!1272734 (= res!846588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12109 thiss!1559) (mask!34457 thiss!1559)))))

(declare-fun b!1272735 () Bool)

(declare-datatypes ((List!28720 0))(
  ( (Nil!28717) (Cons!28716 (h!29925 (_ BitVec 64)) (t!42260 List!28720)) )
))
(declare-fun arrayNoDuplicates!0 (array!83319 (_ BitVec 32) List!28720) Bool)

(assert (=> b!1272735 (= e!726057 (arrayNoDuplicates!0 (_keys!12109 thiss!1559) #b00000000000000000000000000000000 Nil!28717))))

(assert (= (and d!139833 res!846586) b!1272733))

(assert (= (and b!1272733 res!846587) b!1272734))

(assert (= (and b!1272734 res!846588) b!1272735))

(declare-fun m!1170261 () Bool)

(assert (=> d!139833 m!1170261))

(declare-fun m!1170263 () Bool)

(assert (=> b!1272733 m!1170263))

(declare-fun m!1170265 () Bool)

(assert (=> b!1272734 m!1170265))

(declare-fun m!1170267 () Bool)

(assert (=> b!1272735 m!1170267))

(assert (=> start!107486 d!139833))

(declare-fun mapIsEmpty!51193 () Bool)

(declare-fun mapRes!51193 () Bool)

(assert (=> mapIsEmpty!51193 mapRes!51193))

(declare-fun mapNonEmpty!51193 () Bool)

(declare-fun tp!97598 () Bool)

(declare-fun e!726062 () Bool)

(assert (=> mapNonEmpty!51193 (= mapRes!51193 (and tp!97598 e!726062))))

(declare-fun mapKey!51193 () (_ BitVec 32))

(declare-fun mapRest!51193 () (Array (_ BitVec 32) ValueCell!15675))

(declare-fun mapValue!51193 () ValueCell!15675)

(assert (=> mapNonEmpty!51193 (= mapRest!51187 (store mapRest!51193 mapKey!51193 mapValue!51193))))

(declare-fun b!1272743 () Bool)

(declare-fun e!726063 () Bool)

(assert (=> b!1272743 (= e!726063 tp_is_empty!33057)))

(declare-fun b!1272742 () Bool)

(assert (=> b!1272742 (= e!726062 tp_is_empty!33057)))

(declare-fun condMapEmpty!51193 () Bool)

(declare-fun mapDefault!51193 () ValueCell!15675)

(assert (=> mapNonEmpty!51187 (= condMapEmpty!51193 (= mapRest!51187 ((as const (Array (_ BitVec 32) ValueCell!15675)) mapDefault!51193)))))

(assert (=> mapNonEmpty!51187 (= tp!97588 (and e!726063 mapRes!51193))))

(assert (= (and mapNonEmpty!51187 condMapEmpty!51193) mapIsEmpty!51193))

(assert (= (and mapNonEmpty!51187 (not condMapEmpty!51193)) mapNonEmpty!51193))

(assert (= (and mapNonEmpty!51193 ((_ is ValueCellFull!15675) mapValue!51193)) b!1272742))

(assert (= (and mapNonEmpty!51187 ((_ is ValueCellFull!15675) mapDefault!51193)) b!1272743))

(declare-fun m!1170269 () Bool)

(assert (=> mapNonEmpty!51193 m!1170269))

(check-sat tp_is_empty!33057 (not d!139833) (not mapNonEmpty!51193) (not b_next!27687) (not b!1272734) b_and!45753 (not b!1272735) (not b!1272733))
(check-sat b_and!45753 (not b_next!27687))
(get-model)

(declare-fun bm!62560 () Bool)

(declare-fun call!62563 () Bool)

(assert (=> bm!62560 (= call!62563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12109 thiss!1559) (mask!34457 thiss!1559)))))

(declare-fun b!1272752 () Bool)

(declare-fun e!726070 () Bool)

(assert (=> b!1272752 (= e!726070 call!62563)))

(declare-fun b!1272753 () Bool)

(declare-fun e!726072 () Bool)

(assert (=> b!1272753 (= e!726072 e!726070)))

(declare-fun c!123666 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1272753 (= c!123666 (validKeyInArray!0 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272755 () Bool)

(declare-fun e!726071 () Bool)

(assert (=> b!1272755 (= e!726071 call!62563)))

(declare-fun d!139835 () Bool)

(declare-fun res!846593 () Bool)

(assert (=> d!139835 (=> res!846593 e!726072)))

(assert (=> d!139835 (= res!846593 (bvsge #b00000000000000000000000000000000 (size!40726 (_keys!12109 thiss!1559))))))

(assert (=> d!139835 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12109 thiss!1559) (mask!34457 thiss!1559)) e!726072)))

(declare-fun b!1272754 () Bool)

(assert (=> b!1272754 (= e!726070 e!726071)))

(declare-fun lt!575025 () (_ BitVec 64))

(assert (=> b!1272754 (= lt!575025 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42268 0))(
  ( (Unit!42269) )
))
(declare-fun lt!575023 () Unit!42268)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83319 (_ BitVec 64) (_ BitVec 32)) Unit!42268)

(assert (=> b!1272754 (= lt!575023 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12109 thiss!1559) lt!575025 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1272754 (arrayContainsKey!0 (_keys!12109 thiss!1559) lt!575025 #b00000000000000000000000000000000)))

(declare-fun lt!575024 () Unit!42268)

(assert (=> b!1272754 (= lt!575024 lt!575023)))

(declare-fun res!846594 () Bool)

(declare-datatypes ((SeekEntryResult!9989 0))(
  ( (MissingZero!9989 (index!42326 (_ BitVec 32))) (Found!9989 (index!42327 (_ BitVec 32))) (Intermediate!9989 (undefined!10801 Bool) (index!42328 (_ BitVec 32)) (x!112487 (_ BitVec 32))) (Undefined!9989) (MissingVacant!9989 (index!42329 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83319 (_ BitVec 32)) SeekEntryResult!9989)

(assert (=> b!1272754 (= res!846594 (= (seekEntryOrOpen!0 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000) (_keys!12109 thiss!1559) (mask!34457 thiss!1559)) (Found!9989 #b00000000000000000000000000000000)))))

(assert (=> b!1272754 (=> (not res!846594) (not e!726071))))

(assert (= (and d!139835 (not res!846593)) b!1272753))

(assert (= (and b!1272753 c!123666) b!1272754))

(assert (= (and b!1272753 (not c!123666)) b!1272752))

(assert (= (and b!1272754 res!846594) b!1272755))

(assert (= (or b!1272755 b!1272752) bm!62560))

(declare-fun m!1170271 () Bool)

(assert (=> bm!62560 m!1170271))

(declare-fun m!1170273 () Bool)

(assert (=> b!1272753 m!1170273))

(assert (=> b!1272753 m!1170273))

(declare-fun m!1170275 () Bool)

(assert (=> b!1272753 m!1170275))

(assert (=> b!1272754 m!1170273))

(declare-fun m!1170277 () Bool)

(assert (=> b!1272754 m!1170277))

(declare-fun m!1170279 () Bool)

(assert (=> b!1272754 m!1170279))

(assert (=> b!1272754 m!1170273))

(declare-fun m!1170281 () Bool)

(assert (=> b!1272754 m!1170281))

(assert (=> b!1272734 d!139835))

(declare-fun b!1272766 () Bool)

(declare-fun e!726081 () Bool)

(declare-fun contains!7689 (List!28720 (_ BitVec 64)) Bool)

(assert (=> b!1272766 (= e!726081 (contains!7689 Nil!28717 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272767 () Bool)

(declare-fun e!726083 () Bool)

(declare-fun call!62566 () Bool)

(assert (=> b!1272767 (= e!726083 call!62566)))

(declare-fun bm!62563 () Bool)

(declare-fun c!123669 () Bool)

(assert (=> bm!62563 (= call!62566 (arrayNoDuplicates!0 (_keys!12109 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123669 (Cons!28716 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000) Nil!28717) Nil!28717)))))

(declare-fun d!139837 () Bool)

(declare-fun res!846602 () Bool)

(declare-fun e!726084 () Bool)

(assert (=> d!139837 (=> res!846602 e!726084)))

(assert (=> d!139837 (= res!846602 (bvsge #b00000000000000000000000000000000 (size!40726 (_keys!12109 thiss!1559))))))

(assert (=> d!139837 (= (arrayNoDuplicates!0 (_keys!12109 thiss!1559) #b00000000000000000000000000000000 Nil!28717) e!726084)))

(declare-fun b!1272768 () Bool)

(assert (=> b!1272768 (= e!726083 call!62566)))

(declare-fun b!1272769 () Bool)

(declare-fun e!726082 () Bool)

(assert (=> b!1272769 (= e!726082 e!726083)))

(assert (=> b!1272769 (= c!123669 (validKeyInArray!0 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272770 () Bool)

(assert (=> b!1272770 (= e!726084 e!726082)))

(declare-fun res!846603 () Bool)

(assert (=> b!1272770 (=> (not res!846603) (not e!726082))))

(assert (=> b!1272770 (= res!846603 (not e!726081))))

(declare-fun res!846601 () Bool)

(assert (=> b!1272770 (=> (not res!846601) (not e!726081))))

(assert (=> b!1272770 (= res!846601 (validKeyInArray!0 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (= (and d!139837 (not res!846602)) b!1272770))

(assert (= (and b!1272770 res!846601) b!1272766))

(assert (= (and b!1272770 res!846603) b!1272769))

(assert (= (and b!1272769 c!123669) b!1272768))

(assert (= (and b!1272769 (not c!123669)) b!1272767))

(assert (= (or b!1272768 b!1272767) bm!62563))

(assert (=> b!1272766 m!1170273))

(assert (=> b!1272766 m!1170273))

(declare-fun m!1170283 () Bool)

(assert (=> b!1272766 m!1170283))

(assert (=> bm!62563 m!1170273))

(declare-fun m!1170285 () Bool)

(assert (=> bm!62563 m!1170285))

(assert (=> b!1272769 m!1170273))

(assert (=> b!1272769 m!1170273))

(assert (=> b!1272769 m!1170275))

(assert (=> b!1272770 m!1170273))

(assert (=> b!1272770 m!1170273))

(assert (=> b!1272770 m!1170275))

(assert (=> b!1272735 d!139837))

(declare-fun b!1272781 () Bool)

(declare-fun res!846612 () Bool)

(declare-fun e!726087 () Bool)

(assert (=> b!1272781 (=> (not res!846612) (not e!726087))))

(declare-fun size!40729 (LongMapFixedSize!6114) (_ BitVec 32))

(assert (=> b!1272781 (= res!846612 (= (size!40729 thiss!1559) (bvadd (_size!3112 thiss!1559) (bvsdiv (bvadd (extraKeys!6382 thiss!1559) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!139839 () Bool)

(declare-fun res!846615 () Bool)

(assert (=> d!139839 (=> (not res!846615) (not e!726087))))

(assert (=> d!139839 (= res!846615 (validMask!0 (mask!34457 thiss!1559)))))

(assert (=> d!139839 (= (simpleValid!458 thiss!1559) e!726087)))

(declare-fun b!1272779 () Bool)

(declare-fun res!846613 () Bool)

(assert (=> b!1272779 (=> (not res!846613) (not e!726087))))

(assert (=> b!1272779 (= res!846613 (and (= (size!40725 (_values!6726 thiss!1559)) (bvadd (mask!34457 thiss!1559) #b00000000000000000000000000000001)) (= (size!40726 (_keys!12109 thiss!1559)) (size!40725 (_values!6726 thiss!1559))) (bvsge (_size!3112 thiss!1559) #b00000000000000000000000000000000) (bvsle (_size!3112 thiss!1559) (bvadd (mask!34457 thiss!1559) #b00000000000000000000000000000001))))))

(declare-fun b!1272780 () Bool)

(declare-fun res!846614 () Bool)

(assert (=> b!1272780 (=> (not res!846614) (not e!726087))))

(assert (=> b!1272780 (= res!846614 (bvsge (size!40729 thiss!1559) (_size!3112 thiss!1559)))))

(declare-fun b!1272782 () Bool)

(assert (=> b!1272782 (= e!726087 (and (bvsge (extraKeys!6382 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6382 thiss!1559) #b00000000000000000000000000000011) (bvsge (_vacant!3112 thiss!1559) #b00000000000000000000000000000000)))))

(assert (= (and d!139839 res!846615) b!1272779))

(assert (= (and b!1272779 res!846613) b!1272780))

(assert (= (and b!1272780 res!846614) b!1272781))

(assert (= (and b!1272781 res!846612) b!1272782))

(declare-fun m!1170287 () Bool)

(assert (=> b!1272781 m!1170287))

(assert (=> d!139839 m!1170245))

(assert (=> b!1272780 m!1170287))

(assert (=> d!139833 d!139839))

(declare-fun d!139841 () Bool)

(declare-fun lt!575028 () (_ BitVec 32))

(assert (=> d!139841 (and (bvsge lt!575028 #b00000000000000000000000000000000) (bvsle lt!575028 (bvsub (size!40726 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun e!726093 () (_ BitVec 32))

(assert (=> d!139841 (= lt!575028 e!726093)))

(declare-fun c!123674 () Bool)

(assert (=> d!139841 (= c!123674 (bvsge #b00000000000000000000000000000000 (size!40726 (_keys!12109 thiss!1559))))))

(assert (=> d!139841 (and (bvsle #b00000000000000000000000000000000 (size!40726 (_keys!12109 thiss!1559))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40726 (_keys!12109 thiss!1559)) (size!40726 (_keys!12109 thiss!1559))))))

(assert (=> d!139841 (= (arrayCountValidKeys!0 (_keys!12109 thiss!1559) #b00000000000000000000000000000000 (size!40726 (_keys!12109 thiss!1559))) lt!575028)))

(declare-fun b!1272791 () Bool)

(declare-fun e!726092 () (_ BitVec 32))

(declare-fun call!62569 () (_ BitVec 32))

(assert (=> b!1272791 (= e!726092 call!62569)))

(declare-fun bm!62566 () Bool)

(assert (=> bm!62566 (= call!62569 (arrayCountValidKeys!0 (_keys!12109 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40726 (_keys!12109 thiss!1559))))))

(declare-fun b!1272792 () Bool)

(assert (=> b!1272792 (= e!726093 e!726092)))

(declare-fun c!123675 () Bool)

(assert (=> b!1272792 (= c!123675 (validKeyInArray!0 (select (arr!40186 (_keys!12109 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272793 () Bool)

(assert (=> b!1272793 (= e!726093 #b00000000000000000000000000000000)))

(declare-fun b!1272794 () Bool)

(assert (=> b!1272794 (= e!726092 (bvadd #b00000000000000000000000000000001 call!62569))))

(assert (= (and d!139841 c!123674) b!1272793))

(assert (= (and d!139841 (not c!123674)) b!1272792))

(assert (= (and b!1272792 c!123675) b!1272794))

(assert (= (and b!1272792 (not c!123675)) b!1272791))

(assert (= (or b!1272794 b!1272791) bm!62566))

(declare-fun m!1170289 () Bool)

(assert (=> bm!62566 m!1170289))

(assert (=> b!1272792 m!1170273))

(assert (=> b!1272792 m!1170273))

(assert (=> b!1272792 m!1170275))

(assert (=> b!1272733 d!139841))

(declare-fun mapIsEmpty!51194 () Bool)

(declare-fun mapRes!51194 () Bool)

(assert (=> mapIsEmpty!51194 mapRes!51194))

(declare-fun mapNonEmpty!51194 () Bool)

(declare-fun tp!97599 () Bool)

(declare-fun e!726094 () Bool)

(assert (=> mapNonEmpty!51194 (= mapRes!51194 (and tp!97599 e!726094))))

(declare-fun mapRest!51194 () (Array (_ BitVec 32) ValueCell!15675))

(declare-fun mapKey!51194 () (_ BitVec 32))

(declare-fun mapValue!51194 () ValueCell!15675)

(assert (=> mapNonEmpty!51194 (= mapRest!51193 (store mapRest!51194 mapKey!51194 mapValue!51194))))

(declare-fun b!1272796 () Bool)

(declare-fun e!726095 () Bool)

(assert (=> b!1272796 (= e!726095 tp_is_empty!33057)))

(declare-fun b!1272795 () Bool)

(assert (=> b!1272795 (= e!726094 tp_is_empty!33057)))

(declare-fun condMapEmpty!51194 () Bool)

(declare-fun mapDefault!51194 () ValueCell!15675)

(assert (=> mapNonEmpty!51193 (= condMapEmpty!51194 (= mapRest!51193 ((as const (Array (_ BitVec 32) ValueCell!15675)) mapDefault!51194)))))

(assert (=> mapNonEmpty!51193 (= tp!97598 (and e!726095 mapRes!51194))))

(assert (= (and mapNonEmpty!51193 condMapEmpty!51194) mapIsEmpty!51194))

(assert (= (and mapNonEmpty!51193 (not condMapEmpty!51194)) mapNonEmpty!51194))

(assert (= (and mapNonEmpty!51194 ((_ is ValueCellFull!15675) mapValue!51194)) b!1272795))

(assert (= (and mapNonEmpty!51193 ((_ is ValueCellFull!15675) mapDefault!51194)) b!1272796))

(declare-fun m!1170291 () Bool)

(assert (=> mapNonEmpty!51194 m!1170291))

(check-sat tp_is_empty!33057 (not b!1272770) b_and!45753 (not b!1272792) (not b!1272753) (not bm!62566) (not b!1272780) (not bm!62563) (not d!139839) (not mapNonEmpty!51194) (not b_next!27687) (not b!1272754) (not bm!62560) (not b!1272769) (not b!1272781) (not b!1272766))
(check-sat b_and!45753 (not b_next!27687))
