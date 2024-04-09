; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99680 () Bool)

(assert start!99680)

(declare-fun b_free!25223 () Bool)

(declare-fun b_next!25223 () Bool)

(assert (=> start!99680 (= b_free!25223 (not b_next!25223))))

(declare-fun tp!88383 () Bool)

(declare-fun b_and!41327 () Bool)

(assert (=> start!99680 (= tp!88383 b_and!41327)))

(declare-fun b!1181097 () Bool)

(declare-fun e!671528 () Bool)

(declare-fun e!671538 () Bool)

(assert (=> b!1181097 (= e!671528 e!671538)))

(declare-fun res!784932 () Bool)

(assert (=> b!1181097 (=> res!784932 e!671538)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1181097 (= res!784932 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44797 0))(
  ( (V!44798 (val!14933 Int)) )
))
(declare-fun minValue!944 () V!44797)

(declare-fun zeroValue!944 () V!44797)

(declare-datatypes ((array!76274 0))(
  ( (array!76275 (arr!36783 (Array (_ BitVec 32) (_ BitVec 64))) (size!37320 (_ BitVec 32))) )
))
(declare-fun lt!534130 () array!76274)

(declare-datatypes ((tuple2!19250 0))(
  ( (tuple2!19251 (_1!9635 (_ BitVec 64)) (_2!9635 V!44797)) )
))
(declare-datatypes ((List!26010 0))(
  ( (Nil!26007) (Cons!26006 (h!27215 tuple2!19250) (t!38232 List!26010)) )
))
(declare-datatypes ((ListLongMap!17231 0))(
  ( (ListLongMap!17232 (toList!8631 List!26010)) )
))
(declare-fun lt!534134 () ListLongMap!17231)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14167 0))(
  ( (ValueCellFull!14167 (v!17572 V!44797)) (EmptyCell!14167) )
))
(declare-datatypes ((array!76276 0))(
  ( (array!76277 (arr!36784 (Array (_ BitVec 32) ValueCell!14167)) (size!37321 (_ BitVec 32))) )
))
(declare-fun lt!534137 () array!76276)

(declare-fun getCurrentListMapNoExtraKeys!5056 (array!76274 array!76276 (_ BitVec 32) (_ BitVec 32) V!44797 V!44797 (_ BitVec 32) Int) ListLongMap!17231)

(assert (=> b!1181097 (= lt!534134 (getCurrentListMapNoExtraKeys!5056 lt!534130 lt!534137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534136 () V!44797)

(declare-fun _values!996 () array!76276)

(assert (=> b!1181097 (= lt!534137 (array!76277 (store (arr!36784 _values!996) i!673 (ValueCellFull!14167 lt!534136)) (size!37321 _values!996)))))

(declare-fun dynLambda!3024 (Int (_ BitVec 64)) V!44797)

(assert (=> b!1181097 (= lt!534136 (dynLambda!3024 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76274)

(declare-fun lt!534142 () ListLongMap!17231)

(assert (=> b!1181097 (= lt!534142 (getCurrentListMapNoExtraKeys!5056 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181098 () Bool)

(declare-fun res!784940 () Bool)

(declare-fun e!671527 () Bool)

(assert (=> b!1181098 (=> (not res!784940) (not e!671527))))

(declare-fun lt!534141 () tuple2!19250)

(declare-fun lt!534132 () ListLongMap!17231)

(declare-fun +!3850 (ListLongMap!17231 tuple2!19250) ListLongMap!17231)

(assert (=> b!1181098 (= res!784940 (= lt!534142 (+!3850 lt!534132 lt!534141)))))

(declare-fun b!1181099 () Bool)

(declare-fun res!784931 () Bool)

(declare-fun e!671533 () Bool)

(assert (=> b!1181099 (=> (not res!784931) (not e!671533))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1181099 (= res!784931 (= (select (arr!36783 _keys!1208) i!673) k!934))))

(declare-fun b!1181100 () Bool)

(declare-fun res!784928 () Bool)

(assert (=> b!1181100 (=> (not res!784928) (not e!671533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181100 (= res!784928 (validMask!0 mask!1564))))

(declare-fun b!1181101 () Bool)

(declare-fun e!671532 () Bool)

(assert (=> b!1181101 (= e!671532 (not e!671528))))

(declare-fun res!784939 () Bool)

(assert (=> b!1181101 (=> res!784939 e!671528)))

(assert (=> b!1181101 (= res!784939 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181101 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38978 0))(
  ( (Unit!38979) )
))
(declare-fun lt!534138 () Unit!38978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76274 (_ BitVec 64) (_ BitVec 32)) Unit!38978)

(assert (=> b!1181101 (= lt!534138 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181102 () Bool)

(declare-fun res!784930 () Bool)

(assert (=> b!1181102 (=> (not res!784930) (not e!671533))))

(assert (=> b!1181102 (= res!784930 (and (= (size!37321 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37320 _keys!1208) (size!37321 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181103 () Bool)

(declare-fun e!671534 () Unit!38978)

(declare-fun Unit!38980 () Unit!38978)

(assert (=> b!1181103 (= e!671534 Unit!38980)))

(declare-fun lt!534144 () Unit!38978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76274 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38978)

(assert (=> b!1181103 (= lt!534144 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1181103 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534133 () Unit!38978)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76274 (_ BitVec 32) (_ BitVec 32)) Unit!38978)

(assert (=> b!1181103 (= lt!534133 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26011 0))(
  ( (Nil!26008) (Cons!26007 (h!27216 (_ BitVec 64)) (t!38233 List!26011)) )
))
(declare-fun arrayNoDuplicates!0 (array!76274 (_ BitVec 32) List!26011) Bool)

(assert (=> b!1181103 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26008)))

(declare-fun lt!534140 () Unit!38978)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76274 (_ BitVec 64) (_ BitVec 32) List!26011) Unit!38978)

(assert (=> b!1181103 (= lt!534140 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26008))))

(assert (=> b!1181103 false))

(declare-fun res!784929 () Bool)

(assert (=> start!99680 (=> (not res!784929) (not e!671533))))

(assert (=> start!99680 (= res!784929 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37320 _keys!1208))))))

(assert (=> start!99680 e!671533))

(declare-fun tp_is_empty!29753 () Bool)

(assert (=> start!99680 tp_is_empty!29753))

(declare-fun array_inv!27964 (array!76274) Bool)

(assert (=> start!99680 (array_inv!27964 _keys!1208)))

(assert (=> start!99680 true))

(assert (=> start!99680 tp!88383))

(declare-fun e!671531 () Bool)

(declare-fun array_inv!27965 (array!76276) Bool)

(assert (=> start!99680 (and (array_inv!27965 _values!996) e!671531)))

(declare-fun b!1181104 () Bool)

(declare-fun e!671537 () Bool)

(assert (=> b!1181104 (= e!671537 tp_is_empty!29753)))

(declare-fun b!1181105 () Bool)

(declare-fun e!671530 () Bool)

(assert (=> b!1181105 (= e!671538 e!671530)))

(declare-fun res!784933 () Bool)

(assert (=> b!1181105 (=> res!784933 e!671530)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181105 (= res!784933 (not (validKeyInArray!0 (select (arr!36783 _keys!1208) from!1455))))))

(declare-fun lt!534143 () ListLongMap!17231)

(declare-fun lt!534131 () ListLongMap!17231)

(assert (=> b!1181105 (= lt!534143 lt!534131)))

(declare-fun -!1620 (ListLongMap!17231 (_ BitVec 64)) ListLongMap!17231)

(assert (=> b!1181105 (= lt!534131 (-!1620 lt!534132 k!934))))

(assert (=> b!1181105 (= lt!534143 (getCurrentListMapNoExtraKeys!5056 lt!534130 lt!534137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181105 (= lt!534132 (getCurrentListMapNoExtraKeys!5056 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534139 () Unit!38978)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!844 (array!76274 array!76276 (_ BitVec 32) (_ BitVec 32) V!44797 V!44797 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38978)

(assert (=> b!1181105 (= lt!534139 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!844 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181106 () Bool)

(declare-fun e!671535 () Bool)

(declare-fun mapRes!46457 () Bool)

(assert (=> b!1181106 (= e!671531 (and e!671535 mapRes!46457))))

(declare-fun condMapEmpty!46457 () Bool)

(declare-fun mapDefault!46457 () ValueCell!14167)

