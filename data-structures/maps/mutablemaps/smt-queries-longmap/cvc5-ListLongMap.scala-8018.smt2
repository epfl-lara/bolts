; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98984 () Bool)

(assert start!98984)

(declare-fun b_free!24553 () Bool)

(declare-fun b_next!24553 () Bool)

(assert (=> start!98984 (= b_free!24553 (not b_next!24553))))

(declare-fun tp!86370 () Bool)

(declare-fun b_and!39969 () Bool)

(assert (=> start!98984 (= tp!86370 b_and!39969)))

(declare-fun b!1160386 () Bool)

(declare-fun call!56184 () Bool)

(assert (=> b!1160386 call!56184))

(declare-datatypes ((Unit!38154 0))(
  ( (Unit!38155) )
))
(declare-fun lt!521931 () Unit!38154)

(declare-fun call!56179 () Unit!38154)

(assert (=> b!1160386 (= lt!521931 call!56179)))

(declare-fun e!659901 () Unit!38154)

(assert (=> b!1160386 (= e!659901 lt!521931)))

(declare-fun bm!56174 () Bool)

(declare-fun call!56178 () Unit!38154)

(assert (=> bm!56174 (= call!56179 call!56178)))

(declare-fun b!1160388 () Bool)

(declare-fun e!659888 () Unit!38154)

(assert (=> b!1160388 (= e!659888 e!659901)))

(declare-fun c!115787 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!521936 () Bool)

(assert (=> b!1160388 (= c!115787 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521936))))

(declare-datatypes ((V!43905 0))(
  ( (V!43906 (val!14598 Int)) )
))
(declare-fun zeroValue!944 () V!43905)

(declare-datatypes ((tuple2!18666 0))(
  ( (tuple2!18667 (_1!9343 (_ BitVec 64)) (_2!9343 V!43905)) )
))
(declare-datatypes ((List!25444 0))(
  ( (Nil!25441) (Cons!25440 (h!26649 tuple2!18666) (t!36996 List!25444)) )
))
(declare-datatypes ((ListLongMap!16647 0))(
  ( (ListLongMap!16648 (toList!8339 List!25444)) )
))
(declare-fun lt!521941 () ListLongMap!16647)

(declare-fun b!1160389 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74956 0))(
  ( (array!74957 (arr!36125 (Array (_ BitVec 32) (_ BitVec 64))) (size!36662 (_ BitVec 32))) )
))
(declare-fun lt!521949 () array!74956)

(declare-datatypes ((ValueCell!13832 0))(
  ( (ValueCellFull!13832 (v!17236 V!43905)) (EmptyCell!13832) )
))
(declare-datatypes ((array!74958 0))(
  ( (array!74959 (arr!36126 (Array (_ BitVec 32) ValueCell!13832)) (size!36663 (_ BitVec 32))) )
))
(declare-fun lt!521939 () array!74958)

(declare-fun e!659904 () Bool)

(declare-fun minValue!944 () V!43905)

(declare-fun getCurrentListMapNoExtraKeys!4775 (array!74956 array!74958 (_ BitVec 32) (_ BitVec 32) V!43905 V!43905 (_ BitVec 32) Int) ListLongMap!16647)

(assert (=> b!1160389 (= e!659904 (= lt!521941 (getCurrentListMapNoExtraKeys!4775 lt!521949 lt!521939 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160390 () Bool)

(declare-fun Unit!38156 () Unit!38154)

(assert (=> b!1160390 (= e!659901 Unit!38156)))

(declare-fun b!1160391 () Bool)

(declare-fun res!770159 () Bool)

(declare-fun e!659899 () Bool)

(assert (=> b!1160391 (=> (not res!770159) (not e!659899))))

(declare-fun _keys!1208 () array!74956)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1160391 (= res!770159 (= (select (arr!36125 _keys!1208) i!673) k!934))))

(declare-fun b!1160392 () Bool)

(declare-fun e!659898 () Bool)

(declare-fun e!659894 () Bool)

(assert (=> b!1160392 (= e!659898 e!659894)))

(declare-fun res!770162 () Bool)

(assert (=> b!1160392 (=> res!770162 e!659894)))

(assert (=> b!1160392 (= res!770162 (not (= from!1455 i!673)))))

(declare-fun lt!521930 () ListLongMap!16647)

(assert (=> b!1160392 (= lt!521930 (getCurrentListMapNoExtraKeys!4775 lt!521949 lt!521939 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74958)

(declare-fun lt!521942 () V!43905)

(assert (=> b!1160392 (= lt!521939 (array!74959 (store (arr!36126 _values!996) i!673 (ValueCellFull!13832 lt!521942)) (size!36663 _values!996)))))

(declare-fun dynLambda!2777 (Int (_ BitVec 64)) V!43905)

(assert (=> b!1160392 (= lt!521942 (dynLambda!2777 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!521938 () ListLongMap!16647)

(assert (=> b!1160392 (= lt!521938 (getCurrentListMapNoExtraKeys!4775 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56175 () Bool)

(declare-fun call!56180 () ListLongMap!16647)

(declare-fun call!56177 () ListLongMap!16647)

(assert (=> bm!56175 (= call!56180 call!56177)))

(declare-fun b!1160393 () Bool)

(declare-fun res!770165 () Bool)

(assert (=> b!1160393 (=> (not res!770165) (not e!659899))))

(assert (=> b!1160393 (= res!770165 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36662 _keys!1208))))))

(declare-fun b!1160394 () Bool)

(declare-fun lt!521932 () Unit!38154)

(assert (=> b!1160394 (= e!659888 lt!521932)))

(assert (=> b!1160394 (= lt!521932 call!56179)))

(assert (=> b!1160394 call!56184))

(declare-fun b!1160395 () Bool)

(declare-fun e!659892 () Bool)

(declare-fun arrayContainsKey!0 (array!74956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160395 (= e!659892 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160396 () Bool)

(declare-fun e!659890 () Unit!38154)

(declare-fun Unit!38157 () Unit!38154)

(assert (=> b!1160396 (= e!659890 Unit!38157)))

(declare-fun b!1160397 () Bool)

(declare-fun res!770163 () Bool)

(declare-fun e!659900 () Bool)

(assert (=> b!1160397 (=> (not res!770163) (not e!659900))))

(declare-datatypes ((List!25445 0))(
  ( (Nil!25442) (Cons!25441 (h!26650 (_ BitVec 64)) (t!36997 List!25445)) )
))
(declare-fun arrayNoDuplicates!0 (array!74956 (_ BitVec 32) List!25445) Bool)

(assert (=> b!1160397 (= res!770163 (arrayNoDuplicates!0 lt!521949 #b00000000000000000000000000000000 Nil!25442))))

(declare-fun b!1160398 () Bool)

(declare-fun res!770154 () Bool)

(assert (=> b!1160398 (=> (not res!770154) (not e!659899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74956 (_ BitVec 32)) Bool)

(assert (=> b!1160398 (= res!770154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160399 () Bool)

(declare-fun e!659903 () Bool)

(declare-fun tp_is_empty!29083 () Bool)

(assert (=> b!1160399 (= e!659903 tp_is_empty!29083)))

(declare-fun b!1160400 () Bool)

(declare-fun e!659889 () Bool)

(declare-fun call!56181 () ListLongMap!16647)

(declare-fun call!56183 () ListLongMap!16647)

(assert (=> b!1160400 (= e!659889 (= call!56181 call!56183))))

(declare-fun b!1160401 () Bool)

(declare-fun -!1411 (ListLongMap!16647 (_ BitVec 64)) ListLongMap!16647)

(assert (=> b!1160401 (= e!659889 (= call!56181 (-!1411 call!56183 k!934)))))

(declare-fun b!1160402 () Bool)

(assert (=> b!1160402 (= e!659892 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521936) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1160403 () Bool)

(declare-fun Unit!38158 () Unit!38154)

(assert (=> b!1160403 (= e!659890 Unit!38158)))

(assert (=> b!1160403 (= lt!521936 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115783 () Bool)

(assert (=> b!1160403 (= c!115783 (and (not lt!521936) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521937 () Unit!38154)

(declare-fun e!659895 () Unit!38154)

(assert (=> b!1160403 (= lt!521937 e!659895)))

(declare-fun lt!521945 () Unit!38154)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!535 (array!74956 array!74958 (_ BitVec 32) (_ BitVec 32) V!43905 V!43905 (_ BitVec 64) (_ BitVec 32) Int) Unit!38154)

(assert (=> b!1160403 (= lt!521945 (lemmaListMapContainsThenArrayContainsFrom!535 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115788 () Bool)

(assert (=> b!1160403 (= c!115788 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770166 () Bool)

(assert (=> b!1160403 (= res!770166 e!659892)))

(declare-fun e!659893 () Bool)

(assert (=> b!1160403 (=> (not res!770166) (not e!659893))))

(assert (=> b!1160403 e!659893))

(declare-fun lt!521948 () Unit!38154)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74956 (_ BitVec 32) (_ BitVec 32)) Unit!38154)

(assert (=> b!1160403 (= lt!521948 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1160403 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25442)))

(declare-fun lt!521934 () Unit!38154)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74956 (_ BitVec 64) (_ BitVec 32) List!25445) Unit!38154)

(assert (=> b!1160403 (= lt!521934 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25442))))

(assert (=> b!1160403 false))

(declare-fun b!1160404 () Bool)

(declare-fun e!659896 () Bool)

(assert (=> b!1160404 (= e!659896 tp_is_empty!29083)))

(declare-fun b!1160405 () Bool)

(declare-fun e!659897 () Bool)

(assert (=> b!1160405 (= e!659894 e!659897)))

(declare-fun res!770158 () Bool)

(assert (=> b!1160405 (=> res!770158 e!659897)))

(assert (=> b!1160405 (= res!770158 (not (= (select (arr!36125 _keys!1208) from!1455) k!934)))))

(assert (=> b!1160405 e!659889))

(declare-fun c!115786 () Bool)

(assert (=> b!1160405 (= c!115786 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521933 () Unit!38154)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!634 (array!74956 array!74958 (_ BitVec 32) (_ BitVec 32) V!43905 V!43905 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38154)

(assert (=> b!1160405 (= lt!521933 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!634 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45449 () Bool)

(declare-fun mapRes!45449 () Bool)

(declare-fun tp!86371 () Bool)

(assert (=> mapNonEmpty!45449 (= mapRes!45449 (and tp!86371 e!659896))))

(declare-fun mapRest!45449 () (Array (_ BitVec 32) ValueCell!13832))

(declare-fun mapKey!45449 () (_ BitVec 32))

(declare-fun mapValue!45449 () ValueCell!13832)

(assert (=> mapNonEmpty!45449 (= (arr!36126 _values!996) (store mapRest!45449 mapKey!45449 mapValue!45449))))

(declare-fun b!1160406 () Bool)

(declare-fun res!770156 () Bool)

(assert (=> b!1160406 (=> (not res!770156) (not e!659899))))

(assert (=> b!1160406 (= res!770156 (and (= (size!36663 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36662 _keys!1208) (size!36663 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!770157 () Bool)

(assert (=> start!98984 (=> (not res!770157) (not e!659899))))

(assert (=> start!98984 (= res!770157 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36662 _keys!1208))))))

(assert (=> start!98984 e!659899))

(assert (=> start!98984 tp_is_empty!29083))

(declare-fun array_inv!27512 (array!74956) Bool)

(assert (=> start!98984 (array_inv!27512 _keys!1208)))

(assert (=> start!98984 true))

(assert (=> start!98984 tp!86370))

(declare-fun e!659902 () Bool)

(declare-fun array_inv!27513 (array!74958) Bool)

(assert (=> start!98984 (and (array_inv!27513 _values!996) e!659902)))

(declare-fun b!1160387 () Bool)

(assert (=> b!1160387 (= e!659900 (not e!659898))))

(declare-fun res!770164 () Bool)

(assert (=> b!1160387 (=> res!770164 e!659898)))

(assert (=> b!1160387 (= res!770164 (bvsgt from!1455 i!673))))

(assert (=> b!1160387 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!521944 () Unit!38154)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74956 (_ BitVec 64) (_ BitVec 32)) Unit!38154)

(assert (=> b!1160387 (= lt!521944 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1160407 () Bool)

(declare-fun c!115784 () Bool)

(assert (=> b!1160407 (= c!115784 (and (not lt!521936) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1160407 (= e!659895 e!659888)))

(declare-fun bm!56176 () Bool)

(assert (=> bm!56176 (= call!56183 (getCurrentListMapNoExtraKeys!4775 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160408 () Bool)

(declare-fun res!770168 () Bool)

(assert (=> b!1160408 (=> (not res!770168) (not e!659899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160408 (= res!770168 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!45449 () Bool)

(assert (=> mapIsEmpty!45449 mapRes!45449))

(declare-fun b!1160409 () Bool)

(assert (=> b!1160409 (= e!659893 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160410 () Bool)

(assert (=> b!1160410 (= e!659902 (and e!659903 mapRes!45449))))

(declare-fun condMapEmpty!45449 () Bool)

(declare-fun mapDefault!45449 () ValueCell!13832)

