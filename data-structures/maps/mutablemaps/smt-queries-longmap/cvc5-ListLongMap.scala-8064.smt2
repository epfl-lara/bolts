; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99260 () Bool)

(assert start!99260)

(declare-fun b_free!24829 () Bool)

(declare-fun b_next!24829 () Bool)

(assert (=> start!99260 (= b_free!24829 (not b_next!24829))))

(declare-fun tp!87199 () Bool)

(declare-fun b_and!40521 () Bool)

(assert (=> start!99260 (= tp!87199 b_and!40521)))

(declare-fun b!1168491 () Bool)

(declare-fun e!664137 () Bool)

(declare-fun e!664132 () Bool)

(assert (=> b!1168491 (= e!664137 (not e!664132))))

(declare-fun res!775373 () Bool)

(assert (=> b!1168491 (=> res!775373 e!664132)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168491 (= res!775373 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75492 0))(
  ( (array!75493 (arr!36393 (Array (_ BitVec 32) (_ BitVec 64))) (size!36930 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75492)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168491 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38450 0))(
  ( (Unit!38451) )
))
(declare-fun lt!526049 () Unit!38450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75492 (_ BitVec 64) (_ BitVec 32)) Unit!38450)

(assert (=> b!1168491 (= lt!526049 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168492 () Bool)

(declare-fun e!664129 () Bool)

(assert (=> b!1168492 (= e!664129 true)))

(declare-datatypes ((V!44273 0))(
  ( (V!44274 (val!14736 Int)) )
))
(declare-fun lt!526046 () V!44273)

(declare-datatypes ((ValueCell!13970 0))(
  ( (ValueCellFull!13970 (v!17374 V!44273)) (EmptyCell!13970) )
))
(declare-datatypes ((array!75494 0))(
  ( (array!75495 (arr!36394 (Array (_ BitVec 32) ValueCell!13970)) (size!36931 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75494)

(declare-datatypes ((tuple2!18890 0))(
  ( (tuple2!18891 (_1!9455 (_ BitVec 64)) (_2!9455 V!44273)) )
))
(declare-datatypes ((List!25663 0))(
  ( (Nil!25660) (Cons!25659 (h!26868 tuple2!18890) (t!37491 List!25663)) )
))
(declare-datatypes ((ListLongMap!16871 0))(
  ( (ListLongMap!16872 (toList!8451 List!25663)) )
))
(declare-fun lt!526047 () ListLongMap!16871)

(declare-fun lt!526045 () ListLongMap!16871)

(declare-fun +!3701 (ListLongMap!16871 tuple2!18890) ListLongMap!16871)

(declare-fun get!18576 (ValueCell!13970 V!44273) V!44273)

(assert (=> b!1168492 (= lt!526045 (+!3701 lt!526047 (tuple2!18891 (select (arr!36393 _keys!1208) from!1455) (get!18576 (select (arr!36394 _values!996) from!1455) lt!526046))))))

(declare-fun b!1168493 () Bool)

(declare-fun e!664133 () Bool)

(assert (=> b!1168493 (= e!664132 e!664133)))

(declare-fun res!775366 () Bool)

(assert (=> b!1168493 (=> res!775366 e!664133)))

(assert (=> b!1168493 (= res!775366 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44273)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526050 () array!75492)

(declare-fun lt!526052 () array!75494)

(declare-fun minValue!944 () V!44273)

(declare-fun getCurrentListMapNoExtraKeys!4884 (array!75492 array!75494 (_ BitVec 32) (_ BitVec 32) V!44273 V!44273 (_ BitVec 32) Int) ListLongMap!16871)

(assert (=> b!1168493 (= lt!526045 (getCurrentListMapNoExtraKeys!4884 lt!526050 lt!526052 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1168493 (= lt!526052 (array!75495 (store (arr!36394 _values!996) i!673 (ValueCellFull!13970 lt!526046)) (size!36931 _values!996)))))

(declare-fun dynLambda!2876 (Int (_ BitVec 64)) V!44273)

(assert (=> b!1168493 (= lt!526046 (dynLambda!2876 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526053 () ListLongMap!16871)

(assert (=> b!1168493 (= lt!526053 (getCurrentListMapNoExtraKeys!4884 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168494 () Bool)

(declare-fun e!664134 () Bool)

(assert (=> b!1168494 (= e!664134 e!664137)))

(declare-fun res!775362 () Bool)

(assert (=> b!1168494 (=> (not res!775362) (not e!664137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75492 (_ BitVec 32)) Bool)

(assert (=> b!1168494 (= res!775362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526050 mask!1564))))

(assert (=> b!1168494 (= lt!526050 (array!75493 (store (arr!36393 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36930 _keys!1208)))))

(declare-fun b!1168495 () Bool)

(declare-fun e!664131 () Bool)

(declare-fun e!664136 () Bool)

(declare-fun mapRes!45863 () Bool)

(assert (=> b!1168495 (= e!664131 (and e!664136 mapRes!45863))))

(declare-fun condMapEmpty!45863 () Bool)

(declare-fun mapDefault!45863 () ValueCell!13970)

