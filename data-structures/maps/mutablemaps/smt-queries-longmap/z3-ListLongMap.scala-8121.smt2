; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99630 () Bool)

(assert start!99630)

(declare-fun b_free!25173 () Bool)

(declare-fun b_next!25173 () Bool)

(assert (=> start!99630 (= b_free!25173 (not b_next!25173))))

(declare-fun tp!88233 () Bool)

(declare-fun b_and!41227 () Bool)

(assert (=> start!99630 (= tp!88233 b_and!41227)))

(declare-fun b!1179401 () Bool)

(declare-datatypes ((Unit!38907 0))(
  ( (Unit!38908) )
))
(declare-fun e!670562 () Unit!38907)

(declare-fun Unit!38909 () Unit!38907)

(assert (=> b!1179401 (= e!670562 Unit!38909)))

(declare-datatypes ((array!76178 0))(
  ( (array!76179 (arr!36735 (Array (_ BitVec 32) (_ BitVec 64))) (size!37272 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76178)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!533007 () Unit!38907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76178 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38907)

(assert (=> b!1179401 (= lt!533007 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179401 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533011 () Unit!38907)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76178 (_ BitVec 32) (_ BitVec 32)) Unit!38907)

(assert (=> b!1179401 (= lt!533011 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25972 0))(
  ( (Nil!25969) (Cons!25968 (h!27177 (_ BitVec 64)) (t!38144 List!25972)) )
))
(declare-fun arrayNoDuplicates!0 (array!76178 (_ BitVec 32) List!25972) Bool)

(assert (=> b!1179401 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25969)))

(declare-fun lt!533005 () Unit!38907)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76178 (_ BitVec 64) (_ BitVec 32) List!25972) Unit!38907)

(assert (=> b!1179401 (= lt!533005 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25969))))

(assert (=> b!1179401 false))

(declare-fun mapNonEmpty!46382 () Bool)

(declare-fun mapRes!46382 () Bool)

(declare-fun tp!88234 () Bool)

(declare-fun e!670564 () Bool)

(assert (=> mapNonEmpty!46382 (= mapRes!46382 (and tp!88234 e!670564))))

(declare-datatypes ((V!44731 0))(
  ( (V!44732 (val!14908 Int)) )
))
(declare-datatypes ((ValueCell!14142 0))(
  ( (ValueCellFull!14142 (v!17547 V!44731)) (EmptyCell!14142) )
))
(declare-fun mapValue!46382 () ValueCell!14142)

(declare-datatypes ((array!76180 0))(
  ( (array!76181 (arr!36736 (Array (_ BitVec 32) ValueCell!14142)) (size!37273 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76180)

(declare-fun mapKey!46382 () (_ BitVec 32))

(declare-fun mapRest!46382 () (Array (_ BitVec 32) ValueCell!14142))

(assert (=> mapNonEmpty!46382 (= (arr!36736 _values!996) (store mapRest!46382 mapKey!46382 mapValue!46382))))

(declare-fun b!1179403 () Bool)

(declare-fun e!670560 () Bool)

(declare-fun e!670559 () Bool)

(assert (=> b!1179403 (= e!670560 (and e!670559 mapRes!46382))))

(declare-fun condMapEmpty!46382 () Bool)

(declare-fun mapDefault!46382 () ValueCell!14142)

(assert (=> b!1179403 (= condMapEmpty!46382 (= (arr!36736 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14142)) mapDefault!46382)))))

(declare-fun b!1179404 () Bool)

(declare-fun e!670552 () Bool)

(declare-fun e!670557 () Bool)

(assert (=> b!1179404 (= e!670552 e!670557)))

(declare-fun res!783660 () Bool)

(assert (=> b!1179404 (=> res!783660 e!670557)))

(assert (=> b!1179404 (= res!783660 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!533009 () array!76180)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19208 0))(
  ( (tuple2!19209 (_1!9614 (_ BitVec 64)) (_2!9614 V!44731)) )
))
(declare-datatypes ((List!25973 0))(
  ( (Nil!25970) (Cons!25969 (h!27178 tuple2!19208) (t!38145 List!25973)) )
))
(declare-datatypes ((ListLongMap!17189 0))(
  ( (ListLongMap!17190 (toList!8610 List!25973)) )
))
(declare-fun lt!533016 () ListLongMap!17189)

(declare-fun minValue!944 () V!44731)

(declare-fun zeroValue!944 () V!44731)

(declare-fun lt!533019 () array!76178)

(declare-fun getCurrentListMapNoExtraKeys!5038 (array!76178 array!76180 (_ BitVec 32) (_ BitVec 32) V!44731 V!44731 (_ BitVec 32) Int) ListLongMap!17189)

(assert (=> b!1179404 (= lt!533016 (getCurrentListMapNoExtraKeys!5038 lt!533019 lt!533009 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!533018 () V!44731)

(assert (=> b!1179404 (= lt!533009 (array!76181 (store (arr!36736 _values!996) i!673 (ValueCellFull!14142 lt!533018)) (size!37273 _values!996)))))

(declare-fun dynLambda!3011 (Int (_ BitVec 64)) V!44731)

(assert (=> b!1179404 (= lt!533018 (dynLambda!3011 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!533015 () ListLongMap!17189)

(assert (=> b!1179404 (= lt!533015 (getCurrentListMapNoExtraKeys!5038 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179405 () Bool)

(declare-fun e!670561 () Bool)

(assert (=> b!1179405 (= e!670561 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179406 () Bool)

(declare-fun res!783659 () Bool)

(declare-fun e!670556 () Bool)

(assert (=> b!1179406 (=> (not res!783659) (not e!670556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179406 (= res!783659 (validKeyInArray!0 k0!934))))

(declare-fun b!1179407 () Bool)

(declare-fun e!670554 () Bool)

(assert (=> b!1179407 (= e!670557 e!670554)))

(declare-fun res!783667 () Bool)

(assert (=> b!1179407 (=> res!783667 e!670554)))

(assert (=> b!1179407 (= res!783667 (not (validKeyInArray!0 (select (arr!36735 _keys!1208) from!1455))))))

(declare-fun lt!533006 () ListLongMap!17189)

(declare-fun lt!533014 () ListLongMap!17189)

(assert (=> b!1179407 (= lt!533006 lt!533014)))

(declare-fun lt!533008 () ListLongMap!17189)

(declare-fun -!1604 (ListLongMap!17189 (_ BitVec 64)) ListLongMap!17189)

(assert (=> b!1179407 (= lt!533014 (-!1604 lt!533008 k0!934))))

(assert (=> b!1179407 (= lt!533006 (getCurrentListMapNoExtraKeys!5038 lt!533019 lt!533009 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179407 (= lt!533008 (getCurrentListMapNoExtraKeys!5038 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533017 () Unit!38907)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!828 (array!76178 array!76180 (_ BitVec 32) (_ BitVec 32) V!44731 V!44731 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38907)

(assert (=> b!1179407 (= lt!533017 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!828 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179408 () Bool)

(declare-fun Unit!38910 () Unit!38907)

(assert (=> b!1179408 (= e!670562 Unit!38910)))

(declare-fun b!1179409 () Bool)

(declare-fun tp_is_empty!29703 () Bool)

(assert (=> b!1179409 (= e!670559 tp_is_empty!29703)))

(declare-fun b!1179410 () Bool)

(declare-fun res!783655 () Bool)

(assert (=> b!1179410 (=> (not res!783655) (not e!670556))))

(assert (=> b!1179410 (= res!783655 (and (= (size!37273 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37272 _keys!1208) (size!37273 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179411 () Bool)

(declare-fun res!783664 () Bool)

(assert (=> b!1179411 (=> (not res!783664) (not e!670556))))

(assert (=> b!1179411 (= res!783664 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25969))))

(declare-fun b!1179412 () Bool)

(assert (=> b!1179412 (= e!670564 tp_is_empty!29703)))

(declare-fun b!1179413 () Bool)

(declare-fun res!783666 () Bool)

(declare-fun e!670553 () Bool)

(assert (=> b!1179413 (=> (not res!783666) (not e!670553))))

(assert (=> b!1179413 (= res!783666 (arrayNoDuplicates!0 lt!533019 #b00000000000000000000000000000000 Nil!25969))))

(declare-fun b!1179414 () Bool)

(declare-fun res!783658 () Bool)

(assert (=> b!1179414 (=> (not res!783658) (not e!670556))))

(assert (=> b!1179414 (= res!783658 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37272 _keys!1208))))))

(declare-fun b!1179415 () Bool)

(assert (=> b!1179415 (= e!670554 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37272 _keys!1208))))))

(declare-fun e!670563 () Bool)

(assert (=> b!1179415 e!670563))

(declare-fun res!783662 () Bool)

(assert (=> b!1179415 (=> (not res!783662) (not e!670563))))

(assert (=> b!1179415 (= res!783662 (not (= (select (arr!36735 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!533013 () Unit!38907)

(assert (=> b!1179415 (= lt!533013 e!670562)))

(declare-fun c!116831 () Bool)

(assert (=> b!1179415 (= c!116831 (= (select (arr!36735 _keys!1208) from!1455) k0!934))))

(declare-fun e!670558 () Bool)

(assert (=> b!1179415 e!670558))

(declare-fun res!783657 () Bool)

(assert (=> b!1179415 (=> (not res!783657) (not e!670558))))

(declare-fun lt!533012 () tuple2!19208)

(declare-fun +!3830 (ListLongMap!17189 tuple2!19208) ListLongMap!17189)

(assert (=> b!1179415 (= res!783657 (= lt!533016 (+!3830 lt!533014 lt!533012)))))

(declare-fun get!18813 (ValueCell!14142 V!44731) V!44731)

(assert (=> b!1179415 (= lt!533012 (tuple2!19209 (select (arr!36735 _keys!1208) from!1455) (get!18813 (select (arr!36736 _values!996) from!1455) lt!533018)))))

(declare-fun res!783656 () Bool)

(assert (=> start!99630 (=> (not res!783656) (not e!670556))))

(assert (=> start!99630 (= res!783656 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37272 _keys!1208))))))

(assert (=> start!99630 e!670556))

(assert (=> start!99630 tp_is_empty!29703))

(declare-fun array_inv!27936 (array!76178) Bool)

(assert (=> start!99630 (array_inv!27936 _keys!1208)))

(assert (=> start!99630 true))

(assert (=> start!99630 tp!88233))

(declare-fun array_inv!27937 (array!76180) Bool)

(assert (=> start!99630 (and (array_inv!27937 _values!996) e!670560)))

(declare-fun b!1179402 () Bool)

(assert (=> b!1179402 (= e!670558 e!670561)))

(declare-fun res!783669 () Bool)

(assert (=> b!1179402 (=> res!783669 e!670561)))

(assert (=> b!1179402 (= res!783669 (not (= (select (arr!36735 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1179416 () Bool)

(assert (=> b!1179416 (= e!670563 (= lt!533015 (+!3830 lt!533008 lt!533012)))))

(declare-fun b!1179417 () Bool)

(declare-fun res!783668 () Bool)

(assert (=> b!1179417 (=> (not res!783668) (not e!670556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76178 (_ BitVec 32)) Bool)

(assert (=> b!1179417 (= res!783668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1179418 () Bool)

(declare-fun res!783663 () Bool)

(assert (=> b!1179418 (=> (not res!783663) (not e!670556))))

(assert (=> b!1179418 (= res!783663 (= (select (arr!36735 _keys!1208) i!673) k0!934))))

(declare-fun b!1179419 () Bool)

(declare-fun res!783661 () Bool)

(assert (=> b!1179419 (=> (not res!783661) (not e!670556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179419 (= res!783661 (validMask!0 mask!1564))))

(declare-fun b!1179420 () Bool)

(assert (=> b!1179420 (= e!670553 (not e!670552))))

(declare-fun res!783670 () Bool)

(assert (=> b!1179420 (=> res!783670 e!670552)))

(assert (=> b!1179420 (= res!783670 (bvsgt from!1455 i!673))))

(assert (=> b!1179420 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533010 () Unit!38907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76178 (_ BitVec 64) (_ BitVec 32)) Unit!38907)

(assert (=> b!1179420 (= lt!533010 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46382 () Bool)

(assert (=> mapIsEmpty!46382 mapRes!46382))

(declare-fun b!1179421 () Bool)

(assert (=> b!1179421 (= e!670556 e!670553)))

(declare-fun res!783665 () Bool)

(assert (=> b!1179421 (=> (not res!783665) (not e!670553))))

(assert (=> b!1179421 (= res!783665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533019 mask!1564))))

(assert (=> b!1179421 (= lt!533019 (array!76179 (store (arr!36735 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37272 _keys!1208)))))

(assert (= (and start!99630 res!783656) b!1179419))

(assert (= (and b!1179419 res!783661) b!1179410))

(assert (= (and b!1179410 res!783655) b!1179417))

(assert (= (and b!1179417 res!783668) b!1179411))

(assert (= (and b!1179411 res!783664) b!1179414))

(assert (= (and b!1179414 res!783658) b!1179406))

(assert (= (and b!1179406 res!783659) b!1179418))

(assert (= (and b!1179418 res!783663) b!1179421))

(assert (= (and b!1179421 res!783665) b!1179413))

(assert (= (and b!1179413 res!783666) b!1179420))

(assert (= (and b!1179420 (not res!783670)) b!1179404))

(assert (= (and b!1179404 (not res!783660)) b!1179407))

(assert (= (and b!1179407 (not res!783667)) b!1179415))

(assert (= (and b!1179415 res!783657) b!1179402))

(assert (= (and b!1179402 (not res!783669)) b!1179405))

(assert (= (and b!1179415 c!116831) b!1179401))

(assert (= (and b!1179415 (not c!116831)) b!1179408))

(assert (= (and b!1179415 res!783662) b!1179416))

(assert (= (and b!1179403 condMapEmpty!46382) mapIsEmpty!46382))

(assert (= (and b!1179403 (not condMapEmpty!46382)) mapNonEmpty!46382))

(get-info :version)

(assert (= (and mapNonEmpty!46382 ((_ is ValueCellFull!14142) mapValue!46382)) b!1179412))

(assert (= (and b!1179403 ((_ is ValueCellFull!14142) mapDefault!46382)) b!1179409))

(assert (= start!99630 b!1179403))

(declare-fun b_lambda!20335 () Bool)

(assert (=> (not b_lambda!20335) (not b!1179404)))

(declare-fun t!38143 () Bool)

(declare-fun tb!9993 () Bool)

(assert (=> (and start!99630 (= defaultEntry!1004 defaultEntry!1004) t!38143) tb!9993))

(declare-fun result!20545 () Bool)

(assert (=> tb!9993 (= result!20545 tp_is_empty!29703)))

(assert (=> b!1179404 t!38143))

(declare-fun b_and!41229 () Bool)

(assert (= b_and!41227 (and (=> t!38143 result!20545) b_and!41229)))

(declare-fun m!1087433 () Bool)

(assert (=> b!1179411 m!1087433))

(declare-fun m!1087435 () Bool)

(assert (=> b!1179404 m!1087435))

(declare-fun m!1087437 () Bool)

(assert (=> b!1179404 m!1087437))

(declare-fun m!1087439 () Bool)

(assert (=> b!1179404 m!1087439))

(declare-fun m!1087441 () Bool)

(assert (=> b!1179404 m!1087441))

(declare-fun m!1087443 () Bool)

(assert (=> start!99630 m!1087443))

(declare-fun m!1087445 () Bool)

(assert (=> start!99630 m!1087445))

(declare-fun m!1087447 () Bool)

(assert (=> b!1179417 m!1087447))

(declare-fun m!1087449 () Bool)

(assert (=> b!1179421 m!1087449))

(declare-fun m!1087451 () Bool)

(assert (=> b!1179421 m!1087451))

(declare-fun m!1087453 () Bool)

(assert (=> mapNonEmpty!46382 m!1087453))

(declare-fun m!1087455 () Bool)

(assert (=> b!1179405 m!1087455))

(declare-fun m!1087457 () Bool)

(assert (=> b!1179418 m!1087457))

(declare-fun m!1087459 () Bool)

(assert (=> b!1179420 m!1087459))

(declare-fun m!1087461 () Bool)

(assert (=> b!1179420 m!1087461))

(declare-fun m!1087463 () Bool)

(assert (=> b!1179401 m!1087463))

(declare-fun m!1087465 () Bool)

(assert (=> b!1179401 m!1087465))

(declare-fun m!1087467 () Bool)

(assert (=> b!1179401 m!1087467))

(declare-fun m!1087469 () Bool)

(assert (=> b!1179401 m!1087469))

(declare-fun m!1087471 () Bool)

(assert (=> b!1179401 m!1087471))

(declare-fun m!1087473 () Bool)

(assert (=> b!1179416 m!1087473))

(declare-fun m!1087475 () Bool)

(assert (=> b!1179419 m!1087475))

(declare-fun m!1087477 () Bool)

(assert (=> b!1179415 m!1087477))

(declare-fun m!1087479 () Bool)

(assert (=> b!1179415 m!1087479))

(declare-fun m!1087481 () Bool)

(assert (=> b!1179415 m!1087481))

(assert (=> b!1179415 m!1087481))

(declare-fun m!1087483 () Bool)

(assert (=> b!1179415 m!1087483))

(declare-fun m!1087485 () Bool)

(assert (=> b!1179407 m!1087485))

(declare-fun m!1087487 () Bool)

(assert (=> b!1179407 m!1087487))

(declare-fun m!1087489 () Bool)

(assert (=> b!1179407 m!1087489))

(declare-fun m!1087491 () Bool)

(assert (=> b!1179407 m!1087491))

(assert (=> b!1179407 m!1087477))

(declare-fun m!1087493 () Bool)

(assert (=> b!1179407 m!1087493))

(assert (=> b!1179407 m!1087477))

(declare-fun m!1087495 () Bool)

(assert (=> b!1179413 m!1087495))

(assert (=> b!1179402 m!1087477))

(declare-fun m!1087497 () Bool)

(assert (=> b!1179406 m!1087497))

(check-sat (not b!1179413) (not b!1179420) (not b!1179417) (not mapNonEmpty!46382) (not b!1179407) (not b!1179421) (not b!1179419) (not b!1179404) (not b!1179416) (not b!1179411) b_and!41229 tp_is_empty!29703 (not b!1179406) (not b!1179405) (not b!1179415) (not start!99630) (not b!1179401) (not b_lambda!20335) (not b_next!25173))
(check-sat b_and!41229 (not b_next!25173))
