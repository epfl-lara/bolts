; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99684 () Bool)

(assert start!99684)

(declare-fun b_free!25227 () Bool)

(declare-fun b_next!25227 () Bool)

(assert (=> start!99684 (= b_free!25227 (not b_next!25227))))

(declare-fun tp!88396 () Bool)

(declare-fun b_and!41335 () Bool)

(assert (=> start!99684 (= tp!88396 b_and!41335)))

(declare-fun mapIsEmpty!46463 () Bool)

(declare-fun mapRes!46463 () Bool)

(assert (=> mapIsEmpty!46463 mapRes!46463))

(declare-fun b!1181234 () Bool)

(declare-fun e!671616 () Bool)

(declare-fun e!671613 () Bool)

(assert (=> b!1181234 (= e!671616 e!671613)))

(declare-fun res!785030 () Bool)

(assert (=> b!1181234 (=> res!785030 e!671613)))

(declare-datatypes ((array!76282 0))(
  ( (array!76283 (arr!36787 (Array (_ BitVec 32) (_ BitVec 64))) (size!37324 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76282)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181234 (= res!785030 (not (validKeyInArray!0 (select (arr!36787 _keys!1208) from!1455))))))

(declare-datatypes ((V!44803 0))(
  ( (V!44804 (val!14935 Int)) )
))
(declare-datatypes ((tuple2!19254 0))(
  ( (tuple2!19255 (_1!9637 (_ BitVec 64)) (_2!9637 V!44803)) )
))
(declare-datatypes ((List!26014 0))(
  ( (Nil!26011) (Cons!26010 (h!27219 tuple2!19254) (t!38240 List!26014)) )
))
(declare-datatypes ((ListLongMap!17235 0))(
  ( (ListLongMap!17236 (toList!8633 List!26014)) )
))
(declare-fun lt!534232 () ListLongMap!17235)

(declare-fun lt!534230 () ListLongMap!17235)

(assert (=> b!1181234 (= lt!534232 lt!534230)))

(declare-fun lt!534224 () ListLongMap!17235)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1622 (ListLongMap!17235 (_ BitVec 64)) ListLongMap!17235)

(assert (=> b!1181234 (= lt!534230 (-!1622 lt!534224 k0!934))))

(declare-fun zeroValue!944 () V!44803)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!534227 () array!76282)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14169 0))(
  ( (ValueCellFull!14169 (v!17574 V!44803)) (EmptyCell!14169) )
))
(declare-datatypes ((array!76284 0))(
  ( (array!76285 (arr!36788 (Array (_ BitVec 32) ValueCell!14169)) (size!37325 (_ BitVec 32))) )
))
(declare-fun lt!534226 () array!76284)

(declare-fun minValue!944 () V!44803)

(declare-fun getCurrentListMapNoExtraKeys!5058 (array!76282 array!76284 (_ BitVec 32) (_ BitVec 32) V!44803 V!44803 (_ BitVec 32) Int) ListLongMap!17235)

(assert (=> b!1181234 (= lt!534232 (getCurrentListMapNoExtraKeys!5058 lt!534227 lt!534226 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76284)

(assert (=> b!1181234 (= lt!534224 (getCurrentListMapNoExtraKeys!5058 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38984 0))(
  ( (Unit!38985) )
))
(declare-fun lt!534221 () Unit!38984)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!846 (array!76282 array!76284 (_ BitVec 32) (_ BitVec 32) V!44803 V!44803 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38984)

(assert (=> b!1181234 (= lt!534221 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!846 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181235 () Bool)

(declare-fun res!785036 () Bool)

(declare-fun e!671615 () Bool)

(assert (=> b!1181235 (=> (not res!785036) (not e!671615))))

(declare-datatypes ((List!26015 0))(
  ( (Nil!26012) (Cons!26011 (h!27220 (_ BitVec 64)) (t!38241 List!26015)) )
))
(declare-fun arrayNoDuplicates!0 (array!76282 (_ BitVec 32) List!26015) Bool)

(assert (=> b!1181235 (= res!785036 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26012))))

(declare-fun b!1181236 () Bool)

(declare-fun e!671610 () Bool)

(declare-fun e!671614 () Bool)

(assert (=> b!1181236 (= e!671610 (not e!671614))))

(declare-fun res!785038 () Bool)

(assert (=> b!1181236 (=> res!785038 e!671614)))

(assert (=> b!1181236 (= res!785038 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181236 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!534220 () Unit!38984)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76282 (_ BitVec 64) (_ BitVec 32)) Unit!38984)

(assert (=> b!1181236 (= lt!534220 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181237 () Bool)

(declare-fun e!671608 () Bool)

(declare-fun tp_is_empty!29757 () Bool)

(assert (=> b!1181237 (= e!671608 tp_is_empty!29757)))

(declare-fun b!1181238 () Bool)

(declare-fun e!671607 () Bool)

(declare-fun e!671612 () Bool)

(assert (=> b!1181238 (= e!671607 e!671612)))

(declare-fun res!785031 () Bool)

(assert (=> b!1181238 (=> res!785031 e!671612)))

(assert (=> b!1181238 (= res!785031 (not (= (select (arr!36787 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1181239 () Bool)

(declare-fun res!785039 () Bool)

(assert (=> b!1181239 (=> (not res!785039) (not e!671615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76282 (_ BitVec 32)) Bool)

(assert (=> b!1181239 (= res!785039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181240 () Bool)

(declare-fun res!785044 () Bool)

(declare-fun e!671605 () Bool)

(assert (=> b!1181240 (=> (not res!785044) (not e!671605))))

(declare-fun lt!534225 () ListLongMap!17235)

(declare-fun lt!534223 () tuple2!19254)

(declare-fun +!3852 (ListLongMap!17235 tuple2!19254) ListLongMap!17235)

(assert (=> b!1181240 (= res!785044 (= lt!534225 (+!3852 lt!534224 lt!534223)))))

(declare-fun b!1181241 () Bool)

(declare-fun e!671611 () Unit!38984)

(declare-fun Unit!38986 () Unit!38984)

(assert (=> b!1181241 (= e!671611 Unit!38986)))

(declare-fun lt!534234 () Unit!38984)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38984)

(assert (=> b!1181241 (= lt!534234 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1181241 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534233 () Unit!38984)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76282 (_ BitVec 32) (_ BitVec 32)) Unit!38984)

(assert (=> b!1181241 (= lt!534233 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1181241 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26012)))

(declare-fun lt!534222 () Unit!38984)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76282 (_ BitVec 64) (_ BitVec 32) List!26015) Unit!38984)

(assert (=> b!1181241 (= lt!534222 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26012))))

(assert (=> b!1181241 false))

(declare-fun b!1181242 () Bool)

(assert (=> b!1181242 (= e!671612 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181243 () Bool)

(declare-fun res!785041 () Bool)

(assert (=> b!1181243 (=> (not res!785041) (not e!671615))))

(assert (=> b!1181243 (= res!785041 (= (select (arr!36787 _keys!1208) i!673) k0!934))))

(declare-fun b!1181244 () Bool)

(declare-fun e!671609 () Bool)

(assert (=> b!1181244 (= e!671609 tp_is_empty!29757)))

(declare-fun b!1181245 () Bool)

(declare-fun res!785033 () Bool)

(assert (=> b!1181245 (=> (not res!785033) (not e!671615))))

(assert (=> b!1181245 (= res!785033 (validKeyInArray!0 k0!934))))

(declare-fun b!1181246 () Bool)

(assert (=> b!1181246 (= e!671614 e!671616)))

(declare-fun res!785034 () Bool)

(assert (=> b!1181246 (=> res!785034 e!671616)))

(assert (=> b!1181246 (= res!785034 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!534229 () ListLongMap!17235)

(assert (=> b!1181246 (= lt!534229 (getCurrentListMapNoExtraKeys!5058 lt!534227 lt!534226 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534231 () V!44803)

(assert (=> b!1181246 (= lt!534226 (array!76285 (store (arr!36788 _values!996) i!673 (ValueCellFull!14169 lt!534231)) (size!37325 _values!996)))))

(declare-fun dynLambda!3026 (Int (_ BitVec 64)) V!44803)

(assert (=> b!1181246 (= lt!534231 (dynLambda!3026 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1181246 (= lt!534225 (getCurrentListMapNoExtraKeys!5058 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46463 () Bool)

(declare-fun tp!88395 () Bool)

(assert (=> mapNonEmpty!46463 (= mapRes!46463 (and tp!88395 e!671608))))

(declare-fun mapKey!46463 () (_ BitVec 32))

(declare-fun mapValue!46463 () ValueCell!14169)

(declare-fun mapRest!46463 () (Array (_ BitVec 32) ValueCell!14169))

(assert (=> mapNonEmpty!46463 (= (arr!36788 _values!996) (store mapRest!46463 mapKey!46463 mapValue!46463))))

(declare-fun b!1181247 () Bool)

(declare-fun res!785035 () Bool)

(assert (=> b!1181247 (=> (not res!785035) (not e!671615))))

(assert (=> b!1181247 (= res!785035 (and (= (size!37325 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37324 _keys!1208) (size!37325 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181248 () Bool)

(assert (=> b!1181248 (= e!671615 e!671610)))

(declare-fun res!785028 () Bool)

(assert (=> b!1181248 (=> (not res!785028) (not e!671610))))

(assert (=> b!1181248 (= res!785028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534227 mask!1564))))

(assert (=> b!1181248 (= lt!534227 (array!76283 (store (arr!36787 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37324 _keys!1208)))))

(declare-fun b!1181233 () Bool)

(assert (=> b!1181233 (= e!671613 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37324 _keys!1208))))))

(assert (=> b!1181233 e!671605))

(declare-fun res!785032 () Bool)

(assert (=> b!1181233 (=> (not res!785032) (not e!671605))))

(assert (=> b!1181233 (= res!785032 (not (= (select (arr!36787 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!534228 () Unit!38984)

(assert (=> b!1181233 (= lt!534228 e!671611)))

(declare-fun c!116912 () Bool)

(assert (=> b!1181233 (= c!116912 (= (select (arr!36787 _keys!1208) from!1455) k0!934))))

(assert (=> b!1181233 e!671607))

(declare-fun res!785040 () Bool)

(assert (=> b!1181233 (=> (not res!785040) (not e!671607))))

(assert (=> b!1181233 (= res!785040 (= lt!534229 (+!3852 lt!534230 lt!534223)))))

(declare-fun get!18850 (ValueCell!14169 V!44803) V!44803)

(assert (=> b!1181233 (= lt!534223 (tuple2!19255 (select (arr!36787 _keys!1208) from!1455) (get!18850 (select (arr!36788 _values!996) from!1455) lt!534231)))))

(declare-fun res!785043 () Bool)

(assert (=> start!99684 (=> (not res!785043) (not e!671615))))

(assert (=> start!99684 (= res!785043 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37324 _keys!1208))))))

(assert (=> start!99684 e!671615))

(assert (=> start!99684 tp_is_empty!29757))

(declare-fun array_inv!27968 (array!76282) Bool)

(assert (=> start!99684 (array_inv!27968 _keys!1208)))

(assert (=> start!99684 true))

(assert (=> start!99684 tp!88396))

(declare-fun e!671617 () Bool)

(declare-fun array_inv!27969 (array!76284) Bool)

(assert (=> start!99684 (and (array_inv!27969 _values!996) e!671617)))

(declare-fun b!1181249 () Bool)

(declare-fun Unit!38987 () Unit!38984)

(assert (=> b!1181249 (= e!671611 Unit!38987)))

(declare-fun b!1181250 () Bool)

(declare-fun res!785037 () Bool)

(assert (=> b!1181250 (=> (not res!785037) (not e!671615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181250 (= res!785037 (validMask!0 mask!1564))))

(declare-fun b!1181251 () Bool)

(assert (=> b!1181251 (= e!671605 (= lt!534230 lt!534232))))

(declare-fun b!1181252 () Bool)

(declare-fun res!785029 () Bool)

(assert (=> b!1181252 (=> (not res!785029) (not e!671610))))

(assert (=> b!1181252 (= res!785029 (arrayNoDuplicates!0 lt!534227 #b00000000000000000000000000000000 Nil!26012))))

(declare-fun b!1181253 () Bool)

(assert (=> b!1181253 (= e!671617 (and e!671609 mapRes!46463))))

(declare-fun condMapEmpty!46463 () Bool)

(declare-fun mapDefault!46463 () ValueCell!14169)

(assert (=> b!1181253 (= condMapEmpty!46463 (= (arr!36788 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14169)) mapDefault!46463)))))

(declare-fun b!1181254 () Bool)

(declare-fun res!785042 () Bool)

(assert (=> b!1181254 (=> (not res!785042) (not e!671615))))

(assert (=> b!1181254 (= res!785042 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37324 _keys!1208))))))

(assert (= (and start!99684 res!785043) b!1181250))

(assert (= (and b!1181250 res!785037) b!1181247))

(assert (= (and b!1181247 res!785035) b!1181239))

(assert (= (and b!1181239 res!785039) b!1181235))

(assert (= (and b!1181235 res!785036) b!1181254))

(assert (= (and b!1181254 res!785042) b!1181245))

(assert (= (and b!1181245 res!785033) b!1181243))

(assert (= (and b!1181243 res!785041) b!1181248))

(assert (= (and b!1181248 res!785028) b!1181252))

(assert (= (and b!1181252 res!785029) b!1181236))

(assert (= (and b!1181236 (not res!785038)) b!1181246))

(assert (= (and b!1181246 (not res!785034)) b!1181234))

(assert (= (and b!1181234 (not res!785030)) b!1181233))

(assert (= (and b!1181233 res!785040) b!1181238))

(assert (= (and b!1181238 (not res!785031)) b!1181242))

(assert (= (and b!1181233 c!116912) b!1181241))

(assert (= (and b!1181233 (not c!116912)) b!1181249))

(assert (= (and b!1181233 res!785032) b!1181240))

(assert (= (and b!1181240 res!785044) b!1181251))

(assert (= (and b!1181253 condMapEmpty!46463) mapIsEmpty!46463))

(assert (= (and b!1181253 (not condMapEmpty!46463)) mapNonEmpty!46463))

(get-info :version)

(assert (= (and mapNonEmpty!46463 ((_ is ValueCellFull!14169) mapValue!46463)) b!1181237))

(assert (= (and b!1181253 ((_ is ValueCellFull!14169) mapDefault!46463)) b!1181244))

(assert (= start!99684 b!1181253))

(declare-fun b_lambda!20389 () Bool)

(assert (=> (not b_lambda!20389) (not b!1181246)))

(declare-fun t!38239 () Bool)

(declare-fun tb!10047 () Bool)

(assert (=> (and start!99684 (= defaultEntry!1004 defaultEntry!1004) t!38239) tb!10047))

(declare-fun result!20653 () Bool)

(assert (=> tb!10047 (= result!20653 tp_is_empty!29757)))

(assert (=> b!1181246 t!38239))

(declare-fun b_and!41337 () Bool)

(assert (= b_and!41335 (and (=> t!38239 result!20653) b_and!41337)))

(declare-fun m!1089215 () Bool)

(assert (=> b!1181241 m!1089215))

(declare-fun m!1089217 () Bool)

(assert (=> b!1181241 m!1089217))

(declare-fun m!1089219 () Bool)

(assert (=> b!1181241 m!1089219))

(declare-fun m!1089221 () Bool)

(assert (=> b!1181241 m!1089221))

(declare-fun m!1089223 () Bool)

(assert (=> b!1181241 m!1089223))

(declare-fun m!1089225 () Bool)

(assert (=> b!1181239 m!1089225))

(declare-fun m!1089227 () Bool)

(assert (=> b!1181250 m!1089227))

(declare-fun m!1089229 () Bool)

(assert (=> b!1181243 m!1089229))

(declare-fun m!1089231 () Bool)

(assert (=> b!1181233 m!1089231))

(declare-fun m!1089233 () Bool)

(assert (=> b!1181233 m!1089233))

(declare-fun m!1089235 () Bool)

(assert (=> b!1181233 m!1089235))

(assert (=> b!1181233 m!1089235))

(declare-fun m!1089237 () Bool)

(assert (=> b!1181233 m!1089237))

(declare-fun m!1089239 () Bool)

(assert (=> start!99684 m!1089239))

(declare-fun m!1089241 () Bool)

(assert (=> start!99684 m!1089241))

(declare-fun m!1089243 () Bool)

(assert (=> b!1181252 m!1089243))

(declare-fun m!1089245 () Bool)

(assert (=> b!1181242 m!1089245))

(assert (=> b!1181238 m!1089231))

(declare-fun m!1089247 () Bool)

(assert (=> b!1181235 m!1089247))

(declare-fun m!1089249 () Bool)

(assert (=> b!1181248 m!1089249))

(declare-fun m!1089251 () Bool)

(assert (=> b!1181248 m!1089251))

(declare-fun m!1089253 () Bool)

(assert (=> b!1181236 m!1089253))

(declare-fun m!1089255 () Bool)

(assert (=> b!1181236 m!1089255))

(declare-fun m!1089257 () Bool)

(assert (=> b!1181245 m!1089257))

(declare-fun m!1089259 () Bool)

(assert (=> mapNonEmpty!46463 m!1089259))

(declare-fun m!1089261 () Bool)

(assert (=> b!1181234 m!1089261))

(declare-fun m!1089263 () Bool)

(assert (=> b!1181234 m!1089263))

(declare-fun m!1089265 () Bool)

(assert (=> b!1181234 m!1089265))

(declare-fun m!1089267 () Bool)

(assert (=> b!1181234 m!1089267))

(assert (=> b!1181234 m!1089231))

(declare-fun m!1089269 () Bool)

(assert (=> b!1181234 m!1089269))

(assert (=> b!1181234 m!1089231))

(declare-fun m!1089271 () Bool)

(assert (=> b!1181246 m!1089271))

(declare-fun m!1089273 () Bool)

(assert (=> b!1181246 m!1089273))

(declare-fun m!1089275 () Bool)

(assert (=> b!1181246 m!1089275))

(declare-fun m!1089277 () Bool)

(assert (=> b!1181246 m!1089277))

(declare-fun m!1089279 () Bool)

(assert (=> b!1181240 m!1089279))

(check-sat (not b!1181246) (not b!1181241) (not b!1181234) (not b!1181240) (not b_next!25227) (not b!1181239) (not mapNonEmpty!46463) (not b!1181233) (not b_lambda!20389) (not b!1181235) (not b!1181250) (not b!1181236) b_and!41337 (not b!1181248) (not b!1181245) (not start!99684) (not b!1181252) (not b!1181242) tp_is_empty!29757)
(check-sat b_and!41337 (not b_next!25227))
