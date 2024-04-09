; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98636 () Bool)

(assert start!98636)

(declare-fun b_free!24205 () Bool)

(declare-fun b_next!24205 () Bool)

(assert (=> start!98636 (= b_free!24205 (not b_next!24205))))

(declare-fun tp!85326 () Bool)

(declare-fun b_and!39273 () Bool)

(assert (=> start!98636 (= tp!85326 b_and!39273)))

(declare-datatypes ((V!43441 0))(
  ( (V!43442 (val!14424 Int)) )
))
(declare-fun zeroValue!944 () V!43441)

(declare-datatypes ((tuple2!18348 0))(
  ( (tuple2!18349 (_1!9184 (_ BitVec 64)) (_2!9184 V!43441)) )
))
(declare-datatypes ((List!25148 0))(
  ( (Nil!25145) (Cons!25144 (h!26353 tuple2!18348) (t!36352 List!25148)) )
))
(declare-datatypes ((ListLongMap!16329 0))(
  ( (ListLongMap!16330 (toList!8180 List!25148)) )
))
(declare-fun lt!510608 () ListLongMap!16329)

(declare-fun lt!510614 () ListLongMap!16329)

(declare-fun c!112651 () Bool)

(declare-fun call!52004 () ListLongMap!16329)

(declare-fun bm!51998 () Bool)

(declare-fun c!112655 () Bool)

(declare-fun minValue!944 () V!43441)

(declare-fun +!3524 (ListLongMap!16329 tuple2!18348) ListLongMap!16329)

(assert (=> bm!51998 (= call!52004 (+!3524 (ite c!112655 lt!510608 lt!510614) (ite c!112655 (tuple2!18349 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112651 (tuple2!18349 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18349 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-datatypes ((Unit!37493 0))(
  ( (Unit!37494) )
))
(declare-fun call!52002 () Unit!37493)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!51999 () Bool)

(declare-fun addStillContains!821 (ListLongMap!16329 (_ BitVec 64) V!43441 (_ BitVec 64)) Unit!37493)

(assert (=> bm!51999 (= call!52002 (addStillContains!821 lt!510614 (ite (or c!112655 c!112651) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112655 c!112651) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1144378 () Bool)

(declare-fun res!762335 () Bool)

(declare-fun e!651020 () Bool)

(assert (=> b!1144378 (=> (not res!762335) (not e!651020))))

(declare-datatypes ((array!74278 0))(
  ( (array!74279 (arr!35786 (Array (_ BitVec 32) (_ BitVec 64))) (size!36323 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74278)

(declare-datatypes ((List!25149 0))(
  ( (Nil!25146) (Cons!25145 (h!26354 (_ BitVec 64)) (t!36353 List!25149)) )
))
(declare-fun arrayNoDuplicates!0 (array!74278 (_ BitVec 32) List!25149) Bool)

(assert (=> b!1144378 (= res!762335 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25146))))

(declare-fun b!1144379 () Bool)

(declare-fun e!651014 () Unit!37493)

(declare-fun Unit!37495 () Unit!37493)

(assert (=> b!1144379 (= e!651014 Unit!37495)))

(declare-fun b!1144380 () Bool)

(declare-fun e!651028 () Bool)

(declare-fun e!651021 () Bool)

(assert (=> b!1144380 (= e!651028 e!651021)))

(declare-fun res!762326 () Bool)

(assert (=> b!1144380 (=> res!762326 e!651021)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1144380 (= res!762326 (not (= (select (arr!35786 _keys!1208) from!1455) k!934)))))

(declare-fun e!651019 () Bool)

(assert (=> b!1144380 e!651019))

(declare-fun c!112653 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1144380 (= c!112653 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!510609 () Unit!37493)

(declare-datatypes ((ValueCell!13658 0))(
  ( (ValueCellFull!13658 (v!17062 V!43441)) (EmptyCell!13658) )
))
(declare-datatypes ((array!74280 0))(
  ( (array!74281 (arr!35787 (Array (_ BitVec 32) ValueCell!13658)) (size!36324 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74280)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!527 (array!74278 array!74280 (_ BitVec 32) (_ BitVec 32) V!43441 V!43441 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37493)

(assert (=> b!1144380 (= lt!510609 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144382 () Bool)

(declare-fun res!762332 () Bool)

(assert (=> b!1144382 (=> (not res!762332) (not e!651020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144382 (= res!762332 (validMask!0 mask!1564))))

(declare-fun bm!52000 () Bool)

(declare-fun call!52006 () Unit!37493)

(assert (=> bm!52000 (= call!52006 call!52002)))

(declare-fun bm!52001 () Bool)

(declare-fun call!52003 () ListLongMap!16329)

(declare-fun call!52001 () Bool)

(declare-fun contains!6682 (ListLongMap!16329 (_ BitVec 64)) Bool)

(assert (=> bm!52001 (= call!52001 (contains!6682 (ite c!112655 lt!510608 call!52003) k!934))))

(declare-fun bm!52002 () Bool)

(declare-fun call!52007 () Bool)

(assert (=> bm!52002 (= call!52007 call!52001)))

(declare-fun b!1144383 () Bool)

(declare-fun e!651016 () Bool)

(declare-fun tp_is_empty!28735 () Bool)

(assert (=> b!1144383 (= e!651016 tp_is_empty!28735)))

(declare-fun b!1144384 () Bool)

(declare-fun e!651018 () Bool)

(declare-fun arrayContainsKey!0 (array!74278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144384 (= e!651018 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52003 () Bool)

(assert (=> bm!52003 (= call!52003 call!52004)))

(declare-fun b!1144385 () Bool)

(assert (=> b!1144385 (contains!6682 call!52004 k!934)))

(declare-fun lt!510599 () Unit!37493)

(assert (=> b!1144385 (= lt!510599 (addStillContains!821 lt!510608 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1144385 call!52001))

(assert (=> b!1144385 (= lt!510608 (+!3524 lt!510614 (tuple2!18349 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!510605 () Unit!37493)

(assert (=> b!1144385 (= lt!510605 call!52002)))

(declare-fun e!651015 () Unit!37493)

(assert (=> b!1144385 (= e!651015 lt!510599)))

(declare-fun lt!510601 () Bool)

(declare-fun b!1144386 () Bool)

(assert (=> b!1144386 (= e!651018 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510601) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1144387 () Bool)

(declare-fun res!762327 () Bool)

(assert (=> b!1144387 (=> (not res!762327) (not e!651020))))

(assert (=> b!1144387 (= res!762327 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36323 _keys!1208))))))

(declare-fun b!1144388 () Bool)

(declare-fun e!651029 () Bool)

(assert (=> b!1144388 (= e!651020 e!651029)))

(declare-fun res!762330 () Bool)

(assert (=> b!1144388 (=> (not res!762330) (not e!651029))))

(declare-fun lt!510607 () array!74278)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74278 (_ BitVec 32)) Bool)

(assert (=> b!1144388 (= res!762330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510607 mask!1564))))

(assert (=> b!1144388 (= lt!510607 (array!74279 (store (arr!35786 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36323 _keys!1208)))))

(declare-fun mapIsEmpty!44927 () Bool)

(declare-fun mapRes!44927 () Bool)

(assert (=> mapIsEmpty!44927 mapRes!44927))

(declare-fun lt!510595 () array!74280)

(declare-fun bm!52004 () Bool)

(declare-fun call!52008 () ListLongMap!16329)

(declare-fun getCurrentListMapNoExtraKeys!4622 (array!74278 array!74280 (_ BitVec 32) (_ BitVec 32) V!43441 V!43441 (_ BitVec 32) Int) ListLongMap!16329)

(assert (=> bm!52004 (= call!52008 (getCurrentListMapNoExtraKeys!4622 lt!510607 lt!510595 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144389 () Bool)

(declare-fun e!651022 () Unit!37493)

(declare-fun Unit!37496 () Unit!37493)

(assert (=> b!1144389 (= e!651022 Unit!37496)))

(declare-fun lt!510596 () ListLongMap!16329)

(declare-fun b!1144390 () Bool)

(declare-fun e!651025 () Bool)

(declare-fun -!1273 (ListLongMap!16329 (_ BitVec 64)) ListLongMap!16329)

(assert (=> b!1144390 (= e!651025 (= (-!1273 lt!510596 k!934) lt!510614))))

(declare-fun b!1144391 () Bool)

(declare-fun e!651030 () Bool)

(assert (=> b!1144391 (= e!651030 e!651028)))

(declare-fun res!762325 () Bool)

(assert (=> b!1144391 (=> res!762325 e!651028)))

(assert (=> b!1144391 (= res!762325 (not (= from!1455 i!673)))))

(declare-fun lt!510610 () ListLongMap!16329)

(assert (=> b!1144391 (= lt!510610 (getCurrentListMapNoExtraKeys!4622 lt!510607 lt!510595 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510604 () V!43441)

(assert (=> b!1144391 (= lt!510595 (array!74281 (store (arr!35787 _values!996) i!673 (ValueCellFull!13658 lt!510604)) (size!36324 _values!996)))))

(declare-fun dynLambda!2667 (Int (_ BitVec 64)) V!43441)

(assert (=> b!1144391 (= lt!510604 (dynLambda!2667 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1144391 (= lt!510596 (getCurrentListMapNoExtraKeys!4622 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1144392 () Bool)

(declare-fun res!762337 () Bool)

(assert (=> b!1144392 (=> (not res!762337) (not e!651020))))

(assert (=> b!1144392 (= res!762337 (= (select (arr!35786 _keys!1208) i!673) k!934))))

(declare-fun b!1144393 () Bool)

(assert (=> b!1144393 call!52007))

(declare-fun lt!510611 () Unit!37493)

(assert (=> b!1144393 (= lt!510611 call!52006)))

(assert (=> b!1144393 (= e!651014 lt!510611)))

(declare-fun b!1144394 () Bool)

(declare-fun res!762329 () Bool)

(assert (=> b!1144394 (=> (not res!762329) (not e!651020))))

(assert (=> b!1144394 (= res!762329 (and (= (size!36324 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36323 _keys!1208) (size!36324 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1144395 () Bool)

(declare-fun res!762331 () Bool)

(assert (=> b!1144395 (=> (not res!762331) (not e!651020))))

(assert (=> b!1144395 (= res!762331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144396 () Bool)

(declare-fun e!651026 () Unit!37493)

(assert (=> b!1144396 (= e!651026 e!651014)))

(declare-fun c!112652 () Bool)

(assert (=> b!1144396 (= c!112652 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510601))))

(declare-fun b!1144397 () Bool)

(declare-fun res!762328 () Bool)

(assert (=> b!1144397 (=> (not res!762328) (not e!651029))))

(assert (=> b!1144397 (= res!762328 (arrayNoDuplicates!0 lt!510607 #b00000000000000000000000000000000 Nil!25146))))

(declare-fun res!762338 () Bool)

(assert (=> start!98636 (=> (not res!762338) (not e!651020))))

(assert (=> start!98636 (= res!762338 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36323 _keys!1208))))))

(assert (=> start!98636 e!651020))

(assert (=> start!98636 tp_is_empty!28735))

(declare-fun array_inv!27298 (array!74278) Bool)

(assert (=> start!98636 (array_inv!27298 _keys!1208)))

(assert (=> start!98636 true))

(assert (=> start!98636 tp!85326))

(declare-fun e!651024 () Bool)

(declare-fun array_inv!27299 (array!74280) Bool)

(assert (=> start!98636 (and (array_inv!27299 _values!996) e!651024)))

(declare-fun b!1144381 () Bool)

(declare-fun Unit!37497 () Unit!37493)

(assert (=> b!1144381 (= e!651022 Unit!37497)))

(assert (=> b!1144381 (= lt!510601 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144381 (= c!112655 (and (not lt!510601) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510615 () Unit!37493)

(assert (=> b!1144381 (= lt!510615 e!651015)))

(declare-fun lt!510613 () Unit!37493)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!416 (array!74278 array!74280 (_ BitVec 32) (_ BitVec 32) V!43441 V!43441 (_ BitVec 64) (_ BitVec 32) Int) Unit!37493)

(assert (=> b!1144381 (= lt!510613 (lemmaListMapContainsThenArrayContainsFrom!416 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112656 () Bool)

(assert (=> b!1144381 (= c!112656 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762324 () Bool)

(assert (=> b!1144381 (= res!762324 e!651018)))

(declare-fun e!651023 () Bool)

(assert (=> b!1144381 (=> (not res!762324) (not e!651023))))

(assert (=> b!1144381 e!651023))

(declare-fun lt!510600 () Unit!37493)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74278 (_ BitVec 32) (_ BitVec 32)) Unit!37493)

(assert (=> b!1144381 (= lt!510600 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144381 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25146)))

(declare-fun lt!510602 () Unit!37493)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74278 (_ BitVec 64) (_ BitVec 32) List!25149) Unit!37493)

(assert (=> b!1144381 (= lt!510602 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25146))))

(assert (=> b!1144381 false))

(declare-fun b!1144398 () Bool)

(assert (=> b!1144398 (= e!651029 (not e!651030))))

(declare-fun res!762334 () Bool)

(assert (=> b!1144398 (=> res!762334 e!651030)))

(assert (=> b!1144398 (= res!762334 (bvsgt from!1455 i!673))))

(assert (=> b!1144398 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!510597 () Unit!37493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74278 (_ BitVec 64) (_ BitVec 32)) Unit!37493)

(assert (=> b!1144398 (= lt!510597 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1144399 () Bool)

(declare-fun call!52005 () ListLongMap!16329)

(assert (=> b!1144399 (= e!651019 (= call!52008 (-!1273 call!52005 k!934)))))

(declare-fun b!1144400 () Bool)

(assert (=> b!1144400 (= e!651021 true)))

(assert (=> b!1144400 e!651025))

(declare-fun res!762333 () Bool)

(assert (=> b!1144400 (=> (not res!762333) (not e!651025))))

(declare-fun lt!510612 () V!43441)

(assert (=> b!1144400 (= res!762333 (= (-!1273 (+!3524 lt!510614 (tuple2!18349 (select (arr!35786 _keys!1208) from!1455) lt!510612)) (select (arr!35786 _keys!1208) from!1455)) lt!510614))))

(declare-fun lt!510606 () Unit!37493)

(declare-fun addThenRemoveForNewKeyIsSame!128 (ListLongMap!16329 (_ BitVec 64) V!43441) Unit!37493)

(assert (=> b!1144400 (= lt!510606 (addThenRemoveForNewKeyIsSame!128 lt!510614 (select (arr!35786 _keys!1208) from!1455) lt!510612))))

(declare-fun get!18218 (ValueCell!13658 V!43441) V!43441)

(assert (=> b!1144400 (= lt!510612 (get!18218 (select (arr!35787 _values!996) from!1455) lt!510604))))

(declare-fun lt!510603 () Unit!37493)

(assert (=> b!1144400 (= lt!510603 e!651022)))

(declare-fun c!112654 () Bool)

(assert (=> b!1144400 (= c!112654 (contains!6682 lt!510614 k!934))))

(assert (=> b!1144400 (= lt!510614 (getCurrentListMapNoExtraKeys!4622 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52005 () Bool)

(assert (=> bm!52005 (= call!52005 (getCurrentListMapNoExtraKeys!4622 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44927 () Bool)

(declare-fun tp!85327 () Bool)

(declare-fun e!651017 () Bool)

(assert (=> mapNonEmpty!44927 (= mapRes!44927 (and tp!85327 e!651017))))

(declare-fun mapValue!44927 () ValueCell!13658)

(declare-fun mapKey!44927 () (_ BitVec 32))

(declare-fun mapRest!44927 () (Array (_ BitVec 32) ValueCell!13658))

(assert (=> mapNonEmpty!44927 (= (arr!35787 _values!996) (store mapRest!44927 mapKey!44927 mapValue!44927))))

(declare-fun b!1144401 () Bool)

(assert (=> b!1144401 (= e!651024 (and e!651016 mapRes!44927))))

(declare-fun condMapEmpty!44927 () Bool)

(declare-fun mapDefault!44927 () ValueCell!13658)

