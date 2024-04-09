; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99570 () Bool)

(assert start!99570)

(declare-fun b_free!25113 () Bool)

(declare-fun b_next!25113 () Bool)

(assert (=> start!99570 (= b_free!25113 (not b_next!25113))))

(declare-fun tp!88053 () Bool)

(declare-fun b_and!41107 () Bool)

(assert (=> start!99570 (= tp!88053 b_and!41107)))

(declare-fun b!1177451 () Bool)

(declare-fun res!782217 () Bool)

(declare-fun e!669386 () Bool)

(assert (=> b!1177451 (=> (not res!782217) (not e!669386))))

(declare-datatypes ((array!76060 0))(
  ( (array!76061 (arr!36676 (Array (_ BitVec 32) (_ BitVec 64))) (size!37213 (_ BitVec 32))) )
))
(declare-fun lt!531664 () array!76060)

(declare-datatypes ((List!25919 0))(
  ( (Nil!25916) (Cons!25915 (h!27124 (_ BitVec 64)) (t!38031 List!25919)) )
))
(declare-fun arrayNoDuplicates!0 (array!76060 (_ BitVec 32) List!25919) Bool)

(assert (=> b!1177451 (= res!782217 (arrayNoDuplicates!0 lt!531664 #b00000000000000000000000000000000 Nil!25916))))

(declare-fun b!1177452 () Bool)

(declare-fun e!669389 () Bool)

(assert (=> b!1177452 (= e!669386 (not e!669389))))

(declare-fun res!782229 () Bool)

(assert (=> b!1177452 (=> res!782229 e!669389)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177452 (= res!782229 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!76060)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177452 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38822 0))(
  ( (Unit!38823) )
))
(declare-fun lt!531660 () Unit!38822)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76060 (_ BitVec 64) (_ BitVec 32)) Unit!38822)

(assert (=> b!1177452 (= lt!531660 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177453 () Bool)

(declare-fun e!669383 () Bool)

(assert (=> b!1177453 (= e!669389 e!669383)))

(declare-fun res!782220 () Bool)

(assert (=> b!1177453 (=> res!782220 e!669383)))

(assert (=> b!1177453 (= res!782220 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44651 0))(
  ( (V!44652 (val!14878 Int)) )
))
(declare-fun zeroValue!944 () V!44651)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14112 0))(
  ( (ValueCellFull!14112 (v!17517 V!44651)) (EmptyCell!14112) )
))
(declare-datatypes ((array!76062 0))(
  ( (array!76063 (arr!36677 (Array (_ BitVec 32) ValueCell!14112)) (size!37214 (_ BitVec 32))) )
))
(declare-fun lt!531659 () array!76062)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19152 0))(
  ( (tuple2!19153 (_1!9586 (_ BitVec 64)) (_2!9586 V!44651)) )
))
(declare-datatypes ((List!25920 0))(
  ( (Nil!25917) (Cons!25916 (h!27125 tuple2!19152) (t!38032 List!25920)) )
))
(declare-datatypes ((ListLongMap!17133 0))(
  ( (ListLongMap!17134 (toList!8582 List!25920)) )
))
(declare-fun lt!531661 () ListLongMap!17133)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44651)

(declare-fun getCurrentListMapNoExtraKeys!5013 (array!76060 array!76062 (_ BitVec 32) (_ BitVec 32) V!44651 V!44651 (_ BitVec 32) Int) ListLongMap!17133)

(assert (=> b!1177453 (= lt!531661 (getCurrentListMapNoExtraKeys!5013 lt!531664 lt!531659 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76062)

(declare-fun lt!531662 () V!44651)

(assert (=> b!1177453 (= lt!531659 (array!76063 (store (arr!36677 _values!996) i!673 (ValueCellFull!14112 lt!531662)) (size!37214 _values!996)))))

(declare-fun dynLambda!2989 (Int (_ BitVec 64)) V!44651)

(assert (=> b!1177453 (= lt!531662 (dynLambda!2989 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531669 () ListLongMap!17133)

(assert (=> b!1177453 (= lt!531669 (getCurrentListMapNoExtraKeys!5013 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177454 () Bool)

(declare-fun e!669394 () Unit!38822)

(declare-fun Unit!38824 () Unit!38822)

(assert (=> b!1177454 (= e!669394 Unit!38824)))

(declare-fun b!1177455 () Bool)

(declare-fun e!669393 () Bool)

(declare-fun e!669384 () Bool)

(declare-fun mapRes!46292 () Bool)

(assert (=> b!1177455 (= e!669393 (and e!669384 mapRes!46292))))

(declare-fun condMapEmpty!46292 () Bool)

(declare-fun mapDefault!46292 () ValueCell!14112)

(assert (=> b!1177455 (= condMapEmpty!46292 (= (arr!36677 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14112)) mapDefault!46292)))))

(declare-fun res!782218 () Bool)

(declare-fun e!669388 () Bool)

(assert (=> start!99570 (=> (not res!782218) (not e!669388))))

(assert (=> start!99570 (= res!782218 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37213 _keys!1208))))))

(assert (=> start!99570 e!669388))

(declare-fun tp_is_empty!29643 () Bool)

(assert (=> start!99570 tp_is_empty!29643))

(declare-fun array_inv!27898 (array!76060) Bool)

(assert (=> start!99570 (array_inv!27898 _keys!1208)))

(assert (=> start!99570 true))

(assert (=> start!99570 tp!88053))

(declare-fun array_inv!27899 (array!76062) Bool)

(assert (=> start!99570 (and (array_inv!27899 _values!996) e!669393)))

(declare-fun b!1177456 () Bool)

(declare-fun res!782215 () Bool)

(assert (=> b!1177456 (=> (not res!782215) (not e!669388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76060 (_ BitVec 32)) Bool)

(assert (=> b!1177456 (= res!782215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177457 () Bool)

(declare-fun e!669385 () Bool)

(assert (=> b!1177457 (= e!669385 true)))

(declare-fun e!669392 () Bool)

(assert (=> b!1177457 e!669392))

(declare-fun res!782225 () Bool)

(assert (=> b!1177457 (=> (not res!782225) (not e!669392))))

(assert (=> b!1177457 (= res!782225 (not (= (select (arr!36676 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!531655 () Unit!38822)

(assert (=> b!1177457 (= lt!531655 e!669394)))

(declare-fun c!116741 () Bool)

(assert (=> b!1177457 (= c!116741 (= (select (arr!36676 _keys!1208) from!1455) k0!934))))

(declare-fun e!669382 () Bool)

(assert (=> b!1177457 e!669382))

(declare-fun res!782228 () Bool)

(assert (=> b!1177457 (=> (not res!782228) (not e!669382))))

(declare-fun lt!531657 () ListLongMap!17133)

(declare-fun lt!531656 () tuple2!19152)

(declare-fun +!3805 (ListLongMap!17133 tuple2!19152) ListLongMap!17133)

(assert (=> b!1177457 (= res!782228 (= lt!531661 (+!3805 lt!531657 lt!531656)))))

(declare-fun get!18775 (ValueCell!14112 V!44651) V!44651)

(assert (=> b!1177457 (= lt!531656 (tuple2!19153 (select (arr!36676 _keys!1208) from!1455) (get!18775 (select (arr!36677 _values!996) from!1455) lt!531662)))))

(declare-fun e!669387 () Bool)

(declare-fun b!1177458 () Bool)

(assert (=> b!1177458 (= e!669387 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46292 () Bool)

(assert (=> mapIsEmpty!46292 mapRes!46292))

(declare-fun b!1177459 () Bool)

(declare-fun res!782230 () Bool)

(assert (=> b!1177459 (=> (not res!782230) (not e!669388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177459 (= res!782230 (validKeyInArray!0 k0!934))))

(declare-fun b!1177460 () Bool)

(declare-fun e!669391 () Bool)

(assert (=> b!1177460 (= e!669391 tp_is_empty!29643)))

(declare-fun b!1177461 () Bool)

(declare-fun res!782224 () Bool)

(assert (=> b!1177461 (=> (not res!782224) (not e!669388))))

(assert (=> b!1177461 (= res!782224 (and (= (size!37214 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37213 _keys!1208) (size!37214 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177462 () Bool)

(declare-fun res!782223 () Bool)

(assert (=> b!1177462 (=> (not res!782223) (not e!669388))))

(assert (=> b!1177462 (= res!782223 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25916))))

(declare-fun b!1177463 () Bool)

(assert (=> b!1177463 (= e!669382 e!669387)))

(declare-fun res!782222 () Bool)

(assert (=> b!1177463 (=> res!782222 e!669387)))

(assert (=> b!1177463 (= res!782222 (not (= (select (arr!36676 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1177464 () Bool)

(declare-fun res!782221 () Bool)

(assert (=> b!1177464 (=> (not res!782221) (not e!669388))))

(assert (=> b!1177464 (= res!782221 (= (select (arr!36676 _keys!1208) i!673) k0!934))))

(declare-fun b!1177465 () Bool)

(declare-fun res!782216 () Bool)

(assert (=> b!1177465 (=> (not res!782216) (not e!669388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177465 (= res!782216 (validMask!0 mask!1564))))

(declare-fun lt!531665 () ListLongMap!17133)

(declare-fun b!1177466 () Bool)

(assert (=> b!1177466 (= e!669392 (= lt!531669 (+!3805 lt!531665 lt!531656)))))

(declare-fun b!1177467 () Bool)

(assert (=> b!1177467 (= e!669388 e!669386)))

(declare-fun res!782227 () Bool)

(assert (=> b!1177467 (=> (not res!782227) (not e!669386))))

(assert (=> b!1177467 (= res!782227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531664 mask!1564))))

(assert (=> b!1177467 (= lt!531664 (array!76061 (store (arr!36676 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37213 _keys!1208)))))

(declare-fun mapNonEmpty!46292 () Bool)

(declare-fun tp!88054 () Bool)

(assert (=> mapNonEmpty!46292 (= mapRes!46292 (and tp!88054 e!669391))))

(declare-fun mapRest!46292 () (Array (_ BitVec 32) ValueCell!14112))

(declare-fun mapValue!46292 () ValueCell!14112)

(declare-fun mapKey!46292 () (_ BitVec 32))

(assert (=> mapNonEmpty!46292 (= (arr!36677 _values!996) (store mapRest!46292 mapKey!46292 mapValue!46292))))

(declare-fun b!1177468 () Bool)

(assert (=> b!1177468 (= e!669384 tp_is_empty!29643)))

(declare-fun b!1177469 () Bool)

(declare-fun res!782226 () Bool)

(assert (=> b!1177469 (=> (not res!782226) (not e!669388))))

(assert (=> b!1177469 (= res!782226 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37213 _keys!1208))))))

(declare-fun b!1177470 () Bool)

(declare-fun Unit!38825 () Unit!38822)

(assert (=> b!1177470 (= e!669394 Unit!38825)))

(declare-fun lt!531667 () Unit!38822)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76060 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38822)

(assert (=> b!1177470 (= lt!531667 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177470 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531663 () Unit!38822)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76060 (_ BitVec 32) (_ BitVec 32)) Unit!38822)

(assert (=> b!1177470 (= lt!531663 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177470 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25916)))

(declare-fun lt!531668 () Unit!38822)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76060 (_ BitVec 64) (_ BitVec 32) List!25919) Unit!38822)

(assert (=> b!1177470 (= lt!531668 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25916))))

(assert (=> b!1177470 false))

(declare-fun b!1177471 () Bool)

(assert (=> b!1177471 (= e!669383 e!669385)))

(declare-fun res!782219 () Bool)

(assert (=> b!1177471 (=> res!782219 e!669385)))

(assert (=> b!1177471 (= res!782219 (not (validKeyInArray!0 (select (arr!36676 _keys!1208) from!1455))))))

(declare-fun lt!531658 () ListLongMap!17133)

(assert (=> b!1177471 (= lt!531658 lt!531657)))

(declare-fun -!1584 (ListLongMap!17133 (_ BitVec 64)) ListLongMap!17133)

(assert (=> b!1177471 (= lt!531657 (-!1584 lt!531665 k0!934))))

(assert (=> b!1177471 (= lt!531658 (getCurrentListMapNoExtraKeys!5013 lt!531664 lt!531659 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177471 (= lt!531665 (getCurrentListMapNoExtraKeys!5013 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531666 () Unit!38822)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!808 (array!76060 array!76062 (_ BitVec 32) (_ BitVec 32) V!44651 V!44651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38822)

(assert (=> b!1177471 (= lt!531666 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!808 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99570 res!782218) b!1177465))

(assert (= (and b!1177465 res!782216) b!1177461))

(assert (= (and b!1177461 res!782224) b!1177456))

(assert (= (and b!1177456 res!782215) b!1177462))

(assert (= (and b!1177462 res!782223) b!1177469))

(assert (= (and b!1177469 res!782226) b!1177459))

(assert (= (and b!1177459 res!782230) b!1177464))

(assert (= (and b!1177464 res!782221) b!1177467))

(assert (= (and b!1177467 res!782227) b!1177451))

(assert (= (and b!1177451 res!782217) b!1177452))

(assert (= (and b!1177452 (not res!782229)) b!1177453))

(assert (= (and b!1177453 (not res!782220)) b!1177471))

(assert (= (and b!1177471 (not res!782219)) b!1177457))

(assert (= (and b!1177457 res!782228) b!1177463))

(assert (= (and b!1177463 (not res!782222)) b!1177458))

(assert (= (and b!1177457 c!116741) b!1177470))

(assert (= (and b!1177457 (not c!116741)) b!1177454))

(assert (= (and b!1177457 res!782225) b!1177466))

(assert (= (and b!1177455 condMapEmpty!46292) mapIsEmpty!46292))

(assert (= (and b!1177455 (not condMapEmpty!46292)) mapNonEmpty!46292))

(get-info :version)

(assert (= (and mapNonEmpty!46292 ((_ is ValueCellFull!14112) mapValue!46292)) b!1177460))

(assert (= (and b!1177455 ((_ is ValueCellFull!14112) mapDefault!46292)) b!1177468))

(assert (= start!99570 b!1177455))

(declare-fun b_lambda!20275 () Bool)

(assert (=> (not b_lambda!20275) (not b!1177453)))

(declare-fun t!38030 () Bool)

(declare-fun tb!9933 () Bool)

(assert (=> (and start!99570 (= defaultEntry!1004 defaultEntry!1004) t!38030) tb!9933))

(declare-fun result!20425 () Bool)

(assert (=> tb!9933 (= result!20425 tp_is_empty!29643)))

(assert (=> b!1177453 t!38030))

(declare-fun b_and!41109 () Bool)

(assert (= b_and!41107 (and (=> t!38030 result!20425) b_and!41109)))

(declare-fun m!1085453 () Bool)

(assert (=> b!1177452 m!1085453))

(declare-fun m!1085455 () Bool)

(assert (=> b!1177452 m!1085455))

(declare-fun m!1085457 () Bool)

(assert (=> b!1177456 m!1085457))

(declare-fun m!1085459 () Bool)

(assert (=> b!1177453 m!1085459))

(declare-fun m!1085461 () Bool)

(assert (=> b!1177453 m!1085461))

(declare-fun m!1085463 () Bool)

(assert (=> b!1177453 m!1085463))

(declare-fun m!1085465 () Bool)

(assert (=> b!1177453 m!1085465))

(declare-fun m!1085467 () Bool)

(assert (=> b!1177465 m!1085467))

(declare-fun m!1085469 () Bool)

(assert (=> b!1177470 m!1085469))

(declare-fun m!1085471 () Bool)

(assert (=> b!1177470 m!1085471))

(declare-fun m!1085473 () Bool)

(assert (=> b!1177470 m!1085473))

(declare-fun m!1085475 () Bool)

(assert (=> b!1177470 m!1085475))

(declare-fun m!1085477 () Bool)

(assert (=> b!1177470 m!1085477))

(declare-fun m!1085479 () Bool)

(assert (=> b!1177451 m!1085479))

(declare-fun m!1085481 () Bool)

(assert (=> b!1177462 m!1085481))

(declare-fun m!1085483 () Bool)

(assert (=> b!1177467 m!1085483))

(declare-fun m!1085485 () Bool)

(assert (=> b!1177467 m!1085485))

(declare-fun m!1085487 () Bool)

(assert (=> b!1177459 m!1085487))

(declare-fun m!1085489 () Bool)

(assert (=> b!1177458 m!1085489))

(declare-fun m!1085491 () Bool)

(assert (=> b!1177466 m!1085491))

(declare-fun m!1085493 () Bool)

(assert (=> b!1177471 m!1085493))

(declare-fun m!1085495 () Bool)

(assert (=> b!1177471 m!1085495))

(declare-fun m!1085497 () Bool)

(assert (=> b!1177471 m!1085497))

(declare-fun m!1085499 () Bool)

(assert (=> b!1177471 m!1085499))

(declare-fun m!1085501 () Bool)

(assert (=> b!1177471 m!1085501))

(declare-fun m!1085503 () Bool)

(assert (=> b!1177471 m!1085503))

(assert (=> b!1177471 m!1085501))

(declare-fun m!1085505 () Bool)

(assert (=> mapNonEmpty!46292 m!1085505))

(declare-fun m!1085507 () Bool)

(assert (=> start!99570 m!1085507))

(declare-fun m!1085509 () Bool)

(assert (=> start!99570 m!1085509))

(declare-fun m!1085511 () Bool)

(assert (=> b!1177464 m!1085511))

(assert (=> b!1177457 m!1085501))

(declare-fun m!1085513 () Bool)

(assert (=> b!1177457 m!1085513))

(declare-fun m!1085515 () Bool)

(assert (=> b!1177457 m!1085515))

(assert (=> b!1177457 m!1085515))

(declare-fun m!1085517 () Bool)

(assert (=> b!1177457 m!1085517))

(assert (=> b!1177463 m!1085501))

(check-sat (not b!1177470) (not b!1177459) (not b!1177466) (not b!1177462) tp_is_empty!29643 (not b!1177458) b_and!41109 (not mapNonEmpty!46292) (not b!1177456) (not b!1177453) (not b!1177467) (not b!1177457) (not b!1177452) (not start!99570) (not b!1177451) (not b!1177471) (not b_lambda!20275) (not b!1177465) (not b_next!25113))
(check-sat b_and!41109 (not b_next!25113))
