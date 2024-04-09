; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98634 () Bool)

(assert start!98634)

(declare-fun b_free!24203 () Bool)

(declare-fun b_next!24203 () Bool)

(assert (=> start!98634 (= b_free!24203 (not b_next!24203))))

(declare-fun tp!85320 () Bool)

(declare-fun b_and!39269 () Bool)

(assert (=> start!98634 (= tp!85320 b_and!39269)))

(declare-fun b!1144286 () Bool)

(declare-datatypes ((Unit!37488 0))(
  ( (Unit!37489) )
))
(declare-fun e!650973 () Unit!37488)

(declare-fun Unit!37490 () Unit!37488)

(assert (=> b!1144286 (= e!650973 Unit!37490)))

(declare-fun b!1144287 () Bool)

(declare-fun e!650967 () Bool)

(declare-fun e!650978 () Bool)

(assert (=> b!1144287 (= e!650967 (not e!650978))))

(declare-fun res!762279 () Bool)

(assert (=> b!1144287 (=> res!762279 e!650978)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1144287 (= res!762279 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74274 0))(
  ( (array!74275 (arr!35784 (Array (_ BitVec 32) (_ BitVec 64))) (size!36321 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74274)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144287 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!510549 () Unit!37488)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74274 (_ BitVec 64) (_ BitVec 32)) Unit!37488)

(assert (=> b!1144287 (= lt!510549 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1144288 () Bool)

(declare-fun res!762289 () Bool)

(declare-fun e!650975 () Bool)

(assert (=> b!1144288 (=> (not res!762289) (not e!650975))))

(assert (=> b!1144288 (= res!762289 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36321 _keys!1208))))))

(declare-datatypes ((V!43437 0))(
  ( (V!43438 (val!14423 Int)) )
))
(declare-fun zeroValue!944 () V!43437)

(declare-fun bm!51974 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18346 0))(
  ( (tuple2!18347 (_1!9183 (_ BitVec 64)) (_2!9183 V!43437)) )
))
(declare-datatypes ((List!25146 0))(
  ( (Nil!25143) (Cons!25142 (h!26351 tuple2!18346) (t!36348 List!25146)) )
))
(declare-datatypes ((ListLongMap!16327 0))(
  ( (ListLongMap!16328 (toList!8179 List!25146)) )
))
(declare-fun call!51981 () ListLongMap!16327)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13657 0))(
  ( (ValueCellFull!13657 (v!17061 V!43437)) (EmptyCell!13657) )
))
(declare-datatypes ((array!74276 0))(
  ( (array!74277 (arr!35785 (Array (_ BitVec 32) ValueCell!13657)) (size!36322 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74276)

(declare-fun minValue!944 () V!43437)

(declare-fun getCurrentListMapNoExtraKeys!4621 (array!74274 array!74276 (_ BitVec 32) (_ BitVec 32) V!43437 V!43437 (_ BitVec 32) Int) ListLongMap!16327)

(assert (=> bm!51974 (= call!51981 (getCurrentListMapNoExtraKeys!4621 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144289 () Bool)

(declare-fun e!650974 () Unit!37488)

(declare-fun Unit!37491 () Unit!37488)

(assert (=> b!1144289 (= e!650974 Unit!37491)))

(declare-fun b!1144290 () Bool)

(declare-fun res!762287 () Bool)

(assert (=> b!1144290 (=> (not res!762287) (not e!650975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144290 (= res!762287 (validMask!0 mask!1564))))

(declare-fun e!650966 () Bool)

(declare-fun b!1144291 () Bool)

(declare-fun call!51979 () ListLongMap!16327)

(declare-fun -!1272 (ListLongMap!16327 (_ BitVec 64)) ListLongMap!16327)

(assert (=> b!1144291 (= e!650966 (= call!51979 (-!1272 call!51981 k!934)))))

(declare-fun b!1144292 () Bool)

(declare-fun call!51977 () Bool)

(assert (=> b!1144292 call!51977))

(declare-fun lt!510540 () Unit!37488)

(declare-fun call!51983 () Unit!37488)

(assert (=> b!1144292 (= lt!510540 call!51983)))

(assert (=> b!1144292 (= e!650974 lt!510540)))

(declare-fun call!51982 () Unit!37488)

(declare-fun c!112634 () Bool)

(declare-fun bm!51975 () Bool)

(declare-fun c!112636 () Bool)

(declare-fun lt!510547 () ListLongMap!16327)

(declare-fun addStillContains!820 (ListLongMap!16327 (_ BitVec 64) V!43437 (_ BitVec 64)) Unit!37488)

(assert (=> bm!51975 (= call!51982 (addStillContains!820 lt!510547 (ite (or c!112634 c!112636) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112634 c!112636) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1144293 () Bool)

(assert (=> b!1144293 (= e!650966 (= call!51979 call!51981))))

(declare-fun b!1144294 () Bool)

(declare-fun e!650979 () Bool)

(declare-fun tp_is_empty!28733 () Bool)

(assert (=> b!1144294 (= e!650979 tp_is_empty!28733)))

(declare-fun b!1144295 () Bool)

(declare-fun lt!510539 () ListLongMap!16327)

(declare-fun contains!6681 (ListLongMap!16327 (_ BitVec 64)) Bool)

(declare-fun +!3523 (ListLongMap!16327 tuple2!18346) ListLongMap!16327)

(assert (=> b!1144295 (contains!6681 (+!3523 lt!510539 (tuple2!18347 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!510542 () Unit!37488)

(assert (=> b!1144295 (= lt!510542 (addStillContains!820 lt!510539 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!51980 () Bool)

(assert (=> b!1144295 call!51980))

(declare-fun call!51978 () ListLongMap!16327)

(assert (=> b!1144295 (= lt!510539 call!51978)))

(declare-fun lt!510538 () Unit!37488)

(assert (=> b!1144295 (= lt!510538 call!51982)))

(declare-fun e!650970 () Unit!37488)

(assert (=> b!1144295 (= e!650970 lt!510542)))

(declare-fun b!1144296 () Bool)

(declare-fun res!762280 () Bool)

(assert (=> b!1144296 (=> (not res!762280) (not e!650975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74274 (_ BitVec 32)) Bool)

(assert (=> b!1144296 (= res!762280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144297 () Bool)

(declare-fun res!762291 () Bool)

(assert (=> b!1144297 (=> (not res!762291) (not e!650975))))

(declare-datatypes ((List!25147 0))(
  ( (Nil!25144) (Cons!25143 (h!26352 (_ BitVec 64)) (t!36349 List!25147)) )
))
(declare-fun arrayNoDuplicates!0 (array!74274 (_ BitVec 32) List!25147) Bool)

(assert (=> b!1144297 (= res!762291 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25144))))

(declare-fun b!1144298 () Bool)

(declare-fun e!650969 () Unit!37488)

(declare-fun lt!510544 () Unit!37488)

(assert (=> b!1144298 (= e!650969 lt!510544)))

(assert (=> b!1144298 (= lt!510544 call!51983)))

(assert (=> b!1144298 call!51977))

(declare-fun lt!510543 () array!74274)

(declare-fun bm!51976 () Bool)

(declare-fun lt!510536 () array!74276)

(assert (=> bm!51976 (= call!51979 (getCurrentListMapNoExtraKeys!4621 lt!510543 lt!510536 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144299 () Bool)

(declare-fun res!762284 () Bool)

(assert (=> b!1144299 (=> (not res!762284) (not e!650975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1144299 (= res!762284 (validKeyInArray!0 k!934))))

(declare-fun b!1144300 () Bool)

(declare-fun lt!510548 () Bool)

(declare-fun e!650977 () Bool)

(assert (=> b!1144300 (= e!650977 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510548) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1144301 () Bool)

(declare-fun e!650963 () Bool)

(assert (=> b!1144301 (= e!650963 true)))

(declare-fun e!650972 () Bool)

(assert (=> b!1144301 e!650972))

(declare-fun res!762293 () Bool)

(assert (=> b!1144301 (=> (not res!762293) (not e!650972))))

(declare-fun lt!510552 () V!43437)

(assert (=> b!1144301 (= res!762293 (= (-!1272 (+!3523 lt!510547 (tuple2!18347 (select (arr!35784 _keys!1208) from!1455) lt!510552)) (select (arr!35784 _keys!1208) from!1455)) lt!510547))))

(declare-fun lt!510551 () Unit!37488)

(declare-fun addThenRemoveForNewKeyIsSame!127 (ListLongMap!16327 (_ BitVec 64) V!43437) Unit!37488)

(assert (=> b!1144301 (= lt!510551 (addThenRemoveForNewKeyIsSame!127 lt!510547 (select (arr!35784 _keys!1208) from!1455) lt!510552))))

(declare-fun lt!510550 () V!43437)

(declare-fun get!18215 (ValueCell!13657 V!43437) V!43437)

(assert (=> b!1144301 (= lt!510552 (get!18215 (select (arr!35785 _values!996) from!1455) lt!510550))))

(declare-fun lt!510535 () Unit!37488)

(assert (=> b!1144301 (= lt!510535 e!650973)))

(declare-fun c!112638 () Bool)

(assert (=> b!1144301 (= c!112638 (contains!6681 lt!510547 k!934))))

(assert (=> b!1144301 (= lt!510547 (getCurrentListMapNoExtraKeys!4621 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51977 () Bool)

(assert (=> bm!51977 (= call!51977 call!51980)))

(declare-fun b!1144302 () Bool)

(declare-fun res!762281 () Bool)

(assert (=> b!1144302 (=> (not res!762281) (not e!650975))))

(assert (=> b!1144302 (= res!762281 (= (select (arr!35784 _keys!1208) i!673) k!934))))

(declare-fun res!762286 () Bool)

(assert (=> start!98634 (=> (not res!762286) (not e!650975))))

(assert (=> start!98634 (= res!762286 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36321 _keys!1208))))))

(assert (=> start!98634 e!650975))

(assert (=> start!98634 tp_is_empty!28733))

(declare-fun array_inv!27296 (array!74274) Bool)

(assert (=> start!98634 (array_inv!27296 _keys!1208)))

(assert (=> start!98634 true))

(assert (=> start!98634 tp!85320))

(declare-fun e!650971 () Bool)

(declare-fun array_inv!27297 (array!74276) Bool)

(assert (=> start!98634 (and (array_inv!27297 _values!996) e!650971)))

(declare-fun b!1144303 () Bool)

(assert (=> b!1144303 (= c!112636 (and (not lt!510548) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1144303 (= e!650970 e!650969)))

(declare-fun mapNonEmpty!44924 () Bool)

(declare-fun mapRes!44924 () Bool)

(declare-fun tp!85321 () Bool)

(declare-fun e!650965 () Bool)

(assert (=> mapNonEmpty!44924 (= mapRes!44924 (and tp!85321 e!650965))))

(declare-fun mapRest!44924 () (Array (_ BitVec 32) ValueCell!13657))

(declare-fun mapValue!44924 () ValueCell!13657)

(declare-fun mapKey!44924 () (_ BitVec 32))

(assert (=> mapNonEmpty!44924 (= (arr!35785 _values!996) (store mapRest!44924 mapKey!44924 mapValue!44924))))

(declare-fun b!1144304 () Bool)

(declare-fun e!650968 () Bool)

(assert (=> b!1144304 (= e!650978 e!650968)))

(declare-fun res!762285 () Bool)

(assert (=> b!1144304 (=> res!762285 e!650968)))

(assert (=> b!1144304 (= res!762285 (not (= from!1455 i!673)))))

(declare-fun lt!510546 () ListLongMap!16327)

(assert (=> b!1144304 (= lt!510546 (getCurrentListMapNoExtraKeys!4621 lt!510543 lt!510536 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1144304 (= lt!510536 (array!74277 (store (arr!35785 _values!996) i!673 (ValueCellFull!13657 lt!510550)) (size!36322 _values!996)))))

(declare-fun dynLambda!2666 (Int (_ BitVec 64)) V!43437)

(assert (=> b!1144304 (= lt!510550 (dynLambda!2666 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!510537 () ListLongMap!16327)

(assert (=> b!1144304 (= lt!510537 (getCurrentListMapNoExtraKeys!4621 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1144305 () Bool)

(assert (=> b!1144305 (= e!650972 (= (-!1272 lt!510537 k!934) lt!510547))))

(declare-fun b!1144306 () Bool)

(declare-fun e!650976 () Bool)

(assert (=> b!1144306 (= e!650976 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144307 () Bool)

(declare-fun Unit!37492 () Unit!37488)

(assert (=> b!1144307 (= e!650973 Unit!37492)))

(assert (=> b!1144307 (= lt!510548 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144307 (= c!112634 (and (not lt!510548) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510532 () Unit!37488)

(assert (=> b!1144307 (= lt!510532 e!650970)))

(declare-fun lt!510541 () Unit!37488)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!415 (array!74274 array!74276 (_ BitVec 32) (_ BitVec 32) V!43437 V!43437 (_ BitVec 64) (_ BitVec 32) Int) Unit!37488)

(assert (=> b!1144307 (= lt!510541 (lemmaListMapContainsThenArrayContainsFrom!415 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112633 () Bool)

(assert (=> b!1144307 (= c!112633 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762290 () Bool)

(assert (=> b!1144307 (= res!762290 e!650977)))

(assert (=> b!1144307 (=> (not res!762290) (not e!650976))))

(assert (=> b!1144307 e!650976))

(declare-fun lt!510545 () Unit!37488)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74274 (_ BitVec 32) (_ BitVec 32)) Unit!37488)

(assert (=> b!1144307 (= lt!510545 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144307 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25144)))

(declare-fun lt!510533 () Unit!37488)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74274 (_ BitVec 64) (_ BitVec 32) List!25147) Unit!37488)

(assert (=> b!1144307 (= lt!510533 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25144))))

(assert (=> b!1144307 false))

(declare-fun bm!51978 () Bool)

(assert (=> bm!51978 (= call!51983 call!51982)))

(declare-fun b!1144308 () Bool)

(assert (=> b!1144308 (= e!650977 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144309 () Bool)

(assert (=> b!1144309 (= e!650975 e!650967)))

(declare-fun res!762283 () Bool)

(assert (=> b!1144309 (=> (not res!762283) (not e!650967))))

(assert (=> b!1144309 (= res!762283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510543 mask!1564))))

(assert (=> b!1144309 (= lt!510543 (array!74275 (store (arr!35784 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36321 _keys!1208)))))

(declare-fun b!1144310 () Bool)

(assert (=> b!1144310 (= e!650971 (and e!650979 mapRes!44924))))

(declare-fun condMapEmpty!44924 () Bool)

(declare-fun mapDefault!44924 () ValueCell!13657)

