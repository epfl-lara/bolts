; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100612 () Bool)

(assert start!100612)

(declare-fun b_free!25899 () Bool)

(declare-fun b_next!25899 () Bool)

(assert (=> start!100612 (= b_free!25899 (not b_next!25899))))

(declare-fun tp!90687 () Bool)

(declare-fun b_and!42699 () Bool)

(assert (=> start!100612 (= tp!90687 b_and!42699)))

(declare-fun mapIsEmpty!47747 () Bool)

(declare-fun mapRes!47747 () Bool)

(assert (=> mapIsEmpty!47747 mapRes!47747))

(declare-datatypes ((V!45931 0))(
  ( (V!45932 (val!15358 Int)) )
))
(declare-datatypes ((tuple2!19824 0))(
  ( (tuple2!19825 (_1!9922 (_ BitVec 64)) (_2!9922 V!45931)) )
))
(declare-datatypes ((List!26652 0))(
  ( (Nil!26649) (Cons!26648 (h!27857 tuple2!19824) (t!39538 List!26652)) )
))
(declare-datatypes ((ListLongMap!17805 0))(
  ( (ListLongMap!17806 (toList!8918 List!26652)) )
))
(declare-fun lt!545373 () ListLongMap!17805)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun bm!57984 () Bool)

(declare-fun c!117739 () Bool)

(declare-fun call!57991 () ListLongMap!17805)

(declare-fun call!57988 () Bool)

(declare-fun contains!6916 (ListLongMap!17805 (_ BitVec 64)) Bool)

(assert (=> bm!57984 (= call!57988 (contains!6916 (ite c!117739 lt!545373 call!57991) k0!934))))

(declare-fun b!1203152 () Bool)

(declare-fun e!683235 () Bool)

(declare-fun e!683236 () Bool)

(assert (=> b!1203152 (= e!683235 (and e!683236 mapRes!47747))))

(declare-fun condMapEmpty!47747 () Bool)

(declare-datatypes ((ValueCell!14592 0))(
  ( (ValueCellFull!14592 (v!17997 V!45931)) (EmptyCell!14592) )
))
(declare-datatypes ((array!77956 0))(
  ( (array!77957 (arr!37619 (Array (_ BitVec 32) ValueCell!14592)) (size!38156 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77956)

(declare-fun mapDefault!47747 () ValueCell!14592)

(assert (=> b!1203152 (= condMapEmpty!47747 (= (arr!37619 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14592)) mapDefault!47747)))))

(declare-fun b!1203153 () Bool)

(declare-fun e!683241 () Bool)

(declare-fun call!57993 () ListLongMap!17805)

(declare-fun call!57989 () ListLongMap!17805)

(assert (=> b!1203153 (= e!683241 (= call!57993 call!57989))))

(declare-fun b!1203154 () Bool)

(declare-fun res!800795 () Bool)

(declare-fun e!683237 () Bool)

(assert (=> b!1203154 (=> (not res!800795) (not e!683237))))

(declare-datatypes ((array!77958 0))(
  ( (array!77959 (arr!37620 (Array (_ BitVec 32) (_ BitVec 64))) (size!38157 (_ BitVec 32))) )
))
(declare-fun lt!545369 () array!77958)

(declare-datatypes ((List!26653 0))(
  ( (Nil!26650) (Cons!26649 (h!27858 (_ BitVec 64)) (t!39539 List!26653)) )
))
(declare-fun arrayNoDuplicates!0 (array!77958 (_ BitVec 32) List!26653) Bool)

(assert (=> b!1203154 (= res!800795 (arrayNoDuplicates!0 lt!545369 #b00000000000000000000000000000000 Nil!26650))))

(declare-fun b!1203155 () Bool)

(declare-datatypes ((Unit!39811 0))(
  ( (Unit!39812) )
))
(declare-fun e!683240 () Unit!39811)

(declare-fun e!683233 () Unit!39811)

(assert (=> b!1203155 (= e!683240 e!683233)))

(declare-fun c!117742 () Bool)

(declare-fun lt!545378 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1203155 (= c!117742 (and (not lt!545378) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1203156 () Bool)

(declare-fun res!800792 () Bool)

(declare-fun e!683242 () Bool)

(assert (=> b!1203156 (=> (not res!800792) (not e!683242))))

(declare-fun _keys!1208 () array!77958)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203156 (= res!800792 (= (select (arr!37620 _keys!1208) i!673) k0!934))))

(declare-fun b!1203157 () Bool)

(declare-fun e!683230 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1203157 (= e!683230 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208))))))

(declare-fun lt!545379 () Unit!39811)

(assert (=> b!1203157 (= lt!545379 e!683240)))

(assert (=> b!1203157 (= c!117739 (and (not lt!545378) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1203157 (= lt!545378 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!57985 () Bool)

(declare-fun call!57992 () Bool)

(assert (=> bm!57985 (= call!57992 call!57988)))

(declare-fun b!1203158 () Bool)

(declare-fun e!683229 () Bool)

(assert (=> b!1203158 (= e!683237 (not e!683229))))

(declare-fun res!800786 () Bool)

(assert (=> b!1203158 (=> res!800786 e!683229)))

(assert (=> b!1203158 (= res!800786 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1203158 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!545374 () Unit!39811)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77958 (_ BitVec 64) (_ BitVec 32)) Unit!39811)

(assert (=> b!1203158 (= lt!545374 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1203159 () Bool)

(assert (=> b!1203159 call!57992))

(declare-fun lt!545377 () Unit!39811)

(declare-fun call!57987 () Unit!39811)

(assert (=> b!1203159 (= lt!545377 call!57987)))

(assert (=> b!1203159 (= e!683233 lt!545377)))

(declare-fun zeroValue!944 () V!45931)

(declare-fun bm!57986 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45931)

(declare-fun lt!545375 () array!77956)

(declare-fun getCurrentListMapNoExtraKeys!5328 (array!77958 array!77956 (_ BitVec 32) (_ BitVec 32) V!45931 V!45931 (_ BitVec 32) Int) ListLongMap!17805)

(assert (=> bm!57986 (= call!57993 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203160 () Bool)

(declare-fun e!683231 () Bool)

(assert (=> b!1203160 (= e!683229 e!683231)))

(declare-fun res!800789 () Bool)

(assert (=> b!1203160 (=> res!800789 e!683231)))

(assert (=> b!1203160 (= res!800789 (not (= from!1455 i!673)))))

(declare-fun lt!545368 () ListLongMap!17805)

(assert (=> b!1203160 (= lt!545368 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3251 (Int (_ BitVec 64)) V!45931)

(assert (=> b!1203160 (= lt!545375 (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)))))

(declare-fun lt!545367 () ListLongMap!17805)

(assert (=> b!1203160 (= lt!545367 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1203161 () Bool)

(declare-fun res!800798 () Bool)

(assert (=> b!1203161 (=> (not res!800798) (not e!683242))))

(assert (=> b!1203161 (= res!800798 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26650))))

(declare-fun b!1203162 () Bool)

(declare-fun lt!545380 () Unit!39811)

(assert (=> b!1203162 (= e!683240 lt!545380)))

(declare-fun lt!545370 () Unit!39811)

(declare-fun lt!545376 () ListLongMap!17805)

(declare-fun addStillContains!1017 (ListLongMap!17805 (_ BitVec 64) V!45931 (_ BitVec 64)) Unit!39811)

(assert (=> b!1203162 (= lt!545370 (addStillContains!1017 lt!545376 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun call!57990 () ListLongMap!17805)

(assert (=> b!1203162 (= lt!545373 call!57990)))

(assert (=> b!1203162 call!57988))

(declare-fun call!57994 () Unit!39811)

(assert (=> b!1203162 (= lt!545380 call!57994)))

(declare-fun +!3953 (ListLongMap!17805 tuple2!19824) ListLongMap!17805)

(assert (=> b!1203162 (contains!6916 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1203163 () Bool)

(declare-fun e!683234 () Unit!39811)

(declare-fun Unit!39813 () Unit!39811)

(assert (=> b!1203163 (= e!683234 Unit!39813)))

(declare-fun bm!57987 () Bool)

(assert (=> bm!57987 (= call!57990 (+!3953 lt!545376 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203164 () Bool)

(declare-fun e!683232 () Bool)

(declare-fun tp_is_empty!30603 () Bool)

(assert (=> b!1203164 (= e!683232 tp_is_empty!30603)))

(declare-fun b!1203165 () Bool)

(declare-fun res!800799 () Bool)

(assert (=> b!1203165 (=> (not res!800799) (not e!683242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203165 (= res!800799 (validKeyInArray!0 k0!934))))

(declare-fun bm!57988 () Bool)

(assert (=> bm!57988 (= call!57989 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203166 () Bool)

(declare-fun -!1834 (ListLongMap!17805 (_ BitVec 64)) ListLongMap!17805)

(assert (=> b!1203166 (= e!683241 (= call!57993 (-!1834 call!57989 k0!934)))))

(declare-fun b!1203167 () Bool)

(declare-fun e!683239 () Bool)

(assert (=> b!1203167 (= e!683231 e!683239)))

(declare-fun res!800788 () Bool)

(assert (=> b!1203167 (=> res!800788 e!683239)))

(assert (=> b!1203167 (= res!800788 (not (= (select (arr!37620 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1203167 e!683241))

(declare-fun c!117741 () Bool)

(assert (=> b!1203167 (= c!117741 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545372 () Unit!39811)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1038 (array!77958 array!77956 (_ BitVec 32) (_ BitVec 32) V!45931 V!45931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39811)

(assert (=> b!1203167 (= lt!545372 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1038 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!800791 () Bool)

(assert (=> start!100612 (=> (not res!800791) (not e!683242))))

(assert (=> start!100612 (= res!800791 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38157 _keys!1208))))))

(assert (=> start!100612 e!683242))

(assert (=> start!100612 tp_is_empty!30603))

(declare-fun array_inv!28560 (array!77958) Bool)

(assert (=> start!100612 (array_inv!28560 _keys!1208)))

(assert (=> start!100612 true))

(assert (=> start!100612 tp!90687))

(declare-fun array_inv!28561 (array!77956) Bool)

(assert (=> start!100612 (and (array_inv!28561 _values!996) e!683235)))

(declare-fun bm!57989 () Bool)

(assert (=> bm!57989 (= call!57994 (addStillContains!1017 (ite c!117739 lt!545373 lt!545376) (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1203168 () Bool)

(assert (=> b!1203168 (= e!683239 e!683230)))

(declare-fun res!800790 () Bool)

(assert (=> b!1203168 (=> res!800790 e!683230)))

(assert (=> b!1203168 (= res!800790 (not (contains!6916 lt!545376 k0!934)))))

(assert (=> b!1203168 (= lt!545376 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57990 () Bool)

(assert (=> bm!57990 (= call!57987 call!57994)))

(declare-fun b!1203169 () Bool)

(declare-fun res!800797 () Bool)

(assert (=> b!1203169 (=> (not res!800797) (not e!683242))))

(assert (=> b!1203169 (= res!800797 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38157 _keys!1208))))))

(declare-fun mapNonEmpty!47747 () Bool)

(declare-fun tp!90688 () Bool)

(assert (=> mapNonEmpty!47747 (= mapRes!47747 (and tp!90688 e!683232))))

(declare-fun mapValue!47747 () ValueCell!14592)

(declare-fun mapKey!47747 () (_ BitVec 32))

(declare-fun mapRest!47747 () (Array (_ BitVec 32) ValueCell!14592))

(assert (=> mapNonEmpty!47747 (= (arr!37619 _values!996) (store mapRest!47747 mapKey!47747 mapValue!47747))))

(declare-fun b!1203170 () Bool)

(assert (=> b!1203170 (= e!683242 e!683237)))

(declare-fun res!800794 () Bool)

(assert (=> b!1203170 (=> (not res!800794) (not e!683237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77958 (_ BitVec 32)) Bool)

(assert (=> b!1203170 (= res!800794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545369 mask!1564))))

(assert (=> b!1203170 (= lt!545369 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)))))

(declare-fun bm!57991 () Bool)

(assert (=> bm!57991 (= call!57991 call!57990)))

(declare-fun b!1203171 () Bool)

(declare-fun res!800787 () Bool)

(assert (=> b!1203171 (=> (not res!800787) (not e!683242))))

(assert (=> b!1203171 (= res!800787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1203172 () Bool)

(declare-fun res!800793 () Bool)

(assert (=> b!1203172 (=> (not res!800793) (not e!683242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1203172 (= res!800793 (validMask!0 mask!1564))))

(declare-fun b!1203173 () Bool)

(assert (=> b!1203173 (= e!683236 tp_is_empty!30603)))

(declare-fun b!1203174 () Bool)

(declare-fun res!800796 () Bool)

(assert (=> b!1203174 (=> (not res!800796) (not e!683242))))

(assert (=> b!1203174 (= res!800796 (and (= (size!38156 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38157 _keys!1208) (size!38156 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1203175 () Bool)

(declare-fun lt!545371 () Unit!39811)

(assert (=> b!1203175 (= e!683234 lt!545371)))

(assert (=> b!1203175 (= lt!545371 call!57987)))

(assert (=> b!1203175 call!57992))

(declare-fun b!1203176 () Bool)

(declare-fun c!117740 () Bool)

(assert (=> b!1203176 (= c!117740 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545378))))

(assert (=> b!1203176 (= e!683233 e!683234)))

(assert (= (and start!100612 res!800791) b!1203172))

(assert (= (and b!1203172 res!800793) b!1203174))

(assert (= (and b!1203174 res!800796) b!1203171))

(assert (= (and b!1203171 res!800787) b!1203161))

(assert (= (and b!1203161 res!800798) b!1203169))

(assert (= (and b!1203169 res!800797) b!1203165))

(assert (= (and b!1203165 res!800799) b!1203156))

(assert (= (and b!1203156 res!800792) b!1203170))

(assert (= (and b!1203170 res!800794) b!1203154))

(assert (= (and b!1203154 res!800795) b!1203158))

(assert (= (and b!1203158 (not res!800786)) b!1203160))

(assert (= (and b!1203160 (not res!800789)) b!1203167))

(assert (= (and b!1203167 c!117741) b!1203166))

(assert (= (and b!1203167 (not c!117741)) b!1203153))

(assert (= (or b!1203166 b!1203153) bm!57986))

(assert (= (or b!1203166 b!1203153) bm!57988))

(assert (= (and b!1203167 (not res!800788)) b!1203168))

(assert (= (and b!1203168 (not res!800790)) b!1203157))

(assert (= (and b!1203157 c!117739) b!1203162))

(assert (= (and b!1203157 (not c!117739)) b!1203155))

(assert (= (and b!1203155 c!117742) b!1203159))

(assert (= (and b!1203155 (not c!117742)) b!1203176))

(assert (= (and b!1203176 c!117740) b!1203175))

(assert (= (and b!1203176 (not c!117740)) b!1203163))

(assert (= (or b!1203159 b!1203175) bm!57990))

(assert (= (or b!1203159 b!1203175) bm!57991))

(assert (= (or b!1203159 b!1203175) bm!57985))

(assert (= (or b!1203162 bm!57985) bm!57984))

(assert (= (or b!1203162 bm!57990) bm!57989))

(assert (= (or b!1203162 bm!57991) bm!57987))

(assert (= (and b!1203152 condMapEmpty!47747) mapIsEmpty!47747))

(assert (= (and b!1203152 (not condMapEmpty!47747)) mapNonEmpty!47747))

(get-info :version)

(assert (= (and mapNonEmpty!47747 ((_ is ValueCellFull!14592) mapValue!47747)) b!1203164))

(assert (= (and b!1203152 ((_ is ValueCellFull!14592) mapDefault!47747)) b!1203173))

(assert (= start!100612 b!1203152))

(declare-fun b_lambda!21113 () Bool)

(assert (=> (not b_lambda!21113) (not b!1203160)))

(declare-fun t!39537 () Bool)

(declare-fun tb!10707 () Bool)

(assert (=> (and start!100612 (= defaultEntry!1004 defaultEntry!1004) t!39537) tb!10707))

(declare-fun result!21983 () Bool)

(assert (=> tb!10707 (= result!21983 tp_is_empty!30603)))

(assert (=> b!1203160 t!39537))

(declare-fun b_and!42701 () Bool)

(assert (= b_and!42699 (and (=> t!39537 result!21983) b_and!42701)))

(declare-fun m!1108875 () Bool)

(assert (=> b!1203167 m!1108875))

(declare-fun m!1108877 () Bool)

(assert (=> b!1203167 m!1108877))

(declare-fun m!1108879 () Bool)

(assert (=> b!1203154 m!1108879))

(declare-fun m!1108881 () Bool)

(assert (=> bm!57984 m!1108881))

(declare-fun m!1108883 () Bool)

(assert (=> b!1203166 m!1108883))

(declare-fun m!1108885 () Bool)

(assert (=> bm!57989 m!1108885))

(declare-fun m!1108887 () Bool)

(assert (=> b!1203168 m!1108887))

(declare-fun m!1108889 () Bool)

(assert (=> b!1203168 m!1108889))

(assert (=> bm!57988 m!1108889))

(declare-fun m!1108891 () Bool)

(assert (=> mapNonEmpty!47747 m!1108891))

(declare-fun m!1108893 () Bool)

(assert (=> b!1203161 m!1108893))

(declare-fun m!1108895 () Bool)

(assert (=> b!1203158 m!1108895))

(declare-fun m!1108897 () Bool)

(assert (=> b!1203158 m!1108897))

(declare-fun m!1108899 () Bool)

(assert (=> bm!57986 m!1108899))

(declare-fun m!1108901 () Bool)

(assert (=> b!1203171 m!1108901))

(declare-fun m!1108903 () Bool)

(assert (=> b!1203160 m!1108903))

(declare-fun m!1108905 () Bool)

(assert (=> b!1203160 m!1108905))

(declare-fun m!1108907 () Bool)

(assert (=> b!1203160 m!1108907))

(declare-fun m!1108909 () Bool)

(assert (=> b!1203160 m!1108909))

(declare-fun m!1108911 () Bool)

(assert (=> bm!57987 m!1108911))

(declare-fun m!1108913 () Bool)

(assert (=> b!1203165 m!1108913))

(declare-fun m!1108915 () Bool)

(assert (=> b!1203156 m!1108915))

(declare-fun m!1108917 () Bool)

(assert (=> b!1203172 m!1108917))

(declare-fun m!1108919 () Bool)

(assert (=> start!100612 m!1108919))

(declare-fun m!1108921 () Bool)

(assert (=> start!100612 m!1108921))

(declare-fun m!1108923 () Bool)

(assert (=> b!1203162 m!1108923))

(declare-fun m!1108925 () Bool)

(assert (=> b!1203162 m!1108925))

(assert (=> b!1203162 m!1108925))

(declare-fun m!1108927 () Bool)

(assert (=> b!1203162 m!1108927))

(declare-fun m!1108929 () Bool)

(assert (=> b!1203170 m!1108929))

(declare-fun m!1108931 () Bool)

(assert (=> b!1203170 m!1108931))

(check-sat (not b!1203171) b_and!42701 (not b!1203162) (not b!1203172) (not mapNonEmpty!47747) tp_is_empty!30603 (not bm!57986) (not b!1203160) (not b!1203165) (not b_next!25899) (not b!1203168) (not b!1203166) (not b_lambda!21113) (not bm!57988) (not b!1203161) (not b!1203170) (not b!1203158) (not bm!57984) (not b!1203167) (not bm!57989) (not bm!57987) (not start!100612) (not b!1203154))
(check-sat b_and!42701 (not b_next!25899))
(get-model)

(declare-fun b_lambda!21117 () Bool)

(assert (= b_lambda!21113 (or (and start!100612 b_free!25899) b_lambda!21117)))

(check-sat (not b!1203171) b_and!42701 (not b!1203162) (not b!1203166) (not b!1203172) (not mapNonEmpty!47747) tp_is_empty!30603 (not bm!57986) (not b!1203160) (not b_lambda!21117) (not b!1203165) (not b_next!25899) (not b!1203168) (not bm!57988) (not b!1203161) (not b!1203170) (not b!1203158) (not bm!57984) (not b!1203167) (not bm!57989) (not bm!57987) (not start!100612) (not b!1203154))
(check-sat b_and!42701 (not b_next!25899))
(get-model)

(declare-fun b!1203266 () Bool)

(declare-fun e!683293 () Bool)

(declare-fun call!58021 () Bool)

(assert (=> b!1203266 (= e!683293 call!58021)))

(declare-fun b!1203267 () Bool)

(assert (=> b!1203267 (= e!683293 call!58021)))

(declare-fun b!1203268 () Bool)

(declare-fun e!683294 () Bool)

(declare-fun contains!6918 (List!26653 (_ BitVec 64)) Bool)

(assert (=> b!1203268 (= e!683294 (contains!6918 Nil!26650 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun b!1203269 () Bool)

(declare-fun e!683295 () Bool)

(assert (=> b!1203269 (= e!683295 e!683293)))

(declare-fun c!117757 () Bool)

(assert (=> b!1203269 (= c!117757 (validKeyInArray!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun d!132413 () Bool)

(declare-fun res!800850 () Bool)

(declare-fun e!683296 () Bool)

(assert (=> d!132413 (=> res!800850 e!683296)))

(assert (=> d!132413 (= res!800850 (bvsge #b00000000000000000000000000000000 (size!38157 lt!545369)))))

(assert (=> d!132413 (= (arrayNoDuplicates!0 lt!545369 #b00000000000000000000000000000000 Nil!26650) e!683296)))

(declare-fun b!1203270 () Bool)

(assert (=> b!1203270 (= e!683296 e!683295)))

(declare-fun res!800849 () Bool)

(assert (=> b!1203270 (=> (not res!800849) (not e!683295))))

(assert (=> b!1203270 (= res!800849 (not e!683294))))

(declare-fun res!800848 () Bool)

(assert (=> b!1203270 (=> (not res!800848) (not e!683294))))

(assert (=> b!1203270 (= res!800848 (validKeyInArray!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun bm!58018 () Bool)

(assert (=> bm!58018 (= call!58021 (arrayNoDuplicates!0 lt!545369 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117757 (Cons!26649 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) Nil!26650) Nil!26650)))))

(assert (= (and d!132413 (not res!800850)) b!1203270))

(assert (= (and b!1203270 res!800848) b!1203268))

(assert (= (and b!1203270 res!800849) b!1203269))

(assert (= (and b!1203269 c!117757) b!1203267))

(assert (= (and b!1203269 (not c!117757)) b!1203266))

(assert (= (or b!1203267 b!1203266) bm!58018))

(declare-fun m!1108991 () Bool)

(assert (=> b!1203268 m!1108991))

(assert (=> b!1203268 m!1108991))

(declare-fun m!1108993 () Bool)

(assert (=> b!1203268 m!1108993))

(assert (=> b!1203269 m!1108991))

(assert (=> b!1203269 m!1108991))

(declare-fun m!1108995 () Bool)

(assert (=> b!1203269 m!1108995))

(assert (=> b!1203270 m!1108991))

(assert (=> b!1203270 m!1108991))

(assert (=> b!1203270 m!1108995))

(assert (=> bm!58018 m!1108991))

(declare-fun m!1108997 () Bool)

(assert (=> bm!58018 m!1108997))

(assert (=> b!1203154 d!132413))

(declare-fun d!132415 () Bool)

(assert (=> d!132415 (contains!6916 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!545425 () Unit!39811)

(declare-fun choose!1792 (ListLongMap!17805 (_ BitVec 64) V!45931 (_ BitVec 64)) Unit!39811)

(assert (=> d!132415 (= lt!545425 (choose!1792 lt!545376 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> d!132415 (contains!6916 lt!545376 k0!934)))

(assert (=> d!132415 (= (addStillContains!1017 lt!545376 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) lt!545425)))

(declare-fun bs!34052 () Bool)

(assert (= bs!34052 d!132415))

(declare-fun m!1108999 () Bool)

(assert (=> bs!34052 m!1108999))

(assert (=> bs!34052 m!1108999))

(declare-fun m!1109001 () Bool)

(assert (=> bs!34052 m!1109001))

(declare-fun m!1109003 () Bool)

(assert (=> bs!34052 m!1109003))

(assert (=> bs!34052 m!1108887))

(assert (=> b!1203162 d!132415))

(declare-fun d!132417 () Bool)

(declare-fun e!683301 () Bool)

(assert (=> d!132417 e!683301))

(declare-fun res!800853 () Bool)

(assert (=> d!132417 (=> res!800853 e!683301)))

(declare-fun lt!545435 () Bool)

(assert (=> d!132417 (= res!800853 (not lt!545435))))

(declare-fun lt!545437 () Bool)

(assert (=> d!132417 (= lt!545435 lt!545437)))

(declare-fun lt!545436 () Unit!39811)

(declare-fun e!683302 () Unit!39811)

(assert (=> d!132417 (= lt!545436 e!683302)))

(declare-fun c!117760 () Bool)

(assert (=> d!132417 (= c!117760 lt!545437)))

(declare-fun containsKey!588 (List!26652 (_ BitVec 64)) Bool)

(assert (=> d!132417 (= lt!545437 (containsKey!588 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!132417 (= (contains!6916 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!545435)))

(declare-fun b!1203278 () Bool)

(declare-fun lt!545434 () Unit!39811)

(assert (=> b!1203278 (= e!683302 lt!545434)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!417 (List!26652 (_ BitVec 64)) Unit!39811)

(assert (=> b!1203278 (= lt!545434 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-datatypes ((Option!685 0))(
  ( (Some!684 (v!17999 V!45931)) (None!683) )
))
(declare-fun isDefined!457 (Option!685) Bool)

(declare-fun getValueByKey!634 (List!26652 (_ BitVec 64)) Option!685)

(assert (=> b!1203278 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1203279 () Bool)

(declare-fun Unit!39817 () Unit!39811)

(assert (=> b!1203279 (= e!683302 Unit!39817)))

(declare-fun b!1203280 () Bool)

(assert (=> b!1203280 (= e!683301 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!132417 c!117760) b!1203278))

(assert (= (and d!132417 (not c!117760)) b!1203279))

(assert (= (and d!132417 (not res!800853)) b!1203280))

(declare-fun m!1109005 () Bool)

(assert (=> d!132417 m!1109005))

(declare-fun m!1109007 () Bool)

(assert (=> b!1203278 m!1109007))

(declare-fun m!1109009 () Bool)

(assert (=> b!1203278 m!1109009))

(assert (=> b!1203278 m!1109009))

(declare-fun m!1109011 () Bool)

(assert (=> b!1203278 m!1109011))

(assert (=> b!1203280 m!1109009))

(assert (=> b!1203280 m!1109009))

(assert (=> b!1203280 m!1109011))

(assert (=> b!1203162 d!132417))

(declare-fun d!132419 () Bool)

(declare-fun e!683305 () Bool)

(assert (=> d!132419 e!683305))

(declare-fun res!800858 () Bool)

(assert (=> d!132419 (=> (not res!800858) (not e!683305))))

(declare-fun lt!545448 () ListLongMap!17805)

(assert (=> d!132419 (= res!800858 (contains!6916 lt!545448 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!545447 () List!26652)

(assert (=> d!132419 (= lt!545448 (ListLongMap!17806 lt!545447))))

(declare-fun lt!545446 () Unit!39811)

(declare-fun lt!545449 () Unit!39811)

(assert (=> d!132419 (= lt!545446 lt!545449)))

(assert (=> d!132419 (= (getValueByKey!634 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!684 (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lemmaContainsTupThenGetReturnValue!309 (List!26652 (_ BitVec 64) V!45931) Unit!39811)

(assert (=> d!132419 (= lt!545449 (lemmaContainsTupThenGetReturnValue!309 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun insertStrictlySorted!401 (List!26652 (_ BitVec 64) V!45931) List!26652)

(assert (=> d!132419 (= lt!545447 (insertStrictlySorted!401 (toList!8918 lt!545373) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132419 (= (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!545448)))

(declare-fun b!1203285 () Bool)

(declare-fun res!800859 () Bool)

(assert (=> b!1203285 (=> (not res!800859) (not e!683305))))

(assert (=> b!1203285 (= res!800859 (= (getValueByKey!634 (toList!8918 lt!545448) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!684 (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203286 () Bool)

(declare-fun contains!6919 (List!26652 tuple2!19824) Bool)

(assert (=> b!1203286 (= e!683305 (contains!6919 (toList!8918 lt!545448) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!132419 res!800858) b!1203285))

(assert (= (and b!1203285 res!800859) b!1203286))

(declare-fun m!1109013 () Bool)

(assert (=> d!132419 m!1109013))

(declare-fun m!1109015 () Bool)

(assert (=> d!132419 m!1109015))

(declare-fun m!1109017 () Bool)

(assert (=> d!132419 m!1109017))

(declare-fun m!1109019 () Bool)

(assert (=> d!132419 m!1109019))

(declare-fun m!1109021 () Bool)

(assert (=> b!1203285 m!1109021))

(declare-fun m!1109023 () Bool)

(assert (=> b!1203286 m!1109023))

(assert (=> b!1203162 d!132419))

(declare-fun d!132421 () Bool)

(assert (=> d!132421 (= (array_inv!28560 _keys!1208) (bvsge (size!38157 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100612 d!132421))

(declare-fun d!132423 () Bool)

(assert (=> d!132423 (= (array_inv!28561 _values!996) (bvsge (size!38156 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100612 d!132423))

(declare-fun bm!58021 () Bool)

(declare-fun call!58024 () Bool)

(assert (=> bm!58021 (= call!58024 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun d!132425 () Bool)

(declare-fun res!800864 () Bool)

(declare-fun e!683313 () Bool)

(assert (=> d!132425 (=> res!800864 e!683313)))

(assert (=> d!132425 (= res!800864 (bvsge #b00000000000000000000000000000000 (size!38157 _keys!1208)))))

(assert (=> d!132425 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!683313)))

(declare-fun b!1203295 () Bool)

(declare-fun e!683314 () Bool)

(assert (=> b!1203295 (= e!683314 call!58024)))

(declare-fun b!1203296 () Bool)

(assert (=> b!1203296 (= e!683313 e!683314)))

(declare-fun c!117763 () Bool)

(assert (=> b!1203296 (= c!117763 (validKeyInArray!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1203297 () Bool)

(declare-fun e!683312 () Bool)

(assert (=> b!1203297 (= e!683314 e!683312)))

(declare-fun lt!545457 () (_ BitVec 64))

(assert (=> b!1203297 (= lt!545457 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!545458 () Unit!39811)

(assert (=> b!1203297 (= lt!545458 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!545457 #b00000000000000000000000000000000))))

(assert (=> b!1203297 (arrayContainsKey!0 _keys!1208 lt!545457 #b00000000000000000000000000000000)))

(declare-fun lt!545456 () Unit!39811)

(assert (=> b!1203297 (= lt!545456 lt!545458)))

(declare-fun res!800865 () Bool)

(declare-datatypes ((SeekEntryResult!9930 0))(
  ( (MissingZero!9930 (index!42090 (_ BitVec 32))) (Found!9930 (index!42091 (_ BitVec 32))) (Intermediate!9930 (undefined!10742 Bool) (index!42092 (_ BitVec 32)) (x!106354 (_ BitVec 32))) (Undefined!9930) (MissingVacant!9930 (index!42093 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77958 (_ BitVec 32)) SeekEntryResult!9930)

(assert (=> b!1203297 (= res!800865 (= (seekEntryOrOpen!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9930 #b00000000000000000000000000000000)))))

(assert (=> b!1203297 (=> (not res!800865) (not e!683312))))

(declare-fun b!1203298 () Bool)

(assert (=> b!1203298 (= e!683312 call!58024)))

(assert (= (and d!132425 (not res!800864)) b!1203296))

(assert (= (and b!1203296 c!117763) b!1203297))

(assert (= (and b!1203296 (not c!117763)) b!1203295))

(assert (= (and b!1203297 res!800865) b!1203298))

(assert (= (or b!1203298 b!1203295) bm!58021))

(declare-fun m!1109025 () Bool)

(assert (=> bm!58021 m!1109025))

(declare-fun m!1109027 () Bool)

(assert (=> b!1203296 m!1109027))

(assert (=> b!1203296 m!1109027))

(declare-fun m!1109029 () Bool)

(assert (=> b!1203296 m!1109029))

(assert (=> b!1203297 m!1109027))

(declare-fun m!1109031 () Bool)

(assert (=> b!1203297 m!1109031))

(declare-fun m!1109033 () Bool)

(assert (=> b!1203297 m!1109033))

(assert (=> b!1203297 m!1109027))

(declare-fun m!1109035 () Bool)

(assert (=> b!1203297 m!1109035))

(assert (=> b!1203171 d!132425))

(declare-fun d!132427 () Bool)

(assert (=> d!132427 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203165 d!132427))

(declare-fun bm!58022 () Bool)

(declare-fun call!58025 () Bool)

(assert (=> bm!58022 (= call!58025 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!545369 mask!1564))))

(declare-fun d!132429 () Bool)

(declare-fun res!800866 () Bool)

(declare-fun e!683316 () Bool)

(assert (=> d!132429 (=> res!800866 e!683316)))

(assert (=> d!132429 (= res!800866 (bvsge #b00000000000000000000000000000000 (size!38157 lt!545369)))))

(assert (=> d!132429 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545369 mask!1564) e!683316)))

(declare-fun b!1203299 () Bool)

(declare-fun e!683317 () Bool)

(assert (=> b!1203299 (= e!683317 call!58025)))

(declare-fun b!1203300 () Bool)

(assert (=> b!1203300 (= e!683316 e!683317)))

(declare-fun c!117764 () Bool)

(assert (=> b!1203300 (= c!117764 (validKeyInArray!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun b!1203301 () Bool)

(declare-fun e!683315 () Bool)

(assert (=> b!1203301 (= e!683317 e!683315)))

(declare-fun lt!545460 () (_ BitVec 64))

(assert (=> b!1203301 (= lt!545460 (select (arr!37620 lt!545369) #b00000000000000000000000000000000))))

(declare-fun lt!545461 () Unit!39811)

(assert (=> b!1203301 (= lt!545461 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!545369 lt!545460 #b00000000000000000000000000000000))))

(assert (=> b!1203301 (arrayContainsKey!0 lt!545369 lt!545460 #b00000000000000000000000000000000)))

(declare-fun lt!545459 () Unit!39811)

(assert (=> b!1203301 (= lt!545459 lt!545461)))

(declare-fun res!800867 () Bool)

(assert (=> b!1203301 (= res!800867 (= (seekEntryOrOpen!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) lt!545369 mask!1564) (Found!9930 #b00000000000000000000000000000000)))))

(assert (=> b!1203301 (=> (not res!800867) (not e!683315))))

(declare-fun b!1203302 () Bool)

(assert (=> b!1203302 (= e!683315 call!58025)))

(assert (= (and d!132429 (not res!800866)) b!1203300))

(assert (= (and b!1203300 c!117764) b!1203301))

(assert (= (and b!1203300 (not c!117764)) b!1203299))

(assert (= (and b!1203301 res!800867) b!1203302))

(assert (= (or b!1203302 b!1203299) bm!58022))

(declare-fun m!1109037 () Bool)

(assert (=> bm!58022 m!1109037))

(assert (=> b!1203300 m!1108991))

(assert (=> b!1203300 m!1108991))

(assert (=> b!1203300 m!1108995))

(assert (=> b!1203301 m!1108991))

(declare-fun m!1109039 () Bool)

(assert (=> b!1203301 m!1109039))

(declare-fun m!1109041 () Bool)

(assert (=> b!1203301 m!1109041))

(assert (=> b!1203301 m!1108991))

(declare-fun m!1109043 () Bool)

(assert (=> b!1203301 m!1109043))

(assert (=> b!1203170 d!132429))

(declare-fun d!132431 () Bool)

(declare-fun e!683318 () Bool)

(assert (=> d!132431 e!683318))

(declare-fun res!800868 () Bool)

(assert (=> d!132431 (=> (not res!800868) (not e!683318))))

(declare-fun lt!545464 () ListLongMap!17805)

(assert (=> d!132431 (= res!800868 (contains!6916 lt!545464 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!545463 () List!26652)

(assert (=> d!132431 (= lt!545464 (ListLongMap!17806 lt!545463))))

(declare-fun lt!545462 () Unit!39811)

(declare-fun lt!545465 () Unit!39811)

(assert (=> d!132431 (= lt!545462 lt!545465)))

(assert (=> d!132431 (= (getValueByKey!634 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!684 (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132431 (= lt!545465 (lemmaContainsTupThenGetReturnValue!309 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132431 (= lt!545463 (insertStrictlySorted!401 (toList!8918 lt!545376) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132431 (= (+!3953 lt!545376 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!545464)))

(declare-fun b!1203303 () Bool)

(declare-fun res!800869 () Bool)

(assert (=> b!1203303 (=> (not res!800869) (not e!683318))))

(assert (=> b!1203303 (= res!800869 (= (getValueByKey!634 (toList!8918 lt!545464) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!684 (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1203304 () Bool)

(assert (=> b!1203304 (= e!683318 (contains!6919 (toList!8918 lt!545464) (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132431 res!800868) b!1203303))

(assert (= (and b!1203303 res!800869) b!1203304))

(declare-fun m!1109045 () Bool)

(assert (=> d!132431 m!1109045))

(declare-fun m!1109047 () Bool)

(assert (=> d!132431 m!1109047))

(declare-fun m!1109049 () Bool)

(assert (=> d!132431 m!1109049))

(declare-fun m!1109051 () Bool)

(assert (=> d!132431 m!1109051))

(declare-fun m!1109053 () Bool)

(assert (=> b!1203303 m!1109053))

(declare-fun m!1109055 () Bool)

(assert (=> b!1203304 m!1109055))

(assert (=> bm!57987 d!132431))

(declare-fun d!132433 () Bool)

(declare-fun lt!545468 () ListLongMap!17805)

(assert (=> d!132433 (not (contains!6916 lt!545468 k0!934))))

(declare-fun removeStrictlySorted!94 (List!26652 (_ BitVec 64)) List!26652)

(assert (=> d!132433 (= lt!545468 (ListLongMap!17806 (removeStrictlySorted!94 (toList!8918 call!57989) k0!934)))))

(assert (=> d!132433 (= (-!1834 call!57989 k0!934) lt!545468)))

(declare-fun bs!34053 () Bool)

(assert (= bs!34053 d!132433))

(declare-fun m!1109057 () Bool)

(assert (=> bs!34053 m!1109057))

(declare-fun m!1109059 () Bool)

(assert (=> bs!34053 m!1109059))

(assert (=> b!1203166 d!132433))

(declare-fun call!58031 () ListLongMap!17805)

(declare-fun bm!58027 () Bool)

(assert (=> bm!58027 (= call!58031 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58030 () ListLongMap!17805)

(declare-fun bm!58028 () Bool)

(assert (=> bm!58028 (= call!58030 (getCurrentListMapNoExtraKeys!5328 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)) (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!132435 () Bool)

(declare-fun e!683323 () Bool)

(assert (=> d!132435 e!683323))

(declare-fun res!800872 () Bool)

(assert (=> d!132435 (=> (not res!800872) (not e!683323))))

(assert (=> d!132435 (= res!800872 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38157 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38157 _keys!1208))))))))

(declare-fun lt!545471 () Unit!39811)

(declare-fun choose!1793 (array!77958 array!77956 (_ BitVec 32) (_ BitVec 32) V!45931 V!45931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39811)

(assert (=> d!132435 (= lt!545471 (choose!1793 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132435 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208)))))

(assert (=> d!132435 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1038 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545471)))

(declare-fun b!1203311 () Bool)

(declare-fun e!683324 () Bool)

(assert (=> b!1203311 (= e!683324 (= call!58030 (-!1834 call!58031 k0!934)))))

(assert (=> b!1203311 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38156 _values!996)))))

(declare-fun b!1203312 () Bool)

(assert (=> b!1203312 (= e!683323 e!683324)))

(declare-fun c!117767 () Bool)

(assert (=> b!1203312 (= c!117767 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1203313 () Bool)

(assert (=> b!1203313 (= e!683324 (= call!58030 call!58031))))

(assert (=> b!1203313 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38156 _values!996)))))

(assert (= (and d!132435 res!800872) b!1203312))

(assert (= (and b!1203312 c!117767) b!1203311))

(assert (= (and b!1203312 (not c!117767)) b!1203313))

(assert (= (or b!1203311 b!1203313) bm!58027))

(assert (= (or b!1203311 b!1203313) bm!58028))

(declare-fun b_lambda!21119 () Bool)

(assert (=> (not b_lambda!21119) (not bm!58028)))

(assert (=> bm!58028 t!39537))

(declare-fun b_and!42707 () Bool)

(assert (= b_and!42701 (and (=> t!39537 result!21983) b_and!42707)))

(assert (=> bm!58027 m!1108889))

(assert (=> bm!58028 m!1108931))

(assert (=> bm!58028 m!1108905))

(assert (=> bm!58028 m!1108907))

(declare-fun m!1109061 () Bool)

(assert (=> bm!58028 m!1109061))

(declare-fun m!1109063 () Bool)

(assert (=> d!132435 m!1109063))

(declare-fun m!1109065 () Bool)

(assert (=> b!1203311 m!1109065))

(assert (=> b!1203167 d!132435))

(declare-fun e!683345 () Bool)

(declare-fun lt!545486 () ListLongMap!17805)

(declare-fun b!1203338 () Bool)

(assert (=> b!1203338 (= e!683345 (= lt!545486 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132437 () Bool)

(declare-fun e!683344 () Bool)

(assert (=> d!132437 e!683344))

(declare-fun res!800881 () Bool)

(assert (=> d!132437 (=> (not res!800881) (not e!683344))))

(assert (=> d!132437 (= res!800881 (not (contains!6916 lt!545486 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683343 () ListLongMap!17805)

(assert (=> d!132437 (= lt!545486 e!683343)))

(declare-fun c!117778 () Bool)

(assert (=> d!132437 (= c!117778 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208)))))

(assert (=> d!132437 (validMask!0 mask!1564)))

(assert (=> d!132437 (= (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545486)))

(declare-fun b!1203339 () Bool)

(declare-fun e!683341 () Bool)

(assert (=> b!1203339 (= e!683341 e!683345)))

(declare-fun c!117777 () Bool)

(assert (=> b!1203339 (= c!117777 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208)))))

(declare-fun b!1203340 () Bool)

(assert (=> b!1203340 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208)))))

(assert (=> b!1203340 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38156 _values!996)))))

(declare-fun e!683342 () Bool)

(declare-fun apply!995 (ListLongMap!17805 (_ BitVec 64)) V!45931)

(declare-fun get!19215 (ValueCell!14592 V!45931) V!45931)

(assert (=> b!1203340 (= e!683342 (= (apply!995 lt!545486 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!58031 () Bool)

(declare-fun call!58034 () ListLongMap!17805)

(assert (=> bm!58031 (= call!58034 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203341 () Bool)

(assert (=> b!1203341 (= e!683344 e!683341)))

(declare-fun c!117779 () Bool)

(declare-fun e!683340 () Bool)

(assert (=> b!1203341 (= c!117779 e!683340)))

(declare-fun res!800883 () Bool)

(assert (=> b!1203341 (=> (not res!800883) (not e!683340))))

(assert (=> b!1203341 (= res!800883 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208)))))

(declare-fun b!1203342 () Bool)

(assert (=> b!1203342 (= e!683340 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203342 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1203343 () Bool)

(declare-fun res!800884 () Bool)

(assert (=> b!1203343 (=> (not res!800884) (not e!683344))))

(assert (=> b!1203343 (= res!800884 (not (contains!6916 lt!545486 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203344 () Bool)

(assert (=> b!1203344 (= e!683341 e!683342)))

(assert (=> b!1203344 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 _keys!1208)))))

(declare-fun res!800882 () Bool)

(assert (=> b!1203344 (= res!800882 (contains!6916 lt!545486 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203344 (=> (not res!800882) (not e!683342))))

(declare-fun b!1203345 () Bool)

(declare-fun e!683339 () ListLongMap!17805)

(assert (=> b!1203345 (= e!683339 call!58034)))

(declare-fun b!1203346 () Bool)

(declare-fun lt!545490 () Unit!39811)

(declare-fun lt!545488 () Unit!39811)

(assert (=> b!1203346 (= lt!545490 lt!545488)))

(declare-fun lt!545489 () (_ BitVec 64))

(declare-fun lt!545492 () ListLongMap!17805)

(declare-fun lt!545491 () (_ BitVec 64))

(declare-fun lt!545487 () V!45931)

(assert (=> b!1203346 (not (contains!6916 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487)) lt!545489))))

(declare-fun addStillNotContains!290 (ListLongMap!17805 (_ BitVec 64) V!45931 (_ BitVec 64)) Unit!39811)

(assert (=> b!1203346 (= lt!545488 (addStillNotContains!290 lt!545492 lt!545491 lt!545487 lt!545489))))

(assert (=> b!1203346 (= lt!545489 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203346 (= lt!545487 (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203346 (= lt!545491 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1203346 (= lt!545492 call!58034)))

(assert (=> b!1203346 (= e!683339 (+!3953 call!58034 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203347 () Bool)

(assert (=> b!1203347 (= e!683343 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203348 () Bool)

(declare-fun isEmpty!983 (ListLongMap!17805) Bool)

(assert (=> b!1203348 (= e!683345 (isEmpty!983 lt!545486))))

(declare-fun b!1203349 () Bool)

(assert (=> b!1203349 (= e!683343 e!683339)))

(declare-fun c!117776 () Bool)

(assert (=> b!1203349 (= c!117776 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (= (and d!132437 c!117778) b!1203347))

(assert (= (and d!132437 (not c!117778)) b!1203349))

(assert (= (and b!1203349 c!117776) b!1203346))

(assert (= (and b!1203349 (not c!117776)) b!1203345))

(assert (= (or b!1203346 b!1203345) bm!58031))

(assert (= (and d!132437 res!800881) b!1203343))

(assert (= (and b!1203343 res!800884) b!1203341))

(assert (= (and b!1203341 res!800883) b!1203342))

(assert (= (and b!1203341 c!117779) b!1203344))

(assert (= (and b!1203341 (not c!117779)) b!1203339))

(assert (= (and b!1203344 res!800882) b!1203340))

(assert (= (and b!1203339 c!117777) b!1203338))

(assert (= (and b!1203339 (not c!117777)) b!1203348))

(declare-fun b_lambda!21121 () Bool)

(assert (=> (not b_lambda!21121) (not b!1203340)))

(assert (=> b!1203340 t!39537))

(declare-fun b_and!42709 () Bool)

(assert (= b_and!42707 (and (=> t!39537 result!21983) b_and!42709)))

(declare-fun b_lambda!21123 () Bool)

(assert (=> (not b_lambda!21123) (not b!1203346)))

(assert (=> b!1203346 t!39537))

(declare-fun b_and!42711 () Bool)

(assert (= b_and!42709 (and (=> t!39537 result!21983) b_and!42711)))

(declare-fun m!1109067 () Bool)

(assert (=> b!1203338 m!1109067))

(declare-fun m!1109069 () Bool)

(assert (=> b!1203348 m!1109069))

(declare-fun m!1109071 () Bool)

(assert (=> b!1203343 m!1109071))

(declare-fun m!1109073 () Bool)

(assert (=> d!132437 m!1109073))

(assert (=> d!132437 m!1108917))

(declare-fun m!1109075 () Bool)

(assert (=> b!1203340 m!1109075))

(assert (=> b!1203340 m!1109075))

(assert (=> b!1203340 m!1108905))

(declare-fun m!1109077 () Bool)

(assert (=> b!1203340 m!1109077))

(declare-fun m!1109079 () Bool)

(assert (=> b!1203340 m!1109079))

(declare-fun m!1109081 () Bool)

(assert (=> b!1203340 m!1109081))

(assert (=> b!1203340 m!1108905))

(assert (=> b!1203340 m!1109079))

(assert (=> b!1203344 m!1109079))

(assert (=> b!1203344 m!1109079))

(declare-fun m!1109083 () Bool)

(assert (=> b!1203344 m!1109083))

(assert (=> b!1203346 m!1109075))

(declare-fun m!1109085 () Bool)

(assert (=> b!1203346 m!1109085))

(declare-fun m!1109087 () Bool)

(assert (=> b!1203346 m!1109087))

(assert (=> b!1203346 m!1109075))

(assert (=> b!1203346 m!1108905))

(assert (=> b!1203346 m!1109077))

(declare-fun m!1109089 () Bool)

(assert (=> b!1203346 m!1109089))

(assert (=> b!1203346 m!1109085))

(assert (=> b!1203346 m!1108905))

(declare-fun m!1109091 () Bool)

(assert (=> b!1203346 m!1109091))

(assert (=> b!1203346 m!1109079))

(assert (=> b!1203349 m!1109079))

(assert (=> b!1203349 m!1109079))

(declare-fun m!1109093 () Bool)

(assert (=> b!1203349 m!1109093))

(assert (=> bm!58031 m!1109067))

(assert (=> b!1203342 m!1109079))

(assert (=> b!1203342 m!1109079))

(assert (=> b!1203342 m!1109093))

(assert (=> bm!57988 d!132437))

(declare-fun d!132439 () Bool)

(declare-fun res!800889 () Bool)

(declare-fun e!683350 () Bool)

(assert (=> d!132439 (=> res!800889 e!683350)))

(assert (=> d!132439 (= res!800889 (= (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132439 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!683350)))

(declare-fun b!1203354 () Bool)

(declare-fun e!683351 () Bool)

(assert (=> b!1203354 (= e!683350 e!683351)))

(declare-fun res!800890 () Bool)

(assert (=> b!1203354 (=> (not res!800890) (not e!683351))))

(assert (=> b!1203354 (= res!800890 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203355 () Bool)

(assert (=> b!1203355 (= e!683351 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132439 (not res!800889)) b!1203354))

(assert (= (and b!1203354 res!800890) b!1203355))

(assert (=> d!132439 m!1109027))

(declare-fun m!1109095 () Bool)

(assert (=> b!1203355 m!1109095))

(assert (=> b!1203158 d!132439))

(declare-fun d!132441 () Bool)

(assert (=> d!132441 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!545495 () Unit!39811)

(declare-fun choose!13 (array!77958 (_ BitVec 64) (_ BitVec 32)) Unit!39811)

(assert (=> d!132441 (= lt!545495 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132441 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132441 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!545495)))

(declare-fun bs!34054 () Bool)

(assert (= bs!34054 d!132441))

(assert (=> bs!34054 m!1108895))

(declare-fun m!1109097 () Bool)

(assert (=> bs!34054 m!1109097))

(assert (=> b!1203158 d!132441))

(declare-fun d!132443 () Bool)

(assert (=> d!132443 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1203172 d!132443))

(declare-fun d!132445 () Bool)

(declare-fun e!683352 () Bool)

(assert (=> d!132445 e!683352))

(declare-fun res!800891 () Bool)

(assert (=> d!132445 (=> res!800891 e!683352)))

(declare-fun lt!545497 () Bool)

(assert (=> d!132445 (= res!800891 (not lt!545497))))

(declare-fun lt!545499 () Bool)

(assert (=> d!132445 (= lt!545497 lt!545499)))

(declare-fun lt!545498 () Unit!39811)

(declare-fun e!683353 () Unit!39811)

(assert (=> d!132445 (= lt!545498 e!683353)))

(declare-fun c!117780 () Bool)

(assert (=> d!132445 (= c!117780 lt!545499)))

(assert (=> d!132445 (= lt!545499 (containsKey!588 (toList!8918 lt!545376) k0!934))))

(assert (=> d!132445 (= (contains!6916 lt!545376 k0!934) lt!545497)))

(declare-fun b!1203356 () Bool)

(declare-fun lt!545496 () Unit!39811)

(assert (=> b!1203356 (= e!683353 lt!545496)))

(assert (=> b!1203356 (= lt!545496 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545376) k0!934))))

(assert (=> b!1203356 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545376) k0!934))))

(declare-fun b!1203357 () Bool)

(declare-fun Unit!39818 () Unit!39811)

(assert (=> b!1203357 (= e!683353 Unit!39818)))

(declare-fun b!1203358 () Bool)

(assert (=> b!1203358 (= e!683352 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545376) k0!934)))))

(assert (= (and d!132445 c!117780) b!1203356))

(assert (= (and d!132445 (not c!117780)) b!1203357))

(assert (= (and d!132445 (not res!800891)) b!1203358))

(declare-fun m!1109099 () Bool)

(assert (=> d!132445 m!1109099))

(declare-fun m!1109101 () Bool)

(assert (=> b!1203356 m!1109101))

(declare-fun m!1109103 () Bool)

(assert (=> b!1203356 m!1109103))

(assert (=> b!1203356 m!1109103))

(declare-fun m!1109105 () Bool)

(assert (=> b!1203356 m!1109105))

(assert (=> b!1203358 m!1109103))

(assert (=> b!1203358 m!1109103))

(assert (=> b!1203358 m!1109105))

(assert (=> b!1203168 d!132445))

(assert (=> b!1203168 d!132437))

(declare-fun lt!545500 () ListLongMap!17805)

(declare-fun b!1203359 () Bool)

(declare-fun e!683360 () Bool)

(assert (=> b!1203359 (= e!683360 (= lt!545500 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132447 () Bool)

(declare-fun e!683359 () Bool)

(assert (=> d!132447 e!683359))

(declare-fun res!800892 () Bool)

(assert (=> d!132447 (=> (not res!800892) (not e!683359))))

(assert (=> d!132447 (= res!800892 (not (contains!6916 lt!545500 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683358 () ListLongMap!17805)

(assert (=> d!132447 (= lt!545500 e!683358)))

(declare-fun c!117783 () Bool)

(assert (=> d!132447 (= c!117783 (bvsge from!1455 (size!38157 lt!545369)))))

(assert (=> d!132447 (validMask!0 mask!1564)))

(assert (=> d!132447 (= (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!545500)))

(declare-fun b!1203360 () Bool)

(declare-fun e!683356 () Bool)

(assert (=> b!1203360 (= e!683356 e!683360)))

(declare-fun c!117782 () Bool)

(assert (=> b!1203360 (= c!117782 (bvslt from!1455 (size!38157 lt!545369)))))

(declare-fun b!1203361 () Bool)

(assert (=> b!1203361 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38157 lt!545369)))))

(assert (=> b!1203361 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38156 lt!545375)))))

(declare-fun e!683357 () Bool)

(assert (=> b!1203361 (= e!683357 (= (apply!995 lt!545500 (select (arr!37620 lt!545369) from!1455)) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun call!58035 () ListLongMap!17805)

(declare-fun bm!58032 () Bool)

(assert (=> bm!58032 (= call!58035 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203362 () Bool)

(assert (=> b!1203362 (= e!683359 e!683356)))

(declare-fun c!117784 () Bool)

(declare-fun e!683355 () Bool)

(assert (=> b!1203362 (= c!117784 e!683355)))

(declare-fun res!800894 () Bool)

(assert (=> b!1203362 (=> (not res!800894) (not e!683355))))

(assert (=> b!1203362 (= res!800894 (bvslt from!1455 (size!38157 lt!545369)))))

(declare-fun b!1203363 () Bool)

(assert (=> b!1203363 (= e!683355 (validKeyInArray!0 (select (arr!37620 lt!545369) from!1455)))))

(assert (=> b!1203363 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1203364 () Bool)

(declare-fun res!800895 () Bool)

(assert (=> b!1203364 (=> (not res!800895) (not e!683359))))

(assert (=> b!1203364 (= res!800895 (not (contains!6916 lt!545500 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203365 () Bool)

(assert (=> b!1203365 (= e!683356 e!683357)))

(assert (=> b!1203365 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38157 lt!545369)))))

(declare-fun res!800893 () Bool)

(assert (=> b!1203365 (= res!800893 (contains!6916 lt!545500 (select (arr!37620 lt!545369) from!1455)))))

(assert (=> b!1203365 (=> (not res!800893) (not e!683357))))

(declare-fun b!1203366 () Bool)

(declare-fun e!683354 () ListLongMap!17805)

(assert (=> b!1203366 (= e!683354 call!58035)))

(declare-fun b!1203367 () Bool)

(declare-fun lt!545504 () Unit!39811)

(declare-fun lt!545502 () Unit!39811)

(assert (=> b!1203367 (= lt!545504 lt!545502)))

(declare-fun lt!545503 () (_ BitVec 64))

(declare-fun lt!545505 () (_ BitVec 64))

(declare-fun lt!545506 () ListLongMap!17805)

(declare-fun lt!545501 () V!45931)

(assert (=> b!1203367 (not (contains!6916 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501)) lt!545503))))

(assert (=> b!1203367 (= lt!545502 (addStillNotContains!290 lt!545506 lt!545505 lt!545501 lt!545503))))

(assert (=> b!1203367 (= lt!545503 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203367 (= lt!545501 (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203367 (= lt!545505 (select (arr!37620 lt!545369) from!1455))))

(assert (=> b!1203367 (= lt!545506 call!58035)))

(assert (=> b!1203367 (= e!683354 (+!3953 call!58035 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203368 () Bool)

(assert (=> b!1203368 (= e!683358 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203369 () Bool)

(assert (=> b!1203369 (= e!683360 (isEmpty!983 lt!545500))))

(declare-fun b!1203370 () Bool)

(assert (=> b!1203370 (= e!683358 e!683354)))

(declare-fun c!117781 () Bool)

(assert (=> b!1203370 (= c!117781 (validKeyInArray!0 (select (arr!37620 lt!545369) from!1455)))))

(assert (= (and d!132447 c!117783) b!1203368))

(assert (= (and d!132447 (not c!117783)) b!1203370))

(assert (= (and b!1203370 c!117781) b!1203367))

(assert (= (and b!1203370 (not c!117781)) b!1203366))

(assert (= (or b!1203367 b!1203366) bm!58032))

(assert (= (and d!132447 res!800892) b!1203364))

(assert (= (and b!1203364 res!800895) b!1203362))

(assert (= (and b!1203362 res!800894) b!1203363))

(assert (= (and b!1203362 c!117784) b!1203365))

(assert (= (and b!1203362 (not c!117784)) b!1203360))

(assert (= (and b!1203365 res!800893) b!1203361))

(assert (= (and b!1203360 c!117782) b!1203359))

(assert (= (and b!1203360 (not c!117782)) b!1203369))

(declare-fun b_lambda!21125 () Bool)

(assert (=> (not b_lambda!21125) (not b!1203361)))

(assert (=> b!1203361 t!39537))

(declare-fun b_and!42713 () Bool)

(assert (= b_and!42711 (and (=> t!39537 result!21983) b_and!42713)))

(declare-fun b_lambda!21127 () Bool)

(assert (=> (not b_lambda!21127) (not b!1203367)))

(assert (=> b!1203367 t!39537))

(declare-fun b_and!42715 () Bool)

(assert (= b_and!42713 (and (=> t!39537 result!21983) b_and!42715)))

(declare-fun m!1109107 () Bool)

(assert (=> b!1203359 m!1109107))

(declare-fun m!1109109 () Bool)

(assert (=> b!1203369 m!1109109))

(declare-fun m!1109111 () Bool)

(assert (=> b!1203364 m!1109111))

(declare-fun m!1109113 () Bool)

(assert (=> d!132447 m!1109113))

(assert (=> d!132447 m!1108917))

(declare-fun m!1109115 () Bool)

(assert (=> b!1203361 m!1109115))

(assert (=> b!1203361 m!1109115))

(assert (=> b!1203361 m!1108905))

(declare-fun m!1109117 () Bool)

(assert (=> b!1203361 m!1109117))

(declare-fun m!1109119 () Bool)

(assert (=> b!1203361 m!1109119))

(declare-fun m!1109121 () Bool)

(assert (=> b!1203361 m!1109121))

(assert (=> b!1203361 m!1108905))

(assert (=> b!1203361 m!1109119))

(assert (=> b!1203365 m!1109119))

(assert (=> b!1203365 m!1109119))

(declare-fun m!1109123 () Bool)

(assert (=> b!1203365 m!1109123))

(assert (=> b!1203367 m!1109115))

(declare-fun m!1109125 () Bool)

(assert (=> b!1203367 m!1109125))

(declare-fun m!1109127 () Bool)

(assert (=> b!1203367 m!1109127))

(assert (=> b!1203367 m!1109115))

(assert (=> b!1203367 m!1108905))

(assert (=> b!1203367 m!1109117))

(declare-fun m!1109129 () Bool)

(assert (=> b!1203367 m!1109129))

(assert (=> b!1203367 m!1109125))

(assert (=> b!1203367 m!1108905))

(declare-fun m!1109131 () Bool)

(assert (=> b!1203367 m!1109131))

(assert (=> b!1203367 m!1109119))

(assert (=> b!1203370 m!1109119))

(assert (=> b!1203370 m!1109119))

(declare-fun m!1109133 () Bool)

(assert (=> b!1203370 m!1109133))

(assert (=> bm!58032 m!1109107))

(assert (=> b!1203363 m!1109119))

(assert (=> b!1203363 m!1109119))

(assert (=> b!1203363 m!1109133))

(assert (=> b!1203160 d!132447))

(declare-fun e!683367 () Bool)

(declare-fun b!1203371 () Bool)

(declare-fun lt!545507 () ListLongMap!17805)

(assert (=> b!1203371 (= e!683367 (= lt!545507 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132449 () Bool)

(declare-fun e!683366 () Bool)

(assert (=> d!132449 e!683366))

(declare-fun res!800896 () Bool)

(assert (=> d!132449 (=> (not res!800896) (not e!683366))))

(assert (=> d!132449 (= res!800896 (not (contains!6916 lt!545507 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683365 () ListLongMap!17805)

(assert (=> d!132449 (= lt!545507 e!683365)))

(declare-fun c!117787 () Bool)

(assert (=> d!132449 (= c!117787 (bvsge from!1455 (size!38157 _keys!1208)))))

(assert (=> d!132449 (validMask!0 mask!1564)))

(assert (=> d!132449 (= (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!545507)))

(declare-fun b!1203372 () Bool)

(declare-fun e!683363 () Bool)

(assert (=> b!1203372 (= e!683363 e!683367)))

(declare-fun c!117786 () Bool)

(assert (=> b!1203372 (= c!117786 (bvslt from!1455 (size!38157 _keys!1208)))))

(declare-fun b!1203373 () Bool)

(assert (=> b!1203373 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38157 _keys!1208)))))

(assert (=> b!1203373 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38156 _values!996)))))

(declare-fun e!683364 () Bool)

(assert (=> b!1203373 (= e!683364 (= (apply!995 lt!545507 (select (arr!37620 _keys!1208) from!1455)) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun call!58036 () ListLongMap!17805)

(declare-fun bm!58033 () Bool)

(assert (=> bm!58033 (= call!58036 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203374 () Bool)

(assert (=> b!1203374 (= e!683366 e!683363)))

(declare-fun c!117788 () Bool)

(declare-fun e!683362 () Bool)

(assert (=> b!1203374 (= c!117788 e!683362)))

(declare-fun res!800898 () Bool)

(assert (=> b!1203374 (=> (not res!800898) (not e!683362))))

(assert (=> b!1203374 (= res!800898 (bvslt from!1455 (size!38157 _keys!1208)))))

(declare-fun b!1203375 () Bool)

(assert (=> b!1203375 (= e!683362 (validKeyInArray!0 (select (arr!37620 _keys!1208) from!1455)))))

(assert (=> b!1203375 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1203376 () Bool)

(declare-fun res!800899 () Bool)

(assert (=> b!1203376 (=> (not res!800899) (not e!683366))))

(assert (=> b!1203376 (= res!800899 (not (contains!6916 lt!545507 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203377 () Bool)

(assert (=> b!1203377 (= e!683363 e!683364)))

(assert (=> b!1203377 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38157 _keys!1208)))))

(declare-fun res!800897 () Bool)

(assert (=> b!1203377 (= res!800897 (contains!6916 lt!545507 (select (arr!37620 _keys!1208) from!1455)))))

(assert (=> b!1203377 (=> (not res!800897) (not e!683364))))

(declare-fun b!1203378 () Bool)

(declare-fun e!683361 () ListLongMap!17805)

(assert (=> b!1203378 (= e!683361 call!58036)))

(declare-fun b!1203379 () Bool)

(declare-fun lt!545511 () Unit!39811)

(declare-fun lt!545509 () Unit!39811)

(assert (=> b!1203379 (= lt!545511 lt!545509)))

(declare-fun lt!545513 () ListLongMap!17805)

(declare-fun lt!545508 () V!45931)

(declare-fun lt!545512 () (_ BitVec 64))

(declare-fun lt!545510 () (_ BitVec 64))

(assert (=> b!1203379 (not (contains!6916 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508)) lt!545510))))

(assert (=> b!1203379 (= lt!545509 (addStillNotContains!290 lt!545513 lt!545512 lt!545508 lt!545510))))

(assert (=> b!1203379 (= lt!545510 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203379 (= lt!545508 (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203379 (= lt!545512 (select (arr!37620 _keys!1208) from!1455))))

(assert (=> b!1203379 (= lt!545513 call!58036)))

(assert (=> b!1203379 (= e!683361 (+!3953 call!58036 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203380 () Bool)

(assert (=> b!1203380 (= e!683365 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203381 () Bool)

(assert (=> b!1203381 (= e!683367 (isEmpty!983 lt!545507))))

(declare-fun b!1203382 () Bool)

(assert (=> b!1203382 (= e!683365 e!683361)))

(declare-fun c!117785 () Bool)

(assert (=> b!1203382 (= c!117785 (validKeyInArray!0 (select (arr!37620 _keys!1208) from!1455)))))

(assert (= (and d!132449 c!117787) b!1203380))

(assert (= (and d!132449 (not c!117787)) b!1203382))

(assert (= (and b!1203382 c!117785) b!1203379))

(assert (= (and b!1203382 (not c!117785)) b!1203378))

(assert (= (or b!1203379 b!1203378) bm!58033))

(assert (= (and d!132449 res!800896) b!1203376))

(assert (= (and b!1203376 res!800899) b!1203374))

(assert (= (and b!1203374 res!800898) b!1203375))

(assert (= (and b!1203374 c!117788) b!1203377))

(assert (= (and b!1203374 (not c!117788)) b!1203372))

(assert (= (and b!1203377 res!800897) b!1203373))

(assert (= (and b!1203372 c!117786) b!1203371))

(assert (= (and b!1203372 (not c!117786)) b!1203381))

(declare-fun b_lambda!21129 () Bool)

(assert (=> (not b_lambda!21129) (not b!1203373)))

(assert (=> b!1203373 t!39537))

(declare-fun b_and!42717 () Bool)

(assert (= b_and!42715 (and (=> t!39537 result!21983) b_and!42717)))

(declare-fun b_lambda!21131 () Bool)

(assert (=> (not b_lambda!21131) (not b!1203379)))

(assert (=> b!1203379 t!39537))

(declare-fun b_and!42719 () Bool)

(assert (= b_and!42717 (and (=> t!39537 result!21983) b_and!42719)))

(declare-fun m!1109135 () Bool)

(assert (=> b!1203371 m!1109135))

(declare-fun m!1109137 () Bool)

(assert (=> b!1203381 m!1109137))

(declare-fun m!1109139 () Bool)

(assert (=> b!1203376 m!1109139))

(declare-fun m!1109141 () Bool)

(assert (=> d!132449 m!1109141))

(assert (=> d!132449 m!1108917))

(declare-fun m!1109143 () Bool)

(assert (=> b!1203373 m!1109143))

(assert (=> b!1203373 m!1109143))

(assert (=> b!1203373 m!1108905))

(declare-fun m!1109145 () Bool)

(assert (=> b!1203373 m!1109145))

(assert (=> b!1203373 m!1108875))

(declare-fun m!1109147 () Bool)

(assert (=> b!1203373 m!1109147))

(assert (=> b!1203373 m!1108905))

(assert (=> b!1203373 m!1108875))

(assert (=> b!1203377 m!1108875))

(assert (=> b!1203377 m!1108875))

(declare-fun m!1109149 () Bool)

(assert (=> b!1203377 m!1109149))

(assert (=> b!1203379 m!1109143))

(declare-fun m!1109151 () Bool)

(assert (=> b!1203379 m!1109151))

(declare-fun m!1109153 () Bool)

(assert (=> b!1203379 m!1109153))

(assert (=> b!1203379 m!1109143))

(assert (=> b!1203379 m!1108905))

(assert (=> b!1203379 m!1109145))

(declare-fun m!1109155 () Bool)

(assert (=> b!1203379 m!1109155))

(assert (=> b!1203379 m!1109151))

(assert (=> b!1203379 m!1108905))

(declare-fun m!1109157 () Bool)

(assert (=> b!1203379 m!1109157))

(assert (=> b!1203379 m!1108875))

(assert (=> b!1203382 m!1108875))

(assert (=> b!1203382 m!1108875))

(declare-fun m!1109159 () Bool)

(assert (=> b!1203382 m!1109159))

(assert (=> bm!58033 m!1109135))

(assert (=> b!1203375 m!1108875))

(assert (=> b!1203375 m!1108875))

(assert (=> b!1203375 m!1109159))

(assert (=> b!1203160 d!132449))

(declare-fun b!1203383 () Bool)

(declare-fun e!683368 () Bool)

(declare-fun call!58037 () Bool)

(assert (=> b!1203383 (= e!683368 call!58037)))

(declare-fun b!1203384 () Bool)

(assert (=> b!1203384 (= e!683368 call!58037)))

(declare-fun b!1203385 () Bool)

(declare-fun e!683369 () Bool)

(assert (=> b!1203385 (= e!683369 (contains!6918 Nil!26650 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1203386 () Bool)

(declare-fun e!683370 () Bool)

(assert (=> b!1203386 (= e!683370 e!683368)))

(declare-fun c!117789 () Bool)

(assert (=> b!1203386 (= c!117789 (validKeyInArray!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132451 () Bool)

(declare-fun res!800902 () Bool)

(declare-fun e!683371 () Bool)

(assert (=> d!132451 (=> res!800902 e!683371)))

(assert (=> d!132451 (= res!800902 (bvsge #b00000000000000000000000000000000 (size!38157 _keys!1208)))))

(assert (=> d!132451 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26650) e!683371)))

(declare-fun b!1203387 () Bool)

(assert (=> b!1203387 (= e!683371 e!683370)))

(declare-fun res!800901 () Bool)

(assert (=> b!1203387 (=> (not res!800901) (not e!683370))))

(assert (=> b!1203387 (= res!800901 (not e!683369))))

(declare-fun res!800900 () Bool)

(assert (=> b!1203387 (=> (not res!800900) (not e!683369))))

(assert (=> b!1203387 (= res!800900 (validKeyInArray!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!58034 () Bool)

(assert (=> bm!58034 (= call!58037 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117789 (Cons!26649 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) Nil!26650) Nil!26650)))))

(assert (= (and d!132451 (not res!800902)) b!1203387))

(assert (= (and b!1203387 res!800900) b!1203385))

(assert (= (and b!1203387 res!800901) b!1203386))

(assert (= (and b!1203386 c!117789) b!1203384))

(assert (= (and b!1203386 (not c!117789)) b!1203383))

(assert (= (or b!1203384 b!1203383) bm!58034))

(assert (=> b!1203385 m!1109027))

(assert (=> b!1203385 m!1109027))

(declare-fun m!1109161 () Bool)

(assert (=> b!1203385 m!1109161))

(assert (=> b!1203386 m!1109027))

(assert (=> b!1203386 m!1109027))

(assert (=> b!1203386 m!1109029))

(assert (=> b!1203387 m!1109027))

(assert (=> b!1203387 m!1109027))

(assert (=> b!1203387 m!1109029))

(assert (=> bm!58034 m!1109027))

(declare-fun m!1109163 () Bool)

(assert (=> bm!58034 m!1109163))

(assert (=> b!1203161 d!132451))

(declare-fun b!1203388 () Bool)

(declare-fun e!683378 () Bool)

(declare-fun lt!545514 () ListLongMap!17805)

(assert (=> b!1203388 (= e!683378 (= lt!545514 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132453 () Bool)

(declare-fun e!683377 () Bool)

(assert (=> d!132453 e!683377))

(declare-fun res!800903 () Bool)

(assert (=> d!132453 (=> (not res!800903) (not e!683377))))

(assert (=> d!132453 (= res!800903 (not (contains!6916 lt!545514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683376 () ListLongMap!17805)

(assert (=> d!132453 (= lt!545514 e!683376)))

(declare-fun c!117792 () Bool)

(assert (=> d!132453 (= c!117792 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 lt!545369)))))

(assert (=> d!132453 (validMask!0 mask!1564)))

(assert (=> d!132453 (= (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545514)))

(declare-fun b!1203389 () Bool)

(declare-fun e!683374 () Bool)

(assert (=> b!1203389 (= e!683374 e!683378)))

(declare-fun c!117791 () Bool)

(assert (=> b!1203389 (= c!117791 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 lt!545369)))))

(declare-fun b!1203390 () Bool)

(assert (=> b!1203390 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 lt!545369)))))

(assert (=> b!1203390 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38156 lt!545375)))))

(declare-fun e!683375 () Bool)

(assert (=> b!1203390 (= e!683375 (= (apply!995 lt!545514 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!58035 () Bool)

(declare-fun call!58038 () ListLongMap!17805)

(assert (=> bm!58035 (= call!58038 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203391 () Bool)

(assert (=> b!1203391 (= e!683377 e!683374)))

(declare-fun c!117793 () Bool)

(declare-fun e!683373 () Bool)

(assert (=> b!1203391 (= c!117793 e!683373)))

(declare-fun res!800905 () Bool)

(assert (=> b!1203391 (=> (not res!800905) (not e!683373))))

(assert (=> b!1203391 (= res!800905 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 lt!545369)))))

(declare-fun b!1203392 () Bool)

(assert (=> b!1203392 (= e!683373 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203392 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1203393 () Bool)

(declare-fun res!800906 () Bool)

(assert (=> b!1203393 (=> (not res!800906) (not e!683377))))

(assert (=> b!1203393 (= res!800906 (not (contains!6916 lt!545514 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203394 () Bool)

(assert (=> b!1203394 (= e!683374 e!683375)))

(assert (=> b!1203394 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 lt!545369)))))

(declare-fun res!800904 () Bool)

(assert (=> b!1203394 (= res!800904 (contains!6916 lt!545514 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203394 (=> (not res!800904) (not e!683375))))

(declare-fun b!1203395 () Bool)

(declare-fun e!683372 () ListLongMap!17805)

(assert (=> b!1203395 (= e!683372 call!58038)))

(declare-fun b!1203396 () Bool)

(declare-fun lt!545518 () Unit!39811)

(declare-fun lt!545516 () Unit!39811)

(assert (=> b!1203396 (= lt!545518 lt!545516)))

(declare-fun lt!545517 () (_ BitVec 64))

(declare-fun lt!545520 () ListLongMap!17805)

(declare-fun lt!545519 () (_ BitVec 64))

(declare-fun lt!545515 () V!45931)

(assert (=> b!1203396 (not (contains!6916 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515)) lt!545517))))

(assert (=> b!1203396 (= lt!545516 (addStillNotContains!290 lt!545520 lt!545519 lt!545515 lt!545517))))

(assert (=> b!1203396 (= lt!545517 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203396 (= lt!545515 (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203396 (= lt!545519 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1203396 (= lt!545520 call!58038)))

(assert (=> b!1203396 (= e!683372 (+!3953 call!58038 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203397 () Bool)

(assert (=> b!1203397 (= e!683376 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203398 () Bool)

(assert (=> b!1203398 (= e!683378 (isEmpty!983 lt!545514))))

(declare-fun b!1203399 () Bool)

(assert (=> b!1203399 (= e!683376 e!683372)))

(declare-fun c!117790 () Bool)

(assert (=> b!1203399 (= c!117790 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (= (and d!132453 c!117792) b!1203397))

(assert (= (and d!132453 (not c!117792)) b!1203399))

(assert (= (and b!1203399 c!117790) b!1203396))

(assert (= (and b!1203399 (not c!117790)) b!1203395))

(assert (= (or b!1203396 b!1203395) bm!58035))

(assert (= (and d!132453 res!800903) b!1203393))

(assert (= (and b!1203393 res!800906) b!1203391))

(assert (= (and b!1203391 res!800905) b!1203392))

(assert (= (and b!1203391 c!117793) b!1203394))

(assert (= (and b!1203391 (not c!117793)) b!1203389))

(assert (= (and b!1203394 res!800904) b!1203390))

(assert (= (and b!1203389 c!117791) b!1203388))

(assert (= (and b!1203389 (not c!117791)) b!1203398))

(declare-fun b_lambda!21133 () Bool)

(assert (=> (not b_lambda!21133) (not b!1203390)))

(assert (=> b!1203390 t!39537))

(declare-fun b_and!42721 () Bool)

(assert (= b_and!42719 (and (=> t!39537 result!21983) b_and!42721)))

(declare-fun b_lambda!21135 () Bool)

(assert (=> (not b_lambda!21135) (not b!1203396)))

(assert (=> b!1203396 t!39537))

(declare-fun b_and!42723 () Bool)

(assert (= b_and!42721 (and (=> t!39537 result!21983) b_and!42723)))

(declare-fun m!1109165 () Bool)

(assert (=> b!1203388 m!1109165))

(declare-fun m!1109167 () Bool)

(assert (=> b!1203398 m!1109167))

(declare-fun m!1109169 () Bool)

(assert (=> b!1203393 m!1109169))

(declare-fun m!1109171 () Bool)

(assert (=> d!132453 m!1109171))

(assert (=> d!132453 m!1108917))

(declare-fun m!1109173 () Bool)

(assert (=> b!1203390 m!1109173))

(assert (=> b!1203390 m!1109173))

(assert (=> b!1203390 m!1108905))

(declare-fun m!1109175 () Bool)

(assert (=> b!1203390 m!1109175))

(declare-fun m!1109177 () Bool)

(assert (=> b!1203390 m!1109177))

(declare-fun m!1109179 () Bool)

(assert (=> b!1203390 m!1109179))

(assert (=> b!1203390 m!1108905))

(assert (=> b!1203390 m!1109177))

(assert (=> b!1203394 m!1109177))

(assert (=> b!1203394 m!1109177))

(declare-fun m!1109181 () Bool)

(assert (=> b!1203394 m!1109181))

(assert (=> b!1203396 m!1109173))

(declare-fun m!1109183 () Bool)

(assert (=> b!1203396 m!1109183))

(declare-fun m!1109185 () Bool)

(assert (=> b!1203396 m!1109185))

(assert (=> b!1203396 m!1109173))

(assert (=> b!1203396 m!1108905))

(assert (=> b!1203396 m!1109175))

(declare-fun m!1109187 () Bool)

(assert (=> b!1203396 m!1109187))

(assert (=> b!1203396 m!1109183))

(assert (=> b!1203396 m!1108905))

(declare-fun m!1109189 () Bool)

(assert (=> b!1203396 m!1109189))

(assert (=> b!1203396 m!1109177))

(assert (=> b!1203399 m!1109177))

(assert (=> b!1203399 m!1109177))

(declare-fun m!1109191 () Bool)

(assert (=> b!1203399 m!1109191))

(assert (=> bm!58035 m!1109165))

(assert (=> b!1203392 m!1109177))

(assert (=> b!1203392 m!1109177))

(assert (=> b!1203392 m!1109191))

(assert (=> bm!57986 d!132453))

(declare-fun d!132455 () Bool)

(declare-fun e!683379 () Bool)

(assert (=> d!132455 e!683379))

(declare-fun res!800907 () Bool)

(assert (=> d!132455 (=> res!800907 e!683379)))

(declare-fun lt!545522 () Bool)

(assert (=> d!132455 (= res!800907 (not lt!545522))))

(declare-fun lt!545524 () Bool)

(assert (=> d!132455 (= lt!545522 lt!545524)))

(declare-fun lt!545523 () Unit!39811)

(declare-fun e!683380 () Unit!39811)

(assert (=> d!132455 (= lt!545523 e!683380)))

(declare-fun c!117794 () Bool)

(assert (=> d!132455 (= c!117794 lt!545524)))

(assert (=> d!132455 (= lt!545524 (containsKey!588 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))

(assert (=> d!132455 (= (contains!6916 (ite c!117739 lt!545373 call!57991) k0!934) lt!545522)))

(declare-fun b!1203400 () Bool)

(declare-fun lt!545521 () Unit!39811)

(assert (=> b!1203400 (= e!683380 lt!545521)))

(assert (=> b!1203400 (= lt!545521 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))

(assert (=> b!1203400 (isDefined!457 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))

(declare-fun b!1203401 () Bool)

(declare-fun Unit!39819 () Unit!39811)

(assert (=> b!1203401 (= e!683380 Unit!39819)))

(declare-fun b!1203402 () Bool)

(assert (=> b!1203402 (= e!683379 (isDefined!457 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934)))))

(assert (= (and d!132455 c!117794) b!1203400))

(assert (= (and d!132455 (not c!117794)) b!1203401))

(assert (= (and d!132455 (not res!800907)) b!1203402))

(declare-fun m!1109193 () Bool)

(assert (=> d!132455 m!1109193))

(declare-fun m!1109195 () Bool)

(assert (=> b!1203400 m!1109195))

(declare-fun m!1109197 () Bool)

(assert (=> b!1203400 m!1109197))

(assert (=> b!1203400 m!1109197))

(declare-fun m!1109199 () Bool)

(assert (=> b!1203400 m!1109199))

(assert (=> b!1203402 m!1109197))

(assert (=> b!1203402 m!1109197))

(assert (=> b!1203402 m!1109199))

(assert (=> bm!57984 d!132455))

(declare-fun d!132457 () Bool)

(assert (=> d!132457 (contains!6916 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))) k0!934)))

(declare-fun lt!545525 () Unit!39811)

(assert (=> d!132457 (= lt!545525 (choose!1792 (ite c!117739 lt!545373 lt!545376) (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)) k0!934))))

(assert (=> d!132457 (contains!6916 (ite c!117739 lt!545373 lt!545376) k0!934)))

(assert (=> d!132457 (= (addStillContains!1017 (ite c!117739 lt!545373 lt!545376) (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)) k0!934) lt!545525)))

(declare-fun bs!34055 () Bool)

(assert (= bs!34055 d!132457))

(declare-fun m!1109201 () Bool)

(assert (=> bs!34055 m!1109201))

(assert (=> bs!34055 m!1109201))

(declare-fun m!1109203 () Bool)

(assert (=> bs!34055 m!1109203))

(declare-fun m!1109205 () Bool)

(assert (=> bs!34055 m!1109205))

(declare-fun m!1109207 () Bool)

(assert (=> bs!34055 m!1109207))

(assert (=> bm!57989 d!132457))

(declare-fun b!1203410 () Bool)

(declare-fun e!683386 () Bool)

(assert (=> b!1203410 (= e!683386 tp_is_empty!30603)))

(declare-fun mapNonEmpty!47753 () Bool)

(declare-fun mapRes!47753 () Bool)

(declare-fun tp!90697 () Bool)

(declare-fun e!683385 () Bool)

(assert (=> mapNonEmpty!47753 (= mapRes!47753 (and tp!90697 e!683385))))

(declare-fun mapKey!47753 () (_ BitVec 32))

(declare-fun mapValue!47753 () ValueCell!14592)

(declare-fun mapRest!47753 () (Array (_ BitVec 32) ValueCell!14592))

(assert (=> mapNonEmpty!47753 (= mapRest!47747 (store mapRest!47753 mapKey!47753 mapValue!47753))))

(declare-fun condMapEmpty!47753 () Bool)

(declare-fun mapDefault!47753 () ValueCell!14592)

(assert (=> mapNonEmpty!47747 (= condMapEmpty!47753 (= mapRest!47747 ((as const (Array (_ BitVec 32) ValueCell!14592)) mapDefault!47753)))))

(assert (=> mapNonEmpty!47747 (= tp!90688 (and e!683386 mapRes!47753))))

(declare-fun mapIsEmpty!47753 () Bool)

(assert (=> mapIsEmpty!47753 mapRes!47753))

(declare-fun b!1203409 () Bool)

(assert (=> b!1203409 (= e!683385 tp_is_empty!30603)))

(assert (= (and mapNonEmpty!47747 condMapEmpty!47753) mapIsEmpty!47753))

(assert (= (and mapNonEmpty!47747 (not condMapEmpty!47753)) mapNonEmpty!47753))

(assert (= (and mapNonEmpty!47753 ((_ is ValueCellFull!14592) mapValue!47753)) b!1203409))

(assert (= (and mapNonEmpty!47747 ((_ is ValueCellFull!14592) mapDefault!47753)) b!1203410))

(declare-fun m!1109209 () Bool)

(assert (=> mapNonEmpty!47753 m!1109209))

(declare-fun b_lambda!21137 () Bool)

(assert (= b_lambda!21125 (or (and start!100612 b_free!25899) b_lambda!21137)))

(declare-fun b_lambda!21139 () Bool)

(assert (= b_lambda!21135 (or (and start!100612 b_free!25899) b_lambda!21139)))

(declare-fun b_lambda!21141 () Bool)

(assert (= b_lambda!21121 (or (and start!100612 b_free!25899) b_lambda!21141)))

(declare-fun b_lambda!21143 () Bool)

(assert (= b_lambda!21133 (or (and start!100612 b_free!25899) b_lambda!21143)))

(declare-fun b_lambda!21145 () Bool)

(assert (= b_lambda!21127 (or (and start!100612 b_free!25899) b_lambda!21145)))

(declare-fun b_lambda!21147 () Bool)

(assert (= b_lambda!21129 (or (and start!100612 b_free!25899) b_lambda!21147)))

(declare-fun b_lambda!21149 () Bool)

(assert (= b_lambda!21119 (or (and start!100612 b_free!25899) b_lambda!21149)))

(declare-fun b_lambda!21151 () Bool)

(assert (= b_lambda!21123 (or (and start!100612 b_free!25899) b_lambda!21151)))

(declare-fun b_lambda!21153 () Bool)

(assert (= b_lambda!21131 (or (and start!100612 b_free!25899) b_lambda!21153)))

(check-sat (not bm!58027) (not b!1203392) (not b!1203393) (not d!132437) (not d!132445) (not b_lambda!21117) (not b!1203373) (not b!1203381) (not b!1203297) (not b!1203398) (not d!132419) (not b!1203285) (not b!1203303) (not b!1203387) (not b!1203268) b_and!42723 (not b_lambda!21137) (not b!1203311) (not b!1203340) (not b!1203390) (not b!1203270) (not b!1203286) (not d!132455) (not b!1203385) (not d!132417) (not b!1203371) (not b!1203344) (not b!1203399) (not d!132435) (not b_lambda!21143) (not b_lambda!21145) (not b!1203346) (not bm!58031) (not b!1203400) (not b!1203375) (not b!1203342) (not d!132453) (not b_lambda!21149) (not d!132441) (not b!1203296) (not d!132415) (not b!1203363) (not bm!58034) (not b!1203280) (not b!1203301) (not b!1203388) (not bm!58028) (not b!1203377) (not b!1203359) (not b!1203379) (not b!1203348) (not bm!58022) (not b!1203304) tp_is_empty!30603 (not bm!58018) (not bm!58033) (not b!1203376) (not bm!58032) (not b!1203364) (not b!1203300) (not b!1203382) (not b!1203349) (not b!1203386) (not b!1203369) (not b_lambda!21153) (not b!1203338) (not d!132457) (not d!132431) (not b!1203370) (not b!1203402) (not b!1203361) (not d!132449) (not b!1203365) (not b!1203394) (not b_next!25899) (not b_lambda!21151) (not d!132447) (not mapNonEmpty!47753) (not bm!58035) (not b_lambda!21139) (not b_lambda!21147) (not bm!58021) (not b!1203278) (not b!1203358) (not b!1203367) (not b!1203343) (not b_lambda!21141) (not b!1203269) (not b!1203356) (not b!1203396) (not d!132433) (not b!1203355))
(check-sat b_and!42723 (not b_next!25899))
(get-model)

(declare-fun d!132459 () Bool)

(assert (=> d!132459 (= (validKeyInArray!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)) (and (not (= (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203387 d!132459))

(declare-fun d!132461 () Bool)

(declare-fun isEmpty!984 (Option!685) Bool)

(assert (=> d!132461 (= (isDefined!457 (getValueByKey!634 (toList!8918 lt!545376) k0!934)) (not (isEmpty!984 (getValueByKey!634 (toList!8918 lt!545376) k0!934))))))

(declare-fun bs!34056 () Bool)

(assert (= bs!34056 d!132461))

(assert (=> bs!34056 m!1109103))

(declare-fun m!1109211 () Bool)

(assert (=> bs!34056 m!1109211))

(assert (=> b!1203358 d!132461))

(declare-fun b!1203419 () Bool)

(declare-fun e!683391 () Option!685)

(assert (=> b!1203419 (= e!683391 (Some!684 (_2!9922 (h!27857 (toList!8918 lt!545376)))))))

(declare-fun b!1203422 () Bool)

(declare-fun e!683392 () Option!685)

(assert (=> b!1203422 (= e!683392 None!683)))

(declare-fun b!1203420 () Bool)

(assert (=> b!1203420 (= e!683391 e!683392)))

(declare-fun c!117800 () Bool)

(assert (=> b!1203420 (= c!117800 (and ((_ is Cons!26648) (toList!8918 lt!545376)) (not (= (_1!9922 (h!27857 (toList!8918 lt!545376))) k0!934))))))

(declare-fun d!132463 () Bool)

(declare-fun c!117799 () Bool)

(assert (=> d!132463 (= c!117799 (and ((_ is Cons!26648) (toList!8918 lt!545376)) (= (_1!9922 (h!27857 (toList!8918 lt!545376))) k0!934)))))

(assert (=> d!132463 (= (getValueByKey!634 (toList!8918 lt!545376) k0!934) e!683391)))

(declare-fun b!1203421 () Bool)

(assert (=> b!1203421 (= e!683392 (getValueByKey!634 (t!39538 (toList!8918 lt!545376)) k0!934))))

(assert (= (and d!132463 c!117799) b!1203419))

(assert (= (and d!132463 (not c!117799)) b!1203420))

(assert (= (and b!1203420 c!117800) b!1203421))

(assert (= (and b!1203420 (not c!117800)) b!1203422))

(declare-fun m!1109213 () Bool)

(assert (=> b!1203421 m!1109213))

(assert (=> b!1203358 d!132463))

(declare-fun d!132465 () Bool)

(assert (=> d!132465 (= (validKeyInArray!0 (select (arr!37620 lt!545369) from!1455)) (and (not (= (select (arr!37620 lt!545369) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37620 lt!545369) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203370 d!132465))

(declare-fun e!683399 () Bool)

(declare-fun lt!545526 () ListLongMap!17805)

(declare-fun b!1203423 () Bool)

(assert (=> b!1203423 (= e!683399 (= lt!545526 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132467 () Bool)

(declare-fun e!683398 () Bool)

(assert (=> d!132467 e!683398))

(declare-fun res!800908 () Bool)

(assert (=> d!132467 (=> (not res!800908) (not e!683398))))

(assert (=> d!132467 (= res!800908 (not (contains!6916 lt!545526 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683397 () ListLongMap!17805)

(assert (=> d!132467 (= lt!545526 e!683397)))

(declare-fun c!117803 () Bool)

(assert (=> d!132467 (= c!117803 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(assert (=> d!132467 (validMask!0 mask!1564)))

(assert (=> d!132467 (= (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!545526)))

(declare-fun b!1203424 () Bool)

(declare-fun e!683395 () Bool)

(assert (=> b!1203424 (= e!683395 e!683399)))

(declare-fun c!117802 () Bool)

(assert (=> b!1203424 (= c!117802 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203425 () Bool)

(assert (=> b!1203425 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(assert (=> b!1203425 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38156 _values!996)))))

(declare-fun e!683396 () Bool)

(assert (=> b!1203425 (= e!683396 (= (apply!995 lt!545526 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!58036 () Bool)

(declare-fun call!58039 () ListLongMap!17805)

(assert (=> bm!58036 (= call!58039 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203426 () Bool)

(assert (=> b!1203426 (= e!683398 e!683395)))

(declare-fun c!117804 () Bool)

(declare-fun e!683394 () Bool)

(assert (=> b!1203426 (= c!117804 e!683394)))

(declare-fun res!800910 () Bool)

(assert (=> b!1203426 (=> (not res!800910) (not e!683394))))

(assert (=> b!1203426 (= res!800910 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203427 () Bool)

(assert (=> b!1203427 (= e!683394 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203427 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1203428 () Bool)

(declare-fun res!800911 () Bool)

(assert (=> b!1203428 (=> (not res!800911) (not e!683398))))

(assert (=> b!1203428 (= res!800911 (not (contains!6916 lt!545526 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203429 () Bool)

(assert (=> b!1203429 (= e!683395 e!683396)))

(assert (=> b!1203429 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun res!800909 () Bool)

(assert (=> b!1203429 (= res!800909 (contains!6916 lt!545526 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203429 (=> (not res!800909) (not e!683396))))

(declare-fun b!1203430 () Bool)

(declare-fun e!683393 () ListLongMap!17805)

(assert (=> b!1203430 (= e!683393 call!58039)))

(declare-fun b!1203431 () Bool)

(declare-fun lt!545530 () Unit!39811)

(declare-fun lt!545528 () Unit!39811)

(assert (=> b!1203431 (= lt!545530 lt!545528)))

(declare-fun lt!545527 () V!45931)

(declare-fun lt!545532 () ListLongMap!17805)

(declare-fun lt!545529 () (_ BitVec 64))

(declare-fun lt!545531 () (_ BitVec 64))

(assert (=> b!1203431 (not (contains!6916 (+!3953 lt!545532 (tuple2!19825 lt!545531 lt!545527)) lt!545529))))

(assert (=> b!1203431 (= lt!545528 (addStillNotContains!290 lt!545532 lt!545531 lt!545527 lt!545529))))

(assert (=> b!1203431 (= lt!545529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203431 (= lt!545527 (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203431 (= lt!545531 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (=> b!1203431 (= lt!545532 call!58039)))

(assert (=> b!1203431 (= e!683393 (+!3953 call!58039 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203432 () Bool)

(assert (=> b!1203432 (= e!683397 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203433 () Bool)

(assert (=> b!1203433 (= e!683399 (isEmpty!983 lt!545526))))

(declare-fun b!1203434 () Bool)

(assert (=> b!1203434 (= e!683397 e!683393)))

(declare-fun c!117801 () Bool)

(assert (=> b!1203434 (= c!117801 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (= (and d!132467 c!117803) b!1203432))

(assert (= (and d!132467 (not c!117803)) b!1203434))

(assert (= (and b!1203434 c!117801) b!1203431))

(assert (= (and b!1203434 (not c!117801)) b!1203430))

(assert (= (or b!1203431 b!1203430) bm!58036))

(assert (= (and d!132467 res!800908) b!1203428))

(assert (= (and b!1203428 res!800911) b!1203426))

(assert (= (and b!1203426 res!800910) b!1203427))

(assert (= (and b!1203426 c!117804) b!1203429))

(assert (= (and b!1203426 (not c!117804)) b!1203424))

(assert (= (and b!1203429 res!800909) b!1203425))

(assert (= (and b!1203424 c!117802) b!1203423))

(assert (= (and b!1203424 (not c!117802)) b!1203433))

(declare-fun b_lambda!21155 () Bool)

(assert (=> (not b_lambda!21155) (not b!1203425)))

(assert (=> b!1203425 t!39537))

(declare-fun b_and!42725 () Bool)

(assert (= b_and!42723 (and (=> t!39537 result!21983) b_and!42725)))

(declare-fun b_lambda!21157 () Bool)

(assert (=> (not b_lambda!21157) (not b!1203431)))

(assert (=> b!1203431 t!39537))

(declare-fun b_and!42727 () Bool)

(assert (= b_and!42725 (and (=> t!39537 result!21983) b_and!42727)))

(declare-fun m!1109215 () Bool)

(assert (=> b!1203423 m!1109215))

(declare-fun m!1109217 () Bool)

(assert (=> b!1203433 m!1109217))

(declare-fun m!1109219 () Bool)

(assert (=> b!1203428 m!1109219))

(declare-fun m!1109221 () Bool)

(assert (=> d!132467 m!1109221))

(assert (=> d!132467 m!1108917))

(declare-fun m!1109223 () Bool)

(assert (=> b!1203425 m!1109223))

(assert (=> b!1203425 m!1109223))

(assert (=> b!1203425 m!1108905))

(declare-fun m!1109225 () Bool)

(assert (=> b!1203425 m!1109225))

(declare-fun m!1109227 () Bool)

(assert (=> b!1203425 m!1109227))

(declare-fun m!1109229 () Bool)

(assert (=> b!1203425 m!1109229))

(assert (=> b!1203425 m!1108905))

(assert (=> b!1203425 m!1109227))

(assert (=> b!1203429 m!1109227))

(assert (=> b!1203429 m!1109227))

(declare-fun m!1109231 () Bool)

(assert (=> b!1203429 m!1109231))

(assert (=> b!1203431 m!1109223))

(declare-fun m!1109233 () Bool)

(assert (=> b!1203431 m!1109233))

(declare-fun m!1109235 () Bool)

(assert (=> b!1203431 m!1109235))

(assert (=> b!1203431 m!1109223))

(assert (=> b!1203431 m!1108905))

(assert (=> b!1203431 m!1109225))

(declare-fun m!1109237 () Bool)

(assert (=> b!1203431 m!1109237))

(assert (=> b!1203431 m!1109233))

(assert (=> b!1203431 m!1108905))

(declare-fun m!1109239 () Bool)

(assert (=> b!1203431 m!1109239))

(assert (=> b!1203431 m!1109227))

(assert (=> b!1203434 m!1109227))

(assert (=> b!1203434 m!1109227))

(declare-fun m!1109241 () Bool)

(assert (=> b!1203434 m!1109241))

(assert (=> bm!58036 m!1109215))

(assert (=> b!1203427 m!1109227))

(assert (=> b!1203427 m!1109227))

(assert (=> b!1203427 m!1109241))

(assert (=> bm!58031 d!132467))

(declare-fun d!132469 () Bool)

(declare-fun res!800916 () Bool)

(declare-fun e!683404 () Bool)

(assert (=> d!132469 (=> res!800916 e!683404)))

(assert (=> d!132469 (= res!800916 (and ((_ is Cons!26648) (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (= (_1!9922 (h!27857 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)))))

(assert (=> d!132469 (= (containsKey!588 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934) e!683404)))

(declare-fun b!1203439 () Bool)

(declare-fun e!683405 () Bool)

(assert (=> b!1203439 (= e!683404 e!683405)))

(declare-fun res!800917 () Bool)

(assert (=> b!1203439 (=> (not res!800917) (not e!683405))))

(assert (=> b!1203439 (= res!800917 (and (or (not ((_ is Cons!26648) (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (bvsle (_1!9922 (h!27857 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)) ((_ is Cons!26648) (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (bvslt (_1!9922 (h!27857 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)))))

(declare-fun b!1203440 () Bool)

(assert (=> b!1203440 (= e!683405 (containsKey!588 (t!39538 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) k0!934))))

(assert (= (and d!132469 (not res!800916)) b!1203439))

(assert (= (and b!1203439 res!800917) b!1203440))

(declare-fun m!1109243 () Bool)

(assert (=> b!1203440 m!1109243))

(assert (=> d!132417 d!132469))

(declare-fun d!132471 () Bool)

(assert (=> d!132471 (isDefined!457 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))

(declare-fun lt!545535 () Unit!39811)

(declare-fun choose!1794 (List!26652 (_ BitVec 64)) Unit!39811)

(assert (=> d!132471 (= lt!545535 (choose!1794 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))

(declare-fun e!683408 () Bool)

(assert (=> d!132471 e!683408))

(declare-fun res!800920 () Bool)

(assert (=> d!132471 (=> (not res!800920) (not e!683408))))

(declare-fun isStrictlySorted!724 (List!26652) Bool)

(assert (=> d!132471 (= res!800920 (isStrictlySorted!724 (toList!8918 (ite c!117739 lt!545373 call!57991))))))

(assert (=> d!132471 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934) lt!545535)))

(declare-fun b!1203443 () Bool)

(assert (=> b!1203443 (= e!683408 (containsKey!588 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))

(assert (= (and d!132471 res!800920) b!1203443))

(assert (=> d!132471 m!1109197))

(assert (=> d!132471 m!1109197))

(assert (=> d!132471 m!1109199))

(declare-fun m!1109245 () Bool)

(assert (=> d!132471 m!1109245))

(declare-fun m!1109247 () Bool)

(assert (=> d!132471 m!1109247))

(assert (=> b!1203443 m!1109193))

(assert (=> b!1203400 d!132471))

(declare-fun d!132473 () Bool)

(assert (=> d!132473 (= (isDefined!457 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934)) (not (isEmpty!984 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934))))))

(declare-fun bs!34057 () Bool)

(assert (= bs!34057 d!132473))

(assert (=> bs!34057 m!1109197))

(declare-fun m!1109249 () Bool)

(assert (=> bs!34057 m!1109249))

(assert (=> b!1203400 d!132473))

(declare-fun b!1203444 () Bool)

(declare-fun e!683409 () Option!685)

(assert (=> b!1203444 (= e!683409 (Some!684 (_2!9922 (h!27857 (toList!8918 (ite c!117739 lt!545373 call!57991))))))))

(declare-fun b!1203447 () Bool)

(declare-fun e!683410 () Option!685)

(assert (=> b!1203447 (= e!683410 None!683)))

(declare-fun b!1203445 () Bool)

(assert (=> b!1203445 (= e!683409 e!683410)))

(declare-fun c!117806 () Bool)

(assert (=> b!1203445 (= c!117806 (and ((_ is Cons!26648) (toList!8918 (ite c!117739 lt!545373 call!57991))) (not (= (_1!9922 (h!27857 (toList!8918 (ite c!117739 lt!545373 call!57991)))) k0!934))))))

(declare-fun d!132475 () Bool)

(declare-fun c!117805 () Bool)

(assert (=> d!132475 (= c!117805 (and ((_ is Cons!26648) (toList!8918 (ite c!117739 lt!545373 call!57991))) (= (_1!9922 (h!27857 (toList!8918 (ite c!117739 lt!545373 call!57991)))) k0!934)))))

(assert (=> d!132475 (= (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934) e!683409)))

(declare-fun b!1203446 () Bool)

(assert (=> b!1203446 (= e!683410 (getValueByKey!634 (t!39538 (toList!8918 (ite c!117739 lt!545373 call!57991))) k0!934))))

(assert (= (and d!132475 c!117805) b!1203444))

(assert (= (and d!132475 (not c!117805)) b!1203445))

(assert (= (and b!1203445 c!117806) b!1203446))

(assert (= (and b!1203445 (not c!117806)) b!1203447))

(declare-fun m!1109251 () Bool)

(assert (=> b!1203446 m!1109251))

(assert (=> b!1203400 d!132475))

(declare-fun d!132477 () Bool)

(declare-fun e!683413 () Bool)

(assert (=> d!132477 e!683413))

(declare-fun c!117809 () Bool)

(assert (=> d!132477 (= c!117809 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (=> d!132477 true))

(declare-fun _$12!465 () Unit!39811)

(assert (=> d!132477 (= (choose!1793 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) _$12!465)))

(declare-fun bm!58042 () Bool)

(declare-fun call!58044 () ListLongMap!17805)

(assert (=> bm!58042 (= call!58044 (getCurrentListMapNoExtraKeys!5328 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)) (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58045 () ListLongMap!17805)

(declare-fun b!1203452 () Bool)

(assert (=> b!1203452 (= e!683413 (= call!58044 (-!1834 call!58045 k0!934)))))

(declare-fun bm!58041 () Bool)

(assert (=> bm!58041 (= call!58045 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203453 () Bool)

(assert (=> b!1203453 (= e!683413 (= call!58044 call!58045))))

(assert (= (and d!132477 c!117809) b!1203452))

(assert (= (and d!132477 (not c!117809)) b!1203453))

(assert (= (or b!1203452 b!1203453) bm!58041))

(assert (= (or b!1203452 b!1203453) bm!58042))

(declare-fun b_lambda!21159 () Bool)

(assert (=> (not b_lambda!21159) (not bm!58042)))

(assert (=> bm!58042 t!39537))

(declare-fun b_and!42729 () Bool)

(assert (= b_and!42727 (and (=> t!39537 result!21983) b_and!42729)))

(assert (=> bm!58042 m!1108931))

(assert (=> bm!58042 m!1108905))

(assert (=> bm!58042 m!1108907))

(assert (=> bm!58042 m!1109061))

(declare-fun m!1109253 () Bool)

(assert (=> b!1203452 m!1109253))

(assert (=> bm!58041 m!1108889))

(assert (=> d!132435 d!132477))

(declare-fun d!132479 () Bool)

(declare-fun lt!545538 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!546 (List!26653) (InoxSet (_ BitVec 64)))

(assert (=> d!132479 (= lt!545538 (select (content!546 Nil!26650) (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun e!683418 () Bool)

(assert (=> d!132479 (= lt!545538 e!683418)))

(declare-fun res!800926 () Bool)

(assert (=> d!132479 (=> (not res!800926) (not e!683418))))

(assert (=> d!132479 (= res!800926 ((_ is Cons!26649) Nil!26650))))

(assert (=> d!132479 (= (contains!6918 Nil!26650 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)) lt!545538)))

(declare-fun b!1203458 () Bool)

(declare-fun e!683419 () Bool)

(assert (=> b!1203458 (= e!683418 e!683419)))

(declare-fun res!800925 () Bool)

(assert (=> b!1203458 (=> res!800925 e!683419)))

(assert (=> b!1203458 (= res!800925 (= (h!27858 Nil!26650) (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun b!1203459 () Bool)

(assert (=> b!1203459 (= e!683419 (contains!6918 (t!39539 Nil!26650) (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(assert (= (and d!132479 res!800926) b!1203458))

(assert (= (and b!1203458 (not res!800925)) b!1203459))

(declare-fun m!1109255 () Bool)

(assert (=> d!132479 m!1109255))

(assert (=> d!132479 m!1108991))

(declare-fun m!1109257 () Bool)

(assert (=> d!132479 m!1109257))

(assert (=> b!1203459 m!1108991))

(declare-fun m!1109259 () Bool)

(assert (=> b!1203459 m!1109259))

(assert (=> b!1203268 d!132479))

(declare-fun b!1203460 () Bool)

(declare-fun e!683420 () Option!685)

(assert (=> b!1203460 (= e!683420 (Some!684 (_2!9922 (h!27857 (toList!8918 lt!545464)))))))

(declare-fun b!1203463 () Bool)

(declare-fun e!683421 () Option!685)

(assert (=> b!1203463 (= e!683421 None!683)))

(declare-fun b!1203461 () Bool)

(assert (=> b!1203461 (= e!683420 e!683421)))

(declare-fun c!117811 () Bool)

(assert (=> b!1203461 (= c!117811 (and ((_ is Cons!26648) (toList!8918 lt!545464)) (not (= (_1!9922 (h!27857 (toList!8918 lt!545464))) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun d!132481 () Bool)

(declare-fun c!117810 () Bool)

(assert (=> d!132481 (= c!117810 (and ((_ is Cons!26648) (toList!8918 lt!545464)) (= (_1!9922 (h!27857 (toList!8918 lt!545464))) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132481 (= (getValueByKey!634 (toList!8918 lt!545464) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) e!683420)))

(declare-fun b!1203462 () Bool)

(assert (=> b!1203462 (= e!683421 (getValueByKey!634 (t!39538 (toList!8918 lt!545464)) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!132481 c!117810) b!1203460))

(assert (= (and d!132481 (not c!117810)) b!1203461))

(assert (= (and b!1203461 c!117811) b!1203462))

(assert (= (and b!1203461 (not c!117811)) b!1203463))

(declare-fun m!1109261 () Bool)

(assert (=> b!1203462 m!1109261))

(assert (=> b!1203303 d!132481))

(declare-fun d!132483 () Bool)

(declare-fun e!683422 () Bool)

(assert (=> d!132483 e!683422))

(declare-fun res!800927 () Bool)

(assert (=> d!132483 (=> res!800927 e!683422)))

(declare-fun lt!545540 () Bool)

(assert (=> d!132483 (= res!800927 (not lt!545540))))

(declare-fun lt!545542 () Bool)

(assert (=> d!132483 (= lt!545540 lt!545542)))

(declare-fun lt!545541 () Unit!39811)

(declare-fun e!683423 () Unit!39811)

(assert (=> d!132483 (= lt!545541 e!683423)))

(declare-fun c!117812 () Bool)

(assert (=> d!132483 (= c!117812 lt!545542)))

(assert (=> d!132483 (= lt!545542 (containsKey!588 (toList!8918 lt!545514) (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> d!132483 (= (contains!6916 lt!545514 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))) lt!545540)))

(declare-fun b!1203464 () Bool)

(declare-fun lt!545539 () Unit!39811)

(assert (=> b!1203464 (= e!683423 lt!545539)))

(assert (=> b!1203464 (= lt!545539 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545514) (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203464 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545514) (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1203465 () Bool)

(declare-fun Unit!39820 () Unit!39811)

(assert (=> b!1203465 (= e!683423 Unit!39820)))

(declare-fun b!1203466 () Bool)

(assert (=> b!1203466 (= e!683422 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545514) (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(assert (= (and d!132483 c!117812) b!1203464))

(assert (= (and d!132483 (not c!117812)) b!1203465))

(assert (= (and d!132483 (not res!800927)) b!1203466))

(assert (=> d!132483 m!1109177))

(declare-fun m!1109263 () Bool)

(assert (=> d!132483 m!1109263))

(assert (=> b!1203464 m!1109177))

(declare-fun m!1109265 () Bool)

(assert (=> b!1203464 m!1109265))

(assert (=> b!1203464 m!1109177))

(declare-fun m!1109267 () Bool)

(assert (=> b!1203464 m!1109267))

(assert (=> b!1203464 m!1109267))

(declare-fun m!1109269 () Bool)

(assert (=> b!1203464 m!1109269))

(assert (=> b!1203466 m!1109177))

(assert (=> b!1203466 m!1109267))

(assert (=> b!1203466 m!1109267))

(assert (=> b!1203466 m!1109269))

(assert (=> b!1203394 d!132483))

(declare-fun d!132485 () Bool)

(assert (=> d!132485 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545376) k0!934))))

(declare-fun lt!545543 () Unit!39811)

(assert (=> d!132485 (= lt!545543 (choose!1794 (toList!8918 lt!545376) k0!934))))

(declare-fun e!683424 () Bool)

(assert (=> d!132485 e!683424))

(declare-fun res!800928 () Bool)

(assert (=> d!132485 (=> (not res!800928) (not e!683424))))

(assert (=> d!132485 (= res!800928 (isStrictlySorted!724 (toList!8918 lt!545376)))))

(assert (=> d!132485 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545376) k0!934) lt!545543)))

(declare-fun b!1203467 () Bool)

(assert (=> b!1203467 (= e!683424 (containsKey!588 (toList!8918 lt!545376) k0!934))))

(assert (= (and d!132485 res!800928) b!1203467))

(assert (=> d!132485 m!1109103))

(assert (=> d!132485 m!1109103))

(assert (=> d!132485 m!1109105))

(declare-fun m!1109271 () Bool)

(assert (=> d!132485 m!1109271))

(declare-fun m!1109273 () Bool)

(assert (=> d!132485 m!1109273))

(assert (=> b!1203467 m!1109099))

(assert (=> b!1203356 d!132485))

(assert (=> b!1203356 d!132461))

(assert (=> b!1203356 d!132463))

(declare-fun d!132487 () Bool)

(declare-fun e!683425 () Bool)

(assert (=> d!132487 e!683425))

(declare-fun res!800929 () Bool)

(assert (=> d!132487 (=> res!800929 e!683425)))

(declare-fun lt!545545 () Bool)

(assert (=> d!132487 (= res!800929 (not lt!545545))))

(declare-fun lt!545547 () Bool)

(assert (=> d!132487 (= lt!545545 lt!545547)))

(declare-fun lt!545546 () Unit!39811)

(declare-fun e!683426 () Unit!39811)

(assert (=> d!132487 (= lt!545546 e!683426)))

(declare-fun c!117813 () Bool)

(assert (=> d!132487 (= c!117813 lt!545547)))

(assert (=> d!132487 (= lt!545547 (containsKey!588 (toList!8918 lt!545507) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132487 (= (contains!6916 lt!545507 #b0000000000000000000000000000000000000000000000000000000000000000) lt!545545)))

(declare-fun b!1203468 () Bool)

(declare-fun lt!545544 () Unit!39811)

(assert (=> b!1203468 (= e!683426 lt!545544)))

(assert (=> b!1203468 (= lt!545544 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545507) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203468 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545507) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203469 () Bool)

(declare-fun Unit!39821 () Unit!39811)

(assert (=> b!1203469 (= e!683426 Unit!39821)))

(declare-fun b!1203470 () Bool)

(assert (=> b!1203470 (= e!683425 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545507) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132487 c!117813) b!1203468))

(assert (= (and d!132487 (not c!117813)) b!1203469))

(assert (= (and d!132487 (not res!800929)) b!1203470))

(declare-fun m!1109275 () Bool)

(assert (=> d!132487 m!1109275))

(declare-fun m!1109277 () Bool)

(assert (=> b!1203468 m!1109277))

(declare-fun m!1109279 () Bool)

(assert (=> b!1203468 m!1109279))

(assert (=> b!1203468 m!1109279))

(declare-fun m!1109281 () Bool)

(assert (=> b!1203468 m!1109281))

(assert (=> b!1203470 m!1109279))

(assert (=> b!1203470 m!1109279))

(assert (=> b!1203470 m!1109281))

(assert (=> d!132449 d!132487))

(assert (=> d!132449 d!132443))

(declare-fun d!132489 () Bool)

(declare-fun isEmpty!985 (List!26652) Bool)

(assert (=> d!132489 (= (isEmpty!983 lt!545514) (isEmpty!985 (toList!8918 lt!545514)))))

(declare-fun bs!34058 () Bool)

(assert (= bs!34058 d!132489))

(declare-fun m!1109283 () Bool)

(assert (=> bs!34058 m!1109283))

(assert (=> b!1203398 d!132489))

(declare-fun d!132491 () Bool)

(assert (=> d!132491 (= (validKeyInArray!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)) (and (not (= (select (arr!37620 lt!545369) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37620 lt!545369) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203270 d!132491))

(declare-fun d!132493 () Bool)

(declare-fun lt!545550 () Bool)

(declare-fun content!547 (List!26652) (InoxSet tuple2!19824))

(assert (=> d!132493 (= lt!545550 (select (content!547 (toList!8918 lt!545448)) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(declare-fun e!683431 () Bool)

(assert (=> d!132493 (= lt!545550 e!683431)))

(declare-fun res!800934 () Bool)

(assert (=> d!132493 (=> (not res!800934) (not e!683431))))

(assert (=> d!132493 (= res!800934 ((_ is Cons!26648) (toList!8918 lt!545448)))))

(assert (=> d!132493 (= (contains!6919 (toList!8918 lt!545448) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!545550)))

(declare-fun b!1203475 () Bool)

(declare-fun e!683432 () Bool)

(assert (=> b!1203475 (= e!683431 e!683432)))

(declare-fun res!800935 () Bool)

(assert (=> b!1203475 (=> res!800935 e!683432)))

(assert (=> b!1203475 (= res!800935 (= (h!27857 (toList!8918 lt!545448)) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(declare-fun b!1203476 () Bool)

(assert (=> b!1203476 (= e!683432 (contains!6919 (t!39538 (toList!8918 lt!545448)) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!132493 res!800934) b!1203475))

(assert (= (and b!1203475 (not res!800935)) b!1203476))

(declare-fun m!1109285 () Bool)

(assert (=> d!132493 m!1109285))

(declare-fun m!1109287 () Bool)

(assert (=> d!132493 m!1109287))

(declare-fun m!1109289 () Bool)

(assert (=> b!1203476 m!1109289))

(assert (=> b!1203286 d!132493))

(declare-fun d!132495 () Bool)

(declare-fun c!117816 () Bool)

(assert (=> d!132495 (= c!117816 ((_ is ValueCellFull!14592) (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!683435 () V!45931)

(assert (=> d!132495 (= (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!683435)))

(declare-fun b!1203481 () Bool)

(declare-fun get!19216 (ValueCell!14592 V!45931) V!45931)

(assert (=> b!1203481 (= e!683435 (get!19216 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203482 () Bool)

(declare-fun get!19217 (ValueCell!14592 V!45931) V!45931)

(assert (=> b!1203482 (= e!683435 (get!19217 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132495 c!117816) b!1203481))

(assert (= (and d!132495 (not c!117816)) b!1203482))

(assert (=> b!1203481 m!1109173))

(assert (=> b!1203481 m!1108905))

(declare-fun m!1109291 () Bool)

(assert (=> b!1203481 m!1109291))

(assert (=> b!1203482 m!1109173))

(assert (=> b!1203482 m!1108905))

(declare-fun m!1109293 () Bool)

(assert (=> b!1203482 m!1109293))

(assert (=> b!1203396 d!132495))

(declare-fun d!132497 () Bool)

(assert (=> d!132497 (not (contains!6916 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515)) lt!545517))))

(declare-fun lt!545553 () Unit!39811)

(declare-fun choose!1795 (ListLongMap!17805 (_ BitVec 64) V!45931 (_ BitVec 64)) Unit!39811)

(assert (=> d!132497 (= lt!545553 (choose!1795 lt!545520 lt!545519 lt!545515 lt!545517))))

(declare-fun e!683438 () Bool)

(assert (=> d!132497 e!683438))

(declare-fun res!800938 () Bool)

(assert (=> d!132497 (=> (not res!800938) (not e!683438))))

(assert (=> d!132497 (= res!800938 (not (contains!6916 lt!545520 lt!545517)))))

(assert (=> d!132497 (= (addStillNotContains!290 lt!545520 lt!545519 lt!545515 lt!545517) lt!545553)))

(declare-fun b!1203486 () Bool)

(assert (=> b!1203486 (= e!683438 (not (= lt!545519 lt!545517)))))

(assert (= (and d!132497 res!800938) b!1203486))

(assert (=> d!132497 m!1109183))

(assert (=> d!132497 m!1109183))

(assert (=> d!132497 m!1109185))

(declare-fun m!1109295 () Bool)

(assert (=> d!132497 m!1109295))

(declare-fun m!1109297 () Bool)

(assert (=> d!132497 m!1109297))

(assert (=> b!1203396 d!132497))

(declare-fun d!132499 () Bool)

(declare-fun e!683439 () Bool)

(assert (=> d!132499 e!683439))

(declare-fun res!800939 () Bool)

(assert (=> d!132499 (=> (not res!800939) (not e!683439))))

(declare-fun lt!545556 () ListLongMap!17805)

(assert (=> d!132499 (= res!800939 (contains!6916 lt!545556 (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!545555 () List!26652)

(assert (=> d!132499 (= lt!545556 (ListLongMap!17806 lt!545555))))

(declare-fun lt!545554 () Unit!39811)

(declare-fun lt!545557 () Unit!39811)

(assert (=> d!132499 (= lt!545554 lt!545557)))

(assert (=> d!132499 (= (getValueByKey!634 lt!545555 (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132499 (= lt!545557 (lemmaContainsTupThenGetReturnValue!309 lt!545555 (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132499 (= lt!545555 (insertStrictlySorted!401 (toList!8918 call!58038) (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132499 (= (+!3953 call!58038 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!545556)))

(declare-fun b!1203487 () Bool)

(declare-fun res!800940 () Bool)

(assert (=> b!1203487 (=> (not res!800940) (not e!683439))))

(assert (=> b!1203487 (= res!800940 (= (getValueByKey!634 (toList!8918 lt!545556) (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1203488 () Bool)

(assert (=> b!1203488 (= e!683439 (contains!6919 (toList!8918 lt!545556) (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!132499 res!800939) b!1203487))

(assert (= (and b!1203487 res!800940) b!1203488))

(declare-fun m!1109299 () Bool)

(assert (=> d!132499 m!1109299))

(declare-fun m!1109301 () Bool)

(assert (=> d!132499 m!1109301))

(declare-fun m!1109303 () Bool)

(assert (=> d!132499 m!1109303))

(declare-fun m!1109305 () Bool)

(assert (=> d!132499 m!1109305))

(declare-fun m!1109307 () Bool)

(assert (=> b!1203487 m!1109307))

(declare-fun m!1109309 () Bool)

(assert (=> b!1203488 m!1109309))

(assert (=> b!1203396 d!132499))

(declare-fun d!132501 () Bool)

(declare-fun e!683440 () Bool)

(assert (=> d!132501 e!683440))

(declare-fun res!800941 () Bool)

(assert (=> d!132501 (=> (not res!800941) (not e!683440))))

(declare-fun lt!545560 () ListLongMap!17805)

(assert (=> d!132501 (= res!800941 (contains!6916 lt!545560 (_1!9922 (tuple2!19825 lt!545519 lt!545515))))))

(declare-fun lt!545559 () List!26652)

(assert (=> d!132501 (= lt!545560 (ListLongMap!17806 lt!545559))))

(declare-fun lt!545558 () Unit!39811)

(declare-fun lt!545561 () Unit!39811)

(assert (=> d!132501 (= lt!545558 lt!545561)))

(assert (=> d!132501 (= (getValueByKey!634 lt!545559 (_1!9922 (tuple2!19825 lt!545519 lt!545515))) (Some!684 (_2!9922 (tuple2!19825 lt!545519 lt!545515))))))

(assert (=> d!132501 (= lt!545561 (lemmaContainsTupThenGetReturnValue!309 lt!545559 (_1!9922 (tuple2!19825 lt!545519 lt!545515)) (_2!9922 (tuple2!19825 lt!545519 lt!545515))))))

(assert (=> d!132501 (= lt!545559 (insertStrictlySorted!401 (toList!8918 lt!545520) (_1!9922 (tuple2!19825 lt!545519 lt!545515)) (_2!9922 (tuple2!19825 lt!545519 lt!545515))))))

(assert (=> d!132501 (= (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515)) lt!545560)))

(declare-fun b!1203489 () Bool)

(declare-fun res!800942 () Bool)

(assert (=> b!1203489 (=> (not res!800942) (not e!683440))))

(assert (=> b!1203489 (= res!800942 (= (getValueByKey!634 (toList!8918 lt!545560) (_1!9922 (tuple2!19825 lt!545519 lt!545515))) (Some!684 (_2!9922 (tuple2!19825 lt!545519 lt!545515)))))))

(declare-fun b!1203490 () Bool)

(assert (=> b!1203490 (= e!683440 (contains!6919 (toList!8918 lt!545560) (tuple2!19825 lt!545519 lt!545515)))))

(assert (= (and d!132501 res!800941) b!1203489))

(assert (= (and b!1203489 res!800942) b!1203490))

(declare-fun m!1109311 () Bool)

(assert (=> d!132501 m!1109311))

(declare-fun m!1109313 () Bool)

(assert (=> d!132501 m!1109313))

(declare-fun m!1109315 () Bool)

(assert (=> d!132501 m!1109315))

(declare-fun m!1109317 () Bool)

(assert (=> d!132501 m!1109317))

(declare-fun m!1109319 () Bool)

(assert (=> b!1203489 m!1109319))

(declare-fun m!1109321 () Bool)

(assert (=> b!1203490 m!1109321))

(assert (=> b!1203396 d!132501))

(declare-fun d!132503 () Bool)

(declare-fun e!683441 () Bool)

(assert (=> d!132503 e!683441))

(declare-fun res!800943 () Bool)

(assert (=> d!132503 (=> res!800943 e!683441)))

(declare-fun lt!545563 () Bool)

(assert (=> d!132503 (= res!800943 (not lt!545563))))

(declare-fun lt!545565 () Bool)

(assert (=> d!132503 (= lt!545563 lt!545565)))

(declare-fun lt!545564 () Unit!39811)

(declare-fun e!683442 () Unit!39811)

(assert (=> d!132503 (= lt!545564 e!683442)))

(declare-fun c!117817 () Bool)

(assert (=> d!132503 (= c!117817 lt!545565)))

(assert (=> d!132503 (= lt!545565 (containsKey!588 (toList!8918 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515))) lt!545517))))

(assert (=> d!132503 (= (contains!6916 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515)) lt!545517) lt!545563)))

(declare-fun b!1203491 () Bool)

(declare-fun lt!545562 () Unit!39811)

(assert (=> b!1203491 (= e!683442 lt!545562)))

(assert (=> b!1203491 (= lt!545562 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515))) lt!545517))))

(assert (=> b!1203491 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515))) lt!545517))))

(declare-fun b!1203492 () Bool)

(declare-fun Unit!39822 () Unit!39811)

(assert (=> b!1203492 (= e!683442 Unit!39822)))

(declare-fun b!1203493 () Bool)

(assert (=> b!1203493 (= e!683441 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545520 (tuple2!19825 lt!545519 lt!545515))) lt!545517)))))

(assert (= (and d!132503 c!117817) b!1203491))

(assert (= (and d!132503 (not c!117817)) b!1203492))

(assert (= (and d!132503 (not res!800943)) b!1203493))

(declare-fun m!1109323 () Bool)

(assert (=> d!132503 m!1109323))

(declare-fun m!1109325 () Bool)

(assert (=> b!1203491 m!1109325))

(declare-fun m!1109327 () Bool)

(assert (=> b!1203491 m!1109327))

(assert (=> b!1203491 m!1109327))

(declare-fun m!1109329 () Bool)

(assert (=> b!1203491 m!1109329))

(assert (=> b!1203493 m!1109327))

(assert (=> b!1203493 m!1109327))

(assert (=> b!1203493 m!1109329))

(assert (=> b!1203396 d!132503))

(declare-fun d!132505 () Bool)

(assert (=> d!132505 (arrayContainsKey!0 lt!545369 lt!545460 #b00000000000000000000000000000000)))

(declare-fun lt!545566 () Unit!39811)

(assert (=> d!132505 (= lt!545566 (choose!13 lt!545369 lt!545460 #b00000000000000000000000000000000))))

(assert (=> d!132505 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!132505 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!545369 lt!545460 #b00000000000000000000000000000000) lt!545566)))

(declare-fun bs!34059 () Bool)

(assert (= bs!34059 d!132505))

(assert (=> bs!34059 m!1109041))

(declare-fun m!1109331 () Bool)

(assert (=> bs!34059 m!1109331))

(assert (=> b!1203301 d!132505))

(declare-fun d!132507 () Bool)

(declare-fun res!800944 () Bool)

(declare-fun e!683443 () Bool)

(assert (=> d!132507 (=> res!800944 e!683443)))

(assert (=> d!132507 (= res!800944 (= (select (arr!37620 lt!545369) #b00000000000000000000000000000000) lt!545460))))

(assert (=> d!132507 (= (arrayContainsKey!0 lt!545369 lt!545460 #b00000000000000000000000000000000) e!683443)))

(declare-fun b!1203494 () Bool)

(declare-fun e!683444 () Bool)

(assert (=> b!1203494 (= e!683443 e!683444)))

(declare-fun res!800945 () Bool)

(assert (=> b!1203494 (=> (not res!800945) (not e!683444))))

(assert (=> b!1203494 (= res!800945 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun b!1203495 () Bool)

(assert (=> b!1203495 (= e!683444 (arrayContainsKey!0 lt!545369 lt!545460 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132507 (not res!800944)) b!1203494))

(assert (= (and b!1203494 res!800945) b!1203495))

(assert (=> d!132507 m!1108991))

(declare-fun m!1109333 () Bool)

(assert (=> b!1203495 m!1109333))

(assert (=> b!1203301 d!132507))

(declare-fun b!1203508 () Bool)

(declare-fun e!683452 () SeekEntryResult!9930)

(declare-fun lt!545573 () SeekEntryResult!9930)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!77958 (_ BitVec 32)) SeekEntryResult!9930)

(assert (=> b!1203508 (= e!683452 (seekKeyOrZeroReturnVacant!0 (x!106354 lt!545573) (index!42092 lt!545573) (index!42092 lt!545573) (select (arr!37620 lt!545369) #b00000000000000000000000000000000) lt!545369 mask!1564))))

(declare-fun d!132509 () Bool)

(declare-fun lt!545574 () SeekEntryResult!9930)

(assert (=> d!132509 (and (or ((_ is Undefined!9930) lt!545574) (not ((_ is Found!9930) lt!545574)) (and (bvsge (index!42091 lt!545574) #b00000000000000000000000000000000) (bvslt (index!42091 lt!545574) (size!38157 lt!545369)))) (or ((_ is Undefined!9930) lt!545574) ((_ is Found!9930) lt!545574) (not ((_ is MissingZero!9930) lt!545574)) (and (bvsge (index!42090 lt!545574) #b00000000000000000000000000000000) (bvslt (index!42090 lt!545574) (size!38157 lt!545369)))) (or ((_ is Undefined!9930) lt!545574) ((_ is Found!9930) lt!545574) ((_ is MissingZero!9930) lt!545574) (not ((_ is MissingVacant!9930) lt!545574)) (and (bvsge (index!42093 lt!545574) #b00000000000000000000000000000000) (bvslt (index!42093 lt!545574) (size!38157 lt!545369)))) (or ((_ is Undefined!9930) lt!545574) (ite ((_ is Found!9930) lt!545574) (= (select (arr!37620 lt!545369) (index!42091 lt!545574)) (select (arr!37620 lt!545369) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9930) lt!545574) (= (select (arr!37620 lt!545369) (index!42090 lt!545574)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9930) lt!545574) (= (select (arr!37620 lt!545369) (index!42093 lt!545574)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!683453 () SeekEntryResult!9930)

(assert (=> d!132509 (= lt!545574 e!683453)))

(declare-fun c!117826 () Bool)

(assert (=> d!132509 (= c!117826 (and ((_ is Intermediate!9930) lt!545573) (undefined!10742 lt!545573)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!77958 (_ BitVec 32)) SeekEntryResult!9930)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!132509 (= lt!545573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) mask!1564) (select (arr!37620 lt!545369) #b00000000000000000000000000000000) lt!545369 mask!1564))))

(assert (=> d!132509 (validMask!0 mask!1564)))

(assert (=> d!132509 (= (seekEntryOrOpen!0 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) lt!545369 mask!1564) lt!545574)))

(declare-fun b!1203509 () Bool)

(declare-fun c!117825 () Bool)

(declare-fun lt!545575 () (_ BitVec 64))

(assert (=> b!1203509 (= c!117825 (= lt!545575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!683451 () SeekEntryResult!9930)

(assert (=> b!1203509 (= e!683451 e!683452)))

(declare-fun b!1203510 () Bool)

(assert (=> b!1203510 (= e!683451 (Found!9930 (index!42092 lt!545573)))))

(declare-fun b!1203511 () Bool)

(assert (=> b!1203511 (= e!683453 e!683451)))

(assert (=> b!1203511 (= lt!545575 (select (arr!37620 lt!545369) (index!42092 lt!545573)))))

(declare-fun c!117824 () Bool)

(assert (=> b!1203511 (= c!117824 (= lt!545575 (select (arr!37620 lt!545369) #b00000000000000000000000000000000)))))

(declare-fun b!1203512 () Bool)

(assert (=> b!1203512 (= e!683452 (MissingZero!9930 (index!42092 lt!545573)))))

(declare-fun b!1203513 () Bool)

(assert (=> b!1203513 (= e!683453 Undefined!9930)))

(assert (= (and d!132509 c!117826) b!1203513))

(assert (= (and d!132509 (not c!117826)) b!1203511))

(assert (= (and b!1203511 c!117824) b!1203510))

(assert (= (and b!1203511 (not c!117824)) b!1203509))

(assert (= (and b!1203509 c!117825) b!1203512))

(assert (= (and b!1203509 (not c!117825)) b!1203508))

(assert (=> b!1203508 m!1108991))

(declare-fun m!1109335 () Bool)

(assert (=> b!1203508 m!1109335))

(declare-fun m!1109337 () Bool)

(assert (=> d!132509 m!1109337))

(declare-fun m!1109339 () Bool)

(assert (=> d!132509 m!1109339))

(assert (=> d!132509 m!1108917))

(declare-fun m!1109341 () Bool)

(assert (=> d!132509 m!1109341))

(assert (=> d!132509 m!1108991))

(declare-fun m!1109343 () Bool)

(assert (=> d!132509 m!1109343))

(declare-fun m!1109345 () Bool)

(assert (=> d!132509 m!1109345))

(assert (=> d!132509 m!1108991))

(assert (=> d!132509 m!1109341))

(declare-fun m!1109347 () Bool)

(assert (=> b!1203511 m!1109347))

(assert (=> b!1203301 d!132509))

(declare-fun d!132511 () Bool)

(declare-fun e!683454 () Bool)

(assert (=> d!132511 e!683454))

(declare-fun res!800946 () Bool)

(assert (=> d!132511 (=> res!800946 e!683454)))

(declare-fun lt!545577 () Bool)

(assert (=> d!132511 (= res!800946 (not lt!545577))))

(declare-fun lt!545579 () Bool)

(assert (=> d!132511 (= lt!545577 lt!545579)))

(declare-fun lt!545578 () Unit!39811)

(declare-fun e!683455 () Unit!39811)

(assert (=> d!132511 (= lt!545578 e!683455)))

(declare-fun c!117827 () Bool)

(assert (=> d!132511 (= c!117827 lt!545579)))

(assert (=> d!132511 (= lt!545579 (containsKey!588 (toList!8918 lt!545500) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132511 (= (contains!6916 lt!545500 #b1000000000000000000000000000000000000000000000000000000000000000) lt!545577)))

(declare-fun b!1203514 () Bool)

(declare-fun lt!545576 () Unit!39811)

(assert (=> b!1203514 (= e!683455 lt!545576)))

(assert (=> b!1203514 (= lt!545576 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545500) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203514 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545500) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203515 () Bool)

(declare-fun Unit!39823 () Unit!39811)

(assert (=> b!1203515 (= e!683455 Unit!39823)))

(declare-fun b!1203516 () Bool)

(assert (=> b!1203516 (= e!683454 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545500) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132511 c!117827) b!1203514))

(assert (= (and d!132511 (not c!117827)) b!1203515))

(assert (= (and d!132511 (not res!800946)) b!1203516))

(declare-fun m!1109349 () Bool)

(assert (=> d!132511 m!1109349))

(declare-fun m!1109351 () Bool)

(assert (=> b!1203514 m!1109351))

(declare-fun m!1109353 () Bool)

(assert (=> b!1203514 m!1109353))

(assert (=> b!1203514 m!1109353))

(declare-fun m!1109355 () Bool)

(assert (=> b!1203514 m!1109355))

(assert (=> b!1203516 m!1109353))

(assert (=> b!1203516 m!1109353))

(assert (=> b!1203516 m!1109355))

(assert (=> b!1203364 d!132511))

(declare-fun d!132513 () Bool)

(declare-fun lt!545580 () Bool)

(assert (=> d!132513 (= lt!545580 (select (content!546 Nil!26650) (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun e!683456 () Bool)

(assert (=> d!132513 (= lt!545580 e!683456)))

(declare-fun res!800948 () Bool)

(assert (=> d!132513 (=> (not res!800948) (not e!683456))))

(assert (=> d!132513 (= res!800948 ((_ is Cons!26649) Nil!26650))))

(assert (=> d!132513 (= (contains!6918 Nil!26650 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)) lt!545580)))

(declare-fun b!1203517 () Bool)

(declare-fun e!683457 () Bool)

(assert (=> b!1203517 (= e!683456 e!683457)))

(declare-fun res!800947 () Bool)

(assert (=> b!1203517 (=> res!800947 e!683457)))

(assert (=> b!1203517 (= res!800947 (= (h!27858 Nil!26650) (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1203518 () Bool)

(assert (=> b!1203518 (= e!683457 (contains!6918 (t!39539 Nil!26650) (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132513 res!800948) b!1203517))

(assert (= (and b!1203517 (not res!800947)) b!1203518))

(assert (=> d!132513 m!1109255))

(assert (=> d!132513 m!1109027))

(declare-fun m!1109357 () Bool)

(assert (=> d!132513 m!1109357))

(assert (=> b!1203518 m!1109027))

(declare-fun m!1109359 () Bool)

(assert (=> b!1203518 m!1109359))

(assert (=> b!1203385 d!132513))

(declare-fun e!683464 () Bool)

(declare-fun b!1203519 () Bool)

(declare-fun lt!545581 () ListLongMap!17805)

(assert (=> b!1203519 (= e!683464 (= lt!545581 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132515 () Bool)

(declare-fun e!683463 () Bool)

(assert (=> d!132515 e!683463))

(declare-fun res!800949 () Bool)

(assert (=> d!132515 (=> (not res!800949) (not e!683463))))

(assert (=> d!132515 (= res!800949 (not (contains!6916 lt!545581 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683462 () ListLongMap!17805)

(assert (=> d!132515 (= lt!545581 e!683462)))

(declare-fun c!117830 () Bool)

(assert (=> d!132515 (= c!117830 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(assert (=> d!132515 (validMask!0 mask!1564)))

(assert (=> d!132515 (= (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!545581)))

(declare-fun b!1203520 () Bool)

(declare-fun e!683460 () Bool)

(assert (=> b!1203520 (= e!683460 e!683464)))

(declare-fun c!117829 () Bool)

(assert (=> b!1203520 (= c!117829 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun b!1203521 () Bool)

(assert (=> b!1203521 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(assert (=> b!1203521 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38156 lt!545375)))))

(declare-fun e!683461 () Bool)

(assert (=> b!1203521 (= e!683461 (= (apply!995 lt!545581 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!58043 () Bool)

(declare-fun call!58046 () ListLongMap!17805)

(assert (=> bm!58043 (= call!58046 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203522 () Bool)

(assert (=> b!1203522 (= e!683463 e!683460)))

(declare-fun c!117831 () Bool)

(declare-fun e!683459 () Bool)

(assert (=> b!1203522 (= c!117831 e!683459)))

(declare-fun res!800951 () Bool)

(assert (=> b!1203522 (=> (not res!800951) (not e!683459))))

(assert (=> b!1203522 (= res!800951 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun b!1203523 () Bool)

(assert (=> b!1203523 (= e!683459 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203523 (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1203524 () Bool)

(declare-fun res!800952 () Bool)

(assert (=> b!1203524 (=> (not res!800952) (not e!683463))))

(assert (=> b!1203524 (= res!800952 (not (contains!6916 lt!545581 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203525 () Bool)

(assert (=> b!1203525 (= e!683460 e!683461)))

(assert (=> b!1203525 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun res!800950 () Bool)

(assert (=> b!1203525 (= res!800950 (contains!6916 lt!545581 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203525 (=> (not res!800950) (not e!683461))))

(declare-fun b!1203526 () Bool)

(declare-fun e!683458 () ListLongMap!17805)

(assert (=> b!1203526 (= e!683458 call!58046)))

(declare-fun b!1203527 () Bool)

(declare-fun lt!545585 () Unit!39811)

(declare-fun lt!545583 () Unit!39811)

(assert (=> b!1203527 (= lt!545585 lt!545583)))

(declare-fun lt!545584 () (_ BitVec 64))

(declare-fun lt!545587 () ListLongMap!17805)

(declare-fun lt!545582 () V!45931)

(declare-fun lt!545586 () (_ BitVec 64))

(assert (=> b!1203527 (not (contains!6916 (+!3953 lt!545587 (tuple2!19825 lt!545586 lt!545582)) lt!545584))))

(assert (=> b!1203527 (= lt!545583 (addStillNotContains!290 lt!545587 lt!545586 lt!545582 lt!545584))))

(assert (=> b!1203527 (= lt!545584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203527 (= lt!545582 (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203527 (= lt!545586 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (=> b!1203527 (= lt!545587 call!58046)))

(assert (=> b!1203527 (= e!683458 (+!3953 call!58046 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (get!19215 (select (arr!37619 lt!545375) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203528 () Bool)

(assert (=> b!1203528 (= e!683462 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203529 () Bool)

(assert (=> b!1203529 (= e!683464 (isEmpty!983 lt!545581))))

(declare-fun b!1203530 () Bool)

(assert (=> b!1203530 (= e!683462 e!683458)))

(declare-fun c!117828 () Bool)

(assert (=> b!1203530 (= c!117828 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001))))))

(assert (= (and d!132515 c!117830) b!1203528))

(assert (= (and d!132515 (not c!117830)) b!1203530))

(assert (= (and b!1203530 c!117828) b!1203527))

(assert (= (and b!1203530 (not c!117828)) b!1203526))

(assert (= (or b!1203527 b!1203526) bm!58043))

(assert (= (and d!132515 res!800949) b!1203524))

(assert (= (and b!1203524 res!800952) b!1203522))

(assert (= (and b!1203522 res!800951) b!1203523))

(assert (= (and b!1203522 c!117831) b!1203525))

(assert (= (and b!1203522 (not c!117831)) b!1203520))

(assert (= (and b!1203525 res!800950) b!1203521))

(assert (= (and b!1203520 c!117829) b!1203519))

(assert (= (and b!1203520 (not c!117829)) b!1203529))

(declare-fun b_lambda!21161 () Bool)

(assert (=> (not b_lambda!21161) (not b!1203521)))

(assert (=> b!1203521 t!39537))

(declare-fun b_and!42731 () Bool)

(assert (= b_and!42729 (and (=> t!39537 result!21983) b_and!42731)))

(declare-fun b_lambda!21163 () Bool)

(assert (=> (not b_lambda!21163) (not b!1203527)))

(assert (=> b!1203527 t!39537))

(declare-fun b_and!42733 () Bool)

(assert (= b_and!42731 (and (=> t!39537 result!21983) b_and!42733)))

(declare-fun m!1109361 () Bool)

(assert (=> b!1203519 m!1109361))

(declare-fun m!1109363 () Bool)

(assert (=> b!1203529 m!1109363))

(declare-fun m!1109365 () Bool)

(assert (=> b!1203524 m!1109365))

(declare-fun m!1109367 () Bool)

(assert (=> d!132515 m!1109367))

(assert (=> d!132515 m!1108917))

(declare-fun m!1109369 () Bool)

(assert (=> b!1203521 m!1109369))

(assert (=> b!1203521 m!1109369))

(assert (=> b!1203521 m!1108905))

(declare-fun m!1109371 () Bool)

(assert (=> b!1203521 m!1109371))

(declare-fun m!1109373 () Bool)

(assert (=> b!1203521 m!1109373))

(declare-fun m!1109375 () Bool)

(assert (=> b!1203521 m!1109375))

(assert (=> b!1203521 m!1108905))

(assert (=> b!1203521 m!1109373))

(assert (=> b!1203525 m!1109373))

(assert (=> b!1203525 m!1109373))

(declare-fun m!1109377 () Bool)

(assert (=> b!1203525 m!1109377))

(assert (=> b!1203527 m!1109369))

(declare-fun m!1109379 () Bool)

(assert (=> b!1203527 m!1109379))

(declare-fun m!1109381 () Bool)

(assert (=> b!1203527 m!1109381))

(assert (=> b!1203527 m!1109369))

(assert (=> b!1203527 m!1108905))

(assert (=> b!1203527 m!1109371))

(declare-fun m!1109383 () Bool)

(assert (=> b!1203527 m!1109383))

(assert (=> b!1203527 m!1109379))

(assert (=> b!1203527 m!1108905))

(declare-fun m!1109385 () Bool)

(assert (=> b!1203527 m!1109385))

(assert (=> b!1203527 m!1109373))

(assert (=> b!1203530 m!1109373))

(assert (=> b!1203530 m!1109373))

(declare-fun m!1109387 () Bool)

(assert (=> b!1203530 m!1109387))

(assert (=> bm!58043 m!1109361))

(assert (=> b!1203523 m!1109373))

(assert (=> b!1203523 m!1109373))

(assert (=> b!1203523 m!1109387))

(assert (=> bm!58035 d!132515))

(declare-fun d!132517 () Bool)

(declare-fun e!683465 () Bool)

(assert (=> d!132517 e!683465))

(declare-fun res!800953 () Bool)

(assert (=> d!132517 (=> res!800953 e!683465)))

(declare-fun lt!545589 () Bool)

(assert (=> d!132517 (= res!800953 (not lt!545589))))

(declare-fun lt!545591 () Bool)

(assert (=> d!132517 (= lt!545589 lt!545591)))

(declare-fun lt!545590 () Unit!39811)

(declare-fun e!683466 () Unit!39811)

(assert (=> d!132517 (= lt!545590 e!683466)))

(declare-fun c!117832 () Bool)

(assert (=> d!132517 (= c!117832 lt!545591)))

(assert (=> d!132517 (= lt!545591 (containsKey!588 (toList!8918 lt!545468) k0!934))))

(assert (=> d!132517 (= (contains!6916 lt!545468 k0!934) lt!545589)))

(declare-fun b!1203531 () Bool)

(declare-fun lt!545588 () Unit!39811)

(assert (=> b!1203531 (= e!683466 lt!545588)))

(assert (=> b!1203531 (= lt!545588 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545468) k0!934))))

(assert (=> b!1203531 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545468) k0!934))))

(declare-fun b!1203532 () Bool)

(declare-fun Unit!39824 () Unit!39811)

(assert (=> b!1203532 (= e!683466 Unit!39824)))

(declare-fun b!1203533 () Bool)

(assert (=> b!1203533 (= e!683465 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545468) k0!934)))))

(assert (= (and d!132517 c!117832) b!1203531))

(assert (= (and d!132517 (not c!117832)) b!1203532))

(assert (= (and d!132517 (not res!800953)) b!1203533))

(declare-fun m!1109389 () Bool)

(assert (=> d!132517 m!1109389))

(declare-fun m!1109391 () Bool)

(assert (=> b!1203531 m!1109391))

(declare-fun m!1109393 () Bool)

(assert (=> b!1203531 m!1109393))

(assert (=> b!1203531 m!1109393))

(declare-fun m!1109395 () Bool)

(assert (=> b!1203531 m!1109395))

(assert (=> b!1203533 m!1109393))

(assert (=> b!1203533 m!1109393))

(assert (=> b!1203533 m!1109395))

(assert (=> d!132433 d!132517))

(declare-fun b!1203544 () Bool)

(declare-fun e!683475 () List!26652)

(declare-fun e!683474 () List!26652)

(assert (=> b!1203544 (= e!683475 e!683474)))

(declare-fun c!117838 () Bool)

(assert (=> b!1203544 (= c!117838 (and ((_ is Cons!26648) (toList!8918 call!57989)) (not (= (_1!9922 (h!27857 (toList!8918 call!57989))) k0!934))))))

(declare-fun b!1203545 () Bool)

(declare-fun e!683473 () Bool)

(declare-fun lt!545594 () List!26652)

(assert (=> b!1203545 (= e!683473 (not (containsKey!588 lt!545594 k0!934)))))

(declare-fun d!132519 () Bool)

(assert (=> d!132519 e!683473))

(declare-fun res!800956 () Bool)

(assert (=> d!132519 (=> (not res!800956) (not e!683473))))

(assert (=> d!132519 (= res!800956 (isStrictlySorted!724 lt!545594))))

(assert (=> d!132519 (= lt!545594 e!683475)))

(declare-fun c!117837 () Bool)

(assert (=> d!132519 (= c!117837 (and ((_ is Cons!26648) (toList!8918 call!57989)) (= (_1!9922 (h!27857 (toList!8918 call!57989))) k0!934)))))

(assert (=> d!132519 (isStrictlySorted!724 (toList!8918 call!57989))))

(assert (=> d!132519 (= (removeStrictlySorted!94 (toList!8918 call!57989) k0!934) lt!545594)))

(declare-fun b!1203546 () Bool)

(assert (=> b!1203546 (= e!683475 (t!39538 (toList!8918 call!57989)))))

(declare-fun b!1203547 () Bool)

(declare-fun $colon$colon!612 (List!26652 tuple2!19824) List!26652)

(assert (=> b!1203547 (= e!683474 ($colon$colon!612 (removeStrictlySorted!94 (t!39538 (toList!8918 call!57989)) k0!934) (h!27857 (toList!8918 call!57989))))))

(declare-fun b!1203548 () Bool)

(assert (=> b!1203548 (= e!683474 Nil!26649)))

(assert (= (and d!132519 c!117837) b!1203546))

(assert (= (and d!132519 (not c!117837)) b!1203544))

(assert (= (and b!1203544 c!117838) b!1203547))

(assert (= (and b!1203544 (not c!117838)) b!1203548))

(assert (= (and d!132519 res!800956) b!1203545))

(declare-fun m!1109397 () Bool)

(assert (=> b!1203545 m!1109397))

(declare-fun m!1109399 () Bool)

(assert (=> d!132519 m!1109399))

(declare-fun m!1109401 () Bool)

(assert (=> d!132519 m!1109401))

(declare-fun m!1109403 () Bool)

(assert (=> b!1203547 m!1109403))

(assert (=> b!1203547 m!1109403))

(declare-fun m!1109405 () Bool)

(assert (=> b!1203547 m!1109405))

(assert (=> d!132433 d!132519))

(declare-fun d!132521 () Bool)

(declare-fun res!800957 () Bool)

(declare-fun e!683476 () Bool)

(assert (=> d!132521 (=> res!800957 e!683476)))

(assert (=> d!132521 (= res!800957 (= (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!934))))

(assert (=> d!132521 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!683476)))

(declare-fun b!1203549 () Bool)

(declare-fun e!683477 () Bool)

(assert (=> b!1203549 (= e!683476 e!683477)))

(declare-fun res!800958 () Bool)

(assert (=> b!1203549 (=> (not res!800958) (not e!683477))))

(assert (=> b!1203549 (= res!800958 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203550 () Bool)

(assert (=> b!1203550 (= e!683477 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!132521 (not res!800957)) b!1203549))

(assert (= (and b!1203549 res!800958) b!1203550))

(declare-fun m!1109407 () Bool)

(assert (=> d!132521 m!1109407))

(declare-fun m!1109409 () Bool)

(assert (=> b!1203550 m!1109409))

(assert (=> b!1203355 d!132521))

(assert (=> d!132441 d!132439))

(declare-fun d!132523 () Bool)

(assert (=> d!132523 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(assert (=> d!132523 true))

(declare-fun _$60!448 () Unit!39811)

(assert (=> d!132523 (= (choose!13 _keys!1208 k0!934 i!673) _$60!448)))

(declare-fun bs!34060 () Bool)

(assert (= bs!34060 d!132523))

(assert (=> bs!34060 m!1108895))

(assert (=> d!132441 d!132523))

(declare-fun d!132525 () Bool)

(assert (=> d!132525 (= (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))) (and (not (= (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203392 d!132525))

(declare-fun d!132527 () Bool)

(declare-fun get!19218 (Option!685) V!45931)

(assert (=> d!132527 (= (apply!995 lt!545500 (select (arr!37620 lt!545369) from!1455)) (get!19218 (getValueByKey!634 (toList!8918 lt!545500) (select (arr!37620 lt!545369) from!1455))))))

(declare-fun bs!34061 () Bool)

(assert (= bs!34061 d!132527))

(assert (=> bs!34061 m!1109119))

(declare-fun m!1109411 () Bool)

(assert (=> bs!34061 m!1109411))

(assert (=> bs!34061 m!1109411))

(declare-fun m!1109413 () Bool)

(assert (=> bs!34061 m!1109413))

(assert (=> b!1203361 d!132527))

(declare-fun d!132529 () Bool)

(declare-fun c!117839 () Bool)

(assert (=> d!132529 (= c!117839 ((_ is ValueCellFull!14592) (select (arr!37619 lt!545375) from!1455)))))

(declare-fun e!683478 () V!45931)

(assert (=> d!132529 (= (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!683478)))

(declare-fun b!1203551 () Bool)

(assert (=> b!1203551 (= e!683478 (get!19216 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203552 () Bool)

(assert (=> b!1203552 (= e!683478 (get!19217 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132529 c!117839) b!1203551))

(assert (= (and d!132529 (not c!117839)) b!1203552))

(assert (=> b!1203551 m!1109115))

(assert (=> b!1203551 m!1108905))

(declare-fun m!1109415 () Bool)

(assert (=> b!1203551 m!1109415))

(assert (=> b!1203552 m!1109115))

(assert (=> b!1203552 m!1108905))

(declare-fun m!1109417 () Bool)

(assert (=> b!1203552 m!1109417))

(assert (=> b!1203361 d!132529))

(declare-fun d!132531 () Bool)

(assert (=> d!132531 (= (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (and (not (= (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203349 d!132531))

(declare-fun lt!545595 () ListLongMap!17805)

(declare-fun e!683485 () Bool)

(declare-fun b!1203553 () Bool)

(assert (=> b!1203553 (= e!683485 (= lt!545595 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132533 () Bool)

(declare-fun e!683484 () Bool)

(assert (=> d!132533 e!683484))

(declare-fun res!800959 () Bool)

(assert (=> d!132533 (=> (not res!800959) (not e!683484))))

(assert (=> d!132533 (= res!800959 (not (contains!6916 lt!545595 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683483 () ListLongMap!17805)

(assert (=> d!132533 (= lt!545595 e!683483)))

(declare-fun c!117842 () Bool)

(assert (=> d!132533 (= c!117842 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(assert (=> d!132533 (validMask!0 mask!1564)))

(assert (=> d!132533 (= (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!545595)))

(declare-fun b!1203554 () Bool)

(declare-fun e!683481 () Bool)

(assert (=> b!1203554 (= e!683481 e!683485)))

(declare-fun c!117841 () Bool)

(assert (=> b!1203554 (= c!117841 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun b!1203555 () Bool)

(assert (=> b!1203555 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(assert (=> b!1203555 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38156 lt!545375)))))

(declare-fun e!683482 () Bool)

(assert (=> b!1203555 (= e!683482 (= (apply!995 lt!545595 (select (arr!37620 lt!545369) (bvadd from!1455 #b00000000000000000000000000000001))) (get!19215 (select (arr!37619 lt!545375) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun call!58047 () ListLongMap!17805)

(declare-fun bm!58044 () Bool)

(assert (=> bm!58044 (= call!58047 (getCurrentListMapNoExtraKeys!5328 lt!545369 lt!545375 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203556 () Bool)

(assert (=> b!1203556 (= e!683484 e!683481)))

(declare-fun c!117843 () Bool)

(declare-fun e!683480 () Bool)

(assert (=> b!1203556 (= c!117843 e!683480)))

(declare-fun res!800961 () Bool)

(assert (=> b!1203556 (=> (not res!800961) (not e!683480))))

(assert (=> b!1203556 (= res!800961 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun b!1203557 () Bool)

(assert (=> b!1203557 (= e!683480 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203557 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1203558 () Bool)

(declare-fun res!800962 () Bool)

(assert (=> b!1203558 (=> (not res!800962) (not e!683484))))

(assert (=> b!1203558 (= res!800962 (not (contains!6916 lt!545595 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203559 () Bool)

(assert (=> b!1203559 (= e!683481 e!683482)))

(assert (=> b!1203559 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(declare-fun res!800960 () Bool)

(assert (=> b!1203559 (= res!800960 (contains!6916 lt!545595 (select (arr!37620 lt!545369) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203559 (=> (not res!800960) (not e!683482))))

(declare-fun b!1203560 () Bool)

(declare-fun e!683479 () ListLongMap!17805)

(assert (=> b!1203560 (= e!683479 call!58047)))

(declare-fun b!1203561 () Bool)

(declare-fun lt!545599 () Unit!39811)

(declare-fun lt!545597 () Unit!39811)

(assert (=> b!1203561 (= lt!545599 lt!545597)))

(declare-fun lt!545601 () ListLongMap!17805)

(declare-fun lt!545598 () (_ BitVec 64))

(declare-fun lt!545596 () V!45931)

(declare-fun lt!545600 () (_ BitVec 64))

(assert (=> b!1203561 (not (contains!6916 (+!3953 lt!545601 (tuple2!19825 lt!545600 lt!545596)) lt!545598))))

(assert (=> b!1203561 (= lt!545597 (addStillNotContains!290 lt!545601 lt!545600 lt!545596 lt!545598))))

(assert (=> b!1203561 (= lt!545598 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203561 (= lt!545596 (get!19215 (select (arr!37619 lt!545375) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203561 (= lt!545600 (select (arr!37620 lt!545369) (bvadd from!1455 #b00000000000000000000000000000001)))))

(assert (=> b!1203561 (= lt!545601 call!58047)))

(assert (=> b!1203561 (= e!683479 (+!3953 call!58047 (tuple2!19825 (select (arr!37620 lt!545369) (bvadd from!1455 #b00000000000000000000000000000001)) (get!19215 (select (arr!37619 lt!545375) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203562 () Bool)

(assert (=> b!1203562 (= e!683483 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203563 () Bool)

(assert (=> b!1203563 (= e!683485 (isEmpty!983 lt!545595))))

(declare-fun b!1203564 () Bool)

(assert (=> b!1203564 (= e!683483 e!683479)))

(declare-fun c!117840 () Bool)

(assert (=> b!1203564 (= c!117840 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (= (and d!132533 c!117842) b!1203562))

(assert (= (and d!132533 (not c!117842)) b!1203564))

(assert (= (and b!1203564 c!117840) b!1203561))

(assert (= (and b!1203564 (not c!117840)) b!1203560))

(assert (= (or b!1203561 b!1203560) bm!58044))

(assert (= (and d!132533 res!800959) b!1203558))

(assert (= (and b!1203558 res!800962) b!1203556))

(assert (= (and b!1203556 res!800961) b!1203557))

(assert (= (and b!1203556 c!117843) b!1203559))

(assert (= (and b!1203556 (not c!117843)) b!1203554))

(assert (= (and b!1203559 res!800960) b!1203555))

(assert (= (and b!1203554 c!117841) b!1203553))

(assert (= (and b!1203554 (not c!117841)) b!1203563))

(declare-fun b_lambda!21165 () Bool)

(assert (=> (not b_lambda!21165) (not b!1203555)))

(assert (=> b!1203555 t!39537))

(declare-fun b_and!42735 () Bool)

(assert (= b_and!42733 (and (=> t!39537 result!21983) b_and!42735)))

(declare-fun b_lambda!21167 () Bool)

(assert (=> (not b_lambda!21167) (not b!1203561)))

(assert (=> b!1203561 t!39537))

(declare-fun b_and!42737 () Bool)

(assert (= b_and!42735 (and (=> t!39537 result!21983) b_and!42737)))

(declare-fun m!1109419 () Bool)

(assert (=> b!1203553 m!1109419))

(declare-fun m!1109421 () Bool)

(assert (=> b!1203563 m!1109421))

(declare-fun m!1109423 () Bool)

(assert (=> b!1203558 m!1109423))

(declare-fun m!1109425 () Bool)

(assert (=> d!132533 m!1109425))

(assert (=> d!132533 m!1108917))

(declare-fun m!1109427 () Bool)

(assert (=> b!1203555 m!1109427))

(assert (=> b!1203555 m!1109427))

(assert (=> b!1203555 m!1108905))

(declare-fun m!1109429 () Bool)

(assert (=> b!1203555 m!1109429))

(declare-fun m!1109431 () Bool)

(assert (=> b!1203555 m!1109431))

(declare-fun m!1109433 () Bool)

(assert (=> b!1203555 m!1109433))

(assert (=> b!1203555 m!1108905))

(assert (=> b!1203555 m!1109431))

(assert (=> b!1203559 m!1109431))

(assert (=> b!1203559 m!1109431))

(declare-fun m!1109435 () Bool)

(assert (=> b!1203559 m!1109435))

(assert (=> b!1203561 m!1109427))

(declare-fun m!1109437 () Bool)

(assert (=> b!1203561 m!1109437))

(declare-fun m!1109439 () Bool)

(assert (=> b!1203561 m!1109439))

(assert (=> b!1203561 m!1109427))

(assert (=> b!1203561 m!1108905))

(assert (=> b!1203561 m!1109429))

(declare-fun m!1109441 () Bool)

(assert (=> b!1203561 m!1109441))

(assert (=> b!1203561 m!1109437))

(assert (=> b!1203561 m!1108905))

(declare-fun m!1109443 () Bool)

(assert (=> b!1203561 m!1109443))

(assert (=> b!1203561 m!1109431))

(assert (=> b!1203564 m!1109431))

(assert (=> b!1203564 m!1109431))

(declare-fun m!1109445 () Bool)

(assert (=> b!1203564 m!1109445))

(assert (=> bm!58044 m!1109419))

(assert (=> b!1203557 m!1109431))

(assert (=> b!1203557 m!1109431))

(assert (=> b!1203557 m!1109445))

(assert (=> b!1203359 d!132533))

(declare-fun d!132535 () Bool)

(assert (=> d!132535 (= (validKeyInArray!0 (select (arr!37620 _keys!1208) from!1455)) (and (not (= (select (arr!37620 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37620 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203382 d!132535))

(declare-fun d!132537 () Bool)

(declare-fun e!683486 () Bool)

(assert (=> d!132537 e!683486))

(declare-fun res!800963 () Bool)

(assert (=> d!132537 (=> res!800963 e!683486)))

(declare-fun lt!545603 () Bool)

(assert (=> d!132537 (= res!800963 (not lt!545603))))

(declare-fun lt!545605 () Bool)

(assert (=> d!132537 (= lt!545603 lt!545605)))

(declare-fun lt!545604 () Unit!39811)

(declare-fun e!683487 () Unit!39811)

(assert (=> d!132537 (= lt!545604 e!683487)))

(declare-fun c!117844 () Bool)

(assert (=> d!132537 (= c!117844 lt!545605)))

(assert (=> d!132537 (= lt!545605 (containsKey!588 (toList!8918 lt!545514) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132537 (= (contains!6916 lt!545514 #b0000000000000000000000000000000000000000000000000000000000000000) lt!545603)))

(declare-fun b!1203565 () Bool)

(declare-fun lt!545602 () Unit!39811)

(assert (=> b!1203565 (= e!683487 lt!545602)))

(assert (=> b!1203565 (= lt!545602 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545514) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203565 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545514) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203566 () Bool)

(declare-fun Unit!39825 () Unit!39811)

(assert (=> b!1203566 (= e!683487 Unit!39825)))

(declare-fun b!1203567 () Bool)

(assert (=> b!1203567 (= e!683486 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545514) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132537 c!117844) b!1203565))

(assert (= (and d!132537 (not c!117844)) b!1203566))

(assert (= (and d!132537 (not res!800963)) b!1203567))

(declare-fun m!1109447 () Bool)

(assert (=> d!132537 m!1109447))

(declare-fun m!1109449 () Bool)

(assert (=> b!1203565 m!1109449))

(declare-fun m!1109451 () Bool)

(assert (=> b!1203565 m!1109451))

(assert (=> b!1203565 m!1109451))

(declare-fun m!1109453 () Bool)

(assert (=> b!1203565 m!1109453))

(assert (=> b!1203567 m!1109451))

(assert (=> b!1203567 m!1109451))

(assert (=> b!1203567 m!1109453))

(assert (=> d!132453 d!132537))

(assert (=> d!132453 d!132443))

(declare-fun e!683494 () Bool)

(declare-fun b!1203568 () Bool)

(declare-fun lt!545606 () ListLongMap!17805)

(assert (=> b!1203568 (= e!683494 (= lt!545606 (getCurrentListMapNoExtraKeys!5328 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)) (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132539 () Bool)

(declare-fun e!683493 () Bool)

(assert (=> d!132539 e!683493))

(declare-fun res!800964 () Bool)

(assert (=> d!132539 (=> (not res!800964) (not e!683493))))

(assert (=> d!132539 (= res!800964 (not (contains!6916 lt!545606 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683492 () ListLongMap!17805)

(assert (=> d!132539 (= lt!545606 e!683492)))

(declare-fun c!117847 () Bool)

(assert (=> d!132539 (= c!117847 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)))))))

(assert (=> d!132539 (validMask!0 mask!1564)))

(assert (=> d!132539 (= (getCurrentListMapNoExtraKeys!5328 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)) (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545606)))

(declare-fun b!1203569 () Bool)

(declare-fun e!683490 () Bool)

(assert (=> b!1203569 (= e!683490 e!683494)))

(declare-fun c!117846 () Bool)

(assert (=> b!1203569 (= c!117846 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)))))))

(declare-fun b!1203570 () Bool)

(assert (=> b!1203570 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)))))))

(assert (=> b!1203570 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38156 (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)))))))

(declare-fun e!683491 () Bool)

(assert (=> b!1203570 (= e!683491 (= (apply!995 lt!545606 (select (arr!37620 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19215 (select (arr!37619 (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!58045 () Bool)

(declare-fun call!58048 () ListLongMap!17805)

(assert (=> bm!58045 (= call!58048 (getCurrentListMapNoExtraKeys!5328 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)) (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203571 () Bool)

(assert (=> b!1203571 (= e!683493 e!683490)))

(declare-fun c!117848 () Bool)

(declare-fun e!683489 () Bool)

(assert (=> b!1203571 (= c!117848 e!683489)))

(declare-fun res!800966 () Bool)

(assert (=> b!1203571 (=> (not res!800966) (not e!683489))))

(assert (=> b!1203571 (= res!800966 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)))))))

(declare-fun b!1203572 () Bool)

(assert (=> b!1203572 (= e!683489 (validKeyInArray!0 (select (arr!37620 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203572 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1203573 () Bool)

(declare-fun res!800967 () Bool)

(assert (=> b!1203573 (=> (not res!800967) (not e!683493))))

(assert (=> b!1203573 (= res!800967 (not (contains!6916 lt!545606 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203574 () Bool)

(assert (=> b!1203574 (= e!683490 e!683491)))

(assert (=> b!1203574 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38157 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208)))))))

(declare-fun res!800965 () Bool)

(assert (=> b!1203574 (= res!800965 (contains!6916 lt!545606 (select (arr!37620 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203574 (=> (not res!800965) (not e!683491))))

(declare-fun b!1203575 () Bool)

(declare-fun e!683488 () ListLongMap!17805)

(assert (=> b!1203575 (= e!683488 call!58048)))

(declare-fun b!1203576 () Bool)

(declare-fun lt!545610 () Unit!39811)

(declare-fun lt!545608 () Unit!39811)

(assert (=> b!1203576 (= lt!545610 lt!545608)))

(declare-fun lt!545609 () (_ BitVec 64))

(declare-fun lt!545611 () (_ BitVec 64))

(declare-fun lt!545607 () V!45931)

(declare-fun lt!545612 () ListLongMap!17805)

(assert (=> b!1203576 (not (contains!6916 (+!3953 lt!545612 (tuple2!19825 lt!545611 lt!545607)) lt!545609))))

(assert (=> b!1203576 (= lt!545608 (addStillNotContains!290 lt!545612 lt!545611 lt!545607 lt!545609))))

(assert (=> b!1203576 (= lt!545609 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203576 (= lt!545607 (get!19215 (select (arr!37619 (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203576 (= lt!545611 (select (arr!37620 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1203576 (= lt!545612 call!58048)))

(assert (=> b!1203576 (= e!683488 (+!3953 call!58048 (tuple2!19825 (select (arr!37620 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 (array!77957 (store (arr!37619 _values!996) i!673 (ValueCellFull!14592 (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38156 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203577 () Bool)

(assert (=> b!1203577 (= e!683492 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203578 () Bool)

(assert (=> b!1203578 (= e!683494 (isEmpty!983 lt!545606))))

(declare-fun b!1203579 () Bool)

(assert (=> b!1203579 (= e!683492 e!683488)))

(declare-fun c!117845 () Bool)

(assert (=> b!1203579 (= c!117845 (validKeyInArray!0 (select (arr!37620 (array!77959 (store (arr!37620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38157 _keys!1208))) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (= (and d!132539 c!117847) b!1203577))

(assert (= (and d!132539 (not c!117847)) b!1203579))

(assert (= (and b!1203579 c!117845) b!1203576))

(assert (= (and b!1203579 (not c!117845)) b!1203575))

(assert (= (or b!1203576 b!1203575) bm!58045))

(assert (= (and d!132539 res!800964) b!1203573))

(assert (= (and b!1203573 res!800967) b!1203571))

(assert (= (and b!1203571 res!800966) b!1203572))

(assert (= (and b!1203571 c!117848) b!1203574))

(assert (= (and b!1203571 (not c!117848)) b!1203569))

(assert (= (and b!1203574 res!800965) b!1203570))

(assert (= (and b!1203569 c!117846) b!1203568))

(assert (= (and b!1203569 (not c!117846)) b!1203578))

(declare-fun b_lambda!21169 () Bool)

(assert (=> (not b_lambda!21169) (not b!1203570)))

(assert (=> b!1203570 t!39537))

(declare-fun b_and!42739 () Bool)

(assert (= b_and!42737 (and (=> t!39537 result!21983) b_and!42739)))

(declare-fun b_lambda!21171 () Bool)

(assert (=> (not b_lambda!21171) (not b!1203576)))

(assert (=> b!1203576 t!39537))

(declare-fun b_and!42741 () Bool)

(assert (= b_and!42739 (and (=> t!39537 result!21983) b_and!42741)))

(declare-fun m!1109455 () Bool)

(assert (=> b!1203568 m!1109455))

(declare-fun m!1109457 () Bool)

(assert (=> b!1203578 m!1109457))

(declare-fun m!1109459 () Bool)

(assert (=> b!1203573 m!1109459))

(declare-fun m!1109461 () Bool)

(assert (=> d!132539 m!1109461))

(assert (=> d!132539 m!1108917))

(declare-fun m!1109463 () Bool)

(assert (=> b!1203570 m!1109463))

(assert (=> b!1203570 m!1109463))

(assert (=> b!1203570 m!1108905))

(declare-fun m!1109465 () Bool)

(assert (=> b!1203570 m!1109465))

(declare-fun m!1109467 () Bool)

(assert (=> b!1203570 m!1109467))

(declare-fun m!1109469 () Bool)

(assert (=> b!1203570 m!1109469))

(assert (=> b!1203570 m!1108905))

(assert (=> b!1203570 m!1109467))

(assert (=> b!1203574 m!1109467))

(assert (=> b!1203574 m!1109467))

(declare-fun m!1109471 () Bool)

(assert (=> b!1203574 m!1109471))

(assert (=> b!1203576 m!1109463))

(declare-fun m!1109473 () Bool)

(assert (=> b!1203576 m!1109473))

(declare-fun m!1109475 () Bool)

(assert (=> b!1203576 m!1109475))

(assert (=> b!1203576 m!1109463))

(assert (=> b!1203576 m!1108905))

(assert (=> b!1203576 m!1109465))

(declare-fun m!1109477 () Bool)

(assert (=> b!1203576 m!1109477))

(assert (=> b!1203576 m!1109473))

(assert (=> b!1203576 m!1108905))

(declare-fun m!1109479 () Bool)

(assert (=> b!1203576 m!1109479))

(assert (=> b!1203576 m!1109467))

(assert (=> b!1203579 m!1109467))

(assert (=> b!1203579 m!1109467))

(declare-fun m!1109481 () Bool)

(assert (=> b!1203579 m!1109481))

(assert (=> bm!58045 m!1109455))

(assert (=> b!1203572 m!1109467))

(assert (=> b!1203572 m!1109467))

(assert (=> b!1203572 m!1109481))

(assert (=> bm!58028 d!132539))

(declare-fun d!132541 () Bool)

(declare-fun e!683495 () Bool)

(assert (=> d!132541 e!683495))

(declare-fun res!800968 () Bool)

(assert (=> d!132541 (=> res!800968 e!683495)))

(declare-fun lt!545614 () Bool)

(assert (=> d!132541 (= res!800968 (not lt!545614))))

(declare-fun lt!545616 () Bool)

(assert (=> d!132541 (= lt!545614 lt!545616)))

(declare-fun lt!545615 () Unit!39811)

(declare-fun e!683496 () Unit!39811)

(assert (=> d!132541 (= lt!545615 e!683496)))

(declare-fun c!117849 () Bool)

(assert (=> d!132541 (= c!117849 lt!545616)))

(assert (=> d!132541 (= lt!545616 (containsKey!588 (toList!8918 lt!545486) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132541 (= (contains!6916 lt!545486 #b1000000000000000000000000000000000000000000000000000000000000000) lt!545614)))

(declare-fun b!1203580 () Bool)

(declare-fun lt!545613 () Unit!39811)

(assert (=> b!1203580 (= e!683496 lt!545613)))

(assert (=> b!1203580 (= lt!545613 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545486) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203580 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545486) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203581 () Bool)

(declare-fun Unit!39826 () Unit!39811)

(assert (=> b!1203581 (= e!683496 Unit!39826)))

(declare-fun b!1203582 () Bool)

(assert (=> b!1203582 (= e!683495 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545486) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132541 c!117849) b!1203580))

(assert (= (and d!132541 (not c!117849)) b!1203581))

(assert (= (and d!132541 (not res!800968)) b!1203582))

(declare-fun m!1109483 () Bool)

(assert (=> d!132541 m!1109483))

(declare-fun m!1109485 () Bool)

(assert (=> b!1203580 m!1109485))

(declare-fun m!1109487 () Bool)

(assert (=> b!1203580 m!1109487))

(assert (=> b!1203580 m!1109487))

(declare-fun m!1109489 () Bool)

(assert (=> b!1203580 m!1109489))

(assert (=> b!1203582 m!1109487))

(assert (=> b!1203582 m!1109487))

(assert (=> b!1203582 m!1109489))

(assert (=> b!1203343 d!132541))

(assert (=> b!1203296 d!132459))

(declare-fun d!132543 () Bool)

(declare-fun e!683497 () Bool)

(assert (=> d!132543 e!683497))

(declare-fun res!800969 () Bool)

(assert (=> d!132543 (=> res!800969 e!683497)))

(declare-fun lt!545618 () Bool)

(assert (=> d!132543 (= res!800969 (not lt!545618))))

(declare-fun lt!545620 () Bool)

(assert (=> d!132543 (= lt!545618 lt!545620)))

(declare-fun lt!545619 () Unit!39811)

(declare-fun e!683498 () Unit!39811)

(assert (=> d!132543 (= lt!545619 e!683498)))

(declare-fun c!117850 () Bool)

(assert (=> d!132543 (= c!117850 lt!545620)))

(assert (=> d!132543 (= lt!545620 (containsKey!588 (toList!8918 lt!545448) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132543 (= (contains!6916 lt!545448 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!545618)))

(declare-fun b!1203583 () Bool)

(declare-fun lt!545617 () Unit!39811)

(assert (=> b!1203583 (= e!683498 lt!545617)))

(assert (=> b!1203583 (= lt!545617 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545448) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> b!1203583 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545448) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203584 () Bool)

(declare-fun Unit!39827 () Unit!39811)

(assert (=> b!1203584 (= e!683498 Unit!39827)))

(declare-fun b!1203585 () Bool)

(assert (=> b!1203585 (= e!683497 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545448) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!132543 c!117850) b!1203583))

(assert (= (and d!132543 (not c!117850)) b!1203584))

(assert (= (and d!132543 (not res!800969)) b!1203585))

(declare-fun m!1109491 () Bool)

(assert (=> d!132543 m!1109491))

(declare-fun m!1109493 () Bool)

(assert (=> b!1203583 m!1109493))

(assert (=> b!1203583 m!1109021))

(assert (=> b!1203583 m!1109021))

(declare-fun m!1109495 () Bool)

(assert (=> b!1203583 m!1109495))

(assert (=> b!1203585 m!1109021))

(assert (=> b!1203585 m!1109021))

(assert (=> b!1203585 m!1109495))

(assert (=> d!132419 d!132543))

(declare-fun b!1203586 () Bool)

(declare-fun e!683499 () Option!685)

(assert (=> b!1203586 (= e!683499 (Some!684 (_2!9922 (h!27857 lt!545447))))))

(declare-fun b!1203589 () Bool)

(declare-fun e!683500 () Option!685)

(assert (=> b!1203589 (= e!683500 None!683)))

(declare-fun b!1203587 () Bool)

(assert (=> b!1203587 (= e!683499 e!683500)))

(declare-fun c!117852 () Bool)

(assert (=> b!1203587 (= c!117852 (and ((_ is Cons!26648) lt!545447) (not (= (_1!9922 (h!27857 lt!545447)) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun d!132545 () Bool)

(declare-fun c!117851 () Bool)

(assert (=> d!132545 (= c!117851 (and ((_ is Cons!26648) lt!545447) (= (_1!9922 (h!27857 lt!545447)) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132545 (= (getValueByKey!634 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) e!683499)))

(declare-fun b!1203588 () Bool)

(assert (=> b!1203588 (= e!683500 (getValueByKey!634 (t!39538 lt!545447) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132545 c!117851) b!1203586))

(assert (= (and d!132545 (not c!117851)) b!1203587))

(assert (= (and b!1203587 c!117852) b!1203588))

(assert (= (and b!1203587 (not c!117852)) b!1203589))

(declare-fun m!1109497 () Bool)

(assert (=> b!1203588 m!1109497))

(assert (=> d!132419 d!132545))

(declare-fun d!132547 () Bool)

(assert (=> d!132547 (= (getValueByKey!634 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!684 (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!545623 () Unit!39811)

(declare-fun choose!1796 (List!26652 (_ BitVec 64) V!45931) Unit!39811)

(assert (=> d!132547 (= lt!545623 (choose!1796 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun e!683503 () Bool)

(assert (=> d!132547 e!683503))

(declare-fun res!800974 () Bool)

(assert (=> d!132547 (=> (not res!800974) (not e!683503))))

(assert (=> d!132547 (= res!800974 (isStrictlySorted!724 lt!545447))))

(assert (=> d!132547 (= (lemmaContainsTupThenGetReturnValue!309 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!545623)))

(declare-fun b!1203594 () Bool)

(declare-fun res!800975 () Bool)

(assert (=> b!1203594 (=> (not res!800975) (not e!683503))))

(assert (=> b!1203594 (= res!800975 (containsKey!588 lt!545447 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203595 () Bool)

(assert (=> b!1203595 (= e!683503 (contains!6919 lt!545447 (tuple2!19825 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!132547 res!800974) b!1203594))

(assert (= (and b!1203594 res!800975) b!1203595))

(assert (=> d!132547 m!1109015))

(declare-fun m!1109499 () Bool)

(assert (=> d!132547 m!1109499))

(declare-fun m!1109501 () Bool)

(assert (=> d!132547 m!1109501))

(declare-fun m!1109503 () Bool)

(assert (=> b!1203594 m!1109503))

(declare-fun m!1109505 () Bool)

(assert (=> b!1203595 m!1109505))

(assert (=> d!132419 d!132547))

(declare-fun bm!58052 () Bool)

(declare-fun call!58057 () List!26652)

(declare-fun call!58055 () List!26652)

(assert (=> bm!58052 (= call!58057 call!58055)))

(declare-fun b!1203616 () Bool)

(declare-fun e!683517 () Bool)

(declare-fun lt!545626 () List!26652)

(assert (=> b!1203616 (= e!683517 (contains!6919 lt!545626 (tuple2!19825 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203617 () Bool)

(declare-fun e!683515 () List!26652)

(declare-fun call!58056 () List!26652)

(assert (=> b!1203617 (= e!683515 call!58056)))

(declare-fun bm!58053 () Bool)

(assert (=> bm!58053 (= call!58056 call!58057)))

(declare-fun b!1203619 () Bool)

(declare-fun c!117863 () Bool)

(declare-fun c!117864 () Bool)

(declare-fun e!683516 () List!26652)

(assert (=> b!1203619 (= e!683516 (ite c!117864 (t!39538 (toList!8918 lt!545373)) (ite c!117863 (Cons!26648 (h!27857 (toList!8918 lt!545373)) (t!39538 (toList!8918 lt!545373))) Nil!26649)))))

(declare-fun b!1203620 () Bool)

(assert (=> b!1203620 (= e!683515 call!58056)))

(declare-fun c!117861 () Bool)

(declare-fun bm!58054 () Bool)

(assert (=> bm!58054 (= call!58055 ($colon$colon!612 e!683516 (ite c!117861 (h!27857 (toList!8918 lt!545373)) (tuple2!19825 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun c!117862 () Bool)

(assert (=> bm!58054 (= c!117862 c!117861)))

(declare-fun b!1203621 () Bool)

(assert (=> b!1203621 (= c!117863 (and ((_ is Cons!26648) (toList!8918 lt!545373)) (bvsgt (_1!9922 (h!27857 (toList!8918 lt!545373))) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!683518 () List!26652)

(assert (=> b!1203621 (= e!683518 e!683515)))

(declare-fun b!1203622 () Bool)

(declare-fun res!800980 () Bool)

(assert (=> b!1203622 (=> (not res!800980) (not e!683517))))

(assert (=> b!1203622 (= res!800980 (containsKey!588 lt!545626 (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203623 () Bool)

(assert (=> b!1203623 (= e!683516 (insertStrictlySorted!401 (t!39538 (toList!8918 lt!545373)) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203624 () Bool)

(assert (=> b!1203624 (= e!683518 call!58057)))

(declare-fun b!1203625 () Bool)

(declare-fun e!683514 () List!26652)

(assert (=> b!1203625 (= e!683514 e!683518)))

(assert (=> b!1203625 (= c!117864 (and ((_ is Cons!26648) (toList!8918 lt!545373)) (= (_1!9922 (h!27857 (toList!8918 lt!545373))) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun d!132549 () Bool)

(assert (=> d!132549 e!683517))

(declare-fun res!800981 () Bool)

(assert (=> d!132549 (=> (not res!800981) (not e!683517))))

(assert (=> d!132549 (= res!800981 (isStrictlySorted!724 lt!545626))))

(assert (=> d!132549 (= lt!545626 e!683514)))

(assert (=> d!132549 (= c!117861 (and ((_ is Cons!26648) (toList!8918 lt!545373)) (bvslt (_1!9922 (h!27857 (toList!8918 lt!545373))) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132549 (isStrictlySorted!724 (toList!8918 lt!545373))))

(assert (=> d!132549 (= (insertStrictlySorted!401 (toList!8918 lt!545373) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!545626)))

(declare-fun b!1203618 () Bool)

(assert (=> b!1203618 (= e!683514 call!58055)))

(assert (= (and d!132549 c!117861) b!1203618))

(assert (= (and d!132549 (not c!117861)) b!1203625))

(assert (= (and b!1203625 c!117864) b!1203624))

(assert (= (and b!1203625 (not c!117864)) b!1203621))

(assert (= (and b!1203621 c!117863) b!1203617))

(assert (= (and b!1203621 (not c!117863)) b!1203620))

(assert (= (or b!1203617 b!1203620) bm!58053))

(assert (= (or b!1203624 bm!58053) bm!58052))

(assert (= (or b!1203618 bm!58052) bm!58054))

(assert (= (and bm!58054 c!117862) b!1203623))

(assert (= (and bm!58054 (not c!117862)) b!1203619))

(assert (= (and d!132549 res!800981) b!1203622))

(assert (= (and b!1203622 res!800980) b!1203616))

(declare-fun m!1109507 () Bool)

(assert (=> b!1203622 m!1109507))

(declare-fun m!1109509 () Bool)

(assert (=> d!132549 m!1109509))

(declare-fun m!1109511 () Bool)

(assert (=> d!132549 m!1109511))

(declare-fun m!1109513 () Bool)

(assert (=> b!1203616 m!1109513))

(declare-fun m!1109515 () Bool)

(assert (=> b!1203623 m!1109515))

(declare-fun m!1109517 () Bool)

(assert (=> bm!58054 m!1109517))

(assert (=> d!132419 d!132549))

(declare-fun d!132551 () Bool)

(declare-fun e!683519 () Bool)

(assert (=> d!132551 e!683519))

(declare-fun res!800982 () Bool)

(assert (=> d!132551 (=> res!800982 e!683519)))

(declare-fun lt!545628 () Bool)

(assert (=> d!132551 (= res!800982 (not lt!545628))))

(declare-fun lt!545630 () Bool)

(assert (=> d!132551 (= lt!545628 lt!545630)))

(declare-fun lt!545629 () Unit!39811)

(declare-fun e!683520 () Unit!39811)

(assert (=> d!132551 (= lt!545629 e!683520)))

(declare-fun c!117865 () Bool)

(assert (=> d!132551 (= c!117865 lt!545630)))

(assert (=> d!132551 (= lt!545630 (containsKey!588 (toList!8918 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) k0!934))))

(assert (=> d!132551 (= (contains!6916 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934) lt!545628)))

(declare-fun b!1203626 () Bool)

(declare-fun lt!545627 () Unit!39811)

(assert (=> b!1203626 (= e!683520 lt!545627)))

(assert (=> b!1203626 (= lt!545627 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) k0!934))))

(assert (=> b!1203626 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) k0!934))))

(declare-fun b!1203627 () Bool)

(declare-fun Unit!39828 () Unit!39811)

(assert (=> b!1203627 (= e!683520 Unit!39828)))

(declare-fun b!1203628 () Bool)

(assert (=> b!1203628 (= e!683519 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) k0!934)))))

(assert (= (and d!132551 c!117865) b!1203626))

(assert (= (and d!132551 (not c!117865)) b!1203627))

(assert (= (and d!132551 (not res!800982)) b!1203628))

(declare-fun m!1109519 () Bool)

(assert (=> d!132551 m!1109519))

(declare-fun m!1109521 () Bool)

(assert (=> b!1203626 m!1109521))

(declare-fun m!1109523 () Bool)

(assert (=> b!1203626 m!1109523))

(assert (=> b!1203626 m!1109523))

(declare-fun m!1109525 () Bool)

(assert (=> b!1203626 m!1109525))

(assert (=> b!1203628 m!1109523))

(assert (=> b!1203628 m!1109523))

(assert (=> b!1203628 m!1109525))

(assert (=> d!132415 d!132551))

(declare-fun d!132553 () Bool)

(declare-fun e!683521 () Bool)

(assert (=> d!132553 e!683521))

(declare-fun res!800983 () Bool)

(assert (=> d!132553 (=> (not res!800983) (not e!683521))))

(declare-fun lt!545633 () ListLongMap!17805)

(assert (=> d!132553 (= res!800983 (contains!6916 lt!545633 (_1!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!545632 () List!26652)

(assert (=> d!132553 (= lt!545633 (ListLongMap!17806 lt!545632))))

(declare-fun lt!545631 () Unit!39811)

(declare-fun lt!545634 () Unit!39811)

(assert (=> d!132553 (= lt!545631 lt!545634)))

(assert (=> d!132553 (= (getValueByKey!634 lt!545632 (_1!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!684 (_2!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132553 (= lt!545634 (lemmaContainsTupThenGetReturnValue!309 lt!545632 (_1!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132553 (= lt!545632 (insertStrictlySorted!401 (toList!8918 lt!545376) (_1!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132553 (= (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!545633)))

(declare-fun b!1203629 () Bool)

(declare-fun res!800984 () Bool)

(assert (=> b!1203629 (=> (not res!800984) (not e!683521))))

(assert (=> b!1203629 (= res!800984 (= (getValueByKey!634 (toList!8918 lt!545633) (_1!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!684 (_2!9922 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun b!1203630 () Bool)

(assert (=> b!1203630 (= e!683521 (contains!6919 (toList!8918 lt!545633) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!132553 res!800983) b!1203629))

(assert (= (and b!1203629 res!800984) b!1203630))

(declare-fun m!1109527 () Bool)

(assert (=> d!132553 m!1109527))

(declare-fun m!1109529 () Bool)

(assert (=> d!132553 m!1109529))

(declare-fun m!1109531 () Bool)

(assert (=> d!132553 m!1109531))

(declare-fun m!1109533 () Bool)

(assert (=> d!132553 m!1109533))

(declare-fun m!1109535 () Bool)

(assert (=> b!1203629 m!1109535))

(declare-fun m!1109537 () Bool)

(assert (=> b!1203630 m!1109537))

(assert (=> d!132415 d!132553))

(declare-fun d!132555 () Bool)

(assert (=> d!132555 (contains!6916 (+!3953 lt!545376 (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(assert (=> d!132555 true))

(declare-fun _$35!454 () Unit!39811)

(assert (=> d!132555 (= (choose!1792 lt!545376 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) _$35!454)))

(declare-fun bs!34062 () Bool)

(assert (= bs!34062 d!132555))

(assert (=> bs!34062 m!1108999))

(assert (=> bs!34062 m!1108999))

(assert (=> bs!34062 m!1109001))

(assert (=> d!132415 d!132555))

(assert (=> d!132415 d!132445))

(declare-fun d!132557 () Bool)

(declare-fun e!683522 () Bool)

(assert (=> d!132557 e!683522))

(declare-fun res!800985 () Bool)

(assert (=> d!132557 (=> res!800985 e!683522)))

(declare-fun lt!545636 () Bool)

(assert (=> d!132557 (= res!800985 (not lt!545636))))

(declare-fun lt!545638 () Bool)

(assert (=> d!132557 (= lt!545636 lt!545638)))

(declare-fun lt!545637 () Unit!39811)

(declare-fun e!683523 () Unit!39811)

(assert (=> d!132557 (= lt!545637 e!683523)))

(declare-fun c!117866 () Bool)

(assert (=> d!132557 (= c!117866 lt!545638)))

(assert (=> d!132557 (= lt!545638 (containsKey!588 (toList!8918 lt!545507) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132557 (= (contains!6916 lt!545507 #b1000000000000000000000000000000000000000000000000000000000000000) lt!545636)))

(declare-fun b!1203632 () Bool)

(declare-fun lt!545635 () Unit!39811)

(assert (=> b!1203632 (= e!683523 lt!545635)))

(assert (=> b!1203632 (= lt!545635 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545507) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203632 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545507) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203633 () Bool)

(declare-fun Unit!39829 () Unit!39811)

(assert (=> b!1203633 (= e!683523 Unit!39829)))

(declare-fun b!1203634 () Bool)

(assert (=> b!1203634 (= e!683522 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545507) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132557 c!117866) b!1203632))

(assert (= (and d!132557 (not c!117866)) b!1203633))

(assert (= (and d!132557 (not res!800985)) b!1203634))

(declare-fun m!1109539 () Bool)

(assert (=> d!132557 m!1109539))

(declare-fun m!1109541 () Bool)

(assert (=> b!1203632 m!1109541))

(declare-fun m!1109543 () Bool)

(assert (=> b!1203632 m!1109543))

(assert (=> b!1203632 m!1109543))

(declare-fun m!1109545 () Bool)

(assert (=> b!1203632 m!1109545))

(assert (=> b!1203634 m!1109543))

(assert (=> b!1203634 m!1109543))

(assert (=> b!1203634 m!1109545))

(assert (=> b!1203376 d!132557))

(declare-fun d!132559 () Bool)

(declare-fun e!683524 () Bool)

(assert (=> d!132559 e!683524))

(declare-fun res!800986 () Bool)

(assert (=> d!132559 (=> res!800986 e!683524)))

(declare-fun lt!545640 () Bool)

(assert (=> d!132559 (= res!800986 (not lt!545640))))

(declare-fun lt!545642 () Bool)

(assert (=> d!132559 (= lt!545640 lt!545642)))

(declare-fun lt!545641 () Unit!39811)

(declare-fun e!683525 () Unit!39811)

(assert (=> d!132559 (= lt!545641 e!683525)))

(declare-fun c!117867 () Bool)

(assert (=> d!132559 (= c!117867 lt!545642)))

(assert (=> d!132559 (= lt!545642 (containsKey!588 (toList!8918 lt!545464) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132559 (= (contains!6916 lt!545464 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!545640)))

(declare-fun b!1203635 () Bool)

(declare-fun lt!545639 () Unit!39811)

(assert (=> b!1203635 (= e!683525 lt!545639)))

(assert (=> b!1203635 (= lt!545639 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545464) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> b!1203635 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545464) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203636 () Bool)

(declare-fun Unit!39830 () Unit!39811)

(assert (=> b!1203636 (= e!683525 Unit!39830)))

(declare-fun b!1203637 () Bool)

(assert (=> b!1203637 (= e!683524 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545464) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (= (and d!132559 c!117867) b!1203635))

(assert (= (and d!132559 (not c!117867)) b!1203636))

(assert (= (and d!132559 (not res!800986)) b!1203637))

(declare-fun m!1109547 () Bool)

(assert (=> d!132559 m!1109547))

(declare-fun m!1109549 () Bool)

(assert (=> b!1203635 m!1109549))

(assert (=> b!1203635 m!1109053))

(assert (=> b!1203635 m!1109053))

(declare-fun m!1109551 () Bool)

(assert (=> b!1203635 m!1109551))

(assert (=> b!1203637 m!1109053))

(assert (=> b!1203637 m!1109053))

(assert (=> b!1203637 m!1109551))

(assert (=> d!132431 d!132559))

(declare-fun b!1203638 () Bool)

(declare-fun e!683526 () Option!685)

(assert (=> b!1203638 (= e!683526 (Some!684 (_2!9922 (h!27857 lt!545463))))))

(declare-fun b!1203641 () Bool)

(declare-fun e!683527 () Option!685)

(assert (=> b!1203641 (= e!683527 None!683)))

(declare-fun b!1203639 () Bool)

(assert (=> b!1203639 (= e!683526 e!683527)))

(declare-fun c!117869 () Bool)

(assert (=> b!1203639 (= c!117869 (and ((_ is Cons!26648) lt!545463) (not (= (_1!9922 (h!27857 lt!545463)) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun c!117868 () Bool)

(declare-fun d!132561 () Bool)

(assert (=> d!132561 (= c!117868 (and ((_ is Cons!26648) lt!545463) (= (_1!9922 (h!27857 lt!545463)) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132561 (= (getValueByKey!634 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) e!683526)))

(declare-fun b!1203640 () Bool)

(assert (=> b!1203640 (= e!683527 (getValueByKey!634 (t!39538 lt!545463) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!132561 c!117868) b!1203638))

(assert (= (and d!132561 (not c!117868)) b!1203639))

(assert (= (and b!1203639 c!117869) b!1203640))

(assert (= (and b!1203639 (not c!117869)) b!1203641))

(declare-fun m!1109553 () Bool)

(assert (=> b!1203640 m!1109553))

(assert (=> d!132431 d!132561))

(declare-fun d!132563 () Bool)

(assert (=> d!132563 (= (getValueByKey!634 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!684 (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!545643 () Unit!39811)

(assert (=> d!132563 (= lt!545643 (choose!1796 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!683528 () Bool)

(assert (=> d!132563 e!683528))

(declare-fun res!800987 () Bool)

(assert (=> d!132563 (=> (not res!800987) (not e!683528))))

(assert (=> d!132563 (= res!800987 (isStrictlySorted!724 lt!545463))))

(assert (=> d!132563 (= (lemmaContainsTupThenGetReturnValue!309 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!545643)))

(declare-fun b!1203642 () Bool)

(declare-fun res!800988 () Bool)

(assert (=> b!1203642 (=> (not res!800988) (not e!683528))))

(assert (=> b!1203642 (= res!800988 (containsKey!588 lt!545463 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203643 () Bool)

(assert (=> b!1203643 (= e!683528 (contains!6919 lt!545463 (tuple2!19825 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (= (and d!132563 res!800987) b!1203642))

(assert (= (and b!1203642 res!800988) b!1203643))

(assert (=> d!132563 m!1109047))

(declare-fun m!1109555 () Bool)

(assert (=> d!132563 m!1109555))

(declare-fun m!1109557 () Bool)

(assert (=> d!132563 m!1109557))

(declare-fun m!1109559 () Bool)

(assert (=> b!1203642 m!1109559))

(declare-fun m!1109561 () Bool)

(assert (=> b!1203643 m!1109561))

(assert (=> d!132431 d!132563))

(declare-fun bm!58055 () Bool)

(declare-fun call!58060 () List!26652)

(declare-fun call!58058 () List!26652)

(assert (=> bm!58055 (= call!58060 call!58058)))

(declare-fun e!683532 () Bool)

(declare-fun lt!545644 () List!26652)

(declare-fun b!1203644 () Bool)

(assert (=> b!1203644 (= e!683532 (contains!6919 lt!545644 (tuple2!19825 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1203645 () Bool)

(declare-fun e!683530 () List!26652)

(declare-fun call!58059 () List!26652)

(assert (=> b!1203645 (= e!683530 call!58059)))

(declare-fun bm!58056 () Bool)

(assert (=> bm!58056 (= call!58059 call!58060)))

(declare-fun c!117872 () Bool)

(declare-fun e!683531 () List!26652)

(declare-fun b!1203647 () Bool)

(declare-fun c!117873 () Bool)

(assert (=> b!1203647 (= e!683531 (ite c!117873 (t!39538 (toList!8918 lt!545376)) (ite c!117872 (Cons!26648 (h!27857 (toList!8918 lt!545376)) (t!39538 (toList!8918 lt!545376))) Nil!26649)))))

(declare-fun b!1203648 () Bool)

(assert (=> b!1203648 (= e!683530 call!58059)))

(declare-fun bm!58057 () Bool)

(declare-fun c!117870 () Bool)

(assert (=> bm!58057 (= call!58058 ($colon$colon!612 e!683531 (ite c!117870 (h!27857 (toList!8918 lt!545376)) (tuple2!19825 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun c!117871 () Bool)

(assert (=> bm!58057 (= c!117871 c!117870)))

(declare-fun b!1203649 () Bool)

(assert (=> b!1203649 (= c!117872 (and ((_ is Cons!26648) (toList!8918 lt!545376)) (bvsgt (_1!9922 (h!27857 (toList!8918 lt!545376))) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun e!683533 () List!26652)

(assert (=> b!1203649 (= e!683533 e!683530)))

(declare-fun b!1203650 () Bool)

(declare-fun res!800989 () Bool)

(assert (=> b!1203650 (=> (not res!800989) (not e!683532))))

(assert (=> b!1203650 (= res!800989 (containsKey!588 lt!545644 (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203651 () Bool)

(assert (=> b!1203651 (= e!683531 (insertStrictlySorted!401 (t!39538 (toList!8918 lt!545376)) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203652 () Bool)

(assert (=> b!1203652 (= e!683533 call!58060)))

(declare-fun b!1203653 () Bool)

(declare-fun e!683529 () List!26652)

(assert (=> b!1203653 (= e!683529 e!683533)))

(assert (=> b!1203653 (= c!117873 (and ((_ is Cons!26648) (toList!8918 lt!545376)) (= (_1!9922 (h!27857 (toList!8918 lt!545376))) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun d!132565 () Bool)

(assert (=> d!132565 e!683532))

(declare-fun res!800990 () Bool)

(assert (=> d!132565 (=> (not res!800990) (not e!683532))))

(assert (=> d!132565 (= res!800990 (isStrictlySorted!724 lt!545644))))

(assert (=> d!132565 (= lt!545644 e!683529)))

(assert (=> d!132565 (= c!117870 (and ((_ is Cons!26648) (toList!8918 lt!545376)) (bvslt (_1!9922 (h!27857 (toList!8918 lt!545376))) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132565 (isStrictlySorted!724 (toList!8918 lt!545376))))

(assert (=> d!132565 (= (insertStrictlySorted!401 (toList!8918 lt!545376) (_1!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9922 (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!545644)))

(declare-fun b!1203646 () Bool)

(assert (=> b!1203646 (= e!683529 call!58058)))

(assert (= (and d!132565 c!117870) b!1203646))

(assert (= (and d!132565 (not c!117870)) b!1203653))

(assert (= (and b!1203653 c!117873) b!1203652))

(assert (= (and b!1203653 (not c!117873)) b!1203649))

(assert (= (and b!1203649 c!117872) b!1203645))

(assert (= (and b!1203649 (not c!117872)) b!1203648))

(assert (= (or b!1203645 b!1203648) bm!58056))

(assert (= (or b!1203652 bm!58056) bm!58055))

(assert (= (or b!1203646 bm!58055) bm!58057))

(assert (= (and bm!58057 c!117871) b!1203651))

(assert (= (and bm!58057 (not c!117871)) b!1203647))

(assert (= (and d!132565 res!800990) b!1203650))

(assert (= (and b!1203650 res!800989) b!1203644))

(declare-fun m!1109563 () Bool)

(assert (=> b!1203650 m!1109563))

(declare-fun m!1109565 () Bool)

(assert (=> d!132565 m!1109565))

(assert (=> d!132565 m!1109273))

(declare-fun m!1109567 () Bool)

(assert (=> b!1203644 m!1109567))

(declare-fun m!1109569 () Bool)

(assert (=> b!1203651 m!1109569))

(declare-fun m!1109571 () Bool)

(assert (=> bm!58057 m!1109571))

(assert (=> d!132431 d!132565))

(declare-fun d!132567 () Bool)

(declare-fun e!683534 () Bool)

(assert (=> d!132567 e!683534))

(declare-fun res!800991 () Bool)

(assert (=> d!132567 (=> res!800991 e!683534)))

(declare-fun lt!545646 () Bool)

(assert (=> d!132567 (= res!800991 (not lt!545646))))

(declare-fun lt!545648 () Bool)

(assert (=> d!132567 (= lt!545646 lt!545648)))

(declare-fun lt!545647 () Unit!39811)

(declare-fun e!683535 () Unit!39811)

(assert (=> d!132567 (= lt!545647 e!683535)))

(declare-fun c!117874 () Bool)

(assert (=> d!132567 (= c!117874 lt!545648)))

(assert (=> d!132567 (= lt!545648 (containsKey!588 (toList!8918 lt!545486) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132567 (= (contains!6916 lt!545486 #b0000000000000000000000000000000000000000000000000000000000000000) lt!545646)))

(declare-fun b!1203654 () Bool)

(declare-fun lt!545645 () Unit!39811)

(assert (=> b!1203654 (= e!683535 lt!545645)))

(assert (=> b!1203654 (= lt!545645 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545486) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203654 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545486) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203655 () Bool)

(declare-fun Unit!39831 () Unit!39811)

(assert (=> b!1203655 (= e!683535 Unit!39831)))

(declare-fun b!1203656 () Bool)

(assert (=> b!1203656 (= e!683534 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545486) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132567 c!117874) b!1203654))

(assert (= (and d!132567 (not c!117874)) b!1203655))

(assert (= (and d!132567 (not res!800991)) b!1203656))

(declare-fun m!1109573 () Bool)

(assert (=> d!132567 m!1109573))

(declare-fun m!1109575 () Bool)

(assert (=> b!1203654 m!1109575))

(declare-fun m!1109577 () Bool)

(assert (=> b!1203654 m!1109577))

(assert (=> b!1203654 m!1109577))

(declare-fun m!1109579 () Bool)

(assert (=> b!1203654 m!1109579))

(assert (=> b!1203656 m!1109577))

(assert (=> b!1203656 m!1109577))

(assert (=> b!1203656 m!1109579))

(assert (=> d!132437 d!132567))

(assert (=> d!132437 d!132443))

(declare-fun d!132569 () Bool)

(declare-fun e!683536 () Bool)

(assert (=> d!132569 e!683536))

(declare-fun res!800992 () Bool)

(assert (=> d!132569 (=> res!800992 e!683536)))

(declare-fun lt!545650 () Bool)

(assert (=> d!132569 (= res!800992 (not lt!545650))))

(declare-fun lt!545652 () Bool)

(assert (=> d!132569 (= lt!545650 lt!545652)))

(declare-fun lt!545651 () Unit!39811)

(declare-fun e!683537 () Unit!39811)

(assert (=> d!132569 (= lt!545651 e!683537)))

(declare-fun c!117875 () Bool)

(assert (=> d!132569 (= c!117875 lt!545652)))

(assert (=> d!132569 (= lt!545652 (containsKey!588 (toList!8918 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501))) lt!545503))))

(assert (=> d!132569 (= (contains!6916 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501)) lt!545503) lt!545650)))

(declare-fun b!1203657 () Bool)

(declare-fun lt!545649 () Unit!39811)

(assert (=> b!1203657 (= e!683537 lt!545649)))

(assert (=> b!1203657 (= lt!545649 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501))) lt!545503))))

(assert (=> b!1203657 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501))) lt!545503))))

(declare-fun b!1203658 () Bool)

(declare-fun Unit!39832 () Unit!39811)

(assert (=> b!1203658 (= e!683537 Unit!39832)))

(declare-fun b!1203659 () Bool)

(assert (=> b!1203659 (= e!683536 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501))) lt!545503)))))

(assert (= (and d!132569 c!117875) b!1203657))

(assert (= (and d!132569 (not c!117875)) b!1203658))

(assert (= (and d!132569 (not res!800992)) b!1203659))

(declare-fun m!1109581 () Bool)

(assert (=> d!132569 m!1109581))

(declare-fun m!1109583 () Bool)

(assert (=> b!1203657 m!1109583))

(declare-fun m!1109585 () Bool)

(assert (=> b!1203657 m!1109585))

(assert (=> b!1203657 m!1109585))

(declare-fun m!1109587 () Bool)

(assert (=> b!1203657 m!1109587))

(assert (=> b!1203659 m!1109585))

(assert (=> b!1203659 m!1109585))

(assert (=> b!1203659 m!1109587))

(assert (=> b!1203367 d!132569))

(declare-fun d!132571 () Bool)

(assert (=> d!132571 (not (contains!6916 (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501)) lt!545503))))

(declare-fun lt!545653 () Unit!39811)

(assert (=> d!132571 (= lt!545653 (choose!1795 lt!545506 lt!545505 lt!545501 lt!545503))))

(declare-fun e!683538 () Bool)

(assert (=> d!132571 e!683538))

(declare-fun res!800993 () Bool)

(assert (=> d!132571 (=> (not res!800993) (not e!683538))))

(assert (=> d!132571 (= res!800993 (not (contains!6916 lt!545506 lt!545503)))))

(assert (=> d!132571 (= (addStillNotContains!290 lt!545506 lt!545505 lt!545501 lt!545503) lt!545653)))

(declare-fun b!1203660 () Bool)

(assert (=> b!1203660 (= e!683538 (not (= lt!545505 lt!545503)))))

(assert (= (and d!132571 res!800993) b!1203660))

(assert (=> d!132571 m!1109125))

(assert (=> d!132571 m!1109125))

(assert (=> d!132571 m!1109127))

(declare-fun m!1109589 () Bool)

(assert (=> d!132571 m!1109589))

(declare-fun m!1109591 () Bool)

(assert (=> d!132571 m!1109591))

(assert (=> b!1203367 d!132571))

(assert (=> b!1203367 d!132529))

(declare-fun d!132573 () Bool)

(declare-fun e!683539 () Bool)

(assert (=> d!132573 e!683539))

(declare-fun res!800994 () Bool)

(assert (=> d!132573 (=> (not res!800994) (not e!683539))))

(declare-fun lt!545656 () ListLongMap!17805)

(assert (=> d!132573 (= res!800994 (contains!6916 lt!545656 (_1!9922 (tuple2!19825 lt!545505 lt!545501))))))

(declare-fun lt!545655 () List!26652)

(assert (=> d!132573 (= lt!545656 (ListLongMap!17806 lt!545655))))

(declare-fun lt!545654 () Unit!39811)

(declare-fun lt!545657 () Unit!39811)

(assert (=> d!132573 (= lt!545654 lt!545657)))

(assert (=> d!132573 (= (getValueByKey!634 lt!545655 (_1!9922 (tuple2!19825 lt!545505 lt!545501))) (Some!684 (_2!9922 (tuple2!19825 lt!545505 lt!545501))))))

(assert (=> d!132573 (= lt!545657 (lemmaContainsTupThenGetReturnValue!309 lt!545655 (_1!9922 (tuple2!19825 lt!545505 lt!545501)) (_2!9922 (tuple2!19825 lt!545505 lt!545501))))))

(assert (=> d!132573 (= lt!545655 (insertStrictlySorted!401 (toList!8918 lt!545506) (_1!9922 (tuple2!19825 lt!545505 lt!545501)) (_2!9922 (tuple2!19825 lt!545505 lt!545501))))))

(assert (=> d!132573 (= (+!3953 lt!545506 (tuple2!19825 lt!545505 lt!545501)) lt!545656)))

(declare-fun b!1203661 () Bool)

(declare-fun res!800995 () Bool)

(assert (=> b!1203661 (=> (not res!800995) (not e!683539))))

(assert (=> b!1203661 (= res!800995 (= (getValueByKey!634 (toList!8918 lt!545656) (_1!9922 (tuple2!19825 lt!545505 lt!545501))) (Some!684 (_2!9922 (tuple2!19825 lt!545505 lt!545501)))))))

(declare-fun b!1203662 () Bool)

(assert (=> b!1203662 (= e!683539 (contains!6919 (toList!8918 lt!545656) (tuple2!19825 lt!545505 lt!545501)))))

(assert (= (and d!132573 res!800994) b!1203661))

(assert (= (and b!1203661 res!800995) b!1203662))

(declare-fun m!1109593 () Bool)

(assert (=> d!132573 m!1109593))

(declare-fun m!1109595 () Bool)

(assert (=> d!132573 m!1109595))

(declare-fun m!1109597 () Bool)

(assert (=> d!132573 m!1109597))

(declare-fun m!1109599 () Bool)

(assert (=> d!132573 m!1109599))

(declare-fun m!1109601 () Bool)

(assert (=> b!1203661 m!1109601))

(declare-fun m!1109603 () Bool)

(assert (=> b!1203662 m!1109603))

(assert (=> b!1203367 d!132573))

(declare-fun d!132575 () Bool)

(declare-fun e!683540 () Bool)

(assert (=> d!132575 e!683540))

(declare-fun res!800996 () Bool)

(assert (=> d!132575 (=> (not res!800996) (not e!683540))))

(declare-fun lt!545660 () ListLongMap!17805)

(assert (=> d!132575 (= res!800996 (contains!6916 lt!545660 (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!545659 () List!26652)

(assert (=> d!132575 (= lt!545660 (ListLongMap!17806 lt!545659))))

(declare-fun lt!545658 () Unit!39811)

(declare-fun lt!545661 () Unit!39811)

(assert (=> d!132575 (= lt!545658 lt!545661)))

(assert (=> d!132575 (= (getValueByKey!634 lt!545659 (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132575 (= lt!545661 (lemmaContainsTupThenGetReturnValue!309 lt!545659 (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132575 (= lt!545659 (insertStrictlySorted!401 (toList!8918 call!58035) (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132575 (= (+!3953 call!58035 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!545660)))

(declare-fun b!1203663 () Bool)

(declare-fun res!800997 () Bool)

(assert (=> b!1203663 (=> (not res!800997) (not e!683540))))

(assert (=> b!1203663 (= res!800997 (= (getValueByKey!634 (toList!8918 lt!545660) (_1!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1203664 () Bool)

(assert (=> b!1203664 (= e!683540 (contains!6919 (toList!8918 lt!545660) (tuple2!19825 (select (arr!37620 lt!545369) from!1455) (get!19215 (select (arr!37619 lt!545375) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!132575 res!800996) b!1203663))

(assert (= (and b!1203663 res!800997) b!1203664))

(declare-fun m!1109605 () Bool)

(assert (=> d!132575 m!1109605))

(declare-fun m!1109607 () Bool)

(assert (=> d!132575 m!1109607))

(declare-fun m!1109609 () Bool)

(assert (=> d!132575 m!1109609))

(declare-fun m!1109611 () Bool)

(assert (=> d!132575 m!1109611))

(declare-fun m!1109613 () Bool)

(assert (=> b!1203663 m!1109613))

(declare-fun m!1109615 () Bool)

(assert (=> b!1203664 m!1109615))

(assert (=> b!1203367 d!132575))

(declare-fun b!1203665 () Bool)

(declare-fun e!683541 () Bool)

(declare-fun call!58061 () Bool)

(assert (=> b!1203665 (= e!683541 call!58061)))

(declare-fun b!1203666 () Bool)

(assert (=> b!1203666 (= e!683541 call!58061)))

(declare-fun b!1203667 () Bool)

(declare-fun e!683542 () Bool)

(assert (=> b!1203667 (= e!683542 (contains!6918 (ite c!117789 (Cons!26649 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) Nil!26650) Nil!26650) (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1203668 () Bool)

(declare-fun e!683543 () Bool)

(assert (=> b!1203668 (= e!683543 e!683541)))

(declare-fun c!117876 () Bool)

(assert (=> b!1203668 (= c!117876 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!132577 () Bool)

(declare-fun res!801000 () Bool)

(declare-fun e!683544 () Bool)

(assert (=> d!132577 (=> res!801000 e!683544)))

(assert (=> d!132577 (= res!801000 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(assert (=> d!132577 (= (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117789 (Cons!26649 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) Nil!26650) Nil!26650)) e!683544)))

(declare-fun b!1203669 () Bool)

(assert (=> b!1203669 (= e!683544 e!683543)))

(declare-fun res!800999 () Bool)

(assert (=> b!1203669 (=> (not res!800999) (not e!683543))))

(assert (=> b!1203669 (= res!800999 (not e!683542))))

(declare-fun res!800998 () Bool)

(assert (=> b!1203669 (=> (not res!800998) (not e!683542))))

(assert (=> b!1203669 (= res!800998 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!58058 () Bool)

(assert (=> bm!58058 (= call!58061 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!117876 (Cons!26649 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!117789 (Cons!26649 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) Nil!26650) Nil!26650)) (ite c!117789 (Cons!26649 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) Nil!26650) Nil!26650))))))

(assert (= (and d!132577 (not res!801000)) b!1203669))

(assert (= (and b!1203669 res!800998) b!1203667))

(assert (= (and b!1203669 res!800999) b!1203668))

(assert (= (and b!1203668 c!117876) b!1203666))

(assert (= (and b!1203668 (not c!117876)) b!1203665))

(assert (= (or b!1203666 b!1203665) bm!58058))

(assert (=> b!1203667 m!1109407))

(assert (=> b!1203667 m!1109407))

(declare-fun m!1109617 () Bool)

(assert (=> b!1203667 m!1109617))

(assert (=> b!1203668 m!1109407))

(assert (=> b!1203668 m!1109407))

(declare-fun m!1109619 () Bool)

(assert (=> b!1203668 m!1109619))

(assert (=> b!1203669 m!1109407))

(assert (=> b!1203669 m!1109407))

(assert (=> b!1203669 m!1109619))

(assert (=> bm!58058 m!1109407))

(declare-fun m!1109621 () Bool)

(assert (=> bm!58058 m!1109621))

(assert (=> bm!58034 d!132577))

(assert (=> b!1203338 d!132467))

(declare-fun e!683551 () Bool)

(declare-fun b!1203670 () Bool)

(declare-fun lt!545662 () ListLongMap!17805)

(assert (=> b!1203670 (= e!683551 (= lt!545662 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!132579 () Bool)

(declare-fun e!683550 () Bool)

(assert (=> d!132579 e!683550))

(declare-fun res!801001 () Bool)

(assert (=> d!132579 (=> (not res!801001) (not e!683550))))

(assert (=> d!132579 (= res!801001 (not (contains!6916 lt!545662 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!683549 () ListLongMap!17805)

(assert (=> d!132579 (= lt!545662 e!683549)))

(declare-fun c!117879 () Bool)

(assert (=> d!132579 (= c!117879 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(assert (=> d!132579 (validMask!0 mask!1564)))

(assert (=> d!132579 (= (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004) lt!545662)))

(declare-fun b!1203671 () Bool)

(declare-fun e!683547 () Bool)

(assert (=> b!1203671 (= e!683547 e!683551)))

(declare-fun c!117878 () Bool)

(assert (=> b!1203671 (= c!117878 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203672 () Bool)

(assert (=> b!1203672 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(assert (=> b!1203672 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38156 _values!996)))))

(declare-fun e!683548 () Bool)

(assert (=> b!1203672 (= e!683548 (= (apply!995 lt!545662 (select (arr!37620 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))) (get!19215 (select (arr!37619 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun call!58062 () ListLongMap!17805)

(declare-fun bm!58059 () Bool)

(assert (=> bm!58059 (= call!58062 (getCurrentListMapNoExtraKeys!5328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1203673 () Bool)

(assert (=> b!1203673 (= e!683550 e!683547)))

(declare-fun c!117880 () Bool)

(declare-fun e!683546 () Bool)

(assert (=> b!1203673 (= c!117880 e!683546)))

(declare-fun res!801003 () Bool)

(assert (=> b!1203673 (=> (not res!801003) (not e!683546))))

(assert (=> b!1203673 (= res!801003 (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203674 () Bool)

(assert (=> b!1203674 (= e!683546 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203674 (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1203675 () Bool)

(declare-fun res!801004 () Bool)

(assert (=> b!1203675 (=> (not res!801004) (not e!683550))))

(assert (=> b!1203675 (= res!801004 (not (contains!6916 lt!545662 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203676 () Bool)

(assert (=> b!1203676 (= e!683547 e!683548)))

(assert (=> b!1203676 (and (bvsge (bvadd from!1455 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!1455 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun res!801002 () Bool)

(assert (=> b!1203676 (= res!801002 (contains!6916 lt!545662 (select (arr!37620 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (=> b!1203676 (=> (not res!801002) (not e!683548))))

(declare-fun b!1203677 () Bool)

(declare-fun e!683545 () ListLongMap!17805)

(assert (=> b!1203677 (= e!683545 call!58062)))

(declare-fun b!1203678 () Bool)

(declare-fun lt!545666 () Unit!39811)

(declare-fun lt!545664 () Unit!39811)

(assert (=> b!1203678 (= lt!545666 lt!545664)))

(declare-fun lt!545663 () V!45931)

(declare-fun lt!545665 () (_ BitVec 64))

(declare-fun lt!545668 () ListLongMap!17805)

(declare-fun lt!545667 () (_ BitVec 64))

(assert (=> b!1203678 (not (contains!6916 (+!3953 lt!545668 (tuple2!19825 lt!545667 lt!545663)) lt!545665))))

(assert (=> b!1203678 (= lt!545664 (addStillNotContains!290 lt!545668 lt!545667 lt!545663 lt!545665))))

(assert (=> b!1203678 (= lt!545665 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1203678 (= lt!545663 (get!19215 (select (arr!37619 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1203678 (= lt!545667 (select (arr!37620 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)))))

(assert (=> b!1203678 (= lt!545668 call!58062)))

(assert (=> b!1203678 (= e!683545 (+!3953 call!58062 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001)) (get!19215 (select (arr!37619 _values!996) (bvadd from!1455 #b00000000000000000000000000000001)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1203679 () Bool)

(assert (=> b!1203679 (= e!683549 (ListLongMap!17806 Nil!26649))))

(declare-fun b!1203680 () Bool)

(assert (=> b!1203680 (= e!683551 (isEmpty!983 lt!545662))))

(declare-fun b!1203681 () Bool)

(assert (=> b!1203681 (= e!683549 e!683545)))

(declare-fun c!117877 () Bool)

(assert (=> b!1203681 (= c!117877 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd from!1455 #b00000000000000000000000000000001))))))

(assert (= (and d!132579 c!117879) b!1203679))

(assert (= (and d!132579 (not c!117879)) b!1203681))

(assert (= (and b!1203681 c!117877) b!1203678))

(assert (= (and b!1203681 (not c!117877)) b!1203677))

(assert (= (or b!1203678 b!1203677) bm!58059))

(assert (= (and d!132579 res!801001) b!1203675))

(assert (= (and b!1203675 res!801004) b!1203673))

(assert (= (and b!1203673 res!801003) b!1203674))

(assert (= (and b!1203673 c!117880) b!1203676))

(assert (= (and b!1203673 (not c!117880)) b!1203671))

(assert (= (and b!1203676 res!801002) b!1203672))

(assert (= (and b!1203671 c!117878) b!1203670))

(assert (= (and b!1203671 (not c!117878)) b!1203680))

(declare-fun b_lambda!21173 () Bool)

(assert (=> (not b_lambda!21173) (not b!1203672)))

(assert (=> b!1203672 t!39537))

(declare-fun b_and!42743 () Bool)

(assert (= b_and!42741 (and (=> t!39537 result!21983) b_and!42743)))

(declare-fun b_lambda!21175 () Bool)

(assert (=> (not b_lambda!21175) (not b!1203678)))

(assert (=> b!1203678 t!39537))

(declare-fun b_and!42745 () Bool)

(assert (= b_and!42743 (and (=> t!39537 result!21983) b_and!42745)))

(declare-fun m!1109623 () Bool)

(assert (=> b!1203670 m!1109623))

(declare-fun m!1109625 () Bool)

(assert (=> b!1203680 m!1109625))

(declare-fun m!1109627 () Bool)

(assert (=> b!1203675 m!1109627))

(declare-fun m!1109629 () Bool)

(assert (=> d!132579 m!1109629))

(assert (=> d!132579 m!1108917))

(declare-fun m!1109631 () Bool)

(assert (=> b!1203672 m!1109631))

(assert (=> b!1203672 m!1109631))

(assert (=> b!1203672 m!1108905))

(declare-fun m!1109633 () Bool)

(assert (=> b!1203672 m!1109633))

(declare-fun m!1109635 () Bool)

(assert (=> b!1203672 m!1109635))

(declare-fun m!1109637 () Bool)

(assert (=> b!1203672 m!1109637))

(assert (=> b!1203672 m!1108905))

(assert (=> b!1203672 m!1109635))

(assert (=> b!1203676 m!1109635))

(assert (=> b!1203676 m!1109635))

(declare-fun m!1109639 () Bool)

(assert (=> b!1203676 m!1109639))

(assert (=> b!1203678 m!1109631))

(declare-fun m!1109641 () Bool)

(assert (=> b!1203678 m!1109641))

(declare-fun m!1109643 () Bool)

(assert (=> b!1203678 m!1109643))

(assert (=> b!1203678 m!1109631))

(assert (=> b!1203678 m!1108905))

(assert (=> b!1203678 m!1109633))

(declare-fun m!1109645 () Bool)

(assert (=> b!1203678 m!1109645))

(assert (=> b!1203678 m!1109641))

(assert (=> b!1203678 m!1108905))

(declare-fun m!1109647 () Bool)

(assert (=> b!1203678 m!1109647))

(assert (=> b!1203678 m!1109635))

(assert (=> b!1203681 m!1109635))

(assert (=> b!1203681 m!1109635))

(declare-fun m!1109649 () Bool)

(assert (=> b!1203681 m!1109649))

(assert (=> bm!58059 m!1109623))

(assert (=> b!1203674 m!1109635))

(assert (=> b!1203674 m!1109635))

(assert (=> b!1203674 m!1109649))

(assert (=> b!1203371 d!132579))

(assert (=> b!1203399 d!132525))

(declare-fun d!132581 () Bool)

(assert (=> d!132581 (= (apply!995 lt!545507 (select (arr!37620 _keys!1208) from!1455)) (get!19218 (getValueByKey!634 (toList!8918 lt!545507) (select (arr!37620 _keys!1208) from!1455))))))

(declare-fun bs!34063 () Bool)

(assert (= bs!34063 d!132581))

(assert (=> bs!34063 m!1108875))

(declare-fun m!1109651 () Bool)

(assert (=> bs!34063 m!1109651))

(assert (=> bs!34063 m!1109651))

(declare-fun m!1109653 () Bool)

(assert (=> bs!34063 m!1109653))

(assert (=> b!1203373 d!132581))

(declare-fun d!132583 () Bool)

(declare-fun c!117881 () Bool)

(assert (=> d!132583 (= c!117881 ((_ is ValueCellFull!14592) (select (arr!37619 _values!996) from!1455)))))

(declare-fun e!683552 () V!45931)

(assert (=> d!132583 (= (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!683552)))

(declare-fun b!1203682 () Bool)

(assert (=> b!1203682 (= e!683552 (get!19216 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203683 () Bool)

(assert (=> b!1203683 (= e!683552 (get!19217 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132583 c!117881) b!1203682))

(assert (= (and d!132583 (not c!117881)) b!1203683))

(assert (=> b!1203682 m!1109143))

(assert (=> b!1203682 m!1108905))

(declare-fun m!1109655 () Bool)

(assert (=> b!1203682 m!1109655))

(assert (=> b!1203683 m!1109143))

(assert (=> b!1203683 m!1108905))

(declare-fun m!1109657 () Bool)

(assert (=> b!1203683 m!1109657))

(assert (=> b!1203373 d!132583))

(declare-fun d!132585 () Bool)

(assert (=> d!132585 (= (isEmpty!983 lt!545500) (isEmpty!985 (toList!8918 lt!545500)))))

(declare-fun bs!34064 () Bool)

(assert (= bs!34064 d!132585))

(declare-fun m!1109659 () Bool)

(assert (=> bs!34064 m!1109659))

(assert (=> b!1203369 d!132585))

(declare-fun bm!58060 () Bool)

(declare-fun call!58063 () Bool)

(assert (=> bm!58060 (= call!58063 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun d!132587 () Bool)

(declare-fun res!801005 () Bool)

(declare-fun e!683554 () Bool)

(assert (=> d!132587 (=> res!801005 e!683554)))

(assert (=> d!132587 (= res!801005 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(assert (=> d!132587 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564) e!683554)))

(declare-fun b!1203684 () Bool)

(declare-fun e!683555 () Bool)

(assert (=> b!1203684 (= e!683555 call!58063)))

(declare-fun b!1203685 () Bool)

(assert (=> b!1203685 (= e!683554 e!683555)))

(declare-fun c!117882 () Bool)

(assert (=> b!1203685 (= c!117882 (validKeyInArray!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1203686 () Bool)

(declare-fun e!683553 () Bool)

(assert (=> b!1203686 (= e!683555 e!683553)))

(declare-fun lt!545670 () (_ BitVec 64))

(assert (=> b!1203686 (= lt!545670 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!545671 () Unit!39811)

(assert (=> b!1203686 (= lt!545671 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!545670 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1203686 (arrayContainsKey!0 _keys!1208 lt!545670 #b00000000000000000000000000000000)))

(declare-fun lt!545669 () Unit!39811)

(assert (=> b!1203686 (= lt!545669 lt!545671)))

(declare-fun res!801006 () Bool)

(assert (=> b!1203686 (= res!801006 (= (seekEntryOrOpen!0 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1208 mask!1564) (Found!9930 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1203686 (=> (not res!801006) (not e!683553))))

(declare-fun b!1203687 () Bool)

(assert (=> b!1203687 (= e!683553 call!58063)))

(assert (= (and d!132587 (not res!801005)) b!1203685))

(assert (= (and b!1203685 c!117882) b!1203686))

(assert (= (and b!1203685 (not c!117882)) b!1203684))

(assert (= (and b!1203686 res!801006) b!1203687))

(assert (= (or b!1203687 b!1203684) bm!58060))

(declare-fun m!1109661 () Bool)

(assert (=> bm!58060 m!1109661))

(assert (=> b!1203685 m!1109407))

(assert (=> b!1203685 m!1109407))

(assert (=> b!1203685 m!1109619))

(assert (=> b!1203686 m!1109407))

(declare-fun m!1109663 () Bool)

(assert (=> b!1203686 m!1109663))

(declare-fun m!1109665 () Bool)

(assert (=> b!1203686 m!1109665))

(assert (=> b!1203686 m!1109407))

(declare-fun m!1109667 () Bool)

(assert (=> b!1203686 m!1109667))

(assert (=> bm!58021 d!132587))

(declare-fun d!132589 () Bool)

(assert (=> d!132589 (= (apply!995 lt!545486 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19218 (getValueByKey!634 (toList!8918 lt!545486) (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(declare-fun bs!34065 () Bool)

(assert (= bs!34065 d!132589))

(assert (=> bs!34065 m!1109079))

(declare-fun m!1109669 () Bool)

(assert (=> bs!34065 m!1109669))

(assert (=> bs!34065 m!1109669))

(declare-fun m!1109671 () Bool)

(assert (=> bs!34065 m!1109671))

(assert (=> b!1203340 d!132589))

(declare-fun d!132591 () Bool)

(declare-fun c!117883 () Bool)

(assert (=> d!132591 (= c!117883 ((_ is ValueCellFull!14592) (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!683556 () V!45931)

(assert (=> d!132591 (= (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)) e!683556)))

(declare-fun b!1203688 () Bool)

(assert (=> b!1203688 (= e!683556 (get!19216 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1203689 () Bool)

(assert (=> b!1203689 (= e!683556 (get!19217 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132591 c!117883) b!1203688))

(assert (= (and d!132591 (not c!117883)) b!1203689))

(assert (=> b!1203688 m!1109075))

(assert (=> b!1203688 m!1108905))

(declare-fun m!1109673 () Bool)

(assert (=> b!1203688 m!1109673))

(assert (=> b!1203689 m!1109075))

(assert (=> b!1203689 m!1108905))

(declare-fun m!1109675 () Bool)

(assert (=> b!1203689 m!1109675))

(assert (=> b!1203340 d!132591))

(declare-fun d!132593 () Bool)

(declare-fun res!801007 () Bool)

(declare-fun e!683557 () Bool)

(assert (=> d!132593 (=> res!801007 e!683557)))

(assert (=> d!132593 (= res!801007 (and ((_ is Cons!26648) (toList!8918 (ite c!117739 lt!545373 call!57991))) (= (_1!9922 (h!27857 (toList!8918 (ite c!117739 lt!545373 call!57991)))) k0!934)))))

(assert (=> d!132593 (= (containsKey!588 (toList!8918 (ite c!117739 lt!545373 call!57991)) k0!934) e!683557)))

(declare-fun b!1203690 () Bool)

(declare-fun e!683558 () Bool)

(assert (=> b!1203690 (= e!683557 e!683558)))

(declare-fun res!801008 () Bool)

(assert (=> b!1203690 (=> (not res!801008) (not e!683558))))

(assert (=> b!1203690 (= res!801008 (and (or (not ((_ is Cons!26648) (toList!8918 (ite c!117739 lt!545373 call!57991)))) (bvsle (_1!9922 (h!27857 (toList!8918 (ite c!117739 lt!545373 call!57991)))) k0!934)) ((_ is Cons!26648) (toList!8918 (ite c!117739 lt!545373 call!57991))) (bvslt (_1!9922 (h!27857 (toList!8918 (ite c!117739 lt!545373 call!57991)))) k0!934)))))

(declare-fun b!1203691 () Bool)

(assert (=> b!1203691 (= e!683558 (containsKey!588 (t!39538 (toList!8918 (ite c!117739 lt!545373 call!57991))) k0!934))))

(assert (= (and d!132593 (not res!801007)) b!1203690))

(assert (= (and b!1203690 res!801008) b!1203691))

(declare-fun m!1109677 () Bool)

(assert (=> b!1203691 m!1109677))

(assert (=> d!132455 d!132593))

(assert (=> b!1203269 d!132491))

(declare-fun b!1203692 () Bool)

(declare-fun e!683559 () Option!685)

(assert (=> b!1203692 (= e!683559 (Some!684 (_2!9922 (h!27857 (toList!8918 lt!545448)))))))

(declare-fun b!1203695 () Bool)

(declare-fun e!683560 () Option!685)

(assert (=> b!1203695 (= e!683560 None!683)))

(declare-fun b!1203693 () Bool)

(assert (=> b!1203693 (= e!683559 e!683560)))

(declare-fun c!117885 () Bool)

(assert (=> b!1203693 (= c!117885 (and ((_ is Cons!26648) (toList!8918 lt!545448)) (not (= (_1!9922 (h!27857 (toList!8918 lt!545448))) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun d!132595 () Bool)

(declare-fun c!117884 () Bool)

(assert (=> d!132595 (= c!117884 (and ((_ is Cons!26648) (toList!8918 lt!545448)) (= (_1!9922 (h!27857 (toList!8918 lt!545448))) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132595 (= (getValueByKey!634 (toList!8918 lt!545448) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) e!683559)))

(declare-fun b!1203694 () Bool)

(assert (=> b!1203694 (= e!683560 (getValueByKey!634 (t!39538 (toList!8918 lt!545448)) (_1!9922 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132595 c!117884) b!1203692))

(assert (= (and d!132595 (not c!117884)) b!1203693))

(assert (= (and b!1203693 c!117885) b!1203694))

(assert (= (and b!1203693 (not c!117885)) b!1203695))

(declare-fun m!1109679 () Bool)

(assert (=> b!1203694 m!1109679))

(assert (=> b!1203285 d!132595))

(declare-fun lt!545672 () Bool)

(declare-fun d!132597 () Bool)

(assert (=> d!132597 (= lt!545672 (select (content!547 (toList!8918 lt!545464)) (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun e!683561 () Bool)

(assert (=> d!132597 (= lt!545672 e!683561)))

(declare-fun res!801009 () Bool)

(assert (=> d!132597 (=> (not res!801009) (not e!683561))))

(assert (=> d!132597 (= res!801009 ((_ is Cons!26648) (toList!8918 lt!545464)))))

(assert (=> d!132597 (= (contains!6919 (toList!8918 lt!545464) (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!545672)))

(declare-fun b!1203696 () Bool)

(declare-fun e!683562 () Bool)

(assert (=> b!1203696 (= e!683561 e!683562)))

(declare-fun res!801010 () Bool)

(assert (=> b!1203696 (=> res!801010 e!683562)))

(assert (=> b!1203696 (= res!801010 (= (h!27857 (toList!8918 lt!545464)) (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1203697 () Bool)

(assert (=> b!1203697 (= e!683562 (contains!6919 (t!39538 (toList!8918 lt!545464)) (ite (or c!117739 c!117742) (tuple2!19825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132597 res!801009) b!1203696))

(assert (= (and b!1203696 (not res!801010)) b!1203697))

(declare-fun m!1109681 () Bool)

(assert (=> d!132597 m!1109681))

(declare-fun m!1109683 () Bool)

(assert (=> d!132597 m!1109683))

(declare-fun m!1109685 () Bool)

(assert (=> b!1203697 m!1109685))

(assert (=> b!1203304 d!132597))

(assert (=> b!1203300 d!132491))

(declare-fun d!132599 () Bool)

(declare-fun e!683563 () Bool)

(assert (=> d!132599 e!683563))

(declare-fun res!801011 () Bool)

(assert (=> d!132599 (=> res!801011 e!683563)))

(declare-fun lt!545674 () Bool)

(assert (=> d!132599 (= res!801011 (not lt!545674))))

(declare-fun lt!545676 () Bool)

(assert (=> d!132599 (= lt!545674 lt!545676)))

(declare-fun lt!545675 () Unit!39811)

(declare-fun e!683564 () Unit!39811)

(assert (=> d!132599 (= lt!545675 e!683564)))

(declare-fun c!117886 () Bool)

(assert (=> d!132599 (= c!117886 lt!545676)))

(assert (=> d!132599 (= lt!545676 (containsKey!588 (toList!8918 lt!545514) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132599 (= (contains!6916 lt!545514 #b1000000000000000000000000000000000000000000000000000000000000000) lt!545674)))

(declare-fun b!1203698 () Bool)

(declare-fun lt!545673 () Unit!39811)

(assert (=> b!1203698 (= e!683564 lt!545673)))

(assert (=> b!1203698 (= lt!545673 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545514) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203698 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545514) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203699 () Bool)

(declare-fun Unit!39833 () Unit!39811)

(assert (=> b!1203699 (= e!683564 Unit!39833)))

(declare-fun b!1203700 () Bool)

(assert (=> b!1203700 (= e!683563 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545514) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132599 c!117886) b!1203698))

(assert (= (and d!132599 (not c!117886)) b!1203699))

(assert (= (and d!132599 (not res!801011)) b!1203700))

(declare-fun m!1109687 () Bool)

(assert (=> d!132599 m!1109687))

(declare-fun m!1109689 () Bool)

(assert (=> b!1203698 m!1109689))

(declare-fun m!1109691 () Bool)

(assert (=> b!1203698 m!1109691))

(assert (=> b!1203698 m!1109691))

(declare-fun m!1109693 () Bool)

(assert (=> b!1203698 m!1109693))

(assert (=> b!1203700 m!1109691))

(assert (=> b!1203700 m!1109691))

(assert (=> b!1203700 m!1109693))

(assert (=> b!1203393 d!132599))

(declare-fun bm!58061 () Bool)

(declare-fun call!58064 () Bool)

(assert (=> bm!58061 (= call!58064 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!545369 mask!1564))))

(declare-fun d!132601 () Bool)

(declare-fun res!801012 () Bool)

(declare-fun e!683566 () Bool)

(assert (=> d!132601 (=> res!801012 e!683566)))

(assert (=> d!132601 (= res!801012 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(assert (=> d!132601 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!545369 mask!1564) e!683566)))

(declare-fun b!1203701 () Bool)

(declare-fun e!683567 () Bool)

(assert (=> b!1203701 (= e!683567 call!58064)))

(declare-fun b!1203702 () Bool)

(assert (=> b!1203702 (= e!683566 e!683567)))

(declare-fun c!117887 () Bool)

(assert (=> b!1203702 (= c!117887 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1203703 () Bool)

(declare-fun e!683565 () Bool)

(assert (=> b!1203703 (= e!683567 e!683565)))

(declare-fun lt!545678 () (_ BitVec 64))

(assert (=> b!1203703 (= lt!545678 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!545679 () Unit!39811)

(assert (=> b!1203703 (= lt!545679 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!545369 lt!545678 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1203703 (arrayContainsKey!0 lt!545369 lt!545678 #b00000000000000000000000000000000)))

(declare-fun lt!545677 () Unit!39811)

(assert (=> b!1203703 (= lt!545677 lt!545679)))

(declare-fun res!801013 () Bool)

(assert (=> b!1203703 (= res!801013 (= (seekEntryOrOpen!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!545369 mask!1564) (Found!9930 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1203703 (=> (not res!801013) (not e!683565))))

(declare-fun b!1203704 () Bool)

(assert (=> b!1203704 (= e!683565 call!58064)))

(assert (= (and d!132601 (not res!801012)) b!1203702))

(assert (= (and b!1203702 c!117887) b!1203703))

(assert (= (and b!1203702 (not c!117887)) b!1203701))

(assert (= (and b!1203703 res!801013) b!1203704))

(assert (= (or b!1203704 b!1203701) bm!58061))

(declare-fun m!1109695 () Bool)

(assert (=> bm!58061 m!1109695))

(declare-fun m!1109697 () Bool)

(assert (=> b!1203702 m!1109697))

(assert (=> b!1203702 m!1109697))

(declare-fun m!1109699 () Bool)

(assert (=> b!1203702 m!1109699))

(assert (=> b!1203703 m!1109697))

(declare-fun m!1109701 () Bool)

(assert (=> b!1203703 m!1109701))

(declare-fun m!1109703 () Bool)

(assert (=> b!1203703 m!1109703))

(assert (=> b!1203703 m!1109697))

(declare-fun m!1109705 () Bool)

(assert (=> b!1203703 m!1109705))

(assert (=> bm!58022 d!132601))

(assert (=> bm!58032 d!132533))

(declare-fun d!132603 () Bool)

(declare-fun e!683568 () Bool)

(assert (=> d!132603 e!683568))

(declare-fun res!801014 () Bool)

(assert (=> d!132603 (=> res!801014 e!683568)))

(declare-fun lt!545681 () Bool)

(assert (=> d!132603 (= res!801014 (not lt!545681))))

(declare-fun lt!545683 () Bool)

(assert (=> d!132603 (= lt!545681 lt!545683)))

(declare-fun lt!545682 () Unit!39811)

(declare-fun e!683569 () Unit!39811)

(assert (=> d!132603 (= lt!545682 e!683569)))

(declare-fun c!117888 () Bool)

(assert (=> d!132603 (= c!117888 lt!545683)))

(assert (=> d!132603 (= lt!545683 (containsKey!588 (toList!8918 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))) k0!934))))

(assert (=> d!132603 (= (contains!6916 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))) k0!934) lt!545681)))

(declare-fun b!1203705 () Bool)

(declare-fun lt!545680 () Unit!39811)

(assert (=> b!1203705 (= e!683569 lt!545680)))

(assert (=> b!1203705 (= lt!545680 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))) k0!934))))

(assert (=> b!1203705 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))) k0!934))))

(declare-fun b!1203706 () Bool)

(declare-fun Unit!39834 () Unit!39811)

(assert (=> b!1203706 (= e!683569 Unit!39834)))

(declare-fun b!1203707 () Bool)

(assert (=> b!1203707 (= e!683568 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))) k0!934)))))

(assert (= (and d!132603 c!117888) b!1203705))

(assert (= (and d!132603 (not c!117888)) b!1203706))

(assert (= (and d!132603 (not res!801014)) b!1203707))

(declare-fun m!1109707 () Bool)

(assert (=> d!132603 m!1109707))

(declare-fun m!1109709 () Bool)

(assert (=> b!1203705 m!1109709))

(declare-fun m!1109711 () Bool)

(assert (=> b!1203705 m!1109711))

(assert (=> b!1203705 m!1109711))

(declare-fun m!1109713 () Bool)

(assert (=> b!1203705 m!1109713))

(assert (=> b!1203707 m!1109711))

(assert (=> b!1203707 m!1109711))

(assert (=> b!1203707 m!1109713))

(assert (=> d!132457 d!132603))

(declare-fun d!132605 () Bool)

(declare-fun e!683570 () Bool)

(assert (=> d!132605 e!683570))

(declare-fun res!801015 () Bool)

(assert (=> d!132605 (=> (not res!801015) (not e!683570))))

(declare-fun lt!545686 () ListLongMap!17805)

(assert (=> d!132605 (= res!801015 (contains!6916 lt!545686 (_1!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))))))

(declare-fun lt!545685 () List!26652)

(assert (=> d!132605 (= lt!545686 (ListLongMap!17806 lt!545685))))

(declare-fun lt!545684 () Unit!39811)

(declare-fun lt!545687 () Unit!39811)

(assert (=> d!132605 (= lt!545684 lt!545687)))

(assert (=> d!132605 (= (getValueByKey!634 lt!545685 (_1!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))) (Some!684 (_2!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))))))

(assert (=> d!132605 (= lt!545687 (lemmaContainsTupThenGetReturnValue!309 lt!545685 (_1!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))) (_2!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))))))

(assert (=> d!132605 (= lt!545685 (insertStrictlySorted!401 (toList!8918 (ite c!117739 lt!545373 lt!545376)) (_1!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))) (_2!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))))))

(assert (=> d!132605 (= (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))) lt!545686)))

(declare-fun b!1203708 () Bool)

(declare-fun res!801016 () Bool)

(assert (=> b!1203708 (=> (not res!801016) (not e!683570))))

(assert (=> b!1203708 (= res!801016 (= (getValueByKey!634 (toList!8918 lt!545686) (_1!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944))))) (Some!684 (_2!9922 (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))))))))

(declare-fun b!1203709 () Bool)

(assert (=> b!1203709 (= e!683570 (contains!6919 (toList!8918 lt!545686) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))))))

(assert (= (and d!132605 res!801015) b!1203708))

(assert (= (and b!1203708 res!801016) b!1203709))

(declare-fun m!1109715 () Bool)

(assert (=> d!132605 m!1109715))

(declare-fun m!1109717 () Bool)

(assert (=> d!132605 m!1109717))

(declare-fun m!1109719 () Bool)

(assert (=> d!132605 m!1109719))

(declare-fun m!1109721 () Bool)

(assert (=> d!132605 m!1109721))

(declare-fun m!1109723 () Bool)

(assert (=> b!1203708 m!1109723))

(declare-fun m!1109725 () Bool)

(assert (=> b!1203709 m!1109725))

(assert (=> d!132457 d!132605))

(declare-fun d!132607 () Bool)

(assert (=> d!132607 (contains!6916 (+!3953 (ite c!117739 lt!545373 lt!545376) (tuple2!19825 (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)))) k0!934)))

(assert (=> d!132607 true))

(declare-fun _$35!455 () Unit!39811)

(assert (=> d!132607 (= (choose!1792 (ite c!117739 lt!545373 lt!545376) (ite c!117739 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117742 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117739 minValue!944 (ite c!117742 zeroValue!944 minValue!944)) k0!934) _$35!455)))

(declare-fun bs!34066 () Bool)

(assert (= bs!34066 d!132607))

(assert (=> bs!34066 m!1109201))

(assert (=> bs!34066 m!1109201))

(assert (=> bs!34066 m!1109203))

(assert (=> d!132457 d!132607))

(declare-fun d!132609 () Bool)

(declare-fun e!683571 () Bool)

(assert (=> d!132609 e!683571))

(declare-fun res!801017 () Bool)

(assert (=> d!132609 (=> res!801017 e!683571)))

(declare-fun lt!545689 () Bool)

(assert (=> d!132609 (= res!801017 (not lt!545689))))

(declare-fun lt!545691 () Bool)

(assert (=> d!132609 (= lt!545689 lt!545691)))

(declare-fun lt!545690 () Unit!39811)

(declare-fun e!683572 () Unit!39811)

(assert (=> d!132609 (= lt!545690 e!683572)))

(declare-fun c!117889 () Bool)

(assert (=> d!132609 (= c!117889 lt!545691)))

(assert (=> d!132609 (= lt!545691 (containsKey!588 (toList!8918 (ite c!117739 lt!545373 lt!545376)) k0!934))))

(assert (=> d!132609 (= (contains!6916 (ite c!117739 lt!545373 lt!545376) k0!934) lt!545689)))

(declare-fun b!1203710 () Bool)

(declare-fun lt!545688 () Unit!39811)

(assert (=> b!1203710 (= e!683572 lt!545688)))

(assert (=> b!1203710 (= lt!545688 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (ite c!117739 lt!545373 lt!545376)) k0!934))))

(assert (=> b!1203710 (isDefined!457 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 lt!545376)) k0!934))))

(declare-fun b!1203711 () Bool)

(declare-fun Unit!39835 () Unit!39811)

(assert (=> b!1203711 (= e!683572 Unit!39835)))

(declare-fun b!1203712 () Bool)

(assert (=> b!1203712 (= e!683571 (isDefined!457 (getValueByKey!634 (toList!8918 (ite c!117739 lt!545373 lt!545376)) k0!934)))))

(assert (= (and d!132609 c!117889) b!1203710))

(assert (= (and d!132609 (not c!117889)) b!1203711))

(assert (= (and d!132609 (not res!801017)) b!1203712))

(declare-fun m!1109727 () Bool)

(assert (=> d!132609 m!1109727))

(declare-fun m!1109729 () Bool)

(assert (=> b!1203710 m!1109729))

(declare-fun m!1109731 () Bool)

(assert (=> b!1203710 m!1109731))

(assert (=> b!1203710 m!1109731))

(declare-fun m!1109733 () Bool)

(assert (=> b!1203710 m!1109733))

(assert (=> b!1203712 m!1109731))

(assert (=> b!1203712 m!1109731))

(assert (=> b!1203712 m!1109733))

(assert (=> d!132457 d!132609))

(declare-fun d!132611 () Bool)

(assert (=> d!132611 (= (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)) (not (isEmpty!984 (getValueByKey!634 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))))

(declare-fun bs!34067 () Bool)

(assert (= bs!34067 d!132611))

(assert (=> bs!34067 m!1109009))

(declare-fun m!1109735 () Bool)

(assert (=> bs!34067 m!1109735))

(assert (=> b!1203280 d!132611))

(declare-fun b!1203713 () Bool)

(declare-fun e!683573 () Option!685)

(assert (=> b!1203713 (= e!683573 (Some!684 (_2!9922 (h!27857 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1203716 () Bool)

(declare-fun e!683574 () Option!685)

(assert (=> b!1203716 (= e!683574 None!683)))

(declare-fun b!1203714 () Bool)

(assert (=> b!1203714 (= e!683573 e!683574)))

(declare-fun c!117891 () Bool)

(assert (=> b!1203714 (= c!117891 (and ((_ is Cons!26648) (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (not (= (_1!9922 (h!27857 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934))))))

(declare-fun d!132613 () Bool)

(declare-fun c!117890 () Bool)

(assert (=> d!132613 (= c!117890 (and ((_ is Cons!26648) (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (= (_1!9922 (h!27857 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) k0!934)))))

(assert (=> d!132613 (= (getValueByKey!634 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934) e!683573)))

(declare-fun b!1203715 () Bool)

(assert (=> b!1203715 (= e!683574 (getValueByKey!634 (t!39538 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) k0!934))))

(assert (= (and d!132613 c!117890) b!1203713))

(assert (= (and d!132613 (not c!117890)) b!1203714))

(assert (= (and b!1203714 c!117891) b!1203715))

(assert (= (and b!1203714 (not c!117891)) b!1203716))

(declare-fun m!1109737 () Bool)

(assert (=> b!1203715 m!1109737))

(assert (=> b!1203280 d!132613))

(declare-fun d!132615 () Bool)

(declare-fun e!683575 () Bool)

(assert (=> d!132615 e!683575))

(declare-fun res!801018 () Bool)

(assert (=> d!132615 (=> res!801018 e!683575)))

(declare-fun lt!545693 () Bool)

(assert (=> d!132615 (= res!801018 (not lt!545693))))

(declare-fun lt!545695 () Bool)

(assert (=> d!132615 (= lt!545693 lt!545695)))

(declare-fun lt!545694 () Unit!39811)

(declare-fun e!683576 () Unit!39811)

(assert (=> d!132615 (= lt!545694 e!683576)))

(declare-fun c!117892 () Bool)

(assert (=> d!132615 (= c!117892 lt!545695)))

(assert (=> d!132615 (= lt!545695 (containsKey!588 (toList!8918 lt!545500) (select (arr!37620 lt!545369) from!1455)))))

(assert (=> d!132615 (= (contains!6916 lt!545500 (select (arr!37620 lt!545369) from!1455)) lt!545693)))

(declare-fun b!1203717 () Bool)

(declare-fun lt!545692 () Unit!39811)

(assert (=> b!1203717 (= e!683576 lt!545692)))

(assert (=> b!1203717 (= lt!545692 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545500) (select (arr!37620 lt!545369) from!1455)))))

(assert (=> b!1203717 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545500) (select (arr!37620 lt!545369) from!1455)))))

(declare-fun b!1203718 () Bool)

(declare-fun Unit!39836 () Unit!39811)

(assert (=> b!1203718 (= e!683576 Unit!39836)))

(declare-fun b!1203719 () Bool)

(assert (=> b!1203719 (= e!683575 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545500) (select (arr!37620 lt!545369) from!1455))))))

(assert (= (and d!132615 c!117892) b!1203717))

(assert (= (and d!132615 (not c!117892)) b!1203718))

(assert (= (and d!132615 (not res!801018)) b!1203719))

(assert (=> d!132615 m!1109119))

(declare-fun m!1109739 () Bool)

(assert (=> d!132615 m!1109739))

(assert (=> b!1203717 m!1109119))

(declare-fun m!1109741 () Bool)

(assert (=> b!1203717 m!1109741))

(assert (=> b!1203717 m!1109119))

(assert (=> b!1203717 m!1109411))

(assert (=> b!1203717 m!1109411))

(declare-fun m!1109743 () Bool)

(assert (=> b!1203717 m!1109743))

(assert (=> b!1203719 m!1109119))

(assert (=> b!1203719 m!1109411))

(assert (=> b!1203719 m!1109411))

(assert (=> b!1203719 m!1109743))

(assert (=> b!1203365 d!132615))

(assert (=> b!1203386 d!132459))

(declare-fun d!132617 () Bool)

(assert (=> d!132617 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun lt!545696 () Unit!39811)

(assert (=> d!132617 (= lt!545696 (choose!1794 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun e!683577 () Bool)

(assert (=> d!132617 e!683577))

(declare-fun res!801019 () Bool)

(assert (=> d!132617 (=> (not res!801019) (not e!683577))))

(assert (=> d!132617 (= res!801019 (isStrictlySorted!724 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132617 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934) lt!545696)))

(declare-fun b!1203720 () Bool)

(assert (=> b!1203720 (= e!683577 (containsKey!588 (toList!8918 (+!3953 lt!545373 (tuple2!19825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (= (and d!132617 res!801019) b!1203720))

(assert (=> d!132617 m!1109009))

(assert (=> d!132617 m!1109009))

(assert (=> d!132617 m!1109011))

(declare-fun m!1109745 () Bool)

(assert (=> d!132617 m!1109745))

(declare-fun m!1109747 () Bool)

(assert (=> d!132617 m!1109747))

(assert (=> b!1203720 m!1109005))

(assert (=> b!1203278 d!132617))

(assert (=> b!1203278 d!132611))

(assert (=> b!1203278 d!132613))

(assert (=> b!1203363 d!132465))

(declare-fun b!1203721 () Bool)

(declare-fun e!683578 () Bool)

(declare-fun call!58065 () Bool)

(assert (=> b!1203721 (= e!683578 call!58065)))

(declare-fun b!1203722 () Bool)

(assert (=> b!1203722 (= e!683578 call!58065)))

(declare-fun b!1203723 () Bool)

(declare-fun e!683579 () Bool)

(assert (=> b!1203723 (= e!683579 (contains!6918 (ite c!117757 (Cons!26649 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) Nil!26650) Nil!26650) (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1203724 () Bool)

(declare-fun e!683580 () Bool)

(assert (=> b!1203724 (= e!683580 e!683578)))

(declare-fun c!117893 () Bool)

(assert (=> b!1203724 (= c!117893 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!132619 () Bool)

(declare-fun res!801022 () Bool)

(declare-fun e!683581 () Bool)

(assert (=> d!132619 (=> res!801022 e!683581)))

(assert (=> d!132619 (= res!801022 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 lt!545369)))))

(assert (=> d!132619 (= (arrayNoDuplicates!0 lt!545369 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117757 (Cons!26649 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) Nil!26650) Nil!26650)) e!683581)))

(declare-fun b!1203725 () Bool)

(assert (=> b!1203725 (= e!683581 e!683580)))

(declare-fun res!801021 () Bool)

(assert (=> b!1203725 (=> (not res!801021) (not e!683580))))

(assert (=> b!1203725 (= res!801021 (not e!683579))))

(declare-fun res!801020 () Bool)

(assert (=> b!1203725 (=> (not res!801020) (not e!683579))))

(assert (=> b!1203725 (= res!801020 (validKeyInArray!0 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!58062 () Bool)

(assert (=> bm!58062 (= call!58065 (arrayNoDuplicates!0 lt!545369 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!117893 (Cons!26649 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!117757 (Cons!26649 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) Nil!26650) Nil!26650)) (ite c!117757 (Cons!26649 (select (arr!37620 lt!545369) #b00000000000000000000000000000000) Nil!26650) Nil!26650))))))

(assert (= (and d!132619 (not res!801022)) b!1203725))

(assert (= (and b!1203725 res!801020) b!1203723))

(assert (= (and b!1203725 res!801021) b!1203724))

(assert (= (and b!1203724 c!117893) b!1203722))

(assert (= (and b!1203724 (not c!117893)) b!1203721))

(assert (= (or b!1203722 b!1203721) bm!58062))

(assert (=> b!1203723 m!1109697))

(assert (=> b!1203723 m!1109697))

(declare-fun m!1109749 () Bool)

(assert (=> b!1203723 m!1109749))

(assert (=> b!1203724 m!1109697))

(assert (=> b!1203724 m!1109697))

(assert (=> b!1203724 m!1109699))

(assert (=> b!1203725 m!1109697))

(assert (=> b!1203725 m!1109697))

(assert (=> b!1203725 m!1109699))

(assert (=> bm!58062 m!1109697))

(declare-fun m!1109751 () Bool)

(assert (=> bm!58062 m!1109751))

(assert (=> bm!58018 d!132619))

(declare-fun d!132621 () Bool)

(assert (=> d!132621 (= (apply!995 lt!545514 (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19218 (getValueByKey!634 (toList!8918 lt!545514) (select (arr!37620 lt!545369) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(declare-fun bs!34068 () Bool)

(assert (= bs!34068 d!132621))

(assert (=> bs!34068 m!1109177))

(assert (=> bs!34068 m!1109267))

(assert (=> bs!34068 m!1109267))

(declare-fun m!1109753 () Bool)

(assert (=> bs!34068 m!1109753))

(assert (=> b!1203390 d!132621))

(assert (=> b!1203390 d!132495))

(declare-fun d!132623 () Bool)

(assert (=> d!132623 (= (isEmpty!983 lt!545486) (isEmpty!985 (toList!8918 lt!545486)))))

(declare-fun bs!34069 () Bool)

(assert (= bs!34069 d!132623))

(declare-fun m!1109755 () Bool)

(assert (=> bs!34069 m!1109755))

(assert (=> b!1203348 d!132623))

(declare-fun d!132625 () Bool)

(declare-fun e!683582 () Bool)

(assert (=> d!132625 e!683582))

(declare-fun res!801023 () Bool)

(assert (=> d!132625 (=> (not res!801023) (not e!683582))))

(declare-fun lt!545699 () ListLongMap!17805)

(assert (=> d!132625 (= res!801023 (contains!6916 lt!545699 (_1!9922 (tuple2!19825 lt!545491 lt!545487))))))

(declare-fun lt!545698 () List!26652)

(assert (=> d!132625 (= lt!545699 (ListLongMap!17806 lt!545698))))

(declare-fun lt!545697 () Unit!39811)

(declare-fun lt!545700 () Unit!39811)

(assert (=> d!132625 (= lt!545697 lt!545700)))

(assert (=> d!132625 (= (getValueByKey!634 lt!545698 (_1!9922 (tuple2!19825 lt!545491 lt!545487))) (Some!684 (_2!9922 (tuple2!19825 lt!545491 lt!545487))))))

(assert (=> d!132625 (= lt!545700 (lemmaContainsTupThenGetReturnValue!309 lt!545698 (_1!9922 (tuple2!19825 lt!545491 lt!545487)) (_2!9922 (tuple2!19825 lt!545491 lt!545487))))))

(assert (=> d!132625 (= lt!545698 (insertStrictlySorted!401 (toList!8918 lt!545492) (_1!9922 (tuple2!19825 lt!545491 lt!545487)) (_2!9922 (tuple2!19825 lt!545491 lt!545487))))))

(assert (=> d!132625 (= (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487)) lt!545699)))

(declare-fun b!1203726 () Bool)

(declare-fun res!801024 () Bool)

(assert (=> b!1203726 (=> (not res!801024) (not e!683582))))

(assert (=> b!1203726 (= res!801024 (= (getValueByKey!634 (toList!8918 lt!545699) (_1!9922 (tuple2!19825 lt!545491 lt!545487))) (Some!684 (_2!9922 (tuple2!19825 lt!545491 lt!545487)))))))

(declare-fun b!1203727 () Bool)

(assert (=> b!1203727 (= e!683582 (contains!6919 (toList!8918 lt!545699) (tuple2!19825 lt!545491 lt!545487)))))

(assert (= (and d!132625 res!801023) b!1203726))

(assert (= (and b!1203726 res!801024) b!1203727))

(declare-fun m!1109757 () Bool)

(assert (=> d!132625 m!1109757))

(declare-fun m!1109759 () Bool)

(assert (=> d!132625 m!1109759))

(declare-fun m!1109761 () Bool)

(assert (=> d!132625 m!1109761))

(declare-fun m!1109763 () Bool)

(assert (=> d!132625 m!1109763))

(declare-fun m!1109765 () Bool)

(assert (=> b!1203726 m!1109765))

(declare-fun m!1109767 () Bool)

(assert (=> b!1203727 m!1109767))

(assert (=> b!1203346 d!132625))

(declare-fun d!132627 () Bool)

(assert (=> d!132627 (not (contains!6916 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487)) lt!545489))))

(declare-fun lt!545701 () Unit!39811)

(assert (=> d!132627 (= lt!545701 (choose!1795 lt!545492 lt!545491 lt!545487 lt!545489))))

(declare-fun e!683583 () Bool)

(assert (=> d!132627 e!683583))

(declare-fun res!801025 () Bool)

(assert (=> d!132627 (=> (not res!801025) (not e!683583))))

(assert (=> d!132627 (= res!801025 (not (contains!6916 lt!545492 lt!545489)))))

(assert (=> d!132627 (= (addStillNotContains!290 lt!545492 lt!545491 lt!545487 lt!545489) lt!545701)))

(declare-fun b!1203728 () Bool)

(assert (=> b!1203728 (= e!683583 (not (= lt!545491 lt!545489)))))

(assert (= (and d!132627 res!801025) b!1203728))

(assert (=> d!132627 m!1109085))

(assert (=> d!132627 m!1109085))

(assert (=> d!132627 m!1109087))

(declare-fun m!1109769 () Bool)

(assert (=> d!132627 m!1109769))

(declare-fun m!1109771 () Bool)

(assert (=> d!132627 m!1109771))

(assert (=> b!1203346 d!132627))

(declare-fun d!132629 () Bool)

(declare-fun e!683584 () Bool)

(assert (=> d!132629 e!683584))

(declare-fun res!801026 () Bool)

(assert (=> d!132629 (=> res!801026 e!683584)))

(declare-fun lt!545703 () Bool)

(assert (=> d!132629 (= res!801026 (not lt!545703))))

(declare-fun lt!545705 () Bool)

(assert (=> d!132629 (= lt!545703 lt!545705)))

(declare-fun lt!545704 () Unit!39811)

(declare-fun e!683585 () Unit!39811)

(assert (=> d!132629 (= lt!545704 e!683585)))

(declare-fun c!117894 () Bool)

(assert (=> d!132629 (= c!117894 lt!545705)))

(assert (=> d!132629 (= lt!545705 (containsKey!588 (toList!8918 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487))) lt!545489))))

(assert (=> d!132629 (= (contains!6916 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487)) lt!545489) lt!545703)))

(declare-fun b!1203729 () Bool)

(declare-fun lt!545702 () Unit!39811)

(assert (=> b!1203729 (= e!683585 lt!545702)))

(assert (=> b!1203729 (= lt!545702 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487))) lt!545489))))

(assert (=> b!1203729 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487))) lt!545489))))

(declare-fun b!1203730 () Bool)

(declare-fun Unit!39837 () Unit!39811)

(assert (=> b!1203730 (= e!683585 Unit!39837)))

(declare-fun b!1203731 () Bool)

(assert (=> b!1203731 (= e!683584 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545492 (tuple2!19825 lt!545491 lt!545487))) lt!545489)))))

(assert (= (and d!132629 c!117894) b!1203729))

(assert (= (and d!132629 (not c!117894)) b!1203730))

(assert (= (and d!132629 (not res!801026)) b!1203731))

(declare-fun m!1109773 () Bool)

(assert (=> d!132629 m!1109773))

(declare-fun m!1109775 () Bool)

(assert (=> b!1203729 m!1109775))

(declare-fun m!1109777 () Bool)

(assert (=> b!1203729 m!1109777))

(assert (=> b!1203729 m!1109777))

(declare-fun m!1109779 () Bool)

(assert (=> b!1203729 m!1109779))

(assert (=> b!1203731 m!1109777))

(assert (=> b!1203731 m!1109777))

(assert (=> b!1203731 m!1109779))

(assert (=> b!1203346 d!132629))

(declare-fun d!132631 () Bool)

(declare-fun e!683586 () Bool)

(assert (=> d!132631 e!683586))

(declare-fun res!801027 () Bool)

(assert (=> d!132631 (=> (not res!801027) (not e!683586))))

(declare-fun lt!545708 () ListLongMap!17805)

(assert (=> d!132631 (= res!801027 (contains!6916 lt!545708 (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!545707 () List!26652)

(assert (=> d!132631 (= lt!545708 (ListLongMap!17806 lt!545707))))

(declare-fun lt!545706 () Unit!39811)

(declare-fun lt!545709 () Unit!39811)

(assert (=> d!132631 (= lt!545706 lt!545709)))

(assert (=> d!132631 (= (getValueByKey!634 lt!545707 (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132631 (= lt!545709 (lemmaContainsTupThenGetReturnValue!309 lt!545707 (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132631 (= lt!545707 (insertStrictlySorted!401 (toList!8918 call!58034) (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132631 (= (+!3953 call!58034 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!545708)))

(declare-fun b!1203732 () Bool)

(declare-fun res!801028 () Bool)

(assert (=> b!1203732 (=> (not res!801028) (not e!683586))))

(assert (=> b!1203732 (= res!801028 (= (getValueByKey!634 (toList!8918 lt!545708) (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1203733 () Bool)

(assert (=> b!1203733 (= e!683586 (contains!6919 (toList!8918 lt!545708) (tuple2!19825 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19215 (select (arr!37619 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!132631 res!801027) b!1203732))

(assert (= (and b!1203732 res!801028) b!1203733))

(declare-fun m!1109781 () Bool)

(assert (=> d!132631 m!1109781))

(declare-fun m!1109783 () Bool)

(assert (=> d!132631 m!1109783))

(declare-fun m!1109785 () Bool)

(assert (=> d!132631 m!1109785))

(declare-fun m!1109787 () Bool)

(assert (=> d!132631 m!1109787))

(declare-fun m!1109789 () Bool)

(assert (=> b!1203732 m!1109789))

(declare-fun m!1109791 () Bool)

(assert (=> b!1203733 m!1109791))

(assert (=> b!1203346 d!132631))

(assert (=> b!1203346 d!132591))

(declare-fun d!132633 () Bool)

(declare-fun e!683587 () Bool)

(assert (=> d!132633 e!683587))

(declare-fun res!801029 () Bool)

(assert (=> d!132633 (=> res!801029 e!683587)))

(declare-fun lt!545711 () Bool)

(assert (=> d!132633 (= res!801029 (not lt!545711))))

(declare-fun lt!545713 () Bool)

(assert (=> d!132633 (= lt!545711 lt!545713)))

(declare-fun lt!545712 () Unit!39811)

(declare-fun e!683588 () Unit!39811)

(assert (=> d!132633 (= lt!545712 e!683588)))

(declare-fun c!117895 () Bool)

(assert (=> d!132633 (= c!117895 lt!545713)))

(assert (=> d!132633 (= lt!545713 (containsKey!588 (toList!8918 lt!545500) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!132633 (= (contains!6916 lt!545500 #b0000000000000000000000000000000000000000000000000000000000000000) lt!545711)))

(declare-fun b!1203734 () Bool)

(declare-fun lt!545710 () Unit!39811)

(assert (=> b!1203734 (= e!683588 lt!545710)))

(assert (=> b!1203734 (= lt!545710 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545500) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1203734 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545500) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1203735 () Bool)

(declare-fun Unit!39838 () Unit!39811)

(assert (=> b!1203735 (= e!683588 Unit!39838)))

(declare-fun b!1203736 () Bool)

(assert (=> b!1203736 (= e!683587 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545500) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!132633 c!117895) b!1203734))

(assert (= (and d!132633 (not c!117895)) b!1203735))

(assert (= (and d!132633 (not res!801029)) b!1203736))

(declare-fun m!1109793 () Bool)

(assert (=> d!132633 m!1109793))

(declare-fun m!1109795 () Bool)

(assert (=> b!1203734 m!1109795))

(declare-fun m!1109797 () Bool)

(assert (=> b!1203734 m!1109797))

(assert (=> b!1203734 m!1109797))

(declare-fun m!1109799 () Bool)

(assert (=> b!1203734 m!1109799))

(assert (=> b!1203736 m!1109797))

(assert (=> b!1203736 m!1109797))

(assert (=> b!1203736 m!1109799))

(assert (=> d!132447 d!132633))

(assert (=> d!132447 d!132443))

(declare-fun d!132635 () Bool)

(declare-fun res!801030 () Bool)

(declare-fun e!683589 () Bool)

(assert (=> d!132635 (=> res!801030 e!683589)))

(assert (=> d!132635 (= res!801030 (and ((_ is Cons!26648) (toList!8918 lt!545376)) (= (_1!9922 (h!27857 (toList!8918 lt!545376))) k0!934)))))

(assert (=> d!132635 (= (containsKey!588 (toList!8918 lt!545376) k0!934) e!683589)))

(declare-fun b!1203737 () Bool)

(declare-fun e!683590 () Bool)

(assert (=> b!1203737 (= e!683589 e!683590)))

(declare-fun res!801031 () Bool)

(assert (=> b!1203737 (=> (not res!801031) (not e!683590))))

(assert (=> b!1203737 (= res!801031 (and (or (not ((_ is Cons!26648) (toList!8918 lt!545376))) (bvsle (_1!9922 (h!27857 (toList!8918 lt!545376))) k0!934)) ((_ is Cons!26648) (toList!8918 lt!545376)) (bvslt (_1!9922 (h!27857 (toList!8918 lt!545376))) k0!934)))))

(declare-fun b!1203738 () Bool)

(assert (=> b!1203738 (= e!683590 (containsKey!588 (t!39538 (toList!8918 lt!545376)) k0!934))))

(assert (= (and d!132635 (not res!801030)) b!1203737))

(assert (= (and b!1203737 res!801031) b!1203738))

(declare-fun m!1109801 () Bool)

(assert (=> b!1203738 m!1109801))

(assert (=> d!132445 d!132635))

(declare-fun d!132637 () Bool)

(assert (=> d!132637 (not (contains!6916 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508)) lt!545510))))

(declare-fun lt!545714 () Unit!39811)

(assert (=> d!132637 (= lt!545714 (choose!1795 lt!545513 lt!545512 lt!545508 lt!545510))))

(declare-fun e!683591 () Bool)

(assert (=> d!132637 e!683591))

(declare-fun res!801032 () Bool)

(assert (=> d!132637 (=> (not res!801032) (not e!683591))))

(assert (=> d!132637 (= res!801032 (not (contains!6916 lt!545513 lt!545510)))))

(assert (=> d!132637 (= (addStillNotContains!290 lt!545513 lt!545512 lt!545508 lt!545510) lt!545714)))

(declare-fun b!1203739 () Bool)

(assert (=> b!1203739 (= e!683591 (not (= lt!545512 lt!545510)))))

(assert (= (and d!132637 res!801032) b!1203739))

(assert (=> d!132637 m!1109151))

(assert (=> d!132637 m!1109151))

(assert (=> d!132637 m!1109153))

(declare-fun m!1109803 () Bool)

(assert (=> d!132637 m!1109803))

(declare-fun m!1109805 () Bool)

(assert (=> d!132637 m!1109805))

(assert (=> b!1203379 d!132637))

(declare-fun d!132639 () Bool)

(declare-fun e!683592 () Bool)

(assert (=> d!132639 e!683592))

(declare-fun res!801033 () Bool)

(assert (=> d!132639 (=> (not res!801033) (not e!683592))))

(declare-fun lt!545717 () ListLongMap!17805)

(assert (=> d!132639 (= res!801033 (contains!6916 lt!545717 (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!545716 () List!26652)

(assert (=> d!132639 (= lt!545717 (ListLongMap!17806 lt!545716))))

(declare-fun lt!545715 () Unit!39811)

(declare-fun lt!545718 () Unit!39811)

(assert (=> d!132639 (= lt!545715 lt!545718)))

(assert (=> d!132639 (= (getValueByKey!634 lt!545716 (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132639 (= lt!545718 (lemmaContainsTupThenGetReturnValue!309 lt!545716 (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132639 (= lt!545716 (insertStrictlySorted!401 (toList!8918 call!58036) (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!132639 (= (+!3953 call!58036 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!545717)))

(declare-fun b!1203740 () Bool)

(declare-fun res!801034 () Bool)

(assert (=> b!1203740 (=> (not res!801034) (not e!683592))))

(assert (=> b!1203740 (= res!801034 (= (getValueByKey!634 (toList!8918 lt!545717) (_1!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!684 (_2!9922 (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1203741 () Bool)

(assert (=> b!1203741 (= e!683592 (contains!6919 (toList!8918 lt!545717) (tuple2!19825 (select (arr!37620 _keys!1208) from!1455) (get!19215 (select (arr!37619 _values!996) from!1455) (dynLambda!3251 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!132639 res!801033) b!1203740))

(assert (= (and b!1203740 res!801034) b!1203741))

(declare-fun m!1109807 () Bool)

(assert (=> d!132639 m!1109807))

(declare-fun m!1109809 () Bool)

(assert (=> d!132639 m!1109809))

(declare-fun m!1109811 () Bool)

(assert (=> d!132639 m!1109811))

(declare-fun m!1109813 () Bool)

(assert (=> d!132639 m!1109813))

(declare-fun m!1109815 () Bool)

(assert (=> b!1203740 m!1109815))

(declare-fun m!1109817 () Bool)

(assert (=> b!1203741 m!1109817))

(assert (=> b!1203379 d!132639))

(assert (=> b!1203379 d!132583))

(declare-fun d!132641 () Bool)

(declare-fun e!683593 () Bool)

(assert (=> d!132641 e!683593))

(declare-fun res!801035 () Bool)

(assert (=> d!132641 (=> (not res!801035) (not e!683593))))

(declare-fun lt!545721 () ListLongMap!17805)

(assert (=> d!132641 (= res!801035 (contains!6916 lt!545721 (_1!9922 (tuple2!19825 lt!545512 lt!545508))))))

(declare-fun lt!545720 () List!26652)

(assert (=> d!132641 (= lt!545721 (ListLongMap!17806 lt!545720))))

(declare-fun lt!545719 () Unit!39811)

(declare-fun lt!545722 () Unit!39811)

(assert (=> d!132641 (= lt!545719 lt!545722)))

(assert (=> d!132641 (= (getValueByKey!634 lt!545720 (_1!9922 (tuple2!19825 lt!545512 lt!545508))) (Some!684 (_2!9922 (tuple2!19825 lt!545512 lt!545508))))))

(assert (=> d!132641 (= lt!545722 (lemmaContainsTupThenGetReturnValue!309 lt!545720 (_1!9922 (tuple2!19825 lt!545512 lt!545508)) (_2!9922 (tuple2!19825 lt!545512 lt!545508))))))

(assert (=> d!132641 (= lt!545720 (insertStrictlySorted!401 (toList!8918 lt!545513) (_1!9922 (tuple2!19825 lt!545512 lt!545508)) (_2!9922 (tuple2!19825 lt!545512 lt!545508))))))

(assert (=> d!132641 (= (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508)) lt!545721)))

(declare-fun b!1203742 () Bool)

(declare-fun res!801036 () Bool)

(assert (=> b!1203742 (=> (not res!801036) (not e!683593))))

(assert (=> b!1203742 (= res!801036 (= (getValueByKey!634 (toList!8918 lt!545721) (_1!9922 (tuple2!19825 lt!545512 lt!545508))) (Some!684 (_2!9922 (tuple2!19825 lt!545512 lt!545508)))))))

(declare-fun b!1203743 () Bool)

(assert (=> b!1203743 (= e!683593 (contains!6919 (toList!8918 lt!545721) (tuple2!19825 lt!545512 lt!545508)))))

(assert (= (and d!132641 res!801035) b!1203742))

(assert (= (and b!1203742 res!801036) b!1203743))

(declare-fun m!1109819 () Bool)

(assert (=> d!132641 m!1109819))

(declare-fun m!1109821 () Bool)

(assert (=> d!132641 m!1109821))

(declare-fun m!1109823 () Bool)

(assert (=> d!132641 m!1109823))

(declare-fun m!1109825 () Bool)

(assert (=> d!132641 m!1109825))

(declare-fun m!1109827 () Bool)

(assert (=> b!1203742 m!1109827))

(declare-fun m!1109829 () Bool)

(assert (=> b!1203743 m!1109829))

(assert (=> b!1203379 d!132641))

(declare-fun d!132643 () Bool)

(declare-fun e!683594 () Bool)

(assert (=> d!132643 e!683594))

(declare-fun res!801037 () Bool)

(assert (=> d!132643 (=> res!801037 e!683594)))

(declare-fun lt!545724 () Bool)

(assert (=> d!132643 (= res!801037 (not lt!545724))))

(declare-fun lt!545726 () Bool)

(assert (=> d!132643 (= lt!545724 lt!545726)))

(declare-fun lt!545725 () Unit!39811)

(declare-fun e!683595 () Unit!39811)

(assert (=> d!132643 (= lt!545725 e!683595)))

(declare-fun c!117896 () Bool)

(assert (=> d!132643 (= c!117896 lt!545726)))

(assert (=> d!132643 (= lt!545726 (containsKey!588 (toList!8918 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508))) lt!545510))))

(assert (=> d!132643 (= (contains!6916 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508)) lt!545510) lt!545724)))

(declare-fun b!1203744 () Bool)

(declare-fun lt!545723 () Unit!39811)

(assert (=> b!1203744 (= e!683595 lt!545723)))

(assert (=> b!1203744 (= lt!545723 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508))) lt!545510))))

(assert (=> b!1203744 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508))) lt!545510))))

(declare-fun b!1203745 () Bool)

(declare-fun Unit!39839 () Unit!39811)

(assert (=> b!1203745 (= e!683595 Unit!39839)))

(declare-fun b!1203746 () Bool)

(assert (=> b!1203746 (= e!683594 (isDefined!457 (getValueByKey!634 (toList!8918 (+!3953 lt!545513 (tuple2!19825 lt!545512 lt!545508))) lt!545510)))))

(assert (= (and d!132643 c!117896) b!1203744))

(assert (= (and d!132643 (not c!117896)) b!1203745))

(assert (= (and d!132643 (not res!801037)) b!1203746))

(declare-fun m!1109831 () Bool)

(assert (=> d!132643 m!1109831))

(declare-fun m!1109833 () Bool)

(assert (=> b!1203744 m!1109833))

(declare-fun m!1109835 () Bool)

(assert (=> b!1203744 m!1109835))

(assert (=> b!1203744 m!1109835))

(declare-fun m!1109837 () Bool)

(assert (=> b!1203744 m!1109837))

(assert (=> b!1203746 m!1109835))

(assert (=> b!1203746 m!1109835))

(assert (=> b!1203746 m!1109837))

(assert (=> b!1203379 d!132643))

(declare-fun d!132645 () Bool)

(assert (=> d!132645 (= (isEmpty!983 lt!545507) (isEmpty!985 (toList!8918 lt!545507)))))

(declare-fun bs!34070 () Bool)

(assert (= bs!34070 d!132645))

(declare-fun m!1109839 () Bool)

(assert (=> bs!34070 m!1109839))

(assert (=> b!1203381 d!132645))

(declare-fun d!132647 () Bool)

(assert (=> d!132647 (arrayContainsKey!0 _keys!1208 lt!545457 #b00000000000000000000000000000000)))

(declare-fun lt!545727 () Unit!39811)

(assert (=> d!132647 (= lt!545727 (choose!13 _keys!1208 lt!545457 #b00000000000000000000000000000000))))

(assert (=> d!132647 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!132647 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!545457 #b00000000000000000000000000000000) lt!545727)))

(declare-fun bs!34071 () Bool)

(assert (= bs!34071 d!132647))

(assert (=> bs!34071 m!1109033))

(declare-fun m!1109841 () Bool)

(assert (=> bs!34071 m!1109841))

(assert (=> b!1203297 d!132647))

(declare-fun d!132649 () Bool)

(declare-fun res!801038 () Bool)

(declare-fun e!683596 () Bool)

(assert (=> d!132649 (=> res!801038 e!683596)))

(assert (=> d!132649 (= res!801038 (= (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) lt!545457))))

(assert (=> d!132649 (= (arrayContainsKey!0 _keys!1208 lt!545457 #b00000000000000000000000000000000) e!683596)))

(declare-fun b!1203747 () Bool)

(declare-fun e!683597 () Bool)

(assert (=> b!1203747 (= e!683596 e!683597)))

(declare-fun res!801039 () Bool)

(assert (=> b!1203747 (=> (not res!801039) (not e!683597))))

(assert (=> b!1203747 (= res!801039 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38157 _keys!1208)))))

(declare-fun b!1203748 () Bool)

(assert (=> b!1203748 (= e!683597 (arrayContainsKey!0 _keys!1208 lt!545457 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132649 (not res!801038)) b!1203747))

(assert (= (and b!1203747 res!801039) b!1203748))

(assert (=> d!132649 m!1109027))

(declare-fun m!1109843 () Bool)

(assert (=> b!1203748 m!1109843))

(assert (=> b!1203297 d!132649))

(declare-fun e!683599 () SeekEntryResult!9930)

(declare-fun lt!545728 () SeekEntryResult!9930)

(declare-fun b!1203749 () Bool)

(assert (=> b!1203749 (= e!683599 (seekKeyOrZeroReturnVacant!0 (x!106354 lt!545728) (index!42092 lt!545728) (index!42092 lt!545728) (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564))))

(declare-fun d!132651 () Bool)

(declare-fun lt!545729 () SeekEntryResult!9930)

(assert (=> d!132651 (and (or ((_ is Undefined!9930) lt!545729) (not ((_ is Found!9930) lt!545729)) (and (bvsge (index!42091 lt!545729) #b00000000000000000000000000000000) (bvslt (index!42091 lt!545729) (size!38157 _keys!1208)))) (or ((_ is Undefined!9930) lt!545729) ((_ is Found!9930) lt!545729) (not ((_ is MissingZero!9930) lt!545729)) (and (bvsge (index!42090 lt!545729) #b00000000000000000000000000000000) (bvslt (index!42090 lt!545729) (size!38157 _keys!1208)))) (or ((_ is Undefined!9930) lt!545729) ((_ is Found!9930) lt!545729) ((_ is MissingZero!9930) lt!545729) (not ((_ is MissingVacant!9930) lt!545729)) (and (bvsge (index!42093 lt!545729) #b00000000000000000000000000000000) (bvslt (index!42093 lt!545729) (size!38157 _keys!1208)))) (or ((_ is Undefined!9930) lt!545729) (ite ((_ is Found!9930) lt!545729) (= (select (arr!37620 _keys!1208) (index!42091 lt!545729)) (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9930) lt!545729) (= (select (arr!37620 _keys!1208) (index!42090 lt!545729)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9930) lt!545729) (= (select (arr!37620 _keys!1208) (index!42093 lt!545729)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!683600 () SeekEntryResult!9930)

(assert (=> d!132651 (= lt!545729 e!683600)))

(declare-fun c!117899 () Bool)

(assert (=> d!132651 (= c!117899 (and ((_ is Intermediate!9930) lt!545728) (undefined!10742 lt!545728)))))

(assert (=> d!132651 (= lt!545728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) mask!1564) (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564))))

(assert (=> d!132651 (validMask!0 mask!1564)))

(assert (=> d!132651 (= (seekEntryOrOpen!0 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) lt!545729)))

(declare-fun b!1203750 () Bool)

(declare-fun c!117898 () Bool)

(declare-fun lt!545730 () (_ BitVec 64))

(assert (=> b!1203750 (= c!117898 (= lt!545730 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!683598 () SeekEntryResult!9930)

(assert (=> b!1203750 (= e!683598 e!683599)))

(declare-fun b!1203751 () Bool)

(assert (=> b!1203751 (= e!683598 (Found!9930 (index!42092 lt!545728)))))

(declare-fun b!1203752 () Bool)

(assert (=> b!1203752 (= e!683600 e!683598)))

(assert (=> b!1203752 (= lt!545730 (select (arr!37620 _keys!1208) (index!42092 lt!545728)))))

(declare-fun c!117897 () Bool)

(assert (=> b!1203752 (= c!117897 (= lt!545730 (select (arr!37620 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1203753 () Bool)

(assert (=> b!1203753 (= e!683599 (MissingZero!9930 (index!42092 lt!545728)))))

(declare-fun b!1203754 () Bool)

(assert (=> b!1203754 (= e!683600 Undefined!9930)))

(assert (= (and d!132651 c!117899) b!1203754))

(assert (= (and d!132651 (not c!117899)) b!1203752))

(assert (= (and b!1203752 c!117897) b!1203751))

(assert (= (and b!1203752 (not c!117897)) b!1203750))

(assert (= (and b!1203750 c!117898) b!1203753))

(assert (= (and b!1203750 (not c!117898)) b!1203749))

(assert (=> b!1203749 m!1109027))

(declare-fun m!1109845 () Bool)

(assert (=> b!1203749 m!1109845))

(declare-fun m!1109847 () Bool)

(assert (=> d!132651 m!1109847))

(declare-fun m!1109849 () Bool)

(assert (=> d!132651 m!1109849))

(assert (=> d!132651 m!1108917))

(declare-fun m!1109851 () Bool)

(assert (=> d!132651 m!1109851))

(assert (=> d!132651 m!1109027))

(declare-fun m!1109853 () Bool)

(assert (=> d!132651 m!1109853))

(declare-fun m!1109855 () Bool)

(assert (=> d!132651 m!1109855))

(assert (=> d!132651 m!1109027))

(assert (=> d!132651 m!1109851))

(declare-fun m!1109857 () Bool)

(assert (=> b!1203752 m!1109857))

(assert (=> b!1203297 d!132651))

(assert (=> bm!58027 d!132437))

(assert (=> b!1203342 d!132531))

(assert (=> b!1203402 d!132473))

(assert (=> b!1203402 d!132475))

(assert (=> b!1203375 d!132535))

(assert (=> bm!58033 d!132579))

(declare-fun d!132653 () Bool)

(declare-fun e!683601 () Bool)

(assert (=> d!132653 e!683601))

(declare-fun res!801040 () Bool)

(assert (=> d!132653 (=> res!801040 e!683601)))

(declare-fun lt!545732 () Bool)

(assert (=> d!132653 (= res!801040 (not lt!545732))))

(declare-fun lt!545734 () Bool)

(assert (=> d!132653 (= lt!545732 lt!545734)))

(declare-fun lt!545733 () Unit!39811)

(declare-fun e!683602 () Unit!39811)

(assert (=> d!132653 (= lt!545733 e!683602)))

(declare-fun c!117900 () Bool)

(assert (=> d!132653 (= c!117900 lt!545734)))

(assert (=> d!132653 (= lt!545734 (containsKey!588 (toList!8918 lt!545507) (select (arr!37620 _keys!1208) from!1455)))))

(assert (=> d!132653 (= (contains!6916 lt!545507 (select (arr!37620 _keys!1208) from!1455)) lt!545732)))

(declare-fun b!1203755 () Bool)

(declare-fun lt!545731 () Unit!39811)

(assert (=> b!1203755 (= e!683602 lt!545731)))

(assert (=> b!1203755 (= lt!545731 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545507) (select (arr!37620 _keys!1208) from!1455)))))

(assert (=> b!1203755 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545507) (select (arr!37620 _keys!1208) from!1455)))))

(declare-fun b!1203756 () Bool)

(declare-fun Unit!39840 () Unit!39811)

(assert (=> b!1203756 (= e!683602 Unit!39840)))

(declare-fun b!1203757 () Bool)

(assert (=> b!1203757 (= e!683601 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545507) (select (arr!37620 _keys!1208) from!1455))))))

(assert (= (and d!132653 c!117900) b!1203755))

(assert (= (and d!132653 (not c!117900)) b!1203756))

(assert (= (and d!132653 (not res!801040)) b!1203757))

(assert (=> d!132653 m!1108875))

(declare-fun m!1109859 () Bool)

(assert (=> d!132653 m!1109859))

(assert (=> b!1203755 m!1108875))

(declare-fun m!1109861 () Bool)

(assert (=> b!1203755 m!1109861))

(assert (=> b!1203755 m!1108875))

(assert (=> b!1203755 m!1109651))

(assert (=> b!1203755 m!1109651))

(declare-fun m!1109863 () Bool)

(assert (=> b!1203755 m!1109863))

(assert (=> b!1203757 m!1108875))

(assert (=> b!1203757 m!1109651))

(assert (=> b!1203757 m!1109651))

(assert (=> b!1203757 m!1109863))

(assert (=> b!1203377 d!132653))

(assert (=> b!1203388 d!132515))

(declare-fun d!132655 () Bool)

(declare-fun lt!545735 () ListLongMap!17805)

(assert (=> d!132655 (not (contains!6916 lt!545735 k0!934))))

(assert (=> d!132655 (= lt!545735 (ListLongMap!17806 (removeStrictlySorted!94 (toList!8918 call!58031) k0!934)))))

(assert (=> d!132655 (= (-!1834 call!58031 k0!934) lt!545735)))

(declare-fun bs!34072 () Bool)

(assert (= bs!34072 d!132655))

(declare-fun m!1109865 () Bool)

(assert (=> bs!34072 m!1109865))

(declare-fun m!1109867 () Bool)

(assert (=> bs!34072 m!1109867))

(assert (=> b!1203311 d!132655))

(declare-fun d!132657 () Bool)

(declare-fun e!683603 () Bool)

(assert (=> d!132657 e!683603))

(declare-fun res!801041 () Bool)

(assert (=> d!132657 (=> res!801041 e!683603)))

(declare-fun lt!545737 () Bool)

(assert (=> d!132657 (= res!801041 (not lt!545737))))

(declare-fun lt!545739 () Bool)

(assert (=> d!132657 (= lt!545737 lt!545739)))

(declare-fun lt!545738 () Unit!39811)

(declare-fun e!683604 () Unit!39811)

(assert (=> d!132657 (= lt!545738 e!683604)))

(declare-fun c!117901 () Bool)

(assert (=> d!132657 (= c!117901 lt!545739)))

(assert (=> d!132657 (= lt!545739 (containsKey!588 (toList!8918 lt!545486) (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> d!132657 (= (contains!6916 lt!545486 (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) lt!545737)))

(declare-fun b!1203758 () Bool)

(declare-fun lt!545736 () Unit!39811)

(assert (=> b!1203758 (= e!683604 lt!545736)))

(assert (=> b!1203758 (= lt!545736 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!8918 lt!545486) (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1203758 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545486) (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1203759 () Bool)

(declare-fun Unit!39841 () Unit!39811)

(assert (=> b!1203759 (= e!683604 Unit!39841)))

(declare-fun b!1203760 () Bool)

(assert (=> b!1203760 (= e!683603 (isDefined!457 (getValueByKey!634 (toList!8918 lt!545486) (select (arr!37620 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))))

(assert (= (and d!132657 c!117901) b!1203758))

(assert (= (and d!132657 (not c!117901)) b!1203759))

(assert (= (and d!132657 (not res!801041)) b!1203760))

(assert (=> d!132657 m!1109079))

(declare-fun m!1109869 () Bool)

(assert (=> d!132657 m!1109869))

(assert (=> b!1203758 m!1109079))

(declare-fun m!1109871 () Bool)

(assert (=> b!1203758 m!1109871))

(assert (=> b!1203758 m!1109079))

(assert (=> b!1203758 m!1109669))

(assert (=> b!1203758 m!1109669))

(declare-fun m!1109873 () Bool)

(assert (=> b!1203758 m!1109873))

(assert (=> b!1203760 m!1109079))

(assert (=> b!1203760 m!1109669))

(assert (=> b!1203760 m!1109669))

(assert (=> b!1203760 m!1109873))

(assert (=> b!1203344 d!132657))

(declare-fun b!1203762 () Bool)

(declare-fun e!683606 () Bool)

(assert (=> b!1203762 (= e!683606 tp_is_empty!30603)))

(declare-fun mapNonEmpty!47754 () Bool)

(declare-fun mapRes!47754 () Bool)

(declare-fun tp!90698 () Bool)

(declare-fun e!683605 () Bool)

(assert (=> mapNonEmpty!47754 (= mapRes!47754 (and tp!90698 e!683605))))

(declare-fun mapKey!47754 () (_ BitVec 32))

(declare-fun mapValue!47754 () ValueCell!14592)

(declare-fun mapRest!47754 () (Array (_ BitVec 32) ValueCell!14592))

(assert (=> mapNonEmpty!47754 (= mapRest!47753 (store mapRest!47754 mapKey!47754 mapValue!47754))))

(declare-fun condMapEmpty!47754 () Bool)

(declare-fun mapDefault!47754 () ValueCell!14592)

(assert (=> mapNonEmpty!47753 (= condMapEmpty!47754 (= mapRest!47753 ((as const (Array (_ BitVec 32) ValueCell!14592)) mapDefault!47754)))))

(assert (=> mapNonEmpty!47753 (= tp!90697 (and e!683606 mapRes!47754))))

(declare-fun mapIsEmpty!47754 () Bool)

(assert (=> mapIsEmpty!47754 mapRes!47754))

(declare-fun b!1203761 () Bool)

(assert (=> b!1203761 (= e!683605 tp_is_empty!30603)))

(assert (= (and mapNonEmpty!47753 condMapEmpty!47754) mapIsEmpty!47754))

(assert (= (and mapNonEmpty!47753 (not condMapEmpty!47754)) mapNonEmpty!47754))

(assert (= (and mapNonEmpty!47754 ((_ is ValueCellFull!14592) mapValue!47754)) b!1203761))

(assert (= (and mapNonEmpty!47753 ((_ is ValueCellFull!14592) mapDefault!47754)) b!1203762))

(declare-fun m!1109875 () Bool)

(assert (=> mapNonEmpty!47754 m!1109875))

(declare-fun b_lambda!21177 () Bool)

(assert (= b_lambda!21157 (or (and start!100612 b_free!25899) b_lambda!21177)))

(declare-fun b_lambda!21179 () Bool)

(assert (= b_lambda!21165 (or (and start!100612 b_free!25899) b_lambda!21179)))

(declare-fun b_lambda!21181 () Bool)

(assert (= b_lambda!21171 (or (and start!100612 b_free!25899) b_lambda!21181)))

(declare-fun b_lambda!21183 () Bool)

(assert (= b_lambda!21161 (or (and start!100612 b_free!25899) b_lambda!21183)))

(declare-fun b_lambda!21185 () Bool)

(assert (= b_lambda!21167 (or (and start!100612 b_free!25899) b_lambda!21185)))

(declare-fun b_lambda!21187 () Bool)

(assert (= b_lambda!21159 (or (and start!100612 b_free!25899) b_lambda!21187)))

(declare-fun b_lambda!21189 () Bool)

(assert (= b_lambda!21155 (or (and start!100612 b_free!25899) b_lambda!21189)))

(declare-fun b_lambda!21191 () Bool)

(assert (= b_lambda!21163 (or (and start!100612 b_free!25899) b_lambda!21191)))

(declare-fun b_lambda!21193 () Bool)

(assert (= b_lambda!21169 (or (and start!100612 b_free!25899) b_lambda!21193)))

(declare-fun b_lambda!21195 () Bool)

(assert (= b_lambda!21173 (or (and start!100612 b_free!25899) b_lambda!21195)))

(declare-fun b_lambda!21197 () Bool)

(assert (= b_lambda!21175 (or (and start!100612 b_free!25899) b_lambda!21197)))

(check-sat (not bm!58054) (not b_lambda!21191) (not b!1203616) (not b!1203490) (not b!1203746) (not b!1203738) (not b!1203712) (not d!132565) (not b_lambda!21183) (not d!132633) (not bm!58036) (not bm!58042) (not d!132549) (not b!1203519) (not d!132625) (not bm!58060) (not d!132551) (not b!1203514) (not b_lambda!21185) (not d!132543) (not b!1203736) (not b!1203466) (not b!1203702) (not b!1203518) (not b!1203694) (not bm!58044) (not d!132487) (not b!1203551) (not b_lambda!21137) (not b!1203697) (not b!1203720) (not b_lambda!21177) (not b!1203632) (not b!1203421) (not b!1203743) (not b!1203446) (not b!1203583) (not b!1203524) (not b!1203669) (not d!132579) (not d!132473) (not b!1203685) (not d!132651) (not b!1203670) (not d!132641) (not b!1203691) (not bm!58043) (not b!1203634) (not d!132505) (not d!132461) (not d!132643) (not b!1203700) (not d!132607) (not b!1203553) (not b!1203559) (not b_lambda!21143) (not d!132489) (not b_lambda!21145) (not d!132611) (not b!1203667) (not d!132493) (not b!1203481) (not b!1203508) (not b!1203428) (not d!132655) (not bm!58062) (not b!1203545) (not bm!58058) (not b!1203516) (not d!132515) (not b!1203715) (not b!1203495) (not b!1203630) (not b!1203464) (not b!1203482) (not b_lambda!21149) (not b!1203748) (not d!132499) (not b!1203635) (not d!132479) (not d!132647) (not b!1203462) (not d!132467) (not b!1203731) (not b!1203741) (not b!1203757) (not b!1203703) (not b!1203563) (not d!132603) (not d!132631) (not bm!58041) (not b!1203570) (not bm!58059) (not b!1203642) (not b!1203578) (not b!1203740) (not b!1203689) (not b!1203628) (not b!1203431) (not d!132547) (not b!1203452) (not bm!58061) (not b!1203567) (not d!132585) (not d!132527) (not b!1203459) (not d!132581) (not d!132509) (not d!132471) (not b!1203675) (not b!1203530) (not b!1203683) (not b!1203585) (not d!132627) (not b!1203487) (not b!1203434) (not b!1203561) (not b!1203758) (not b!1203651) (not b!1203644) (not b!1203573) (not b!1203749) (not b!1203488) (not d!132623) (not d!132517) (not b!1203742) (not b!1203594) (not d!132573) (not d!132503) (not d!132599) (not b!1203423) (not d!132605) (not b!1203576) (not b!1203662) tp_is_empty!30603 (not b!1203674) (not b!1203529) (not b!1203425) (not b!1203668) (not b!1203661) (not b!1203491) (not b!1203533) (not b_lambda!21193) (not b!1203650) (not b!1203580) (not b!1203734) (not d!132523) (not b_lambda!21179) (not b!1203476) (not b!1203550) (not d!132537) (not b!1203555) (not b!1203622) (not b!1203672) (not b!1203574) (not d!132609) (not d!132617) (not b!1203717) (not b!1203723) (not d!132559) (not b!1203663) (not b!1203429) (not b!1203726) (not b!1203443) (not d!132533) (not d!132519) (not d!132615) (not b!1203565) (not b!1203468) (not b!1203568) (not b!1203521) (not b!1203698) (not b!1203626) b_and!42745 (not b!1203531) (not d!132639) (not d!132541) (not d!132563) (not b!1203719) (not b_lambda!21189) (not b!1203678) (not b!1203725) (not b!1203582) (not b!1203682) (not b!1203440) (not d!132555) (not b!1203709) (not b_lambda!21117) (not b!1203427) (not b!1203467) (not b!1203657) (not b!1203552) (not b!1203572) (not b!1203708) (not b!1203470) (not b!1203547) (not b!1203558) (not b!1203579) (not bm!58057) (not d!132645) (not b!1203640) (not b!1203588) (not b!1203656) (not d!132553) (not b!1203686) (not b!1203527) (not b!1203643) (not b_lambda!21153) (not b!1203523) (not b!1203729) (not d!132575) (not b!1203623) (not b!1203755) (not mapNonEmpty!47754) (not b!1203727) (not d!132569) (not b!1203493) (not b_lambda!21197) (not b!1203629) (not b!1203659) (not b_lambda!21195) (not d!132501) (not b!1203525) (not b!1203595) (not b_lambda!21181) (not d!132497) (not b!1203664) (not b!1203564) (not b!1203760) (not b!1203654) (not d!132629) (not d!132657) (not d!132567) (not d!132513) (not b_next!25899) (not b!1203433) (not b_lambda!21151) (not d!132483) (not d!132589) (not b!1203681) (not b!1203676) (not b!1203732) (not b!1203707) (not bm!58045) (not d!132571) (not b!1203705) (not d!132511) (not b!1203733) (not b!1203637) (not b!1203680) (not b!1203489) (not b!1203688) (not b_lambda!21139) (not b!1203724) (not b_lambda!21147) (not d!132621) (not d!132637) (not b!1203557) (not d!132653) (not d!132597) (not d!132557) (not b_lambda!21141) (not d!132485) (not b_lambda!21187) (not b!1203710) (not d!132539) (not b!1203744))
(check-sat b_and!42745 (not b_next!25899))
