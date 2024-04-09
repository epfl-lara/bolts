; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98982 () Bool)

(assert start!98982)

(declare-fun b_free!24551 () Bool)

(declare-fun b_next!24551 () Bool)

(assert (=> start!98982 (= b_free!24551 (not b_next!24551))))

(declare-fun tp!86364 () Bool)

(declare-fun b_and!39965 () Bool)

(assert (=> start!98982 (= tp!86364 b_and!39965)))

(declare-fun b!1160295 () Bool)

(declare-datatypes ((Unit!38149 0))(
  ( (Unit!38150) )
))
(declare-fun e!659852 () Unit!38149)

(declare-fun Unit!38151 () Unit!38149)

(assert (=> b!1160295 (= e!659852 Unit!38151)))

(declare-fun lt!521864 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1160295 (= lt!521864 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115767 () Bool)

(assert (=> b!1160295 (= c!115767 (and (not lt!521864) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521869 () Unit!38149)

(declare-fun e!659850 () Unit!38149)

(assert (=> b!1160295 (= lt!521869 e!659850)))

(declare-datatypes ((V!43901 0))(
  ( (V!43902 (val!14597 Int)) )
))
(declare-fun zeroValue!944 () V!43901)

(declare-datatypes ((array!74952 0))(
  ( (array!74953 (arr!36123 (Array (_ BitVec 32) (_ BitVec 64))) (size!36660 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74952)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!521881 () Unit!38149)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13831 0))(
  ( (ValueCellFull!13831 (v!17235 V!43901)) (EmptyCell!13831) )
))
(declare-datatypes ((array!74954 0))(
  ( (array!74955 (arr!36124 (Array (_ BitVec 32) ValueCell!13831)) (size!36661 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74954)

(declare-fun minValue!944 () V!43901)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!534 (array!74952 array!74954 (_ BitVec 32) (_ BitVec 32) V!43901 V!43901 (_ BitVec 64) (_ BitVec 32) Int) Unit!38149)

(assert (=> b!1160295 (= lt!521881 (lemmaListMapContainsThenArrayContainsFrom!534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115768 () Bool)

(assert (=> b!1160295 (= c!115768 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770115 () Bool)

(declare-fun e!659849 () Bool)

(assert (=> b!1160295 (= res!770115 e!659849)))

(declare-fun e!659844 () Bool)

(assert (=> b!1160295 (=> (not res!770115) (not e!659844))))

(assert (=> b!1160295 e!659844))

(declare-fun lt!521871 () Unit!38149)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74952 (_ BitVec 32) (_ BitVec 32)) Unit!38149)

(assert (=> b!1160295 (= lt!521871 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25442 0))(
  ( (Nil!25439) (Cons!25438 (h!26647 (_ BitVec 64)) (t!36992 List!25442)) )
))
(declare-fun arrayNoDuplicates!0 (array!74952 (_ BitVec 32) List!25442) Bool)

(assert (=> b!1160295 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25439)))

(declare-fun lt!521877 () Unit!38149)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74952 (_ BitVec 64) (_ BitVec 32) List!25442) Unit!38149)

(assert (=> b!1160295 (= lt!521877 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25439))))

(assert (=> b!1160295 false))

(declare-fun b!1160296 () Bool)

(declare-fun e!659851 () Bool)

(declare-fun tp_is_empty!29081 () Bool)

(assert (=> b!1160296 (= e!659851 tp_is_empty!29081)))

(declare-fun bm!56150 () Bool)

(declare-fun call!56154 () Bool)

(declare-fun call!56153 () Bool)

(assert (=> bm!56150 (= call!56154 call!56153)))

(declare-fun b!1160297 () Bool)

(declare-fun e!659838 () Unit!38149)

(declare-fun lt!521879 () Unit!38149)

(assert (=> b!1160297 (= e!659838 lt!521879)))

(declare-fun call!56157 () Unit!38149)

(assert (=> b!1160297 (= lt!521879 call!56157)))

(assert (=> b!1160297 call!56154))

(declare-fun e!659843 () Bool)

(declare-datatypes ((tuple2!18664 0))(
  ( (tuple2!18665 (_1!9342 (_ BitVec 64)) (_2!9342 V!43901)) )
))
(declare-datatypes ((List!25443 0))(
  ( (Nil!25440) (Cons!25439 (h!26648 tuple2!18664) (t!36993 List!25443)) )
))
(declare-datatypes ((ListLongMap!16645 0))(
  ( (ListLongMap!16646 (toList!8338 List!25443)) )
))
(declare-fun call!56158 () ListLongMap!16645)

(declare-fun b!1160298 () Bool)

(declare-fun call!56159 () ListLongMap!16645)

(declare-fun -!1410 (ListLongMap!16645 (_ BitVec 64)) ListLongMap!16645)

(assert (=> b!1160298 (= e!659843 (= call!56159 (-!1410 call!56158 k!934)))))

(declare-fun b!1160299 () Bool)

(assert (=> b!1160299 call!56154))

(declare-fun lt!521883 () Unit!38149)

(assert (=> b!1160299 (= lt!521883 call!56157)))

(declare-fun e!659841 () Unit!38149)

(assert (=> b!1160299 (= e!659841 lt!521883)))

(declare-fun b!1160300 () Bool)

(declare-fun lt!521865 () array!74952)

(declare-fun lt!521863 () ListLongMap!16645)

(declare-fun lt!521867 () array!74954)

(declare-fun e!659839 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4774 (array!74952 array!74954 (_ BitVec 32) (_ BitVec 32) V!43901 V!43901 (_ BitVec 32) Int) ListLongMap!16645)

(assert (=> b!1160300 (= e!659839 (= lt!521863 (getCurrentListMapNoExtraKeys!4774 lt!521865 lt!521867 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160301 () Bool)

(declare-fun e!659837 () Bool)

(declare-fun e!659842 () Bool)

(assert (=> b!1160301 (= e!659837 e!659842)))

(declare-fun res!770122 () Bool)

(assert (=> b!1160301 (=> res!770122 e!659842)))

(assert (=> b!1160301 (= res!770122 (not (= (select (arr!36123 _keys!1208) from!1455) k!934)))))

(assert (=> b!1160301 e!659843))

(declare-fun c!115766 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160301 (= c!115766 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521862 () Unit!38149)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!633 (array!74952 array!74954 (_ BitVec 32) (_ BitVec 32) V!43901 V!43901 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38149)

(assert (=> b!1160301 (= lt!521862 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!633 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160302 () Bool)

(declare-fun e!659840 () Bool)

(assert (=> b!1160302 (= e!659840 tp_is_empty!29081)))

(declare-fun res!770120 () Bool)

(declare-fun e!659848 () Bool)

(assert (=> start!98982 (=> (not res!770120) (not e!659848))))

(assert (=> start!98982 (= res!770120 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36660 _keys!1208))))))

(assert (=> start!98982 e!659848))

(assert (=> start!98982 tp_is_empty!29081))

(declare-fun array_inv!27510 (array!74952) Bool)

(assert (=> start!98982 (array_inv!27510 _keys!1208)))

(assert (=> start!98982 true))

(assert (=> start!98982 tp!86364))

(declare-fun e!659845 () Bool)

(declare-fun array_inv!27511 (array!74954) Bool)

(assert (=> start!98982 (and (array_inv!27511 _values!996) e!659845)))

(declare-fun b!1160294 () Bool)

(assert (=> b!1160294 (= e!659842 true)))

(assert (=> b!1160294 e!659839))

(declare-fun res!770112 () Bool)

(assert (=> b!1160294 (=> (not res!770112) (not e!659839))))

(declare-fun lt!521866 () ListLongMap!16645)

(assert (=> b!1160294 (= res!770112 (= lt!521863 lt!521866))))

(declare-fun lt!521874 () ListLongMap!16645)

(assert (=> b!1160294 (= lt!521863 (-!1410 lt!521874 k!934))))

(declare-fun lt!521873 () V!43901)

(declare-fun +!3664 (ListLongMap!16645 tuple2!18664) ListLongMap!16645)

(assert (=> b!1160294 (= (-!1410 (+!3664 lt!521866 (tuple2!18665 (select (arr!36123 _keys!1208) from!1455) lt!521873)) (select (arr!36123 _keys!1208) from!1455)) lt!521866)))

(declare-fun lt!521872 () Unit!38149)

(declare-fun addThenRemoveForNewKeyIsSame!248 (ListLongMap!16645 (_ BitVec 64) V!43901) Unit!38149)

(assert (=> b!1160294 (= lt!521872 (addThenRemoveForNewKeyIsSame!248 lt!521866 (select (arr!36123 _keys!1208) from!1455) lt!521873))))

(declare-fun lt!521875 () V!43901)

(declare-fun get!18452 (ValueCell!13831 V!43901) V!43901)

(assert (=> b!1160294 (= lt!521873 (get!18452 (select (arr!36124 _values!996) from!1455) lt!521875))))

(declare-fun lt!521868 () Unit!38149)

(assert (=> b!1160294 (= lt!521868 e!659852)))

(declare-fun c!115765 () Bool)

(declare-fun contains!6820 (ListLongMap!16645 (_ BitVec 64)) Bool)

(assert (=> b!1160294 (= c!115765 (contains!6820 lt!521866 k!934))))

(assert (=> b!1160294 (= lt!521866 (getCurrentListMapNoExtraKeys!4774 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45446 () Bool)

(declare-fun mapRes!45446 () Bool)

(assert (=> mapIsEmpty!45446 mapRes!45446))

(declare-fun c!115769 () Bool)

(declare-fun bm!56151 () Bool)

(declare-fun lt!521878 () ListLongMap!16645)

(declare-fun call!56156 () Unit!38149)

(declare-fun addStillContains!961 (ListLongMap!16645 (_ BitVec 64) V!43901 (_ BitVec 64)) Unit!38149)

(assert (=> bm!56151 (= call!56156 (addStillContains!961 (ite c!115767 lt!521878 lt!521866) (ite c!115767 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115769 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115767 minValue!944 (ite c!115769 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1160303 () Bool)

(assert (=> b!1160303 (contains!6820 (+!3664 lt!521878 (tuple2!18665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!521882 () Unit!38149)

(assert (=> b!1160303 (= lt!521882 call!56156)))

(assert (=> b!1160303 call!56153))

(declare-fun call!56155 () ListLongMap!16645)

(assert (=> b!1160303 (= lt!521878 call!56155)))

(declare-fun lt!521870 () Unit!38149)

(assert (=> b!1160303 (= lt!521870 (addStillContains!961 lt!521866 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1160303 (= e!659850 lt!521882)))

(declare-fun bm!56152 () Bool)

(assert (=> bm!56152 (= call!56159 (getCurrentListMapNoExtraKeys!4774 lt!521865 lt!521867 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160304 () Bool)

(declare-fun res!770111 () Bool)

(assert (=> b!1160304 (=> (not res!770111) (not e!659848))))

(assert (=> b!1160304 (= res!770111 (= (select (arr!36123 _keys!1208) i!673) k!934))))

(declare-fun bm!56153 () Bool)

(assert (=> bm!56153 (= call!56158 (getCurrentListMapNoExtraKeys!4774 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160305 () Bool)

(declare-fun res!770121 () Bool)

(assert (=> b!1160305 (=> (not res!770121) (not e!659848))))

(assert (=> b!1160305 (= res!770121 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36660 _keys!1208))))))

(declare-fun b!1160306 () Bool)

(assert (=> b!1160306 (= e!659843 (= call!56159 call!56158))))

(declare-fun b!1160307 () Bool)

(assert (=> b!1160307 (= c!115769 (and (not lt!521864) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1160307 (= e!659850 e!659838)))

(declare-fun b!1160308 () Bool)

(declare-fun res!770117 () Bool)

(assert (=> b!1160308 (=> (not res!770117) (not e!659848))))

(assert (=> b!1160308 (= res!770117 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25439))))

(declare-fun b!1160309 () Bool)

(declare-fun res!770116 () Bool)

(assert (=> b!1160309 (=> (not res!770116) (not e!659848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74952 (_ BitVec 32)) Bool)

(assert (=> b!1160309 (= res!770116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160310 () Bool)

(assert (=> b!1160310 (= e!659849 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521864) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1160311 () Bool)

(declare-fun e!659847 () Bool)

(assert (=> b!1160311 (= e!659848 e!659847)))

(declare-fun res!770109 () Bool)

(assert (=> b!1160311 (=> (not res!770109) (not e!659847))))

(assert (=> b!1160311 (= res!770109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521865 mask!1564))))

(assert (=> b!1160311 (= lt!521865 (array!74953 (store (arr!36123 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36660 _keys!1208)))))

(declare-fun bm!56154 () Bool)

(assert (=> bm!56154 (= call!56155 (+!3664 lt!521866 (ite (or c!115767 c!115769) (tuple2!18665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1160312 () Bool)

(declare-fun res!770114 () Bool)

(assert (=> b!1160312 (=> (not res!770114) (not e!659848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160312 (= res!770114 (validMask!0 mask!1564))))

(declare-fun b!1160313 () Bool)

(declare-fun arrayContainsKey!0 (array!74952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160313 (= e!659849 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160314 () Bool)

(declare-fun Unit!38152 () Unit!38149)

(assert (=> b!1160314 (= e!659852 Unit!38152)))

(declare-fun b!1160315 () Bool)

(declare-fun res!770110 () Bool)

(assert (=> b!1160315 (=> (not res!770110) (not e!659848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160315 (= res!770110 (validKeyInArray!0 k!934))))

(declare-fun b!1160316 () Bool)

(assert (=> b!1160316 (= e!659838 e!659841)))

(declare-fun c!115770 () Bool)

(assert (=> b!1160316 (= c!115770 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521864))))

(declare-fun mapNonEmpty!45446 () Bool)

(declare-fun tp!86365 () Bool)

(assert (=> mapNonEmpty!45446 (= mapRes!45446 (and tp!86365 e!659851))))

(declare-fun mapValue!45446 () ValueCell!13831)

(declare-fun mapRest!45446 () (Array (_ BitVec 32) ValueCell!13831))

(declare-fun mapKey!45446 () (_ BitVec 32))

(assert (=> mapNonEmpty!45446 (= (arr!36124 _values!996) (store mapRest!45446 mapKey!45446 mapValue!45446))))

(declare-fun b!1160317 () Bool)

(declare-fun res!770123 () Bool)

(assert (=> b!1160317 (=> (not res!770123) (not e!659847))))

(assert (=> b!1160317 (= res!770123 (arrayNoDuplicates!0 lt!521865 #b00000000000000000000000000000000 Nil!25439))))

(declare-fun bm!56155 () Bool)

(declare-fun call!56160 () ListLongMap!16645)

(assert (=> bm!56155 (= call!56160 call!56155)))

(declare-fun b!1160318 () Bool)

(declare-fun res!770113 () Bool)

(assert (=> b!1160318 (=> (not res!770113) (not e!659848))))

(assert (=> b!1160318 (= res!770113 (and (= (size!36661 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36660 _keys!1208) (size!36661 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160319 () Bool)

(declare-fun e!659846 () Bool)

(assert (=> b!1160319 (= e!659847 (not e!659846))))

(declare-fun res!770119 () Bool)

(assert (=> b!1160319 (=> res!770119 e!659846)))

(assert (=> b!1160319 (= res!770119 (bvsgt from!1455 i!673))))

(assert (=> b!1160319 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!521876 () Unit!38149)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74952 (_ BitVec 64) (_ BitVec 32)) Unit!38149)

(assert (=> b!1160319 (= lt!521876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!56156 () Bool)

(assert (=> bm!56156 (= call!56153 (contains!6820 (ite c!115767 lt!521878 call!56160) k!934))))

(declare-fun b!1160320 () Bool)

(declare-fun Unit!38153 () Unit!38149)

(assert (=> b!1160320 (= e!659841 Unit!38153)))

(declare-fun b!1160321 () Bool)

(assert (=> b!1160321 (= e!659846 e!659837)))

(declare-fun res!770118 () Bool)

(assert (=> b!1160321 (=> res!770118 e!659837)))

(assert (=> b!1160321 (= res!770118 (not (= from!1455 i!673)))))

(declare-fun lt!521880 () ListLongMap!16645)

(assert (=> b!1160321 (= lt!521880 (getCurrentListMapNoExtraKeys!4774 lt!521865 lt!521867 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1160321 (= lt!521867 (array!74955 (store (arr!36124 _values!996) i!673 (ValueCellFull!13831 lt!521875)) (size!36661 _values!996)))))

(declare-fun dynLambda!2776 (Int (_ BitVec 64)) V!43901)

(assert (=> b!1160321 (= lt!521875 (dynLambda!2776 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1160321 (= lt!521874 (getCurrentListMapNoExtraKeys!4774 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56157 () Bool)

(assert (=> bm!56157 (= call!56157 call!56156)))

(declare-fun b!1160322 () Bool)

(assert (=> b!1160322 (= e!659845 (and e!659840 mapRes!45446))))

(declare-fun condMapEmpty!45446 () Bool)

(declare-fun mapDefault!45446 () ValueCell!13831)

