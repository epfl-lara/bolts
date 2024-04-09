; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99532 () Bool)

(assert start!99532)

(declare-fun b_free!25075 () Bool)

(declare-fun b_next!25075 () Bool)

(assert (=> start!99532 (= b_free!25075 (not b_next!25075))))

(declare-fun tp!87940 () Bool)

(declare-fun b_and!41031 () Bool)

(assert (=> start!99532 (= tp!87940 b_and!41031)))

(declare-fun b!1176216 () Bool)

(declare-fun e!668641 () Bool)

(declare-fun e!668652 () Bool)

(assert (=> b!1176216 (= e!668641 e!668652)))

(declare-fun res!781313 () Bool)

(assert (=> b!1176216 (=> res!781313 e!668652)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176216 (= res!781313 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44601 0))(
  ( (V!44602 (val!14859 Int)) )
))
(declare-fun zeroValue!944 () V!44601)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!75986 0))(
  ( (array!75987 (arr!36639 (Array (_ BitVec 32) (_ BitVec 64))) (size!37176 (_ BitVec 32))) )
))
(declare-fun lt!530808 () array!75986)

(declare-datatypes ((ValueCell!14093 0))(
  ( (ValueCellFull!14093 (v!17498 V!44601)) (EmptyCell!14093) )
))
(declare-datatypes ((array!75988 0))(
  ( (array!75989 (arr!36640 (Array (_ BitVec 32) ValueCell!14093)) (size!37177 (_ BitVec 32))) )
))
(declare-fun lt!530813 () array!75988)

(declare-datatypes ((tuple2!19116 0))(
  ( (tuple2!19117 (_1!9568 (_ BitVec 64)) (_2!9568 V!44601)) )
))
(declare-datatypes ((List!25883 0))(
  ( (Nil!25880) (Cons!25879 (h!27088 tuple2!19116) (t!37957 List!25883)) )
))
(declare-datatypes ((ListLongMap!17097 0))(
  ( (ListLongMap!17098 (toList!8564 List!25883)) )
))
(declare-fun lt!530807 () ListLongMap!17097)

(declare-fun minValue!944 () V!44601)

(declare-fun getCurrentListMapNoExtraKeys!4995 (array!75986 array!75988 (_ BitVec 32) (_ BitVec 32) V!44601 V!44601 (_ BitVec 32) Int) ListLongMap!17097)

(assert (=> b!1176216 (= lt!530807 (getCurrentListMapNoExtraKeys!4995 lt!530808 lt!530813 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530806 () V!44601)

(declare-fun _values!996 () array!75988)

(assert (=> b!1176216 (= lt!530813 (array!75989 (store (arr!36640 _values!996) i!673 (ValueCellFull!14093 lt!530806)) (size!37177 _values!996)))))

(declare-fun dynLambda!2972 (Int (_ BitVec 64)) V!44601)

(assert (=> b!1176216 (= lt!530806 (dynLambda!2972 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75986)

(declare-fun lt!530814 () ListLongMap!17097)

(assert (=> b!1176216 (= lt!530814 (getCurrentListMapNoExtraKeys!4995 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176217 () Bool)

(declare-fun e!668645 () Bool)

(declare-fun tp_is_empty!29605 () Bool)

(assert (=> b!1176217 (= e!668645 tp_is_empty!29605)))

(declare-fun b!1176219 () Bool)

(declare-fun e!668643 () Bool)

(assert (=> b!1176219 (= e!668643 (not e!668641))))

(declare-fun res!781316 () Bool)

(assert (=> b!1176219 (=> res!781316 e!668641)))

(assert (=> b!1176219 (= res!781316 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176219 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38754 0))(
  ( (Unit!38755) )
))
(declare-fun lt!530812 () Unit!38754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75986 (_ BitVec 64) (_ BitVec 32)) Unit!38754)

(assert (=> b!1176219 (= lt!530812 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176220 () Bool)

(declare-fun res!781309 () Bool)

(declare-fun e!668642 () Bool)

(assert (=> b!1176220 (=> (not res!781309) (not e!668642))))

(assert (=> b!1176220 (= res!781309 (and (= (size!37177 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37176 _keys!1208) (size!37177 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176221 () Bool)

(declare-fun res!781314 () Bool)

(assert (=> b!1176221 (=> (not res!781314) (not e!668642))))

(assert (=> b!1176221 (= res!781314 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37176 _keys!1208))))))

(declare-fun b!1176222 () Bool)

(declare-fun e!668653 () Unit!38754)

(declare-fun Unit!38756 () Unit!38754)

(assert (=> b!1176222 (= e!668653 Unit!38756)))

(declare-fun lt!530811 () Unit!38754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75986 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38754)

(assert (=> b!1176222 (= lt!530811 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176222 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530801 () Unit!38754)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75986 (_ BitVec 32) (_ BitVec 32)) Unit!38754)

(assert (=> b!1176222 (= lt!530801 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25884 0))(
  ( (Nil!25881) (Cons!25880 (h!27089 (_ BitVec 64)) (t!37958 List!25884)) )
))
(declare-fun arrayNoDuplicates!0 (array!75986 (_ BitVec 32) List!25884) Bool)

(assert (=> b!1176222 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25881)))

(declare-fun lt!530800 () Unit!38754)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75986 (_ BitVec 64) (_ BitVec 32) List!25884) Unit!38754)

(assert (=> b!1176222 (= lt!530800 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25881))))

(assert (=> b!1176222 false))

(declare-fun b!1176223 () Bool)

(declare-fun res!781303 () Bool)

(assert (=> b!1176223 (=> (not res!781303) (not e!668642))))

(assert (=> b!1176223 (= res!781303 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25881))))

(declare-fun b!1176224 () Bool)

(declare-fun e!668649 () Bool)

(assert (=> b!1176224 (= e!668649 true)))

(declare-fun e!668644 () Bool)

(assert (=> b!1176224 e!668644))

(declare-fun res!781305 () Bool)

(assert (=> b!1176224 (=> (not res!781305) (not e!668644))))

(assert (=> b!1176224 (= res!781305 (not (= (select (arr!36639 _keys!1208) from!1455) k!934)))))

(declare-fun lt!530804 () Unit!38754)

(assert (=> b!1176224 (= lt!530804 e!668653)))

(declare-fun c!116684 () Bool)

(assert (=> b!1176224 (= c!116684 (= (select (arr!36639 _keys!1208) from!1455) k!934))))

(declare-fun e!668648 () Bool)

(assert (=> b!1176224 e!668648))

(declare-fun res!781318 () Bool)

(assert (=> b!1176224 (=> (not res!781318) (not e!668648))))

(declare-fun lt!530809 () tuple2!19116)

(declare-fun lt!530802 () ListLongMap!17097)

(declare-fun +!3787 (ListLongMap!17097 tuple2!19116) ListLongMap!17097)

(assert (=> b!1176224 (= res!781318 (= lt!530807 (+!3787 lt!530802 lt!530809)))))

(declare-fun get!18746 (ValueCell!14093 V!44601) V!44601)

(assert (=> b!1176224 (= lt!530809 (tuple2!19117 (select (arr!36639 _keys!1208) from!1455) (get!18746 (select (arr!36640 _values!996) from!1455) lt!530806)))))

(declare-fun b!1176225 () Bool)

(declare-fun e!668651 () Bool)

(declare-fun mapRes!46235 () Bool)

(assert (=> b!1176225 (= e!668651 (and e!668645 mapRes!46235))))

(declare-fun condMapEmpty!46235 () Bool)

(declare-fun mapDefault!46235 () ValueCell!14093)

