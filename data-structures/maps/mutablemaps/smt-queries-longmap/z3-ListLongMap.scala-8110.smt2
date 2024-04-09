; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99564 () Bool)

(assert start!99564)

(declare-fun b_free!25107 () Bool)

(declare-fun b_next!25107 () Bool)

(assert (=> start!99564 (= b_free!25107 (not b_next!25107))))

(declare-fun tp!88036 () Bool)

(declare-fun b_and!41095 () Bool)

(assert (=> start!99564 (= tp!88036 b_and!41095)))

(declare-fun mapIsEmpty!46283 () Bool)

(declare-fun mapRes!46283 () Bool)

(assert (=> mapIsEmpty!46283 mapRes!46283))

(declare-fun b!1177256 () Bool)

(declare-fun e!669265 () Bool)

(assert (=> b!1177256 (= e!669265 true)))

(declare-fun e!669276 () Bool)

(assert (=> b!1177256 e!669276))

(declare-fun res!782082 () Bool)

(assert (=> b!1177256 (=> (not res!782082) (not e!669276))))

(declare-datatypes ((array!76050 0))(
  ( (array!76051 (arr!36671 (Array (_ BitVec 32) (_ BitVec 64))) (size!37208 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76050)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1177256 (= res!782082 (not (= (select (arr!36671 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38814 0))(
  ( (Unit!38815) )
))
(declare-fun lt!531528 () Unit!38814)

(declare-fun e!669273 () Unit!38814)

(assert (=> b!1177256 (= lt!531528 e!669273)))

(declare-fun c!116732 () Bool)

(assert (=> b!1177256 (= c!116732 (= (select (arr!36671 _keys!1208) from!1455) k0!934))))

(declare-fun e!669270 () Bool)

(assert (=> b!1177256 e!669270))

(declare-fun res!782084 () Bool)

(assert (=> b!1177256 (=> (not res!782084) (not e!669270))))

(declare-datatypes ((V!44643 0))(
  ( (V!44644 (val!14875 Int)) )
))
(declare-datatypes ((tuple2!19148 0))(
  ( (tuple2!19149 (_1!9584 (_ BitVec 64)) (_2!9584 V!44643)) )
))
(declare-fun lt!531534 () tuple2!19148)

(declare-datatypes ((List!25915 0))(
  ( (Nil!25912) (Cons!25911 (h!27120 tuple2!19148) (t!38021 List!25915)) )
))
(declare-datatypes ((ListLongMap!17129 0))(
  ( (ListLongMap!17130 (toList!8580 List!25915)) )
))
(declare-fun lt!531522 () ListLongMap!17129)

(declare-fun lt!531527 () ListLongMap!17129)

(declare-fun +!3803 (ListLongMap!17129 tuple2!19148) ListLongMap!17129)

(assert (=> b!1177256 (= res!782084 (= lt!531522 (+!3803 lt!531527 lt!531534)))))

(declare-datatypes ((ValueCell!14109 0))(
  ( (ValueCellFull!14109 (v!17514 V!44643)) (EmptyCell!14109) )
))
(declare-datatypes ((array!76052 0))(
  ( (array!76053 (arr!36672 (Array (_ BitVec 32) ValueCell!14109)) (size!37209 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76052)

(declare-fun lt!531533 () V!44643)

(declare-fun get!18771 (ValueCell!14109 V!44643) V!44643)

(assert (=> b!1177256 (= lt!531534 (tuple2!19149 (select (arr!36671 _keys!1208) from!1455) (get!18771 (select (arr!36672 _values!996) from!1455) lt!531533)))))

(declare-fun b!1177257 () Bool)

(declare-fun res!782076 () Bool)

(declare-fun e!669267 () Bool)

(assert (=> b!1177257 (=> (not res!782076) (not e!669267))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177257 (= res!782076 (= (select (arr!36671 _keys!1208) i!673) k0!934))))

(declare-fun b!1177258 () Bool)

(declare-fun e!669275 () Bool)

(assert (=> b!1177258 (= e!669267 e!669275)))

(declare-fun res!782081 () Bool)

(assert (=> b!1177258 (=> (not res!782081) (not e!669275))))

(declare-fun lt!531532 () array!76050)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76050 (_ BitVec 32)) Bool)

(assert (=> b!1177258 (= res!782081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531532 mask!1564))))

(assert (=> b!1177258 (= lt!531532 (array!76051 (store (arr!36671 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37208 _keys!1208)))))

(declare-fun b!1177259 () Bool)

(declare-fun e!669277 () Bool)

(declare-fun e!669271 () Bool)

(assert (=> b!1177259 (= e!669277 e!669271)))

(declare-fun res!782083 () Bool)

(assert (=> b!1177259 (=> res!782083 e!669271)))

(assert (=> b!1177259 (= res!782083 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44643)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44643)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531525 () array!76052)

(declare-fun getCurrentListMapNoExtraKeys!5011 (array!76050 array!76052 (_ BitVec 32) (_ BitVec 32) V!44643 V!44643 (_ BitVec 32) Int) ListLongMap!17129)

(assert (=> b!1177259 (= lt!531522 (getCurrentListMapNoExtraKeys!5011 lt!531532 lt!531525 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1177259 (= lt!531525 (array!76053 (store (arr!36672 _values!996) i!673 (ValueCellFull!14109 lt!531533)) (size!37209 _values!996)))))

(declare-fun dynLambda!2987 (Int (_ BitVec 64)) V!44643)

(assert (=> b!1177259 (= lt!531533 (dynLambda!2987 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531521 () ListLongMap!17129)

(assert (=> b!1177259 (= lt!531521 (getCurrentListMapNoExtraKeys!5011 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531531 () ListLongMap!17129)

(declare-fun b!1177260 () Bool)

(assert (=> b!1177260 (= e!669276 (= lt!531521 (+!3803 lt!531531 lt!531534)))))

(declare-fun b!1177261 () Bool)

(declare-fun e!669274 () Bool)

(assert (=> b!1177261 (= e!669270 e!669274)))

(declare-fun res!782085 () Bool)

(assert (=> b!1177261 (=> res!782085 e!669274)))

(assert (=> b!1177261 (= res!782085 (not (= (select (arr!36671 _keys!1208) from!1455) k0!934)))))

(declare-fun res!782078 () Bool)

(assert (=> start!99564 (=> (not res!782078) (not e!669267))))

(assert (=> start!99564 (= res!782078 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37208 _keys!1208))))))

(assert (=> start!99564 e!669267))

(declare-fun tp_is_empty!29637 () Bool)

(assert (=> start!99564 tp_is_empty!29637))

(declare-fun array_inv!27894 (array!76050) Bool)

(assert (=> start!99564 (array_inv!27894 _keys!1208)))

(assert (=> start!99564 true))

(assert (=> start!99564 tp!88036))

(declare-fun e!669266 () Bool)

(declare-fun array_inv!27895 (array!76052) Bool)

(assert (=> start!99564 (and (array_inv!27895 _values!996) e!669266)))

(declare-fun b!1177262 () Bool)

(declare-fun e!669268 () Bool)

(assert (=> b!1177262 (= e!669266 (and e!669268 mapRes!46283))))

(declare-fun condMapEmpty!46283 () Bool)

(declare-fun mapDefault!46283 () ValueCell!14109)

(assert (=> b!1177262 (= condMapEmpty!46283 (= (arr!36672 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14109)) mapDefault!46283)))))

(declare-fun b!1177263 () Bool)

(declare-fun Unit!38816 () Unit!38814)

(assert (=> b!1177263 (= e!669273 Unit!38816)))

(declare-fun lt!531520 () Unit!38814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76050 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38814)

(assert (=> b!1177263 (= lt!531520 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177263 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531530 () Unit!38814)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76050 (_ BitVec 32) (_ BitVec 32)) Unit!38814)

(assert (=> b!1177263 (= lt!531530 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25916 0))(
  ( (Nil!25913) (Cons!25912 (h!27121 (_ BitVec 64)) (t!38022 List!25916)) )
))
(declare-fun arrayNoDuplicates!0 (array!76050 (_ BitVec 32) List!25916) Bool)

(assert (=> b!1177263 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25913)))

(declare-fun lt!531526 () Unit!38814)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76050 (_ BitVec 64) (_ BitVec 32) List!25916) Unit!38814)

(assert (=> b!1177263 (= lt!531526 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25913))))

(assert (=> b!1177263 false))

(declare-fun b!1177264 () Bool)

(assert (=> b!1177264 (= e!669275 (not e!669277))))

(declare-fun res!782074 () Bool)

(assert (=> b!1177264 (=> res!782074 e!669277)))

(assert (=> b!1177264 (= res!782074 (bvsgt from!1455 i!673))))

(assert (=> b!1177264 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!531529 () Unit!38814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76050 (_ BitVec 64) (_ BitVec 32)) Unit!38814)

(assert (=> b!1177264 (= lt!531529 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177265 () Bool)

(declare-fun res!782080 () Bool)

(assert (=> b!1177265 (=> (not res!782080) (not e!669275))))

(assert (=> b!1177265 (= res!782080 (arrayNoDuplicates!0 lt!531532 #b00000000000000000000000000000000 Nil!25913))))

(declare-fun b!1177266 () Bool)

(declare-fun res!782072 () Bool)

(assert (=> b!1177266 (=> (not res!782072) (not e!669267))))

(assert (=> b!1177266 (= res!782072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46283 () Bool)

(declare-fun tp!88035 () Bool)

(declare-fun e!669272 () Bool)

(assert (=> mapNonEmpty!46283 (= mapRes!46283 (and tp!88035 e!669272))))

(declare-fun mapKey!46283 () (_ BitVec 32))

(declare-fun mapRest!46283 () (Array (_ BitVec 32) ValueCell!14109))

(declare-fun mapValue!46283 () ValueCell!14109)

(assert (=> mapNonEmpty!46283 (= (arr!36672 _values!996) (store mapRest!46283 mapKey!46283 mapValue!46283))))

(declare-fun b!1177267 () Bool)

(declare-fun Unit!38817 () Unit!38814)

(assert (=> b!1177267 (= e!669273 Unit!38817)))

(declare-fun b!1177268 () Bool)

(assert (=> b!1177268 (= e!669268 tp_is_empty!29637)))

(declare-fun b!1177269 () Bool)

(declare-fun res!782079 () Bool)

(assert (=> b!1177269 (=> (not res!782079) (not e!669267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177269 (= res!782079 (validMask!0 mask!1564))))

(declare-fun b!1177270 () Bool)

(declare-fun res!782077 () Bool)

(assert (=> b!1177270 (=> (not res!782077) (not e!669267))))

(assert (=> b!1177270 (= res!782077 (and (= (size!37209 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37208 _keys!1208) (size!37209 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177271 () Bool)

(declare-fun res!782071 () Bool)

(assert (=> b!1177271 (=> (not res!782071) (not e!669267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177271 (= res!782071 (validKeyInArray!0 k0!934))))

(declare-fun b!1177272 () Bool)

(assert (=> b!1177272 (= e!669272 tp_is_empty!29637)))

(declare-fun b!1177273 () Bool)

(assert (=> b!1177273 (= e!669274 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177274 () Bool)

(declare-fun res!782086 () Bool)

(assert (=> b!1177274 (=> (not res!782086) (not e!669267))))

(assert (=> b!1177274 (= res!782086 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37208 _keys!1208))))))

(declare-fun b!1177275 () Bool)

(assert (=> b!1177275 (= e!669271 e!669265)))

(declare-fun res!782075 () Bool)

(assert (=> b!1177275 (=> res!782075 e!669265)))

(assert (=> b!1177275 (= res!782075 (not (validKeyInArray!0 (select (arr!36671 _keys!1208) from!1455))))))

(declare-fun lt!531523 () ListLongMap!17129)

(assert (=> b!1177275 (= lt!531523 lt!531527)))

(declare-fun -!1582 (ListLongMap!17129 (_ BitVec 64)) ListLongMap!17129)

(assert (=> b!1177275 (= lt!531527 (-!1582 lt!531531 k0!934))))

(assert (=> b!1177275 (= lt!531523 (getCurrentListMapNoExtraKeys!5011 lt!531532 lt!531525 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177275 (= lt!531531 (getCurrentListMapNoExtraKeys!5011 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531524 () Unit!38814)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!806 (array!76050 array!76052 (_ BitVec 32) (_ BitVec 32) V!44643 V!44643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38814)

(assert (=> b!1177275 (= lt!531524 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!806 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177276 () Bool)

(declare-fun res!782073 () Bool)

(assert (=> b!1177276 (=> (not res!782073) (not e!669267))))

(assert (=> b!1177276 (= res!782073 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25913))))

(assert (= (and start!99564 res!782078) b!1177269))

(assert (= (and b!1177269 res!782079) b!1177270))

(assert (= (and b!1177270 res!782077) b!1177266))

(assert (= (and b!1177266 res!782072) b!1177276))

(assert (= (and b!1177276 res!782073) b!1177274))

(assert (= (and b!1177274 res!782086) b!1177271))

(assert (= (and b!1177271 res!782071) b!1177257))

(assert (= (and b!1177257 res!782076) b!1177258))

(assert (= (and b!1177258 res!782081) b!1177265))

(assert (= (and b!1177265 res!782080) b!1177264))

(assert (= (and b!1177264 (not res!782074)) b!1177259))

(assert (= (and b!1177259 (not res!782083)) b!1177275))

(assert (= (and b!1177275 (not res!782075)) b!1177256))

(assert (= (and b!1177256 res!782084) b!1177261))

(assert (= (and b!1177261 (not res!782085)) b!1177273))

(assert (= (and b!1177256 c!116732) b!1177263))

(assert (= (and b!1177256 (not c!116732)) b!1177267))

(assert (= (and b!1177256 res!782082) b!1177260))

(assert (= (and b!1177262 condMapEmpty!46283) mapIsEmpty!46283))

(assert (= (and b!1177262 (not condMapEmpty!46283)) mapNonEmpty!46283))

(get-info :version)

(assert (= (and mapNonEmpty!46283 ((_ is ValueCellFull!14109) mapValue!46283)) b!1177272))

(assert (= (and b!1177262 ((_ is ValueCellFull!14109) mapDefault!46283)) b!1177268))

(assert (= start!99564 b!1177262))

(declare-fun b_lambda!20269 () Bool)

(assert (=> (not b_lambda!20269) (not b!1177259)))

(declare-fun t!38020 () Bool)

(declare-fun tb!9927 () Bool)

(assert (=> (and start!99564 (= defaultEntry!1004 defaultEntry!1004) t!38020) tb!9927))

(declare-fun result!20413 () Bool)

(assert (=> tb!9927 (= result!20413 tp_is_empty!29637)))

(assert (=> b!1177259 t!38020))

(declare-fun b_and!41097 () Bool)

(assert (= b_and!41095 (and (=> t!38020 result!20413) b_and!41097)))

(declare-fun m!1085255 () Bool)

(assert (=> b!1177273 m!1085255))

(declare-fun m!1085257 () Bool)

(assert (=> b!1177276 m!1085257))

(declare-fun m!1085259 () Bool)

(assert (=> b!1177257 m!1085259))

(declare-fun m!1085261 () Bool)

(assert (=> b!1177271 m!1085261))

(declare-fun m!1085263 () Bool)

(assert (=> start!99564 m!1085263))

(declare-fun m!1085265 () Bool)

(assert (=> start!99564 m!1085265))

(declare-fun m!1085267 () Bool)

(assert (=> b!1177259 m!1085267))

(declare-fun m!1085269 () Bool)

(assert (=> b!1177259 m!1085269))

(declare-fun m!1085271 () Bool)

(assert (=> b!1177259 m!1085271))

(declare-fun m!1085273 () Bool)

(assert (=> b!1177259 m!1085273))

(declare-fun m!1085275 () Bool)

(assert (=> b!1177263 m!1085275))

(declare-fun m!1085277 () Bool)

(assert (=> b!1177263 m!1085277))

(declare-fun m!1085279 () Bool)

(assert (=> b!1177263 m!1085279))

(declare-fun m!1085281 () Bool)

(assert (=> b!1177263 m!1085281))

(declare-fun m!1085283 () Bool)

(assert (=> b!1177263 m!1085283))

(declare-fun m!1085285 () Bool)

(assert (=> b!1177261 m!1085285))

(declare-fun m!1085287 () Bool)

(assert (=> b!1177269 m!1085287))

(declare-fun m!1085289 () Bool)

(assert (=> mapNonEmpty!46283 m!1085289))

(declare-fun m!1085291 () Bool)

(assert (=> b!1177264 m!1085291))

(declare-fun m!1085293 () Bool)

(assert (=> b!1177264 m!1085293))

(declare-fun m!1085295 () Bool)

(assert (=> b!1177275 m!1085295))

(declare-fun m!1085297 () Bool)

(assert (=> b!1177275 m!1085297))

(declare-fun m!1085299 () Bool)

(assert (=> b!1177275 m!1085299))

(assert (=> b!1177275 m!1085285))

(declare-fun m!1085301 () Bool)

(assert (=> b!1177275 m!1085301))

(declare-fun m!1085303 () Bool)

(assert (=> b!1177275 m!1085303))

(assert (=> b!1177275 m!1085285))

(declare-fun m!1085305 () Bool)

(assert (=> b!1177260 m!1085305))

(declare-fun m!1085307 () Bool)

(assert (=> b!1177266 m!1085307))

(declare-fun m!1085309 () Bool)

(assert (=> b!1177258 m!1085309))

(declare-fun m!1085311 () Bool)

(assert (=> b!1177258 m!1085311))

(declare-fun m!1085313 () Bool)

(assert (=> b!1177265 m!1085313))

(assert (=> b!1177256 m!1085285))

(declare-fun m!1085315 () Bool)

(assert (=> b!1177256 m!1085315))

(declare-fun m!1085317 () Bool)

(assert (=> b!1177256 m!1085317))

(assert (=> b!1177256 m!1085317))

(declare-fun m!1085319 () Bool)

(assert (=> b!1177256 m!1085319))

(check-sat (not b_lambda!20269) (not b!1177276) (not b!1177259) (not b!1177264) (not b!1177271) (not b!1177265) b_and!41097 (not b!1177273) (not b!1177260) (not b!1177266) (not b!1177256) (not b!1177263) (not b!1177258) (not b!1177269) (not start!99564) (not b_next!25107) (not b!1177275) (not mapNonEmpty!46283) tp_is_empty!29637)
(check-sat b_and!41097 (not b_next!25107))
