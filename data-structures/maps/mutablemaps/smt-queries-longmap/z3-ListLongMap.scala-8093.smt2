; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99462 () Bool)

(assert start!99462)

(declare-fun b_free!25005 () Bool)

(declare-fun b_next!25005 () Bool)

(assert (=> start!99462 (= b_free!25005 (not b_next!25005))))

(declare-fun tp!87730 () Bool)

(declare-fun b_and!40891 () Bool)

(assert (=> start!99462 (= tp!87730 b_and!40891)))

(declare-fun b!1174035 () Bool)

(declare-fun e!667376 () Bool)

(declare-fun tp_is_empty!29535 () Bool)

(assert (=> b!1174035 (= e!667376 tp_is_empty!29535)))

(declare-fun mapNonEmpty!46130 () Bool)

(declare-fun mapRes!46130 () Bool)

(declare-fun tp!87729 () Bool)

(assert (=> mapNonEmpty!46130 (= mapRes!46130 (and tp!87729 e!667376))))

(declare-datatypes ((V!44507 0))(
  ( (V!44508 (val!14824 Int)) )
))
(declare-datatypes ((ValueCell!14058 0))(
  ( (ValueCellFull!14058 (v!17463 V!44507)) (EmptyCell!14058) )
))
(declare-fun mapRest!46130 () (Array (_ BitVec 32) ValueCell!14058))

(declare-fun mapKey!46130 () (_ BitVec 32))

(declare-datatypes ((array!75846 0))(
  ( (array!75847 (arr!36569 (Array (_ BitVec 32) ValueCell!14058)) (size!37106 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75846)

(declare-fun mapValue!46130 () ValueCell!14058)

(assert (=> mapNonEmpty!46130 (= (arr!36569 _values!996) (store mapRest!46130 mapKey!46130 mapValue!46130))))

(declare-fun b!1174036 () Bool)

(declare-fun e!667377 () Bool)

(assert (=> b!1174036 (= e!667377 tp_is_empty!29535)))

(declare-fun b!1174037 () Bool)

(declare-fun e!667380 () Bool)

(assert (=> b!1174037 (= e!667380 true)))

(declare-datatypes ((array!75848 0))(
  ( (array!75849 (arr!36570 (Array (_ BitVec 32) (_ BitVec 64))) (size!37107 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75848)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1174037 (not (= (select (arr!36570 _keys!1208) from!1455) k0!934))))

(declare-datatypes ((Unit!38633 0))(
  ( (Unit!38634) )
))
(declare-fun lt!529325 () Unit!38633)

(declare-fun e!667378 () Unit!38633)

(assert (=> b!1174037 (= lt!529325 e!667378)))

(declare-fun c!116579 () Bool)

(assert (=> b!1174037 (= c!116579 (= (select (arr!36570 _keys!1208) from!1455) k0!934))))

(declare-fun e!667371 () Bool)

(assert (=> b!1174037 e!667371))

(declare-fun res!779731 () Bool)

(assert (=> b!1174037 (=> (not res!779731) (not e!667371))))

(declare-datatypes ((tuple2!19048 0))(
  ( (tuple2!19049 (_1!9534 (_ BitVec 64)) (_2!9534 V!44507)) )
))
(declare-datatypes ((List!25819 0))(
  ( (Nil!25816) (Cons!25815 (h!27024 tuple2!19048) (t!37823 List!25819)) )
))
(declare-datatypes ((ListLongMap!17029 0))(
  ( (ListLongMap!17030 (toList!8530 List!25819)) )
))
(declare-fun lt!529321 () ListLongMap!17029)

(declare-fun lt!529326 () ListLongMap!17029)

(declare-fun lt!529331 () V!44507)

(declare-fun +!3764 (ListLongMap!17029 tuple2!19048) ListLongMap!17029)

(declare-fun get!18699 (ValueCell!14058 V!44507) V!44507)

(assert (=> b!1174037 (= res!779731 (= lt!529321 (+!3764 lt!529326 (tuple2!19049 (select (arr!36570 _keys!1208) from!1455) (get!18699 (select (arr!36569 _values!996) from!1455) lt!529331)))))))

(declare-fun b!1174038 () Bool)

(declare-fun res!779718 () Bool)

(declare-fun e!667374 () Bool)

(assert (=> b!1174038 (=> (not res!779718) (not e!667374))))

(declare-datatypes ((List!25820 0))(
  ( (Nil!25817) (Cons!25816 (h!27025 (_ BitVec 64)) (t!37824 List!25820)) )
))
(declare-fun arrayNoDuplicates!0 (array!75848 (_ BitVec 32) List!25820) Bool)

(assert (=> b!1174038 (= res!779718 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25817))))

(declare-fun b!1174039 () Bool)

(declare-fun res!779722 () Bool)

(declare-fun e!667373 () Bool)

(assert (=> b!1174039 (=> (not res!779722) (not e!667373))))

(declare-fun lt!529320 () array!75848)

(assert (=> b!1174039 (= res!779722 (arrayNoDuplicates!0 lt!529320 #b00000000000000000000000000000000 Nil!25817))))

(declare-fun b!1174040 () Bool)

(declare-fun e!667379 () Bool)

(declare-fun e!667370 () Bool)

(assert (=> b!1174040 (= e!667379 e!667370)))

(declare-fun res!779726 () Bool)

(assert (=> b!1174040 (=> res!779726 e!667370)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174040 (= res!779726 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44507)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!44507)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!529319 () array!75846)

(declare-fun getCurrentListMapNoExtraKeys!4961 (array!75848 array!75846 (_ BitVec 32) (_ BitVec 32) V!44507 V!44507 (_ BitVec 32) Int) ListLongMap!17029)

(assert (=> b!1174040 (= lt!529321 (getCurrentListMapNoExtraKeys!4961 lt!529320 lt!529319 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174040 (= lt!529319 (array!75847 (store (arr!36569 _values!996) i!673 (ValueCellFull!14058 lt!529331)) (size!37106 _values!996)))))

(declare-fun dynLambda!2945 (Int (_ BitVec 64)) V!44507)

(assert (=> b!1174040 (= lt!529331 (dynLambda!2945 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529328 () ListLongMap!17029)

(assert (=> b!1174040 (= lt!529328 (getCurrentListMapNoExtraKeys!4961 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174041 () Bool)

(declare-fun e!667375 () Bool)

(assert (=> b!1174041 (= e!667375 (and e!667377 mapRes!46130))))

(declare-fun condMapEmpty!46130 () Bool)

(declare-fun mapDefault!46130 () ValueCell!14058)

(assert (=> b!1174041 (= condMapEmpty!46130 (= (arr!36569 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14058)) mapDefault!46130)))))

(declare-fun b!1174042 () Bool)

(declare-fun e!667372 () Bool)

(declare-fun arrayContainsKey!0 (array!75848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174042 (= e!667372 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174043 () Bool)

(assert (=> b!1174043 (= e!667370 e!667380)))

(declare-fun res!779724 () Bool)

(assert (=> b!1174043 (=> res!779724 e!667380)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174043 (= res!779724 (not (validKeyInArray!0 (select (arr!36570 _keys!1208) from!1455))))))

(declare-fun lt!529322 () ListLongMap!17029)

(assert (=> b!1174043 (= lt!529322 lt!529326)))

(declare-fun lt!529332 () ListLongMap!17029)

(declare-fun -!1541 (ListLongMap!17029 (_ BitVec 64)) ListLongMap!17029)

(assert (=> b!1174043 (= lt!529326 (-!1541 lt!529332 k0!934))))

(assert (=> b!1174043 (= lt!529322 (getCurrentListMapNoExtraKeys!4961 lt!529320 lt!529319 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174043 (= lt!529332 (getCurrentListMapNoExtraKeys!4961 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529330 () Unit!38633)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!765 (array!75848 array!75846 (_ BitVec 32) (_ BitVec 32) V!44507 V!44507 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38633)

(assert (=> b!1174043 (= lt!529330 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!765 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174044 () Bool)

(declare-fun res!779730 () Bool)

(assert (=> b!1174044 (=> (not res!779730) (not e!667374))))

(assert (=> b!1174044 (= res!779730 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37107 _keys!1208))))))

(declare-fun b!1174046 () Bool)

(declare-fun Unit!38635 () Unit!38633)

(assert (=> b!1174046 (= e!667378 Unit!38635)))

(declare-fun lt!529324 () Unit!38633)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75848 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38633)

(assert (=> b!1174046 (= lt!529324 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174046 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529329 () Unit!38633)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75848 (_ BitVec 32) (_ BitVec 32)) Unit!38633)

(assert (=> b!1174046 (= lt!529329 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174046 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25817)))

(declare-fun lt!529327 () Unit!38633)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75848 (_ BitVec 64) (_ BitVec 32) List!25820) Unit!38633)

(assert (=> b!1174046 (= lt!529327 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25817))))

(assert (=> b!1174046 false))

(declare-fun b!1174047 () Bool)

(assert (=> b!1174047 (= e!667371 e!667372)))

(declare-fun res!779717 () Bool)

(assert (=> b!1174047 (=> res!779717 e!667372)))

(assert (=> b!1174047 (= res!779717 (not (= (select (arr!36570 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1174048 () Bool)

(declare-fun res!779723 () Bool)

(assert (=> b!1174048 (=> (not res!779723) (not e!667374))))

(assert (=> b!1174048 (= res!779723 (= (select (arr!36570 _keys!1208) i!673) k0!934))))

(declare-fun b!1174049 () Bool)

(declare-fun res!779721 () Bool)

(assert (=> b!1174049 (=> (not res!779721) (not e!667374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75848 (_ BitVec 32)) Bool)

(assert (=> b!1174049 (= res!779721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174050 () Bool)

(declare-fun res!779719 () Bool)

(assert (=> b!1174050 (=> (not res!779719) (not e!667374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174050 (= res!779719 (validMask!0 mask!1564))))

(declare-fun b!1174051 () Bool)

(assert (=> b!1174051 (= e!667373 (not e!667379))))

(declare-fun res!779728 () Bool)

(assert (=> b!1174051 (=> res!779728 e!667379)))

(assert (=> b!1174051 (= res!779728 (bvsgt from!1455 i!673))))

(assert (=> b!1174051 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!529323 () Unit!38633)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75848 (_ BitVec 64) (_ BitVec 32)) Unit!38633)

(assert (=> b!1174051 (= lt!529323 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174052 () Bool)

(declare-fun res!779727 () Bool)

(assert (=> b!1174052 (=> (not res!779727) (not e!667374))))

(assert (=> b!1174052 (= res!779727 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!46130 () Bool)

(assert (=> mapIsEmpty!46130 mapRes!46130))

(declare-fun b!1174053 () Bool)

(assert (=> b!1174053 (= e!667374 e!667373)))

(declare-fun res!779720 () Bool)

(assert (=> b!1174053 (=> (not res!779720) (not e!667373))))

(assert (=> b!1174053 (= res!779720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529320 mask!1564))))

(assert (=> b!1174053 (= lt!529320 (array!75849 (store (arr!36570 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37107 _keys!1208)))))

(declare-fun b!1174054 () Bool)

(declare-fun res!779725 () Bool)

(assert (=> b!1174054 (=> (not res!779725) (not e!667374))))

(assert (=> b!1174054 (= res!779725 (and (= (size!37106 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37107 _keys!1208) (size!37106 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!779729 () Bool)

(assert (=> start!99462 (=> (not res!779729) (not e!667374))))

(assert (=> start!99462 (= res!779729 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37107 _keys!1208))))))

(assert (=> start!99462 e!667374))

(assert (=> start!99462 tp_is_empty!29535))

(declare-fun array_inv!27822 (array!75848) Bool)

(assert (=> start!99462 (array_inv!27822 _keys!1208)))

(assert (=> start!99462 true))

(assert (=> start!99462 tp!87730))

(declare-fun array_inv!27823 (array!75846) Bool)

(assert (=> start!99462 (and (array_inv!27823 _values!996) e!667375)))

(declare-fun b!1174045 () Bool)

(declare-fun Unit!38636 () Unit!38633)

(assert (=> b!1174045 (= e!667378 Unit!38636)))

(assert (= (and start!99462 res!779729) b!1174050))

(assert (= (and b!1174050 res!779719) b!1174054))

(assert (= (and b!1174054 res!779725) b!1174049))

(assert (= (and b!1174049 res!779721) b!1174038))

(assert (= (and b!1174038 res!779718) b!1174044))

(assert (= (and b!1174044 res!779730) b!1174052))

(assert (= (and b!1174052 res!779727) b!1174048))

(assert (= (and b!1174048 res!779723) b!1174053))

(assert (= (and b!1174053 res!779720) b!1174039))

(assert (= (and b!1174039 res!779722) b!1174051))

(assert (= (and b!1174051 (not res!779728)) b!1174040))

(assert (= (and b!1174040 (not res!779726)) b!1174043))

(assert (= (and b!1174043 (not res!779724)) b!1174037))

(assert (= (and b!1174037 res!779731) b!1174047))

(assert (= (and b!1174047 (not res!779717)) b!1174042))

(assert (= (and b!1174037 c!116579) b!1174046))

(assert (= (and b!1174037 (not c!116579)) b!1174045))

(assert (= (and b!1174041 condMapEmpty!46130) mapIsEmpty!46130))

(assert (= (and b!1174041 (not condMapEmpty!46130)) mapNonEmpty!46130))

(get-info :version)

(assert (= (and mapNonEmpty!46130 ((_ is ValueCellFull!14058) mapValue!46130)) b!1174035))

(assert (= (and b!1174041 ((_ is ValueCellFull!14058) mapDefault!46130)) b!1174036))

(assert (= start!99462 b!1174041))

(declare-fun b_lambda!20167 () Bool)

(assert (=> (not b_lambda!20167) (not b!1174040)))

(declare-fun t!37822 () Bool)

(declare-fun tb!9825 () Bool)

(assert (=> (and start!99462 (= defaultEntry!1004 defaultEntry!1004) t!37822) tb!9825))

(declare-fun result!20209 () Bool)

(assert (=> tb!9825 (= result!20209 tp_is_empty!29535)))

(assert (=> b!1174040 t!37822))

(declare-fun b_and!40893 () Bool)

(assert (= b_and!40891 (and (=> t!37822 result!20209) b_and!40893)))

(declare-fun m!1081953 () Bool)

(assert (=> b!1174047 m!1081953))

(declare-fun m!1081955 () Bool)

(assert (=> b!1174046 m!1081955))

(declare-fun m!1081957 () Bool)

(assert (=> b!1174046 m!1081957))

(declare-fun m!1081959 () Bool)

(assert (=> b!1174046 m!1081959))

(declare-fun m!1081961 () Bool)

(assert (=> b!1174046 m!1081961))

(declare-fun m!1081963 () Bool)

(assert (=> b!1174046 m!1081963))

(declare-fun m!1081965 () Bool)

(assert (=> start!99462 m!1081965))

(declare-fun m!1081967 () Bool)

(assert (=> start!99462 m!1081967))

(declare-fun m!1081969 () Bool)

(assert (=> b!1174051 m!1081969))

(declare-fun m!1081971 () Bool)

(assert (=> b!1174051 m!1081971))

(declare-fun m!1081973 () Bool)

(assert (=> b!1174050 m!1081973))

(declare-fun m!1081975 () Bool)

(assert (=> b!1174043 m!1081975))

(declare-fun m!1081977 () Bool)

(assert (=> b!1174043 m!1081977))

(assert (=> b!1174043 m!1081953))

(declare-fun m!1081979 () Bool)

(assert (=> b!1174043 m!1081979))

(declare-fun m!1081981 () Bool)

(assert (=> b!1174043 m!1081981))

(declare-fun m!1081983 () Bool)

(assert (=> b!1174043 m!1081983))

(assert (=> b!1174043 m!1081953))

(declare-fun m!1081985 () Bool)

(assert (=> b!1174039 m!1081985))

(declare-fun m!1081987 () Bool)

(assert (=> b!1174042 m!1081987))

(declare-fun m!1081989 () Bool)

(assert (=> b!1174048 m!1081989))

(declare-fun m!1081991 () Bool)

(assert (=> mapNonEmpty!46130 m!1081991))

(declare-fun m!1081993 () Bool)

(assert (=> b!1174040 m!1081993))

(declare-fun m!1081995 () Bool)

(assert (=> b!1174040 m!1081995))

(declare-fun m!1081997 () Bool)

(assert (=> b!1174040 m!1081997))

(declare-fun m!1081999 () Bool)

(assert (=> b!1174040 m!1081999))

(declare-fun m!1082001 () Bool)

(assert (=> b!1174038 m!1082001))

(declare-fun m!1082003 () Bool)

(assert (=> b!1174053 m!1082003))

(declare-fun m!1082005 () Bool)

(assert (=> b!1174053 m!1082005))

(declare-fun m!1082007 () Bool)

(assert (=> b!1174049 m!1082007))

(assert (=> b!1174037 m!1081953))

(declare-fun m!1082009 () Bool)

(assert (=> b!1174037 m!1082009))

(assert (=> b!1174037 m!1082009))

(declare-fun m!1082011 () Bool)

(assert (=> b!1174037 m!1082011))

(declare-fun m!1082013 () Bool)

(assert (=> b!1174037 m!1082013))

(declare-fun m!1082015 () Bool)

(assert (=> b!1174052 m!1082015))

(check-sat (not b_next!25005) (not b!1174038) (not b!1174053) (not b!1174052) (not b!1174037) (not b!1174040) (not b!1174049) (not b!1174050) (not start!99462) (not b!1174042) (not b_lambda!20167) (not mapNonEmpty!46130) (not b!1174043) (not b!1174046) b_and!40893 (not b!1174051) tp_is_empty!29535 (not b!1174039))
(check-sat b_and!40893 (not b_next!25005))
