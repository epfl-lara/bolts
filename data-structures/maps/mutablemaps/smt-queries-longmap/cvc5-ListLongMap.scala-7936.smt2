; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98492 () Bool)

(assert start!98492)

(declare-fun b_free!24061 () Bool)

(declare-fun b_next!24061 () Bool)

(assert (=> start!98492 (= b_free!24061 (not b_next!24061))))

(declare-fun tp!84894 () Bool)

(declare-fun b_and!38985 () Bool)

(assert (=> start!98492 (= tp!84894 b_and!38985)))

(declare-fun b!1137959 () Bool)

(declare-datatypes ((Unit!37228 0))(
  ( (Unit!37229) )
))
(declare-fun e!647557 () Unit!37228)

(declare-fun Unit!37230 () Unit!37228)

(assert (=> b!1137959 (= e!647557 Unit!37230)))

(declare-fun b!1137960 () Bool)

(declare-fun e!647562 () Unit!37228)

(declare-fun Unit!37231 () Unit!37228)

(assert (=> b!1137960 (= e!647562 Unit!37231)))

(declare-fun b!1137961 () Bool)

(declare-fun e!647550 () Bool)

(assert (=> b!1137961 (= e!647550 true)))

(declare-fun lt!506180 () Unit!37228)

(assert (=> b!1137961 (= lt!506180 e!647562)))

(declare-fun c!111356 () Bool)

(declare-datatypes ((V!43249 0))(
  ( (V!43250 (val!14352 Int)) )
))
(declare-datatypes ((tuple2!18220 0))(
  ( (tuple2!18221 (_1!9120 (_ BitVec 64)) (_2!9120 V!43249)) )
))
(declare-datatypes ((List!25026 0))(
  ( (Nil!25023) (Cons!25022 (h!26231 tuple2!18220) (t!36086 List!25026)) )
))
(declare-datatypes ((ListLongMap!16201 0))(
  ( (ListLongMap!16202 (toList!8116 List!25026)) )
))
(declare-fun lt!506182 () ListLongMap!16201)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6626 (ListLongMap!16201 (_ BitVec 64)) Bool)

(assert (=> b!1137961 (= c!111356 (contains!6626 lt!506182 k!934))))

(declare-fun zeroValue!944 () V!43249)

(declare-datatypes ((array!74000 0))(
  ( (array!74001 (arr!35647 (Array (_ BitVec 32) (_ BitVec 64))) (size!36184 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74000)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13586 0))(
  ( (ValueCellFull!13586 (v!16990 V!43249)) (EmptyCell!13586) )
))
(declare-datatypes ((array!74002 0))(
  ( (array!74003 (arr!35648 (Array (_ BitVec 32) ValueCell!13586)) (size!36185 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74002)

(declare-fun minValue!944 () V!43249)

(declare-fun getCurrentListMapNoExtraKeys!4563 (array!74000 array!74002 (_ BitVec 32) (_ BitVec 32) V!43249 V!43249 (_ BitVec 32) Int) ListLongMap!16201)

(assert (=> b!1137961 (= lt!506182 (getCurrentListMapNoExtraKeys!4563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137962 () Bool)

(declare-fun res!759300 () Bool)

(declare-fun e!647547 () Bool)

(assert (=> b!1137962 (=> (not res!759300) (not e!647547))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1137962 (= res!759300 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36184 _keys!1208))))))

(declare-fun b!1137963 () Bool)

(declare-fun e!647548 () Bool)

(declare-fun call!50279 () ListLongMap!16201)

(declare-fun call!50280 () ListLongMap!16201)

(assert (=> b!1137963 (= e!647548 (= call!50279 call!50280))))

(declare-fun b!1137964 () Bool)

(declare-fun e!647561 () Bool)

(declare-fun e!647560 () Bool)

(assert (=> b!1137964 (= e!647561 (not e!647560))))

(declare-fun res!759294 () Bool)

(assert (=> b!1137964 (=> res!759294 e!647560)))

(assert (=> b!1137964 (= res!759294 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137964 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506185 () Unit!37228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74000 (_ BitVec 64) (_ BitVec 32)) Unit!37228)

(assert (=> b!1137964 (= lt!506185 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun c!111358 () Bool)

(declare-fun lt!506193 () ListLongMap!16201)

(declare-fun c!111355 () Bool)

(declare-fun bm!50270 () Bool)

(declare-fun call!50273 () ListLongMap!16201)

(declare-fun +!3467 (ListLongMap!16201 tuple2!18220) ListLongMap!16201)

(assert (=> bm!50270 (= call!50273 (+!3467 (ite c!111358 lt!506193 lt!506182) (ite c!111358 (tuple2!18221 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111355 (tuple2!18221 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18221 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!506191 () array!74000)

(declare-fun lt!506196 () array!74002)

(declare-fun bm!50271 () Bool)

(assert (=> bm!50271 (= call!50279 (getCurrentListMapNoExtraKeys!4563 lt!506191 lt!506196 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50272 () Bool)

(declare-fun call!50276 () ListLongMap!16201)

(assert (=> bm!50272 (= call!50276 call!50273)))

(declare-fun b!1137965 () Bool)

(declare-fun res!759297 () Bool)

(assert (=> b!1137965 (=> (not res!759297) (not e!647547))))

(assert (=> b!1137965 (= res!759297 (= (select (arr!35647 _keys!1208) i!673) k!934))))

(declare-fun b!1137966 () Bool)

(declare-fun res!759290 () Bool)

(assert (=> b!1137966 (=> (not res!759290) (not e!647547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74000 (_ BitVec 32)) Bool)

(assert (=> b!1137966 (= res!759290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50273 () Bool)

(declare-fun call!50274 () Bool)

(declare-fun call!50275 () Bool)

(assert (=> bm!50273 (= call!50274 call!50275)))

(declare-fun b!1137967 () Bool)

(declare-fun -!1222 (ListLongMap!16201 (_ BitVec 64)) ListLongMap!16201)

(assert (=> b!1137967 (= e!647548 (= call!50279 (-!1222 call!50280 k!934)))))

(declare-fun b!1137968 () Bool)

(declare-fun e!647554 () Unit!37228)

(declare-fun lt!506184 () Unit!37228)

(assert (=> b!1137968 (= e!647554 lt!506184)))

(declare-fun call!50277 () Unit!37228)

(assert (=> b!1137968 (= lt!506184 call!50277)))

(assert (=> b!1137968 call!50274))

(declare-fun bm!50274 () Bool)

(declare-fun call!50278 () Unit!37228)

(declare-fun addStillContains!767 (ListLongMap!16201 (_ BitVec 64) V!43249 (_ BitVec 64)) Unit!37228)

(assert (=> bm!50274 (= call!50278 (addStillContains!767 (ite c!111358 lt!506193 lt!506182) (ite c!111358 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111355 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111358 minValue!944 (ite c!111355 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1137969 () Bool)

(declare-fun res!759293 () Bool)

(assert (=> b!1137969 (=> (not res!759293) (not e!647547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137969 (= res!759293 (validKeyInArray!0 k!934))))

(declare-fun b!1137970 () Bool)

(declare-fun e!647555 () Bool)

(assert (=> b!1137970 (= e!647555 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50275 () Bool)

(assert (=> bm!50275 (= call!50275 (contains!6626 (ite c!111358 lt!506193 call!50276) k!934))))

(declare-fun bm!50276 () Bool)

(assert (=> bm!50276 (= call!50280 (getCurrentListMapNoExtraKeys!4563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44711 () Bool)

(declare-fun mapRes!44711 () Bool)

(declare-fun tp!84895 () Bool)

(declare-fun e!647553 () Bool)

(assert (=> mapNonEmpty!44711 (= mapRes!44711 (and tp!84895 e!647553))))

(declare-fun mapRest!44711 () (Array (_ BitVec 32) ValueCell!13586))

(declare-fun mapValue!44711 () ValueCell!13586)

(declare-fun mapKey!44711 () (_ BitVec 32))

(assert (=> mapNonEmpty!44711 (= (arr!35648 _values!996) (store mapRest!44711 mapKey!44711 mapValue!44711))))

(declare-fun b!1137971 () Bool)

(assert (=> b!1137971 (= e!647554 e!647557)))

(declare-fun c!111357 () Bool)

(declare-fun lt!506187 () Bool)

(assert (=> b!1137971 (= c!111357 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506187))))

(declare-fun b!1137972 () Bool)

(declare-fun e!647558 () Bool)

(assert (=> b!1137972 (= e!647560 e!647558)))

(declare-fun res!759292 () Bool)

(assert (=> b!1137972 (=> res!759292 e!647558)))

(assert (=> b!1137972 (= res!759292 (not (= from!1455 i!673)))))

(declare-fun lt!506186 () ListLongMap!16201)

(assert (=> b!1137972 (= lt!506186 (getCurrentListMapNoExtraKeys!4563 lt!506191 lt!506196 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2623 (Int (_ BitVec 64)) V!43249)

(assert (=> b!1137972 (= lt!506196 (array!74003 (store (arr!35648 _values!996) i!673 (ValueCellFull!13586 (dynLambda!2623 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36185 _values!996)))))

(declare-fun lt!506181 () ListLongMap!16201)

(assert (=> b!1137972 (= lt!506181 (getCurrentListMapNoExtraKeys!4563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1137973 () Bool)

(declare-fun e!647552 () Bool)

(declare-fun tp_is_empty!28591 () Bool)

(assert (=> b!1137973 (= e!647552 tp_is_empty!28591)))

(declare-fun b!1137974 () Bool)

(declare-fun res!759295 () Bool)

(assert (=> b!1137974 (=> (not res!759295) (not e!647547))))

(assert (=> b!1137974 (= res!759295 (and (= (size!36185 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36184 _keys!1208) (size!36185 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!50277 () Bool)

(assert (=> bm!50277 (= call!50277 call!50278)))

(declare-fun b!1137975 () Bool)

(assert (=> b!1137975 (= e!647547 e!647561)))

(declare-fun res!759302 () Bool)

(assert (=> b!1137975 (=> (not res!759302) (not e!647561))))

(assert (=> b!1137975 (= res!759302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506191 mask!1564))))

(assert (=> b!1137975 (= lt!506191 (array!74001 (store (arr!35647 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36184 _keys!1208)))))

(declare-fun mapIsEmpty!44711 () Bool)

(assert (=> mapIsEmpty!44711 mapRes!44711))

(declare-fun b!1137976 () Bool)

(assert (=> b!1137976 (contains!6626 call!50273 k!934)))

(declare-fun lt!506190 () Unit!37228)

(assert (=> b!1137976 (= lt!506190 call!50278)))

(assert (=> b!1137976 call!50275))

(assert (=> b!1137976 (= lt!506193 (+!3467 lt!506182 (tuple2!18221 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506188 () Unit!37228)

(assert (=> b!1137976 (= lt!506188 (addStillContains!767 lt!506182 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!647559 () Unit!37228)

(assert (=> b!1137976 (= e!647559 lt!506190)))

(declare-fun b!1137977 () Bool)

(assert (=> b!1137977 (= c!111355 (and (not lt!506187) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1137977 (= e!647559 e!647554)))

(declare-fun b!1137978 () Bool)

(assert (=> b!1137978 call!50274))

(declare-fun lt!506192 () Unit!37228)

(assert (=> b!1137978 (= lt!506192 call!50277)))

(assert (=> b!1137978 (= e!647557 lt!506192)))

(declare-fun b!1137979 () Bool)

(declare-fun res!759301 () Bool)

(assert (=> b!1137979 (=> (not res!759301) (not e!647561))))

(declare-datatypes ((List!25027 0))(
  ( (Nil!25024) (Cons!25023 (h!26232 (_ BitVec 64)) (t!36087 List!25027)) )
))
(declare-fun arrayNoDuplicates!0 (array!74000 (_ BitVec 32) List!25027) Bool)

(assert (=> b!1137979 (= res!759301 (arrayNoDuplicates!0 lt!506191 #b00000000000000000000000000000000 Nil!25024))))

(declare-fun b!1137980 () Bool)

(declare-fun res!759296 () Bool)

(assert (=> b!1137980 (=> (not res!759296) (not e!647547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137980 (= res!759296 (validMask!0 mask!1564))))

(declare-fun b!1137981 () Bool)

(assert (=> b!1137981 (= e!647553 tp_is_empty!28591)))

(declare-fun b!1137982 () Bool)

(assert (=> b!1137982 (= e!647555 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506187) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1137983 () Bool)

(declare-fun res!759291 () Bool)

(assert (=> b!1137983 (=> (not res!759291) (not e!647547))))

(assert (=> b!1137983 (= res!759291 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25024))))

(declare-fun b!1137984 () Bool)

(assert (=> b!1137984 (= e!647558 e!647550)))

(declare-fun res!759299 () Bool)

(assert (=> b!1137984 (=> res!759299 e!647550)))

(assert (=> b!1137984 (= res!759299 (not (= (select (arr!35647 _keys!1208) from!1455) k!934)))))

(assert (=> b!1137984 e!647548))

(declare-fun c!111360 () Bool)

(assert (=> b!1137984 (= c!111360 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506179 () Unit!37228)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!479 (array!74000 array!74002 (_ BitVec 32) (_ BitVec 32) V!43249 V!43249 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37228)

(assert (=> b!1137984 (= lt!506179 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!759298 () Bool)

(assert (=> start!98492 (=> (not res!759298) (not e!647547))))

(assert (=> start!98492 (= res!759298 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36184 _keys!1208))))))

(assert (=> start!98492 e!647547))

(assert (=> start!98492 tp_is_empty!28591))

(declare-fun array_inv!27204 (array!74000) Bool)

(assert (=> start!98492 (array_inv!27204 _keys!1208)))

(assert (=> start!98492 true))

(assert (=> start!98492 tp!84894))

(declare-fun e!647556 () Bool)

(declare-fun array_inv!27205 (array!74002) Bool)

(assert (=> start!98492 (and (array_inv!27205 _values!996) e!647556)))

(declare-fun e!647551 () Bool)

(declare-fun b!1137985 () Bool)

(assert (=> b!1137985 (= e!647551 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1137986 () Bool)

(declare-fun Unit!37232 () Unit!37228)

(assert (=> b!1137986 (= e!647562 Unit!37232)))

(assert (=> b!1137986 (= lt!506187 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1137986 (= c!111358 (and (not lt!506187) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506183 () Unit!37228)

(assert (=> b!1137986 (= lt!506183 e!647559)))

(declare-fun lt!506195 () Unit!37228)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!372 (array!74000 array!74002 (_ BitVec 32) (_ BitVec 32) V!43249 V!43249 (_ BitVec 64) (_ BitVec 32) Int) Unit!37228)

(assert (=> b!1137986 (= lt!506195 (lemmaListMapContainsThenArrayContainsFrom!372 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111359 () Bool)

(assert (=> b!1137986 (= c!111359 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759289 () Bool)

(assert (=> b!1137986 (= res!759289 e!647555)))

(assert (=> b!1137986 (=> (not res!759289) (not e!647551))))

(assert (=> b!1137986 e!647551))

(declare-fun lt!506194 () Unit!37228)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74000 (_ BitVec 32) (_ BitVec 32)) Unit!37228)

(assert (=> b!1137986 (= lt!506194 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1137986 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25024)))

(declare-fun lt!506189 () Unit!37228)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74000 (_ BitVec 64) (_ BitVec 32) List!25027) Unit!37228)

(assert (=> b!1137986 (= lt!506189 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25024))))

(assert (=> b!1137986 false))

(declare-fun b!1137987 () Bool)

(assert (=> b!1137987 (= e!647556 (and e!647552 mapRes!44711))))

(declare-fun condMapEmpty!44711 () Bool)

(declare-fun mapDefault!44711 () ValueCell!13586)

