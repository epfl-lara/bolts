; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99624 () Bool)

(assert start!99624)

(declare-fun b_free!25167 () Bool)

(declare-fun b_next!25167 () Bool)

(assert (=> start!99624 (= b_free!25167 (not b_next!25167))))

(declare-fun tp!88216 () Bool)

(declare-fun b_and!41215 () Bool)

(assert (=> start!99624 (= tp!88216 b_and!41215)))

(declare-fun b!1179206 () Bool)

(declare-fun e!670444 () Bool)

(declare-fun e!670441 () Bool)

(assert (=> b!1179206 (= e!670444 e!670441)))

(declare-fun res!783516 () Bool)

(assert (=> b!1179206 (=> (not res!783516) (not e!670441))))

(declare-datatypes ((array!76166 0))(
  ( (array!76167 (arr!36729 (Array (_ BitVec 32) (_ BitVec 64))) (size!37266 (_ BitVec 32))) )
))
(declare-fun lt!532876 () array!76166)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76166 (_ BitVec 32)) Bool)

(assert (=> b!1179206 (= res!783516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532876 mask!1564))))

(declare-fun _keys!1208 () array!76166)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179206 (= lt!532876 (array!76167 (store (arr!36729 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37266 _keys!1208)))))

(declare-fun b!1179207 () Bool)

(declare-fun res!783518 () Bool)

(assert (=> b!1179207 (=> (not res!783518) (not e!670441))))

(declare-datatypes ((List!25966 0))(
  ( (Nil!25963) (Cons!25962 (h!27171 (_ BitVec 64)) (t!38132 List!25966)) )
))
(declare-fun arrayNoDuplicates!0 (array!76166 (_ BitVec 32) List!25966) Bool)

(assert (=> b!1179207 (= res!783518 (arrayNoDuplicates!0 lt!532876 #b00000000000000000000000000000000 Nil!25963))))

(declare-fun b!1179208 () Bool)

(declare-fun res!783522 () Bool)

(assert (=> b!1179208 (=> (not res!783522) (not e!670444))))

(assert (=> b!1179208 (= res!783522 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37266 _keys!1208))))))

(declare-datatypes ((V!44723 0))(
  ( (V!44724 (val!14905 Int)) )
))
(declare-datatypes ((tuple2!19202 0))(
  ( (tuple2!19203 (_1!9611 (_ BitVec 64)) (_2!9611 V!44723)) )
))
(declare-fun lt!532882 () tuple2!19202)

(declare-fun b!1179209 () Bool)

(declare-datatypes ((List!25967 0))(
  ( (Nil!25964) (Cons!25963 (h!27172 tuple2!19202) (t!38133 List!25967)) )
))
(declare-datatypes ((ListLongMap!17183 0))(
  ( (ListLongMap!17184 (toList!8607 List!25967)) )
))
(declare-fun lt!532879 () ListLongMap!17183)

(declare-fun e!670446 () Bool)

(declare-fun lt!532881 () ListLongMap!17183)

(declare-fun +!3828 (ListLongMap!17183 tuple2!19202) ListLongMap!17183)

(assert (=> b!1179209 (= e!670446 (= lt!532879 (+!3828 lt!532881 lt!532882)))))

(declare-fun mapIsEmpty!46373 () Bool)

(declare-fun mapRes!46373 () Bool)

(assert (=> mapIsEmpty!46373 mapRes!46373))

(declare-fun b!1179210 () Bool)

(declare-fun e!670445 () Bool)

(declare-fun e!670437 () Bool)

(assert (=> b!1179210 (= e!670445 e!670437)))

(declare-fun res!783524 () Bool)

(assert (=> b!1179210 (=> res!783524 e!670437)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179210 (= res!783524 (not (= (select (arr!36729 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1179211 () Bool)

(declare-datatypes ((Unit!38899 0))(
  ( (Unit!38900) )
))
(declare-fun e!670439 () Unit!38899)

(declare-fun Unit!38901 () Unit!38899)

(assert (=> b!1179211 (= e!670439 Unit!38901)))

(declare-fun lt!532880 () Unit!38899)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76166 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38899)

(assert (=> b!1179211 (= lt!532880 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179211 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532872 () Unit!38899)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76166 (_ BitVec 32) (_ BitVec 32)) Unit!38899)

(assert (=> b!1179211 (= lt!532872 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179211 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25963)))

(declare-fun lt!532874 () Unit!38899)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76166 (_ BitVec 64) (_ BitVec 32) List!25966) Unit!38899)

(assert (=> b!1179211 (= lt!532874 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25963))))

(assert (=> b!1179211 false))

(declare-fun b!1179212 () Bool)

(assert (=> b!1179212 (= e!670437 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179213 () Bool)

(declare-fun Unit!38902 () Unit!38899)

(assert (=> b!1179213 (= e!670439 Unit!38902)))

(declare-fun b!1179214 () Bool)

(declare-fun res!783520 () Bool)

(assert (=> b!1179214 (=> (not res!783520) (not e!670444))))

(assert (=> b!1179214 (= res!783520 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25963))))

(declare-fun res!783523 () Bool)

(assert (=> start!99624 (=> (not res!783523) (not e!670444))))

(assert (=> start!99624 (= res!783523 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37266 _keys!1208))))))

(assert (=> start!99624 e!670444))

(declare-fun tp_is_empty!29697 () Bool)

(assert (=> start!99624 tp_is_empty!29697))

(declare-fun array_inv!27934 (array!76166) Bool)

(assert (=> start!99624 (array_inv!27934 _keys!1208)))

(assert (=> start!99624 true))

(assert (=> start!99624 tp!88216))

(declare-datatypes ((ValueCell!14139 0))(
  ( (ValueCellFull!14139 (v!17544 V!44723)) (EmptyCell!14139) )
))
(declare-datatypes ((array!76168 0))(
  ( (array!76169 (arr!36730 (Array (_ BitVec 32) ValueCell!14139)) (size!37267 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76168)

(declare-fun e!670435 () Bool)

(declare-fun array_inv!27935 (array!76168) Bool)

(assert (=> start!99624 (and (array_inv!27935 _values!996) e!670435)))

(declare-fun b!1179215 () Bool)

(declare-fun e!670442 () Bool)

(declare-fun e!670443 () Bool)

(assert (=> b!1179215 (= e!670442 e!670443)))

(declare-fun res!783511 () Bool)

(assert (=> b!1179215 (=> res!783511 e!670443)))

(assert (=> b!1179215 (= res!783511 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44723)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!532878 () array!76168)

(declare-fun minValue!944 () V!44723)

(declare-fun lt!532877 () ListLongMap!17183)

(declare-fun getCurrentListMapNoExtraKeys!5035 (array!76166 array!76168 (_ BitVec 32) (_ BitVec 32) V!44723 V!44723 (_ BitVec 32) Int) ListLongMap!17183)

(assert (=> b!1179215 (= lt!532877 (getCurrentListMapNoExtraKeys!5035 lt!532876 lt!532878 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532875 () V!44723)

(assert (=> b!1179215 (= lt!532878 (array!76169 (store (arr!36730 _values!996) i!673 (ValueCellFull!14139 lt!532875)) (size!37267 _values!996)))))

(declare-fun dynLambda!3008 (Int (_ BitVec 64)) V!44723)

(assert (=> b!1179215 (= lt!532875 (dynLambda!3008 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179215 (= lt!532879 (getCurrentListMapNoExtraKeys!5035 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179216 () Bool)

(declare-fun res!783519 () Bool)

(assert (=> b!1179216 (=> (not res!783519) (not e!670444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179216 (= res!783519 (validKeyInArray!0 k0!934))))

(declare-fun b!1179217 () Bool)

(assert (=> b!1179217 (= e!670441 (not e!670442))))

(declare-fun res!783512 () Bool)

(assert (=> b!1179217 (=> res!783512 e!670442)))

(assert (=> b!1179217 (= res!783512 (bvsgt from!1455 i!673))))

(assert (=> b!1179217 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532871 () Unit!38899)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76166 (_ BitVec 64) (_ BitVec 32)) Unit!38899)

(assert (=> b!1179217 (= lt!532871 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179218 () Bool)

(declare-fun res!783526 () Bool)

(assert (=> b!1179218 (=> (not res!783526) (not e!670444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179218 (= res!783526 (validMask!0 mask!1564))))

(declare-fun b!1179219 () Bool)

(declare-fun e!670438 () Bool)

(assert (=> b!1179219 (= e!670435 (and e!670438 mapRes!46373))))

(declare-fun condMapEmpty!46373 () Bool)

(declare-fun mapDefault!46373 () ValueCell!14139)

(assert (=> b!1179219 (= condMapEmpty!46373 (= (arr!36730 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14139)) mapDefault!46373)))))

(declare-fun b!1179220 () Bool)

(declare-fun e!670440 () Bool)

(assert (=> b!1179220 (= e!670440 tp_is_empty!29697)))

(declare-fun b!1179221 () Bool)

(declare-fun res!783513 () Bool)

(assert (=> b!1179221 (=> (not res!783513) (not e!670444))))

(assert (=> b!1179221 (= res!783513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1179222 () Bool)

(declare-fun e!670436 () Bool)

(assert (=> b!1179222 (= e!670443 e!670436)))

(declare-fun res!783521 () Bool)

(assert (=> b!1179222 (=> res!783521 e!670436)))

(assert (=> b!1179222 (= res!783521 (not (validKeyInArray!0 (select (arr!36729 _keys!1208) from!1455))))))

(declare-fun lt!532884 () ListLongMap!17183)

(declare-fun lt!532870 () ListLongMap!17183)

(assert (=> b!1179222 (= lt!532884 lt!532870)))

(declare-fun -!1602 (ListLongMap!17183 (_ BitVec 64)) ListLongMap!17183)

(assert (=> b!1179222 (= lt!532870 (-!1602 lt!532881 k0!934))))

(assert (=> b!1179222 (= lt!532884 (getCurrentListMapNoExtraKeys!5035 lt!532876 lt!532878 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179222 (= lt!532881 (getCurrentListMapNoExtraKeys!5035 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532873 () Unit!38899)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!826 (array!76166 array!76168 (_ BitVec 32) (_ BitVec 32) V!44723 V!44723 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38899)

(assert (=> b!1179222 (= lt!532873 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!826 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179223 () Bool)

(assert (=> b!1179223 (= e!670436 true)))

(assert (=> b!1179223 e!670446))

(declare-fun res!783514 () Bool)

(assert (=> b!1179223 (=> (not res!783514) (not e!670446))))

(assert (=> b!1179223 (= res!783514 (not (= (select (arr!36729 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!532883 () Unit!38899)

(assert (=> b!1179223 (= lt!532883 e!670439)))

(declare-fun c!116822 () Bool)

(assert (=> b!1179223 (= c!116822 (= (select (arr!36729 _keys!1208) from!1455) k0!934))))

(assert (=> b!1179223 e!670445))

(declare-fun res!783517 () Bool)

(assert (=> b!1179223 (=> (not res!783517) (not e!670445))))

(assert (=> b!1179223 (= res!783517 (= lt!532877 (+!3828 lt!532870 lt!532882)))))

(declare-fun get!18810 (ValueCell!14139 V!44723) V!44723)

(assert (=> b!1179223 (= lt!532882 (tuple2!19203 (select (arr!36729 _keys!1208) from!1455) (get!18810 (select (arr!36730 _values!996) from!1455) lt!532875)))))

(declare-fun b!1179224 () Bool)

(declare-fun res!783525 () Bool)

(assert (=> b!1179224 (=> (not res!783525) (not e!670444))))

(assert (=> b!1179224 (= res!783525 (= (select (arr!36729 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!46373 () Bool)

(declare-fun tp!88215 () Bool)

(assert (=> mapNonEmpty!46373 (= mapRes!46373 (and tp!88215 e!670440))))

(declare-fun mapValue!46373 () ValueCell!14139)

(declare-fun mapKey!46373 () (_ BitVec 32))

(declare-fun mapRest!46373 () (Array (_ BitVec 32) ValueCell!14139))

(assert (=> mapNonEmpty!46373 (= (arr!36730 _values!996) (store mapRest!46373 mapKey!46373 mapValue!46373))))

(declare-fun b!1179225 () Bool)

(assert (=> b!1179225 (= e!670438 tp_is_empty!29697)))

(declare-fun b!1179226 () Bool)

(declare-fun res!783515 () Bool)

(assert (=> b!1179226 (=> (not res!783515) (not e!670444))))

(assert (=> b!1179226 (= res!783515 (and (= (size!37267 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37266 _keys!1208) (size!37267 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99624 res!783523) b!1179218))

(assert (= (and b!1179218 res!783526) b!1179226))

(assert (= (and b!1179226 res!783515) b!1179221))

(assert (= (and b!1179221 res!783513) b!1179214))

(assert (= (and b!1179214 res!783520) b!1179208))

(assert (= (and b!1179208 res!783522) b!1179216))

(assert (= (and b!1179216 res!783519) b!1179224))

(assert (= (and b!1179224 res!783525) b!1179206))

(assert (= (and b!1179206 res!783516) b!1179207))

(assert (= (and b!1179207 res!783518) b!1179217))

(assert (= (and b!1179217 (not res!783512)) b!1179215))

(assert (= (and b!1179215 (not res!783511)) b!1179222))

(assert (= (and b!1179222 (not res!783521)) b!1179223))

(assert (= (and b!1179223 res!783517) b!1179210))

(assert (= (and b!1179210 (not res!783524)) b!1179212))

(assert (= (and b!1179223 c!116822) b!1179211))

(assert (= (and b!1179223 (not c!116822)) b!1179213))

(assert (= (and b!1179223 res!783514) b!1179209))

(assert (= (and b!1179219 condMapEmpty!46373) mapIsEmpty!46373))

(assert (= (and b!1179219 (not condMapEmpty!46373)) mapNonEmpty!46373))

(get-info :version)

(assert (= (and mapNonEmpty!46373 ((_ is ValueCellFull!14139) mapValue!46373)) b!1179220))

(assert (= (and b!1179219 ((_ is ValueCellFull!14139) mapDefault!46373)) b!1179225))

(assert (= start!99624 b!1179219))

(declare-fun b_lambda!20329 () Bool)

(assert (=> (not b_lambda!20329) (not b!1179215)))

(declare-fun t!38131 () Bool)

(declare-fun tb!9987 () Bool)

(assert (=> (and start!99624 (= defaultEntry!1004 defaultEntry!1004) t!38131) tb!9987))

(declare-fun result!20533 () Bool)

(assert (=> tb!9987 (= result!20533 tp_is_empty!29697)))

(assert (=> b!1179215 t!38131))

(declare-fun b_and!41217 () Bool)

(assert (= b_and!41215 (and (=> t!38131 result!20533) b_and!41217)))

(declare-fun m!1087235 () Bool)

(assert (=> b!1179209 m!1087235))

(declare-fun m!1087237 () Bool)

(assert (=> b!1179211 m!1087237))

(declare-fun m!1087239 () Bool)

(assert (=> b!1179211 m!1087239))

(declare-fun m!1087241 () Bool)

(assert (=> b!1179211 m!1087241))

(declare-fun m!1087243 () Bool)

(assert (=> b!1179211 m!1087243))

(declare-fun m!1087245 () Bool)

(assert (=> b!1179211 m!1087245))

(declare-fun m!1087247 () Bool)

(assert (=> b!1179214 m!1087247))

(declare-fun m!1087249 () Bool)

(assert (=> b!1179212 m!1087249))

(declare-fun m!1087251 () Bool)

(assert (=> b!1179224 m!1087251))

(declare-fun m!1087253 () Bool)

(assert (=> b!1179222 m!1087253))

(declare-fun m!1087255 () Bool)

(assert (=> b!1179222 m!1087255))

(declare-fun m!1087257 () Bool)

(assert (=> b!1179222 m!1087257))

(declare-fun m!1087259 () Bool)

(assert (=> b!1179222 m!1087259))

(declare-fun m!1087261 () Bool)

(assert (=> b!1179222 m!1087261))

(declare-fun m!1087263 () Bool)

(assert (=> b!1179222 m!1087263))

(assert (=> b!1179222 m!1087261))

(assert (=> b!1179223 m!1087261))

(declare-fun m!1087265 () Bool)

(assert (=> b!1179223 m!1087265))

(declare-fun m!1087267 () Bool)

(assert (=> b!1179223 m!1087267))

(assert (=> b!1179223 m!1087267))

(declare-fun m!1087269 () Bool)

(assert (=> b!1179223 m!1087269))

(assert (=> b!1179210 m!1087261))

(declare-fun m!1087271 () Bool)

(assert (=> b!1179217 m!1087271))

(declare-fun m!1087273 () Bool)

(assert (=> b!1179217 m!1087273))

(declare-fun m!1087275 () Bool)

(assert (=> b!1179218 m!1087275))

(declare-fun m!1087277 () Bool)

(assert (=> start!99624 m!1087277))

(declare-fun m!1087279 () Bool)

(assert (=> start!99624 m!1087279))

(declare-fun m!1087281 () Bool)

(assert (=> b!1179215 m!1087281))

(declare-fun m!1087283 () Bool)

(assert (=> b!1179215 m!1087283))

(declare-fun m!1087285 () Bool)

(assert (=> b!1179215 m!1087285))

(declare-fun m!1087287 () Bool)

(assert (=> b!1179215 m!1087287))

(declare-fun m!1087289 () Bool)

(assert (=> b!1179221 m!1087289))

(declare-fun m!1087291 () Bool)

(assert (=> b!1179216 m!1087291))

(declare-fun m!1087293 () Bool)

(assert (=> b!1179206 m!1087293))

(declare-fun m!1087295 () Bool)

(assert (=> b!1179206 m!1087295))

(declare-fun m!1087297 () Bool)

(assert (=> b!1179207 m!1087297))

(declare-fun m!1087299 () Bool)

(assert (=> mapNonEmpty!46373 m!1087299))

(check-sat (not b_next!25167) (not b!1179215) (not b_lambda!20329) (not b!1179214) (not b!1179221) (not mapNonEmpty!46373) (not b!1179206) (not b!1179216) (not b!1179207) (not b!1179223) b_and!41217 (not start!99624) tp_is_empty!29697 (not b!1179211) (not b!1179212) (not b!1179217) (not b!1179222) (not b!1179209) (not b!1179218))
(check-sat b_and!41217 (not b_next!25167))
