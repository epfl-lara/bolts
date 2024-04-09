; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99340 () Bool)

(assert start!99340)

(declare-fun b_free!24883 () Bool)

(declare-fun b_next!24883 () Bool)

(assert (=> start!99340 (= b_free!24883 (not b_next!24883))))

(declare-fun tp!87363 () Bool)

(declare-fun b_and!40647 () Bool)

(assert (=> start!99340 (= tp!87363 b_and!40647)))

(declare-fun b!1170125 () Bool)

(declare-fun res!776622 () Bool)

(declare-fun e!665101 () Bool)

(assert (=> b!1170125 (=> (not res!776622) (not e!665101))))

(declare-datatypes ((array!75602 0))(
  ( (array!75603 (arr!36447 (Array (_ BitVec 32) (_ BitVec 64))) (size!36984 (_ BitVec 32))) )
))
(declare-fun lt!526949 () array!75602)

(declare-datatypes ((List!25713 0))(
  ( (Nil!25710) (Cons!25709 (h!26918 (_ BitVec 64)) (t!37595 List!25713)) )
))
(declare-fun arrayNoDuplicates!0 (array!75602 (_ BitVec 32) List!25713) Bool)

(assert (=> b!1170125 (= res!776622 (arrayNoDuplicates!0 lt!526949 #b00000000000000000000000000000000 Nil!25710))))

(declare-fun b!1170126 () Bool)

(declare-fun res!776617 () Bool)

(declare-fun e!665098 () Bool)

(assert (=> b!1170126 (=> (not res!776617) (not e!665098))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170126 (= res!776617 (validMask!0 mask!1564))))

(declare-fun b!1170127 () Bool)

(declare-fun e!665095 () Bool)

(assert (=> b!1170127 (= e!665095 true)))

(declare-fun _keys!1208 () array!75602)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!75602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170127 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38496 0))(
  ( (Unit!38497) )
))
(declare-fun lt!526940 () Unit!38496)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75602 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38496)

(assert (=> b!1170127 (= lt!526940 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170128 () Bool)

(declare-fun e!665103 () Bool)

(declare-fun e!665094 () Bool)

(assert (=> b!1170128 (= e!665103 e!665094)))

(declare-fun res!776628 () Bool)

(assert (=> b!1170128 (=> res!776628 e!665094)))

(assert (=> b!1170128 (= res!776628 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44345 0))(
  ( (V!44346 (val!14763 Int)) )
))
(declare-fun zeroValue!944 () V!44345)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18942 0))(
  ( (tuple2!18943 (_1!9481 (_ BitVec 64)) (_2!9481 V!44345)) )
))
(declare-datatypes ((List!25714 0))(
  ( (Nil!25711) (Cons!25710 (h!26919 tuple2!18942) (t!37596 List!25714)) )
))
(declare-datatypes ((ListLongMap!16923 0))(
  ( (ListLongMap!16924 (toList!8477 List!25714)) )
))
(declare-fun lt!526947 () ListLongMap!16923)

(declare-datatypes ((ValueCell!13997 0))(
  ( (ValueCellFull!13997 (v!17402 V!44345)) (EmptyCell!13997) )
))
(declare-datatypes ((array!75604 0))(
  ( (array!75605 (arr!36448 (Array (_ BitVec 32) ValueCell!13997)) (size!36985 (_ BitVec 32))) )
))
(declare-fun lt!526950 () array!75604)

(declare-fun minValue!944 () V!44345)

(declare-fun getCurrentListMapNoExtraKeys!4910 (array!75602 array!75604 (_ BitVec 32) (_ BitVec 32) V!44345 V!44345 (_ BitVec 32) Int) ListLongMap!16923)

(assert (=> b!1170128 (= lt!526947 (getCurrentListMapNoExtraKeys!4910 lt!526949 lt!526950 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526941 () V!44345)

(declare-fun _values!996 () array!75604)

(assert (=> b!1170128 (= lt!526950 (array!75605 (store (arr!36448 _values!996) i!673 (ValueCellFull!13997 lt!526941)) (size!36985 _values!996)))))

(declare-fun dynLambda!2899 (Int (_ BitVec 64)) V!44345)

(assert (=> b!1170128 (= lt!526941 (dynLambda!2899 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526943 () ListLongMap!16923)

(assert (=> b!1170128 (= lt!526943 (getCurrentListMapNoExtraKeys!4910 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170130 () Bool)

(assert (=> b!1170130 (= e!665101 (not e!665103))))

(declare-fun res!776614 () Bool)

(assert (=> b!1170130 (=> res!776614 e!665103)))

(assert (=> b!1170130 (= res!776614 (bvsgt from!1455 i!673))))

(assert (=> b!1170130 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!526948 () Unit!38496)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75602 (_ BitVec 64) (_ BitVec 32)) Unit!38496)

(assert (=> b!1170130 (= lt!526948 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170131 () Bool)

(declare-fun e!665104 () Bool)

(declare-fun e!665100 () Bool)

(declare-fun mapRes!45947 () Bool)

(assert (=> b!1170131 (= e!665104 (and e!665100 mapRes!45947))))

(declare-fun condMapEmpty!45947 () Bool)

(declare-fun mapDefault!45947 () ValueCell!13997)

