; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98934 () Bool)

(assert start!98934)

(declare-fun b_free!24503 () Bool)

(declare-fun b_next!24503 () Bool)

(assert (=> start!98934 (= b_free!24503 (not b_next!24503))))

(declare-fun tp!86220 () Bool)

(declare-fun b_and!39869 () Bool)

(assert (=> start!98934 (= tp!86220 b_and!39869)))

(declare-fun b!1158086 () Bool)

(declare-fun res!769037 () Bool)

(declare-fun e!658617 () Bool)

(assert (=> b!1158086 (=> (not res!769037) (not e!658617))))

(declare-datatypes ((array!74856 0))(
  ( (array!74857 (arr!36075 (Array (_ BitVec 32) (_ BitVec 64))) (size!36612 (_ BitVec 32))) )
))
(declare-fun lt!520282 () array!74856)

(declare-datatypes ((List!25395 0))(
  ( (Nil!25392) (Cons!25391 (h!26600 (_ BitVec 64)) (t!36897 List!25395)) )
))
(declare-fun arrayNoDuplicates!0 (array!74856 (_ BitVec 32) List!25395) Bool)

(assert (=> b!1158086 (= res!769037 (arrayNoDuplicates!0 lt!520282 #b00000000000000000000000000000000 Nil!25392))))

(declare-fun b!1158087 () Bool)

(declare-fun e!658615 () Bool)

(assert (=> b!1158087 (= e!658615 true)))

(declare-fun e!658616 () Bool)

(assert (=> b!1158087 e!658616))

(declare-fun res!769030 () Bool)

(assert (=> b!1158087 (=> (not res!769030) (not e!658616))))

(declare-datatypes ((V!43837 0))(
  ( (V!43838 (val!14573 Int)) )
))
(declare-datatypes ((tuple2!18616 0))(
  ( (tuple2!18617 (_1!9318 (_ BitVec 64)) (_2!9318 V!43837)) )
))
(declare-datatypes ((List!25396 0))(
  ( (Nil!25393) (Cons!25392 (h!26601 tuple2!18616) (t!36898 List!25396)) )
))
(declare-datatypes ((ListLongMap!16597 0))(
  ( (ListLongMap!16598 (toList!8314 List!25396)) )
))
(declare-fun lt!520283 () ListLongMap!16597)

(declare-fun lt!520292 () ListLongMap!16597)

(assert (=> b!1158087 (= res!769030 (= lt!520283 lt!520292))))

(declare-fun lt!520278 () ListLongMap!16597)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1388 (ListLongMap!16597 (_ BitVec 64)) ListLongMap!16597)

(assert (=> b!1158087 (= lt!520283 (-!1388 lt!520278 k!934))))

(declare-fun lt!520284 () V!43837)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!74856)

(declare-fun +!3642 (ListLongMap!16597 tuple2!18616) ListLongMap!16597)

(assert (=> b!1158087 (= (-!1388 (+!3642 lt!520292 (tuple2!18617 (select (arr!36075 _keys!1208) from!1455) lt!520284)) (select (arr!36075 _keys!1208) from!1455)) lt!520292)))

(declare-datatypes ((Unit!38049 0))(
  ( (Unit!38050) )
))
(declare-fun lt!520288 () Unit!38049)

(declare-fun addThenRemoveForNewKeyIsSame!228 (ListLongMap!16597 (_ BitVec 64) V!43837) Unit!38049)

(assert (=> b!1158087 (= lt!520288 (addThenRemoveForNewKeyIsSame!228 lt!520292 (select (arr!36075 _keys!1208) from!1455) lt!520284))))

(declare-datatypes ((ValueCell!13807 0))(
  ( (ValueCellFull!13807 (v!17211 V!43837)) (EmptyCell!13807) )
))
(declare-datatypes ((array!74858 0))(
  ( (array!74859 (arr!36076 (Array (_ BitVec 32) ValueCell!13807)) (size!36613 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74858)

(declare-fun lt!520285 () V!43837)

(declare-fun get!18416 (ValueCell!13807 V!43837) V!43837)

(assert (=> b!1158087 (= lt!520284 (get!18416 (select (arr!36076 _values!996) from!1455) lt!520285))))

(declare-fun lt!520298 () Unit!38049)

(declare-fun e!658624 () Unit!38049)

(assert (=> b!1158087 (= lt!520298 e!658624)))

(declare-fun c!115337 () Bool)

(declare-fun contains!6798 (ListLongMap!16597 (_ BitVec 64)) Bool)

(assert (=> b!1158087 (= c!115337 (contains!6798 lt!520292 k!934))))

(declare-fun zeroValue!944 () V!43837)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43837)

(declare-fun getCurrentListMapNoExtraKeys!4751 (array!74856 array!74858 (_ BitVec 32) (_ BitVec 32) V!43837 V!43837 (_ BitVec 32) Int) ListLongMap!16597)

(assert (=> b!1158087 (= lt!520292 (getCurrentListMapNoExtraKeys!4751 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!769041 () Bool)

(declare-fun e!658626 () Bool)

(assert (=> start!98934 (=> (not res!769041) (not e!658626))))

(assert (=> start!98934 (= res!769041 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36612 _keys!1208))))))

(assert (=> start!98934 e!658626))

(declare-fun tp_is_empty!29033 () Bool)

(assert (=> start!98934 tp_is_empty!29033))

(declare-fun array_inv!27476 (array!74856) Bool)

(assert (=> start!98934 (array_inv!27476 _keys!1208)))

(assert (=> start!98934 true))

(assert (=> start!98934 tp!86220))

(declare-fun e!658621 () Bool)

(declare-fun array_inv!27477 (array!74858) Bool)

(assert (=> start!98934 (and (array_inv!27477 _values!996) e!658621)))

(declare-fun bm!55574 () Bool)

(declare-fun call!55583 () Unit!38049)

(declare-fun call!55584 () Unit!38049)

(assert (=> bm!55574 (= call!55583 call!55584)))

(declare-fun mapNonEmpty!45374 () Bool)

(declare-fun mapRes!45374 () Bool)

(declare-fun tp!86221 () Bool)

(declare-fun e!658628 () Bool)

(assert (=> mapNonEmpty!45374 (= mapRes!45374 (and tp!86221 e!658628))))

(declare-fun mapKey!45374 () (_ BitVec 32))

(declare-fun mapRest!45374 () (Array (_ BitVec 32) ValueCell!13807))

(declare-fun mapValue!45374 () ValueCell!13807)

(assert (=> mapNonEmpty!45374 (= (arr!36076 _values!996) (store mapRest!45374 mapKey!45374 mapValue!45374))))

(declare-fun b!1158088 () Bool)

(declare-fun res!769040 () Bool)

(assert (=> b!1158088 (=> (not res!769040) (not e!658626))))

(assert (=> b!1158088 (= res!769040 (and (= (size!36613 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36612 _keys!1208) (size!36613 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1158089 () Bool)

(declare-fun res!769042 () Bool)

(assert (=> b!1158089 (=> (not res!769042) (not e!658626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158089 (= res!769042 (validMask!0 mask!1564))))

(declare-fun b!1158090 () Bool)

(declare-fun e!658613 () Bool)

(declare-fun call!55581 () ListLongMap!16597)

(declare-fun call!55578 () ListLongMap!16597)

(assert (=> b!1158090 (= e!658613 (= call!55581 call!55578))))

(declare-fun b!1158091 () Bool)

(declare-fun Unit!38051 () Unit!38049)

(assert (=> b!1158091 (= e!658624 Unit!38051)))

(declare-fun lt!520291 () Bool)

(assert (=> b!1158091 (= lt!520291 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115335 () Bool)

(assert (=> b!1158091 (= c!115335 (and (not lt!520291) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520297 () Unit!38049)

(declare-fun e!658619 () Unit!38049)

(assert (=> b!1158091 (= lt!520297 e!658619)))

(declare-fun lt!520299 () Unit!38049)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!514 (array!74856 array!74858 (_ BitVec 32) (_ BitVec 32) V!43837 V!43837 (_ BitVec 64) (_ BitVec 32) Int) Unit!38049)

(assert (=> b!1158091 (= lt!520299 (lemmaListMapContainsThenArrayContainsFrom!514 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115338 () Bool)

(assert (=> b!1158091 (= c!115338 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769032 () Bool)

(declare-fun e!658618 () Bool)

(assert (=> b!1158091 (= res!769032 e!658618)))

(declare-fun e!658614 () Bool)

(assert (=> b!1158091 (=> (not res!769032) (not e!658614))))

(assert (=> b!1158091 e!658614))

(declare-fun lt!520280 () Unit!38049)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74856 (_ BitVec 32) (_ BitVec 32)) Unit!38049)

(assert (=> b!1158091 (= lt!520280 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1158091 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25392)))

(declare-fun lt!520296 () Unit!38049)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74856 (_ BitVec 64) (_ BitVec 32) List!25395) Unit!38049)

(assert (=> b!1158091 (= lt!520296 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25392))))

(assert (=> b!1158091 false))

(declare-fun b!1158092 () Bool)

(declare-fun e!658627 () Bool)

(assert (=> b!1158092 (= e!658617 (not e!658627))))

(declare-fun res!769033 () Bool)

(assert (=> b!1158092 (=> res!769033 e!658627)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158092 (= res!769033 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158092 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!520294 () Unit!38049)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74856 (_ BitVec 64) (_ BitVec 32)) Unit!38049)

(assert (=> b!1158092 (= lt!520294 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1158093 () Bool)

(declare-fun res!769038 () Bool)

(assert (=> b!1158093 (=> (not res!769038) (not e!658626))))

(assert (=> b!1158093 (= res!769038 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36612 _keys!1208))))))

(declare-fun b!1158094 () Bool)

(declare-fun res!769031 () Bool)

(assert (=> b!1158094 (=> (not res!769031) (not e!658626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158094 (= res!769031 (validKeyInArray!0 k!934))))

(declare-fun b!1158095 () Bool)

(assert (=> b!1158095 (= e!658628 tp_is_empty!29033)))

(declare-fun b!1158096 () Bool)

(declare-fun c!115336 () Bool)

(assert (=> b!1158096 (= c!115336 (and (not lt!520291) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!658625 () Unit!38049)

(assert (=> b!1158096 (= e!658619 e!658625)))

(declare-fun b!1158097 () Bool)

(declare-fun e!658629 () Bool)

(assert (=> b!1158097 (= e!658627 e!658629)))

(declare-fun res!769036 () Bool)

(assert (=> b!1158097 (=> res!769036 e!658629)))

(assert (=> b!1158097 (= res!769036 (not (= from!1455 i!673)))))

(declare-fun lt!520293 () array!74858)

(declare-fun lt!520279 () ListLongMap!16597)

(assert (=> b!1158097 (= lt!520279 (getCurrentListMapNoExtraKeys!4751 lt!520282 lt!520293 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1158097 (= lt!520293 (array!74859 (store (arr!36076 _values!996) i!673 (ValueCellFull!13807 lt!520285)) (size!36613 _values!996)))))

(declare-fun dynLambda!2758 (Int (_ BitVec 64)) V!43837)

(assert (=> b!1158097 (= lt!520285 (dynLambda!2758 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1158097 (= lt!520278 (getCurrentListMapNoExtraKeys!4751 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1158098 () Bool)

(declare-fun Unit!38052 () Unit!38049)

(assert (=> b!1158098 (= e!658624 Unit!38052)))

(declare-fun call!55577 () ListLongMap!16597)

(declare-fun bm!55575 () Bool)

(assert (=> bm!55575 (= call!55577 (+!3642 lt!520292 (ite (or c!115335 c!115336) (tuple2!18617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapIsEmpty!45374 () Bool)

(assert (=> mapIsEmpty!45374 mapRes!45374))

(declare-fun b!1158099 () Bool)

(declare-fun e!658623 () Bool)

(assert (=> b!1158099 (= e!658623 tp_is_empty!29033)))

(declare-fun b!1158100 () Bool)

(declare-fun lt!520281 () Unit!38049)

(assert (=> b!1158100 (= e!658625 lt!520281)))

(assert (=> b!1158100 (= lt!520281 call!55583)))

(declare-fun call!55582 () Bool)

(assert (=> b!1158100 call!55582))

(declare-fun b!1158101 () Bool)

(declare-fun e!658622 () Unit!38049)

(assert (=> b!1158101 (= e!658625 e!658622)))

(declare-fun c!115334 () Bool)

(assert (=> b!1158101 (= c!115334 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520291))))

(declare-fun b!1158102 () Bool)

(assert (=> b!1158102 (= e!658616 (= lt!520283 (getCurrentListMapNoExtraKeys!4751 lt!520282 lt!520293 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1158103 () Bool)

(assert (=> b!1158103 (= e!658613 (= call!55581 (-!1388 call!55578 k!934)))))

(declare-fun b!1158104 () Bool)

(declare-fun res!769034 () Bool)

(assert (=> b!1158104 (=> (not res!769034) (not e!658626))))

(assert (=> b!1158104 (= res!769034 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25392))))

(declare-fun bm!55576 () Bool)

(declare-fun call!55579 () ListLongMap!16597)

(assert (=> bm!55576 (= call!55579 call!55577)))

(declare-fun b!1158105 () Bool)

(declare-fun res!769043 () Bool)

(assert (=> b!1158105 (=> (not res!769043) (not e!658626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74856 (_ BitVec 32)) Bool)

(assert (=> b!1158105 (= res!769043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1158106 () Bool)

(assert (=> b!1158106 (= e!658618 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158107 () Bool)

(assert (=> b!1158107 call!55582))

(declare-fun lt!520286 () Unit!38049)

(assert (=> b!1158107 (= lt!520286 call!55583)))

(assert (=> b!1158107 (= e!658622 lt!520286)))

(declare-fun b!1158108 () Bool)

(assert (=> b!1158108 (= e!658614 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!55577 () Bool)

(declare-fun call!55580 () Bool)

(assert (=> bm!55577 (= call!55582 call!55580)))

(declare-fun b!1158109 () Bool)

(declare-fun res!769039 () Bool)

(assert (=> b!1158109 (=> (not res!769039) (not e!658626))))

(assert (=> b!1158109 (= res!769039 (= (select (arr!36075 _keys!1208) i!673) k!934))))

(declare-fun bm!55578 () Bool)

(assert (=> bm!55578 (= call!55578 (getCurrentListMapNoExtraKeys!4751 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158110 () Bool)

(assert (=> b!1158110 (= e!658629 e!658615)))

(declare-fun res!769029 () Bool)

(assert (=> b!1158110 (=> res!769029 e!658615)))

(assert (=> b!1158110 (= res!769029 (not (= (select (arr!36075 _keys!1208) from!1455) k!934)))))

(assert (=> b!1158110 e!658613))

(declare-fun c!115333 () Bool)

(assert (=> b!1158110 (= c!115333 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520287 () Unit!38049)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!615 (array!74856 array!74858 (_ BitVec 32) (_ BitVec 32) V!43837 V!43837 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38049)

(assert (=> b!1158110 (= lt!520287 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!615 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158111 () Bool)

(assert (=> b!1158111 (= e!658618 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520291) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520295 () ListLongMap!16597)

(declare-fun bm!55579 () Bool)

(assert (=> bm!55579 (= call!55580 (contains!6798 (ite c!115335 lt!520295 call!55579) k!934))))

(declare-fun b!1158112 () Bool)

(assert (=> b!1158112 (= e!658626 e!658617)))

(declare-fun res!769035 () Bool)

(assert (=> b!1158112 (=> (not res!769035) (not e!658617))))

(assert (=> b!1158112 (= res!769035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520282 mask!1564))))

(assert (=> b!1158112 (= lt!520282 (array!74857 (store (arr!36075 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36612 _keys!1208)))))

(declare-fun b!1158113 () Bool)

(assert (=> b!1158113 (contains!6798 (+!3642 lt!520295 (tuple2!18617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!520290 () Unit!38049)

(declare-fun addStillContains!938 (ListLongMap!16597 (_ BitVec 64) V!43837 (_ BitVec 64)) Unit!38049)

(assert (=> b!1158113 (= lt!520290 (addStillContains!938 lt!520295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1158113 call!55580))

(assert (=> b!1158113 (= lt!520295 call!55577)))

(declare-fun lt!520289 () Unit!38049)

(assert (=> b!1158113 (= lt!520289 call!55584)))

(assert (=> b!1158113 (= e!658619 lt!520290)))

(declare-fun bm!55580 () Bool)

(assert (=> bm!55580 (= call!55581 (getCurrentListMapNoExtraKeys!4751 lt!520282 lt!520293 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158114 () Bool)

(assert (=> b!1158114 (= e!658621 (and e!658623 mapRes!45374))))

(declare-fun condMapEmpty!45374 () Bool)

(declare-fun mapDefault!45374 () ValueCell!13807)

