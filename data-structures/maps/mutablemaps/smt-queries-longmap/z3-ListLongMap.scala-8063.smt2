; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99256 () Bool)

(assert start!99256)

(declare-fun b_free!24825 () Bool)

(declare-fun b_next!24825 () Bool)

(assert (=> start!99256 (= b_free!24825 (not b_next!24825))))

(declare-fun tp!87187 () Bool)

(declare-fun b_and!40513 () Bool)

(assert (=> start!99256 (= tp!87187 b_and!40513)))

(declare-fun b!1168391 () Bool)

(declare-fun e!664079 () Bool)

(declare-fun tp_is_empty!29355 () Bool)

(assert (=> b!1168391 (= e!664079 tp_is_empty!29355)))

(declare-fun mapIsEmpty!45857 () Bool)

(declare-fun mapRes!45857 () Bool)

(assert (=> mapIsEmpty!45857 mapRes!45857))

(declare-fun b!1168392 () Bool)

(declare-fun res!775283 () Bool)

(declare-fun e!664078 () Bool)

(assert (=> b!1168392 (=> (not res!775283) (not e!664078))))

(declare-datatypes ((array!75484 0))(
  ( (array!75485 (arr!36389 (Array (_ BitVec 32) (_ BitVec 64))) (size!36926 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75484)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75484 (_ BitVec 32)) Bool)

(assert (=> b!1168392 (= res!775283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45857 () Bool)

(declare-fun tp!87186 () Bool)

(assert (=> mapNonEmpty!45857 (= mapRes!45857 (and tp!87186 e!664079))))

(declare-datatypes ((V!44267 0))(
  ( (V!44268 (val!14734 Int)) )
))
(declare-datatypes ((ValueCell!13968 0))(
  ( (ValueCellFull!13968 (v!17372 V!44267)) (EmptyCell!13968) )
))
(declare-fun mapRest!45857 () (Array (_ BitVec 32) ValueCell!13968))

(declare-fun mapValue!45857 () ValueCell!13968)

(declare-fun mapKey!45857 () (_ BitVec 32))

(declare-datatypes ((array!75486 0))(
  ( (array!75487 (arr!36390 (Array (_ BitVec 32) ValueCell!13968)) (size!36927 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75486)

(assert (=> mapNonEmpty!45857 (= (arr!36390 _values!996) (store mapRest!45857 mapKey!45857 mapValue!45857))))

(declare-fun b!1168393 () Bool)

(declare-fun res!775292 () Bool)

(assert (=> b!1168393 (=> (not res!775292) (not e!664078))))

(declare-datatypes ((List!25660 0))(
  ( (Nil!25657) (Cons!25656 (h!26865 (_ BitVec 64)) (t!37484 List!25660)) )
))
(declare-fun arrayNoDuplicates!0 (array!75484 (_ BitVec 32) List!25660) Bool)

(assert (=> b!1168393 (= res!775292 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25657))))

(declare-fun b!1168394 () Bool)

(declare-fun e!664076 () Bool)

(declare-fun e!664083 () Bool)

(assert (=> b!1168394 (= e!664076 e!664083)))

(declare-fun res!775285 () Bool)

(assert (=> b!1168394 (=> res!775285 e!664083)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168394 (= res!775285 (not (validKeyInArray!0 (select (arr!36389 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18886 0))(
  ( (tuple2!18887 (_1!9453 (_ BitVec 64)) (_2!9453 V!44267)) )
))
(declare-datatypes ((List!25661 0))(
  ( (Nil!25658) (Cons!25657 (h!26866 tuple2!18886) (t!37485 List!25661)) )
))
(declare-datatypes ((ListLongMap!16867 0))(
  ( (ListLongMap!16868 (toList!8449 List!25661)) )
))
(declare-fun lt!525989 () ListLongMap!16867)

(declare-fun lt!525990 () ListLongMap!16867)

(assert (=> b!1168394 (= lt!525989 lt!525990)))

(declare-fun lt!525988 () ListLongMap!16867)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1478 (ListLongMap!16867 (_ BitVec 64)) ListLongMap!16867)

(assert (=> b!1168394 (= lt!525990 (-!1478 lt!525988 k0!934))))

(declare-fun zeroValue!944 () V!44267)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44267)

(declare-fun lt!525987 () array!75486)

(declare-fun lt!525991 () array!75484)

(declare-fun getCurrentListMapNoExtraKeys!4882 (array!75484 array!75486 (_ BitVec 32) (_ BitVec 32) V!44267 V!44267 (_ BitVec 32) Int) ListLongMap!16867)

(assert (=> b!1168394 (= lt!525989 (getCurrentListMapNoExtraKeys!4882 lt!525991 lt!525987 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1168394 (= lt!525988 (getCurrentListMapNoExtraKeys!4882 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38446 0))(
  ( (Unit!38447) )
))
(declare-fun lt!525984 () Unit!38446)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!702 (array!75484 array!75486 (_ BitVec 32) (_ BitVec 32) V!44267 V!44267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38446)

(assert (=> b!1168394 (= lt!525984 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!702 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168395 () Bool)

(declare-fun res!775294 () Bool)

(assert (=> b!1168395 (=> (not res!775294) (not e!664078))))

(assert (=> b!1168395 (= res!775294 (and (= (size!36927 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36926 _keys!1208) (size!36927 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!775295 () Bool)

(assert (=> start!99256 (=> (not res!775295) (not e!664078))))

(assert (=> start!99256 (= res!775295 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36926 _keys!1208))))))

(assert (=> start!99256 e!664078))

(assert (=> start!99256 tp_is_empty!29355))

(declare-fun array_inv!27694 (array!75484) Bool)

(assert (=> start!99256 (array_inv!27694 _keys!1208)))

(assert (=> start!99256 true))

(assert (=> start!99256 tp!87187))

(declare-fun e!664075 () Bool)

(declare-fun array_inv!27695 (array!75486) Bool)

(assert (=> start!99256 (and (array_inv!27695 _values!996) e!664075)))

(declare-fun b!1168396 () Bool)

(declare-fun res!775284 () Bool)

(assert (=> b!1168396 (=> (not res!775284) (not e!664078))))

(assert (=> b!1168396 (= res!775284 (validKeyInArray!0 k0!934))))

(declare-fun b!1168397 () Bool)

(declare-fun e!664082 () Bool)

(assert (=> b!1168397 (= e!664078 e!664082)))

(declare-fun res!775290 () Bool)

(assert (=> b!1168397 (=> (not res!775290) (not e!664082))))

(assert (=> b!1168397 (= res!775290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525991 mask!1564))))

(assert (=> b!1168397 (= lt!525991 (array!75485 (store (arr!36389 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36926 _keys!1208)))))

(declare-fun b!1168398 () Bool)

(declare-fun res!775286 () Bool)

(assert (=> b!1168398 (=> (not res!775286) (not e!664078))))

(assert (=> b!1168398 (= res!775286 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36926 _keys!1208))))))

(declare-fun b!1168399 () Bool)

(declare-fun e!664081 () Bool)

(assert (=> b!1168399 (= e!664081 e!664076)))

(declare-fun res!775289 () Bool)

(assert (=> b!1168399 (=> res!775289 e!664076)))

(assert (=> b!1168399 (= res!775289 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525985 () ListLongMap!16867)

(assert (=> b!1168399 (= lt!525985 (getCurrentListMapNoExtraKeys!4882 lt!525991 lt!525987 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!525992 () V!44267)

(assert (=> b!1168399 (= lt!525987 (array!75487 (store (arr!36390 _values!996) i!673 (ValueCellFull!13968 lt!525992)) (size!36927 _values!996)))))

(declare-fun dynLambda!2874 (Int (_ BitVec 64)) V!44267)

(assert (=> b!1168399 (= lt!525992 (dynLambda!2874 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!525993 () ListLongMap!16867)

(assert (=> b!1168399 (= lt!525993 (getCurrentListMapNoExtraKeys!4882 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168400 () Bool)

(declare-fun res!775293 () Bool)

(assert (=> b!1168400 (=> (not res!775293) (not e!664082))))

(assert (=> b!1168400 (= res!775293 (arrayNoDuplicates!0 lt!525991 #b00000000000000000000000000000000 Nil!25657))))

(declare-fun b!1168401 () Bool)

(declare-fun res!775288 () Bool)

(assert (=> b!1168401 (=> (not res!775288) (not e!664078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168401 (= res!775288 (validMask!0 mask!1564))))

(declare-fun b!1168402 () Bool)

(assert (=> b!1168402 (= e!664083 true)))

(declare-fun +!3699 (ListLongMap!16867 tuple2!18886) ListLongMap!16867)

(declare-fun get!18572 (ValueCell!13968 V!44267) V!44267)

(assert (=> b!1168402 (= lt!525985 (+!3699 lt!525990 (tuple2!18887 (select (arr!36389 _keys!1208) from!1455) (get!18572 (select (arr!36390 _values!996) from!1455) lt!525992))))))

(declare-fun b!1168403 () Bool)

(assert (=> b!1168403 (= e!664082 (not e!664081))))

(declare-fun res!775291 () Bool)

(assert (=> b!1168403 (=> res!775291 e!664081)))

(assert (=> b!1168403 (= res!775291 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168403 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525986 () Unit!38446)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75484 (_ BitVec 64) (_ BitVec 32)) Unit!38446)

(assert (=> b!1168403 (= lt!525986 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1168404 () Bool)

(declare-fun e!664077 () Bool)

(assert (=> b!1168404 (= e!664077 tp_is_empty!29355)))

(declare-fun b!1168405 () Bool)

(declare-fun res!775287 () Bool)

(assert (=> b!1168405 (=> (not res!775287) (not e!664078))))

(assert (=> b!1168405 (= res!775287 (= (select (arr!36389 _keys!1208) i!673) k0!934))))

(declare-fun b!1168406 () Bool)

(assert (=> b!1168406 (= e!664075 (and e!664077 mapRes!45857))))

(declare-fun condMapEmpty!45857 () Bool)

(declare-fun mapDefault!45857 () ValueCell!13968)

(assert (=> b!1168406 (= condMapEmpty!45857 (= (arr!36390 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13968)) mapDefault!45857)))))

(assert (= (and start!99256 res!775295) b!1168401))

(assert (= (and b!1168401 res!775288) b!1168395))

(assert (= (and b!1168395 res!775294) b!1168392))

(assert (= (and b!1168392 res!775283) b!1168393))

(assert (= (and b!1168393 res!775292) b!1168398))

(assert (= (and b!1168398 res!775286) b!1168396))

(assert (= (and b!1168396 res!775284) b!1168405))

(assert (= (and b!1168405 res!775287) b!1168397))

(assert (= (and b!1168397 res!775290) b!1168400))

(assert (= (and b!1168400 res!775293) b!1168403))

(assert (= (and b!1168403 (not res!775291)) b!1168399))

(assert (= (and b!1168399 (not res!775289)) b!1168394))

(assert (= (and b!1168394 (not res!775285)) b!1168402))

(assert (= (and b!1168406 condMapEmpty!45857) mapIsEmpty!45857))

(assert (= (and b!1168406 (not condMapEmpty!45857)) mapNonEmpty!45857))

(get-info :version)

(assert (= (and mapNonEmpty!45857 ((_ is ValueCellFull!13968) mapValue!45857)) b!1168391))

(assert (= (and b!1168406 ((_ is ValueCellFull!13968) mapDefault!45857)) b!1168404))

(assert (= start!99256 b!1168406))

(declare-fun b_lambda!19949 () Bool)

(assert (=> (not b_lambda!19949) (not b!1168399)))

(declare-fun t!37483 () Bool)

(declare-fun tb!9645 () Bool)

(assert (=> (and start!99256 (= defaultEntry!1004 defaultEntry!1004) t!37483) tb!9645))

(declare-fun result!19847 () Bool)

(assert (=> tb!9645 (= result!19847 tp_is_empty!29355)))

(assert (=> b!1168399 t!37483))

(declare-fun b_and!40515 () Bool)

(assert (= b_and!40513 (and (=> t!37483 result!19847) b_and!40515)))

(declare-fun m!1076279 () Bool)

(assert (=> mapNonEmpty!45857 m!1076279))

(declare-fun m!1076281 () Bool)

(assert (=> b!1168397 m!1076281))

(declare-fun m!1076283 () Bool)

(assert (=> b!1168397 m!1076283))

(declare-fun m!1076285 () Bool)

(assert (=> b!1168400 m!1076285))

(declare-fun m!1076287 () Bool)

(assert (=> b!1168392 m!1076287))

(declare-fun m!1076289 () Bool)

(assert (=> start!99256 m!1076289))

(declare-fun m!1076291 () Bool)

(assert (=> start!99256 m!1076291))

(declare-fun m!1076293 () Bool)

(assert (=> b!1168399 m!1076293))

(declare-fun m!1076295 () Bool)

(assert (=> b!1168399 m!1076295))

(declare-fun m!1076297 () Bool)

(assert (=> b!1168399 m!1076297))

(declare-fun m!1076299 () Bool)

(assert (=> b!1168399 m!1076299))

(declare-fun m!1076301 () Bool)

(assert (=> b!1168396 m!1076301))

(declare-fun m!1076303 () Bool)

(assert (=> b!1168405 m!1076303))

(declare-fun m!1076305 () Bool)

(assert (=> b!1168402 m!1076305))

(declare-fun m!1076307 () Bool)

(assert (=> b!1168402 m!1076307))

(assert (=> b!1168402 m!1076307))

(declare-fun m!1076309 () Bool)

(assert (=> b!1168402 m!1076309))

(declare-fun m!1076311 () Bool)

(assert (=> b!1168402 m!1076311))

(declare-fun m!1076313 () Bool)

(assert (=> b!1168403 m!1076313))

(declare-fun m!1076315 () Bool)

(assert (=> b!1168403 m!1076315))

(declare-fun m!1076317 () Bool)

(assert (=> b!1168401 m!1076317))

(declare-fun m!1076319 () Bool)

(assert (=> b!1168393 m!1076319))

(declare-fun m!1076321 () Bool)

(assert (=> b!1168394 m!1076321))

(declare-fun m!1076323 () Bool)

(assert (=> b!1168394 m!1076323))

(assert (=> b!1168394 m!1076305))

(declare-fun m!1076325 () Bool)

(assert (=> b!1168394 m!1076325))

(assert (=> b!1168394 m!1076305))

(declare-fun m!1076327 () Bool)

(assert (=> b!1168394 m!1076327))

(declare-fun m!1076329 () Bool)

(assert (=> b!1168394 m!1076329))

(check-sat (not b!1168394) (not b!1168397) b_and!40515 (not b!1168393) (not start!99256) (not b!1168399) (not b!1168392) (not mapNonEmpty!45857) (not b!1168400) (not b_lambda!19949) (not b!1168402) (not b!1168401) (not b!1168403) (not b!1168396) tp_is_empty!29355 (not b_next!24825))
(check-sat b_and!40515 (not b_next!24825))
