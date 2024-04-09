; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100582 () Bool)

(assert start!100582)

(declare-fun b_free!25869 () Bool)

(declare-fun b_next!25869 () Bool)

(assert (=> start!100582 (= b_free!25869 (not b_next!25869))))

(declare-fun tp!90597 () Bool)

(declare-fun b_and!42639 () Bool)

(assert (=> start!100582 (= tp!90597 b_and!42639)))

(declare-fun b!1201997 () Bool)

(declare-fun e!682609 () Bool)

(declare-fun tp_is_empty!30573 () Bool)

(assert (=> b!1201997 (= e!682609 tp_is_empty!30573)))

(declare-fun b!1201998 () Bool)

(declare-fun res!800161 () Bool)

(declare-fun e!682601 () Bool)

(assert (=> b!1201998 (=> (not res!800161) (not e!682601))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201998 (= res!800161 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!47702 () Bool)

(declare-fun mapRes!47702 () Bool)

(assert (=> mapIsEmpty!47702 mapRes!47702))

(declare-fun b!1201999 () Bool)

(declare-fun e!682610 () Bool)

(assert (=> b!1201999 (= e!682610 true)))

(declare-datatypes ((Unit!39771 0))(
  ( (Unit!39772) )
))
(declare-fun lt!544740 () Unit!39771)

(declare-fun e!682612 () Unit!39771)

(assert (=> b!1201999 (= lt!544740 e!682612)))

(declare-fun c!117561 () Bool)

(declare-fun lt!544738 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1201999 (= c!117561 (and (not lt!544738) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1201999 (= lt!544738 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!45891 0))(
  ( (V!45892 (val!15343 Int)) )
))
(declare-datatypes ((tuple2!19794 0))(
  ( (tuple2!19795 (_1!9907 (_ BitVec 64)) (_2!9907 V!45891)) )
))
(declare-datatypes ((List!26624 0))(
  ( (Nil!26621) (Cons!26620 (h!27829 tuple2!19794) (t!39480 List!26624)) )
))
(declare-datatypes ((ListLongMap!17775 0))(
  ( (ListLongMap!17776 (toList!8903 List!26624)) )
))
(declare-fun call!57627 () ListLongMap!17775)

(declare-fun call!57628 () ListLongMap!17775)

(declare-fun e!682602 () Bool)

(declare-fun b!1202000 () Bool)

(declare-fun -!1822 (ListLongMap!17775 (_ BitVec 64)) ListLongMap!17775)

(assert (=> b!1202000 (= e!682602 (= call!57628 (-!1822 call!57627 k0!934)))))

(declare-fun b!1202001 () Bool)

(declare-fun e!682605 () Bool)

(declare-fun e!682603 () Bool)

(assert (=> b!1202001 (= e!682605 e!682603)))

(declare-fun res!800168 () Bool)

(assert (=> b!1202001 (=> res!800168 e!682603)))

(declare-datatypes ((array!77896 0))(
  ( (array!77897 (arr!37589 (Array (_ BitVec 32) (_ BitVec 64))) (size!38126 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77896)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1202001 (= res!800168 (not (= (select (arr!37589 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1202001 e!682602))

(declare-fun c!117559 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202001 (= c!117559 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!45891)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14577 0))(
  ( (ValueCellFull!14577 (v!17982 V!45891)) (EmptyCell!14577) )
))
(declare-datatypes ((array!77898 0))(
  ( (array!77899 (arr!37590 (Array (_ BitVec 32) ValueCell!14577)) (size!38127 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77898)

(declare-fun minValue!944 () V!45891)

(declare-fun lt!544737 () Unit!39771)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1028 (array!77896 array!77898 (_ BitVec 32) (_ BitVec 32) V!45891 V!45891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39771)

(assert (=> b!1202001 (= lt!544737 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1028 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202002 () Bool)

(declare-fun e!682600 () Unit!39771)

(assert (=> b!1202002 (= e!682612 e!682600)))

(declare-fun c!117560 () Bool)

(assert (=> b!1202002 (= c!117560 (and (not lt!544738) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1202003 () Bool)

(declare-fun res!800162 () Bool)

(assert (=> b!1202003 (=> (not res!800162) (not e!682601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202003 (= res!800162 (validMask!0 mask!1564))))

(declare-fun b!1202004 () Bool)

(declare-fun e!682607 () Bool)

(assert (=> b!1202004 (= e!682607 (and e!682609 mapRes!47702))))

(declare-fun condMapEmpty!47702 () Bool)

(declare-fun mapDefault!47702 () ValueCell!14577)

(assert (=> b!1202004 (= condMapEmpty!47702 (= (arr!37590 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14577)) mapDefault!47702)))))

(declare-fun b!1202005 () Bool)

(declare-fun lt!544748 () Unit!39771)

(assert (=> b!1202005 (= e!682612 lt!544748)))

(declare-fun lt!544744 () Unit!39771)

(declare-fun lt!544747 () ListLongMap!17775)

(declare-fun addStillContains!1004 (ListLongMap!17775 (_ BitVec 64) V!45891 (_ BitVec 64)) Unit!39771)

(assert (=> b!1202005 (= lt!544744 (addStillContains!1004 lt!544747 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!544746 () ListLongMap!17775)

(declare-fun call!57631 () ListLongMap!17775)

(assert (=> b!1202005 (= lt!544746 call!57631)))

(declare-fun call!57632 () Bool)

(assert (=> b!1202005 call!57632))

(declare-fun call!57634 () Unit!39771)

(assert (=> b!1202005 (= lt!544748 call!57634)))

(declare-fun contains!6903 (ListLongMap!17775 (_ BitVec 64)) Bool)

(declare-fun +!3942 (ListLongMap!17775 tuple2!19794) ListLongMap!17775)

(assert (=> b!1202005 (contains!6903 (+!3942 lt!544746 (tuple2!19795 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1202006 () Bool)

(declare-fun call!57629 () Bool)

(assert (=> b!1202006 call!57629))

(declare-fun lt!544749 () Unit!39771)

(declare-fun call!57633 () Unit!39771)

(assert (=> b!1202006 (= lt!544749 call!57633)))

(assert (=> b!1202006 (= e!682600 lt!544749)))

(declare-fun call!57630 () ListLongMap!17775)

(declare-fun bm!57624 () Bool)

(assert (=> bm!57624 (= call!57632 (contains!6903 (ite c!117561 lt!544746 call!57630) k0!934))))

(declare-fun mapNonEmpty!47702 () Bool)

(declare-fun tp!90598 () Bool)

(declare-fun e!682611 () Bool)

(assert (=> mapNonEmpty!47702 (= mapRes!47702 (and tp!90598 e!682611))))

(declare-fun mapKey!47702 () (_ BitVec 32))

(declare-fun mapValue!47702 () ValueCell!14577)

(declare-fun mapRest!47702 () (Array (_ BitVec 32) ValueCell!14577))

(assert (=> mapNonEmpty!47702 (= (arr!37590 _values!996) (store mapRest!47702 mapKey!47702 mapValue!47702))))

(declare-fun b!1202007 () Bool)

(declare-fun res!800169 () Bool)

(assert (=> b!1202007 (=> (not res!800169) (not e!682601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77896 (_ BitVec 32)) Bool)

(assert (=> b!1202007 (= res!800169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!57625 () Bool)

(assert (=> bm!57625 (= call!57634 (addStillContains!1004 (ite c!117561 lt!544746 lt!544747) (ite c!117561 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117560 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117561 minValue!944 (ite c!117560 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!57626 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5314 (array!77896 array!77898 (_ BitVec 32) (_ BitVec 32) V!45891 V!45891 (_ BitVec 32) Int) ListLongMap!17775)

(assert (=> bm!57626 (= call!57627 (getCurrentListMapNoExtraKeys!5314 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!544741 () array!77898)

(declare-fun lt!544745 () array!77896)

(declare-fun bm!57627 () Bool)

(assert (=> bm!57627 (= call!57628 (getCurrentListMapNoExtraKeys!5314 lt!544745 lt!544741 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202008 () Bool)

(declare-fun e!682604 () Bool)

(assert (=> b!1202008 (= e!682604 e!682605)))

(declare-fun res!800164 () Bool)

(assert (=> b!1202008 (=> res!800164 e!682605)))

(assert (=> b!1202008 (= res!800164 (not (= from!1455 i!673)))))

(declare-fun lt!544750 () ListLongMap!17775)

(assert (=> b!1202008 (= lt!544750 (getCurrentListMapNoExtraKeys!5314 lt!544745 lt!544741 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3240 (Int (_ BitVec 64)) V!45891)

(assert (=> b!1202008 (= lt!544741 (array!77899 (store (arr!37590 _values!996) i!673 (ValueCellFull!14577 (dynLambda!3240 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38127 _values!996)))))

(declare-fun lt!544739 () ListLongMap!17775)

(assert (=> b!1202008 (= lt!544739 (getCurrentListMapNoExtraKeys!5314 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1202009 () Bool)

(declare-fun e!682599 () Unit!39771)

(declare-fun lt!544742 () Unit!39771)

(assert (=> b!1202009 (= e!682599 lt!544742)))

(assert (=> b!1202009 (= lt!544742 call!57633)))

(assert (=> b!1202009 call!57629))

(declare-fun b!1202010 () Bool)

(declare-fun res!800158 () Bool)

(assert (=> b!1202010 (=> (not res!800158) (not e!682601))))

(declare-datatypes ((List!26625 0))(
  ( (Nil!26622) (Cons!26621 (h!27830 (_ BitVec 64)) (t!39481 List!26625)) )
))
(declare-fun arrayNoDuplicates!0 (array!77896 (_ BitVec 32) List!26625) Bool)

(assert (=> b!1202010 (= res!800158 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26622))))

(declare-fun b!1202011 () Bool)

(declare-fun res!800159 () Bool)

(assert (=> b!1202011 (=> (not res!800159) (not e!682601))))

(assert (=> b!1202011 (= res!800159 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38126 _keys!1208))))))

(declare-fun b!1202012 () Bool)

(declare-fun res!800166 () Bool)

(assert (=> b!1202012 (=> (not res!800166) (not e!682601))))

(assert (=> b!1202012 (= res!800166 (and (= (size!38127 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38126 _keys!1208) (size!38127 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1202013 () Bool)

(assert (=> b!1202013 (= e!682603 e!682610)))

(declare-fun res!800167 () Bool)

(assert (=> b!1202013 (=> res!800167 e!682610)))

(assert (=> b!1202013 (= res!800167 (not (contains!6903 lt!544747 k0!934)))))

(assert (=> b!1202013 (= lt!544747 (getCurrentListMapNoExtraKeys!5314 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202014 () Bool)

(declare-fun res!800160 () Bool)

(declare-fun e!682608 () Bool)

(assert (=> b!1202014 (=> (not res!800160) (not e!682608))))

(assert (=> b!1202014 (= res!800160 (arrayNoDuplicates!0 lt!544745 #b00000000000000000000000000000000 Nil!26622))))

(declare-fun b!1202015 () Bool)

(declare-fun Unit!39773 () Unit!39771)

(assert (=> b!1202015 (= e!682599 Unit!39773)))

(declare-fun b!1202016 () Bool)

(assert (=> b!1202016 (= e!682601 e!682608)))

(declare-fun res!800163 () Bool)

(assert (=> b!1202016 (=> (not res!800163) (not e!682608))))

(assert (=> b!1202016 (= res!800163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544745 mask!1564))))

(assert (=> b!1202016 (= lt!544745 (array!77897 (store (arr!37589 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38126 _keys!1208)))))

(declare-fun b!1202017 () Bool)

(assert (=> b!1202017 (= e!682611 tp_is_empty!30573)))

(declare-fun b!1202018 () Bool)

(declare-fun res!800156 () Bool)

(assert (=> b!1202018 (=> (not res!800156) (not e!682601))))

(assert (=> b!1202018 (= res!800156 (= (select (arr!37589 _keys!1208) i!673) k0!934))))

(declare-fun res!800165 () Bool)

(assert (=> start!100582 (=> (not res!800165) (not e!682601))))

(assert (=> start!100582 (= res!800165 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38126 _keys!1208))))))

(assert (=> start!100582 e!682601))

(assert (=> start!100582 tp_is_empty!30573))

(declare-fun array_inv!28534 (array!77896) Bool)

(assert (=> start!100582 (array_inv!28534 _keys!1208)))

(assert (=> start!100582 true))

(assert (=> start!100582 tp!90597))

(declare-fun array_inv!28535 (array!77898) Bool)

(assert (=> start!100582 (and (array_inv!28535 _values!996) e!682607)))

(declare-fun b!1202019 () Bool)

(assert (=> b!1202019 (= e!682608 (not e!682604))))

(declare-fun res!800157 () Bool)

(assert (=> b!1202019 (=> res!800157 e!682604)))

(assert (=> b!1202019 (= res!800157 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202019 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544743 () Unit!39771)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77896 (_ BitVec 64) (_ BitVec 32)) Unit!39771)

(assert (=> b!1202019 (= lt!544743 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!57628 () Bool)

(assert (=> bm!57628 (= call!57630 call!57631)))

(declare-fun bm!57629 () Bool)

(assert (=> bm!57629 (= call!57629 call!57632)))

(declare-fun b!1202020 () Bool)

(declare-fun c!117562 () Bool)

(assert (=> b!1202020 (= c!117562 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544738))))

(assert (=> b!1202020 (= e!682600 e!682599)))

(declare-fun bm!57630 () Bool)

(assert (=> bm!57630 (= call!57631 (+!3942 lt!544747 (ite (or c!117561 c!117560) (tuple2!19795 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19795 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!57631 () Bool)

(assert (=> bm!57631 (= call!57633 call!57634)))

(declare-fun b!1202021 () Bool)

(assert (=> b!1202021 (= e!682602 (= call!57628 call!57627))))

(assert (= (and start!100582 res!800165) b!1202003))

(assert (= (and b!1202003 res!800162) b!1202012))

(assert (= (and b!1202012 res!800166) b!1202007))

(assert (= (and b!1202007 res!800169) b!1202010))

(assert (= (and b!1202010 res!800158) b!1202011))

(assert (= (and b!1202011 res!800159) b!1201998))

(assert (= (and b!1201998 res!800161) b!1202018))

(assert (= (and b!1202018 res!800156) b!1202016))

(assert (= (and b!1202016 res!800163) b!1202014))

(assert (= (and b!1202014 res!800160) b!1202019))

(assert (= (and b!1202019 (not res!800157)) b!1202008))

(assert (= (and b!1202008 (not res!800164)) b!1202001))

(assert (= (and b!1202001 c!117559) b!1202000))

(assert (= (and b!1202001 (not c!117559)) b!1202021))

(assert (= (or b!1202000 b!1202021) bm!57626))

(assert (= (or b!1202000 b!1202021) bm!57627))

(assert (= (and b!1202001 (not res!800168)) b!1202013))

(assert (= (and b!1202013 (not res!800167)) b!1201999))

(assert (= (and b!1201999 c!117561) b!1202005))

(assert (= (and b!1201999 (not c!117561)) b!1202002))

(assert (= (and b!1202002 c!117560) b!1202006))

(assert (= (and b!1202002 (not c!117560)) b!1202020))

(assert (= (and b!1202020 c!117562) b!1202009))

(assert (= (and b!1202020 (not c!117562)) b!1202015))

(assert (= (or b!1202006 b!1202009) bm!57631))

(assert (= (or b!1202006 b!1202009) bm!57628))

(assert (= (or b!1202006 b!1202009) bm!57629))

(assert (= (or b!1202005 bm!57629) bm!57624))

(assert (= (or b!1202005 bm!57631) bm!57625))

(assert (= (or b!1202005 bm!57628) bm!57630))

(assert (= (and b!1202004 condMapEmpty!47702) mapIsEmpty!47702))

(assert (= (and b!1202004 (not condMapEmpty!47702)) mapNonEmpty!47702))

(get-info :version)

(assert (= (and mapNonEmpty!47702 ((_ is ValueCellFull!14577) mapValue!47702)) b!1202017))

(assert (= (and b!1202004 ((_ is ValueCellFull!14577) mapDefault!47702)) b!1201997))

(assert (= start!100582 b!1202004))

(declare-fun b_lambda!21083 () Bool)

(assert (=> (not b_lambda!21083) (not b!1202008)))

(declare-fun t!39479 () Bool)

(declare-fun tb!10677 () Bool)

(assert (=> (and start!100582 (= defaultEntry!1004 defaultEntry!1004) t!39479) tb!10677))

(declare-fun result!21923 () Bool)

(assert (=> tb!10677 (= result!21923 tp_is_empty!30573)))

(assert (=> b!1202008 t!39479))

(declare-fun b_and!42641 () Bool)

(assert (= b_and!42639 (and (=> t!39479 result!21923) b_and!42641)))

(declare-fun m!1108003 () Bool)

(assert (=> mapNonEmpty!47702 m!1108003))

(declare-fun m!1108005 () Bool)

(assert (=> b!1201998 m!1108005))

(declare-fun m!1108007 () Bool)

(assert (=> b!1202016 m!1108007))

(declare-fun m!1108009 () Bool)

(assert (=> b!1202016 m!1108009))

(declare-fun m!1108011 () Bool)

(assert (=> b!1202001 m!1108011))

(declare-fun m!1108013 () Bool)

(assert (=> b!1202001 m!1108013))

(declare-fun m!1108015 () Bool)

(assert (=> start!100582 m!1108015))

(declare-fun m!1108017 () Bool)

(assert (=> start!100582 m!1108017))

(declare-fun m!1108019 () Bool)

(assert (=> b!1202000 m!1108019))

(declare-fun m!1108021 () Bool)

(assert (=> b!1202007 m!1108021))

(declare-fun m!1108023 () Bool)

(assert (=> b!1202018 m!1108023))

(declare-fun m!1108025 () Bool)

(assert (=> b!1202003 m!1108025))

(declare-fun m!1108027 () Bool)

(assert (=> bm!57625 m!1108027))

(declare-fun m!1108029 () Bool)

(assert (=> bm!57630 m!1108029))

(declare-fun m!1108031 () Bool)

(assert (=> bm!57627 m!1108031))

(declare-fun m!1108033 () Bool)

(assert (=> b!1202008 m!1108033))

(declare-fun m!1108035 () Bool)

(assert (=> b!1202008 m!1108035))

(declare-fun m!1108037 () Bool)

(assert (=> b!1202008 m!1108037))

(declare-fun m!1108039 () Bool)

(assert (=> b!1202008 m!1108039))

(declare-fun m!1108041 () Bool)

(assert (=> b!1202010 m!1108041))

(declare-fun m!1108043 () Bool)

(assert (=> b!1202005 m!1108043))

(declare-fun m!1108045 () Bool)

(assert (=> b!1202005 m!1108045))

(assert (=> b!1202005 m!1108045))

(declare-fun m!1108047 () Bool)

(assert (=> b!1202005 m!1108047))

(declare-fun m!1108049 () Bool)

(assert (=> b!1202014 m!1108049))

(declare-fun m!1108051 () Bool)

(assert (=> b!1202019 m!1108051))

(declare-fun m!1108053 () Bool)

(assert (=> b!1202019 m!1108053))

(declare-fun m!1108055 () Bool)

(assert (=> bm!57626 m!1108055))

(declare-fun m!1108057 () Bool)

(assert (=> b!1202013 m!1108057))

(assert (=> b!1202013 m!1108055))

(declare-fun m!1108059 () Bool)

(assert (=> bm!57624 m!1108059))

(check-sat (not b_lambda!21083) tp_is_empty!30573 (not b!1202000) (not bm!57626) (not b!1201998) (not b_next!25869) (not bm!57630) (not b!1202010) (not b!1202014) (not bm!57625) (not b!1202013) (not b!1202005) (not b!1202001) (not b!1202019) (not b!1202008) (not start!100582) b_and!42641 (not b!1202003) (not bm!57624) (not b!1202016) (not mapNonEmpty!47702) (not bm!57627) (not b!1202007))
(check-sat b_and!42641 (not b_next!25869))
