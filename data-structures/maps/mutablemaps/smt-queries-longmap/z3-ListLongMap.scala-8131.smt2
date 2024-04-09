; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99690 () Bool)

(assert start!99690)

(declare-fun b_free!25233 () Bool)

(declare-fun b_next!25233 () Bool)

(assert (=> start!99690 (= b_free!25233 (not b_next!25233))))

(declare-fun tp!88414 () Bool)

(declare-fun b_and!41347 () Bool)

(assert (=> start!99690 (= tp!88414 b_and!41347)))

(declare-fun b!1181437 () Bool)

(declare-fun e!671728 () Bool)

(declare-fun tp_is_empty!29763 () Bool)

(assert (=> b!1181437 (= e!671728 tp_is_empty!29763)))

(declare-fun b!1181438 () Bool)

(declare-fun res!785194 () Bool)

(declare-fun e!671722 () Bool)

(assert (=> b!1181438 (=> (not res!785194) (not e!671722))))

(declare-datatypes ((array!76294 0))(
  ( (array!76295 (arr!36793 (Array (_ BitVec 32) (_ BitVec 64))) (size!37330 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76294)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44811 0))(
  ( (V!44812 (val!14938 Int)) )
))
(declare-datatypes ((ValueCell!14172 0))(
  ( (ValueCellFull!14172 (v!17577 V!44811)) (EmptyCell!14172) )
))
(declare-datatypes ((array!76296 0))(
  ( (array!76297 (arr!36794 (Array (_ BitVec 32) ValueCell!14172)) (size!37331 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76296)

(assert (=> b!1181438 (= res!785194 (and (= (size!37331 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37330 _keys!1208) (size!37331 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181439 () Bool)

(declare-fun e!671734 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181439 (= e!671734 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181440 () Bool)

(declare-fun e!671730 () Bool)

(declare-datatypes ((tuple2!19260 0))(
  ( (tuple2!19261 (_1!9640 (_ BitVec 64)) (_2!9640 V!44811)) )
))
(declare-datatypes ((List!26020 0))(
  ( (Nil!26017) (Cons!26016 (h!27225 tuple2!19260) (t!38252 List!26020)) )
))
(declare-datatypes ((ListLongMap!17241 0))(
  ( (ListLongMap!17242 (toList!8636 List!26020)) )
))
(declare-fun lt!534367 () ListLongMap!17241)

(declare-fun lt!534361 () ListLongMap!17241)

(assert (=> b!1181440 (= e!671730 (= lt!534367 lt!534361))))

(declare-fun b!1181441 () Bool)

(declare-fun e!671733 () Bool)

(declare-fun mapRes!46472 () Bool)

(assert (=> b!1181441 (= e!671733 (and e!671728 mapRes!46472))))

(declare-fun condMapEmpty!46472 () Bool)

(declare-fun mapDefault!46472 () ValueCell!14172)

(assert (=> b!1181441 (= condMapEmpty!46472 (= (arr!36794 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14172)) mapDefault!46472)))))

(declare-fun b!1181442 () Bool)

(declare-datatypes ((Unit!38995 0))(
  ( (Unit!38996) )
))
(declare-fun e!671726 () Unit!38995)

(declare-fun Unit!38997 () Unit!38995)

(assert (=> b!1181442 (= e!671726 Unit!38997)))

(declare-fun lt!534362 () Unit!38995)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76294 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38995)

(assert (=> b!1181442 (= lt!534362 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1181442 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534359 () Unit!38995)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76294 (_ BitVec 32) (_ BitVec 32)) Unit!38995)

(assert (=> b!1181442 (= lt!534359 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26021 0))(
  ( (Nil!26018) (Cons!26017 (h!27226 (_ BitVec 64)) (t!38253 List!26021)) )
))
(declare-fun arrayNoDuplicates!0 (array!76294 (_ BitVec 32) List!26021) Bool)

(assert (=> b!1181442 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26018)))

(declare-fun lt!534357 () Unit!38995)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76294 (_ BitVec 64) (_ BitVec 32) List!26021) Unit!38995)

(assert (=> b!1181442 (= lt!534357 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26018))))

(assert (=> b!1181442 false))

(declare-fun b!1181443 () Bool)

(declare-fun res!785191 () Bool)

(assert (=> b!1181443 (=> (not res!785191) (not e!671722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76294 (_ BitVec 32)) Bool)

(assert (=> b!1181443 (= res!785191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181444 () Bool)

(declare-fun e!671729 () Bool)

(declare-fun e!671723 () Bool)

(assert (=> b!1181444 (= e!671729 e!671723)))

(declare-fun res!785193 () Bool)

(assert (=> b!1181444 (=> res!785193 e!671723)))

(assert (=> b!1181444 (= res!785193 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44811)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44811)

(declare-fun lt!534366 () ListLongMap!17241)

(declare-fun lt!534369 () array!76294)

(declare-fun lt!534360 () array!76296)

(declare-fun getCurrentListMapNoExtraKeys!5061 (array!76294 array!76296 (_ BitVec 32) (_ BitVec 32) V!44811 V!44811 (_ BitVec 32) Int) ListLongMap!17241)

(assert (=> b!1181444 (= lt!534366 (getCurrentListMapNoExtraKeys!5061 lt!534369 lt!534360 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534364 () V!44811)

(assert (=> b!1181444 (= lt!534360 (array!76297 (store (arr!36794 _values!996) i!673 (ValueCellFull!14172 lt!534364)) (size!37331 _values!996)))))

(declare-fun dynLambda!3029 (Int (_ BitVec 64)) V!44811)

(assert (=> b!1181444 (= lt!534364 (dynLambda!3029 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534363 () ListLongMap!17241)

(assert (=> b!1181444 (= lt!534363 (getCurrentListMapNoExtraKeys!5061 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181445 () Bool)

(declare-fun res!785192 () Bool)

(assert (=> b!1181445 (=> (not res!785192) (not e!671722))))

(assert (=> b!1181445 (= res!785192 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37330 _keys!1208))))))

(declare-fun b!1181446 () Bool)

(declare-fun res!785190 () Bool)

(assert (=> b!1181446 (=> (not res!785190) (not e!671722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181446 (= res!785190 (validMask!0 mask!1564))))

(declare-fun b!1181447 () Bool)

(declare-fun e!671731 () Bool)

(assert (=> b!1181447 (= e!671722 e!671731)))

(declare-fun res!785182 () Bool)

(assert (=> b!1181447 (=> (not res!785182) (not e!671731))))

(assert (=> b!1181447 (= res!785182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534369 mask!1564))))

(assert (=> b!1181447 (= lt!534369 (array!76295 (store (arr!36793 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37330 _keys!1208)))))

(declare-fun mapNonEmpty!46472 () Bool)

(declare-fun tp!88413 () Bool)

(declare-fun e!671724 () Bool)

(assert (=> mapNonEmpty!46472 (= mapRes!46472 (and tp!88413 e!671724))))

(declare-fun mapValue!46472 () ValueCell!14172)

(declare-fun mapRest!46472 () (Array (_ BitVec 32) ValueCell!14172))

(declare-fun mapKey!46472 () (_ BitVec 32))

(assert (=> mapNonEmpty!46472 (= (arr!36794 _values!996) (store mapRest!46472 mapKey!46472 mapValue!46472))))

(declare-fun b!1181448 () Bool)

(declare-fun e!671725 () Bool)

(assert (=> b!1181448 (= e!671725 true)))

(assert (=> b!1181448 e!671730))

(declare-fun res!785197 () Bool)

(assert (=> b!1181448 (=> (not res!785197) (not e!671730))))

(assert (=> b!1181448 (= res!785197 (not (= (select (arr!36793 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!534368 () Unit!38995)

(assert (=> b!1181448 (= lt!534368 e!671726)))

(declare-fun c!116921 () Bool)

(assert (=> b!1181448 (= c!116921 (= (select (arr!36793 _keys!1208) from!1455) k0!934))))

(declare-fun e!671732 () Bool)

(assert (=> b!1181448 e!671732))

(declare-fun res!785184 () Bool)

(assert (=> b!1181448 (=> (not res!785184) (not e!671732))))

(declare-fun lt!534355 () tuple2!19260)

(declare-fun +!3854 (ListLongMap!17241 tuple2!19260) ListLongMap!17241)

(assert (=> b!1181448 (= res!785184 (= lt!534366 (+!3854 lt!534367 lt!534355)))))

(declare-fun get!18854 (ValueCell!14172 V!44811) V!44811)

(assert (=> b!1181448 (= lt!534355 (tuple2!19261 (select (arr!36793 _keys!1208) from!1455) (get!18854 (select (arr!36794 _values!996) from!1455) lt!534364)))))

(declare-fun b!1181449 () Bool)

(declare-fun Unit!38998 () Unit!38995)

(assert (=> b!1181449 (= e!671726 Unit!38998)))

(declare-fun res!785186 () Bool)

(assert (=> start!99690 (=> (not res!785186) (not e!671722))))

(assert (=> start!99690 (= res!785186 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37330 _keys!1208))))))

(assert (=> start!99690 e!671722))

(assert (=> start!99690 tp_is_empty!29763))

(declare-fun array_inv!27974 (array!76294) Bool)

(assert (=> start!99690 (array_inv!27974 _keys!1208)))

(assert (=> start!99690 true))

(assert (=> start!99690 tp!88414))

(declare-fun array_inv!27975 (array!76296) Bool)

(assert (=> start!99690 (and (array_inv!27975 _values!996) e!671733)))

(declare-fun b!1181450 () Bool)

(declare-fun res!785195 () Bool)

(assert (=> b!1181450 (=> (not res!785195) (not e!671722))))

(assert (=> b!1181450 (= res!785195 (= (select (arr!36793 _keys!1208) i!673) k0!934))))

(declare-fun b!1181451 () Bool)

(declare-fun res!785188 () Bool)

(assert (=> b!1181451 (=> (not res!785188) (not e!671730))))

(declare-fun lt!534365 () ListLongMap!17241)

(assert (=> b!1181451 (= res!785188 (= lt!534363 (+!3854 lt!534365 lt!534355)))))

(declare-fun b!1181452 () Bool)

(assert (=> b!1181452 (= e!671732 e!671734)))

(declare-fun res!785181 () Bool)

(assert (=> b!1181452 (=> res!785181 e!671734)))

(assert (=> b!1181452 (= res!785181 (not (= (select (arr!36793 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1181453 () Bool)

(assert (=> b!1181453 (= e!671724 tp_is_empty!29763)))

(declare-fun b!1181454 () Bool)

(assert (=> b!1181454 (= e!671723 e!671725)))

(declare-fun res!785183 () Bool)

(assert (=> b!1181454 (=> res!785183 e!671725)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181454 (= res!785183 (not (validKeyInArray!0 (select (arr!36793 _keys!1208) from!1455))))))

(assert (=> b!1181454 (= lt!534361 lt!534367)))

(declare-fun -!1625 (ListLongMap!17241 (_ BitVec 64)) ListLongMap!17241)

(assert (=> b!1181454 (= lt!534367 (-!1625 lt!534365 k0!934))))

(assert (=> b!1181454 (= lt!534361 (getCurrentListMapNoExtraKeys!5061 lt!534369 lt!534360 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181454 (= lt!534365 (getCurrentListMapNoExtraKeys!5061 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534358 () Unit!38995)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!849 (array!76294 array!76296 (_ BitVec 32) (_ BitVec 32) V!44811 V!44811 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38995)

(assert (=> b!1181454 (= lt!534358 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!849 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181455 () Bool)

(declare-fun res!785187 () Bool)

(assert (=> b!1181455 (=> (not res!785187) (not e!671731))))

(assert (=> b!1181455 (= res!785187 (arrayNoDuplicates!0 lt!534369 #b00000000000000000000000000000000 Nil!26018))))

(declare-fun mapIsEmpty!46472 () Bool)

(assert (=> mapIsEmpty!46472 mapRes!46472))

(declare-fun b!1181456 () Bool)

(assert (=> b!1181456 (= e!671731 (not e!671729))))

(declare-fun res!785189 () Bool)

(assert (=> b!1181456 (=> res!785189 e!671729)))

(assert (=> b!1181456 (= res!785189 (bvsgt from!1455 i!673))))

(assert (=> b!1181456 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!534356 () Unit!38995)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76294 (_ BitVec 64) (_ BitVec 32)) Unit!38995)

(assert (=> b!1181456 (= lt!534356 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181457 () Bool)

(declare-fun res!785185 () Bool)

(assert (=> b!1181457 (=> (not res!785185) (not e!671722))))

(assert (=> b!1181457 (= res!785185 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26018))))

(declare-fun b!1181458 () Bool)

(declare-fun res!785196 () Bool)

(assert (=> b!1181458 (=> (not res!785196) (not e!671722))))

(assert (=> b!1181458 (= res!785196 (validKeyInArray!0 k0!934))))

(assert (= (and start!99690 res!785186) b!1181446))

(assert (= (and b!1181446 res!785190) b!1181438))

(assert (= (and b!1181438 res!785194) b!1181443))

(assert (= (and b!1181443 res!785191) b!1181457))

(assert (= (and b!1181457 res!785185) b!1181445))

(assert (= (and b!1181445 res!785192) b!1181458))

(assert (= (and b!1181458 res!785196) b!1181450))

(assert (= (and b!1181450 res!785195) b!1181447))

(assert (= (and b!1181447 res!785182) b!1181455))

(assert (= (and b!1181455 res!785187) b!1181456))

(assert (= (and b!1181456 (not res!785189)) b!1181444))

(assert (= (and b!1181444 (not res!785193)) b!1181454))

(assert (= (and b!1181454 (not res!785183)) b!1181448))

(assert (= (and b!1181448 res!785184) b!1181452))

(assert (= (and b!1181452 (not res!785181)) b!1181439))

(assert (= (and b!1181448 c!116921) b!1181442))

(assert (= (and b!1181448 (not c!116921)) b!1181449))

(assert (= (and b!1181448 res!785197) b!1181451))

(assert (= (and b!1181451 res!785188) b!1181440))

(assert (= (and b!1181441 condMapEmpty!46472) mapIsEmpty!46472))

(assert (= (and b!1181441 (not condMapEmpty!46472)) mapNonEmpty!46472))

(get-info :version)

(assert (= (and mapNonEmpty!46472 ((_ is ValueCellFull!14172) mapValue!46472)) b!1181453))

(assert (= (and b!1181441 ((_ is ValueCellFull!14172) mapDefault!46472)) b!1181437))

(assert (= start!99690 b!1181441))

(declare-fun b_lambda!20395 () Bool)

(assert (=> (not b_lambda!20395) (not b!1181444)))

(declare-fun t!38251 () Bool)

(declare-fun tb!10053 () Bool)

(assert (=> (and start!99690 (= defaultEntry!1004 defaultEntry!1004) t!38251) tb!10053))

(declare-fun result!20665 () Bool)

(assert (=> tb!10053 (= result!20665 tp_is_empty!29763)))

(assert (=> b!1181444 t!38251))

(declare-fun b_and!41349 () Bool)

(assert (= b_and!41347 (and (=> t!38251 result!20665) b_and!41349)))

(declare-fun m!1089413 () Bool)

(assert (=> b!1181454 m!1089413))

(declare-fun m!1089415 () Bool)

(assert (=> b!1181454 m!1089415))

(declare-fun m!1089417 () Bool)

(assert (=> b!1181454 m!1089417))

(declare-fun m!1089419 () Bool)

(assert (=> b!1181454 m!1089419))

(declare-fun m!1089421 () Bool)

(assert (=> b!1181454 m!1089421))

(declare-fun m!1089423 () Bool)

(assert (=> b!1181454 m!1089423))

(assert (=> b!1181454 m!1089421))

(declare-fun m!1089425 () Bool)

(assert (=> b!1181450 m!1089425))

(declare-fun m!1089427 () Bool)

(assert (=> b!1181455 m!1089427))

(declare-fun m!1089429 () Bool)

(assert (=> b!1181444 m!1089429))

(declare-fun m!1089431 () Bool)

(assert (=> b!1181444 m!1089431))

(declare-fun m!1089433 () Bool)

(assert (=> b!1181444 m!1089433))

(declare-fun m!1089435 () Bool)

(assert (=> b!1181444 m!1089435))

(declare-fun m!1089437 () Bool)

(assert (=> b!1181447 m!1089437))

(declare-fun m!1089439 () Bool)

(assert (=> b!1181447 m!1089439))

(assert (=> b!1181448 m!1089421))

(declare-fun m!1089441 () Bool)

(assert (=> b!1181448 m!1089441))

(declare-fun m!1089443 () Bool)

(assert (=> b!1181448 m!1089443))

(assert (=> b!1181448 m!1089443))

(declare-fun m!1089445 () Bool)

(assert (=> b!1181448 m!1089445))

(declare-fun m!1089447 () Bool)

(assert (=> start!99690 m!1089447))

(declare-fun m!1089449 () Bool)

(assert (=> start!99690 m!1089449))

(declare-fun m!1089451 () Bool)

(assert (=> mapNonEmpty!46472 m!1089451))

(declare-fun m!1089453 () Bool)

(assert (=> b!1181457 m!1089453))

(declare-fun m!1089455 () Bool)

(assert (=> b!1181443 m!1089455))

(declare-fun m!1089457 () Bool)

(assert (=> b!1181456 m!1089457))

(declare-fun m!1089459 () Bool)

(assert (=> b!1181456 m!1089459))

(declare-fun m!1089461 () Bool)

(assert (=> b!1181446 m!1089461))

(declare-fun m!1089463 () Bool)

(assert (=> b!1181439 m!1089463))

(declare-fun m!1089465 () Bool)

(assert (=> b!1181451 m!1089465))

(declare-fun m!1089467 () Bool)

(assert (=> b!1181442 m!1089467))

(declare-fun m!1089469 () Bool)

(assert (=> b!1181442 m!1089469))

(declare-fun m!1089471 () Bool)

(assert (=> b!1181442 m!1089471))

(declare-fun m!1089473 () Bool)

(assert (=> b!1181442 m!1089473))

(declare-fun m!1089475 () Bool)

(assert (=> b!1181442 m!1089475))

(declare-fun m!1089477 () Bool)

(assert (=> b!1181458 m!1089477))

(assert (=> b!1181452 m!1089421))

(check-sat (not b!1181451) (not start!99690) (not mapNonEmpty!46472) (not b!1181448) (not b!1181457) (not b!1181439) (not b!1181446) (not b!1181442) (not b_next!25233) (not b!1181456) tp_is_empty!29763 (not b!1181455) b_and!41349 (not b!1181454) (not b!1181447) (not b!1181443) (not b_lambda!20395) (not b!1181458) (not b!1181444))
(check-sat b_and!41349 (not b_next!25233))
