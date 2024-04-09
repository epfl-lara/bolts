; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99018 () Bool)

(assert start!99018)

(declare-fun b_free!24587 () Bool)

(declare-fun b_next!24587 () Bool)

(assert (=> start!99018 (= b_free!24587 (not b_next!24587))))

(declare-fun tp!86473 () Bool)

(declare-fun b_and!40037 () Bool)

(assert (=> start!99018 (= tp!86473 b_and!40037)))

(declare-fun b!1161950 () Bool)

(declare-fun e!660759 () Bool)

(declare-fun e!660770 () Bool)

(assert (=> b!1161950 (= e!660759 e!660770)))

(declare-fun res!770932 () Bool)

(assert (=> b!1161950 (=> (not res!770932) (not e!660770))))

(declare-datatypes ((array!75024 0))(
  ( (array!75025 (arr!36159 (Array (_ BitVec 32) (_ BitVec 64))) (size!36696 (_ BitVec 32))) )
))
(declare-fun lt!523056 () array!75024)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75024 (_ BitVec 32)) Bool)

(assert (=> b!1161950 (= res!770932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523056 mask!1564))))

(declare-fun _keys!1208 () array!75024)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161950 (= lt!523056 (array!75025 (store (arr!36159 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36696 _keys!1208)))))

(declare-fun b!1161951 () Bool)

(declare-fun res!770919 () Bool)

(assert (=> b!1161951 (=> (not res!770919) (not e!660759))))

(assert (=> b!1161951 (= res!770919 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36696 _keys!1208))))))

(declare-fun e!660755 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1161952 () Bool)

(declare-fun arrayContainsKey!0 (array!75024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161952 (= e!660755 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161953 () Bool)

(declare-fun call!56587 () Bool)

(assert (=> b!1161953 call!56587))

(declare-datatypes ((Unit!38224 0))(
  ( (Unit!38225) )
))
(declare-fun lt!523057 () Unit!38224)

(declare-fun call!56585 () Unit!38224)

(assert (=> b!1161953 (= lt!523057 call!56585)))

(declare-fun e!660768 () Unit!38224)

(assert (=> b!1161953 (= e!660768 lt!523057)))

(declare-fun b!1161954 () Bool)

(declare-fun e!660766 () Bool)

(assert (=> b!1161954 (= e!660766 true)))

(declare-fun e!660761 () Bool)

(assert (=> b!1161954 e!660761))

(declare-fun res!770921 () Bool)

(assert (=> b!1161954 (=> (not res!770921) (not e!660761))))

(declare-datatypes ((V!43949 0))(
  ( (V!43950 (val!14615 Int)) )
))
(declare-datatypes ((tuple2!18700 0))(
  ( (tuple2!18701 (_1!9360 (_ BitVec 64)) (_2!9360 V!43949)) )
))
(declare-datatypes ((List!25476 0))(
  ( (Nil!25473) (Cons!25472 (h!26681 tuple2!18700) (t!37062 List!25476)) )
))
(declare-datatypes ((ListLongMap!16681 0))(
  ( (ListLongMap!16682 (toList!8356 List!25476)) )
))
(declare-fun lt!523064 () ListLongMap!16681)

(declare-fun lt!523060 () ListLongMap!16681)

(assert (=> b!1161954 (= res!770921 (= lt!523064 lt!523060))))

(declare-fun lt!523050 () ListLongMap!16681)

(declare-fun -!1425 (ListLongMap!16681 (_ BitVec 64)) ListLongMap!16681)

(assert (=> b!1161954 (= lt!523064 (-!1425 lt!523050 k!934))))

(declare-fun lt!523068 () V!43949)

(declare-fun +!3678 (ListLongMap!16681 tuple2!18700) ListLongMap!16681)

(assert (=> b!1161954 (= (-!1425 (+!3678 lt!523060 (tuple2!18701 (select (arr!36159 _keys!1208) from!1455) lt!523068)) (select (arr!36159 _keys!1208) from!1455)) lt!523060)))

(declare-fun lt!523065 () Unit!38224)

(declare-fun addThenRemoveForNewKeyIsSame!261 (ListLongMap!16681 (_ BitVec 64) V!43949) Unit!38224)

(assert (=> b!1161954 (= lt!523065 (addThenRemoveForNewKeyIsSame!261 lt!523060 (select (arr!36159 _keys!1208) from!1455) lt!523068))))

(declare-fun lt!523070 () V!43949)

(declare-datatypes ((ValueCell!13849 0))(
  ( (ValueCellFull!13849 (v!17253 V!43949)) (EmptyCell!13849) )
))
(declare-datatypes ((array!75026 0))(
  ( (array!75027 (arr!36160 (Array (_ BitVec 32) ValueCell!13849)) (size!36697 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75026)

(declare-fun get!18477 (ValueCell!13849 V!43949) V!43949)

(assert (=> b!1161954 (= lt!523068 (get!18477 (select (arr!36160 _values!996) from!1455) lt!523070))))

(declare-fun lt!523052 () Unit!38224)

(declare-fun e!660757 () Unit!38224)

(assert (=> b!1161954 (= lt!523052 e!660757)))

(declare-fun c!116090 () Bool)

(declare-fun contains!6835 (ListLongMap!16681 (_ BitVec 64)) Bool)

(assert (=> b!1161954 (= c!116090 (contains!6835 lt!523060 k!934))))

(declare-fun zeroValue!944 () V!43949)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43949)

(declare-fun getCurrentListMapNoExtraKeys!4791 (array!75024 array!75026 (_ BitVec 32) (_ BitVec 32) V!43949 V!43949 (_ BitVec 32) Int) ListLongMap!16681)

(assert (=> b!1161954 (= lt!523060 (getCurrentListMapNoExtraKeys!4791 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161955 () Bool)

(declare-fun e!660765 () Unit!38224)

(assert (=> b!1161955 (= e!660765 e!660768)))

(declare-fun c!116089 () Bool)

(declare-fun lt!523053 () Bool)

(assert (=> b!1161955 (= c!116089 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523053))))

(declare-fun call!56590 () ListLongMap!16681)

(declare-fun bm!56582 () Bool)

(assert (=> bm!56582 (= call!56590 (getCurrentListMapNoExtraKeys!4791 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161956 () Bool)

(declare-fun call!56591 () ListLongMap!16681)

(declare-fun e!660758 () Bool)

(assert (=> b!1161956 (= e!660758 (= call!56591 (-!1425 call!56590 k!934)))))

(declare-fun b!1161957 () Bool)

(declare-fun e!660756 () Bool)

(declare-fun tp_is_empty!29117 () Bool)

(assert (=> b!1161957 (= e!660756 tp_is_empty!29117)))

(declare-fun bm!56583 () Bool)

(declare-fun lt!523061 () array!75026)

(assert (=> bm!56583 (= call!56591 (getCurrentListMapNoExtraKeys!4791 lt!523056 lt!523061 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!770929 () Bool)

(assert (=> start!99018 (=> (not res!770929) (not e!660759))))

(assert (=> start!99018 (= res!770929 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36696 _keys!1208))))))

(assert (=> start!99018 e!660759))

(assert (=> start!99018 tp_is_empty!29117))

(declare-fun array_inv!27538 (array!75024) Bool)

(assert (=> start!99018 (array_inv!27538 _keys!1208)))

(assert (=> start!99018 true))

(assert (=> start!99018 tp!86473))

(declare-fun e!660764 () Bool)

(declare-fun array_inv!27539 (array!75026) Bool)

(assert (=> start!99018 (and (array_inv!27539 _values!996) e!660764)))

(declare-fun b!1161958 () Bool)

(declare-fun e!660763 () Bool)

(assert (=> b!1161958 (= e!660763 e!660766)))

(declare-fun res!770933 () Bool)

(assert (=> b!1161958 (=> res!770933 e!660766)))

(assert (=> b!1161958 (= res!770933 (not (= (select (arr!36159 _keys!1208) from!1455) k!934)))))

(assert (=> b!1161958 e!660758))

(declare-fun c!116094 () Bool)

(assert (=> b!1161958 (= c!116094 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523051 () Unit!38224)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!647 (array!75024 array!75026 (_ BitVec 32) (_ BitVec 32) V!43949 V!43949 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38224)

(assert (=> b!1161958 (= lt!523051 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!647 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161959 () Bool)

(declare-fun lt!523067 () Unit!38224)

(assert (=> b!1161959 (= e!660765 lt!523067)))

(assert (=> b!1161959 (= lt!523067 call!56585)))

(assert (=> b!1161959 call!56587))

(declare-fun b!1161960 () Bool)

(declare-fun Unit!38226 () Unit!38224)

(assert (=> b!1161960 (= e!660757 Unit!38226)))

(assert (=> b!1161960 (= lt!523053 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116091 () Bool)

(assert (=> b!1161960 (= c!116091 (and (not lt!523053) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523059 () Unit!38224)

(declare-fun e!660762 () Unit!38224)

(assert (=> b!1161960 (= lt!523059 e!660762)))

(declare-fun lt!523066 () Unit!38224)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!546 (array!75024 array!75026 (_ BitVec 32) (_ BitVec 32) V!43949 V!43949 (_ BitVec 64) (_ BitVec 32) Int) Unit!38224)

(assert (=> b!1161960 (= lt!523066 (lemmaListMapContainsThenArrayContainsFrom!546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116093 () Bool)

(assert (=> b!1161960 (= c!116093 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770920 () Bool)

(declare-fun e!660767 () Bool)

(assert (=> b!1161960 (= res!770920 e!660767)))

(assert (=> b!1161960 (=> (not res!770920) (not e!660755))))

(assert (=> b!1161960 e!660755))

(declare-fun lt!523054 () Unit!38224)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75024 (_ BitVec 32) (_ BitVec 32)) Unit!38224)

(assert (=> b!1161960 (= lt!523054 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25477 0))(
  ( (Nil!25474) (Cons!25473 (h!26682 (_ BitVec 64)) (t!37063 List!25477)) )
))
(declare-fun arrayNoDuplicates!0 (array!75024 (_ BitVec 32) List!25477) Bool)

(assert (=> b!1161960 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25474)))

(declare-fun lt!523062 () Unit!38224)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75024 (_ BitVec 64) (_ BitVec 32) List!25477) Unit!38224)

(assert (=> b!1161960 (= lt!523062 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25474))))

(assert (=> b!1161960 false))

(declare-fun lt!523069 () ListLongMap!16681)

(declare-fun call!56586 () Unit!38224)

(declare-fun bm!56584 () Bool)

(declare-fun c!116092 () Bool)

(declare-fun addStillContains!976 (ListLongMap!16681 (_ BitVec 64) V!43949 (_ BitVec 64)) Unit!38224)

(assert (=> bm!56584 (= call!56586 (addStillContains!976 (ite c!116091 lt!523069 lt!523060) (ite c!116091 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116092 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116091 minValue!944 (ite c!116092 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1161961 () Bool)

(assert (=> b!1161961 (= e!660767 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523053) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1161962 () Bool)

(declare-fun res!770924 () Bool)

(assert (=> b!1161962 (=> (not res!770924) (not e!660759))))

(assert (=> b!1161962 (= res!770924 (= (select (arr!36159 _keys!1208) i!673) k!934))))

(declare-fun bm!56585 () Bool)

(declare-fun call!56592 () Bool)

(assert (=> bm!56585 (= call!56587 call!56592)))

(declare-fun b!1161963 () Bool)

(assert (=> b!1161963 (= e!660758 (= call!56591 call!56590))))

(declare-fun b!1161964 () Bool)

(declare-fun res!770923 () Bool)

(assert (=> b!1161964 (=> (not res!770923) (not e!660759))))

(assert (=> b!1161964 (= res!770923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45500 () Bool)

(declare-fun mapRes!45500 () Bool)

(declare-fun tp!86472 () Bool)

(declare-fun e!660771 () Bool)

(assert (=> mapNonEmpty!45500 (= mapRes!45500 (and tp!86472 e!660771))))

(declare-fun mapRest!45500 () (Array (_ BitVec 32) ValueCell!13849))

(declare-fun mapValue!45500 () ValueCell!13849)

(declare-fun mapKey!45500 () (_ BitVec 32))

(assert (=> mapNonEmpty!45500 (= (arr!36160 _values!996) (store mapRest!45500 mapKey!45500 mapValue!45500))))

(declare-fun mapIsEmpty!45500 () Bool)

(assert (=> mapIsEmpty!45500 mapRes!45500))

(declare-fun b!1161965 () Bool)

(assert (=> b!1161965 (= e!660771 tp_is_empty!29117)))

(declare-fun b!1161966 () Bool)

(declare-fun e!660769 () Bool)

(assert (=> b!1161966 (= e!660770 (not e!660769))))

(declare-fun res!770925 () Bool)

(assert (=> b!1161966 (=> res!770925 e!660769)))

(assert (=> b!1161966 (= res!770925 (bvsgt from!1455 i!673))))

(assert (=> b!1161966 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!523063 () Unit!38224)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75024 (_ BitVec 64) (_ BitVec 32)) Unit!38224)

(assert (=> b!1161966 (= lt!523063 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1161967 () Bool)

(assert (=> b!1161967 (= e!660767 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161968 () Bool)

(assert (=> b!1161968 (= e!660761 (= lt!523064 (getCurrentListMapNoExtraKeys!4791 lt!523056 lt!523061 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1161969 () Bool)

(declare-fun Unit!38227 () Unit!38224)

(assert (=> b!1161969 (= e!660757 Unit!38227)))

(declare-fun call!56588 () ListLongMap!16681)

(declare-fun bm!56586 () Bool)

(assert (=> bm!56586 (= call!56588 (+!3678 lt!523060 (ite (or c!116091 c!116092) (tuple2!18701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1161970 () Bool)

(assert (=> b!1161970 (= c!116092 (and (not lt!523053) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1161970 (= e!660762 e!660765)))

(declare-fun b!1161971 () Bool)

(assert (=> b!1161971 (= e!660769 e!660763)))

(declare-fun res!770931 () Bool)

(assert (=> b!1161971 (=> res!770931 e!660763)))

(assert (=> b!1161971 (= res!770931 (not (= from!1455 i!673)))))

(declare-fun lt!523058 () ListLongMap!16681)

(assert (=> b!1161971 (= lt!523058 (getCurrentListMapNoExtraKeys!4791 lt!523056 lt!523061 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1161971 (= lt!523061 (array!75027 (store (arr!36160 _values!996) i!673 (ValueCellFull!13849 lt!523070)) (size!36697 _values!996)))))

(declare-fun dynLambda!2791 (Int (_ BitVec 64)) V!43949)

(assert (=> b!1161971 (= lt!523070 (dynLambda!2791 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1161971 (= lt!523050 (getCurrentListMapNoExtraKeys!4791 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1161972 () Bool)

(assert (=> b!1161972 (contains!6835 (+!3678 lt!523069 (tuple2!18701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!523071 () Unit!38224)

(assert (=> b!1161972 (= lt!523071 call!56586)))

(assert (=> b!1161972 call!56592))

(assert (=> b!1161972 (= lt!523069 call!56588)))

(declare-fun lt!523055 () Unit!38224)

(assert (=> b!1161972 (= lt!523055 (addStillContains!976 lt!523060 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1161972 (= e!660762 lt!523071)))

(declare-fun bm!56587 () Bool)

(assert (=> bm!56587 (= call!56585 call!56586)))

(declare-fun b!1161973 () Bool)

(declare-fun res!770930 () Bool)

(assert (=> b!1161973 (=> (not res!770930) (not e!660759))))

(assert (=> b!1161973 (= res!770930 (and (= (size!36697 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36696 _keys!1208) (size!36697 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!56588 () Bool)

(declare-fun call!56589 () ListLongMap!16681)

(assert (=> bm!56588 (= call!56592 (contains!6835 (ite c!116091 lt!523069 call!56589) k!934))))

(declare-fun b!1161974 () Bool)

(declare-fun res!770928 () Bool)

(assert (=> b!1161974 (=> (not res!770928) (not e!660759))))

(assert (=> b!1161974 (= res!770928 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25474))))

(declare-fun b!1161975 () Bool)

(declare-fun res!770927 () Bool)

(assert (=> b!1161975 (=> (not res!770927) (not e!660759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1161975 (= res!770927 (validMask!0 mask!1564))))

(declare-fun bm!56589 () Bool)

(assert (=> bm!56589 (= call!56589 call!56588)))

(declare-fun b!1161976 () Bool)

(declare-fun res!770926 () Bool)

(assert (=> b!1161976 (=> (not res!770926) (not e!660759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161976 (= res!770926 (validKeyInArray!0 k!934))))

(declare-fun b!1161977 () Bool)

(declare-fun Unit!38228 () Unit!38224)

(assert (=> b!1161977 (= e!660768 Unit!38228)))

(declare-fun b!1161978 () Bool)

(assert (=> b!1161978 (= e!660764 (and e!660756 mapRes!45500))))

(declare-fun condMapEmpty!45500 () Bool)

(declare-fun mapDefault!45500 () ValueCell!13849)

