; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101768 () Bool)

(assert start!101768)

(declare-fun b_free!26421 () Bool)

(declare-fun b_next!26421 () Bool)

(assert (=> start!101768 (= b_free!26421 (not b_next!26421))))

(declare-fun tp!92310 () Bool)

(declare-fun b_and!44113 () Bool)

(assert (=> start!101768 (= tp!92310 b_and!44113)))

(declare-fun b!1224429 () Bool)

(declare-fun res!813729 () Bool)

(declare-fun e!695465 () Bool)

(assert (=> b!1224429 (=> (not res!813729) (not e!695465))))

(declare-datatypes ((array!79008 0))(
  ( (array!79009 (arr!38127 (Array (_ BitVec 32) (_ BitVec 64))) (size!38664 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79008)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1224429 (= res!813729 (= (select (arr!38127 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!48586 () Bool)

(declare-fun mapRes!48586 () Bool)

(declare-fun tp!92309 () Bool)

(declare-fun e!695464 () Bool)

(assert (=> mapNonEmpty!48586 (= mapRes!48586 (and tp!92309 e!695464))))

(declare-datatypes ((V!46627 0))(
  ( (V!46628 (val!15619 Int)) )
))
(declare-datatypes ((ValueCell!14853 0))(
  ( (ValueCellFull!14853 (v!18282 V!46627)) (EmptyCell!14853) )
))
(declare-fun mapValue!48586 () ValueCell!14853)

(declare-fun mapRest!48586 () (Array (_ BitVec 32) ValueCell!14853))

(declare-fun mapKey!48586 () (_ BitVec 32))

(declare-datatypes ((array!79010 0))(
  ( (array!79011 (arr!38128 (Array (_ BitVec 32) ValueCell!14853)) (size!38665 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79010)

(assert (=> mapNonEmpty!48586 (= (arr!38128 _values!996) (store mapRest!48586 mapKey!48586 mapValue!48586))))

(declare-fun b!1224430 () Bool)

(declare-fun e!695461 () Bool)

(assert (=> b!1224430 (= e!695461 true)))

(declare-fun e!695459 () Bool)

(assert (=> b!1224430 e!695459))

(declare-fun res!813725 () Bool)

(assert (=> b!1224430 (=> (not res!813725) (not e!695459))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1224430 (= res!813725 (not (= (select (arr!38127 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!40501 0))(
  ( (Unit!40502) )
))
(declare-fun lt!557502 () Unit!40501)

(declare-fun e!695460 () Unit!40501)

(assert (=> b!1224430 (= lt!557502 e!695460)))

(declare-fun c!120396 () Bool)

(assert (=> b!1224430 (= c!120396 (= (select (arr!38127 _keys!1208) from!1455) k0!934))))

(declare-fun e!695467 () Bool)

(assert (=> b!1224430 e!695467))

(declare-fun res!813720 () Bool)

(assert (=> b!1224430 (=> (not res!813720) (not e!695467))))

(declare-datatypes ((tuple2!20276 0))(
  ( (tuple2!20277 (_1!10148 (_ BitVec 64)) (_2!10148 V!46627)) )
))
(declare-fun lt!557514 () tuple2!20276)

(declare-datatypes ((List!27087 0))(
  ( (Nil!27084) (Cons!27083 (h!28292 tuple2!20276) (t!40495 List!27087)) )
))
(declare-datatypes ((ListLongMap!18257 0))(
  ( (ListLongMap!18258 (toList!9144 List!27087)) )
))
(declare-fun lt!557508 () ListLongMap!18257)

(declare-fun lt!557512 () ListLongMap!18257)

(declare-fun +!4106 (ListLongMap!18257 tuple2!20276) ListLongMap!18257)

(assert (=> b!1224430 (= res!813720 (= lt!557508 (+!4106 lt!557512 lt!557514)))))

(declare-fun lt!557505 () V!46627)

(declare-fun get!19518 (ValueCell!14853 V!46627) V!46627)

(assert (=> b!1224430 (= lt!557514 (tuple2!20277 (select (arr!38127 _keys!1208) from!1455) (get!19518 (select (arr!38128 _values!996) from!1455) lt!557505)))))

(declare-fun b!1224431 () Bool)

(declare-fun res!813730 () Bool)

(assert (=> b!1224431 (=> (not res!813730) (not e!695465))))

(declare-datatypes ((List!27088 0))(
  ( (Nil!27085) (Cons!27084 (h!28293 (_ BitVec 64)) (t!40496 List!27088)) )
))
(declare-fun arrayNoDuplicates!0 (array!79008 (_ BitVec 32) List!27088) Bool)

(assert (=> b!1224431 (= res!813730 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27085))))

(declare-fun b!1224432 () Bool)

(declare-fun Unit!40503 () Unit!40501)

(assert (=> b!1224432 (= e!695460 Unit!40503)))

(declare-fun lt!557511 () Unit!40501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79008 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40501)

(assert (=> b!1224432 (= lt!557511 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!79008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224432 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557509 () Unit!40501)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79008 (_ BitVec 32) (_ BitVec 32)) Unit!40501)

(assert (=> b!1224432 (= lt!557509 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224432 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27085)))

(declare-fun lt!557510 () Unit!40501)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79008 (_ BitVec 64) (_ BitVec 32) List!27088) Unit!40501)

(assert (=> b!1224432 (= lt!557510 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27085))))

(assert (=> b!1224432 false))

(declare-fun b!1224433 () Bool)

(declare-fun e!695463 () Bool)

(assert (=> b!1224433 (= e!695465 e!695463)))

(declare-fun res!813727 () Bool)

(assert (=> b!1224433 (=> (not res!813727) (not e!695463))))

(declare-fun lt!557507 () array!79008)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79008 (_ BitVec 32)) Bool)

(assert (=> b!1224433 (= res!813727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557507 mask!1564))))

(assert (=> b!1224433 (= lt!557507 (array!79009 (store (arr!38127 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38664 _keys!1208)))))

(declare-fun b!1224434 () Bool)

(declare-fun e!695458 () Bool)

(assert (=> b!1224434 (= e!695458 e!695461)))

(declare-fun res!813726 () Bool)

(assert (=> b!1224434 (=> res!813726 e!695461)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224434 (= res!813726 (not (validKeyInArray!0 (select (arr!38127 _keys!1208) from!1455))))))

(declare-fun lt!557503 () ListLongMap!18257)

(assert (=> b!1224434 (= lt!557503 lt!557512)))

(declare-fun lt!557504 () ListLongMap!18257)

(declare-fun -!1980 (ListLongMap!18257 (_ BitVec 64)) ListLongMap!18257)

(assert (=> b!1224434 (= lt!557512 (-!1980 lt!557504 k0!934))))

(declare-fun zeroValue!944 () V!46627)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!557513 () array!79010)

(declare-fun minValue!944 () V!46627)

(declare-fun getCurrentListMapNoExtraKeys!5541 (array!79008 array!79010 (_ BitVec 32) (_ BitVec 32) V!46627 V!46627 (_ BitVec 32) Int) ListLongMap!18257)

(assert (=> b!1224434 (= lt!557503 (getCurrentListMapNoExtraKeys!5541 lt!557507 lt!557513 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224434 (= lt!557504 (getCurrentListMapNoExtraKeys!5541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557506 () Unit!40501)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1182 (array!79008 array!79010 (_ BitVec 32) (_ BitVec 32) V!46627 V!46627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40501)

(assert (=> b!1224434 (= lt!557506 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1182 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224435 () Bool)

(declare-fun res!813718 () Bool)

(assert (=> b!1224435 (=> (not res!813718) (not e!695463))))

(assert (=> b!1224435 (= res!813718 (arrayNoDuplicates!0 lt!557507 #b00000000000000000000000000000000 Nil!27085))))

(declare-fun b!1224436 () Bool)

(declare-fun res!813732 () Bool)

(assert (=> b!1224436 (=> (not res!813732) (not e!695465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224436 (= res!813732 (validMask!0 mask!1564))))

(declare-fun b!1224437 () Bool)

(declare-fun res!813724 () Bool)

(assert (=> b!1224437 (=> (not res!813724) (not e!695465))))

(assert (=> b!1224437 (= res!813724 (and (= (size!38665 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38664 _keys!1208) (size!38665 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224439 () Bool)

(declare-fun tp_is_empty!31125 () Bool)

(assert (=> b!1224439 (= e!695464 tp_is_empty!31125)))

(declare-fun b!1224440 () Bool)

(declare-fun e!695457 () Bool)

(assert (=> b!1224440 (= e!695457 tp_is_empty!31125)))

(declare-fun b!1224441 () Bool)

(assert (=> b!1224441 (= e!695459 (= lt!557512 lt!557503))))

(declare-fun b!1224442 () Bool)

(declare-fun res!813722 () Bool)

(assert (=> b!1224442 (=> (not res!813722) (not e!695465))))

(assert (=> b!1224442 (= res!813722 (validKeyInArray!0 k0!934))))

(declare-fun b!1224443 () Bool)

(declare-fun res!813731 () Bool)

(assert (=> b!1224443 (=> (not res!813731) (not e!695465))))

(assert (=> b!1224443 (= res!813731 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38664 _keys!1208))))))

(declare-fun b!1224444 () Bool)

(declare-fun Unit!40504 () Unit!40501)

(assert (=> b!1224444 (= e!695460 Unit!40504)))

(declare-fun mapIsEmpty!48586 () Bool)

(assert (=> mapIsEmpty!48586 mapRes!48586))

(declare-fun b!1224445 () Bool)

(declare-fun res!813721 () Bool)

(assert (=> b!1224445 (=> (not res!813721) (not e!695459))))

(declare-fun lt!557501 () ListLongMap!18257)

(assert (=> b!1224445 (= res!813721 (= lt!557501 (+!4106 lt!557504 lt!557514)))))

(declare-fun b!1224446 () Bool)

(declare-fun res!813728 () Bool)

(assert (=> b!1224446 (=> (not res!813728) (not e!695465))))

(assert (=> b!1224446 (= res!813728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224447 () Bool)

(declare-fun e!695468 () Bool)

(assert (=> b!1224447 (= e!695463 (not e!695468))))

(declare-fun res!813717 () Bool)

(assert (=> b!1224447 (=> res!813717 e!695468)))

(assert (=> b!1224447 (= res!813717 (bvsgt from!1455 i!673))))

(assert (=> b!1224447 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!557515 () Unit!40501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79008 (_ BitVec 64) (_ BitVec 32)) Unit!40501)

(assert (=> b!1224447 (= lt!557515 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224448 () Bool)

(declare-fun e!695462 () Bool)

(assert (=> b!1224448 (= e!695467 e!695462)))

(declare-fun res!813716 () Bool)

(assert (=> b!1224448 (=> res!813716 e!695462)))

(assert (=> b!1224448 (= res!813716 (not (= (select (arr!38127 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1224438 () Bool)

(assert (=> b!1224438 (= e!695468 e!695458)))

(declare-fun res!813723 () Bool)

(assert (=> b!1224438 (=> res!813723 e!695458)))

(assert (=> b!1224438 (= res!813723 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1224438 (= lt!557508 (getCurrentListMapNoExtraKeys!5541 lt!557507 lt!557513 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224438 (= lt!557513 (array!79011 (store (arr!38128 _values!996) i!673 (ValueCellFull!14853 lt!557505)) (size!38665 _values!996)))))

(declare-fun dynLambda!3436 (Int (_ BitVec 64)) V!46627)

(assert (=> b!1224438 (= lt!557505 (dynLambda!3436 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1224438 (= lt!557501 (getCurrentListMapNoExtraKeys!5541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!813719 () Bool)

(assert (=> start!101768 (=> (not res!813719) (not e!695465))))

(assert (=> start!101768 (= res!813719 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38664 _keys!1208))))))

(assert (=> start!101768 e!695465))

(assert (=> start!101768 tp_is_empty!31125))

(declare-fun array_inv!28920 (array!79008) Bool)

(assert (=> start!101768 (array_inv!28920 _keys!1208)))

(assert (=> start!101768 true))

(assert (=> start!101768 tp!92310))

(declare-fun e!695466 () Bool)

(declare-fun array_inv!28921 (array!79010) Bool)

(assert (=> start!101768 (and (array_inv!28921 _values!996) e!695466)))

(declare-fun b!1224449 () Bool)

(assert (=> b!1224449 (= e!695466 (and e!695457 mapRes!48586))))

(declare-fun condMapEmpty!48586 () Bool)

(declare-fun mapDefault!48586 () ValueCell!14853)

(assert (=> b!1224449 (= condMapEmpty!48586 (= (arr!38128 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14853)) mapDefault!48586)))))

(declare-fun b!1224450 () Bool)

(assert (=> b!1224450 (= e!695462 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101768 res!813719) b!1224436))

(assert (= (and b!1224436 res!813732) b!1224437))

(assert (= (and b!1224437 res!813724) b!1224446))

(assert (= (and b!1224446 res!813728) b!1224431))

(assert (= (and b!1224431 res!813730) b!1224443))

(assert (= (and b!1224443 res!813731) b!1224442))

(assert (= (and b!1224442 res!813722) b!1224429))

(assert (= (and b!1224429 res!813729) b!1224433))

(assert (= (and b!1224433 res!813727) b!1224435))

(assert (= (and b!1224435 res!813718) b!1224447))

(assert (= (and b!1224447 (not res!813717)) b!1224438))

(assert (= (and b!1224438 (not res!813723)) b!1224434))

(assert (= (and b!1224434 (not res!813726)) b!1224430))

(assert (= (and b!1224430 res!813720) b!1224448))

(assert (= (and b!1224448 (not res!813716)) b!1224450))

(assert (= (and b!1224430 c!120396) b!1224432))

(assert (= (and b!1224430 (not c!120396)) b!1224444))

(assert (= (and b!1224430 res!813725) b!1224445))

(assert (= (and b!1224445 res!813721) b!1224441))

(assert (= (and b!1224449 condMapEmpty!48586) mapIsEmpty!48586))

(assert (= (and b!1224449 (not condMapEmpty!48586)) mapNonEmpty!48586))

(get-info :version)

(assert (= (and mapNonEmpty!48586 ((_ is ValueCellFull!14853) mapValue!48586)) b!1224439))

(assert (= (and b!1224449 ((_ is ValueCellFull!14853) mapDefault!48586)) b!1224440))

(assert (= start!101768 b!1224449))

(declare-fun b_lambda!22411 () Bool)

(assert (=> (not b_lambda!22411) (not b!1224438)))

(declare-fun t!40494 () Bool)

(declare-fun tb!11229 () Bool)

(assert (=> (and start!101768 (= defaultEntry!1004 defaultEntry!1004) t!40494) tb!11229))

(declare-fun result!23063 () Bool)

(assert (=> tb!11229 (= result!23063 tp_is_empty!31125)))

(assert (=> b!1224438 t!40494))

(declare-fun b_and!44115 () Bool)

(assert (= b_and!44113 (and (=> t!40494 result!23063) b_and!44115)))

(declare-fun m!1129471 () Bool)

(assert (=> b!1224434 m!1129471))

(declare-fun m!1129473 () Bool)

(assert (=> b!1224434 m!1129473))

(declare-fun m!1129475 () Bool)

(assert (=> b!1224434 m!1129475))

(declare-fun m!1129477 () Bool)

(assert (=> b!1224434 m!1129477))

(assert (=> b!1224434 m!1129475))

(declare-fun m!1129479 () Bool)

(assert (=> b!1224434 m!1129479))

(declare-fun m!1129481 () Bool)

(assert (=> b!1224434 m!1129481))

(declare-fun m!1129483 () Bool)

(assert (=> b!1224432 m!1129483))

(declare-fun m!1129485 () Bool)

(assert (=> b!1224432 m!1129485))

(declare-fun m!1129487 () Bool)

(assert (=> b!1224432 m!1129487))

(declare-fun m!1129489 () Bool)

(assert (=> b!1224432 m!1129489))

(declare-fun m!1129491 () Bool)

(assert (=> b!1224432 m!1129491))

(declare-fun m!1129493 () Bool)

(assert (=> b!1224435 m!1129493))

(assert (=> b!1224430 m!1129475))

(declare-fun m!1129495 () Bool)

(assert (=> b!1224430 m!1129495))

(declare-fun m!1129497 () Bool)

(assert (=> b!1224430 m!1129497))

(assert (=> b!1224430 m!1129497))

(declare-fun m!1129499 () Bool)

(assert (=> b!1224430 m!1129499))

(declare-fun m!1129501 () Bool)

(assert (=> b!1224429 m!1129501))

(assert (=> b!1224448 m!1129475))

(declare-fun m!1129503 () Bool)

(assert (=> b!1224450 m!1129503))

(declare-fun m!1129505 () Bool)

(assert (=> b!1224433 m!1129505))

(declare-fun m!1129507 () Bool)

(assert (=> b!1224433 m!1129507))

(declare-fun m!1129509 () Bool)

(assert (=> mapNonEmpty!48586 m!1129509))

(declare-fun m!1129511 () Bool)

(assert (=> b!1224431 m!1129511))

(declare-fun m!1129513 () Bool)

(assert (=> b!1224438 m!1129513))

(declare-fun m!1129515 () Bool)

(assert (=> b!1224438 m!1129515))

(declare-fun m!1129517 () Bool)

(assert (=> b!1224438 m!1129517))

(declare-fun m!1129519 () Bool)

(assert (=> b!1224438 m!1129519))

(declare-fun m!1129521 () Bool)

(assert (=> b!1224445 m!1129521))

(declare-fun m!1129523 () Bool)

(assert (=> start!101768 m!1129523))

(declare-fun m!1129525 () Bool)

(assert (=> start!101768 m!1129525))

(declare-fun m!1129527 () Bool)

(assert (=> b!1224436 m!1129527))

(declare-fun m!1129529 () Bool)

(assert (=> b!1224446 m!1129529))

(declare-fun m!1129531 () Bool)

(assert (=> b!1224447 m!1129531))

(declare-fun m!1129533 () Bool)

(assert (=> b!1224447 m!1129533))

(declare-fun m!1129535 () Bool)

(assert (=> b!1224442 m!1129535))

(check-sat (not b_lambda!22411) (not b!1224442) tp_is_empty!31125 (not b!1224430) b_and!44115 (not b!1224432) (not b_next!26421) (not mapNonEmpty!48586) (not start!101768) (not b!1224431) (not b!1224436) (not b!1224434) (not b!1224435) (not b!1224438) (not b!1224433) (not b!1224446) (not b!1224445) (not b!1224450) (not b!1224447))
(check-sat b_and!44115 (not b_next!26421))
