; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99414 () Bool)

(assert start!99414)

(declare-fun b_free!24957 () Bool)

(declare-fun b_next!24957 () Bool)

(assert (=> start!99414 (= b_free!24957 (not b_next!24957))))

(declare-fun tp!87585 () Bool)

(declare-fun b_and!40795 () Bool)

(assert (=> start!99414 (= tp!87585 b_and!40795)))

(declare-fun b!1172539 () Bool)

(declare-fun res!778626 () Bool)

(declare-fun e!666513 () Bool)

(assert (=> b!1172539 (=> (not res!778626) (not e!666513))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172539 (= res!778626 (validKeyInArray!0 k0!934))))

(declare-fun b!1172540 () Bool)

(declare-fun res!778639 () Bool)

(assert (=> b!1172540 (=> (not res!778639) (not e!666513))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75750 0))(
  ( (array!75751 (arr!36521 (Array (_ BitVec 32) (_ BitVec 64))) (size!37058 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75750)

(assert (=> b!1172540 (= res!778639 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37058 _keys!1208))))))

(declare-fun res!778629 () Bool)

(assert (=> start!99414 (=> (not res!778629) (not e!666513))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99414 (= res!778629 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37058 _keys!1208))))))

(assert (=> start!99414 e!666513))

(declare-fun tp_is_empty!29487 () Bool)

(assert (=> start!99414 tp_is_empty!29487))

(declare-fun array_inv!27790 (array!75750) Bool)

(assert (=> start!99414 (array_inv!27790 _keys!1208)))

(assert (=> start!99414 true))

(assert (=> start!99414 tp!87585))

(declare-datatypes ((V!44443 0))(
  ( (V!44444 (val!14800 Int)) )
))
(declare-datatypes ((ValueCell!14034 0))(
  ( (ValueCellFull!14034 (v!17439 V!44443)) (EmptyCell!14034) )
))
(declare-datatypes ((array!75752 0))(
  ( (array!75753 (arr!36522 (Array (_ BitVec 32) ValueCell!14034)) (size!37059 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75752)

(declare-fun e!666506 () Bool)

(declare-fun array_inv!27791 (array!75752) Bool)

(assert (=> start!99414 (and (array_inv!27791 _values!996) e!666506)))

(declare-fun b!1172541 () Bool)

(declare-fun res!778631 () Bool)

(declare-fun e!666508 () Bool)

(assert (=> b!1172541 (=> res!778631 e!666508)))

(declare-datatypes ((List!25779 0))(
  ( (Nil!25776) (Cons!25775 (h!26984 (_ BitVec 64)) (t!37735 List!25779)) )
))
(declare-fun contains!6878 (List!25779 (_ BitVec 64)) Bool)

(assert (=> b!1172541 (= res!778631 (contains!6878 Nil!25776 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172542 () Bool)

(declare-fun e!666503 () Bool)

(declare-fun e!666507 () Bool)

(assert (=> b!1172542 (= e!666503 (not e!666507))))

(declare-fun res!778630 () Bool)

(assert (=> b!1172542 (=> res!778630 e!666507)))

(assert (=> b!1172542 (= res!778630 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172542 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38564 0))(
  ( (Unit!38565) )
))
(declare-fun lt!528324 () Unit!38564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75750 (_ BitVec 64) (_ BitVec 32)) Unit!38564)

(assert (=> b!1172542 (= lt!528324 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172543 () Bool)

(declare-fun e!666502 () Bool)

(declare-fun e!666504 () Bool)

(assert (=> b!1172543 (= e!666502 e!666504)))

(declare-fun res!778635 () Bool)

(assert (=> b!1172543 (=> res!778635 e!666504)))

(assert (=> b!1172543 (= res!778635 (not (= (select (arr!36521 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1172544 () Bool)

(declare-fun res!778637 () Bool)

(assert (=> b!1172544 (=> (not res!778637) (not e!666513))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75750 (_ BitVec 32)) Bool)

(assert (=> b!1172544 (= res!778637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172545 () Bool)

(declare-fun e!666514 () Bool)

(assert (=> b!1172545 (= e!666514 e!666508)))

(declare-fun res!778622 () Bool)

(assert (=> b!1172545 (=> res!778622 e!666508)))

(assert (=> b!1172545 (= res!778622 (or (bvsge (size!37058 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37058 _keys!1208)) (bvsge from!1455 (size!37058 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!75750 (_ BitVec 32) List!25779) Bool)

(assert (=> b!1172545 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25776)))

(declare-fun lt!528316 () Unit!38564)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75750 (_ BitVec 32) (_ BitVec 32)) Unit!38564)

(assert (=> b!1172545 (= lt!528316 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172545 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528325 () Unit!38564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75750 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38564)

(assert (=> b!1172545 (= lt!528325 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1172546 () Bool)

(assert (=> b!1172546 (= e!666508 true)))

(declare-fun lt!528317 () Bool)

(assert (=> b!1172546 (= lt!528317 (contains!6878 Nil!25776 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172547 () Bool)

(assert (=> b!1172547 (= e!666513 e!666503)))

(declare-fun res!778621 () Bool)

(assert (=> b!1172547 (=> (not res!778621) (not e!666503))))

(declare-fun lt!528320 () array!75750)

(assert (=> b!1172547 (= res!778621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528320 mask!1564))))

(assert (=> b!1172547 (= lt!528320 (array!75751 (store (arr!36521 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37058 _keys!1208)))))

(declare-fun mapIsEmpty!46058 () Bool)

(declare-fun mapRes!46058 () Bool)

(assert (=> mapIsEmpty!46058 mapRes!46058))

(declare-fun b!1172548 () Bool)

(declare-fun res!778633 () Bool)

(assert (=> b!1172548 (=> (not res!778633) (not e!666513))))

(assert (=> b!1172548 (= res!778633 (= (select (arr!36521 _keys!1208) i!673) k0!934))))

(declare-fun b!1172549 () Bool)

(declare-fun e!666511 () Bool)

(assert (=> b!1172549 (= e!666506 (and e!666511 mapRes!46058))))

(declare-fun condMapEmpty!46058 () Bool)

(declare-fun mapDefault!46058 () ValueCell!14034)

(assert (=> b!1172549 (= condMapEmpty!46058 (= (arr!36522 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14034)) mapDefault!46058)))))

(declare-fun b!1172550 () Bool)

(declare-fun res!778636 () Bool)

(assert (=> b!1172550 (=> (not res!778636) (not e!666513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172550 (= res!778636 (validMask!0 mask!1564))))

(declare-fun b!1172551 () Bool)

(declare-fun e!666510 () Bool)

(assert (=> b!1172551 (= e!666507 e!666510)))

(declare-fun res!778634 () Bool)

(assert (=> b!1172551 (=> res!778634 e!666510)))

(assert (=> b!1172551 (= res!778634 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19006 0))(
  ( (tuple2!19007 (_1!9513 (_ BitVec 64)) (_2!9513 V!44443)) )
))
(declare-datatypes ((List!25780 0))(
  ( (Nil!25777) (Cons!25776 (h!26985 tuple2!19006) (t!37736 List!25780)) )
))
(declare-datatypes ((ListLongMap!16987 0))(
  ( (ListLongMap!16988 (toList!8509 List!25780)) )
))
(declare-fun lt!528322 () ListLongMap!16987)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44443)

(declare-fun lt!528315 () array!75752)

(declare-fun zeroValue!944 () V!44443)

(declare-fun getCurrentListMapNoExtraKeys!4941 (array!75750 array!75752 (_ BitVec 32) (_ BitVec 32) V!44443 V!44443 (_ BitVec 32) Int) ListLongMap!16987)

(assert (=> b!1172551 (= lt!528322 (getCurrentListMapNoExtraKeys!4941 lt!528320 lt!528315 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528323 () V!44443)

(assert (=> b!1172551 (= lt!528315 (array!75753 (store (arr!36522 _values!996) i!673 (ValueCellFull!14034 lt!528323)) (size!37059 _values!996)))))

(declare-fun dynLambda!2928 (Int (_ BitVec 64)) V!44443)

(assert (=> b!1172551 (= lt!528323 (dynLambda!2928 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528326 () ListLongMap!16987)

(assert (=> b!1172551 (= lt!528326 (getCurrentListMapNoExtraKeys!4941 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172552 () Bool)

(assert (=> b!1172552 (= e!666504 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!46058 () Bool)

(declare-fun tp!87586 () Bool)

(declare-fun e!666509 () Bool)

(assert (=> mapNonEmpty!46058 (= mapRes!46058 (and tp!87586 e!666509))))

(declare-fun mapKey!46058 () (_ BitVec 32))

(declare-fun mapRest!46058 () (Array (_ BitVec 32) ValueCell!14034))

(declare-fun mapValue!46058 () ValueCell!14034)

(assert (=> mapNonEmpty!46058 (= (arr!36522 _values!996) (store mapRest!46058 mapKey!46058 mapValue!46058))))

(declare-fun b!1172553 () Bool)

(assert (=> b!1172553 (= e!666511 tp_is_empty!29487)))

(declare-fun b!1172554 () Bool)

(declare-fun res!778623 () Bool)

(assert (=> b!1172554 (=> (not res!778623) (not e!666513))))

(assert (=> b!1172554 (= res!778623 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25776))))

(declare-fun b!1172555 () Bool)

(declare-fun res!778638 () Bool)

(assert (=> b!1172555 (=> res!778638 e!666508)))

(declare-fun noDuplicate!1642 (List!25779) Bool)

(assert (=> b!1172555 (= res!778638 (not (noDuplicate!1642 Nil!25776)))))

(declare-fun b!1172556 () Bool)

(declare-fun res!778628 () Bool)

(assert (=> b!1172556 (=> (not res!778628) (not e!666513))))

(assert (=> b!1172556 (= res!778628 (and (= (size!37059 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37058 _keys!1208) (size!37059 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172557 () Bool)

(declare-fun e!666505 () Bool)

(assert (=> b!1172557 (= e!666505 e!666514)))

(declare-fun res!778627 () Bool)

(assert (=> b!1172557 (=> res!778627 e!666514)))

(assert (=> b!1172557 (= res!778627 (not (= (select (arr!36521 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1172557 e!666502))

(declare-fun res!778625 () Bool)

(assert (=> b!1172557 (=> (not res!778625) (not e!666502))))

(declare-fun lt!528318 () ListLongMap!16987)

(declare-fun +!3746 (ListLongMap!16987 tuple2!19006) ListLongMap!16987)

(declare-fun get!18665 (ValueCell!14034 V!44443) V!44443)

(assert (=> b!1172557 (= res!778625 (= lt!528322 (+!3746 lt!528318 (tuple2!19007 (select (arr!36521 _keys!1208) from!1455) (get!18665 (select (arr!36522 _values!996) from!1455) lt!528323)))))))

(declare-fun b!1172558 () Bool)

(declare-fun res!778624 () Bool)

(assert (=> b!1172558 (=> (not res!778624) (not e!666503))))

(assert (=> b!1172558 (= res!778624 (arrayNoDuplicates!0 lt!528320 #b00000000000000000000000000000000 Nil!25776))))

(declare-fun b!1172559 () Bool)

(assert (=> b!1172559 (= e!666509 tp_is_empty!29487)))

(declare-fun b!1172560 () Bool)

(assert (=> b!1172560 (= e!666510 e!666505)))

(declare-fun res!778632 () Bool)

(assert (=> b!1172560 (=> res!778632 e!666505)))

(assert (=> b!1172560 (= res!778632 (not (validKeyInArray!0 (select (arr!36521 _keys!1208) from!1455))))))

(declare-fun lt!528321 () ListLongMap!16987)

(assert (=> b!1172560 (= lt!528321 lt!528318)))

(declare-fun lt!528327 () ListLongMap!16987)

(declare-fun -!1524 (ListLongMap!16987 (_ BitVec 64)) ListLongMap!16987)

(assert (=> b!1172560 (= lt!528318 (-!1524 lt!528327 k0!934))))

(assert (=> b!1172560 (= lt!528321 (getCurrentListMapNoExtraKeys!4941 lt!528320 lt!528315 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172560 (= lt!528327 (getCurrentListMapNoExtraKeys!4941 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528319 () Unit!38564)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!748 (array!75750 array!75752 (_ BitVec 32) (_ BitVec 32) V!44443 V!44443 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38564)

(assert (=> b!1172560 (= lt!528319 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!748 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99414 res!778629) b!1172550))

(assert (= (and b!1172550 res!778636) b!1172556))

(assert (= (and b!1172556 res!778628) b!1172544))

(assert (= (and b!1172544 res!778637) b!1172554))

(assert (= (and b!1172554 res!778623) b!1172540))

(assert (= (and b!1172540 res!778639) b!1172539))

(assert (= (and b!1172539 res!778626) b!1172548))

(assert (= (and b!1172548 res!778633) b!1172547))

(assert (= (and b!1172547 res!778621) b!1172558))

(assert (= (and b!1172558 res!778624) b!1172542))

(assert (= (and b!1172542 (not res!778630)) b!1172551))

(assert (= (and b!1172551 (not res!778634)) b!1172560))

(assert (= (and b!1172560 (not res!778632)) b!1172557))

(assert (= (and b!1172557 res!778625) b!1172543))

(assert (= (and b!1172543 (not res!778635)) b!1172552))

(assert (= (and b!1172557 (not res!778627)) b!1172545))

(assert (= (and b!1172545 (not res!778622)) b!1172555))

(assert (= (and b!1172555 (not res!778638)) b!1172541))

(assert (= (and b!1172541 (not res!778631)) b!1172546))

(assert (= (and b!1172549 condMapEmpty!46058) mapIsEmpty!46058))

(assert (= (and b!1172549 (not condMapEmpty!46058)) mapNonEmpty!46058))

(get-info :version)

(assert (= (and mapNonEmpty!46058 ((_ is ValueCellFull!14034) mapValue!46058)) b!1172559))

(assert (= (and b!1172549 ((_ is ValueCellFull!14034) mapDefault!46058)) b!1172553))

(assert (= start!99414 b!1172549))

(declare-fun b_lambda!20119 () Bool)

(assert (=> (not b_lambda!20119) (not b!1172551)))

(declare-fun t!37734 () Bool)

(declare-fun tb!9777 () Bool)

(assert (=> (and start!99414 (= defaultEntry!1004 defaultEntry!1004) t!37734) tb!9777))

(declare-fun result!20113 () Bool)

(assert (=> tb!9777 (= result!20113 tp_is_empty!29487)))

(assert (=> b!1172551 t!37734))

(declare-fun b_and!40797 () Bool)

(assert (= b_and!40795 (and (=> t!37734 result!20113) b_and!40797)))

(declare-fun m!1080409 () Bool)

(assert (=> b!1172545 m!1080409))

(declare-fun m!1080411 () Bool)

(assert (=> b!1172545 m!1080411))

(declare-fun m!1080413 () Bool)

(assert (=> b!1172545 m!1080413))

(declare-fun m!1080415 () Bool)

(assert (=> b!1172545 m!1080415))

(declare-fun m!1080417 () Bool)

(assert (=> start!99414 m!1080417))

(declare-fun m!1080419 () Bool)

(assert (=> start!99414 m!1080419))

(declare-fun m!1080421 () Bool)

(assert (=> b!1172557 m!1080421))

(declare-fun m!1080423 () Bool)

(assert (=> b!1172557 m!1080423))

(assert (=> b!1172557 m!1080423))

(declare-fun m!1080425 () Bool)

(assert (=> b!1172557 m!1080425))

(declare-fun m!1080427 () Bool)

(assert (=> b!1172557 m!1080427))

(declare-fun m!1080429 () Bool)

(assert (=> b!1172555 m!1080429))

(declare-fun m!1080431 () Bool)

(assert (=> b!1172550 m!1080431))

(declare-fun m!1080433 () Bool)

(assert (=> b!1172546 m!1080433))

(declare-fun m!1080435 () Bool)

(assert (=> b!1172542 m!1080435))

(declare-fun m!1080437 () Bool)

(assert (=> b!1172542 m!1080437))

(declare-fun m!1080439 () Bool)

(assert (=> b!1172551 m!1080439))

(declare-fun m!1080441 () Bool)

(assert (=> b!1172551 m!1080441))

(declare-fun m!1080443 () Bool)

(assert (=> b!1172551 m!1080443))

(declare-fun m!1080445 () Bool)

(assert (=> b!1172551 m!1080445))

(declare-fun m!1080447 () Bool)

(assert (=> b!1172539 m!1080447))

(assert (=> b!1172543 m!1080421))

(declare-fun m!1080449 () Bool)

(assert (=> b!1172548 m!1080449))

(declare-fun m!1080451 () Bool)

(assert (=> mapNonEmpty!46058 m!1080451))

(declare-fun m!1080453 () Bool)

(assert (=> b!1172554 m!1080453))

(declare-fun m!1080455 () Bool)

(assert (=> b!1172541 m!1080455))

(declare-fun m!1080457 () Bool)

(assert (=> b!1172558 m!1080457))

(declare-fun m!1080459 () Bool)

(assert (=> b!1172547 m!1080459))

(declare-fun m!1080461 () Bool)

(assert (=> b!1172547 m!1080461))

(declare-fun m!1080463 () Bool)

(assert (=> b!1172560 m!1080463))

(declare-fun m!1080465 () Bool)

(assert (=> b!1172560 m!1080465))

(declare-fun m!1080467 () Bool)

(assert (=> b!1172560 m!1080467))

(declare-fun m!1080469 () Bool)

(assert (=> b!1172560 m!1080469))

(assert (=> b!1172560 m!1080421))

(declare-fun m!1080471 () Bool)

(assert (=> b!1172560 m!1080471))

(assert (=> b!1172560 m!1080421))

(declare-fun m!1080473 () Bool)

(assert (=> b!1172544 m!1080473))

(declare-fun m!1080475 () Bool)

(assert (=> b!1172552 m!1080475))

(check-sat (not mapNonEmpty!46058) (not b!1172539) (not b!1172560) (not b_lambda!20119) (not b!1172554) (not b!1172550) (not b!1172551) (not b!1172546) (not b!1172558) (not b!1172552) (not b!1172555) (not b!1172542) (not b!1172547) tp_is_empty!29487 (not b!1172544) b_and!40797 (not b!1172545) (not b_next!24957) (not b!1172541) (not b!1172557) (not start!99414))
(check-sat b_and!40797 (not b_next!24957))
