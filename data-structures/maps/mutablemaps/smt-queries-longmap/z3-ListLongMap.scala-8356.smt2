; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101756 () Bool)

(assert start!101756)

(declare-fun b_free!26409 () Bool)

(declare-fun b_next!26409 () Bool)

(assert (=> start!101756 (= b_free!26409 (not b_next!26409))))

(declare-fun tp!92274 () Bool)

(declare-fun b_and!44089 () Bool)

(assert (=> start!101756 (= tp!92274 b_and!44089)))

(declare-fun b!1224021 () Bool)

(declare-fun e!695225 () Bool)

(declare-fun e!695232 () Bool)

(assert (=> b!1224021 (= e!695225 e!695232)))

(declare-fun res!813425 () Bool)

(assert (=> b!1224021 (=> res!813425 e!695232)))

(declare-datatypes ((array!78984 0))(
  ( (array!78985 (arr!38115 (Array (_ BitVec 32) (_ BitVec 64))) (size!38652 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78984)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1224021 (= res!813425 (not (= (select (arr!38115 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1224022 () Bool)

(declare-fun e!695227 () Bool)

(declare-fun tp_is_empty!31113 () Bool)

(assert (=> b!1224022 (= e!695227 tp_is_empty!31113)))

(declare-fun b!1224023 () Bool)

(declare-fun res!813420 () Bool)

(declare-fun e!695230 () Bool)

(assert (=> b!1224023 (=> (not res!813420) (not e!695230))))

(declare-datatypes ((List!27076 0))(
  ( (Nil!27073) (Cons!27072 (h!28281 (_ BitVec 64)) (t!40472 List!27076)) )
))
(declare-fun arrayNoDuplicates!0 (array!78984 (_ BitVec 32) List!27076) Bool)

(assert (=> b!1224023 (= res!813420 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27073))))

(declare-fun mapNonEmpty!48568 () Bool)

(declare-fun mapRes!48568 () Bool)

(declare-fun tp!92273 () Bool)

(assert (=> mapNonEmpty!48568 (= mapRes!48568 (and tp!92273 e!695227))))

(declare-datatypes ((V!46611 0))(
  ( (V!46612 (val!15613 Int)) )
))
(declare-datatypes ((ValueCell!14847 0))(
  ( (ValueCellFull!14847 (v!18276 V!46611)) (EmptyCell!14847) )
))
(declare-fun mapRest!48568 () (Array (_ BitVec 32) ValueCell!14847))

(declare-fun mapKey!48568 () (_ BitVec 32))

(declare-fun mapValue!48568 () ValueCell!14847)

(declare-datatypes ((array!78986 0))(
  ( (array!78987 (arr!38116 (Array (_ BitVec 32) ValueCell!14847)) (size!38653 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78986)

(assert (=> mapNonEmpty!48568 (= (arr!38116 _values!996) (store mapRest!48568 mapKey!48568 mapValue!48568))))

(declare-fun b!1224024 () Bool)

(declare-fun res!813413 () Bool)

(assert (=> b!1224024 (=> (not res!813413) (not e!695230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224024 (= res!813413 (validKeyInArray!0 k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1224025 () Bool)

(declare-fun arrayContainsKey!0 (array!78984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224025 (= e!695232 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224026 () Bool)

(declare-fun res!813421 () Bool)

(assert (=> b!1224026 (=> (not res!813421) (not e!695230))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78984 (_ BitVec 32)) Bool)

(assert (=> b!1224026 (= res!813421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224027 () Bool)

(declare-fun e!695228 () Bool)

(assert (=> b!1224027 (= e!695230 e!695228)))

(declare-fun res!813426 () Bool)

(assert (=> b!1224027 (=> (not res!813426) (not e!695228))))

(declare-fun lt!557239 () array!78984)

(assert (=> b!1224027 (= res!813426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557239 mask!1564))))

(assert (=> b!1224027 (= lt!557239 (array!78985 (store (arr!38115 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38652 _keys!1208)))))

(declare-fun b!1224028 () Bool)

(declare-fun e!695233 () Bool)

(assert (=> b!1224028 (= e!695228 (not e!695233))))

(declare-fun res!813414 () Bool)

(assert (=> b!1224028 (=> res!813414 e!695233)))

(assert (=> b!1224028 (= res!813414 (bvsgt from!1455 i!673))))

(assert (=> b!1224028 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40479 0))(
  ( (Unit!40480) )
))
(declare-fun lt!557238 () Unit!40479)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78984 (_ BitVec 64) (_ BitVec 32)) Unit!40479)

(assert (=> b!1224028 (= lt!557238 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224029 () Bool)

(declare-fun res!813419 () Bool)

(declare-fun e!695229 () Bool)

(assert (=> b!1224029 (=> (not res!813419) (not e!695229))))

(declare-datatypes ((tuple2!20264 0))(
  ( (tuple2!20265 (_1!10142 (_ BitVec 64)) (_2!10142 V!46611)) )
))
(declare-datatypes ((List!27077 0))(
  ( (Nil!27074) (Cons!27073 (h!28282 tuple2!20264) (t!40473 List!27077)) )
))
(declare-datatypes ((ListLongMap!18245 0))(
  ( (ListLongMap!18246 (toList!9138 List!27077)) )
))
(declare-fun lt!557241 () ListLongMap!18245)

(declare-fun lt!557244 () ListLongMap!18245)

(declare-fun lt!557232 () tuple2!20264)

(declare-fun +!4101 (ListLongMap!18245 tuple2!20264) ListLongMap!18245)

(assert (=> b!1224029 (= res!813419 (= lt!557241 (+!4101 lt!557244 lt!557232)))))

(declare-fun b!1224030 () Bool)

(declare-fun e!695234 () Bool)

(assert (=> b!1224030 (= e!695234 tp_is_empty!31113)))

(declare-fun b!1224031 () Bool)

(declare-fun e!695226 () Unit!40479)

(declare-fun Unit!40481 () Unit!40479)

(assert (=> b!1224031 (= e!695226 Unit!40481)))

(declare-fun lt!557237 () Unit!40479)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78984 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40479)

(assert (=> b!1224031 (= lt!557237 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224031 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557231 () Unit!40479)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78984 (_ BitVec 32) (_ BitVec 32)) Unit!40479)

(assert (=> b!1224031 (= lt!557231 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224031 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27073)))

(declare-fun lt!557236 () Unit!40479)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78984 (_ BitVec 64) (_ BitVec 32) List!27076) Unit!40479)

(assert (=> b!1224031 (= lt!557236 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27073))))

(assert (=> b!1224031 false))

(declare-fun b!1224032 () Bool)

(declare-fun res!813423 () Bool)

(assert (=> b!1224032 (=> (not res!813423) (not e!695230))))

(assert (=> b!1224032 (= res!813423 (= (select (arr!38115 _keys!1208) i!673) k0!934))))

(declare-fun b!1224033 () Bool)

(declare-fun e!695224 () Bool)

(assert (=> b!1224033 (= e!695224 (and e!695234 mapRes!48568))))

(declare-fun condMapEmpty!48568 () Bool)

(declare-fun mapDefault!48568 () ValueCell!14847)

(assert (=> b!1224033 (= condMapEmpty!48568 (= (arr!38116 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14847)) mapDefault!48568)))))

(declare-fun b!1224034 () Bool)

(declare-fun res!813416 () Bool)

(assert (=> b!1224034 (=> (not res!813416) (not e!695230))))

(assert (=> b!1224034 (= res!813416 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38652 _keys!1208))))))

(declare-fun b!1224035 () Bool)

(declare-fun Unit!40482 () Unit!40479)

(assert (=> b!1224035 (= e!695226 Unit!40482)))

(declare-fun b!1224036 () Bool)

(declare-fun e!695235 () Bool)

(declare-fun e!695223 () Bool)

(assert (=> b!1224036 (= e!695235 e!695223)))

(declare-fun res!813415 () Bool)

(assert (=> b!1224036 (=> res!813415 e!695223)))

(assert (=> b!1224036 (= res!813415 (not (validKeyInArray!0 (select (arr!38115 _keys!1208) from!1455))))))

(declare-fun lt!557235 () ListLongMap!18245)

(declare-fun lt!557240 () ListLongMap!18245)

(assert (=> b!1224036 (= lt!557235 lt!557240)))

(declare-fun -!1977 (ListLongMap!18245 (_ BitVec 64)) ListLongMap!18245)

(assert (=> b!1224036 (= lt!557240 (-!1977 lt!557244 k0!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!557243 () array!78986)

(declare-fun minValue!944 () V!46611)

(declare-fun zeroValue!944 () V!46611)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5535 (array!78984 array!78986 (_ BitVec 32) (_ BitVec 32) V!46611 V!46611 (_ BitVec 32) Int) ListLongMap!18245)

(assert (=> b!1224036 (= lt!557235 (getCurrentListMapNoExtraKeys!5535 lt!557239 lt!557243 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224036 (= lt!557244 (getCurrentListMapNoExtraKeys!5535 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557233 () Unit!40479)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1179 (array!78984 array!78986 (_ BitVec 32) (_ BitVec 32) V!46611 V!46611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40479)

(assert (=> b!1224036 (= lt!557233 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1179 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224037 () Bool)

(assert (=> b!1224037 (= e!695229 (= lt!557240 lt!557235))))

(declare-fun b!1224038 () Bool)

(declare-fun res!813411 () Bool)

(assert (=> b!1224038 (=> (not res!813411) (not e!695230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224038 (= res!813411 (validMask!0 mask!1564))))

(declare-fun b!1224039 () Bool)

(assert (=> b!1224039 (= e!695223 (bvslt from!1455 (size!38652 _keys!1208)))))

(assert (=> b!1224039 e!695229))

(declare-fun res!813417 () Bool)

(assert (=> b!1224039 (=> (not res!813417) (not e!695229))))

(assert (=> b!1224039 (= res!813417 (not (= (select (arr!38115 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!557242 () Unit!40479)

(assert (=> b!1224039 (= lt!557242 e!695226)))

(declare-fun c!120378 () Bool)

(assert (=> b!1224039 (= c!120378 (= (select (arr!38115 _keys!1208) from!1455) k0!934))))

(assert (=> b!1224039 e!695225))

(declare-fun res!813418 () Bool)

(assert (=> b!1224039 (=> (not res!813418) (not e!695225))))

(declare-fun lt!557234 () ListLongMap!18245)

(assert (=> b!1224039 (= res!813418 (= lt!557234 (+!4101 lt!557240 lt!557232)))))

(declare-fun lt!557245 () V!46611)

(declare-fun get!19509 (ValueCell!14847 V!46611) V!46611)

(assert (=> b!1224039 (= lt!557232 (tuple2!20265 (select (arr!38115 _keys!1208) from!1455) (get!19509 (select (arr!38116 _values!996) from!1455) lt!557245)))))

(declare-fun b!1224040 () Bool)

(assert (=> b!1224040 (= e!695233 e!695235)))

(declare-fun res!813410 () Bool)

(assert (=> b!1224040 (=> res!813410 e!695235)))

(assert (=> b!1224040 (= res!813410 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1224040 (= lt!557234 (getCurrentListMapNoExtraKeys!5535 lt!557239 lt!557243 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224040 (= lt!557243 (array!78987 (store (arr!38116 _values!996) i!673 (ValueCellFull!14847 lt!557245)) (size!38653 _values!996)))))

(declare-fun dynLambda!3431 (Int (_ BitVec 64)) V!46611)

(assert (=> b!1224040 (= lt!557245 (dynLambda!3431 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1224040 (= lt!557241 (getCurrentListMapNoExtraKeys!5535 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224041 () Bool)

(declare-fun res!813422 () Bool)

(assert (=> b!1224041 (=> (not res!813422) (not e!695230))))

(assert (=> b!1224041 (= res!813422 (and (= (size!38653 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38652 _keys!1208) (size!38653 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!48568 () Bool)

(assert (=> mapIsEmpty!48568 mapRes!48568))

(declare-fun res!813424 () Bool)

(assert (=> start!101756 (=> (not res!813424) (not e!695230))))

(assert (=> start!101756 (= res!813424 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38652 _keys!1208))))))

(assert (=> start!101756 e!695230))

(assert (=> start!101756 tp_is_empty!31113))

(declare-fun array_inv!28912 (array!78984) Bool)

(assert (=> start!101756 (array_inv!28912 _keys!1208)))

(assert (=> start!101756 true))

(assert (=> start!101756 tp!92274))

(declare-fun array_inv!28913 (array!78986) Bool)

(assert (=> start!101756 (and (array_inv!28913 _values!996) e!695224)))

(declare-fun b!1224042 () Bool)

(declare-fun res!813412 () Bool)

(assert (=> b!1224042 (=> (not res!813412) (not e!695228))))

(assert (=> b!1224042 (= res!813412 (arrayNoDuplicates!0 lt!557239 #b00000000000000000000000000000000 Nil!27073))))

(assert (= (and start!101756 res!813424) b!1224038))

(assert (= (and b!1224038 res!813411) b!1224041))

(assert (= (and b!1224041 res!813422) b!1224026))

(assert (= (and b!1224026 res!813421) b!1224023))

(assert (= (and b!1224023 res!813420) b!1224034))

(assert (= (and b!1224034 res!813416) b!1224024))

(assert (= (and b!1224024 res!813413) b!1224032))

(assert (= (and b!1224032 res!813423) b!1224027))

(assert (= (and b!1224027 res!813426) b!1224042))

(assert (= (and b!1224042 res!813412) b!1224028))

(assert (= (and b!1224028 (not res!813414)) b!1224040))

(assert (= (and b!1224040 (not res!813410)) b!1224036))

(assert (= (and b!1224036 (not res!813415)) b!1224039))

(assert (= (and b!1224039 res!813418) b!1224021))

(assert (= (and b!1224021 (not res!813425)) b!1224025))

(assert (= (and b!1224039 c!120378) b!1224031))

(assert (= (and b!1224039 (not c!120378)) b!1224035))

(assert (= (and b!1224039 res!813417) b!1224029))

(assert (= (and b!1224029 res!813419) b!1224037))

(assert (= (and b!1224033 condMapEmpty!48568) mapIsEmpty!48568))

(assert (= (and b!1224033 (not condMapEmpty!48568)) mapNonEmpty!48568))

(get-info :version)

(assert (= (and mapNonEmpty!48568 ((_ is ValueCellFull!14847) mapValue!48568)) b!1224022))

(assert (= (and b!1224033 ((_ is ValueCellFull!14847) mapDefault!48568)) b!1224030))

(assert (= start!101756 b!1224033))

(declare-fun b_lambda!22399 () Bool)

(assert (=> (not b_lambda!22399) (not b!1224040)))

(declare-fun t!40471 () Bool)

(declare-fun tb!11217 () Bool)

(assert (=> (and start!101756 (= defaultEntry!1004 defaultEntry!1004) t!40471) tb!11217))

(declare-fun result!23039 () Bool)

(assert (=> tb!11217 (= result!23039 tp_is_empty!31113)))

(assert (=> b!1224040 t!40471))

(declare-fun b_and!44091 () Bool)

(assert (= b_and!44089 (and (=> t!40471 result!23039) b_and!44091)))

(declare-fun m!1129075 () Bool)

(assert (=> b!1224024 m!1129075))

(declare-fun m!1129077 () Bool)

(assert (=> b!1224026 m!1129077))

(declare-fun m!1129079 () Bool)

(assert (=> b!1224031 m!1129079))

(declare-fun m!1129081 () Bool)

(assert (=> b!1224031 m!1129081))

(declare-fun m!1129083 () Bool)

(assert (=> b!1224031 m!1129083))

(declare-fun m!1129085 () Bool)

(assert (=> b!1224031 m!1129085))

(declare-fun m!1129087 () Bool)

(assert (=> b!1224031 m!1129087))

(declare-fun m!1129089 () Bool)

(assert (=> b!1224036 m!1129089))

(declare-fun m!1129091 () Bool)

(assert (=> b!1224036 m!1129091))

(declare-fun m!1129093 () Bool)

(assert (=> b!1224036 m!1129093))

(declare-fun m!1129095 () Bool)

(assert (=> b!1224036 m!1129095))

(declare-fun m!1129097 () Bool)

(assert (=> b!1224036 m!1129097))

(declare-fun m!1129099 () Bool)

(assert (=> b!1224036 m!1129099))

(assert (=> b!1224036 m!1129097))

(assert (=> b!1224039 m!1129097))

(declare-fun m!1129101 () Bool)

(assert (=> b!1224039 m!1129101))

(declare-fun m!1129103 () Bool)

(assert (=> b!1224039 m!1129103))

(assert (=> b!1224039 m!1129103))

(declare-fun m!1129105 () Bool)

(assert (=> b!1224039 m!1129105))

(declare-fun m!1129107 () Bool)

(assert (=> b!1224029 m!1129107))

(declare-fun m!1129109 () Bool)

(assert (=> start!101756 m!1129109))

(declare-fun m!1129111 () Bool)

(assert (=> start!101756 m!1129111))

(declare-fun m!1129113 () Bool)

(assert (=> b!1224042 m!1129113))

(declare-fun m!1129115 () Bool)

(assert (=> b!1224032 m!1129115))

(declare-fun m!1129117 () Bool)

(assert (=> mapNonEmpty!48568 m!1129117))

(assert (=> b!1224021 m!1129097))

(declare-fun m!1129119 () Bool)

(assert (=> b!1224025 m!1129119))

(declare-fun m!1129121 () Bool)

(assert (=> b!1224028 m!1129121))

(declare-fun m!1129123 () Bool)

(assert (=> b!1224028 m!1129123))

(declare-fun m!1129125 () Bool)

(assert (=> b!1224027 m!1129125))

(declare-fun m!1129127 () Bool)

(assert (=> b!1224027 m!1129127))

(declare-fun m!1129129 () Bool)

(assert (=> b!1224040 m!1129129))

(declare-fun m!1129131 () Bool)

(assert (=> b!1224040 m!1129131))

(declare-fun m!1129133 () Bool)

(assert (=> b!1224040 m!1129133))

(declare-fun m!1129135 () Bool)

(assert (=> b!1224040 m!1129135))

(declare-fun m!1129137 () Bool)

(assert (=> b!1224023 m!1129137))

(declare-fun m!1129139 () Bool)

(assert (=> b!1224038 m!1129139))

(check-sat (not b!1224023) (not b!1224031) (not b!1224036) (not b!1224025) (not b_lambda!22399) (not mapNonEmpty!48568) (not b!1224028) tp_is_empty!31113 (not b!1224026) (not b_next!26409) (not b!1224029) (not b!1224027) (not b!1224038) (not b!1224040) (not b!1224024) (not b!1224039) (not b!1224042) (not start!101756) b_and!44091)
(check-sat b_and!44091 (not b_next!26409))
