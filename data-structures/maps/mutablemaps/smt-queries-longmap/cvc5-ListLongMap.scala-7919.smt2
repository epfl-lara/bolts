; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98390 () Bool)

(assert start!98390)

(declare-fun b_free!23959 () Bool)

(declare-fun b_next!23959 () Bool)

(assert (=> start!98390 (= b_free!23959 (not b_next!23959))))

(declare-fun tp!84588 () Bool)

(declare-fun b_and!38781 () Bool)

(assert (=> start!98390 (= tp!84588 b_and!38781)))

(declare-fun bm!49046 () Bool)

(declare-datatypes ((Unit!37077 0))(
  ( (Unit!37078) )
))
(declare-fun call!49053 () Unit!37077)

(declare-fun call!49056 () Unit!37077)

(assert (=> bm!49046 (= call!49053 call!49056)))

(declare-fun b!1133283 () Bool)

(declare-fun res!756807 () Bool)

(declare-fun e!645018 () Bool)

(assert (=> b!1133283 (=> (not res!756807) (not e!645018))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133283 (= res!756807 (validKeyInArray!0 k!934))))

(declare-fun b!1133284 () Bool)

(declare-fun e!645020 () Bool)

(declare-fun tp_is_empty!28489 () Bool)

(assert (=> b!1133284 (= e!645020 tp_is_empty!28489)))

(declare-fun b!1133285 () Bool)

(declare-datatypes ((array!73800 0))(
  ( (array!73801 (arr!35547 (Array (_ BitVec 32) (_ BitVec 64))) (size!36084 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73800)

(declare-fun e!645029 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!73800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133285 (= e!645029 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133286 () Bool)

(declare-fun e!645023 () Bool)

(declare-fun e!645024 () Bool)

(assert (=> b!1133286 (= e!645023 (not e!645024))))

(declare-fun res!756810 () Bool)

(assert (=> b!1133286 (=> res!756810 e!645024)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133286 (= res!756810 (bvsgt from!1455 i!673))))

(assert (=> b!1133286 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503594 () Unit!37077)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73800 (_ BitVec 64) (_ BitVec 32)) Unit!37077)

(assert (=> b!1133286 (= lt!503594 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1133287 () Bool)

(declare-fun e!645033 () Bool)

(assert (=> b!1133287 (= e!645024 e!645033)))

(declare-fun res!756812 () Bool)

(assert (=> b!1133287 (=> res!756812 e!645033)))

(assert (=> b!1133287 (= res!756812 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43113 0))(
  ( (V!43114 (val!14301 Int)) )
))
(declare-fun zeroValue!944 () V!43113)

(declare-datatypes ((ValueCell!13535 0))(
  ( (ValueCellFull!13535 (v!16939 V!43113)) (EmptyCell!13535) )
))
(declare-datatypes ((array!73802 0))(
  ( (array!73803 (arr!35548 (Array (_ BitVec 32) ValueCell!13535)) (size!36085 (_ BitVec 32))) )
))
(declare-fun lt!503587 () array!73802)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18124 0))(
  ( (tuple2!18125 (_1!9072 (_ BitVec 64)) (_2!9072 V!43113)) )
))
(declare-datatypes ((List!24937 0))(
  ( (Nil!24934) (Cons!24933 (h!26142 tuple2!18124) (t!35895 List!24937)) )
))
(declare-datatypes ((ListLongMap!16105 0))(
  ( (ListLongMap!16106 (toList!8068 List!24937)) )
))
(declare-fun lt!503584 () ListLongMap!16105)

(declare-fun lt!503583 () array!73800)

(declare-fun minValue!944 () V!43113)

(declare-fun getCurrentListMapNoExtraKeys!4518 (array!73800 array!73802 (_ BitVec 32) (_ BitVec 32) V!43113 V!43113 (_ BitVec 32) Int) ListLongMap!16105)

(assert (=> b!1133287 (= lt!503584 (getCurrentListMapNoExtraKeys!4518 lt!503583 lt!503587 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73802)

(declare-fun dynLambda!2587 (Int (_ BitVec 64)) V!43113)

(assert (=> b!1133287 (= lt!503587 (array!73803 (store (arr!35548 _values!996) i!673 (ValueCellFull!13535 (dynLambda!2587 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36085 _values!996)))))

(declare-fun lt!503582 () ListLongMap!16105)

(assert (=> b!1133287 (= lt!503582 (getCurrentListMapNoExtraKeys!4518 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1133288 () Bool)

(declare-fun e!645021 () Bool)

(declare-fun mapRes!44558 () Bool)

(assert (=> b!1133288 (= e!645021 (and e!645020 mapRes!44558))))

(declare-fun condMapEmpty!44558 () Bool)

(declare-fun mapDefault!44558 () ValueCell!13535)

