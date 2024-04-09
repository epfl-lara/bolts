; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101046 () Bool)

(assert start!101046)

(declare-fun b_free!26009 () Bool)

(declare-fun b_next!26009 () Bool)

(assert (=> start!101046 (= b_free!26009 (not b_next!26009))))

(declare-fun tp!91043 () Bool)

(declare-fun b_and!43109 () Bool)

(assert (=> start!101046 (= tp!91043 b_and!43109)))

(declare-fun b!1210049 () Bool)

(declare-fun e!687272 () Bool)

(declare-datatypes ((V!46077 0))(
  ( (V!46078 (val!15413 Int)) )
))
(declare-datatypes ((tuple2!19926 0))(
  ( (tuple2!19927 (_1!9973 (_ BitVec 64)) (_2!9973 V!46077)) )
))
(declare-datatypes ((List!26746 0))(
  ( (Nil!26743) (Cons!26742 (h!27951 tuple2!19926) (t!39742 List!26746)) )
))
(declare-datatypes ((ListLongMap!17907 0))(
  ( (ListLongMap!17908 (toList!8969 List!26746)) )
))
(declare-fun call!59548 () ListLongMap!17907)

(declare-fun call!59552 () ListLongMap!17907)

(assert (=> b!1210049 (= e!687272 (= call!59548 call!59552))))

(declare-datatypes ((array!78186 0))(
  ( (array!78187 (arr!37726 (Array (_ BitVec 32) (_ BitVec 64))) (size!38263 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78186)

(declare-fun e!687274 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1210050 () Bool)

(declare-fun arrayContainsKey!0 (array!78186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1210050 (= e!687274 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1210051 () Bool)

(declare-datatypes ((Unit!40027 0))(
  ( (Unit!40028) )
))
(declare-fun e!687259 () Unit!40027)

(declare-fun Unit!40029 () Unit!40027)

(assert (=> b!1210051 (= e!687259 Unit!40029)))

(declare-fun lt!549320 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1210051 (= lt!549320 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119137 () Bool)

(assert (=> b!1210051 (= c!119137 (and (not lt!549320) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549327 () Unit!40027)

(declare-fun e!687260 () Unit!40027)

(assert (=> b!1210051 (= lt!549327 e!687260)))

(declare-fun zeroValue!944 () V!46077)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14647 0))(
  ( (ValueCellFull!14647 (v!18065 V!46077)) (EmptyCell!14647) )
))
(declare-datatypes ((array!78188 0))(
  ( (array!78189 (arr!37727 (Array (_ BitVec 32) ValueCell!14647)) (size!38264 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78188)

(declare-fun minValue!944 () V!46077)

(declare-fun lt!549330 () Unit!40027)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!596 (array!78186 array!78188 (_ BitVec 32) (_ BitVec 32) V!46077 V!46077 (_ BitVec 64) (_ BitVec 32) Int) Unit!40027)

(assert (=> b!1210051 (= lt!549330 (lemmaListMapContainsThenArrayContainsFrom!596 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119142 () Bool)

(assert (=> b!1210051 (= c!119142 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804208 () Bool)

(declare-fun e!687264 () Bool)

(assert (=> b!1210051 (= res!804208 e!687264)))

(assert (=> b!1210051 (=> (not res!804208) (not e!687274))))

(assert (=> b!1210051 e!687274))

(declare-fun lt!549325 () Unit!40027)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78186 (_ BitVec 32) (_ BitVec 32)) Unit!40027)

(assert (=> b!1210051 (= lt!549325 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26747 0))(
  ( (Nil!26744) (Cons!26743 (h!27952 (_ BitVec 64)) (t!39743 List!26747)) )
))
(declare-fun arrayNoDuplicates!0 (array!78186 (_ BitVec 32) List!26747) Bool)

(assert (=> b!1210051 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26744)))

(declare-fun lt!549336 () Unit!40027)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78186 (_ BitVec 64) (_ BitVec 32) List!26747) Unit!40027)

(assert (=> b!1210051 (= lt!549336 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26744))))

(assert (=> b!1210051 false))

(declare-fun b!1210052 () Bool)

(declare-fun res!804215 () Bool)

(declare-fun e!687269 () Bool)

(assert (=> b!1210052 (=> (not res!804215) (not e!687269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1210052 (= res!804215 (validKeyInArray!0 k!934))))

(declare-fun bm!59544 () Bool)

(declare-fun call!59549 () Unit!40027)

(declare-fun call!59553 () Unit!40027)

(assert (=> bm!59544 (= call!59549 call!59553)))

(declare-fun b!1210053 () Bool)

(declare-fun res!804204 () Bool)

(assert (=> b!1210053 (=> (not res!804204) (not e!687269))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210053 (= res!804204 (= (select (arr!37726 _keys!1208) i!673) k!934))))

(declare-fun b!1210054 () Bool)

(declare-fun res!804211 () Bool)

(assert (=> b!1210054 (=> (not res!804211) (not e!687269))))

(assert (=> b!1210054 (= res!804211 (and (= (size!38264 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38263 _keys!1208) (size!38264 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1210055 () Bool)

(declare-fun e!687266 () Bool)

(assert (=> b!1210055 (= e!687269 e!687266)))

(declare-fun res!804210 () Bool)

(assert (=> b!1210055 (=> (not res!804210) (not e!687266))))

(declare-fun lt!549319 () array!78186)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78186 (_ BitVec 32)) Bool)

(assert (=> b!1210055 (= res!804210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549319 mask!1564))))

(assert (=> b!1210055 (= lt!549319 (array!78187 (store (arr!37726 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38263 _keys!1208)))))

(declare-fun b!1210056 () Bool)

(declare-fun res!804206 () Bool)

(assert (=> b!1210056 (=> (not res!804206) (not e!687269))))

(assert (=> b!1210056 (= res!804206 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26744))))

(declare-fun b!1210057 () Bool)

(declare-fun e!687270 () Unit!40027)

(declare-fun e!687265 () Unit!40027)

(assert (=> b!1210057 (= e!687270 e!687265)))

(declare-fun c!119138 () Bool)

(assert (=> b!1210057 (= c!119138 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549320))))

(declare-fun mapIsEmpty!47938 () Bool)

(declare-fun mapRes!47938 () Bool)

(assert (=> mapIsEmpty!47938 mapRes!47938))

(declare-fun b!1210058 () Bool)

(declare-fun lt!549328 () Unit!40027)

(assert (=> b!1210058 (= e!687270 lt!549328)))

(assert (=> b!1210058 (= lt!549328 call!59549)))

(declare-fun call!59547 () Bool)

(assert (=> b!1210058 call!59547))

(declare-fun b!1210059 () Bool)

(declare-fun e!687271 () Bool)

(declare-fun tp_is_empty!30713 () Bool)

(assert (=> b!1210059 (= e!687271 tp_is_empty!30713)))

(declare-fun b!1210060 () Bool)

(declare-fun e!687263 () Bool)

(declare-fun e!687262 () Bool)

(assert (=> b!1210060 (= e!687263 e!687262)))

(declare-fun res!804213 () Bool)

(assert (=> b!1210060 (=> res!804213 e!687262)))

(assert (=> b!1210060 (= res!804213 (not (= from!1455 i!673)))))

(declare-fun lt!549332 () array!78188)

(declare-fun lt!549333 () ListLongMap!17907)

(declare-fun getCurrentListMapNoExtraKeys!5375 (array!78186 array!78188 (_ BitVec 32) (_ BitVec 32) V!46077 V!46077 (_ BitVec 32) Int) ListLongMap!17907)

(assert (=> b!1210060 (= lt!549333 (getCurrentListMapNoExtraKeys!5375 lt!549319 lt!549332 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3292 (Int (_ BitVec 64)) V!46077)

(assert (=> b!1210060 (= lt!549332 (array!78189 (store (arr!37727 _values!996) i!673 (ValueCellFull!14647 (dynLambda!3292 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38264 _values!996)))))

(declare-fun lt!549324 () ListLongMap!17907)

(assert (=> b!1210060 (= lt!549324 (getCurrentListMapNoExtraKeys!5375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!804203 () Bool)

(assert (=> start!101046 (=> (not res!804203) (not e!687269))))

(assert (=> start!101046 (= res!804203 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38263 _keys!1208))))))

(assert (=> start!101046 e!687269))

(assert (=> start!101046 tp_is_empty!30713))

(declare-fun array_inv!28640 (array!78186) Bool)

(assert (=> start!101046 (array_inv!28640 _keys!1208)))

(assert (=> start!101046 true))

(assert (=> start!101046 tp!91043))

(declare-fun e!687273 () Bool)

(declare-fun array_inv!28641 (array!78188) Bool)

(assert (=> start!101046 (and (array_inv!28641 _values!996) e!687273)))

(declare-fun bm!59545 () Bool)

(declare-fun call!59551 () Bool)

(declare-fun call!59550 () ListLongMap!17907)

(declare-fun lt!549334 () ListLongMap!17907)

(declare-fun contains!6983 (ListLongMap!17907 (_ BitVec 64)) Bool)

(assert (=> bm!59545 (= call!59551 (contains!6983 (ite c!119137 lt!549334 call!59550) k!934))))

(declare-fun b!1210061 () Bool)

(declare-fun call!59554 () ListLongMap!17907)

(assert (=> b!1210061 (contains!6983 call!59554 k!934)))

(declare-fun lt!549321 () Unit!40027)

(declare-fun addStillContains!1060 (ListLongMap!17907 (_ BitVec 64) V!46077 (_ BitVec 64)) Unit!40027)

(assert (=> b!1210061 (= lt!549321 (addStillContains!1060 lt!549334 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1210061 call!59551))

(declare-fun lt!549335 () ListLongMap!17907)

(declare-fun +!3996 (ListLongMap!17907 tuple2!19926) ListLongMap!17907)

(assert (=> b!1210061 (= lt!549334 (+!3996 lt!549335 (tuple2!19927 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!549331 () Unit!40027)

(assert (=> b!1210061 (= lt!549331 call!59553)))

(assert (=> b!1210061 (= e!687260 lt!549321)))

(declare-fun bm!59546 () Bool)

(assert (=> bm!59546 (= call!59552 (getCurrentListMapNoExtraKeys!5375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210062 () Bool)

(declare-fun -!1870 (ListLongMap!17907 (_ BitVec 64)) ListLongMap!17907)

(assert (=> b!1210062 (= e!687272 (= call!59548 (-!1870 call!59552 k!934)))))

(declare-fun b!1210063 () Bool)

(declare-fun Unit!40030 () Unit!40027)

(assert (=> b!1210063 (= e!687265 Unit!40030)))

(declare-fun b!1210064 () Bool)

(declare-fun c!119140 () Bool)

(assert (=> b!1210064 (= c!119140 (and (not lt!549320) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1210064 (= e!687260 e!687270)))

(declare-fun b!1210065 () Bool)

(assert (=> b!1210065 (= e!687264 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1210066 () Bool)

(declare-fun res!804214 () Bool)

(assert (=> b!1210066 (=> (not res!804214) (not e!687269))))

(assert (=> b!1210066 (= res!804214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1210067 () Bool)

(assert (=> b!1210067 call!59547))

(declare-fun lt!549329 () Unit!40027)

(assert (=> b!1210067 (= lt!549329 call!59549)))

(assert (=> b!1210067 (= e!687265 lt!549329)))

(declare-fun b!1210068 () Bool)

(assert (=> b!1210068 (= e!687273 (and e!687271 mapRes!47938))))

(declare-fun condMapEmpty!47938 () Bool)

(declare-fun mapDefault!47938 () ValueCell!14647)

