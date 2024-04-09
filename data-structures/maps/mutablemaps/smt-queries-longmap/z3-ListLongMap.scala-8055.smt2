; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99208 () Bool)

(assert start!99208)

(declare-fun b_free!24777 () Bool)

(declare-fun b_next!24777 () Bool)

(assert (=> start!99208 (= b_free!24777 (not b_next!24777))))

(declare-fun tp!87043 () Bool)

(declare-fun b_and!40417 () Bool)

(assert (=> start!99208 (= tp!87043 b_and!40417)))

(declare-fun b!1167249 () Bool)

(declare-fun e!663486 () Bool)

(declare-fun e!663491 () Bool)

(declare-fun mapRes!45785 () Bool)

(assert (=> b!1167249 (= e!663486 (and e!663491 mapRes!45785))))

(declare-fun condMapEmpty!45785 () Bool)

(declare-datatypes ((V!44203 0))(
  ( (V!44204 (val!14710 Int)) )
))
(declare-datatypes ((ValueCell!13944 0))(
  ( (ValueCellFull!13944 (v!17348 V!44203)) (EmptyCell!13944) )
))
(declare-datatypes ((array!75392 0))(
  ( (array!75393 (arr!36343 (Array (_ BitVec 32) ValueCell!13944)) (size!36880 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75392)

(declare-fun mapDefault!45785 () ValueCell!13944)

(assert (=> b!1167249 (= condMapEmpty!45785 (= (arr!36343 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13944)) mapDefault!45785)))))

(declare-fun mapNonEmpty!45785 () Bool)

(declare-fun tp!87042 () Bool)

(declare-fun e!663487 () Bool)

(assert (=> mapNonEmpty!45785 (= mapRes!45785 (and tp!87042 e!663487))))

(declare-fun mapRest!45785 () (Array (_ BitVec 32) ValueCell!13944))

(declare-fun mapKey!45785 () (_ BitVec 32))

(declare-fun mapValue!45785 () ValueCell!13944)

(assert (=> mapNonEmpty!45785 (= (arr!36343 _values!996) (store mapRest!45785 mapKey!45785 mapValue!45785))))

(declare-fun b!1167250 () Bool)

(declare-fun tp_is_empty!29307 () Bool)

(assert (=> b!1167250 (= e!663491 tp_is_empty!29307)))

(declare-fun b!1167251 () Bool)

(assert (=> b!1167251 (= e!663487 tp_is_empty!29307)))

(declare-fun b!1167252 () Bool)

(declare-fun res!774416 () Bool)

(declare-fun e!663489 () Bool)

(assert (=> b!1167252 (=> (not res!774416) (not e!663489))))

(declare-datatypes ((array!75394 0))(
  ( (array!75395 (arr!36344 (Array (_ BitVec 32) (_ BitVec 64))) (size!36881 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75394)

(declare-datatypes ((List!25622 0))(
  ( (Nil!25619) (Cons!25618 (h!26827 (_ BitVec 64)) (t!37398 List!25622)) )
))
(declare-fun arrayNoDuplicates!0 (array!75394 (_ BitVec 32) List!25622) Bool)

(assert (=> b!1167252 (= res!774416 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25619))))

(declare-fun b!1167254 () Bool)

(declare-fun e!663492 () Bool)

(declare-fun e!663485 () Bool)

(assert (=> b!1167254 (= e!663492 e!663485)))

(declare-fun res!774411 () Bool)

(assert (=> b!1167254 (=> res!774411 e!663485)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167254 (= res!774411 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44203)

(declare-fun lt!525534 () array!75392)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525535 () array!75394)

(declare-datatypes ((tuple2!18846 0))(
  ( (tuple2!18847 (_1!9433 (_ BitVec 64)) (_2!9433 V!44203)) )
))
(declare-datatypes ((List!25623 0))(
  ( (Nil!25620) (Cons!25619 (h!26828 tuple2!18846) (t!37399 List!25623)) )
))
(declare-datatypes ((ListLongMap!16827 0))(
  ( (ListLongMap!16828 (toList!8429 List!25623)) )
))
(declare-fun lt!525533 () ListLongMap!16827)

(declare-fun minValue!944 () V!44203)

(declare-fun getCurrentListMapNoExtraKeys!4862 (array!75394 array!75392 (_ BitVec 32) (_ BitVec 32) V!44203 V!44203 (_ BitVec 32) Int) ListLongMap!16827)

(assert (=> b!1167254 (= lt!525533 (getCurrentListMapNoExtraKeys!4862 lt!525535 lt!525534 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2855 (Int (_ BitVec 64)) V!44203)

(assert (=> b!1167254 (= lt!525534 (array!75393 (store (arr!36343 _values!996) i!673 (ValueCellFull!13944 (dynLambda!2855 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36880 _values!996)))))

(declare-fun lt!525536 () ListLongMap!16827)

(assert (=> b!1167254 (= lt!525536 (getCurrentListMapNoExtraKeys!4862 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167255 () Bool)

(declare-fun e!663490 () Bool)

(assert (=> b!1167255 (= e!663490 (not e!663492))))

(declare-fun res!774405 () Bool)

(assert (=> b!1167255 (=> res!774405 e!663492)))

(assert (=> b!1167255 (= res!774405 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167255 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38412 0))(
  ( (Unit!38413) )
))
(declare-fun lt!525537 () Unit!38412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75394 (_ BitVec 64) (_ BitVec 32)) Unit!38412)

(assert (=> b!1167255 (= lt!525537 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1167256 () Bool)

(declare-fun res!774413 () Bool)

(assert (=> b!1167256 (=> (not res!774413) (not e!663489))))

(assert (=> b!1167256 (= res!774413 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36881 _keys!1208))))))

(declare-fun b!1167257 () Bool)

(declare-fun res!774415 () Bool)

(assert (=> b!1167257 (=> (not res!774415) (not e!663490))))

(assert (=> b!1167257 (= res!774415 (arrayNoDuplicates!0 lt!525535 #b00000000000000000000000000000000 Nil!25619))))

(declare-fun b!1167258 () Bool)

(assert (=> b!1167258 (= e!663485 true)))

(declare-fun -!1464 (ListLongMap!16827 (_ BitVec 64)) ListLongMap!16827)

(assert (=> b!1167258 (= (getCurrentListMapNoExtraKeys!4862 lt!525535 lt!525534 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1464 (getCurrentListMapNoExtraKeys!4862 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525532 () Unit!38412)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!688 (array!75394 array!75392 (_ BitVec 32) (_ BitVec 32) V!44203 V!44203 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38412)

(assert (=> b!1167258 (= lt!525532 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!688 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167259 () Bool)

(declare-fun res!774412 () Bool)

(assert (=> b!1167259 (=> (not res!774412) (not e!663489))))

(assert (=> b!1167259 (= res!774412 (and (= (size!36880 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36881 _keys!1208) (size!36880 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167260 () Bool)

(assert (=> b!1167260 (= e!663489 e!663490)))

(declare-fun res!774414 () Bool)

(assert (=> b!1167260 (=> (not res!774414) (not e!663490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75394 (_ BitVec 32)) Bool)

(assert (=> b!1167260 (= res!774414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525535 mask!1564))))

(assert (=> b!1167260 (= lt!525535 (array!75395 (store (arr!36344 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36881 _keys!1208)))))

(declare-fun b!1167261 () Bool)

(declare-fun res!774406 () Bool)

(assert (=> b!1167261 (=> (not res!774406) (not e!663489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167261 (= res!774406 (validMask!0 mask!1564))))

(declare-fun b!1167262 () Bool)

(declare-fun res!774409 () Bool)

(assert (=> b!1167262 (=> (not res!774409) (not e!663489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167262 (= res!774409 (validKeyInArray!0 k0!934))))

(declare-fun res!774407 () Bool)

(assert (=> start!99208 (=> (not res!774407) (not e!663489))))

(assert (=> start!99208 (= res!774407 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36881 _keys!1208))))))

(assert (=> start!99208 e!663489))

(assert (=> start!99208 tp_is_empty!29307))

(declare-fun array_inv!27664 (array!75394) Bool)

(assert (=> start!99208 (array_inv!27664 _keys!1208)))

(assert (=> start!99208 true))

(assert (=> start!99208 tp!87043))

(declare-fun array_inv!27665 (array!75392) Bool)

(assert (=> start!99208 (and (array_inv!27665 _values!996) e!663486)))

(declare-fun b!1167253 () Bool)

(declare-fun res!774408 () Bool)

(assert (=> b!1167253 (=> (not res!774408) (not e!663489))))

(assert (=> b!1167253 (= res!774408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45785 () Bool)

(assert (=> mapIsEmpty!45785 mapRes!45785))

(declare-fun b!1167263 () Bool)

(declare-fun res!774410 () Bool)

(assert (=> b!1167263 (=> (not res!774410) (not e!663489))))

(assert (=> b!1167263 (= res!774410 (= (select (arr!36344 _keys!1208) i!673) k0!934))))

(assert (= (and start!99208 res!774407) b!1167261))

(assert (= (and b!1167261 res!774406) b!1167259))

(assert (= (and b!1167259 res!774412) b!1167253))

(assert (= (and b!1167253 res!774408) b!1167252))

(assert (= (and b!1167252 res!774416) b!1167256))

(assert (= (and b!1167256 res!774413) b!1167262))

(assert (= (and b!1167262 res!774409) b!1167263))

(assert (= (and b!1167263 res!774410) b!1167260))

(assert (= (and b!1167260 res!774414) b!1167257))

(assert (= (and b!1167257 res!774415) b!1167255))

(assert (= (and b!1167255 (not res!774405)) b!1167254))

(assert (= (and b!1167254 (not res!774411)) b!1167258))

(assert (= (and b!1167249 condMapEmpty!45785) mapIsEmpty!45785))

(assert (= (and b!1167249 (not condMapEmpty!45785)) mapNonEmpty!45785))

(get-info :version)

(assert (= (and mapNonEmpty!45785 ((_ is ValueCellFull!13944) mapValue!45785)) b!1167251))

(assert (= (and b!1167249 ((_ is ValueCellFull!13944) mapDefault!45785)) b!1167250))

(assert (= start!99208 b!1167249))

(declare-fun b_lambda!19901 () Bool)

(assert (=> (not b_lambda!19901) (not b!1167254)))

(declare-fun t!37397 () Bool)

(declare-fun tb!9597 () Bool)

(assert (=> (and start!99208 (= defaultEntry!1004 defaultEntry!1004) t!37397) tb!9597))

(declare-fun result!19751 () Bool)

(assert (=> tb!9597 (= result!19751 tp_is_empty!29307)))

(assert (=> b!1167254 t!37397))

(declare-fun b_and!40419 () Bool)

(assert (= b_and!40417 (and (=> t!37397 result!19751) b_and!40419)))

(declare-fun m!1075249 () Bool)

(assert (=> b!1167253 m!1075249))

(declare-fun m!1075251 () Bool)

(assert (=> b!1167255 m!1075251))

(declare-fun m!1075253 () Bool)

(assert (=> b!1167255 m!1075253))

(declare-fun m!1075255 () Bool)

(assert (=> b!1167261 m!1075255))

(declare-fun m!1075257 () Bool)

(assert (=> b!1167262 m!1075257))

(declare-fun m!1075259 () Bool)

(assert (=> b!1167260 m!1075259))

(declare-fun m!1075261 () Bool)

(assert (=> b!1167260 m!1075261))

(declare-fun m!1075263 () Bool)

(assert (=> start!99208 m!1075263))

(declare-fun m!1075265 () Bool)

(assert (=> start!99208 m!1075265))

(declare-fun m!1075267 () Bool)

(assert (=> b!1167258 m!1075267))

(declare-fun m!1075269 () Bool)

(assert (=> b!1167258 m!1075269))

(assert (=> b!1167258 m!1075269))

(declare-fun m!1075271 () Bool)

(assert (=> b!1167258 m!1075271))

(declare-fun m!1075273 () Bool)

(assert (=> b!1167258 m!1075273))

(declare-fun m!1075275 () Bool)

(assert (=> b!1167257 m!1075275))

(declare-fun m!1075277 () Bool)

(assert (=> b!1167252 m!1075277))

(declare-fun m!1075279 () Bool)

(assert (=> mapNonEmpty!45785 m!1075279))

(declare-fun m!1075281 () Bool)

(assert (=> b!1167263 m!1075281))

(declare-fun m!1075283 () Bool)

(assert (=> b!1167254 m!1075283))

(declare-fun m!1075285 () Bool)

(assert (=> b!1167254 m!1075285))

(declare-fun m!1075287 () Bool)

(assert (=> b!1167254 m!1075287))

(declare-fun m!1075289 () Bool)

(assert (=> b!1167254 m!1075289))

(check-sat (not b!1167261) (not b_next!24777) (not b_lambda!19901) (not b!1167253) (not b!1167258) (not b!1167257) (not b!1167252) b_and!40419 (not b!1167262) (not b!1167255) (not b!1167260) (not start!99208) tp_is_empty!29307 (not b!1167254) (not mapNonEmpty!45785))
(check-sat b_and!40419 (not b_next!24777))
