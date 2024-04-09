; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99318 () Bool)

(assert start!99318)

(declare-fun b_free!24861 () Bool)

(declare-fun b_next!24861 () Bool)

(assert (=> start!99318 (= b_free!24861 (not b_next!24861))))

(declare-fun tp!87298 () Bool)

(declare-fun b_and!40603 () Bool)

(assert (=> start!99318 (= tp!87298 b_and!40603)))

(declare-fun b!1169499 () Bool)

(declare-fun e!664728 () Bool)

(declare-fun e!664724 () Bool)

(assert (=> b!1169499 (= e!664728 e!664724)))

(declare-fun res!776119 () Bool)

(assert (=> b!1169499 (=> res!776119 e!664724)))

(declare-datatypes ((array!75558 0))(
  ( (array!75559 (arr!36425 (Array (_ BitVec 32) (_ BitVec 64))) (size!36962 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75558)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169499 (= res!776119 (not (validKeyInArray!0 (select (arr!36425 _keys!1208) from!1455))))))

(declare-datatypes ((V!44315 0))(
  ( (V!44316 (val!14752 Int)) )
))
(declare-datatypes ((tuple2!18922 0))(
  ( (tuple2!18923 (_1!9471 (_ BitVec 64)) (_2!9471 V!44315)) )
))
(declare-datatypes ((List!25693 0))(
  ( (Nil!25690) (Cons!25689 (h!26898 tuple2!18922) (t!37553 List!25693)) )
))
(declare-datatypes ((ListLongMap!16903 0))(
  ( (ListLongMap!16904 (toList!8467 List!25693)) )
))
(declare-fun lt!526600 () ListLongMap!16903)

(declare-fun lt!526608 () ListLongMap!16903)

(assert (=> b!1169499 (= lt!526600 lt!526608)))

(declare-fun lt!526601 () ListLongMap!16903)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1490 (ListLongMap!16903 (_ BitVec 64)) ListLongMap!16903)

(assert (=> b!1169499 (= lt!526608 (-!1490 lt!526601 k0!934))))

(declare-fun zeroValue!944 () V!44315)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526606 () array!75558)

(declare-fun minValue!944 () V!44315)

(declare-datatypes ((ValueCell!13986 0))(
  ( (ValueCellFull!13986 (v!17391 V!44315)) (EmptyCell!13986) )
))
(declare-datatypes ((array!75560 0))(
  ( (array!75561 (arr!36426 (Array (_ BitVec 32) ValueCell!13986)) (size!36963 (_ BitVec 32))) )
))
(declare-fun lt!526599 () array!75560)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4900 (array!75558 array!75560 (_ BitVec 32) (_ BitVec 32) V!44315 V!44315 (_ BitVec 32) Int) ListLongMap!16903)

(assert (=> b!1169499 (= lt!526600 (getCurrentListMapNoExtraKeys!4900 lt!526606 lt!526599 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75560)

(assert (=> b!1169499 (= lt!526601 (getCurrentListMapNoExtraKeys!4900 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38478 0))(
  ( (Unit!38479) )
))
(declare-fun lt!526605 () Unit!38478)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!714 (array!75558 array!75560 (_ BitVec 32) (_ BitVec 32) V!44315 V!44315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38478)

(assert (=> b!1169499 (= lt!526605 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!714 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169500 () Bool)

(declare-fun res!776115 () Bool)

(declare-fun e!664722 () Bool)

(assert (=> b!1169500 (=> (not res!776115) (not e!664722))))

(assert (=> b!1169500 (= res!776115 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36962 _keys!1208))))))

(declare-fun b!1169501 () Bool)

(declare-fun res!776112 () Bool)

(assert (=> b!1169501 (=> (not res!776112) (not e!664722))))

(assert (=> b!1169501 (= res!776112 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45914 () Bool)

(declare-fun mapRes!45914 () Bool)

(assert (=> mapIsEmpty!45914 mapRes!45914))

(declare-fun b!1169502 () Bool)

(declare-fun res!776117 () Bool)

(assert (=> b!1169502 (=> (not res!776117) (not e!664722))))

(declare-datatypes ((List!25694 0))(
  ( (Nil!25691) (Cons!25690 (h!26899 (_ BitVec 64)) (t!37554 List!25694)) )
))
(declare-fun arrayNoDuplicates!0 (array!75558 (_ BitVec 32) List!25694) Bool)

(assert (=> b!1169502 (= res!776117 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25691))))

(declare-fun b!1169503 () Bool)

(declare-fun e!664725 () Bool)

(declare-fun arrayContainsKey!0 (array!75558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169503 (= e!664725 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169504 () Bool)

(declare-fun e!664729 () Bool)

(declare-fun tp_is_empty!29391 () Bool)

(assert (=> b!1169504 (= e!664729 tp_is_empty!29391)))

(declare-fun b!1169505 () Bool)

(declare-fun e!664726 () Bool)

(assert (=> b!1169505 (= e!664726 e!664725)))

(declare-fun res!776110 () Bool)

(assert (=> b!1169505 (=> res!776110 e!664725)))

(assert (=> b!1169505 (= res!776110 (not (= (select (arr!36425 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1169506 () Bool)

(declare-fun e!664723 () Bool)

(assert (=> b!1169506 (= e!664723 tp_is_empty!29391)))

(declare-fun b!1169507 () Bool)

(declare-fun res!776120 () Bool)

(assert (=> b!1169507 (=> (not res!776120) (not e!664722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169507 (= res!776120 (validMask!0 mask!1564))))

(declare-fun b!1169508 () Bool)

(declare-fun e!664719 () Bool)

(assert (=> b!1169508 (= e!664719 e!664728)))

(declare-fun res!776116 () Bool)

(assert (=> b!1169508 (=> res!776116 e!664728)))

(assert (=> b!1169508 (= res!776116 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!526604 () ListLongMap!16903)

(assert (=> b!1169508 (= lt!526604 (getCurrentListMapNoExtraKeys!4900 lt!526606 lt!526599 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526603 () V!44315)

(assert (=> b!1169508 (= lt!526599 (array!75561 (store (arr!36426 _values!996) i!673 (ValueCellFull!13986 lt!526603)) (size!36963 _values!996)))))

(declare-fun dynLambda!2891 (Int (_ BitVec 64)) V!44315)

(assert (=> b!1169508 (= lt!526603 (dynLambda!2891 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526607 () ListLongMap!16903)

(assert (=> b!1169508 (= lt!526607 (getCurrentListMapNoExtraKeys!4900 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169509 () Bool)

(declare-fun res!776118 () Bool)

(assert (=> b!1169509 (=> (not res!776118) (not e!664722))))

(assert (=> b!1169509 (= res!776118 (= (select (arr!36425 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!45914 () Bool)

(declare-fun tp!87297 () Bool)

(assert (=> mapNonEmpty!45914 (= mapRes!45914 (and tp!87297 e!664723))))

(declare-fun mapValue!45914 () ValueCell!13986)

(declare-fun mapRest!45914 () (Array (_ BitVec 32) ValueCell!13986))

(declare-fun mapKey!45914 () (_ BitVec 32))

(assert (=> mapNonEmpty!45914 (= (arr!36426 _values!996) (store mapRest!45914 mapKey!45914 mapValue!45914))))

(declare-fun b!1169498 () Bool)

(declare-fun res!776121 () Bool)

(assert (=> b!1169498 (=> (not res!776121) (not e!664722))))

(assert (=> b!1169498 (= res!776121 (and (= (size!36963 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36962 _keys!1208) (size!36963 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!776113 () Bool)

(assert (=> start!99318 (=> (not res!776113) (not e!664722))))

(assert (=> start!99318 (= res!776113 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36962 _keys!1208))))))

(assert (=> start!99318 e!664722))

(assert (=> start!99318 tp_is_empty!29391))

(declare-fun array_inv!27722 (array!75558) Bool)

(assert (=> start!99318 (array_inv!27722 _keys!1208)))

(assert (=> start!99318 true))

(assert (=> start!99318 tp!87298))

(declare-fun e!664721 () Bool)

(declare-fun array_inv!27723 (array!75560) Bool)

(assert (=> start!99318 (and (array_inv!27723 _values!996) e!664721)))

(declare-fun b!1169510 () Bool)

(declare-fun e!664727 () Bool)

(assert (=> b!1169510 (= e!664722 e!664727)))

(declare-fun res!776109 () Bool)

(assert (=> b!1169510 (=> (not res!776109) (not e!664727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75558 (_ BitVec 32)) Bool)

(assert (=> b!1169510 (= res!776109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526606 mask!1564))))

(assert (=> b!1169510 (= lt!526606 (array!75559 (store (arr!36425 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36962 _keys!1208)))))

(declare-fun b!1169511 () Bool)

(assert (=> b!1169511 (= e!664724 true)))

(assert (=> b!1169511 e!664726))

(declare-fun res!776114 () Bool)

(assert (=> b!1169511 (=> (not res!776114) (not e!664726))))

(declare-fun +!3714 (ListLongMap!16903 tuple2!18922) ListLongMap!16903)

(declare-fun get!18601 (ValueCell!13986 V!44315) V!44315)

(assert (=> b!1169511 (= res!776114 (= lt!526604 (+!3714 lt!526608 (tuple2!18923 (select (arr!36425 _keys!1208) from!1455) (get!18601 (select (arr!36426 _values!996) from!1455) lt!526603)))))))

(declare-fun b!1169512 () Bool)

(assert (=> b!1169512 (= e!664727 (not e!664719))))

(declare-fun res!776122 () Bool)

(assert (=> b!1169512 (=> res!776122 e!664719)))

(assert (=> b!1169512 (= res!776122 (bvsgt from!1455 i!673))))

(assert (=> b!1169512 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!526602 () Unit!38478)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75558 (_ BitVec 64) (_ BitVec 32)) Unit!38478)

(assert (=> b!1169512 (= lt!526602 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169513 () Bool)

(assert (=> b!1169513 (= e!664721 (and e!664729 mapRes!45914))))

(declare-fun condMapEmpty!45914 () Bool)

(declare-fun mapDefault!45914 () ValueCell!13986)

(assert (=> b!1169513 (= condMapEmpty!45914 (= (arr!36426 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13986)) mapDefault!45914)))))

(declare-fun b!1169514 () Bool)

(declare-fun res!776108 () Bool)

(assert (=> b!1169514 (=> (not res!776108) (not e!664727))))

(assert (=> b!1169514 (= res!776108 (arrayNoDuplicates!0 lt!526606 #b00000000000000000000000000000000 Nil!25691))))

(declare-fun b!1169515 () Bool)

(declare-fun res!776111 () Bool)

(assert (=> b!1169515 (=> (not res!776111) (not e!664722))))

(assert (=> b!1169515 (= res!776111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99318 res!776113) b!1169507))

(assert (= (and b!1169507 res!776120) b!1169498))

(assert (= (and b!1169498 res!776121) b!1169515))

(assert (= (and b!1169515 res!776111) b!1169502))

(assert (= (and b!1169502 res!776117) b!1169500))

(assert (= (and b!1169500 res!776115) b!1169501))

(assert (= (and b!1169501 res!776112) b!1169509))

(assert (= (and b!1169509 res!776118) b!1169510))

(assert (= (and b!1169510 res!776109) b!1169514))

(assert (= (and b!1169514 res!776108) b!1169512))

(assert (= (and b!1169512 (not res!776122)) b!1169508))

(assert (= (and b!1169508 (not res!776116)) b!1169499))

(assert (= (and b!1169499 (not res!776119)) b!1169511))

(assert (= (and b!1169511 res!776114) b!1169505))

(assert (= (and b!1169505 (not res!776110)) b!1169503))

(assert (= (and b!1169513 condMapEmpty!45914) mapIsEmpty!45914))

(assert (= (and b!1169513 (not condMapEmpty!45914)) mapNonEmpty!45914))

(get-info :version)

(assert (= (and mapNonEmpty!45914 ((_ is ValueCellFull!13986) mapValue!45914)) b!1169506))

(assert (= (and b!1169513 ((_ is ValueCellFull!13986) mapDefault!45914)) b!1169504))

(assert (= start!99318 b!1169513))

(declare-fun b_lambda!20023 () Bool)

(assert (=> (not b_lambda!20023) (not b!1169508)))

(declare-fun t!37552 () Bool)

(declare-fun tb!9681 () Bool)

(assert (=> (and start!99318 (= defaultEntry!1004 defaultEntry!1004) t!37552) tb!9681))

(declare-fun result!19921 () Bool)

(assert (=> tb!9681 (= result!19921 tp_is_empty!29391)))

(assert (=> b!1169508 t!37552))

(declare-fun b_and!40605 () Bool)

(assert (= b_and!40603 (and (=> t!37552 result!19921) b_and!40605)))

(declare-fun m!1077407 () Bool)

(assert (=> b!1169499 m!1077407))

(declare-fun m!1077409 () Bool)

(assert (=> b!1169499 m!1077409))

(declare-fun m!1077411 () Bool)

(assert (=> b!1169499 m!1077411))

(declare-fun m!1077413 () Bool)

(assert (=> b!1169499 m!1077413))

(declare-fun m!1077415 () Bool)

(assert (=> b!1169499 m!1077415))

(declare-fun m!1077417 () Bool)

(assert (=> b!1169499 m!1077417))

(assert (=> b!1169499 m!1077415))

(declare-fun m!1077419 () Bool)

(assert (=> b!1169510 m!1077419))

(declare-fun m!1077421 () Bool)

(assert (=> b!1169510 m!1077421))

(assert (=> b!1169511 m!1077415))

(declare-fun m!1077423 () Bool)

(assert (=> b!1169511 m!1077423))

(assert (=> b!1169511 m!1077423))

(declare-fun m!1077425 () Bool)

(assert (=> b!1169511 m!1077425))

(declare-fun m!1077427 () Bool)

(assert (=> b!1169511 m!1077427))

(declare-fun m!1077429 () Bool)

(assert (=> b!1169512 m!1077429))

(declare-fun m!1077431 () Bool)

(assert (=> b!1169512 m!1077431))

(declare-fun m!1077433 () Bool)

(assert (=> b!1169507 m!1077433))

(declare-fun m!1077435 () Bool)

(assert (=> b!1169509 m!1077435))

(declare-fun m!1077437 () Bool)

(assert (=> b!1169502 m!1077437))

(declare-fun m!1077439 () Bool)

(assert (=> b!1169503 m!1077439))

(assert (=> b!1169505 m!1077415))

(declare-fun m!1077441 () Bool)

(assert (=> start!99318 m!1077441))

(declare-fun m!1077443 () Bool)

(assert (=> start!99318 m!1077443))

(declare-fun m!1077445 () Bool)

(assert (=> b!1169501 m!1077445))

(declare-fun m!1077447 () Bool)

(assert (=> b!1169515 m!1077447))

(declare-fun m!1077449 () Bool)

(assert (=> mapNonEmpty!45914 m!1077449))

(declare-fun m!1077451 () Bool)

(assert (=> b!1169508 m!1077451))

(declare-fun m!1077453 () Bool)

(assert (=> b!1169508 m!1077453))

(declare-fun m!1077455 () Bool)

(assert (=> b!1169508 m!1077455))

(declare-fun m!1077457 () Bool)

(assert (=> b!1169508 m!1077457))

(declare-fun m!1077459 () Bool)

(assert (=> b!1169514 m!1077459))

(check-sat (not b!1169507) (not b!1169502) (not b!1169508) tp_is_empty!29391 (not b!1169501) b_and!40605 (not mapNonEmpty!45914) (not b!1169499) (not b!1169511) (not b!1169514) (not b!1169512) (not b_lambda!20023) (not start!99318) (not b_next!24861) (not b!1169503) (not b!1169515) (not b!1169510))
(check-sat b_and!40605 (not b_next!24861))
