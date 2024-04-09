; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4244 () Bool)

(assert start!4244)

(declare-fun b_free!1131 () Bool)

(declare-fun b_next!1131 () Bool)

(assert (=> start!4244 (= b_free!1131 (not b_next!1131))))

(declare-fun tp!4815 () Bool)

(declare-fun b_and!1945 () Bool)

(assert (=> start!4244 (= tp!4815 b_and!1945)))

(declare-fun b!32492 () Bool)

(declare-fun e!20649 () Bool)

(declare-fun tp_is_empty!1485 () Bool)

(assert (=> b!32492 (= e!20649 tp_is_empty!1485)))

(declare-fun b!32493 () Bool)

(declare-fun res!19726 () Bool)

(declare-fun e!20653 () Bool)

(assert (=> b!32493 (=> (not res!19726) (not e!20653))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1805 0))(
  ( (V!1806 (val!769 Int)) )
))
(declare-datatypes ((ValueCell!543 0))(
  ( (ValueCellFull!543 (v!1859 V!1805)) (EmptyCell!543) )
))
(declare-datatypes ((array!2177 0))(
  ( (array!2178 (arr!1041 (Array (_ BitVec 32) ValueCell!543)) (size!1142 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2177)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2179 0))(
  ( (array!2180 (arr!1042 (Array (_ BitVec 32) (_ BitVec 64))) (size!1143 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2179)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1805)

(declare-fun minValue!1443 () V!1805)

(declare-datatypes ((tuple2!1242 0))(
  ( (tuple2!1243 (_1!631 (_ BitVec 64)) (_2!631 V!1805)) )
))
(declare-datatypes ((List!845 0))(
  ( (Nil!842) (Cons!841 (h!1408 tuple2!1242) (t!3542 List!845)) )
))
(declare-datatypes ((ListLongMap!823 0))(
  ( (ListLongMap!824 (toList!427 List!845)) )
))
(declare-fun contains!365 (ListLongMap!823 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!252 (array!2179 array!2177 (_ BitVec 32) (_ BitVec 32) V!1805 V!1805 (_ BitVec 32) Int) ListLongMap!823)

(assert (=> b!32493 (= res!19726 (not (contains!365 (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapNonEmpty!1759 () Bool)

(declare-fun mapRes!1759 () Bool)

(declare-fun tp!4816 () Bool)

(assert (=> mapNonEmpty!1759 (= mapRes!1759 (and tp!4816 e!20649))))

(declare-fun mapValue!1759 () ValueCell!543)

(declare-fun mapRest!1759 () (Array (_ BitVec 32) ValueCell!543))

(declare-fun mapKey!1759 () (_ BitVec 32))

(assert (=> mapNonEmpty!1759 (= (arr!1041 _values!1501) (store mapRest!1759 mapKey!1759 mapValue!1759))))

(declare-fun res!19723 () Bool)

(assert (=> start!4244 (=> (not res!19723) (not e!20653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4244 (= res!19723 (validMask!0 mask!2294))))

(assert (=> start!4244 e!20653))

(assert (=> start!4244 true))

(assert (=> start!4244 tp!4815))

(declare-fun e!20651 () Bool)

(declare-fun array_inv!691 (array!2177) Bool)

(assert (=> start!4244 (and (array_inv!691 _values!1501) e!20651)))

(declare-fun array_inv!692 (array!2179) Bool)

(assert (=> start!4244 (array_inv!692 _keys!1833)))

(assert (=> start!4244 tp_is_empty!1485))

(declare-fun b!32494 () Bool)

(declare-fun res!19727 () Bool)

(assert (=> b!32494 (=> (not res!19727) (not e!20653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2179 (_ BitVec 32)) Bool)

(assert (=> b!32494 (= res!19727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32495 () Bool)

(declare-fun res!19728 () Bool)

(assert (=> b!32495 (=> (not res!19728) (not e!20653))))

(declare-fun arrayContainsKey!0 (array!2179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32495 (= res!19728 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32496 () Bool)

(declare-fun res!19725 () Bool)

(assert (=> b!32496 (=> (not res!19725) (not e!20653))))

(assert (=> b!32496 (= res!19725 (and (= (size!1142 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1143 _keys!1833) (size!1142 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32497 () Bool)

(declare-fun res!19724 () Bool)

(assert (=> b!32497 (=> (not res!19724) (not e!20653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32497 (= res!19724 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1759 () Bool)

(assert (=> mapIsEmpty!1759 mapRes!1759))

(declare-fun b!32498 () Bool)

(declare-fun res!19729 () Bool)

(assert (=> b!32498 (=> (not res!19729) (not e!20653))))

(declare-datatypes ((List!846 0))(
  ( (Nil!843) (Cons!842 (h!1409 (_ BitVec 64)) (t!3543 List!846)) )
))
(declare-fun arrayNoDuplicates!0 (array!2179 (_ BitVec 32) List!846) Bool)

(assert (=> b!32498 (= res!19729 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!843))))

(declare-fun b!32499 () Bool)

(declare-fun e!20648 () Bool)

(declare-fun lt!11757 () (_ BitVec 32))

(assert (=> b!32499 (= e!20648 (not (validKeyInArray!0 (select (arr!1042 _keys!1833) lt!11757))))))

(declare-fun b!32500 () Bool)

(assert (=> b!32500 (= e!20653 e!20648)))

(declare-fun res!19722 () Bool)

(assert (=> b!32500 (=> (not res!19722) (not e!20648))))

(assert (=> b!32500 (= res!19722 (and (bvsge lt!11757 #b00000000000000000000000000000000) (bvslt lt!11757 (size!1143 _keys!1833))))))

(declare-fun arrayScanForKey!0 (array!2179 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32500 (= lt!11757 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32501 () Bool)

(declare-fun e!20652 () Bool)

(assert (=> b!32501 (= e!20652 tp_is_empty!1485)))

(declare-fun b!32502 () Bool)

(assert (=> b!32502 (= e!20651 (and e!20652 mapRes!1759))))

(declare-fun condMapEmpty!1759 () Bool)

(declare-fun mapDefault!1759 () ValueCell!543)

(assert (=> b!32502 (= condMapEmpty!1759 (= (arr!1041 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!543)) mapDefault!1759)))))

(assert (= (and start!4244 res!19723) b!32496))

(assert (= (and b!32496 res!19725) b!32494))

(assert (= (and b!32494 res!19727) b!32498))

(assert (= (and b!32498 res!19729) b!32497))

(assert (= (and b!32497 res!19724) b!32493))

(assert (= (and b!32493 res!19726) b!32495))

(assert (= (and b!32495 res!19728) b!32500))

(assert (= (and b!32500 res!19722) b!32499))

(assert (= (and b!32502 condMapEmpty!1759) mapIsEmpty!1759))

(assert (= (and b!32502 (not condMapEmpty!1759)) mapNonEmpty!1759))

(get-info :version)

(assert (= (and mapNonEmpty!1759 ((_ is ValueCellFull!543) mapValue!1759)) b!32492))

(assert (= (and b!32502 ((_ is ValueCellFull!543) mapDefault!1759)) b!32501))

(assert (= start!4244 b!32502))

(declare-fun m!25999 () Bool)

(assert (=> b!32497 m!25999))

(declare-fun m!26001 () Bool)

(assert (=> b!32499 m!26001))

(assert (=> b!32499 m!26001))

(declare-fun m!26003 () Bool)

(assert (=> b!32499 m!26003))

(declare-fun m!26005 () Bool)

(assert (=> b!32498 m!26005))

(declare-fun m!26007 () Bool)

(assert (=> b!32495 m!26007))

(declare-fun m!26009 () Bool)

(assert (=> b!32494 m!26009))

(declare-fun m!26011 () Bool)

(assert (=> b!32500 m!26011))

(declare-fun m!26013 () Bool)

(assert (=> mapNonEmpty!1759 m!26013))

(declare-fun m!26015 () Bool)

(assert (=> start!4244 m!26015))

(declare-fun m!26017 () Bool)

(assert (=> start!4244 m!26017))

(declare-fun m!26019 () Bool)

(assert (=> start!4244 m!26019))

(declare-fun m!26021 () Bool)

(assert (=> b!32493 m!26021))

(assert (=> b!32493 m!26021))

(declare-fun m!26023 () Bool)

(assert (=> b!32493 m!26023))

(check-sat (not b!32493) (not b!32494) (not b!32500) tp_is_empty!1485 (not b!32495) (not mapNonEmpty!1759) (not start!4244) (not b_next!1131) (not b!32497) b_and!1945 (not b!32499) (not b!32498))
(check-sat b_and!1945 (not b_next!1131))
(get-model)

(declare-fun d!5103 () Bool)

(declare-fun e!20677 () Bool)

(assert (=> d!5103 e!20677))

(declare-fun res!19756 () Bool)

(assert (=> d!5103 (=> res!19756 e!20677)))

(declare-fun lt!11771 () Bool)

(assert (=> d!5103 (= res!19756 (not lt!11771))))

(declare-fun lt!11769 () Bool)

(assert (=> d!5103 (= lt!11771 lt!11769)))

(declare-datatypes ((Unit!711 0))(
  ( (Unit!712) )
))
(declare-fun lt!11770 () Unit!711)

(declare-fun e!20676 () Unit!711)

(assert (=> d!5103 (= lt!11770 e!20676)))

(declare-fun c!3784 () Bool)

(assert (=> d!5103 (= c!3784 lt!11769)))

(declare-fun containsKey!30 (List!845 (_ BitVec 64)) Bool)

(assert (=> d!5103 (= lt!11769 (containsKey!30 (toList!427 (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!5103 (= (contains!365 (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!11771)))

(declare-fun b!32542 () Bool)

(declare-fun lt!11772 () Unit!711)

(assert (=> b!32542 (= e!20676 lt!11772)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!27 (List!845 (_ BitVec 64)) Unit!711)

(assert (=> b!32542 (= lt!11772 (lemmaContainsKeyImpliesGetValueByKeyDefined!27 (toList!427 (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!72 0))(
  ( (Some!71 (v!1861 V!1805)) (None!70) )
))
(declare-fun isDefined!28 (Option!72) Bool)

(declare-fun getValueByKey!66 (List!845 (_ BitVec 64)) Option!72)

(assert (=> b!32542 (isDefined!28 (getValueByKey!66 (toList!427 (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!32543 () Bool)

(declare-fun Unit!713 () Unit!711)

(assert (=> b!32543 (= e!20676 Unit!713)))

(declare-fun b!32544 () Bool)

(assert (=> b!32544 (= e!20677 (isDefined!28 (getValueByKey!66 (toList!427 (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!5103 c!3784) b!32542))

(assert (= (and d!5103 (not c!3784)) b!32543))

(assert (= (and d!5103 (not res!19756)) b!32544))

(declare-fun m!26051 () Bool)

(assert (=> d!5103 m!26051))

(declare-fun m!26053 () Bool)

(assert (=> b!32542 m!26053))

(declare-fun m!26055 () Bool)

(assert (=> b!32542 m!26055))

(assert (=> b!32542 m!26055))

(declare-fun m!26057 () Bool)

(assert (=> b!32542 m!26057))

(assert (=> b!32544 m!26055))

(assert (=> b!32544 m!26055))

(assert (=> b!32544 m!26057))

(assert (=> b!32493 d!5103))

(declare-fun bm!2627 () Bool)

(declare-fun call!2635 () ListLongMap!823)

(declare-fun call!2630 () ListLongMap!823)

(assert (=> bm!2627 (= call!2635 call!2630)))

(declare-fun b!32587 () Bool)

(declare-fun e!20716 () Bool)

(declare-fun e!20715 () Bool)

(assert (=> b!32587 (= e!20716 e!20715)))

(declare-fun res!19776 () Bool)

(assert (=> b!32587 (=> (not res!19776) (not e!20715))))

(declare-fun lt!11830 () ListLongMap!823)

(assert (=> b!32587 (= res!19776 (contains!365 lt!11830 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!32587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1143 _keys!1833)))))

(declare-fun d!5105 () Bool)

(declare-fun e!20711 () Bool)

(assert (=> d!5105 e!20711))

(declare-fun res!19783 () Bool)

(assert (=> d!5105 (=> (not res!19783) (not e!20711))))

(assert (=> d!5105 (= res!19783 (or (bvsge #b00000000000000000000000000000000 (size!1143 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1143 _keys!1833)))))))

(declare-fun lt!11832 () ListLongMap!823)

(assert (=> d!5105 (= lt!11830 lt!11832)))

(declare-fun lt!11822 () Unit!711)

(declare-fun e!20710 () Unit!711)

(assert (=> d!5105 (= lt!11822 e!20710)))

(declare-fun c!3802 () Bool)

(declare-fun e!20705 () Bool)

(assert (=> d!5105 (= c!3802 e!20705)))

(declare-fun res!19779 () Bool)

(assert (=> d!5105 (=> (not res!19779) (not e!20705))))

(assert (=> d!5105 (= res!19779 (bvslt #b00000000000000000000000000000000 (size!1143 _keys!1833)))))

(declare-fun e!20713 () ListLongMap!823)

(assert (=> d!5105 (= lt!11832 e!20713)))

(declare-fun c!3798 () Bool)

(assert (=> d!5105 (= c!3798 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5105 (validMask!0 mask!2294)))

(assert (=> d!5105 (= (getCurrentListMap!252 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!11830)))

(declare-fun bm!2628 () Bool)

(declare-fun call!2631 () ListLongMap!823)

(assert (=> bm!2628 (= call!2630 call!2631)))

(declare-fun bm!2629 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!21 (array!2179 array!2177 (_ BitVec 32) (_ BitVec 32) V!1805 V!1805 (_ BitVec 32) Int) ListLongMap!823)

(assert (=> bm!2629 (= call!2631 (getCurrentListMapNoExtraKeys!21 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!32588 () Bool)

(declare-fun apply!34 (ListLongMap!823 (_ BitVec 64)) V!1805)

(declare-fun get!553 (ValueCell!543 V!1805) V!1805)

(declare-fun dynLambda!151 (Int (_ BitVec 64)) V!1805)

(assert (=> b!32588 (= e!20715 (= (apply!34 lt!11830 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)) (get!553 (select (arr!1041 _values!1501) #b00000000000000000000000000000000) (dynLambda!151 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!32588 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1142 _values!1501)))))

(assert (=> b!32588 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1143 _keys!1833)))))

(declare-fun bm!2630 () Bool)

(declare-fun call!2633 () Bool)

(assert (=> bm!2630 (= call!2633 (contains!365 lt!11830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2631 () Bool)

(declare-fun call!2634 () Bool)

(assert (=> bm!2631 (= call!2634 (contains!365 lt!11830 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!32589 () Bool)

(declare-fun e!20704 () ListLongMap!823)

(assert (=> b!32589 (= e!20704 call!2635)))

(declare-fun bm!2632 () Bool)

(declare-fun call!2636 () ListLongMap!823)

(declare-fun call!2632 () ListLongMap!823)

(assert (=> bm!2632 (= call!2636 call!2632)))

(declare-fun b!32590 () Bool)

(declare-fun e!20712 () ListLongMap!823)

(assert (=> b!32590 (= e!20713 e!20712)))

(declare-fun c!3801 () Bool)

(assert (=> b!32590 (= c!3801 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!32591 () Bool)

(declare-fun Unit!714 () Unit!711)

(assert (=> b!32591 (= e!20710 Unit!714)))

(declare-fun bm!2633 () Bool)

(declare-fun +!52 (ListLongMap!823 tuple2!1242) ListLongMap!823)

(assert (=> bm!2633 (= call!2632 (+!52 (ite c!3798 call!2631 (ite c!3801 call!2630 call!2635)) (ite (or c!3798 c!3801) (tuple2!1243 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1243 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!32592 () Bool)

(declare-fun e!20706 () Bool)

(declare-fun e!20714 () Bool)

(assert (=> b!32592 (= e!20706 e!20714)))

(declare-fun res!19775 () Bool)

(assert (=> b!32592 (= res!19775 call!2633)))

(assert (=> b!32592 (=> (not res!19775) (not e!20714))))

(declare-fun b!32593 () Bool)

(declare-fun e!20709 () Bool)

(assert (=> b!32593 (= e!20709 (not call!2634))))

(declare-fun b!32594 () Bool)

(declare-fun lt!11834 () Unit!711)

(assert (=> b!32594 (= e!20710 lt!11834)))

(declare-fun lt!11820 () ListLongMap!823)

(assert (=> b!32594 (= lt!11820 (getCurrentListMapNoExtraKeys!21 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11817 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11817 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11831 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11831 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11827 () Unit!711)

(declare-fun addStillContains!19 (ListLongMap!823 (_ BitVec 64) V!1805 (_ BitVec 64)) Unit!711)

(assert (=> b!32594 (= lt!11827 (addStillContains!19 lt!11820 lt!11817 zeroValue!1443 lt!11831))))

(assert (=> b!32594 (contains!365 (+!52 lt!11820 (tuple2!1243 lt!11817 zeroValue!1443)) lt!11831)))

(declare-fun lt!11829 () Unit!711)

(assert (=> b!32594 (= lt!11829 lt!11827)))

(declare-fun lt!11828 () ListLongMap!823)

(assert (=> b!32594 (= lt!11828 (getCurrentListMapNoExtraKeys!21 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11838 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11838 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11819 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11819 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11826 () Unit!711)

(declare-fun addApplyDifferent!19 (ListLongMap!823 (_ BitVec 64) V!1805 (_ BitVec 64)) Unit!711)

(assert (=> b!32594 (= lt!11826 (addApplyDifferent!19 lt!11828 lt!11838 minValue!1443 lt!11819))))

(assert (=> b!32594 (= (apply!34 (+!52 lt!11828 (tuple2!1243 lt!11838 minValue!1443)) lt!11819) (apply!34 lt!11828 lt!11819))))

(declare-fun lt!11836 () Unit!711)

(assert (=> b!32594 (= lt!11836 lt!11826)))

(declare-fun lt!11835 () ListLongMap!823)

(assert (=> b!32594 (= lt!11835 (getCurrentListMapNoExtraKeys!21 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11818 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11818 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11837 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11837 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11833 () Unit!711)

(assert (=> b!32594 (= lt!11833 (addApplyDifferent!19 lt!11835 lt!11818 zeroValue!1443 lt!11837))))

(assert (=> b!32594 (= (apply!34 (+!52 lt!11835 (tuple2!1243 lt!11818 zeroValue!1443)) lt!11837) (apply!34 lt!11835 lt!11837))))

(declare-fun lt!11824 () Unit!711)

(assert (=> b!32594 (= lt!11824 lt!11833)))

(declare-fun lt!11823 () ListLongMap!823)

(assert (=> b!32594 (= lt!11823 (getCurrentListMapNoExtraKeys!21 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!11821 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11821 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!11825 () (_ BitVec 64))

(assert (=> b!32594 (= lt!11825 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!32594 (= lt!11834 (addApplyDifferent!19 lt!11823 lt!11821 minValue!1443 lt!11825))))

(assert (=> b!32594 (= (apply!34 (+!52 lt!11823 (tuple2!1243 lt!11821 minValue!1443)) lt!11825) (apply!34 lt!11823 lt!11825))))

(declare-fun b!32595 () Bool)

(assert (=> b!32595 (= e!20713 (+!52 call!2632 (tuple2!1243 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!32596 () Bool)

(declare-fun c!3800 () Bool)

(assert (=> b!32596 (= c!3800 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!32596 (= e!20712 e!20704)))

(declare-fun b!32597 () Bool)

(declare-fun res!19778 () Bool)

(assert (=> b!32597 (=> (not res!19778) (not e!20711))))

(assert (=> b!32597 (= res!19778 e!20706)))

(declare-fun c!3799 () Bool)

(assert (=> b!32597 (= c!3799 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!32598 () Bool)

(declare-fun e!20708 () Bool)

(assert (=> b!32598 (= e!20709 e!20708)))

(declare-fun res!19777 () Bool)

(assert (=> b!32598 (= res!19777 call!2634)))

(assert (=> b!32598 (=> (not res!19777) (not e!20708))))

(declare-fun b!32599 () Bool)

(assert (=> b!32599 (= e!20706 (not call!2633))))

(declare-fun b!32600 () Bool)

(declare-fun e!20707 () Bool)

(assert (=> b!32600 (= e!20707 (validKeyInArray!0 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32601 () Bool)

(assert (=> b!32601 (= e!20712 call!2636)))

(declare-fun b!32602 () Bool)

(assert (=> b!32602 (= e!20714 (= (apply!34 lt!11830 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!32603 () Bool)

(declare-fun res!19781 () Bool)

(assert (=> b!32603 (=> (not res!19781) (not e!20711))))

(assert (=> b!32603 (= res!19781 e!20716)))

(declare-fun res!19782 () Bool)

(assert (=> b!32603 (=> res!19782 e!20716)))

(assert (=> b!32603 (= res!19782 (not e!20707))))

(declare-fun res!19780 () Bool)

(assert (=> b!32603 (=> (not res!19780) (not e!20707))))

(assert (=> b!32603 (= res!19780 (bvslt #b00000000000000000000000000000000 (size!1143 _keys!1833)))))

(declare-fun b!32604 () Bool)

(assert (=> b!32604 (= e!20711 e!20709)))

(declare-fun c!3797 () Bool)

(assert (=> b!32604 (= c!3797 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!32605 () Bool)

(assert (=> b!32605 (= e!20705 (validKeyInArray!0 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32606 () Bool)

(assert (=> b!32606 (= e!20708 (= (apply!34 lt!11830 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!32607 () Bool)

(assert (=> b!32607 (= e!20704 call!2636)))

(assert (= (and d!5105 c!3798) b!32595))

(assert (= (and d!5105 (not c!3798)) b!32590))

(assert (= (and b!32590 c!3801) b!32601))

(assert (= (and b!32590 (not c!3801)) b!32596))

(assert (= (and b!32596 c!3800) b!32607))

(assert (= (and b!32596 (not c!3800)) b!32589))

(assert (= (or b!32607 b!32589) bm!2627))

(assert (= (or b!32601 bm!2627) bm!2628))

(assert (= (or b!32601 b!32607) bm!2632))

(assert (= (or b!32595 bm!2628) bm!2629))

(assert (= (or b!32595 bm!2632) bm!2633))

(assert (= (and d!5105 res!19779) b!32605))

(assert (= (and d!5105 c!3802) b!32594))

(assert (= (and d!5105 (not c!3802)) b!32591))

(assert (= (and d!5105 res!19783) b!32603))

(assert (= (and b!32603 res!19780) b!32600))

(assert (= (and b!32603 (not res!19782)) b!32587))

(assert (= (and b!32587 res!19776) b!32588))

(assert (= (and b!32603 res!19781) b!32597))

(assert (= (and b!32597 c!3799) b!32592))

(assert (= (and b!32597 (not c!3799)) b!32599))

(assert (= (and b!32592 res!19775) b!32602))

(assert (= (or b!32592 b!32599) bm!2630))

(assert (= (and b!32597 res!19778) b!32604))

(assert (= (and b!32604 c!3797) b!32598))

(assert (= (and b!32604 (not c!3797)) b!32593))

(assert (= (and b!32598 res!19777) b!32606))

(assert (= (or b!32598 b!32593) bm!2631))

(declare-fun b_lambda!1703 () Bool)

(assert (=> (not b_lambda!1703) (not b!32588)))

(declare-fun t!3546 () Bool)

(declare-fun tb!685 () Bool)

(assert (=> (and start!4244 (= defaultEntry!1504 defaultEntry!1504) t!3546) tb!685))

(declare-fun result!1161 () Bool)

(assert (=> tb!685 (= result!1161 tp_is_empty!1485)))

(assert (=> b!32588 t!3546))

(declare-fun b_and!1949 () Bool)

(assert (= b_and!1945 (and (=> t!3546 result!1161) b_and!1949)))

(declare-fun m!26059 () Bool)

(assert (=> bm!2633 m!26059))

(declare-fun m!26061 () Bool)

(assert (=> b!32606 m!26061))

(declare-fun m!26063 () Bool)

(assert (=> bm!2629 m!26063))

(declare-fun m!26065 () Bool)

(assert (=> bm!2631 m!26065))

(declare-fun m!26067 () Bool)

(assert (=> b!32600 m!26067))

(assert (=> b!32600 m!26067))

(declare-fun m!26069 () Bool)

(assert (=> b!32600 m!26069))

(declare-fun m!26071 () Bool)

(assert (=> b!32602 m!26071))

(assert (=> b!32605 m!26067))

(assert (=> b!32605 m!26067))

(assert (=> b!32605 m!26069))

(declare-fun m!26073 () Bool)

(assert (=> b!32595 m!26073))

(declare-fun m!26075 () Bool)

(assert (=> b!32594 m!26075))

(declare-fun m!26077 () Bool)

(assert (=> b!32594 m!26077))

(declare-fun m!26079 () Bool)

(assert (=> b!32594 m!26079))

(declare-fun m!26081 () Bool)

(assert (=> b!32594 m!26081))

(declare-fun m!26083 () Bool)

(assert (=> b!32594 m!26083))

(declare-fun m!26085 () Bool)

(assert (=> b!32594 m!26085))

(declare-fun m!26087 () Bool)

(assert (=> b!32594 m!26087))

(declare-fun m!26089 () Bool)

(assert (=> b!32594 m!26089))

(declare-fun m!26091 () Bool)

(assert (=> b!32594 m!26091))

(declare-fun m!26093 () Bool)

(assert (=> b!32594 m!26093))

(assert (=> b!32594 m!26063))

(assert (=> b!32594 m!26067))

(declare-fun m!26095 () Bool)

(assert (=> b!32594 m!26095))

(declare-fun m!26097 () Bool)

(assert (=> b!32594 m!26097))

(assert (=> b!32594 m!26079))

(declare-fun m!26099 () Bool)

(assert (=> b!32594 m!26099))

(declare-fun m!26101 () Bool)

(assert (=> b!32594 m!26101))

(declare-fun m!26103 () Bool)

(assert (=> b!32594 m!26103))

(assert (=> b!32594 m!26083))

(assert (=> b!32594 m!26087))

(assert (=> b!32594 m!26075))

(assert (=> b!32587 m!26067))

(assert (=> b!32587 m!26067))

(declare-fun m!26105 () Bool)

(assert (=> b!32587 m!26105))

(assert (=> d!5105 m!26015))

(declare-fun m!26107 () Bool)

(assert (=> bm!2630 m!26107))

(declare-fun m!26109 () Bool)

(assert (=> b!32588 m!26109))

(declare-fun m!26111 () Bool)

(assert (=> b!32588 m!26111))

(assert (=> b!32588 m!26109))

(declare-fun m!26113 () Bool)

(assert (=> b!32588 m!26113))

(assert (=> b!32588 m!26067))

(declare-fun m!26115 () Bool)

(assert (=> b!32588 m!26115))

(assert (=> b!32588 m!26067))

(assert (=> b!32588 m!26111))

(assert (=> b!32493 d!5105))

(declare-fun d!5107 () Bool)

(assert (=> d!5107 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!32497 d!5107))

(declare-fun d!5109 () Bool)

(declare-fun lt!11841 () (_ BitVec 32))

(assert (=> d!5109 (and (or (bvslt lt!11841 #b00000000000000000000000000000000) (bvsge lt!11841 (size!1143 _keys!1833)) (and (bvsge lt!11841 #b00000000000000000000000000000000) (bvslt lt!11841 (size!1143 _keys!1833)))) (bvsge lt!11841 #b00000000000000000000000000000000) (bvslt lt!11841 (size!1143 _keys!1833)) (= (select (arr!1042 _keys!1833) lt!11841) k0!1304))))

(declare-fun e!20719 () (_ BitVec 32))

(assert (=> d!5109 (= lt!11841 e!20719)))

(declare-fun c!3805 () Bool)

(assert (=> d!5109 (= c!3805 (= (select (arr!1042 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5109 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1143 _keys!1833)) (bvslt (size!1143 _keys!1833) #b01111111111111111111111111111111))))

(assert (=> d!5109 (= (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) lt!11841)))

(declare-fun b!32614 () Bool)

(assert (=> b!32614 (= e!20719 #b00000000000000000000000000000000)))

(declare-fun b!32615 () Bool)

(assert (=> b!32615 (= e!20719 (arrayScanForKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5109 c!3805) b!32614))

(assert (= (and d!5109 (not c!3805)) b!32615))

(declare-fun m!26117 () Bool)

(assert (=> d!5109 m!26117))

(assert (=> d!5109 m!26067))

(declare-fun m!26119 () Bool)

(assert (=> b!32615 m!26119))

(assert (=> b!32500 d!5109))

(declare-fun d!5111 () Bool)

(assert (=> d!5111 (= (validKeyInArray!0 (select (arr!1042 _keys!1833) lt!11757)) (and (not (= (select (arr!1042 _keys!1833) lt!11757) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1042 _keys!1833) lt!11757) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!32499 d!5111))

(declare-fun d!5113 () Bool)

(assert (=> d!5113 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4244 d!5113))

(declare-fun d!5115 () Bool)

(assert (=> d!5115 (= (array_inv!691 _values!1501) (bvsge (size!1142 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4244 d!5115))

(declare-fun d!5117 () Bool)

(assert (=> d!5117 (= (array_inv!692 _keys!1833) (bvsge (size!1143 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4244 d!5117))

(declare-fun d!5119 () Bool)

(declare-fun res!19788 () Bool)

(declare-fun e!20724 () Bool)

(assert (=> d!5119 (=> res!19788 e!20724)))

(assert (=> d!5119 (= res!19788 (= (select (arr!1042 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5119 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!20724)))

(declare-fun b!32620 () Bool)

(declare-fun e!20725 () Bool)

(assert (=> b!32620 (= e!20724 e!20725)))

(declare-fun res!19789 () Bool)

(assert (=> b!32620 (=> (not res!19789) (not e!20725))))

(assert (=> b!32620 (= res!19789 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1143 _keys!1833)))))

(declare-fun b!32621 () Bool)

(assert (=> b!32621 (= e!20725 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5119 (not res!19788)) b!32620))

(assert (= (and b!32620 res!19789) b!32621))

(assert (=> d!5119 m!26067))

(declare-fun m!26121 () Bool)

(assert (=> b!32621 m!26121))

(assert (=> b!32495 d!5119))

(declare-fun b!32630 () Bool)

(declare-fun e!20733 () Bool)

(declare-fun call!2639 () Bool)

(assert (=> b!32630 (= e!20733 call!2639)))

(declare-fun d!5121 () Bool)

(declare-fun res!19794 () Bool)

(declare-fun e!20734 () Bool)

(assert (=> d!5121 (=> res!19794 e!20734)))

(assert (=> d!5121 (= res!19794 (bvsge #b00000000000000000000000000000000 (size!1143 _keys!1833)))))

(assert (=> d!5121 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!20734)))

(declare-fun bm!2636 () Bool)

(assert (=> bm!2636 (= call!2639 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!32631 () Bool)

(declare-fun e!20732 () Bool)

(assert (=> b!32631 (= e!20732 e!20733)))

(declare-fun lt!11848 () (_ BitVec 64))

(assert (=> b!32631 (= lt!11848 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!11850 () Unit!711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2179 (_ BitVec 64) (_ BitVec 32)) Unit!711)

(assert (=> b!32631 (= lt!11850 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!11848 #b00000000000000000000000000000000))))

(assert (=> b!32631 (arrayContainsKey!0 _keys!1833 lt!11848 #b00000000000000000000000000000000)))

(declare-fun lt!11849 () Unit!711)

(assert (=> b!32631 (= lt!11849 lt!11850)))

(declare-fun res!19795 () Bool)

(declare-datatypes ((SeekEntryResult!130 0))(
  ( (MissingZero!130 (index!2642 (_ BitVec 32))) (Found!130 (index!2643 (_ BitVec 32))) (Intermediate!130 (undefined!942 Bool) (index!2644 (_ BitVec 32)) (x!6748 (_ BitVec 32))) (Undefined!130) (MissingVacant!130 (index!2645 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2179 (_ BitVec 32)) SeekEntryResult!130)

(assert (=> b!32631 (= res!19795 (= (seekEntryOrOpen!0 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!130 #b00000000000000000000000000000000)))))

(assert (=> b!32631 (=> (not res!19795) (not e!20733))))

(declare-fun b!32632 () Bool)

(assert (=> b!32632 (= e!20734 e!20732)))

(declare-fun c!3808 () Bool)

(assert (=> b!32632 (= c!3808 (validKeyInArray!0 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32633 () Bool)

(assert (=> b!32633 (= e!20732 call!2639)))

(assert (= (and d!5121 (not res!19794)) b!32632))

(assert (= (and b!32632 c!3808) b!32631))

(assert (= (and b!32632 (not c!3808)) b!32633))

(assert (= (and b!32631 res!19795) b!32630))

(assert (= (or b!32630 b!32633) bm!2636))

(declare-fun m!26123 () Bool)

(assert (=> bm!2636 m!26123))

(assert (=> b!32631 m!26067))

(declare-fun m!26125 () Bool)

(assert (=> b!32631 m!26125))

(declare-fun m!26127 () Bool)

(assert (=> b!32631 m!26127))

(assert (=> b!32631 m!26067))

(declare-fun m!26129 () Bool)

(assert (=> b!32631 m!26129))

(assert (=> b!32632 m!26067))

(assert (=> b!32632 m!26067))

(assert (=> b!32632 m!26069))

(assert (=> b!32494 d!5121))

(declare-fun bm!2639 () Bool)

(declare-fun call!2642 () Bool)

(declare-fun c!3811 () Bool)

(assert (=> bm!2639 (= call!2642 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3811 (Cons!842 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000) Nil!843) Nil!843)))))

(declare-fun d!5123 () Bool)

(declare-fun res!19803 () Bool)

(declare-fun e!20743 () Bool)

(assert (=> d!5123 (=> res!19803 e!20743)))

(assert (=> d!5123 (= res!19803 (bvsge #b00000000000000000000000000000000 (size!1143 _keys!1833)))))

(assert (=> d!5123 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!843) e!20743)))

(declare-fun b!32644 () Bool)

(declare-fun e!20745 () Bool)

(declare-fun e!20744 () Bool)

(assert (=> b!32644 (= e!20745 e!20744)))

(assert (=> b!32644 (= c!3811 (validKeyInArray!0 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32645 () Bool)

(assert (=> b!32645 (= e!20744 call!2642)))

(declare-fun b!32646 () Bool)

(declare-fun e!20746 () Bool)

(declare-fun contains!367 (List!846 (_ BitVec 64)) Bool)

(assert (=> b!32646 (= e!20746 (contains!367 Nil!843 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!32647 () Bool)

(assert (=> b!32647 (= e!20744 call!2642)))

(declare-fun b!32648 () Bool)

(assert (=> b!32648 (= e!20743 e!20745)))

(declare-fun res!19804 () Bool)

(assert (=> b!32648 (=> (not res!19804) (not e!20745))))

(assert (=> b!32648 (= res!19804 (not e!20746))))

(declare-fun res!19802 () Bool)

(assert (=> b!32648 (=> (not res!19802) (not e!20746))))

(assert (=> b!32648 (= res!19802 (validKeyInArray!0 (select (arr!1042 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5123 (not res!19803)) b!32648))

(assert (= (and b!32648 res!19802) b!32646))

(assert (= (and b!32648 res!19804) b!32644))

(assert (= (and b!32644 c!3811) b!32645))

(assert (= (and b!32644 (not c!3811)) b!32647))

(assert (= (or b!32645 b!32647) bm!2639))

(assert (=> bm!2639 m!26067))

(declare-fun m!26131 () Bool)

(assert (=> bm!2639 m!26131))

(assert (=> b!32644 m!26067))

(assert (=> b!32644 m!26067))

(assert (=> b!32644 m!26069))

(assert (=> b!32646 m!26067))

(assert (=> b!32646 m!26067))

(declare-fun m!26133 () Bool)

(assert (=> b!32646 m!26133))

(assert (=> b!32648 m!26067))

(assert (=> b!32648 m!26067))

(assert (=> b!32648 m!26069))

(assert (=> b!32498 d!5123))

(declare-fun b!32656 () Bool)

(declare-fun e!20752 () Bool)

(assert (=> b!32656 (= e!20752 tp_is_empty!1485)))

(declare-fun b!32655 () Bool)

(declare-fun e!20751 () Bool)

(assert (=> b!32655 (= e!20751 tp_is_empty!1485)))

(declare-fun condMapEmpty!1765 () Bool)

(declare-fun mapDefault!1765 () ValueCell!543)

(assert (=> mapNonEmpty!1759 (= condMapEmpty!1765 (= mapRest!1759 ((as const (Array (_ BitVec 32) ValueCell!543)) mapDefault!1765)))))

(declare-fun mapRes!1765 () Bool)

(assert (=> mapNonEmpty!1759 (= tp!4816 (and e!20752 mapRes!1765))))

(declare-fun mapNonEmpty!1765 () Bool)

(declare-fun tp!4825 () Bool)

(assert (=> mapNonEmpty!1765 (= mapRes!1765 (and tp!4825 e!20751))))

(declare-fun mapRest!1765 () (Array (_ BitVec 32) ValueCell!543))

(declare-fun mapKey!1765 () (_ BitVec 32))

(declare-fun mapValue!1765 () ValueCell!543)

(assert (=> mapNonEmpty!1765 (= mapRest!1759 (store mapRest!1765 mapKey!1765 mapValue!1765))))

(declare-fun mapIsEmpty!1765 () Bool)

(assert (=> mapIsEmpty!1765 mapRes!1765))

(assert (= (and mapNonEmpty!1759 condMapEmpty!1765) mapIsEmpty!1765))

(assert (= (and mapNonEmpty!1759 (not condMapEmpty!1765)) mapNonEmpty!1765))

(assert (= (and mapNonEmpty!1765 ((_ is ValueCellFull!543) mapValue!1765)) b!32655))

(assert (= (and mapNonEmpty!1759 ((_ is ValueCellFull!543) mapDefault!1765)) b!32656))

(declare-fun m!26135 () Bool)

(assert (=> mapNonEmpty!1765 m!26135))

(declare-fun b_lambda!1705 () Bool)

(assert (= b_lambda!1703 (or (and start!4244 b_free!1131) b_lambda!1705)))

(check-sat (not b!32542) (not b!32602) (not b!32605) (not b!32631) (not bm!2639) (not bm!2630) tp_is_empty!1485 (not b!32621) (not b!32595) (not bm!2631) (not d!5103) (not b!32606) (not b_next!1131) (not mapNonEmpty!1765) (not bm!2633) (not b!32648) (not d!5105) (not b!32632) (not b!32544) (not b_lambda!1705) (not b!32587) (not b!32644) (not b!32594) (not b!32615) (not bm!2629) b_and!1949 (not b!32646) (not b!32588) (not bm!2636) (not b!32600))
(check-sat b_and!1949 (not b_next!1131))
