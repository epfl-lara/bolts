; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99654 () Bool)

(assert start!99654)

(declare-fun b_free!25197 () Bool)

(declare-fun b_next!25197 () Bool)

(assert (=> start!99654 (= b_free!25197 (not b_next!25197))))

(declare-fun tp!88305 () Bool)

(declare-fun b_and!41275 () Bool)

(assert (=> start!99654 (= tp!88305 b_and!41275)))

(declare-fun mapIsEmpty!46418 () Bool)

(declare-fun mapRes!46418 () Bool)

(assert (=> mapIsEmpty!46418 mapRes!46418))

(declare-fun b!1180213 () Bool)

(declare-fun e!671029 () Bool)

(declare-fun e!671032 () Bool)

(assert (=> b!1180213 (= e!671029 e!671032)))

(declare-fun res!784266 () Bool)

(assert (=> b!1180213 (=> res!784266 e!671032)))

(declare-datatypes ((array!76224 0))(
  ( (array!76225 (arr!36758 (Array (_ BitVec 32) (_ BitVec 64))) (size!37295 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76224)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180213 (= res!784266 (not (validKeyInArray!0 (select (arr!36758 _keys!1208) from!1455))))))

(declare-datatypes ((V!44763 0))(
  ( (V!44764 (val!14920 Int)) )
))
(declare-datatypes ((tuple2!19226 0))(
  ( (tuple2!19227 (_1!9623 (_ BitVec 64)) (_2!9623 V!44763)) )
))
(declare-datatypes ((List!25988 0))(
  ( (Nil!25985) (Cons!25984 (h!27193 tuple2!19226) (t!38184 List!25988)) )
))
(declare-datatypes ((ListLongMap!17207 0))(
  ( (ListLongMap!17208 (toList!8619 List!25988)) )
))
(declare-fun lt!533558 () ListLongMap!17207)

(declare-fun lt!533557 () ListLongMap!17207)

(assert (=> b!1180213 (= lt!533558 lt!533557)))

(declare-fun lt!533552 () ListLongMap!17207)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1612 (ListLongMap!17207 (_ BitVec 64)) ListLongMap!17207)

(assert (=> b!1180213 (= lt!533557 (-!1612 lt!533552 k0!934))))

(declare-fun zeroValue!944 () V!44763)

(declare-fun lt!533548 () array!76224)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14154 0))(
  ( (ValueCellFull!14154 (v!17559 V!44763)) (EmptyCell!14154) )
))
(declare-datatypes ((array!76226 0))(
  ( (array!76227 (arr!36759 (Array (_ BitVec 32) ValueCell!14154)) (size!37296 (_ BitVec 32))) )
))
(declare-fun lt!533556 () array!76226)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44763)

(declare-fun getCurrentListMapNoExtraKeys!5047 (array!76224 array!76226 (_ BitVec 32) (_ BitVec 32) V!44763 V!44763 (_ BitVec 32) Int) ListLongMap!17207)

(assert (=> b!1180213 (= lt!533558 (getCurrentListMapNoExtraKeys!5047 lt!533548 lt!533556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76226)

(assert (=> b!1180213 (= lt!533552 (getCurrentListMapNoExtraKeys!5047 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38940 0))(
  ( (Unit!38941) )
))
(declare-fun lt!533546 () Unit!38940)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!836 (array!76224 array!76226 (_ BitVec 32) (_ BitVec 32) V!44763 V!44763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38940)

(assert (=> b!1180213 (= lt!533546 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!836 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180214 () Bool)

(declare-fun res!784263 () Bool)

(declare-fun e!671020 () Bool)

(assert (=> b!1180214 (=> (not res!784263) (not e!671020))))

(assert (=> b!1180214 (= res!784263 (= (select (arr!36758 _keys!1208) i!673) k0!934))))

(declare-fun b!1180215 () Bool)

(declare-fun res!784267 () Bool)

(assert (=> b!1180215 (=> (not res!784267) (not e!671020))))

(assert (=> b!1180215 (= res!784267 (validKeyInArray!0 k0!934))))

(declare-fun b!1180216 () Bool)

(declare-fun res!784265 () Bool)

(assert (=> b!1180216 (=> (not res!784265) (not e!671020))))

(assert (=> b!1180216 (= res!784265 (and (= (size!37296 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37295 _keys!1208) (size!37296 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180217 () Bool)

(declare-fun e!671031 () Bool)

(declare-fun tp_is_empty!29727 () Bool)

(assert (=> b!1180217 (= e!671031 tp_is_empty!29727)))

(declare-fun b!1180219 () Bool)

(declare-fun res!784276 () Bool)

(assert (=> b!1180219 (=> (not res!784276) (not e!671020))))

(assert (=> b!1180219 (= res!784276 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37295 _keys!1208))))))

(declare-fun b!1180220 () Bool)

(declare-fun res!784277 () Bool)

(assert (=> b!1180220 (=> (not res!784277) (not e!671020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180220 (= res!784277 (validMask!0 mask!1564))))

(declare-fun b!1180221 () Bool)

(declare-fun res!784274 () Bool)

(declare-fun e!671030 () Bool)

(assert (=> b!1180221 (=> (not res!784274) (not e!671030))))

(declare-fun lt!533545 () tuple2!19226)

(declare-fun lt!533553 () ListLongMap!17207)

(declare-fun +!3838 (ListLongMap!17207 tuple2!19226) ListLongMap!17207)

(assert (=> b!1180221 (= res!784274 (= lt!533553 (+!3838 lt!533552 lt!533545)))))

(declare-fun b!1180222 () Bool)

(declare-fun res!784271 () Bool)

(declare-fun e!671024 () Bool)

(assert (=> b!1180222 (=> (not res!784271) (not e!671024))))

(declare-datatypes ((List!25989 0))(
  ( (Nil!25986) (Cons!25985 (h!27194 (_ BitVec 64)) (t!38185 List!25989)) )
))
(declare-fun arrayNoDuplicates!0 (array!76224 (_ BitVec 32) List!25989) Bool)

(assert (=> b!1180222 (= res!784271 (arrayNoDuplicates!0 lt!533548 #b00000000000000000000000000000000 Nil!25986))))

(declare-fun b!1180223 () Bool)

(assert (=> b!1180223 (= e!671032 true)))

(assert (=> b!1180223 e!671030))

(declare-fun res!784278 () Bool)

(assert (=> b!1180223 (=> (not res!784278) (not e!671030))))

(assert (=> b!1180223 (= res!784278 (not (= (select (arr!36758 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!533547 () Unit!38940)

(declare-fun e!671026 () Unit!38940)

(assert (=> b!1180223 (= lt!533547 e!671026)))

(declare-fun c!116867 () Bool)

(assert (=> b!1180223 (= c!116867 (= (select (arr!36758 _keys!1208) from!1455) k0!934))))

(declare-fun e!671025 () Bool)

(assert (=> b!1180223 e!671025))

(declare-fun res!784272 () Bool)

(assert (=> b!1180223 (=> (not res!784272) (not e!671025))))

(declare-fun lt!533554 () ListLongMap!17207)

(assert (=> b!1180223 (= res!784272 (= lt!533554 (+!3838 lt!533557 lt!533545)))))

(declare-fun lt!533559 () V!44763)

(declare-fun get!18829 (ValueCell!14154 V!44763) V!44763)

(assert (=> b!1180223 (= lt!533545 (tuple2!19227 (select (arr!36758 _keys!1208) from!1455) (get!18829 (select (arr!36759 _values!996) from!1455) lt!533559)))))

(declare-fun b!1180224 () Bool)

(declare-fun e!671028 () Bool)

(declare-fun e!671022 () Bool)

(assert (=> b!1180224 (= e!671028 (and e!671022 mapRes!46418))))

(declare-fun condMapEmpty!46418 () Bool)

(declare-fun mapDefault!46418 () ValueCell!14154)

(assert (=> b!1180224 (= condMapEmpty!46418 (= (arr!36759 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14154)) mapDefault!46418)))))

(declare-fun b!1180225 () Bool)

(declare-fun e!671023 () Bool)

(assert (=> b!1180225 (= e!671024 (not e!671023))))

(declare-fun res!784269 () Bool)

(assert (=> b!1180225 (=> res!784269 e!671023)))

(assert (=> b!1180225 (= res!784269 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180225 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533551 () Unit!38940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76224 (_ BitVec 64) (_ BitVec 32)) Unit!38940)

(assert (=> b!1180225 (= lt!533551 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180226 () Bool)

(declare-fun Unit!38942 () Unit!38940)

(assert (=> b!1180226 (= e!671026 Unit!38942)))

(declare-fun lt!533555 () Unit!38940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76224 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38940)

(assert (=> b!1180226 (= lt!533555 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1180226 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533549 () Unit!38940)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76224 (_ BitVec 32) (_ BitVec 32)) Unit!38940)

(assert (=> b!1180226 (= lt!533549 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1180226 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25986)))

(declare-fun lt!533550 () Unit!38940)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76224 (_ BitVec 64) (_ BitVec 32) List!25989) Unit!38940)

(assert (=> b!1180226 (= lt!533550 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25986))))

(assert (=> b!1180226 false))

(declare-fun b!1180227 () Bool)

(assert (=> b!1180227 (= e!671020 e!671024)))

(declare-fun res!784275 () Bool)

(assert (=> b!1180227 (=> (not res!784275) (not e!671024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76224 (_ BitVec 32)) Bool)

(assert (=> b!1180227 (= res!784275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533548 mask!1564))))

(assert (=> b!1180227 (= lt!533548 (array!76225 (store (arr!36758 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37295 _keys!1208)))))

(declare-fun b!1180228 () Bool)

(assert (=> b!1180228 (= e!671023 e!671029)))

(declare-fun res!784268 () Bool)

(assert (=> b!1180228 (=> res!784268 e!671029)))

(assert (=> b!1180228 (= res!784268 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1180228 (= lt!533554 (getCurrentListMapNoExtraKeys!5047 lt!533548 lt!533556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1180228 (= lt!533556 (array!76227 (store (arr!36759 _values!996) i!673 (ValueCellFull!14154 lt!533559)) (size!37296 _values!996)))))

(declare-fun dynLambda!3018 (Int (_ BitVec 64)) V!44763)

(assert (=> b!1180228 (= lt!533559 (dynLambda!3018 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1180228 (= lt!533553 (getCurrentListMapNoExtraKeys!5047 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1180229 () Bool)

(declare-fun e!671027 () Bool)

(assert (=> b!1180229 (= e!671025 e!671027)))

(declare-fun res!784273 () Bool)

(assert (=> b!1180229 (=> res!784273 e!671027)))

(assert (=> b!1180229 (= res!784273 (not (= (select (arr!36758 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1180230 () Bool)

(declare-fun Unit!38943 () Unit!38940)

(assert (=> b!1180230 (= e!671026 Unit!38943)))

(declare-fun b!1180231 () Bool)

(assert (=> b!1180231 (= e!671030 (= lt!533557 lt!533558))))

(declare-fun b!1180232 () Bool)

(declare-fun res!784270 () Bool)

(assert (=> b!1180232 (=> (not res!784270) (not e!671020))))

(assert (=> b!1180232 (= res!784270 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25986))))

(declare-fun mapNonEmpty!46418 () Bool)

(declare-fun tp!88306 () Bool)

(assert (=> mapNonEmpty!46418 (= mapRes!46418 (and tp!88306 e!671031))))

(declare-fun mapValue!46418 () ValueCell!14154)

(declare-fun mapRest!46418 () (Array (_ BitVec 32) ValueCell!14154))

(declare-fun mapKey!46418 () (_ BitVec 32))

(assert (=> mapNonEmpty!46418 (= (arr!36759 _values!996) (store mapRest!46418 mapKey!46418 mapValue!46418))))

(declare-fun b!1180233 () Bool)

(assert (=> b!1180233 (= e!671027 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180234 () Bool)

(assert (=> b!1180234 (= e!671022 tp_is_empty!29727)))

(declare-fun b!1180218 () Bool)

(declare-fun res!784279 () Bool)

(assert (=> b!1180218 (=> (not res!784279) (not e!671020))))

(assert (=> b!1180218 (= res!784279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!784264 () Bool)

(assert (=> start!99654 (=> (not res!784264) (not e!671020))))

(assert (=> start!99654 (= res!784264 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37295 _keys!1208))))))

(assert (=> start!99654 e!671020))

(assert (=> start!99654 tp_is_empty!29727))

(declare-fun array_inv!27950 (array!76224) Bool)

(assert (=> start!99654 (array_inv!27950 _keys!1208)))

(assert (=> start!99654 true))

(assert (=> start!99654 tp!88305))

(declare-fun array_inv!27951 (array!76226) Bool)

(assert (=> start!99654 (and (array_inv!27951 _values!996) e!671028)))

(assert (= (and start!99654 res!784264) b!1180220))

(assert (= (and b!1180220 res!784277) b!1180216))

(assert (= (and b!1180216 res!784265) b!1180218))

(assert (= (and b!1180218 res!784279) b!1180232))

(assert (= (and b!1180232 res!784270) b!1180219))

(assert (= (and b!1180219 res!784276) b!1180215))

(assert (= (and b!1180215 res!784267) b!1180214))

(assert (= (and b!1180214 res!784263) b!1180227))

(assert (= (and b!1180227 res!784275) b!1180222))

(assert (= (and b!1180222 res!784271) b!1180225))

(assert (= (and b!1180225 (not res!784269)) b!1180228))

(assert (= (and b!1180228 (not res!784268)) b!1180213))

(assert (= (and b!1180213 (not res!784266)) b!1180223))

(assert (= (and b!1180223 res!784272) b!1180229))

(assert (= (and b!1180229 (not res!784273)) b!1180233))

(assert (= (and b!1180223 c!116867) b!1180226))

(assert (= (and b!1180223 (not c!116867)) b!1180230))

(assert (= (and b!1180223 res!784278) b!1180221))

(assert (= (and b!1180221 res!784274) b!1180231))

(assert (= (and b!1180224 condMapEmpty!46418) mapIsEmpty!46418))

(assert (= (and b!1180224 (not condMapEmpty!46418)) mapNonEmpty!46418))

(get-info :version)

(assert (= (and mapNonEmpty!46418 ((_ is ValueCellFull!14154) mapValue!46418)) b!1180217))

(assert (= (and b!1180224 ((_ is ValueCellFull!14154) mapDefault!46418)) b!1180234))

(assert (= start!99654 b!1180224))

(declare-fun b_lambda!20359 () Bool)

(assert (=> (not b_lambda!20359) (not b!1180228)))

(declare-fun t!38183 () Bool)

(declare-fun tb!10017 () Bool)

(assert (=> (and start!99654 (= defaultEntry!1004 defaultEntry!1004) t!38183) tb!10017))

(declare-fun result!20593 () Bool)

(assert (=> tb!10017 (= result!20593 tp_is_empty!29727)))

(assert (=> b!1180228 t!38183))

(declare-fun b_and!41277 () Bool)

(assert (= b_and!41275 (and (=> t!38183 result!20593) b_and!41277)))

(declare-fun m!1088225 () Bool)

(assert (=> b!1180227 m!1088225))

(declare-fun m!1088227 () Bool)

(assert (=> b!1180227 m!1088227))

(declare-fun m!1088229 () Bool)

(assert (=> b!1180233 m!1088229))

(declare-fun m!1088231 () Bool)

(assert (=> b!1180229 m!1088231))

(declare-fun m!1088233 () Bool)

(assert (=> b!1180220 m!1088233))

(declare-fun m!1088235 () Bool)

(assert (=> b!1180222 m!1088235))

(declare-fun m!1088237 () Bool)

(assert (=> b!1180225 m!1088237))

(declare-fun m!1088239 () Bool)

(assert (=> b!1180225 m!1088239))

(declare-fun m!1088241 () Bool)

(assert (=> b!1180221 m!1088241))

(declare-fun m!1088243 () Bool)

(assert (=> b!1180228 m!1088243))

(declare-fun m!1088245 () Bool)

(assert (=> b!1180228 m!1088245))

(declare-fun m!1088247 () Bool)

(assert (=> b!1180228 m!1088247))

(declare-fun m!1088249 () Bool)

(assert (=> b!1180228 m!1088249))

(declare-fun m!1088251 () Bool)

(assert (=> b!1180215 m!1088251))

(assert (=> b!1180223 m!1088231))

(declare-fun m!1088253 () Bool)

(assert (=> b!1180223 m!1088253))

(declare-fun m!1088255 () Bool)

(assert (=> b!1180223 m!1088255))

(assert (=> b!1180223 m!1088255))

(declare-fun m!1088257 () Bool)

(assert (=> b!1180223 m!1088257))

(declare-fun m!1088259 () Bool)

(assert (=> b!1180226 m!1088259))

(declare-fun m!1088261 () Bool)

(assert (=> b!1180226 m!1088261))

(declare-fun m!1088263 () Bool)

(assert (=> b!1180226 m!1088263))

(declare-fun m!1088265 () Bool)

(assert (=> b!1180226 m!1088265))

(declare-fun m!1088267 () Bool)

(assert (=> b!1180226 m!1088267))

(declare-fun m!1088269 () Bool)

(assert (=> start!99654 m!1088269))

(declare-fun m!1088271 () Bool)

(assert (=> start!99654 m!1088271))

(declare-fun m!1088273 () Bool)

(assert (=> b!1180213 m!1088273))

(declare-fun m!1088275 () Bool)

(assert (=> b!1180213 m!1088275))

(declare-fun m!1088277 () Bool)

(assert (=> b!1180213 m!1088277))

(assert (=> b!1180213 m!1088231))

(declare-fun m!1088279 () Bool)

(assert (=> b!1180213 m!1088279))

(declare-fun m!1088281 () Bool)

(assert (=> b!1180213 m!1088281))

(assert (=> b!1180213 m!1088231))

(declare-fun m!1088283 () Bool)

(assert (=> b!1180232 m!1088283))

(declare-fun m!1088285 () Bool)

(assert (=> b!1180218 m!1088285))

(declare-fun m!1088287 () Bool)

(assert (=> mapNonEmpty!46418 m!1088287))

(declare-fun m!1088289 () Bool)

(assert (=> b!1180214 m!1088289))

(check-sat (not b!1180233) (not b!1180213) (not b!1180223) (not b!1180222) (not start!99654) (not b!1180215) (not b!1180220) (not b!1180232) (not b!1180228) b_and!41277 (not b_lambda!20359) (not b!1180226) (not b!1180227) tp_is_empty!29727 (not b!1180225) (not b!1180218) (not b_next!25197) (not mapNonEmpty!46418) (not b!1180221))
(check-sat b_and!41277 (not b_next!25197))
