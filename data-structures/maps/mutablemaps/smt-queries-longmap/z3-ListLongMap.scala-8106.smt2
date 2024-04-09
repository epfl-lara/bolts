; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99540 () Bool)

(assert start!99540)

(declare-fun b_free!25083 () Bool)

(declare-fun b_next!25083 () Bool)

(assert (=> start!99540 (= b_free!25083 (not b_next!25083))))

(declare-fun tp!87963 () Bool)

(declare-fun b_and!41047 () Bool)

(assert (=> start!99540 (= tp!87963 b_and!41047)))

(declare-fun b!1176476 () Bool)

(declare-fun res!781501 () Bool)

(declare-fun e!668807 () Bool)

(assert (=> b!1176476 (=> (not res!781501) (not e!668807))))

(declare-datatypes ((array!76002 0))(
  ( (array!76003 (arr!36647 (Array (_ BitVec 32) (_ BitVec 64))) (size!37184 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76002)

(declare-datatypes ((List!25891 0))(
  ( (Nil!25888) (Cons!25887 (h!27096 (_ BitVec 64)) (t!37973 List!25891)) )
))
(declare-fun arrayNoDuplicates!0 (array!76002 (_ BitVec 32) List!25891) Bool)

(assert (=> b!1176476 (= res!781501 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25888))))

(declare-fun b!1176477 () Bool)

(declare-fun e!668798 () Bool)

(declare-fun e!668805 () Bool)

(assert (=> b!1176477 (= e!668798 e!668805)))

(declare-fun res!781500 () Bool)

(assert (=> b!1176477 (=> res!781500 e!668805)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176477 (= res!781500 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44611 0))(
  ( (V!44612 (val!14863 Int)) )
))
(declare-fun zeroValue!944 () V!44611)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19124 0))(
  ( (tuple2!19125 (_1!9572 (_ BitVec 64)) (_2!9572 V!44611)) )
))
(declare-datatypes ((List!25892 0))(
  ( (Nil!25889) (Cons!25888 (h!27097 tuple2!19124) (t!37974 List!25892)) )
))
(declare-datatypes ((ListLongMap!17105 0))(
  ( (ListLongMap!17106 (toList!8568 List!25892)) )
))
(declare-fun lt!530994 () ListLongMap!17105)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14097 0))(
  ( (ValueCellFull!14097 (v!17502 V!44611)) (EmptyCell!14097) )
))
(declare-datatypes ((array!76004 0))(
  ( (array!76005 (arr!36648 (Array (_ BitVec 32) ValueCell!14097)) (size!37185 (_ BitVec 32))) )
))
(declare-fun lt!530988 () array!76004)

(declare-fun lt!530981 () array!76002)

(declare-fun minValue!944 () V!44611)

(declare-fun getCurrentListMapNoExtraKeys!4999 (array!76002 array!76004 (_ BitVec 32) (_ BitVec 32) V!44611 V!44611 (_ BitVec 32) Int) ListLongMap!17105)

(assert (=> b!1176477 (= lt!530994 (getCurrentListMapNoExtraKeys!4999 lt!530981 lt!530988 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76004)

(declare-fun lt!530992 () V!44611)

(assert (=> b!1176477 (= lt!530988 (array!76005 (store (arr!36648 _values!996) i!673 (ValueCellFull!14097 lt!530992)) (size!37185 _values!996)))))

(declare-fun dynLambda!2976 (Int (_ BitVec 64)) V!44611)

(assert (=> b!1176477 (= lt!530992 (dynLambda!2976 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530989 () ListLongMap!17105)

(assert (=> b!1176477 (= lt!530989 (getCurrentListMapNoExtraKeys!4999 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176478 () Bool)

(declare-fun e!668799 () Bool)

(declare-fun e!668806 () Bool)

(assert (=> b!1176478 (= e!668799 e!668806)))

(declare-fun res!781507 () Bool)

(assert (=> b!1176478 (=> res!781507 e!668806)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1176478 (= res!781507 (not (= (select (arr!36647 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!530991 () ListLongMap!17105)

(declare-fun lt!530982 () tuple2!19124)

(declare-fun e!668802 () Bool)

(declare-fun b!1176479 () Bool)

(declare-fun +!3791 (ListLongMap!17105 tuple2!19124) ListLongMap!17105)

(assert (=> b!1176479 (= e!668802 (= lt!530989 (+!3791 lt!530991 lt!530982)))))

(declare-fun b!1176480 () Bool)

(declare-fun res!781508 () Bool)

(assert (=> b!1176480 (=> (not res!781508) (not e!668807))))

(assert (=> b!1176480 (= res!781508 (= (select (arr!36647 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!46247 () Bool)

(declare-fun mapRes!46247 () Bool)

(declare-fun tp!87964 () Bool)

(declare-fun e!668800 () Bool)

(assert (=> mapNonEmpty!46247 (= mapRes!46247 (and tp!87964 e!668800))))

(declare-fun mapKey!46247 () (_ BitVec 32))

(declare-fun mapValue!46247 () ValueCell!14097)

(declare-fun mapRest!46247 () (Array (_ BitVec 32) ValueCell!14097))

(assert (=> mapNonEmpty!46247 (= (arr!36648 _values!996) (store mapRest!46247 mapKey!46247 mapValue!46247))))

(declare-fun b!1176481 () Bool)

(declare-fun res!781497 () Bool)

(declare-fun e!668797 () Bool)

(assert (=> b!1176481 (=> (not res!781497) (not e!668797))))

(assert (=> b!1176481 (= res!781497 (arrayNoDuplicates!0 lt!530981 #b00000000000000000000000000000000 Nil!25888))))

(declare-fun b!1176482 () Bool)

(declare-fun tp_is_empty!29613 () Bool)

(assert (=> b!1176482 (= e!668800 tp_is_empty!29613)))

(declare-fun res!781509 () Bool)

(assert (=> start!99540 (=> (not res!781509) (not e!668807))))

(assert (=> start!99540 (= res!781509 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37184 _keys!1208))))))

(assert (=> start!99540 e!668807))

(assert (=> start!99540 tp_is_empty!29613))

(declare-fun array_inv!27874 (array!76002) Bool)

(assert (=> start!99540 (array_inv!27874 _keys!1208)))

(assert (=> start!99540 true))

(assert (=> start!99540 tp!87963))

(declare-fun e!668804 () Bool)

(declare-fun array_inv!27875 (array!76004) Bool)

(assert (=> start!99540 (and (array_inv!27875 _values!996) e!668804)))

(declare-fun b!1176483 () Bool)

(declare-fun res!781503 () Bool)

(assert (=> b!1176483 (=> (not res!781503) (not e!668807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176483 (= res!781503 (validMask!0 mask!1564))))

(declare-fun b!1176484 () Bool)

(declare-fun e!668809 () Bool)

(assert (=> b!1176484 (= e!668804 (and e!668809 mapRes!46247))))

(declare-fun condMapEmpty!46247 () Bool)

(declare-fun mapDefault!46247 () ValueCell!14097)

(assert (=> b!1176484 (= condMapEmpty!46247 (= (arr!36648 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14097)) mapDefault!46247)))))

(declare-fun b!1176485 () Bool)

(declare-fun e!668801 () Bool)

(assert (=> b!1176485 (= e!668801 true)))

(assert (=> b!1176485 e!668802))

(declare-fun res!781499 () Bool)

(assert (=> b!1176485 (=> (not res!781499) (not e!668802))))

(assert (=> b!1176485 (= res!781499 (not (= (select (arr!36647 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38768 0))(
  ( (Unit!38769) )
))
(declare-fun lt!530986 () Unit!38768)

(declare-fun e!668803 () Unit!38768)

(assert (=> b!1176485 (= lt!530986 e!668803)))

(declare-fun c!116696 () Bool)

(assert (=> b!1176485 (= c!116696 (= (select (arr!36647 _keys!1208) from!1455) k0!934))))

(assert (=> b!1176485 e!668799))

(declare-fun res!781505 () Bool)

(assert (=> b!1176485 (=> (not res!781505) (not e!668799))))

(declare-fun lt!530983 () ListLongMap!17105)

(assert (=> b!1176485 (= res!781505 (= lt!530994 (+!3791 lt!530983 lt!530982)))))

(declare-fun get!18752 (ValueCell!14097 V!44611) V!44611)

(assert (=> b!1176485 (= lt!530982 (tuple2!19125 (select (arr!36647 _keys!1208) from!1455) (get!18752 (select (arr!36648 _values!996) from!1455) lt!530992)))))

(declare-fun b!1176486 () Bool)

(declare-fun res!781498 () Bool)

(assert (=> b!1176486 (=> (not res!781498) (not e!668807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176486 (= res!781498 (validKeyInArray!0 k0!934))))

(declare-fun b!1176487 () Bool)

(declare-fun res!781496 () Bool)

(assert (=> b!1176487 (=> (not res!781496) (not e!668807))))

(assert (=> b!1176487 (= res!781496 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37184 _keys!1208))))))

(declare-fun b!1176488 () Bool)

(declare-fun arrayContainsKey!0 (array!76002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176488 (= e!668806 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176489 () Bool)

(declare-fun Unit!38770 () Unit!38768)

(assert (=> b!1176489 (= e!668803 Unit!38770)))

(declare-fun b!1176490 () Bool)

(declare-fun res!781495 () Bool)

(assert (=> b!1176490 (=> (not res!781495) (not e!668807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76002 (_ BitVec 32)) Bool)

(assert (=> b!1176490 (= res!781495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46247 () Bool)

(assert (=> mapIsEmpty!46247 mapRes!46247))

(declare-fun b!1176491 () Bool)

(assert (=> b!1176491 (= e!668797 (not e!668798))))

(declare-fun res!781504 () Bool)

(assert (=> b!1176491 (=> res!781504 e!668798)))

(assert (=> b!1176491 (= res!781504 (bvsgt from!1455 i!673))))

(assert (=> b!1176491 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530990 () Unit!38768)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76002 (_ BitVec 64) (_ BitVec 32)) Unit!38768)

(assert (=> b!1176491 (= lt!530990 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176492 () Bool)

(assert (=> b!1176492 (= e!668807 e!668797)))

(declare-fun res!781502 () Bool)

(assert (=> b!1176492 (=> (not res!781502) (not e!668797))))

(assert (=> b!1176492 (= res!781502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530981 mask!1564))))

(assert (=> b!1176492 (= lt!530981 (array!76003 (store (arr!36647 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37184 _keys!1208)))))

(declare-fun b!1176493 () Bool)

(assert (=> b!1176493 (= e!668809 tp_is_empty!29613)))

(declare-fun b!1176494 () Bool)

(declare-fun Unit!38771 () Unit!38768)

(assert (=> b!1176494 (= e!668803 Unit!38771)))

(declare-fun lt!530987 () Unit!38768)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76002 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38768)

(assert (=> b!1176494 (= lt!530987 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176494 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530993 () Unit!38768)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76002 (_ BitVec 32) (_ BitVec 32)) Unit!38768)

(assert (=> b!1176494 (= lt!530993 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176494 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25888)))

(declare-fun lt!530984 () Unit!38768)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76002 (_ BitVec 64) (_ BitVec 32) List!25891) Unit!38768)

(assert (=> b!1176494 (= lt!530984 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25888))))

(assert (=> b!1176494 false))

(declare-fun b!1176495 () Bool)

(declare-fun res!781510 () Bool)

(assert (=> b!1176495 (=> (not res!781510) (not e!668807))))

(assert (=> b!1176495 (= res!781510 (and (= (size!37185 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37184 _keys!1208) (size!37185 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176496 () Bool)

(assert (=> b!1176496 (= e!668805 e!668801)))

(declare-fun res!781506 () Bool)

(assert (=> b!1176496 (=> res!781506 e!668801)))

(assert (=> b!1176496 (= res!781506 (not (validKeyInArray!0 (select (arr!36647 _keys!1208) from!1455))))))

(declare-fun lt!530985 () ListLongMap!17105)

(assert (=> b!1176496 (= lt!530985 lt!530983)))

(declare-fun -!1572 (ListLongMap!17105 (_ BitVec 64)) ListLongMap!17105)

(assert (=> b!1176496 (= lt!530983 (-!1572 lt!530991 k0!934))))

(assert (=> b!1176496 (= lt!530985 (getCurrentListMapNoExtraKeys!4999 lt!530981 lt!530988 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176496 (= lt!530991 (getCurrentListMapNoExtraKeys!4999 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530980 () Unit!38768)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!796 (array!76002 array!76004 (_ BitVec 32) (_ BitVec 32) V!44611 V!44611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38768)

(assert (=> b!1176496 (= lt!530980 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!796 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99540 res!781509) b!1176483))

(assert (= (and b!1176483 res!781503) b!1176495))

(assert (= (and b!1176495 res!781510) b!1176490))

(assert (= (and b!1176490 res!781495) b!1176476))

(assert (= (and b!1176476 res!781501) b!1176487))

(assert (= (and b!1176487 res!781496) b!1176486))

(assert (= (and b!1176486 res!781498) b!1176480))

(assert (= (and b!1176480 res!781508) b!1176492))

(assert (= (and b!1176492 res!781502) b!1176481))

(assert (= (and b!1176481 res!781497) b!1176491))

(assert (= (and b!1176491 (not res!781504)) b!1176477))

(assert (= (and b!1176477 (not res!781500)) b!1176496))

(assert (= (and b!1176496 (not res!781506)) b!1176485))

(assert (= (and b!1176485 res!781505) b!1176478))

(assert (= (and b!1176478 (not res!781507)) b!1176488))

(assert (= (and b!1176485 c!116696) b!1176494))

(assert (= (and b!1176485 (not c!116696)) b!1176489))

(assert (= (and b!1176485 res!781499) b!1176479))

(assert (= (and b!1176484 condMapEmpty!46247) mapIsEmpty!46247))

(assert (= (and b!1176484 (not condMapEmpty!46247)) mapNonEmpty!46247))

(get-info :version)

(assert (= (and mapNonEmpty!46247 ((_ is ValueCellFull!14097) mapValue!46247)) b!1176482))

(assert (= (and b!1176484 ((_ is ValueCellFull!14097) mapDefault!46247)) b!1176493))

(assert (= start!99540 b!1176484))

(declare-fun b_lambda!20245 () Bool)

(assert (=> (not b_lambda!20245) (not b!1176477)))

(declare-fun t!37972 () Bool)

(declare-fun tb!9903 () Bool)

(assert (=> (and start!99540 (= defaultEntry!1004 defaultEntry!1004) t!37972) tb!9903))

(declare-fun result!20365 () Bool)

(assert (=> tb!9903 (= result!20365 tp_is_empty!29613)))

(assert (=> b!1176477 t!37972))

(declare-fun b_and!41049 () Bool)

(assert (= b_and!41047 (and (=> t!37972 result!20365) b_and!41049)))

(declare-fun m!1084463 () Bool)

(assert (=> b!1176494 m!1084463))

(declare-fun m!1084465 () Bool)

(assert (=> b!1176494 m!1084465))

(declare-fun m!1084467 () Bool)

(assert (=> b!1176494 m!1084467))

(declare-fun m!1084469 () Bool)

(assert (=> b!1176494 m!1084469))

(declare-fun m!1084471 () Bool)

(assert (=> b!1176494 m!1084471))

(declare-fun m!1084473 () Bool)

(assert (=> b!1176481 m!1084473))

(declare-fun m!1084475 () Bool)

(assert (=> b!1176486 m!1084475))

(declare-fun m!1084477 () Bool)

(assert (=> b!1176480 m!1084477))

(declare-fun m!1084479 () Bool)

(assert (=> b!1176485 m!1084479))

(declare-fun m!1084481 () Bool)

(assert (=> b!1176485 m!1084481))

(declare-fun m!1084483 () Bool)

(assert (=> b!1176485 m!1084483))

(assert (=> b!1176485 m!1084483))

(declare-fun m!1084485 () Bool)

(assert (=> b!1176485 m!1084485))

(declare-fun m!1084487 () Bool)

(assert (=> b!1176492 m!1084487))

(declare-fun m!1084489 () Bool)

(assert (=> b!1176492 m!1084489))

(declare-fun m!1084491 () Bool)

(assert (=> b!1176479 m!1084491))

(declare-fun m!1084493 () Bool)

(assert (=> start!99540 m!1084493))

(declare-fun m!1084495 () Bool)

(assert (=> start!99540 m!1084495))

(declare-fun m!1084497 () Bool)

(assert (=> b!1176491 m!1084497))

(declare-fun m!1084499 () Bool)

(assert (=> b!1176491 m!1084499))

(declare-fun m!1084501 () Bool)

(assert (=> b!1176496 m!1084501))

(declare-fun m!1084503 () Bool)

(assert (=> b!1176496 m!1084503))

(declare-fun m!1084505 () Bool)

(assert (=> b!1176496 m!1084505))

(assert (=> b!1176496 m!1084479))

(declare-fun m!1084507 () Bool)

(assert (=> b!1176496 m!1084507))

(declare-fun m!1084509 () Bool)

(assert (=> b!1176496 m!1084509))

(assert (=> b!1176496 m!1084479))

(assert (=> b!1176478 m!1084479))

(declare-fun m!1084511 () Bool)

(assert (=> b!1176476 m!1084511))

(declare-fun m!1084513 () Bool)

(assert (=> mapNonEmpty!46247 m!1084513))

(declare-fun m!1084515 () Bool)

(assert (=> b!1176477 m!1084515))

(declare-fun m!1084517 () Bool)

(assert (=> b!1176477 m!1084517))

(declare-fun m!1084519 () Bool)

(assert (=> b!1176477 m!1084519))

(declare-fun m!1084521 () Bool)

(assert (=> b!1176477 m!1084521))

(declare-fun m!1084523 () Bool)

(assert (=> b!1176483 m!1084523))

(declare-fun m!1084525 () Bool)

(assert (=> b!1176490 m!1084525))

(declare-fun m!1084527 () Bool)

(assert (=> b!1176488 m!1084527))

(check-sat (not b!1176491) (not b_next!25083) (not b!1176492) (not b!1176476) (not b!1176490) (not b!1176496) b_and!41049 (not b_lambda!20245) (not b!1176483) (not b!1176486) (not b!1176479) tp_is_empty!29613 (not b!1176485) (not mapNonEmpty!46247) (not b!1176477) (not b!1176481) (not b!1176488) (not b!1176494) (not start!99540))
(check-sat b_and!41049 (not b_next!25083))
