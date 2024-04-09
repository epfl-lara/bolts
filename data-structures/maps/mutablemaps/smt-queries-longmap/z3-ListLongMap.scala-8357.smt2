; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101762 () Bool)

(assert start!101762)

(declare-fun b_free!26415 () Bool)

(declare-fun b_next!26415 () Bool)

(assert (=> start!101762 (= b_free!26415 (not b_next!26415))))

(declare-fun tp!92291 () Bool)

(declare-fun b_and!44101 () Bool)

(assert (=> start!101762 (= tp!92291 b_and!44101)))

(declare-fun b!1224225 () Bool)

(declare-fun e!695348 () Bool)

(declare-fun e!695343 () Bool)

(assert (=> b!1224225 (= e!695348 e!695343)))

(declare-fun res!813571 () Bool)

(assert (=> b!1224225 (=> (not res!813571) (not e!695343))))

(declare-datatypes ((array!78996 0))(
  ( (array!78997 (arr!38121 (Array (_ BitVec 32) (_ BitVec 64))) (size!38658 (_ BitVec 32))) )
))
(declare-fun lt!557375 () array!78996)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78996 (_ BitVec 32)) Bool)

(assert (=> b!1224225 (= res!813571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557375 mask!1564))))

(declare-fun _keys!1208 () array!78996)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224225 (= lt!557375 (array!78997 (store (arr!38121 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38658 _keys!1208)))))

(declare-fun b!1224226 () Bool)

(declare-fun e!695347 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!46619 0))(
  ( (V!46620 (val!15616 Int)) )
))
(declare-datatypes ((ValueCell!14850 0))(
  ( (ValueCellFull!14850 (v!18279 V!46619)) (EmptyCell!14850) )
))
(declare-datatypes ((array!78998 0))(
  ( (array!78999 (arr!38122 (Array (_ BitVec 32) ValueCell!14850)) (size!38659 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78998)

(assert (=> b!1224226 (= e!695347 (bvslt from!1455 (size!38659 _values!996)))))

(declare-fun e!695351 () Bool)

(assert (=> b!1224226 e!695351))

(declare-fun res!813576 () Bool)

(assert (=> b!1224226 (=> (not res!813576) (not e!695351))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1224226 (= res!813576 (not (= (select (arr!38121 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!40491 0))(
  ( (Unit!40492) )
))
(declare-fun lt!557369 () Unit!40491)

(declare-fun e!695346 () Unit!40491)

(assert (=> b!1224226 (= lt!557369 e!695346)))

(declare-fun c!120387 () Bool)

(assert (=> b!1224226 (= c!120387 (= (select (arr!38121 _keys!1208) from!1455) k0!934))))

(declare-fun e!695345 () Bool)

(assert (=> b!1224226 e!695345))

(declare-fun res!813578 () Bool)

(assert (=> b!1224226 (=> (not res!813578) (not e!695345))))

(declare-datatypes ((tuple2!20270 0))(
  ( (tuple2!20271 (_1!10145 (_ BitVec 64)) (_2!10145 V!46619)) )
))
(declare-datatypes ((List!27082 0))(
  ( (Nil!27079) (Cons!27078 (h!28287 tuple2!20270) (t!40484 List!27082)) )
))
(declare-datatypes ((ListLongMap!18251 0))(
  ( (ListLongMap!18252 (toList!9141 List!27082)) )
))
(declare-fun lt!557379 () ListLongMap!18251)

(declare-fun lt!557368 () ListLongMap!18251)

(declare-fun lt!557378 () tuple2!20270)

(declare-fun +!4103 (ListLongMap!18251 tuple2!20270) ListLongMap!18251)

(assert (=> b!1224226 (= res!813578 (= lt!557379 (+!4103 lt!557368 lt!557378)))))

(declare-fun lt!557370 () V!46619)

(declare-fun get!19513 (ValueCell!14850 V!46619) V!46619)

(assert (=> b!1224226 (= lt!557378 (tuple2!20271 (select (arr!38121 _keys!1208) from!1455) (get!19513 (select (arr!38122 _values!996) from!1455) lt!557370)))))

(declare-fun mapIsEmpty!48577 () Bool)

(declare-fun mapRes!48577 () Bool)

(assert (=> mapIsEmpty!48577 mapRes!48577))

(declare-fun b!1224227 () Bool)

(declare-fun e!695342 () Bool)

(assert (=> b!1224227 (= e!695343 (not e!695342))))

(declare-fun res!813574 () Bool)

(assert (=> b!1224227 (=> res!813574 e!695342)))

(assert (=> b!1224227 (= res!813574 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224227 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!557371 () Unit!40491)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78996 (_ BitVec 64) (_ BitVec 32)) Unit!40491)

(assert (=> b!1224227 (= lt!557371 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224228 () Bool)

(declare-fun res!813579 () Bool)

(assert (=> b!1224228 (=> (not res!813579) (not e!695351))))

(declare-fun lt!557380 () ListLongMap!18251)

(declare-fun lt!557374 () ListLongMap!18251)

(assert (=> b!1224228 (= res!813579 (= lt!557374 (+!4103 lt!557380 lt!557378)))))

(declare-fun b!1224229 () Bool)

(declare-fun Unit!40493 () Unit!40491)

(assert (=> b!1224229 (= e!695346 Unit!40493)))

(declare-fun lt!557366 () Unit!40491)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78996 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40491)

(assert (=> b!1224229 (= lt!557366 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224229 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557376 () Unit!40491)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78996 (_ BitVec 32) (_ BitVec 32)) Unit!40491)

(assert (=> b!1224229 (= lt!557376 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27083 0))(
  ( (Nil!27080) (Cons!27079 (h!28288 (_ BitVec 64)) (t!40485 List!27083)) )
))
(declare-fun arrayNoDuplicates!0 (array!78996 (_ BitVec 32) List!27083) Bool)

(assert (=> b!1224229 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27080)))

(declare-fun lt!557372 () Unit!40491)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78996 (_ BitVec 64) (_ BitVec 32) List!27083) Unit!40491)

(assert (=> b!1224229 (= lt!557372 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27080))))

(assert (=> b!1224229 false))

(declare-fun b!1224230 () Bool)

(declare-fun res!813567 () Bool)

(assert (=> b!1224230 (=> (not res!813567) (not e!695348))))

(assert (=> b!1224230 (= res!813567 (= (select (arr!38121 _keys!1208) i!673) k0!934))))

(declare-fun b!1224231 () Bool)

(declare-fun e!695350 () Bool)

(declare-fun tp_is_empty!31119 () Bool)

(assert (=> b!1224231 (= e!695350 tp_is_empty!31119)))

(declare-fun b!1224232 () Bool)

(declare-fun res!813564 () Bool)

(assert (=> b!1224232 (=> (not res!813564) (not e!695343))))

(assert (=> b!1224232 (= res!813564 (arrayNoDuplicates!0 lt!557375 #b00000000000000000000000000000000 Nil!27080))))

(declare-fun b!1224233 () Bool)

(declare-fun res!813569 () Bool)

(assert (=> b!1224233 (=> (not res!813569) (not e!695348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224233 (= res!813569 (validMask!0 mask!1564))))

(declare-fun b!1224234 () Bool)

(declare-fun e!695341 () Bool)

(assert (=> b!1224234 (= e!695341 e!695347)))

(declare-fun res!813577 () Bool)

(assert (=> b!1224234 (=> res!813577 e!695347)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224234 (= res!813577 (not (validKeyInArray!0 (select (arr!38121 _keys!1208) from!1455))))))

(declare-fun lt!557367 () ListLongMap!18251)

(assert (=> b!1224234 (= lt!557367 lt!557368)))

(declare-fun -!1979 (ListLongMap!18251 (_ BitVec 64)) ListLongMap!18251)

(assert (=> b!1224234 (= lt!557368 (-!1979 lt!557380 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!557377 () array!78998)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46619)

(declare-fun zeroValue!944 () V!46619)

(declare-fun getCurrentListMapNoExtraKeys!5538 (array!78996 array!78998 (_ BitVec 32) (_ BitVec 32) V!46619 V!46619 (_ BitVec 32) Int) ListLongMap!18251)

(assert (=> b!1224234 (= lt!557367 (getCurrentListMapNoExtraKeys!5538 lt!557375 lt!557377 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224234 (= lt!557380 (getCurrentListMapNoExtraKeys!5538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557373 () Unit!40491)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1181 (array!78996 array!78998 (_ BitVec 32) (_ BitVec 32) V!46619 V!46619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40491)

(assert (=> b!1224234 (= lt!557373 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1181 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224235 () Bool)

(declare-fun res!813566 () Bool)

(assert (=> b!1224235 (=> (not res!813566) (not e!695348))))

(assert (=> b!1224235 (= res!813566 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38658 _keys!1208))))))

(declare-fun b!1224236 () Bool)

(declare-fun res!813573 () Bool)

(assert (=> b!1224236 (=> (not res!813573) (not e!695348))))

(assert (=> b!1224236 (= res!813573 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27080))))

(declare-fun b!1224237 () Bool)

(declare-fun e!695352 () Bool)

(assert (=> b!1224237 (= e!695345 e!695352)))

(declare-fun res!813568 () Bool)

(assert (=> b!1224237 (=> res!813568 e!695352)))

(assert (=> b!1224237 (= res!813568 (not (= (select (arr!38121 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1224238 () Bool)

(assert (=> b!1224238 (= e!695351 (= lt!557368 lt!557367))))

(declare-fun b!1224239 () Bool)

(declare-fun Unit!40494 () Unit!40491)

(assert (=> b!1224239 (= e!695346 Unit!40494)))

(declare-fun b!1224240 () Bool)

(declare-fun e!695344 () Bool)

(declare-fun e!695349 () Bool)

(assert (=> b!1224240 (= e!695344 (and e!695349 mapRes!48577))))

(declare-fun condMapEmpty!48577 () Bool)

(declare-fun mapDefault!48577 () ValueCell!14850)

(assert (=> b!1224240 (= condMapEmpty!48577 (= (arr!38122 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14850)) mapDefault!48577)))))

(declare-fun res!813563 () Bool)

(assert (=> start!101762 (=> (not res!813563) (not e!695348))))

(assert (=> start!101762 (= res!813563 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38658 _keys!1208))))))

(assert (=> start!101762 e!695348))

(assert (=> start!101762 tp_is_empty!31119))

(declare-fun array_inv!28918 (array!78996) Bool)

(assert (=> start!101762 (array_inv!28918 _keys!1208)))

(assert (=> start!101762 true))

(assert (=> start!101762 tp!92291))

(declare-fun array_inv!28919 (array!78998) Bool)

(assert (=> start!101762 (and (array_inv!28919 _values!996) e!695344)))

(declare-fun b!1224241 () Bool)

(assert (=> b!1224241 (= e!695349 tp_is_empty!31119)))

(declare-fun b!1224242 () Bool)

(declare-fun res!813575 () Bool)

(assert (=> b!1224242 (=> (not res!813575) (not e!695348))))

(assert (=> b!1224242 (= res!813575 (and (= (size!38659 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38658 _keys!1208) (size!38659 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48577 () Bool)

(declare-fun tp!92292 () Bool)

(assert (=> mapNonEmpty!48577 (= mapRes!48577 (and tp!92292 e!695350))))

(declare-fun mapRest!48577 () (Array (_ BitVec 32) ValueCell!14850))

(declare-fun mapKey!48577 () (_ BitVec 32))

(declare-fun mapValue!48577 () ValueCell!14850)

(assert (=> mapNonEmpty!48577 (= (arr!38122 _values!996) (store mapRest!48577 mapKey!48577 mapValue!48577))))

(declare-fun b!1224243 () Bool)

(assert (=> b!1224243 (= e!695342 e!695341)))

(declare-fun res!813572 () Bool)

(assert (=> b!1224243 (=> res!813572 e!695341)))

(assert (=> b!1224243 (= res!813572 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1224243 (= lt!557379 (getCurrentListMapNoExtraKeys!5538 lt!557375 lt!557377 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224243 (= lt!557377 (array!78999 (store (arr!38122 _values!996) i!673 (ValueCellFull!14850 lt!557370)) (size!38659 _values!996)))))

(declare-fun dynLambda!3433 (Int (_ BitVec 64)) V!46619)

(assert (=> b!1224243 (= lt!557370 (dynLambda!3433 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1224243 (= lt!557374 (getCurrentListMapNoExtraKeys!5538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224244 () Bool)

(declare-fun res!813570 () Bool)

(assert (=> b!1224244 (=> (not res!813570) (not e!695348))))

(assert (=> b!1224244 (= res!813570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224245 () Bool)

(assert (=> b!1224245 (= e!695352 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224246 () Bool)

(declare-fun res!813565 () Bool)

(assert (=> b!1224246 (=> (not res!813565) (not e!695348))))

(assert (=> b!1224246 (= res!813565 (validKeyInArray!0 k0!934))))

(assert (= (and start!101762 res!813563) b!1224233))

(assert (= (and b!1224233 res!813569) b!1224242))

(assert (= (and b!1224242 res!813575) b!1224244))

(assert (= (and b!1224244 res!813570) b!1224236))

(assert (= (and b!1224236 res!813573) b!1224235))

(assert (= (and b!1224235 res!813566) b!1224246))

(assert (= (and b!1224246 res!813565) b!1224230))

(assert (= (and b!1224230 res!813567) b!1224225))

(assert (= (and b!1224225 res!813571) b!1224232))

(assert (= (and b!1224232 res!813564) b!1224227))

(assert (= (and b!1224227 (not res!813574)) b!1224243))

(assert (= (and b!1224243 (not res!813572)) b!1224234))

(assert (= (and b!1224234 (not res!813577)) b!1224226))

(assert (= (and b!1224226 res!813578) b!1224237))

(assert (= (and b!1224237 (not res!813568)) b!1224245))

(assert (= (and b!1224226 c!120387) b!1224229))

(assert (= (and b!1224226 (not c!120387)) b!1224239))

(assert (= (and b!1224226 res!813576) b!1224228))

(assert (= (and b!1224228 res!813579) b!1224238))

(assert (= (and b!1224240 condMapEmpty!48577) mapIsEmpty!48577))

(assert (= (and b!1224240 (not condMapEmpty!48577)) mapNonEmpty!48577))

(get-info :version)

(assert (= (and mapNonEmpty!48577 ((_ is ValueCellFull!14850) mapValue!48577)) b!1224231))

(assert (= (and b!1224240 ((_ is ValueCellFull!14850) mapDefault!48577)) b!1224241))

(assert (= start!101762 b!1224240))

(declare-fun b_lambda!22405 () Bool)

(assert (=> (not b_lambda!22405) (not b!1224243)))

(declare-fun t!40483 () Bool)

(declare-fun tb!11223 () Bool)

(assert (=> (and start!101762 (= defaultEntry!1004 defaultEntry!1004) t!40483) tb!11223))

(declare-fun result!23051 () Bool)

(assert (=> tb!11223 (= result!23051 tp_is_empty!31119)))

(assert (=> b!1224243 t!40483))

(declare-fun b_and!44103 () Bool)

(assert (= b_and!44101 (and (=> t!40483 result!23051) b_and!44103)))

(declare-fun m!1129273 () Bool)

(assert (=> b!1224227 m!1129273))

(declare-fun m!1129275 () Bool)

(assert (=> b!1224227 m!1129275))

(declare-fun m!1129277 () Bool)

(assert (=> b!1224236 m!1129277))

(declare-fun m!1129279 () Bool)

(assert (=> b!1224230 m!1129279))

(declare-fun m!1129281 () Bool)

(assert (=> mapNonEmpty!48577 m!1129281))

(declare-fun m!1129283 () Bool)

(assert (=> start!101762 m!1129283))

(declare-fun m!1129285 () Bool)

(assert (=> start!101762 m!1129285))

(declare-fun m!1129287 () Bool)

(assert (=> b!1224225 m!1129287))

(declare-fun m!1129289 () Bool)

(assert (=> b!1224225 m!1129289))

(declare-fun m!1129291 () Bool)

(assert (=> b!1224246 m!1129291))

(declare-fun m!1129293 () Bool)

(assert (=> b!1224229 m!1129293))

(declare-fun m!1129295 () Bool)

(assert (=> b!1224229 m!1129295))

(declare-fun m!1129297 () Bool)

(assert (=> b!1224229 m!1129297))

(declare-fun m!1129299 () Bool)

(assert (=> b!1224229 m!1129299))

(declare-fun m!1129301 () Bool)

(assert (=> b!1224229 m!1129301))

(declare-fun m!1129303 () Bool)

(assert (=> b!1224244 m!1129303))

(declare-fun m!1129305 () Bool)

(assert (=> b!1224243 m!1129305))

(declare-fun m!1129307 () Bool)

(assert (=> b!1224243 m!1129307))

(declare-fun m!1129309 () Bool)

(assert (=> b!1224243 m!1129309))

(declare-fun m!1129311 () Bool)

(assert (=> b!1224243 m!1129311))

(declare-fun m!1129313 () Bool)

(assert (=> b!1224233 m!1129313))

(declare-fun m!1129315 () Bool)

(assert (=> b!1224245 m!1129315))

(declare-fun m!1129317 () Bool)

(assert (=> b!1224232 m!1129317))

(declare-fun m!1129319 () Bool)

(assert (=> b!1224226 m!1129319))

(declare-fun m!1129321 () Bool)

(assert (=> b!1224226 m!1129321))

(declare-fun m!1129323 () Bool)

(assert (=> b!1224226 m!1129323))

(assert (=> b!1224226 m!1129323))

(declare-fun m!1129325 () Bool)

(assert (=> b!1224226 m!1129325))

(declare-fun m!1129327 () Bool)

(assert (=> b!1224228 m!1129327))

(declare-fun m!1129329 () Bool)

(assert (=> b!1224234 m!1129329))

(declare-fun m!1129331 () Bool)

(assert (=> b!1224234 m!1129331))

(declare-fun m!1129333 () Bool)

(assert (=> b!1224234 m!1129333))

(assert (=> b!1224234 m!1129319))

(declare-fun m!1129335 () Bool)

(assert (=> b!1224234 m!1129335))

(assert (=> b!1224234 m!1129319))

(declare-fun m!1129337 () Bool)

(assert (=> b!1224234 m!1129337))

(assert (=> b!1224237 m!1129319))

(check-sat (not b!1224226) (not b!1224245) (not start!101762) (not b!1224227) (not b!1224232) (not mapNonEmpty!48577) (not b!1224236) (not b_next!26415) (not b!1224246) (not b!1224234) (not b!1224229) (not b!1224233) tp_is_empty!31119 b_and!44103 (not b!1224244) (not b!1224243) (not b_lambda!22405) (not b!1224228) (not b!1224225))
(check-sat b_and!44103 (not b_next!26415))
