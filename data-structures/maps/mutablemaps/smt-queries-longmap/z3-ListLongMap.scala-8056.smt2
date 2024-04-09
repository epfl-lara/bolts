; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99214 () Bool)

(assert start!99214)

(declare-fun b_free!24783 () Bool)

(declare-fun b_next!24783 () Bool)

(assert (=> start!99214 (= b_free!24783 (not b_next!24783))))

(declare-fun tp!87061 () Bool)

(declare-fun b_and!40429 () Bool)

(assert (=> start!99214 (= tp!87061 b_and!40429)))

(declare-fun b!1167390 () Bool)

(declare-fun res!774523 () Bool)

(declare-fun e!663564 () Bool)

(assert (=> b!1167390 (=> (not res!774523) (not e!663564))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75404 0))(
  ( (array!75405 (arr!36349 (Array (_ BitVec 32) (_ BitVec 64))) (size!36886 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75404)

(assert (=> b!1167390 (= res!774523 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36886 _keys!1208))))))

(declare-fun b!1167391 () Bool)

(declare-fun res!774522 () Bool)

(assert (=> b!1167391 (=> (not res!774522) (not e!663564))))

(declare-datatypes ((List!25627 0))(
  ( (Nil!25624) (Cons!25623 (h!26832 (_ BitVec 64)) (t!37409 List!25627)) )
))
(declare-fun arrayNoDuplicates!0 (array!75404 (_ BitVec 32) List!25627) Bool)

(assert (=> b!1167391 (= res!774522 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25624))))

(declare-fun b!1167392 () Bool)

(declare-fun res!774517 () Bool)

(assert (=> b!1167392 (=> (not res!774517) (not e!663564))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75404 (_ BitVec 32)) Bool)

(assert (=> b!1167392 (= res!774517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!774524 () Bool)

(assert (=> start!99214 (=> (not res!774524) (not e!663564))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99214 (= res!774524 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36886 _keys!1208))))))

(assert (=> start!99214 e!663564))

(declare-fun tp_is_empty!29313 () Bool)

(assert (=> start!99214 tp_is_empty!29313))

(declare-fun array_inv!27666 (array!75404) Bool)

(assert (=> start!99214 (array_inv!27666 _keys!1208)))

(assert (=> start!99214 true))

(assert (=> start!99214 tp!87061))

(declare-datatypes ((V!44211 0))(
  ( (V!44212 (val!14713 Int)) )
))
(declare-datatypes ((ValueCell!13947 0))(
  ( (ValueCellFull!13947 (v!17351 V!44211)) (EmptyCell!13947) )
))
(declare-datatypes ((array!75406 0))(
  ( (array!75407 (arr!36350 (Array (_ BitVec 32) ValueCell!13947)) (size!36887 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75406)

(declare-fun e!663561 () Bool)

(declare-fun array_inv!27667 (array!75406) Bool)

(assert (=> start!99214 (and (array_inv!27667 _values!996) e!663561)))

(declare-fun b!1167393 () Bool)

(declare-fun res!774515 () Bool)

(assert (=> b!1167393 (=> (not res!774515) (not e!663564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167393 (= res!774515 (validMask!0 mask!1564))))

(declare-fun b!1167394 () Bool)

(declare-fun res!774521 () Bool)

(assert (=> b!1167394 (=> (not res!774521) (not e!663564))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1167394 (= res!774521 (= (select (arr!36349 _keys!1208) i!673) k0!934))))

(declare-fun b!1167395 () Bool)

(declare-fun e!663560 () Bool)

(assert (=> b!1167395 (= e!663560 true)))

(declare-fun zeroValue!944 () V!44211)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525587 () array!75404)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44211)

(declare-fun lt!525589 () array!75406)

(declare-datatypes ((tuple2!18850 0))(
  ( (tuple2!18851 (_1!9435 (_ BitVec 64)) (_2!9435 V!44211)) )
))
(declare-datatypes ((List!25628 0))(
  ( (Nil!25625) (Cons!25624 (h!26833 tuple2!18850) (t!37410 List!25628)) )
))
(declare-datatypes ((ListLongMap!16831 0))(
  ( (ListLongMap!16832 (toList!8431 List!25628)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4864 (array!75404 array!75406 (_ BitVec 32) (_ BitVec 32) V!44211 V!44211 (_ BitVec 32) Int) ListLongMap!16831)

(declare-fun -!1465 (ListLongMap!16831 (_ BitVec 64)) ListLongMap!16831)

(assert (=> b!1167395 (= (getCurrentListMapNoExtraKeys!4864 lt!525587 lt!525589 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1465 (getCurrentListMapNoExtraKeys!4864 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38418 0))(
  ( (Unit!38419) )
))
(declare-fun lt!525588 () Unit!38418)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!689 (array!75404 array!75406 (_ BitVec 32) (_ BitVec 32) V!44211 V!44211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38418)

(assert (=> b!1167395 (= lt!525588 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!689 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45794 () Bool)

(declare-fun mapRes!45794 () Bool)

(declare-fun tp!87060 () Bool)

(declare-fun e!663562 () Bool)

(assert (=> mapNonEmpty!45794 (= mapRes!45794 (and tp!87060 e!663562))))

(declare-fun mapRest!45794 () (Array (_ BitVec 32) ValueCell!13947))

(declare-fun mapKey!45794 () (_ BitVec 32))

(declare-fun mapValue!45794 () ValueCell!13947)

(assert (=> mapNonEmpty!45794 (= (arr!36350 _values!996) (store mapRest!45794 mapKey!45794 mapValue!45794))))

(declare-fun mapIsEmpty!45794 () Bool)

(assert (=> mapIsEmpty!45794 mapRes!45794))

(declare-fun b!1167396 () Bool)

(declare-fun res!774518 () Bool)

(assert (=> b!1167396 (=> (not res!774518) (not e!663564))))

(assert (=> b!1167396 (= res!774518 (and (= (size!36887 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36886 _keys!1208) (size!36887 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167397 () Bool)

(declare-fun res!774514 () Bool)

(assert (=> b!1167397 (=> (not res!774514) (not e!663564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167397 (= res!774514 (validKeyInArray!0 k0!934))))

(declare-fun b!1167398 () Bool)

(declare-fun e!663557 () Bool)

(assert (=> b!1167398 (= e!663557 e!663560)))

(declare-fun res!774519 () Bool)

(assert (=> b!1167398 (=> res!774519 e!663560)))

(assert (=> b!1167398 (= res!774519 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525590 () ListLongMap!16831)

(assert (=> b!1167398 (= lt!525590 (getCurrentListMapNoExtraKeys!4864 lt!525587 lt!525589 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2857 (Int (_ BitVec 64)) V!44211)

(assert (=> b!1167398 (= lt!525589 (array!75407 (store (arr!36350 _values!996) i!673 (ValueCellFull!13947 (dynLambda!2857 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36887 _values!996)))))

(declare-fun lt!525586 () ListLongMap!16831)

(assert (=> b!1167398 (= lt!525586 (getCurrentListMapNoExtraKeys!4864 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167399 () Bool)

(assert (=> b!1167399 (= e!663562 tp_is_empty!29313)))

(declare-fun b!1167400 () Bool)

(declare-fun e!663558 () Bool)

(assert (=> b!1167400 (= e!663561 (and e!663558 mapRes!45794))))

(declare-fun condMapEmpty!45794 () Bool)

(declare-fun mapDefault!45794 () ValueCell!13947)

(assert (=> b!1167400 (= condMapEmpty!45794 (= (arr!36350 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13947)) mapDefault!45794)))))

(declare-fun b!1167401 () Bool)

(declare-fun e!663563 () Bool)

(assert (=> b!1167401 (= e!663564 e!663563)))

(declare-fun res!774520 () Bool)

(assert (=> b!1167401 (=> (not res!774520) (not e!663563))))

(assert (=> b!1167401 (= res!774520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525587 mask!1564))))

(assert (=> b!1167401 (= lt!525587 (array!75405 (store (arr!36349 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36886 _keys!1208)))))

(declare-fun b!1167402 () Bool)

(assert (=> b!1167402 (= e!663558 tp_is_empty!29313)))

(declare-fun b!1167403 () Bool)

(assert (=> b!1167403 (= e!663563 (not e!663557))))

(declare-fun res!774516 () Bool)

(assert (=> b!1167403 (=> res!774516 e!663557)))

(assert (=> b!1167403 (= res!774516 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167403 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525591 () Unit!38418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75404 (_ BitVec 64) (_ BitVec 32)) Unit!38418)

(assert (=> b!1167403 (= lt!525591 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1167404 () Bool)

(declare-fun res!774513 () Bool)

(assert (=> b!1167404 (=> (not res!774513) (not e!663563))))

(assert (=> b!1167404 (= res!774513 (arrayNoDuplicates!0 lt!525587 #b00000000000000000000000000000000 Nil!25624))))

(assert (= (and start!99214 res!774524) b!1167393))

(assert (= (and b!1167393 res!774515) b!1167396))

(assert (= (and b!1167396 res!774518) b!1167392))

(assert (= (and b!1167392 res!774517) b!1167391))

(assert (= (and b!1167391 res!774522) b!1167390))

(assert (= (and b!1167390 res!774523) b!1167397))

(assert (= (and b!1167397 res!774514) b!1167394))

(assert (= (and b!1167394 res!774521) b!1167401))

(assert (= (and b!1167401 res!774520) b!1167404))

(assert (= (and b!1167404 res!774513) b!1167403))

(assert (= (and b!1167403 (not res!774516)) b!1167398))

(assert (= (and b!1167398 (not res!774519)) b!1167395))

(assert (= (and b!1167400 condMapEmpty!45794) mapIsEmpty!45794))

(assert (= (and b!1167400 (not condMapEmpty!45794)) mapNonEmpty!45794))

(get-info :version)

(assert (= (and mapNonEmpty!45794 ((_ is ValueCellFull!13947) mapValue!45794)) b!1167399))

(assert (= (and b!1167400 ((_ is ValueCellFull!13947) mapDefault!45794)) b!1167402))

(assert (= start!99214 b!1167400))

(declare-fun b_lambda!19907 () Bool)

(assert (=> (not b_lambda!19907) (not b!1167398)))

(declare-fun t!37408 () Bool)

(declare-fun tb!9603 () Bool)

(assert (=> (and start!99214 (= defaultEntry!1004 defaultEntry!1004) t!37408) tb!9603))

(declare-fun result!19763 () Bool)

(assert (=> tb!9603 (= result!19763 tp_is_empty!29313)))

(assert (=> b!1167398 t!37408))

(declare-fun b_and!40431 () Bool)

(assert (= b_and!40429 (and (=> t!37408 result!19763) b_and!40431)))

(declare-fun m!1075375 () Bool)

(assert (=> b!1167395 m!1075375))

(declare-fun m!1075377 () Bool)

(assert (=> b!1167395 m!1075377))

(assert (=> b!1167395 m!1075377))

(declare-fun m!1075379 () Bool)

(assert (=> b!1167395 m!1075379))

(declare-fun m!1075381 () Bool)

(assert (=> b!1167395 m!1075381))

(declare-fun m!1075383 () Bool)

(assert (=> b!1167403 m!1075383))

(declare-fun m!1075385 () Bool)

(assert (=> b!1167403 m!1075385))

(declare-fun m!1075387 () Bool)

(assert (=> b!1167398 m!1075387))

(declare-fun m!1075389 () Bool)

(assert (=> b!1167398 m!1075389))

(declare-fun m!1075391 () Bool)

(assert (=> b!1167398 m!1075391))

(declare-fun m!1075393 () Bool)

(assert (=> b!1167398 m!1075393))

(declare-fun m!1075395 () Bool)

(assert (=> mapNonEmpty!45794 m!1075395))

(declare-fun m!1075397 () Bool)

(assert (=> b!1167394 m!1075397))

(declare-fun m!1075399 () Bool)

(assert (=> b!1167404 m!1075399))

(declare-fun m!1075401 () Bool)

(assert (=> b!1167397 m!1075401))

(declare-fun m!1075403 () Bool)

(assert (=> b!1167393 m!1075403))

(declare-fun m!1075405 () Bool)

(assert (=> start!99214 m!1075405))

(declare-fun m!1075407 () Bool)

(assert (=> start!99214 m!1075407))

(declare-fun m!1075409 () Bool)

(assert (=> b!1167391 m!1075409))

(declare-fun m!1075411 () Bool)

(assert (=> b!1167392 m!1075411))

(declare-fun m!1075413 () Bool)

(assert (=> b!1167401 m!1075413))

(declare-fun m!1075415 () Bool)

(assert (=> b!1167401 m!1075415))

(check-sat (not b_next!24783) (not b_lambda!19907) (not b!1167391) (not b!1167393) (not b!1167395) (not b!1167397) (not b!1167398) b_and!40431 (not mapNonEmpty!45794) (not start!99214) (not b!1167401) tp_is_empty!29313 (not b!1167392) (not b!1167404) (not b!1167403))
(check-sat b_and!40431 (not b_next!24783))
