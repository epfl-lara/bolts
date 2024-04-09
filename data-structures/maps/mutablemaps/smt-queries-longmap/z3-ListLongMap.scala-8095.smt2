; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99474 () Bool)

(assert start!99474)

(declare-fun b_free!25017 () Bool)

(declare-fun b_next!25017 () Bool)

(assert (=> start!99474 (= b_free!25017 (not b_next!25017))))

(declare-fun tp!87766 () Bool)

(declare-fun b_and!40915 () Bool)

(assert (=> start!99474 (= tp!87766 b_and!40915)))

(declare-fun mapNonEmpty!46148 () Bool)

(declare-fun mapRes!46148 () Bool)

(declare-fun tp!87765 () Bool)

(declare-fun e!667592 () Bool)

(assert (=> mapNonEmpty!46148 (= mapRes!46148 (and tp!87765 e!667592))))

(declare-fun mapKey!46148 () (_ BitVec 32))

(declare-datatypes ((V!44523 0))(
  ( (V!44524 (val!14830 Int)) )
))
(declare-datatypes ((ValueCell!14064 0))(
  ( (ValueCellFull!14064 (v!17469 V!44523)) (EmptyCell!14064) )
))
(declare-fun mapRest!46148 () (Array (_ BitVec 32) ValueCell!14064))

(declare-datatypes ((array!75870 0))(
  ( (array!75871 (arr!36581 (Array (_ BitVec 32) ValueCell!14064)) (size!37118 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75870)

(declare-fun mapValue!46148 () ValueCell!14064)

(assert (=> mapNonEmpty!46148 (= (arr!36581 _values!996) (store mapRest!46148 mapKey!46148 mapValue!46148))))

(declare-fun b!1174407 () Bool)

(declare-fun e!667588 () Bool)

(assert (=> b!1174407 (= e!667588 true)))

(declare-datatypes ((array!75872 0))(
  ( (array!75873 (arr!36582 (Array (_ BitVec 32) (_ BitVec 64))) (size!37119 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75872)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1174407 (not (= (select (arr!36582 _keys!1208) from!1455) k0!934))))

(declare-datatypes ((Unit!38655 0))(
  ( (Unit!38656) )
))
(declare-fun lt!529578 () Unit!38655)

(declare-fun e!667590 () Unit!38655)

(assert (=> b!1174407 (= lt!529578 e!667590)))

(declare-fun c!116597 () Bool)

(assert (=> b!1174407 (= c!116597 (= (select (arr!36582 _keys!1208) from!1455) k0!934))))

(declare-fun e!667595 () Bool)

(assert (=> b!1174407 e!667595))

(declare-fun res!779990 () Bool)

(assert (=> b!1174407 (=> (not res!779990) (not e!667595))))

(declare-datatypes ((tuple2!19060 0))(
  ( (tuple2!19061 (_1!9540 (_ BitVec 64)) (_2!9540 V!44523)) )
))
(declare-datatypes ((List!25830 0))(
  ( (Nil!25827) (Cons!25826 (h!27035 tuple2!19060) (t!37846 List!25830)) )
))
(declare-datatypes ((ListLongMap!17041 0))(
  ( (ListLongMap!17042 (toList!8536 List!25830)) )
))
(declare-fun lt!529576 () ListLongMap!17041)

(declare-fun lt!529581 () V!44523)

(declare-fun lt!529580 () ListLongMap!17041)

(declare-fun +!3768 (ListLongMap!17041 tuple2!19060) ListLongMap!17041)

(declare-fun get!18707 (ValueCell!14064 V!44523) V!44523)

(assert (=> b!1174407 (= res!779990 (= lt!529580 (+!3768 lt!529576 (tuple2!19061 (select (arr!36582 _keys!1208) from!1455) (get!18707 (select (arr!36581 _values!996) from!1455) lt!529581)))))))

(declare-fun b!1174408 () Bool)

(declare-fun e!667586 () Bool)

(assert (=> b!1174408 (= e!667595 e!667586)))

(declare-fun res!779994 () Bool)

(assert (=> b!1174408 (=> res!779994 e!667586)))

(assert (=> b!1174408 (= res!779994 (not (= (select (arr!36582 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1174409 () Bool)

(declare-fun res!779992 () Bool)

(declare-fun e!667594 () Bool)

(assert (=> b!1174409 (=> (not res!779992) (not e!667594))))

(declare-fun lt!529577 () array!75872)

(declare-datatypes ((List!25831 0))(
  ( (Nil!25828) (Cons!25827 (h!27036 (_ BitVec 64)) (t!37847 List!25831)) )
))
(declare-fun arrayNoDuplicates!0 (array!75872 (_ BitVec 32) List!25831) Bool)

(assert (=> b!1174409 (= res!779992 (arrayNoDuplicates!0 lt!529577 #b00000000000000000000000000000000 Nil!25828))))

(declare-fun b!1174410 () Bool)

(declare-fun res!779991 () Bool)

(declare-fun e!667596 () Bool)

(assert (=> b!1174410 (=> (not res!779991) (not e!667596))))

(assert (=> b!1174410 (= res!779991 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25828))))

(declare-fun b!1174411 () Bool)

(declare-fun res!779995 () Bool)

(assert (=> b!1174411 (=> (not res!779995) (not e!667596))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1174411 (= res!779995 (and (= (size!37118 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37119 _keys!1208) (size!37118 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174412 () Bool)

(assert (=> b!1174412 (= e!667596 e!667594)))

(declare-fun res!779997 () Bool)

(assert (=> b!1174412 (=> (not res!779997) (not e!667594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75872 (_ BitVec 32)) Bool)

(assert (=> b!1174412 (= res!779997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529577 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174412 (= lt!529577 (array!75873 (store (arr!36582 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37119 _keys!1208)))))

(declare-fun b!1174413 () Bool)

(declare-fun arrayContainsKey!0 (array!75872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174413 (= e!667586 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174414 () Bool)

(declare-fun tp_is_empty!29547 () Bool)

(assert (=> b!1174414 (= e!667592 tp_is_empty!29547)))

(declare-fun b!1174416 () Bool)

(declare-fun res!780001 () Bool)

(assert (=> b!1174416 (=> (not res!780001) (not e!667596))))

(assert (=> b!1174416 (= res!780001 (= (select (arr!36582 _keys!1208) i!673) k0!934))))

(declare-fun b!1174417 () Bool)

(declare-fun e!667589 () Bool)

(declare-fun e!667587 () Bool)

(assert (=> b!1174417 (= e!667589 e!667587)))

(declare-fun res!780000 () Bool)

(assert (=> b!1174417 (=> res!780000 e!667587)))

(assert (=> b!1174417 (= res!780000 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44523)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44523)

(declare-fun lt!529574 () array!75870)

(declare-fun getCurrentListMapNoExtraKeys!4967 (array!75872 array!75870 (_ BitVec 32) (_ BitVec 32) V!44523 V!44523 (_ BitVec 32) Int) ListLongMap!17041)

(assert (=> b!1174417 (= lt!529580 (getCurrentListMapNoExtraKeys!4967 lt!529577 lt!529574 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174417 (= lt!529574 (array!75871 (store (arr!36581 _values!996) i!673 (ValueCellFull!14064 lt!529581)) (size!37118 _values!996)))))

(declare-fun dynLambda!2950 (Int (_ BitVec 64)) V!44523)

(assert (=> b!1174417 (= lt!529581 (dynLambda!2950 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529582 () ListLongMap!17041)

(assert (=> b!1174417 (= lt!529582 (getCurrentListMapNoExtraKeys!4967 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174418 () Bool)

(declare-fun res!779989 () Bool)

(assert (=> b!1174418 (=> (not res!779989) (not e!667596))))

(assert (=> b!1174418 (= res!779989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174419 () Bool)

(declare-fun res!779999 () Bool)

(assert (=> b!1174419 (=> (not res!779999) (not e!667596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174419 (= res!779999 (validMask!0 mask!1564))))

(declare-fun b!1174420 () Bool)

(declare-fun res!779993 () Bool)

(assert (=> b!1174420 (=> (not res!779993) (not e!667596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174420 (= res!779993 (validKeyInArray!0 k0!934))))

(declare-fun b!1174421 () Bool)

(declare-fun Unit!38657 () Unit!38655)

(assert (=> b!1174421 (= e!667590 Unit!38657)))

(declare-fun b!1174422 () Bool)

(declare-fun e!667593 () Bool)

(assert (=> b!1174422 (= e!667593 tp_is_empty!29547)))

(declare-fun mapIsEmpty!46148 () Bool)

(assert (=> mapIsEmpty!46148 mapRes!46148))

(declare-fun b!1174423 () Bool)

(declare-fun e!667591 () Bool)

(assert (=> b!1174423 (= e!667591 (and e!667593 mapRes!46148))))

(declare-fun condMapEmpty!46148 () Bool)

(declare-fun mapDefault!46148 () ValueCell!14064)

(assert (=> b!1174423 (= condMapEmpty!46148 (= (arr!36581 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14064)) mapDefault!46148)))))

(declare-fun b!1174424 () Bool)

(assert (=> b!1174424 (= e!667587 e!667588)))

(declare-fun res!779996 () Bool)

(assert (=> b!1174424 (=> res!779996 e!667588)))

(assert (=> b!1174424 (= res!779996 (not (validKeyInArray!0 (select (arr!36582 _keys!1208) from!1455))))))

(declare-fun lt!529573 () ListLongMap!17041)

(assert (=> b!1174424 (= lt!529573 lt!529576)))

(declare-fun lt!529583 () ListLongMap!17041)

(declare-fun -!1546 (ListLongMap!17041 (_ BitVec 64)) ListLongMap!17041)

(assert (=> b!1174424 (= lt!529576 (-!1546 lt!529583 k0!934))))

(assert (=> b!1174424 (= lt!529573 (getCurrentListMapNoExtraKeys!4967 lt!529577 lt!529574 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174424 (= lt!529583 (getCurrentListMapNoExtraKeys!4967 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529571 () Unit!38655)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!770 (array!75872 array!75870 (_ BitVec 32) (_ BitVec 32) V!44523 V!44523 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38655)

(assert (=> b!1174424 (= lt!529571 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!770 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!779998 () Bool)

(assert (=> start!99474 (=> (not res!779998) (not e!667596))))

(assert (=> start!99474 (= res!779998 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37119 _keys!1208))))))

(assert (=> start!99474 e!667596))

(assert (=> start!99474 tp_is_empty!29547))

(declare-fun array_inv!27830 (array!75872) Bool)

(assert (=> start!99474 (array_inv!27830 _keys!1208)))

(assert (=> start!99474 true))

(assert (=> start!99474 tp!87766))

(declare-fun array_inv!27831 (array!75870) Bool)

(assert (=> start!99474 (and (array_inv!27831 _values!996) e!667591)))

(declare-fun b!1174415 () Bool)

(assert (=> b!1174415 (= e!667594 (not e!667589))))

(declare-fun res!779987 () Bool)

(assert (=> b!1174415 (=> res!779987 e!667589)))

(assert (=> b!1174415 (= res!779987 (bvsgt from!1455 i!673))))

(assert (=> b!1174415 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!529572 () Unit!38655)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75872 (_ BitVec 64) (_ BitVec 32)) Unit!38655)

(assert (=> b!1174415 (= lt!529572 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174425 () Bool)

(declare-fun res!779988 () Bool)

(assert (=> b!1174425 (=> (not res!779988) (not e!667596))))

(assert (=> b!1174425 (= res!779988 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37119 _keys!1208))))))

(declare-fun b!1174426 () Bool)

(declare-fun Unit!38658 () Unit!38655)

(assert (=> b!1174426 (= e!667590 Unit!38658)))

(declare-fun lt!529575 () Unit!38655)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75872 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38655)

(assert (=> b!1174426 (= lt!529575 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174426 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529579 () Unit!38655)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75872 (_ BitVec 32) (_ BitVec 32)) Unit!38655)

(assert (=> b!1174426 (= lt!529579 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174426 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25828)))

(declare-fun lt!529584 () Unit!38655)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75872 (_ BitVec 64) (_ BitVec 32) List!25831) Unit!38655)

(assert (=> b!1174426 (= lt!529584 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25828))))

(assert (=> b!1174426 false))

(assert (= (and start!99474 res!779998) b!1174419))

(assert (= (and b!1174419 res!779999) b!1174411))

(assert (= (and b!1174411 res!779995) b!1174418))

(assert (= (and b!1174418 res!779989) b!1174410))

(assert (= (and b!1174410 res!779991) b!1174425))

(assert (= (and b!1174425 res!779988) b!1174420))

(assert (= (and b!1174420 res!779993) b!1174416))

(assert (= (and b!1174416 res!780001) b!1174412))

(assert (= (and b!1174412 res!779997) b!1174409))

(assert (= (and b!1174409 res!779992) b!1174415))

(assert (= (and b!1174415 (not res!779987)) b!1174417))

(assert (= (and b!1174417 (not res!780000)) b!1174424))

(assert (= (and b!1174424 (not res!779996)) b!1174407))

(assert (= (and b!1174407 res!779990) b!1174408))

(assert (= (and b!1174408 (not res!779994)) b!1174413))

(assert (= (and b!1174407 c!116597) b!1174426))

(assert (= (and b!1174407 (not c!116597)) b!1174421))

(assert (= (and b!1174423 condMapEmpty!46148) mapIsEmpty!46148))

(assert (= (and b!1174423 (not condMapEmpty!46148)) mapNonEmpty!46148))

(get-info :version)

(assert (= (and mapNonEmpty!46148 ((_ is ValueCellFull!14064) mapValue!46148)) b!1174414))

(assert (= (and b!1174423 ((_ is ValueCellFull!14064) mapDefault!46148)) b!1174422))

(assert (= start!99474 b!1174423))

(declare-fun b_lambda!20179 () Bool)

(assert (=> (not b_lambda!20179) (not b!1174417)))

(declare-fun t!37845 () Bool)

(declare-fun tb!9837 () Bool)

(assert (=> (and start!99474 (= defaultEntry!1004 defaultEntry!1004) t!37845) tb!9837))

(declare-fun result!20233 () Bool)

(assert (=> tb!9837 (= result!20233 tp_is_empty!29547)))

(assert (=> b!1174417 t!37845))

(declare-fun b_and!40917 () Bool)

(assert (= b_and!40915 (and (=> t!37845 result!20233) b_and!40917)))

(declare-fun m!1082337 () Bool)

(assert (=> b!1174424 m!1082337))

(declare-fun m!1082339 () Bool)

(assert (=> b!1174424 m!1082339))

(declare-fun m!1082341 () Bool)

(assert (=> b!1174424 m!1082341))

(declare-fun m!1082343 () Bool)

(assert (=> b!1174424 m!1082343))

(declare-fun m!1082345 () Bool)

(assert (=> b!1174424 m!1082345))

(declare-fun m!1082347 () Bool)

(assert (=> b!1174424 m!1082347))

(assert (=> b!1174424 m!1082345))

(declare-fun m!1082349 () Bool)

(assert (=> mapNonEmpty!46148 m!1082349))

(assert (=> b!1174407 m!1082345))

(declare-fun m!1082351 () Bool)

(assert (=> b!1174407 m!1082351))

(assert (=> b!1174407 m!1082351))

(declare-fun m!1082353 () Bool)

(assert (=> b!1174407 m!1082353))

(declare-fun m!1082355 () Bool)

(assert (=> b!1174407 m!1082355))

(declare-fun m!1082357 () Bool)

(assert (=> b!1174426 m!1082357))

(declare-fun m!1082359 () Bool)

(assert (=> b!1174426 m!1082359))

(declare-fun m!1082361 () Bool)

(assert (=> b!1174426 m!1082361))

(declare-fun m!1082363 () Bool)

(assert (=> b!1174426 m!1082363))

(declare-fun m!1082365 () Bool)

(assert (=> b!1174426 m!1082365))

(declare-fun m!1082367 () Bool)

(assert (=> b!1174416 m!1082367))

(declare-fun m!1082369 () Bool)

(assert (=> b!1174418 m!1082369))

(declare-fun m!1082371 () Bool)

(assert (=> b!1174412 m!1082371))

(declare-fun m!1082373 () Bool)

(assert (=> b!1174412 m!1082373))

(declare-fun m!1082375 () Bool)

(assert (=> b!1174410 m!1082375))

(declare-fun m!1082377 () Bool)

(assert (=> b!1174413 m!1082377))

(assert (=> b!1174408 m!1082345))

(declare-fun m!1082379 () Bool)

(assert (=> b!1174420 m!1082379))

(declare-fun m!1082381 () Bool)

(assert (=> start!99474 m!1082381))

(declare-fun m!1082383 () Bool)

(assert (=> start!99474 m!1082383))

(declare-fun m!1082385 () Bool)

(assert (=> b!1174417 m!1082385))

(declare-fun m!1082387 () Bool)

(assert (=> b!1174417 m!1082387))

(declare-fun m!1082389 () Bool)

(assert (=> b!1174417 m!1082389))

(declare-fun m!1082391 () Bool)

(assert (=> b!1174417 m!1082391))

(declare-fun m!1082393 () Bool)

(assert (=> b!1174409 m!1082393))

(declare-fun m!1082395 () Bool)

(assert (=> b!1174419 m!1082395))

(declare-fun m!1082397 () Bool)

(assert (=> b!1174415 m!1082397))

(declare-fun m!1082399 () Bool)

(assert (=> b!1174415 m!1082399))

(check-sat (not b!1174409) (not b!1174426) (not b!1174410) (not b_lambda!20179) (not b!1174424) (not b_next!25017) (not start!99474) (not b!1174417) (not b!1174419) (not mapNonEmpty!46148) (not b!1174413) (not b!1174412) (not b!1174407) (not b!1174418) b_and!40917 (not b!1174415) tp_is_empty!29547 (not b!1174420))
(check-sat b_and!40917 (not b_next!25017))
