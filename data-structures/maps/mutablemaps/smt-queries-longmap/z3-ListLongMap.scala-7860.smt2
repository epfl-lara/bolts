; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97942 () Bool)

(assert start!97942)

(declare-fun b_free!23607 () Bool)

(declare-fun b_next!23607 () Bool)

(assert (=> start!97942 (= b_free!23607 (not b_next!23607))))

(declare-fun tp!83525 () Bool)

(declare-fun b_and!38019 () Bool)

(assert (=> start!97942 (= tp!83525 b_and!38019)))

(declare-fun b!1121402 () Bool)

(declare-fun e!638536 () Bool)

(declare-fun tp_is_empty!28137 () Bool)

(assert (=> b!1121402 (= e!638536 tp_is_empty!28137)))

(declare-fun b!1121403 () Bool)

(declare-fun e!638543 () Bool)

(declare-fun e!638537 () Bool)

(assert (=> b!1121403 (= e!638543 e!638537)))

(declare-fun res!749243 () Bool)

(assert (=> b!1121403 (=> res!749243 e!638537)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121403 (= res!749243 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42643 0))(
  ( (V!42644 (val!14125 Int)) )
))
(declare-fun zeroValue!944 () V!42643)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13359 0))(
  ( (ValueCellFull!13359 (v!16759 V!42643)) (EmptyCell!13359) )
))
(declare-datatypes ((array!73100 0))(
  ( (array!73101 (arr!35199 (Array (_ BitVec 32) ValueCell!13359)) (size!35736 (_ BitVec 32))) )
))
(declare-fun lt!498332 () array!73100)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!73102 0))(
  ( (array!73103 (arr!35200 (Array (_ BitVec 32) (_ BitVec 64))) (size!35737 (_ BitVec 32))) )
))
(declare-fun lt!498334 () array!73102)

(declare-datatypes ((tuple2!17790 0))(
  ( (tuple2!17791 (_1!8905 (_ BitVec 64)) (_2!8905 V!42643)) )
))
(declare-datatypes ((List!24628 0))(
  ( (Nil!24625) (Cons!24624 (h!25833 tuple2!17790) (t!35234 List!24628)) )
))
(declare-datatypes ((ListLongMap!15771 0))(
  ( (ListLongMap!15772 (toList!7901 List!24628)) )
))
(declare-fun lt!498333 () ListLongMap!15771)

(declare-fun minValue!944 () V!42643)

(declare-fun getCurrentListMapNoExtraKeys!4362 (array!73102 array!73100 (_ BitVec 32) (_ BitVec 32) V!42643 V!42643 (_ BitVec 32) Int) ListLongMap!15771)

(assert (=> b!1121403 (= lt!498333 (getCurrentListMapNoExtraKeys!4362 lt!498334 lt!498332 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73100)

(declare-fun dynLambda!2461 (Int (_ BitVec 64)) V!42643)

(assert (=> b!1121403 (= lt!498332 (array!73101 (store (arr!35199 _values!996) i!673 (ValueCellFull!13359 (dynLambda!2461 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35736 _values!996)))))

(declare-fun _keys!1208 () array!73102)

(declare-fun lt!498331 () ListLongMap!15771)

(assert (=> b!1121403 (= lt!498331 (getCurrentListMapNoExtraKeys!4362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121404 () Bool)

(declare-fun res!749240 () Bool)

(declare-fun e!638542 () Bool)

(assert (=> b!1121404 (=> (not res!749240) (not e!638542))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121404 (= res!749240 (validKeyInArray!0 k0!934))))

(declare-fun b!1121405 () Bool)

(declare-fun e!638535 () Bool)

(assert (=> b!1121405 (= e!638542 e!638535)))

(declare-fun res!749239 () Bool)

(assert (=> b!1121405 (=> (not res!749239) (not e!638535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73102 (_ BitVec 32)) Bool)

(assert (=> b!1121405 (= res!749239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498334 mask!1564))))

(assert (=> b!1121405 (= lt!498334 (array!73103 (store (arr!35200 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35737 _keys!1208)))))

(declare-fun b!1121406 () Bool)

(declare-fun e!638541 () Bool)

(assert (=> b!1121406 (= e!638541 tp_is_empty!28137)))

(declare-fun res!749241 () Bool)

(assert (=> start!97942 (=> (not res!749241) (not e!638542))))

(assert (=> start!97942 (= res!749241 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35737 _keys!1208))))))

(assert (=> start!97942 e!638542))

(assert (=> start!97942 tp_is_empty!28137))

(declare-fun array_inv!26906 (array!73102) Bool)

(assert (=> start!97942 (array_inv!26906 _keys!1208)))

(assert (=> start!97942 true))

(assert (=> start!97942 tp!83525))

(declare-fun e!638539 () Bool)

(declare-fun array_inv!26907 (array!73100) Bool)

(assert (=> start!97942 (and (array_inv!26907 _values!996) e!638539)))

(declare-fun b!1121407 () Bool)

(declare-fun res!749248 () Bool)

(assert (=> b!1121407 (=> (not res!749248) (not e!638542))))

(assert (=> b!1121407 (= res!749248 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35737 _keys!1208))))))

(declare-fun b!1121408 () Bool)

(assert (=> b!1121408 (= e!638535 (not e!638543))))

(declare-fun res!749247 () Bool)

(assert (=> b!1121408 (=> res!749247 e!638543)))

(assert (=> b!1121408 (= res!749247 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121408 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36717 0))(
  ( (Unit!36718) )
))
(declare-fun lt!498335 () Unit!36717)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73102 (_ BitVec 64) (_ BitVec 32)) Unit!36717)

(assert (=> b!1121408 (= lt!498335 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1121409 () Bool)

(declare-fun res!749250 () Bool)

(assert (=> b!1121409 (=> (not res!749250) (not e!638542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121409 (= res!749250 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44023 () Bool)

(declare-fun mapRes!44023 () Bool)

(declare-fun tp!83526 () Bool)

(assert (=> mapNonEmpty!44023 (= mapRes!44023 (and tp!83526 e!638541))))

(declare-fun mapValue!44023 () ValueCell!13359)

(declare-fun mapKey!44023 () (_ BitVec 32))

(declare-fun mapRest!44023 () (Array (_ BitVec 32) ValueCell!13359))

(assert (=> mapNonEmpty!44023 (= (arr!35199 _values!996) (store mapRest!44023 mapKey!44023 mapValue!44023))))

(declare-fun mapIsEmpty!44023 () Bool)

(assert (=> mapIsEmpty!44023 mapRes!44023))

(declare-fun call!47104 () ListLongMap!15771)

(declare-fun b!1121410 () Bool)

(declare-fun e!638540 () Bool)

(declare-fun call!47105 () ListLongMap!15771)

(declare-fun -!1066 (ListLongMap!15771 (_ BitVec 64)) ListLongMap!15771)

(assert (=> b!1121410 (= e!638540 (= call!47104 (-!1066 call!47105 k0!934)))))

(declare-fun b!1121411 () Bool)

(declare-fun res!749249 () Bool)

(assert (=> b!1121411 (=> (not res!749249) (not e!638542))))

(assert (=> b!1121411 (= res!749249 (= (select (arr!35200 _keys!1208) i!673) k0!934))))

(declare-fun b!1121412 () Bool)

(assert (=> b!1121412 (= e!638540 (= call!47104 call!47105))))

(declare-fun b!1121413 () Bool)

(assert (=> b!1121413 (= e!638539 (and e!638536 mapRes!44023))))

(declare-fun condMapEmpty!44023 () Bool)

(declare-fun mapDefault!44023 () ValueCell!13359)

(assert (=> b!1121413 (= condMapEmpty!44023 (= (arr!35199 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13359)) mapDefault!44023)))))

(declare-fun b!1121414 () Bool)

(declare-fun res!749242 () Bool)

(assert (=> b!1121414 (=> (not res!749242) (not e!638542))))

(assert (=> b!1121414 (= res!749242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47101 () Bool)

(assert (=> bm!47101 (= call!47105 (getCurrentListMapNoExtraKeys!4362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121415 () Bool)

(declare-fun res!749245 () Bool)

(assert (=> b!1121415 (=> (not res!749245) (not e!638542))))

(assert (=> b!1121415 (= res!749245 (and (= (size!35736 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35737 _keys!1208) (size!35736 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121416 () Bool)

(declare-fun res!749244 () Bool)

(assert (=> b!1121416 (=> (not res!749244) (not e!638542))))

(declare-datatypes ((List!24629 0))(
  ( (Nil!24626) (Cons!24625 (h!25834 (_ BitVec 64)) (t!35235 List!24629)) )
))
(declare-fun arrayNoDuplicates!0 (array!73102 (_ BitVec 32) List!24629) Bool)

(assert (=> b!1121416 (= res!749244 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24626))))

(declare-fun b!1121417 () Bool)

(assert (=> b!1121417 (= e!638537 true)))

(assert (=> b!1121417 e!638540))

(declare-fun c!109361 () Bool)

(assert (=> b!1121417 (= c!109361 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498336 () Unit!36717)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!321 (array!73102 array!73100 (_ BitVec 32) (_ BitVec 32) V!42643 V!42643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36717)

(assert (=> b!1121417 (= lt!498336 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!321 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47102 () Bool)

(assert (=> bm!47102 (= call!47104 (getCurrentListMapNoExtraKeys!4362 lt!498334 lt!498332 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121418 () Bool)

(declare-fun res!749246 () Bool)

(assert (=> b!1121418 (=> (not res!749246) (not e!638535))))

(assert (=> b!1121418 (= res!749246 (arrayNoDuplicates!0 lt!498334 #b00000000000000000000000000000000 Nil!24626))))

(assert (= (and start!97942 res!749241) b!1121409))

(assert (= (and b!1121409 res!749250) b!1121415))

(assert (= (and b!1121415 res!749245) b!1121414))

(assert (= (and b!1121414 res!749242) b!1121416))

(assert (= (and b!1121416 res!749244) b!1121407))

(assert (= (and b!1121407 res!749248) b!1121404))

(assert (= (and b!1121404 res!749240) b!1121411))

(assert (= (and b!1121411 res!749249) b!1121405))

(assert (= (and b!1121405 res!749239) b!1121418))

(assert (= (and b!1121418 res!749246) b!1121408))

(assert (= (and b!1121408 (not res!749247)) b!1121403))

(assert (= (and b!1121403 (not res!749243)) b!1121417))

(assert (= (and b!1121417 c!109361) b!1121410))

(assert (= (and b!1121417 (not c!109361)) b!1121412))

(assert (= (or b!1121410 b!1121412) bm!47102))

(assert (= (or b!1121410 b!1121412) bm!47101))

(assert (= (and b!1121413 condMapEmpty!44023) mapIsEmpty!44023))

(assert (= (and b!1121413 (not condMapEmpty!44023)) mapNonEmpty!44023))

(get-info :version)

(assert (= (and mapNonEmpty!44023 ((_ is ValueCellFull!13359) mapValue!44023)) b!1121406))

(assert (= (and b!1121413 ((_ is ValueCellFull!13359) mapDefault!44023)) b!1121402))

(assert (= start!97942 b!1121413))

(declare-fun b_lambda!18611 () Bool)

(assert (=> (not b_lambda!18611) (not b!1121403)))

(declare-fun t!35233 () Bool)

(declare-fun tb!8427 () Bool)

(assert (=> (and start!97942 (= defaultEntry!1004 defaultEntry!1004) t!35233) tb!8427))

(declare-fun result!17407 () Bool)

(assert (=> tb!8427 (= result!17407 tp_is_empty!28137)))

(assert (=> b!1121403 t!35233))

(declare-fun b_and!38021 () Bool)

(assert (= b_and!38019 (and (=> t!35233 result!17407) b_and!38021)))

(declare-fun m!1036357 () Bool)

(assert (=> b!1121416 m!1036357))

(declare-fun m!1036359 () Bool)

(assert (=> b!1121404 m!1036359))

(declare-fun m!1036361 () Bool)

(assert (=> b!1121417 m!1036361))

(declare-fun m!1036363 () Bool)

(assert (=> b!1121405 m!1036363))

(declare-fun m!1036365 () Bool)

(assert (=> b!1121405 m!1036365))

(declare-fun m!1036367 () Bool)

(assert (=> b!1121418 m!1036367))

(declare-fun m!1036369 () Bool)

(assert (=> mapNonEmpty!44023 m!1036369))

(declare-fun m!1036371 () Bool)

(assert (=> start!97942 m!1036371))

(declare-fun m!1036373 () Bool)

(assert (=> start!97942 m!1036373))

(declare-fun m!1036375 () Bool)

(assert (=> b!1121410 m!1036375))

(declare-fun m!1036377 () Bool)

(assert (=> b!1121409 m!1036377))

(declare-fun m!1036379 () Bool)

(assert (=> bm!47102 m!1036379))

(declare-fun m!1036381 () Bool)

(assert (=> b!1121408 m!1036381))

(declare-fun m!1036383 () Bool)

(assert (=> b!1121408 m!1036383))

(declare-fun m!1036385 () Bool)

(assert (=> b!1121414 m!1036385))

(declare-fun m!1036387 () Bool)

(assert (=> b!1121403 m!1036387))

(declare-fun m!1036389 () Bool)

(assert (=> b!1121403 m!1036389))

(declare-fun m!1036391 () Bool)

(assert (=> b!1121403 m!1036391))

(declare-fun m!1036393 () Bool)

(assert (=> b!1121403 m!1036393))

(declare-fun m!1036395 () Bool)

(assert (=> b!1121411 m!1036395))

(declare-fun m!1036397 () Bool)

(assert (=> bm!47101 m!1036397))

(check-sat (not b!1121404) (not b!1121409) (not b_lambda!18611) (not mapNonEmpty!44023) (not b!1121414) (not b!1121408) (not b!1121410) (not bm!47102) (not bm!47101) (not b!1121418) tp_is_empty!28137 (not b_next!23607) (not b!1121417) b_and!38021 (not b!1121416) (not b!1121405) (not b!1121403) (not start!97942))
(check-sat b_and!38021 (not b_next!23607))
