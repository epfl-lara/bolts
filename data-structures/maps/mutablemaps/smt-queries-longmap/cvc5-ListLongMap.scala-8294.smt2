; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101110 () Bool)

(assert start!101110)

(declare-fun b_free!26035 () Bool)

(declare-fun b_next!26035 () Bool)

(assert (=> start!101110 (= b_free!26035 (not b_next!26035))))

(declare-fun tp!91124 () Bool)

(declare-fun b_and!43179 () Bool)

(assert (=> start!101110 (= tp!91124 b_and!43179)))

(declare-fun b!1211393 () Bool)

(declare-datatypes ((V!46113 0))(
  ( (V!46114 (val!15426 Int)) )
))
(declare-datatypes ((tuple2!19948 0))(
  ( (tuple2!19949 (_1!9984 (_ BitVec 64)) (_2!9984 V!46113)) )
))
(declare-datatypes ((List!26768 0))(
  ( (Nil!26765) (Cons!26764 (h!27973 tuple2!19948) (t!39790 List!26768)) )
))
(declare-datatypes ((ListLongMap!17929 0))(
  ( (ListLongMap!17930 (toList!8980 List!26768)) )
))
(declare-fun call!59887 () ListLongMap!17929)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6995 (ListLongMap!17929 (_ BitVec 64)) Bool)

(assert (=> b!1211393 (contains!6995 call!59887 k!934)))

(declare-datatypes ((Unit!40080 0))(
  ( (Unit!40081) )
))
(declare-fun lt!550220 () Unit!40080)

(declare-fun call!59881 () Unit!40080)

(assert (=> b!1211393 (= lt!550220 call!59881)))

(declare-fun call!59886 () Bool)

(assert (=> b!1211393 call!59886))

(declare-fun lt!550208 () ListLongMap!17929)

(declare-fun lt!550219 () ListLongMap!17929)

(declare-fun zeroValue!944 () V!46113)

(declare-fun +!4007 (ListLongMap!17929 tuple2!19948) ListLongMap!17929)

(assert (=> b!1211393 (= lt!550208 (+!4007 lt!550219 (tuple2!19949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!550212 () Unit!40080)

(declare-fun addStillContains!1068 (ListLongMap!17929 (_ BitVec 64) V!46113 (_ BitVec 64)) Unit!40080)

(assert (=> b!1211393 (= lt!550212 (addStillContains!1068 lt!550219 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!688016 () Unit!40080)

(assert (=> b!1211393 (= e!688016 lt!550220)))

(declare-fun mapIsEmpty!47980 () Bool)

(declare-fun mapRes!47980 () Bool)

(assert (=> mapIsEmpty!47980 mapRes!47980))

(declare-fun bm!59877 () Bool)

(declare-fun minValue!944 () V!46113)

(declare-fun c!119419 () Bool)

(declare-fun c!119420 () Bool)

(assert (=> bm!59877 (= call!59887 (+!4007 (ite c!119420 lt!550208 lt!550219) (ite c!119420 (tuple2!19949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119419 (tuple2!19949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1211394 () Bool)

(declare-fun res!804832 () Bool)

(declare-fun e!688010 () Bool)

(assert (=> b!1211394 (=> (not res!804832) (not e!688010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1211394 (= res!804832 (validKeyInArray!0 k!934))))

(declare-fun e!688013 () Bool)

(declare-fun lt!550207 () Bool)

(declare-fun b!1211395 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1211395 (= e!688013 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550207) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((ValueCell!14660 0))(
  ( (ValueCellFull!14660 (v!18079 V!46113)) (EmptyCell!14660) )
))
(declare-datatypes ((array!78236 0))(
  ( (array!78237 (arr!37750 (Array (_ BitVec 32) ValueCell!14660)) (size!38287 (_ BitVec 32))) )
))
(declare-fun lt!550202 () array!78236)

(declare-fun call!59883 () ListLongMap!17929)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78238 0))(
  ( (array!78239 (arr!37751 (Array (_ BitVec 32) (_ BitVec 64))) (size!38288 (_ BitVec 32))) )
))
(declare-fun lt!550210 () array!78238)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!59878 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5385 (array!78238 array!78236 (_ BitVec 32) (_ BitVec 32) V!46113 V!46113 (_ BitVec 32) Int) ListLongMap!17929)

(assert (=> bm!59878 (= call!59883 (getCurrentListMapNoExtraKeys!5385 lt!550210 lt!550202 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59879 () Bool)

(declare-fun call!59882 () Unit!40080)

(assert (=> bm!59879 (= call!59882 call!59881)))

(declare-fun b!1211396 () Bool)

(declare-fun e!688015 () Bool)

(declare-fun e!688021 () Bool)

(assert (=> b!1211396 (= e!688015 e!688021)))

(declare-fun res!804837 () Bool)

(assert (=> b!1211396 (=> res!804837 e!688021)))

(declare-fun _keys!1208 () array!78238)

(assert (=> b!1211396 (= res!804837 (not (= (select (arr!37751 _keys!1208) from!1455) k!934)))))

(declare-fun e!688024 () Bool)

(assert (=> b!1211396 e!688024))

(declare-fun c!119423 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211396 (= c!119423 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!550205 () Unit!40080)

(declare-fun _values!996 () array!78236)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1086 (array!78238 array!78236 (_ BitVec 32) (_ BitVec 32) V!46113 V!46113 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40080)

(assert (=> b!1211396 (= lt!550205 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1086 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!59880 () ListLongMap!17929)

(declare-fun b!1211397 () Bool)

(declare-fun -!1878 (ListLongMap!17929 (_ BitVec 64)) ListLongMap!17929)

(assert (=> b!1211397 (= e!688024 (= call!59883 (-!1878 call!59880 k!934)))))

(declare-fun b!1211398 () Bool)

(declare-fun res!804840 () Bool)

(assert (=> b!1211398 (=> (not res!804840) (not e!688010))))

(assert (=> b!1211398 (= res!804840 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38288 _keys!1208))))))

(declare-fun b!1211399 () Bool)

(declare-fun e!688019 () Bool)

(declare-fun tp_is_empty!30739 () Bool)

(assert (=> b!1211399 (= e!688019 tp_is_empty!30739)))

(declare-fun b!1211400 () Bool)

(declare-fun res!804839 () Bool)

(assert (=> b!1211400 (=> (not res!804839) (not e!688010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78238 (_ BitVec 32)) Bool)

(assert (=> b!1211400 (= res!804839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1211401 () Bool)

(declare-fun res!804845 () Bool)

(declare-fun e!688020 () Bool)

(assert (=> b!1211401 (=> (not res!804845) (not e!688020))))

(declare-datatypes ((List!26769 0))(
  ( (Nil!26766) (Cons!26765 (h!27974 (_ BitVec 64)) (t!39791 List!26769)) )
))
(declare-fun arrayNoDuplicates!0 (array!78238 (_ BitVec 32) List!26769) Bool)

(assert (=> b!1211401 (= res!804845 (arrayNoDuplicates!0 lt!550210 #b00000000000000000000000000000000 Nil!26766))))

(declare-fun b!1211402 () Bool)

(declare-fun call!59885 () Bool)

(assert (=> b!1211402 call!59885))

(declare-fun lt!550206 () Unit!40080)

(assert (=> b!1211402 (= lt!550206 call!59882)))

(declare-fun e!688025 () Unit!40080)

(assert (=> b!1211402 (= e!688025 lt!550206)))

(declare-fun bm!59880 () Bool)

(assert (=> bm!59880 (= call!59885 call!59886)))

(declare-fun b!1211403 () Bool)

(declare-fun e!688017 () Unit!40080)

(assert (=> b!1211403 (= e!688017 e!688025)))

(declare-fun c!119421 () Bool)

(assert (=> b!1211403 (= c!119421 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550207))))

(declare-fun b!1211404 () Bool)

(declare-fun res!804842 () Bool)

(assert (=> b!1211404 (=> (not res!804842) (not e!688010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211404 (= res!804842 (validMask!0 mask!1564))))

(declare-fun e!688009 () Bool)

(declare-fun b!1211405 () Bool)

(declare-fun arrayContainsKey!0 (array!78238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211405 (= e!688009 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211406 () Bool)

(declare-fun e!688014 () Unit!40080)

(declare-fun Unit!40082 () Unit!40080)

(assert (=> b!1211406 (= e!688014 Unit!40082)))

(declare-fun b!1211407 () Bool)

(declare-fun res!804835 () Bool)

(assert (=> b!1211407 (=> (not res!804835) (not e!688010))))

(assert (=> b!1211407 (= res!804835 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26766))))

(declare-fun bm!59881 () Bool)

(declare-fun call!59884 () ListLongMap!17929)

(assert (=> bm!59881 (= call!59884 call!59887)))

(declare-fun b!1211408 () Bool)

(declare-fun e!688018 () Bool)

(assert (=> b!1211408 (= e!688020 (not e!688018))))

(declare-fun res!804834 () Bool)

(assert (=> b!1211408 (=> res!804834 e!688018)))

(assert (=> b!1211408 (= res!804834 (bvsgt from!1455 i!673))))

(assert (=> b!1211408 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!550217 () Unit!40080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78238 (_ BitVec 64) (_ BitVec 32)) Unit!40080)

(assert (=> b!1211408 (= lt!550217 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1211409 () Bool)

(assert (=> b!1211409 (= e!688018 e!688015)))

(declare-fun res!804844 () Bool)

(assert (=> b!1211409 (=> res!804844 e!688015)))

(assert (=> b!1211409 (= res!804844 (not (= from!1455 i!673)))))

(declare-fun lt!550213 () ListLongMap!17929)

(assert (=> b!1211409 (= lt!550213 (getCurrentListMapNoExtraKeys!5385 lt!550210 lt!550202 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!550221 () V!46113)

(assert (=> b!1211409 (= lt!550202 (array!78237 (store (arr!37750 _values!996) i!673 (ValueCellFull!14660 lt!550221)) (size!38287 _values!996)))))

(declare-fun dynLambda!3300 (Int (_ BitVec 64)) V!46113)

(assert (=> b!1211409 (= lt!550221 (dynLambda!3300 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!550214 () ListLongMap!17929)

(assert (=> b!1211409 (= lt!550214 (getCurrentListMapNoExtraKeys!5385 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1211410 () Bool)

(declare-fun Unit!40083 () Unit!40080)

(assert (=> b!1211410 (= e!688014 Unit!40083)))

(assert (=> b!1211410 (= lt!550207 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211410 (= c!119420 (and (not lt!550207) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550218 () Unit!40080)

(assert (=> b!1211410 (= lt!550218 e!688016)))

(declare-fun lt!550203 () Unit!40080)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!605 (array!78238 array!78236 (_ BitVec 32) (_ BitVec 32) V!46113 V!46113 (_ BitVec 64) (_ BitVec 32) Int) Unit!40080)

(assert (=> b!1211410 (= lt!550203 (lemmaListMapContainsThenArrayContainsFrom!605 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119422 () Bool)

(assert (=> b!1211410 (= c!119422 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804846 () Bool)

(assert (=> b!1211410 (= res!804846 e!688013)))

(assert (=> b!1211410 (=> (not res!804846) (not e!688009))))

(assert (=> b!1211410 e!688009))

(declare-fun lt!550211 () Unit!40080)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78238 (_ BitVec 32) (_ BitVec 32)) Unit!40080)

(assert (=> b!1211410 (= lt!550211 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1211410 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26766)))

(declare-fun lt!550215 () Unit!40080)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78238 (_ BitVec 64) (_ BitVec 32) List!26769) Unit!40080)

(assert (=> b!1211410 (= lt!550215 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26766))))

(assert (=> b!1211410 false))

(declare-fun b!1211411 () Bool)

(declare-fun e!688012 () Bool)

(assert (=> b!1211411 (= e!688012 tp_is_empty!30739)))

(declare-fun b!1211412 () Bool)

(declare-fun res!804836 () Bool)

(assert (=> b!1211412 (=> (not res!804836) (not e!688010))))

(assert (=> b!1211412 (= res!804836 (and (= (size!38287 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38288 _keys!1208) (size!38287 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211413 () Bool)

(declare-fun e!688011 () Bool)

(assert (=> b!1211413 (= e!688011 (and e!688012 mapRes!47980))))

(declare-fun condMapEmpty!47980 () Bool)

(declare-fun mapDefault!47980 () ValueCell!14660)

