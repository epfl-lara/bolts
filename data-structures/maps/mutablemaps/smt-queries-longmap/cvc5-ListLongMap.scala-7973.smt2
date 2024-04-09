; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98714 () Bool)

(assert start!98714)

(declare-fun b_free!24283 () Bool)

(declare-fun b_next!24283 () Bool)

(assert (=> start!98714 (= b_free!24283 (not b_next!24283))))

(declare-fun tp!85560 () Bool)

(declare-fun b_and!39429 () Bool)

(assert (=> start!98714 (= tp!85560 b_and!39429)))

(declare-fun b!1147966 () Bool)

(declare-datatypes ((Unit!37638 0))(
  ( (Unit!37639) )
))
(declare-fun e!653018 () Unit!37638)

(declare-fun Unit!37640 () Unit!37638)

(assert (=> b!1147966 (= e!653018 Unit!37640)))

(declare-fun lt!513072 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1147966 (= lt!513072 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113356 () Bool)

(assert (=> b!1147966 (= c!113356 (and (not lt!513072) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513065 () Unit!37638)

(declare-fun e!653010 () Unit!37638)

(assert (=> b!1147966 (= lt!513065 e!653010)))

(declare-datatypes ((V!43545 0))(
  ( (V!43546 (val!14463 Int)) )
))
(declare-fun zeroValue!944 () V!43545)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13697 0))(
  ( (ValueCellFull!13697 (v!17101 V!43545)) (EmptyCell!13697) )
))
(declare-datatypes ((array!74430 0))(
  ( (array!74431 (arr!35862 (Array (_ BitVec 32) ValueCell!13697)) (size!36399 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74430)

(declare-fun minValue!944 () V!43545)

(declare-datatypes ((array!74432 0))(
  ( (array!74433 (arr!35863 (Array (_ BitVec 32) (_ BitVec 64))) (size!36400 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74432)

(declare-fun lt!513061 () Unit!37638)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!440 (array!74432 array!74430 (_ BitVec 32) (_ BitVec 32) V!43545 V!43545 (_ BitVec 64) (_ BitVec 32) Int) Unit!37638)

(assert (=> b!1147966 (= lt!513061 (lemmaListMapContainsThenArrayContainsFrom!440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113355 () Bool)

(assert (=> b!1147966 (= c!113355 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764093 () Bool)

(declare-fun e!653005 () Bool)

(assert (=> b!1147966 (= res!764093 e!653005)))

(declare-fun e!653011 () Bool)

(assert (=> b!1147966 (=> (not res!764093) (not e!653011))))

(assert (=> b!1147966 e!653011))

(declare-fun lt!513058 () Unit!37638)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74432 (_ BitVec 32) (_ BitVec 32)) Unit!37638)

(assert (=> b!1147966 (= lt!513058 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25211 0))(
  ( (Nil!25208) (Cons!25207 (h!26416 (_ BitVec 64)) (t!36493 List!25211)) )
))
(declare-fun arrayNoDuplicates!0 (array!74432 (_ BitVec 32) List!25211) Bool)

(assert (=> b!1147966 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25208)))

(declare-fun lt!513059 () Unit!37638)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74432 (_ BitVec 64) (_ BitVec 32) List!25211) Unit!37638)

(assert (=> b!1147966 (= lt!513059 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25208))))

(assert (=> b!1147966 false))

(declare-fun b!1147967 () Bool)

(declare-fun e!653006 () Bool)

(declare-fun e!653013 () Bool)

(assert (=> b!1147967 (= e!653006 e!653013)))

(declare-fun res!764092 () Bool)

(assert (=> b!1147967 (=> (not res!764092) (not e!653013))))

(declare-fun lt!513063 () array!74432)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74432 (_ BitVec 32)) Bool)

(assert (=> b!1147967 (= res!764092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513063 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147967 (= lt!513063 (array!74433 (store (arr!35863 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36400 _keys!1208)))))

(declare-fun e!653014 () Bool)

(declare-datatypes ((tuple2!18418 0))(
  ( (tuple2!18419 (_1!9219 (_ BitVec 64)) (_2!9219 V!43545)) )
))
(declare-datatypes ((List!25212 0))(
  ( (Nil!25209) (Cons!25208 (h!26417 tuple2!18418) (t!36494 List!25212)) )
))
(declare-datatypes ((ListLongMap!16399 0))(
  ( (ListLongMap!16400 (toList!8215 List!25212)) )
))
(declare-fun lt!513054 () ListLongMap!16399)

(declare-fun b!1147968 () Bool)

(declare-fun lt!513057 () ListLongMap!16399)

(declare-fun -!1304 (ListLongMap!16399 (_ BitVec 64)) ListLongMap!16399)

(assert (=> b!1147968 (= e!653014 (= (-!1304 lt!513054 k!934) lt!513057))))

(declare-fun b!1147969 () Bool)

(declare-fun lt!513062 () ListLongMap!16399)

(declare-fun contains!6711 (ListLongMap!16399 (_ BitVec 64)) Bool)

(declare-fun +!3554 (ListLongMap!16399 tuple2!18418) ListLongMap!16399)

(assert (=> b!1147969 (contains!6711 (+!3554 lt!513062 (tuple2!18419 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!513067 () Unit!37638)

(declare-fun addStillContains!853 (ListLongMap!16399 (_ BitVec 64) V!43545 (_ BitVec 64)) Unit!37638)

(assert (=> b!1147969 (= lt!513067 (addStillContains!853 lt!513062 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!52938 () Bool)

(assert (=> b!1147969 call!52938))

(declare-fun call!52942 () ListLongMap!16399)

(assert (=> b!1147969 (= lt!513062 call!52942)))

(declare-fun lt!513070 () Unit!37638)

(declare-fun call!52937 () Unit!37638)

(assert (=> b!1147969 (= lt!513070 call!52937)))

(assert (=> b!1147969 (= e!653010 lt!513067)))

(declare-fun b!1147971 () Bool)

(declare-fun e!653004 () Bool)

(declare-fun e!653017 () Bool)

(assert (=> b!1147971 (= e!653004 e!653017)))

(declare-fun res!764087 () Bool)

(assert (=> b!1147971 (=> res!764087 e!653017)))

(assert (=> b!1147971 (= res!764087 (not (= (select (arr!35863 _keys!1208) from!1455) k!934)))))

(declare-fun e!653015 () Bool)

(assert (=> b!1147971 e!653015))

(declare-fun c!113358 () Bool)

(assert (=> b!1147971 (= c!113358 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513052 () Unit!37638)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!549 (array!74432 array!74430 (_ BitVec 32) (_ BitVec 32) V!43545 V!43545 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37638)

(assert (=> b!1147971 (= lt!513052 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147972 () Bool)

(declare-fun c!113353 () Bool)

(assert (=> b!1147972 (= c!113353 (and (not lt!513072) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!653019 () Unit!37638)

(assert (=> b!1147972 (= e!653010 e!653019)))

(declare-fun b!1147973 () Bool)

(declare-fun res!764083 () Bool)

(assert (=> b!1147973 (=> (not res!764083) (not e!653006))))

(assert (=> b!1147973 (= res!764083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45044 () Bool)

(declare-fun mapRes!45044 () Bool)

(declare-fun tp!85561 () Bool)

(declare-fun e!653009 () Bool)

(assert (=> mapNonEmpty!45044 (= mapRes!45044 (and tp!85561 e!653009))))

(declare-fun mapKey!45044 () (_ BitVec 32))

(declare-fun mapRest!45044 () (Array (_ BitVec 32) ValueCell!13697))

(declare-fun mapValue!45044 () ValueCell!13697)

(assert (=> mapNonEmpty!45044 (= (arr!35862 _values!996) (store mapRest!45044 mapKey!45044 mapValue!45044))))

(declare-fun bm!52934 () Bool)

(assert (=> bm!52934 (= call!52937 (addStillContains!853 lt!513057 (ite (or c!113356 c!113353) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113356 c!113353) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1147974 () Bool)

(declare-fun e!653003 () Bool)

(declare-fun tp_is_empty!28813 () Bool)

(assert (=> b!1147974 (= e!653003 tp_is_empty!28813)))

(declare-fun bm!52935 () Bool)

(declare-fun call!52940 () ListLongMap!16399)

(assert (=> bm!52935 (= call!52940 call!52942)))

(declare-fun bm!52936 () Bool)

(assert (=> bm!52936 (= call!52938 (contains!6711 (ite c!113356 lt!513062 call!52940) k!934))))

(declare-fun b!1147975 () Bool)

(assert (=> b!1147975 (= e!653017 true)))

(assert (=> b!1147975 e!653014))

(declare-fun res!764081 () Bool)

(assert (=> b!1147975 (=> (not res!764081) (not e!653014))))

(declare-fun lt!513068 () V!43545)

(assert (=> b!1147975 (= res!764081 (= (-!1304 (+!3554 lt!513057 (tuple2!18419 (select (arr!35863 _keys!1208) from!1455) lt!513068)) (select (arr!35863 _keys!1208) from!1455)) lt!513057))))

(declare-fun lt!513071 () Unit!37638)

(declare-fun addThenRemoveForNewKeyIsSame!153 (ListLongMap!16399 (_ BitVec 64) V!43545) Unit!37638)

(assert (=> b!1147975 (= lt!513071 (addThenRemoveForNewKeyIsSame!153 lt!513057 (select (arr!35863 _keys!1208) from!1455) lt!513068))))

(declare-fun lt!513056 () V!43545)

(declare-fun get!18269 (ValueCell!13697 V!43545) V!43545)

(assert (=> b!1147975 (= lt!513068 (get!18269 (select (arr!35862 _values!996) from!1455) lt!513056))))

(declare-fun lt!513060 () Unit!37638)

(assert (=> b!1147975 (= lt!513060 e!653018)))

(declare-fun c!113357 () Bool)

(assert (=> b!1147975 (= c!113357 (contains!6711 lt!513057 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4656 (array!74432 array!74430 (_ BitVec 32) (_ BitVec 32) V!43545 V!43545 (_ BitVec 32) Int) ListLongMap!16399)

(assert (=> b!1147975 (= lt!513057 (getCurrentListMapNoExtraKeys!4656 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147976 () Bool)

(declare-fun res!764090 () Bool)

(assert (=> b!1147976 (=> (not res!764090) (not e!653006))))

(assert (=> b!1147976 (= res!764090 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36400 _keys!1208))))))

(declare-fun b!1147977 () Bool)

(declare-fun arrayContainsKey!0 (array!74432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147977 (= e!653005 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147978 () Bool)

(declare-fun res!764079 () Bool)

(assert (=> b!1147978 (=> (not res!764079) (not e!653006))))

(assert (=> b!1147978 (= res!764079 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25208))))

(declare-fun b!1147979 () Bool)

(declare-fun call!52944 () ListLongMap!16399)

(declare-fun call!52943 () ListLongMap!16399)

(assert (=> b!1147979 (= e!653015 (= call!52943 (-!1304 call!52944 k!934)))))

(declare-fun lt!513055 () array!74430)

(declare-fun bm!52937 () Bool)

(assert (=> bm!52937 (= call!52943 (getCurrentListMapNoExtraKeys!4656 lt!513063 lt!513055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52938 () Bool)

(assert (=> bm!52938 (= call!52942 (+!3554 lt!513057 (ite (or c!113356 c!113353) (tuple2!18419 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18419 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1147980 () Bool)

(assert (=> b!1147980 (= e!653011 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147981 () Bool)

(assert (=> b!1147981 (= e!653005 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513072) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1147982 () Bool)

(assert (=> b!1147982 (= e!653009 tp_is_empty!28813)))

(declare-fun b!1147983 () Bool)

(declare-fun res!764080 () Bool)

(assert (=> b!1147983 (=> (not res!764080) (not e!653006))))

(assert (=> b!1147983 (= res!764080 (and (= (size!36399 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36400 _keys!1208) (size!36399 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1147984 () Bool)

(declare-fun lt!513069 () Unit!37638)

(assert (=> b!1147984 (= e!653019 lt!513069)))

(declare-fun call!52939 () Unit!37638)

(assert (=> b!1147984 (= lt!513069 call!52939)))

(declare-fun call!52941 () Bool)

(assert (=> b!1147984 call!52941))

(declare-fun res!764084 () Bool)

(assert (=> start!98714 (=> (not res!764084) (not e!653006))))

(assert (=> start!98714 (= res!764084 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36400 _keys!1208))))))

(assert (=> start!98714 e!653006))

(assert (=> start!98714 tp_is_empty!28813))

(declare-fun array_inv!27346 (array!74432) Bool)

(assert (=> start!98714 (array_inv!27346 _keys!1208)))

(assert (=> start!98714 true))

(assert (=> start!98714 tp!85560))

(declare-fun e!653016 () Bool)

(declare-fun array_inv!27347 (array!74430) Bool)

(assert (=> start!98714 (and (array_inv!27347 _values!996) e!653016)))

(declare-fun b!1147970 () Bool)

(declare-fun e!653008 () Bool)

(assert (=> b!1147970 (= e!653008 e!653004)))

(declare-fun res!764086 () Bool)

(assert (=> b!1147970 (=> res!764086 e!653004)))

(assert (=> b!1147970 (= res!764086 (not (= from!1455 i!673)))))

(declare-fun lt!513053 () ListLongMap!16399)

(assert (=> b!1147970 (= lt!513053 (getCurrentListMapNoExtraKeys!4656 lt!513063 lt!513055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1147970 (= lt!513055 (array!74431 (store (arr!35862 _values!996) i!673 (ValueCellFull!13697 lt!513056)) (size!36399 _values!996)))))

(declare-fun dynLambda!2688 (Int (_ BitVec 64)) V!43545)

(assert (=> b!1147970 (= lt!513056 (dynLambda!2688 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1147970 (= lt!513054 (getCurrentListMapNoExtraKeys!4656 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!52939 () Bool)

(assert (=> bm!52939 (= call!52941 call!52938)))

(declare-fun bm!52940 () Bool)

(assert (=> bm!52940 (= call!52944 (getCurrentListMapNoExtraKeys!4656 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147985 () Bool)

(assert (=> b!1147985 (= e!653015 (= call!52943 call!52944))))

(declare-fun b!1147986 () Bool)

(assert (=> b!1147986 call!52941))

(declare-fun lt!513064 () Unit!37638)

(assert (=> b!1147986 (= lt!513064 call!52939)))

(declare-fun e!653012 () Unit!37638)

(assert (=> b!1147986 (= e!653012 lt!513064)))

(declare-fun bm!52941 () Bool)

(assert (=> bm!52941 (= call!52939 call!52937)))

(declare-fun b!1147987 () Bool)

(declare-fun res!764088 () Bool)

(assert (=> b!1147987 (=> (not res!764088) (not e!653013))))

(assert (=> b!1147987 (= res!764088 (arrayNoDuplicates!0 lt!513063 #b00000000000000000000000000000000 Nil!25208))))

(declare-fun b!1147988 () Bool)

(declare-fun res!764082 () Bool)

(assert (=> b!1147988 (=> (not res!764082) (not e!653006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147988 (= res!764082 (validKeyInArray!0 k!934))))

(declare-fun b!1147989 () Bool)

(declare-fun res!764089 () Bool)

(assert (=> b!1147989 (=> (not res!764089) (not e!653006))))

(assert (=> b!1147989 (= res!764089 (= (select (arr!35863 _keys!1208) i!673) k!934))))

(declare-fun b!1147990 () Bool)

(assert (=> b!1147990 (= e!653019 e!653012)))

(declare-fun c!113354 () Bool)

(assert (=> b!1147990 (= c!113354 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513072))))

(declare-fun b!1147991 () Bool)

(declare-fun res!764091 () Bool)

(assert (=> b!1147991 (=> (not res!764091) (not e!653006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1147991 (= res!764091 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45044 () Bool)

(assert (=> mapIsEmpty!45044 mapRes!45044))

(declare-fun b!1147992 () Bool)

(assert (=> b!1147992 (= e!653013 (not e!653008))))

(declare-fun res!764085 () Bool)

(assert (=> b!1147992 (=> res!764085 e!653008)))

(assert (=> b!1147992 (= res!764085 (bvsgt from!1455 i!673))))

(assert (=> b!1147992 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513066 () Unit!37638)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74432 (_ BitVec 64) (_ BitVec 32)) Unit!37638)

(assert (=> b!1147992 (= lt!513066 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1147993 () Bool)

(assert (=> b!1147993 (= e!653016 (and e!653003 mapRes!45044))))

(declare-fun condMapEmpty!45044 () Bool)

(declare-fun mapDefault!45044 () ValueCell!13697)

