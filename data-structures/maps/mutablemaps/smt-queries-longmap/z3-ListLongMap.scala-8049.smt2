; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99172 () Bool)

(assert start!99172)

(declare-fun b_free!24741 () Bool)

(declare-fun b_next!24741 () Bool)

(assert (=> start!99172 (= b_free!24741 (not b_next!24741))))

(declare-fun tp!86935 () Bool)

(declare-fun b_and!40345 () Bool)

(assert (=> start!99172 (= tp!86935 b_and!40345)))

(declare-fun b!1166403 () Bool)

(declare-fun res!773764 () Bool)

(declare-fun e!663055 () Bool)

(assert (=> b!1166403 (=> (not res!773764) (not e!663055))))

(declare-datatypes ((array!75320 0))(
  ( (array!75321 (arr!36307 (Array (_ BitVec 32) (_ BitVec 64))) (size!36844 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75320)

(declare-datatypes ((List!25592 0))(
  ( (Nil!25589) (Cons!25588 (h!26797 (_ BitVec 64)) (t!37332 List!25592)) )
))
(declare-fun arrayNoDuplicates!0 (array!75320 (_ BitVec 32) List!25592) Bool)

(assert (=> b!1166403 (= res!773764 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25589))))

(declare-fun b!1166404 () Bool)

(declare-fun res!773758 () Bool)

(assert (=> b!1166404 (=> (not res!773758) (not e!663055))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1166404 (= res!773758 (= (select (arr!36307 _keys!1208) i!673) k0!934))))

(declare-fun res!773762 () Bool)

(assert (=> start!99172 (=> (not res!773762) (not e!663055))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99172 (= res!773762 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36844 _keys!1208))))))

(assert (=> start!99172 e!663055))

(declare-fun tp_is_empty!29271 () Bool)

(assert (=> start!99172 tp_is_empty!29271))

(declare-fun array_inv!27638 (array!75320) Bool)

(assert (=> start!99172 (array_inv!27638 _keys!1208)))

(assert (=> start!99172 true))

(assert (=> start!99172 tp!86935))

(declare-datatypes ((V!44155 0))(
  ( (V!44156 (val!14692 Int)) )
))
(declare-datatypes ((ValueCell!13926 0))(
  ( (ValueCellFull!13926 (v!17330 V!44155)) (EmptyCell!13926) )
))
(declare-datatypes ((array!75322 0))(
  ( (array!75323 (arr!36308 (Array (_ BitVec 32) ValueCell!13926)) (size!36845 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75322)

(declare-fun e!663054 () Bool)

(declare-fun array_inv!27639 (array!75322) Bool)

(assert (=> start!99172 (and (array_inv!27639 _values!996) e!663054)))

(declare-fun b!1166405 () Bool)

(declare-fun e!663053 () Bool)

(declare-fun e!663059 () Bool)

(assert (=> b!1166405 (= e!663053 e!663059)))

(declare-fun res!773757 () Bool)

(assert (=> b!1166405 (=> res!773757 e!663059)))

(assert (=> b!1166405 (= res!773757 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44155)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525212 () array!75320)

(declare-datatypes ((tuple2!18816 0))(
  ( (tuple2!18817 (_1!9418 (_ BitVec 64)) (_2!9418 V!44155)) )
))
(declare-datatypes ((List!25593 0))(
  ( (Nil!25590) (Cons!25589 (h!26798 tuple2!18816) (t!37333 List!25593)) )
))
(declare-datatypes ((ListLongMap!16797 0))(
  ( (ListLongMap!16798 (toList!8414 List!25593)) )
))
(declare-fun lt!525210 () ListLongMap!16797)

(declare-fun minValue!944 () V!44155)

(declare-fun lt!525213 () array!75322)

(declare-fun getCurrentListMapNoExtraKeys!4847 (array!75320 array!75322 (_ BitVec 32) (_ BitVec 32) V!44155 V!44155 (_ BitVec 32) Int) ListLongMap!16797)

(assert (=> b!1166405 (= lt!525210 (getCurrentListMapNoExtraKeys!4847 lt!525212 lt!525213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2842 (Int (_ BitVec 64)) V!44155)

(assert (=> b!1166405 (= lt!525213 (array!75323 (store (arr!36308 _values!996) i!673 (ValueCellFull!13926 (dynLambda!2842 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36845 _values!996)))))

(declare-fun lt!525211 () ListLongMap!16797)

(assert (=> b!1166405 (= lt!525211 (getCurrentListMapNoExtraKeys!4847 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45731 () Bool)

(declare-fun mapRes!45731 () Bool)

(declare-fun tp!86934 () Bool)

(declare-fun e!663057 () Bool)

(assert (=> mapNonEmpty!45731 (= mapRes!45731 (and tp!86934 e!663057))))

(declare-fun mapValue!45731 () ValueCell!13926)

(declare-fun mapRest!45731 () (Array (_ BitVec 32) ValueCell!13926))

(declare-fun mapKey!45731 () (_ BitVec 32))

(assert (=> mapNonEmpty!45731 (= (arr!36308 _values!996) (store mapRest!45731 mapKey!45731 mapValue!45731))))

(declare-fun b!1166406 () Bool)

(declare-fun res!773765 () Bool)

(assert (=> b!1166406 (=> (not res!773765) (not e!663055))))

(assert (=> b!1166406 (= res!773765 (and (= (size!36845 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36844 _keys!1208) (size!36845 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166407 () Bool)

(assert (=> b!1166407 (= e!663057 tp_is_empty!29271)))

(declare-fun b!1166408 () Bool)

(declare-fun res!773759 () Bool)

(assert (=> b!1166408 (=> (not res!773759) (not e!663055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166408 (= res!773759 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45731 () Bool)

(assert (=> mapIsEmpty!45731 mapRes!45731))

(declare-fun b!1166409 () Bool)

(declare-fun res!773766 () Bool)

(declare-fun e!663056 () Bool)

(assert (=> b!1166409 (=> (not res!773766) (not e!663056))))

(assert (=> b!1166409 (= res!773766 (arrayNoDuplicates!0 lt!525212 #b00000000000000000000000000000000 Nil!25589))))

(declare-fun b!1166410 () Bool)

(declare-fun res!773761 () Bool)

(assert (=> b!1166410 (=> (not res!773761) (not e!663055))))

(assert (=> b!1166410 (= res!773761 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36844 _keys!1208))))))

(declare-fun b!1166411 () Bool)

(assert (=> b!1166411 (= e!663059 true)))

(declare-fun -!1451 (ListLongMap!16797 (_ BitVec 64)) ListLongMap!16797)

(assert (=> b!1166411 (= (getCurrentListMapNoExtraKeys!4847 lt!525212 lt!525213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1451 (getCurrentListMapNoExtraKeys!4847 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38382 0))(
  ( (Unit!38383) )
))
(declare-fun lt!525208 () Unit!38382)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!675 (array!75320 array!75322 (_ BitVec 32) (_ BitVec 32) V!44155 V!44155 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38382)

(assert (=> b!1166411 (= lt!525208 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!675 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166412 () Bool)

(assert (=> b!1166412 (= e!663056 (not e!663053))))

(declare-fun res!773763 () Bool)

(assert (=> b!1166412 (=> res!773763 e!663053)))

(assert (=> b!1166412 (= res!773763 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166412 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525209 () Unit!38382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75320 (_ BitVec 64) (_ BitVec 32)) Unit!38382)

(assert (=> b!1166412 (= lt!525209 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166413 () Bool)

(declare-fun e!663058 () Bool)

(assert (=> b!1166413 (= e!663054 (and e!663058 mapRes!45731))))

(declare-fun condMapEmpty!45731 () Bool)

(declare-fun mapDefault!45731 () ValueCell!13926)

(assert (=> b!1166413 (= condMapEmpty!45731 (= (arr!36308 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13926)) mapDefault!45731)))))

(declare-fun b!1166414 () Bool)

(assert (=> b!1166414 (= e!663055 e!663056)))

(declare-fun res!773760 () Bool)

(assert (=> b!1166414 (=> (not res!773760) (not e!663056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75320 (_ BitVec 32)) Bool)

(assert (=> b!1166414 (= res!773760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525212 mask!1564))))

(assert (=> b!1166414 (= lt!525212 (array!75321 (store (arr!36307 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36844 _keys!1208)))))

(declare-fun b!1166415 () Bool)

(declare-fun res!773768 () Bool)

(assert (=> b!1166415 (=> (not res!773768) (not e!663055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166415 (= res!773768 (validKeyInArray!0 k0!934))))

(declare-fun b!1166416 () Bool)

(declare-fun res!773767 () Bool)

(assert (=> b!1166416 (=> (not res!773767) (not e!663055))))

(assert (=> b!1166416 (= res!773767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166417 () Bool)

(assert (=> b!1166417 (= e!663058 tp_is_empty!29271)))

(assert (= (and start!99172 res!773762) b!1166408))

(assert (= (and b!1166408 res!773759) b!1166406))

(assert (= (and b!1166406 res!773765) b!1166416))

(assert (= (and b!1166416 res!773767) b!1166403))

(assert (= (and b!1166403 res!773764) b!1166410))

(assert (= (and b!1166410 res!773761) b!1166415))

(assert (= (and b!1166415 res!773768) b!1166404))

(assert (= (and b!1166404 res!773758) b!1166414))

(assert (= (and b!1166414 res!773760) b!1166409))

(assert (= (and b!1166409 res!773766) b!1166412))

(assert (= (and b!1166412 (not res!773763)) b!1166405))

(assert (= (and b!1166405 (not res!773757)) b!1166411))

(assert (= (and b!1166413 condMapEmpty!45731) mapIsEmpty!45731))

(assert (= (and b!1166413 (not condMapEmpty!45731)) mapNonEmpty!45731))

(get-info :version)

(assert (= (and mapNonEmpty!45731 ((_ is ValueCellFull!13926) mapValue!45731)) b!1166407))

(assert (= (and b!1166413 ((_ is ValueCellFull!13926) mapDefault!45731)) b!1166417))

(assert (= start!99172 b!1166413))

(declare-fun b_lambda!19865 () Bool)

(assert (=> (not b_lambda!19865) (not b!1166405)))

(declare-fun t!37331 () Bool)

(declare-fun tb!9561 () Bool)

(assert (=> (and start!99172 (= defaultEntry!1004 defaultEntry!1004) t!37331) tb!9561))

(declare-fun result!19679 () Bool)

(assert (=> tb!9561 (= result!19679 tp_is_empty!29271)))

(assert (=> b!1166405 t!37331))

(declare-fun b_and!40347 () Bool)

(assert (= b_and!40345 (and (=> t!37331 result!19679) b_and!40347)))

(declare-fun m!1074493 () Bool)

(assert (=> b!1166404 m!1074493))

(declare-fun m!1074495 () Bool)

(assert (=> b!1166408 m!1074495))

(declare-fun m!1074497 () Bool)

(assert (=> b!1166415 m!1074497))

(declare-fun m!1074499 () Bool)

(assert (=> b!1166403 m!1074499))

(declare-fun m!1074501 () Bool)

(assert (=> start!99172 m!1074501))

(declare-fun m!1074503 () Bool)

(assert (=> start!99172 m!1074503))

(declare-fun m!1074505 () Bool)

(assert (=> b!1166411 m!1074505))

(declare-fun m!1074507 () Bool)

(assert (=> b!1166411 m!1074507))

(assert (=> b!1166411 m!1074507))

(declare-fun m!1074509 () Bool)

(assert (=> b!1166411 m!1074509))

(declare-fun m!1074511 () Bool)

(assert (=> b!1166411 m!1074511))

(declare-fun m!1074513 () Bool)

(assert (=> b!1166414 m!1074513))

(declare-fun m!1074515 () Bool)

(assert (=> b!1166414 m!1074515))

(declare-fun m!1074517 () Bool)

(assert (=> b!1166405 m!1074517))

(declare-fun m!1074519 () Bool)

(assert (=> b!1166405 m!1074519))

(declare-fun m!1074521 () Bool)

(assert (=> b!1166405 m!1074521))

(declare-fun m!1074523 () Bool)

(assert (=> b!1166405 m!1074523))

(declare-fun m!1074525 () Bool)

(assert (=> mapNonEmpty!45731 m!1074525))

(declare-fun m!1074527 () Bool)

(assert (=> b!1166416 m!1074527))

(declare-fun m!1074529 () Bool)

(assert (=> b!1166412 m!1074529))

(declare-fun m!1074531 () Bool)

(assert (=> b!1166412 m!1074531))

(declare-fun m!1074533 () Bool)

(assert (=> b!1166409 m!1074533))

(check-sat (not b_lambda!19865) (not b!1166409) (not mapNonEmpty!45731) (not start!99172) (not b_next!24741) (not b!1166405) (not b!1166411) tp_is_empty!29271 (not b!1166416) (not b!1166415) b_and!40347 (not b!1166414) (not b!1166408) (not b!1166412) (not b!1166403))
(check-sat b_and!40347 (not b_next!24741))
