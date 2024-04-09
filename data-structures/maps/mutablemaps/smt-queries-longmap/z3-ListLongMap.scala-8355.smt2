; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101750 () Bool)

(assert start!101750)

(declare-fun b_free!26403 () Bool)

(declare-fun b_next!26403 () Bool)

(assert (=> start!101750 (= b_free!26403 (not b_next!26403))))

(declare-fun tp!92256 () Bool)

(declare-fun b_and!44077 () Bool)

(assert (=> start!101750 (= tp!92256 b_and!44077)))

(declare-fun b!1223821 () Bool)

(declare-fun e!695110 () Bool)

(declare-fun tp_is_empty!31107 () Bool)

(assert (=> b!1223821 (= e!695110 tp_is_empty!31107)))

(declare-fun b!1223822 () Bool)

(declare-fun res!813263 () Bool)

(declare-fun e!695115 () Bool)

(assert (=> b!1223822 (=> (not res!813263) (not e!695115))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78972 0))(
  ( (array!78973 (arr!38109 (Array (_ BitVec 32) (_ BitVec 64))) (size!38646 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78972)

(assert (=> b!1223822 (= res!813263 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38646 _keys!1208))))))

(declare-fun b!1223823 () Bool)

(declare-fun res!813275 () Bool)

(assert (=> b!1223823 (=> (not res!813275) (not e!695115))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46603 0))(
  ( (V!46604 (val!15610 Int)) )
))
(declare-datatypes ((ValueCell!14844 0))(
  ( (ValueCellFull!14844 (v!18273 V!46603)) (EmptyCell!14844) )
))
(declare-datatypes ((array!78974 0))(
  ( (array!78975 (arr!38110 (Array (_ BitVec 32) ValueCell!14844)) (size!38647 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78974)

(assert (=> b!1223823 (= res!813275 (and (= (size!38647 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38646 _keys!1208) (size!38647 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1223824 () Bool)

(declare-fun e!695109 () Bool)

(declare-fun e!695116 () Bool)

(assert (=> b!1223824 (= e!695109 e!695116)))

(declare-fun res!813276 () Bool)

(assert (=> b!1223824 (=> res!813276 e!695116)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1223824 (= res!813276 (not (= (select (arr!38109 _keys!1208) from!1455) k0!934)))))

(declare-fun mapIsEmpty!48559 () Bool)

(declare-fun mapRes!48559 () Bool)

(assert (=> mapIsEmpty!48559 mapRes!48559))

(declare-fun b!1223825 () Bool)

(declare-fun e!695118 () Bool)

(declare-datatypes ((tuple2!20258 0))(
  ( (tuple2!20259 (_1!10139 (_ BitVec 64)) (_2!10139 V!46603)) )
))
(declare-datatypes ((List!27070 0))(
  ( (Nil!27067) (Cons!27066 (h!28275 tuple2!20258) (t!40460 List!27070)) )
))
(declare-datatypes ((ListLongMap!18239 0))(
  ( (ListLongMap!18240 (toList!9135 List!27070)) )
))
(declare-fun lt!557098 () ListLongMap!18239)

(declare-fun lt!557106 () ListLongMap!18239)

(assert (=> b!1223825 (= e!695118 (= lt!557098 lt!557106))))

(declare-fun e!695106 () Bool)

(assert (=> b!1223825 e!695106))

(declare-fun res!813274 () Bool)

(assert (=> b!1223825 (=> (not res!813274) (not e!695106))))

(assert (=> b!1223825 (= res!813274 (not (= (select (arr!38109 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!40468 0))(
  ( (Unit!40469) )
))
(declare-fun lt!557102 () Unit!40468)

(declare-fun e!695113 () Unit!40468)

(assert (=> b!1223825 (= lt!557102 e!695113)))

(declare-fun c!120369 () Bool)

(assert (=> b!1223825 (= c!120369 (= (select (arr!38109 _keys!1208) from!1455) k0!934))))

(assert (=> b!1223825 e!695109))

(declare-fun res!813262 () Bool)

(assert (=> b!1223825 (=> (not res!813262) (not e!695109))))

(declare-fun lt!557103 () tuple2!20258)

(declare-fun lt!557099 () ListLongMap!18239)

(declare-fun +!4098 (ListLongMap!18239 tuple2!20258) ListLongMap!18239)

(assert (=> b!1223825 (= res!813262 (= lt!557099 (+!4098 lt!557098 lt!557103)))))

(declare-fun lt!557101 () V!46603)

(declare-fun get!19505 (ValueCell!14844 V!46603) V!46603)

(assert (=> b!1223825 (= lt!557103 (tuple2!20259 (select (arr!38109 _keys!1208) from!1455) (get!19505 (select (arr!38110 _values!996) from!1455) lt!557101)))))

(declare-fun b!1223826 () Bool)

(declare-fun Unit!40470 () Unit!40468)

(assert (=> b!1223826 (= e!695113 Unit!40470)))

(declare-fun lt!557100 () Unit!40468)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78972 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40468)

(assert (=> b!1223826 (= lt!557100 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223826 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557097 () Unit!40468)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78972 (_ BitVec 32) (_ BitVec 32)) Unit!40468)

(assert (=> b!1223826 (= lt!557097 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27071 0))(
  ( (Nil!27068) (Cons!27067 (h!28276 (_ BitVec 64)) (t!40461 List!27071)) )
))
(declare-fun arrayNoDuplicates!0 (array!78972 (_ BitVec 32) List!27071) Bool)

(assert (=> b!1223826 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27068)))

(declare-fun lt!557107 () Unit!40468)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78972 (_ BitVec 64) (_ BitVec 32) List!27071) Unit!40468)

(assert (=> b!1223826 (= lt!557107 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27068))))

(assert (=> b!1223826 false))

(declare-fun b!1223827 () Bool)

(declare-fun res!813261 () Bool)

(assert (=> b!1223827 (=> (not res!813261) (not e!695115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223827 (= res!813261 (validKeyInArray!0 k0!934))))

(declare-fun b!1223828 () Bool)

(declare-fun e!695107 () Bool)

(assert (=> b!1223828 (= e!695107 e!695118)))

(declare-fun res!813270 () Bool)

(assert (=> b!1223828 (=> res!813270 e!695118)))

(assert (=> b!1223828 (= res!813270 (not (validKeyInArray!0 (select (arr!38109 _keys!1208) from!1455))))))

(assert (=> b!1223828 (= lt!557106 lt!557098)))

(declare-fun lt!557105 () ListLongMap!18239)

(declare-fun -!1975 (ListLongMap!18239 (_ BitVec 64)) ListLongMap!18239)

(assert (=> b!1223828 (= lt!557098 (-!1975 lt!557105 k0!934))))

(declare-fun zeroValue!944 () V!46603)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!557109 () array!78972)

(declare-fun minValue!944 () V!46603)

(declare-fun lt!557110 () array!78974)

(declare-fun getCurrentListMapNoExtraKeys!5532 (array!78972 array!78974 (_ BitVec 32) (_ BitVec 32) V!46603 V!46603 (_ BitVec 32) Int) ListLongMap!18239)

(assert (=> b!1223828 (= lt!557106 (getCurrentListMapNoExtraKeys!5532 lt!557109 lt!557110 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223828 (= lt!557105 (getCurrentListMapNoExtraKeys!5532 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557108 () Unit!40468)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1177 (array!78972 array!78974 (_ BitVec 32) (_ BitVec 32) V!46603 V!46603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40468)

(assert (=> b!1223828 (= lt!557108 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1177 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223829 () Bool)

(declare-fun res!813266 () Bool)

(assert (=> b!1223829 (=> (not res!813266) (not e!695115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78972 (_ BitVec 32)) Bool)

(assert (=> b!1223829 (= res!813266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223830 () Bool)

(declare-fun e!695117 () Bool)

(declare-fun e!695114 () Bool)

(assert (=> b!1223830 (= e!695117 (not e!695114))))

(declare-fun res!813267 () Bool)

(assert (=> b!1223830 (=> res!813267 e!695114)))

(assert (=> b!1223830 (= res!813267 (bvsgt from!1455 i!673))))

(assert (=> b!1223830 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!557104 () Unit!40468)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78972 (_ BitVec 64) (_ BitVec 32)) Unit!40468)

(assert (=> b!1223830 (= lt!557104 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223831 () Bool)

(assert (=> b!1223831 (= e!695116 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223832 () Bool)

(declare-fun e!695111 () Bool)

(assert (=> b!1223832 (= e!695111 tp_is_empty!31107)))

(declare-fun res!813265 () Bool)

(assert (=> start!101750 (=> (not res!813265) (not e!695115))))

(assert (=> start!101750 (= res!813265 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38646 _keys!1208))))))

(assert (=> start!101750 e!695115))

(assert (=> start!101750 tp_is_empty!31107))

(declare-fun array_inv!28910 (array!78972) Bool)

(assert (=> start!101750 (array_inv!28910 _keys!1208)))

(assert (=> start!101750 true))

(assert (=> start!101750 tp!92256))

(declare-fun e!695112 () Bool)

(declare-fun array_inv!28911 (array!78974) Bool)

(assert (=> start!101750 (and (array_inv!28911 _values!996) e!695112)))

(declare-fun b!1223833 () Bool)

(assert (=> b!1223833 (= e!695112 (and e!695111 mapRes!48559))))

(declare-fun condMapEmpty!48559 () Bool)

(declare-fun mapDefault!48559 () ValueCell!14844)

(assert (=> b!1223833 (= condMapEmpty!48559 (= (arr!38110 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14844)) mapDefault!48559)))))

(declare-fun b!1223834 () Bool)

(declare-fun res!813268 () Bool)

(assert (=> b!1223834 (=> (not res!813268) (not e!695115))))

(assert (=> b!1223834 (= res!813268 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27068))))

(declare-fun b!1223835 () Bool)

(declare-fun res!813271 () Bool)

(assert (=> b!1223835 (=> (not res!813271) (not e!695115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223835 (= res!813271 (validMask!0 mask!1564))))

(declare-fun b!1223836 () Bool)

(assert (=> b!1223836 (= e!695114 e!695107)))

(declare-fun res!813272 () Bool)

(assert (=> b!1223836 (=> res!813272 e!695107)))

(assert (=> b!1223836 (= res!813272 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1223836 (= lt!557099 (getCurrentListMapNoExtraKeys!5532 lt!557109 lt!557110 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1223836 (= lt!557110 (array!78975 (store (arr!38110 _values!996) i!673 (ValueCellFull!14844 lt!557101)) (size!38647 _values!996)))))

(declare-fun dynLambda!3428 (Int (_ BitVec 64)) V!46603)

(assert (=> b!1223836 (= lt!557101 (dynLambda!3428 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557096 () ListLongMap!18239)

(assert (=> b!1223836 (= lt!557096 (getCurrentListMapNoExtraKeys!5532 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223837 () Bool)

(declare-fun Unit!40471 () Unit!40468)

(assert (=> b!1223837 (= e!695113 Unit!40471)))

(declare-fun b!1223838 () Bool)

(declare-fun res!813273 () Bool)

(assert (=> b!1223838 (=> (not res!813273) (not e!695117))))

(assert (=> b!1223838 (= res!813273 (arrayNoDuplicates!0 lt!557109 #b00000000000000000000000000000000 Nil!27068))))

(declare-fun b!1223839 () Bool)

(assert (=> b!1223839 (= e!695115 e!695117)))

(declare-fun res!813264 () Bool)

(assert (=> b!1223839 (=> (not res!813264) (not e!695117))))

(assert (=> b!1223839 (= res!813264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557109 mask!1564))))

(assert (=> b!1223839 (= lt!557109 (array!78973 (store (arr!38109 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38646 _keys!1208)))))

(declare-fun b!1223840 () Bool)

(assert (=> b!1223840 (= e!695106 (= lt!557096 (+!4098 lt!557105 lt!557103)))))

(declare-fun mapNonEmpty!48559 () Bool)

(declare-fun tp!92255 () Bool)

(assert (=> mapNonEmpty!48559 (= mapRes!48559 (and tp!92255 e!695110))))

(declare-fun mapValue!48559 () ValueCell!14844)

(declare-fun mapRest!48559 () (Array (_ BitVec 32) ValueCell!14844))

(declare-fun mapKey!48559 () (_ BitVec 32))

(assert (=> mapNonEmpty!48559 (= (arr!38110 _values!996) (store mapRest!48559 mapKey!48559 mapValue!48559))))

(declare-fun b!1223841 () Bool)

(declare-fun res!813269 () Bool)

(assert (=> b!1223841 (=> (not res!813269) (not e!695115))))

(assert (=> b!1223841 (= res!813269 (= (select (arr!38109 _keys!1208) i!673) k0!934))))

(assert (= (and start!101750 res!813265) b!1223835))

(assert (= (and b!1223835 res!813271) b!1223823))

(assert (= (and b!1223823 res!813275) b!1223829))

(assert (= (and b!1223829 res!813266) b!1223834))

(assert (= (and b!1223834 res!813268) b!1223822))

(assert (= (and b!1223822 res!813263) b!1223827))

(assert (= (and b!1223827 res!813261) b!1223841))

(assert (= (and b!1223841 res!813269) b!1223839))

(assert (= (and b!1223839 res!813264) b!1223838))

(assert (= (and b!1223838 res!813273) b!1223830))

(assert (= (and b!1223830 (not res!813267)) b!1223836))

(assert (= (and b!1223836 (not res!813272)) b!1223828))

(assert (= (and b!1223828 (not res!813270)) b!1223825))

(assert (= (and b!1223825 res!813262) b!1223824))

(assert (= (and b!1223824 (not res!813276)) b!1223831))

(assert (= (and b!1223825 c!120369) b!1223826))

(assert (= (and b!1223825 (not c!120369)) b!1223837))

(assert (= (and b!1223825 res!813274) b!1223840))

(assert (= (and b!1223833 condMapEmpty!48559) mapIsEmpty!48559))

(assert (= (and b!1223833 (not condMapEmpty!48559)) mapNonEmpty!48559))

(get-info :version)

(assert (= (and mapNonEmpty!48559 ((_ is ValueCellFull!14844) mapValue!48559)) b!1223821))

(assert (= (and b!1223833 ((_ is ValueCellFull!14844) mapDefault!48559)) b!1223832))

(assert (= start!101750 b!1223833))

(declare-fun b_lambda!22393 () Bool)

(assert (=> (not b_lambda!22393) (not b!1223836)))

(declare-fun t!40459 () Bool)

(declare-fun tb!11211 () Bool)

(assert (=> (and start!101750 (= defaultEntry!1004 defaultEntry!1004) t!40459) tb!11211))

(declare-fun result!23027 () Bool)

(assert (=> tb!11211 (= result!23027 tp_is_empty!31107)))

(assert (=> b!1223836 t!40459))

(declare-fun b_and!44079 () Bool)

(assert (= b_and!44077 (and (=> t!40459 result!23027) b_and!44079)))

(declare-fun m!1128877 () Bool)

(assert (=> b!1223839 m!1128877))

(declare-fun m!1128879 () Bool)

(assert (=> b!1223839 m!1128879))

(declare-fun m!1128881 () Bool)

(assert (=> b!1223828 m!1128881))

(declare-fun m!1128883 () Bool)

(assert (=> b!1223828 m!1128883))

(declare-fun m!1128885 () Bool)

(assert (=> b!1223828 m!1128885))

(declare-fun m!1128887 () Bool)

(assert (=> b!1223828 m!1128887))

(declare-fun m!1128889 () Bool)

(assert (=> b!1223828 m!1128889))

(declare-fun m!1128891 () Bool)

(assert (=> b!1223828 m!1128891))

(assert (=> b!1223828 m!1128889))

(assert (=> b!1223824 m!1128889))

(declare-fun m!1128893 () Bool)

(assert (=> mapNonEmpty!48559 m!1128893))

(declare-fun m!1128895 () Bool)

(assert (=> b!1223834 m!1128895))

(declare-fun m!1128897 () Bool)

(assert (=> b!1223840 m!1128897))

(declare-fun m!1128899 () Bool)

(assert (=> b!1223826 m!1128899))

(declare-fun m!1128901 () Bool)

(assert (=> b!1223826 m!1128901))

(declare-fun m!1128903 () Bool)

(assert (=> b!1223826 m!1128903))

(declare-fun m!1128905 () Bool)

(assert (=> b!1223826 m!1128905))

(declare-fun m!1128907 () Bool)

(assert (=> b!1223826 m!1128907))

(declare-fun m!1128909 () Bool)

(assert (=> start!101750 m!1128909))

(declare-fun m!1128911 () Bool)

(assert (=> start!101750 m!1128911))

(declare-fun m!1128913 () Bool)

(assert (=> b!1223830 m!1128913))

(declare-fun m!1128915 () Bool)

(assert (=> b!1223830 m!1128915))

(declare-fun m!1128917 () Bool)

(assert (=> b!1223838 m!1128917))

(declare-fun m!1128919 () Bool)

(assert (=> b!1223831 m!1128919))

(declare-fun m!1128921 () Bool)

(assert (=> b!1223841 m!1128921))

(declare-fun m!1128923 () Bool)

(assert (=> b!1223836 m!1128923))

(declare-fun m!1128925 () Bool)

(assert (=> b!1223836 m!1128925))

(declare-fun m!1128927 () Bool)

(assert (=> b!1223836 m!1128927))

(declare-fun m!1128929 () Bool)

(assert (=> b!1223836 m!1128929))

(assert (=> b!1223825 m!1128889))

(declare-fun m!1128931 () Bool)

(assert (=> b!1223825 m!1128931))

(declare-fun m!1128933 () Bool)

(assert (=> b!1223825 m!1128933))

(assert (=> b!1223825 m!1128933))

(declare-fun m!1128935 () Bool)

(assert (=> b!1223825 m!1128935))

(declare-fun m!1128937 () Bool)

(assert (=> b!1223827 m!1128937))

(declare-fun m!1128939 () Bool)

(assert (=> b!1223829 m!1128939))

(declare-fun m!1128941 () Bool)

(assert (=> b!1223835 m!1128941))

(check-sat (not b!1223825) (not b!1223836) (not b!1223826) (not b!1223831) (not b!1223827) (not b!1223840) (not b!1223839) (not mapNonEmpty!48559) (not b!1223838) (not b!1223828) (not b!1223834) (not b!1223830) (not b_next!26403) b_and!44079 (not b_lambda!22393) (not start!101750) (not b!1223835) (not b!1223829) tp_is_empty!31107)
(check-sat b_and!44079 (not b_next!26403))
