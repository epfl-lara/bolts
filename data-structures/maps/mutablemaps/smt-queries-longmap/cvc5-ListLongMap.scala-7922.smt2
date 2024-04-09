; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98408 () Bool)

(assert start!98408)

(declare-fun b_free!23977 () Bool)

(declare-fun b_next!23977 () Bool)

(assert (=> start!98408 (= b_free!23977 (not b_next!23977))))

(declare-fun tp!84643 () Bool)

(declare-fun b_and!38817 () Bool)

(assert (=> start!98408 (= tp!84643 b_and!38817)))

(declare-fun b!1134063 () Bool)

(declare-datatypes ((V!43137 0))(
  ( (V!43138 (val!14310 Int)) )
))
(declare-datatypes ((tuple2!18142 0))(
  ( (tuple2!18143 (_1!9081 (_ BitVec 64)) (_2!9081 V!43137)) )
))
(declare-datatypes ((List!24954 0))(
  ( (Nil!24951) (Cons!24950 (h!26159 tuple2!18142) (t!35930 List!24954)) )
))
(declare-datatypes ((ListLongMap!16123 0))(
  ( (ListLongMap!16124 (toList!8077 List!24954)) )
))
(declare-fun call!49267 () ListLongMap!16123)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!645452 () Bool)

(declare-fun call!49268 () ListLongMap!16123)

(declare-fun -!1194 (ListLongMap!16123 (_ BitVec 64)) ListLongMap!16123)

(assert (=> b!1134063 (= e!645452 (= call!49267 (-!1194 call!49268 k!934)))))

(declare-fun bm!49262 () Bool)

(declare-fun call!49265 () Bool)

(declare-fun call!49269 () Bool)

(assert (=> bm!49262 (= call!49265 call!49269)))

(declare-fun b!1134064 () Bool)

(declare-fun e!645462 () Bool)

(declare-fun tp_is_empty!28507 () Bool)

(assert (=> b!1134064 (= e!645462 tp_is_empty!28507)))

(declare-fun b!1134065 () Bool)

(assert (=> b!1134065 (= e!645452 (= call!49267 call!49268))))

(declare-fun b!1134066 () Bool)

(declare-fun res!757211 () Bool)

(declare-fun e!645466 () Bool)

(assert (=> b!1134066 (=> res!757211 e!645466)))

(declare-datatypes ((List!24955 0))(
  ( (Nil!24952) (Cons!24951 (h!26160 (_ BitVec 64)) (t!35931 List!24955)) )
))
(declare-fun noDuplicate!1606 (List!24955) Bool)

(assert (=> b!1134066 (= res!757211 (not (noDuplicate!1606 Nil!24952)))))

(declare-fun b!1134067 () Bool)

(declare-fun e!645463 () Bool)

(declare-fun e!645465 () Bool)

(assert (=> b!1134067 (= e!645463 e!645465)))

(declare-fun res!757217 () Bool)

(assert (=> b!1134067 (=> res!757217 e!645465)))

(declare-fun lt!504001 () ListLongMap!16123)

(declare-fun contains!6568 (ListLongMap!16123 (_ BitVec 64)) Bool)

(assert (=> b!1134067 (= res!757217 (not (contains!6568 lt!504001 k!934)))))

(declare-fun zeroValue!944 () V!43137)

(declare-datatypes ((array!73836 0))(
  ( (array!73837 (arr!35565 (Array (_ BitVec 32) (_ BitVec 64))) (size!36102 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73836)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13544 0))(
  ( (ValueCellFull!13544 (v!16948 V!43137)) (EmptyCell!13544) )
))
(declare-datatypes ((array!73838 0))(
  ( (array!73839 (arr!35566 (Array (_ BitVec 32) ValueCell!13544)) (size!36103 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73838)

(declare-fun minValue!944 () V!43137)

(declare-fun getCurrentListMapNoExtraKeys!4526 (array!73836 array!73838 (_ BitVec 32) (_ BitVec 32) V!43137 V!43137 (_ BitVec 32) Int) ListLongMap!16123)

(assert (=> b!1134067 (= lt!504001 (getCurrentListMapNoExtraKeys!4526 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134068 () Bool)

(declare-datatypes ((Unit!37101 0))(
  ( (Unit!37102) )
))
(declare-fun e!645467 () Unit!37101)

(declare-fun lt!504004 () Unit!37101)

(assert (=> b!1134068 (= e!645467 lt!504004)))

(declare-fun lt!503993 () Unit!37101)

(declare-fun call!49271 () Unit!37101)

(assert (=> b!1134068 (= lt!503993 call!49271)))

(declare-fun lt!503994 () ListLongMap!16123)

(declare-fun +!3436 (ListLongMap!16123 tuple2!18142) ListLongMap!16123)

(assert (=> b!1134068 (= lt!503994 (+!3436 lt!504001 (tuple2!18143 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1134068 call!49269))

(declare-fun addStillContains!735 (ListLongMap!16123 (_ BitVec 64) V!43137 (_ BitVec 64)) Unit!37101)

(assert (=> b!1134068 (= lt!504004 (addStillContains!735 lt!503994 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!49272 () ListLongMap!16123)

(assert (=> b!1134068 (contains!6568 call!49272 k!934)))

(declare-fun c!110682 () Bool)

(declare-fun call!49266 () ListLongMap!16123)

(declare-fun bm!49263 () Bool)

(assert (=> bm!49263 (= call!49269 (contains!6568 (ite c!110682 lt!503994 call!49266) k!934))))

(declare-fun b!1134069 () Bool)

(declare-fun e!645456 () Bool)

(declare-fun e!645460 () Bool)

(assert (=> b!1134069 (= e!645456 e!645460)))

(declare-fun res!757226 () Bool)

(assert (=> b!1134069 (=> res!757226 e!645460)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134069 (= res!757226 (not (= from!1455 i!673)))))

(declare-fun lt!503997 () array!73838)

(declare-fun lt!504003 () ListLongMap!16123)

(declare-fun lt!504002 () array!73836)

(assert (=> b!1134069 (= lt!504003 (getCurrentListMapNoExtraKeys!4526 lt!504002 lt!503997 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2594 (Int (_ BitVec 64)) V!43137)

(assert (=> b!1134069 (= lt!503997 (array!73839 (store (arr!35566 _values!996) i!673 (ValueCellFull!13544 (dynLambda!2594 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36103 _values!996)))))

(declare-fun lt!503999 () ListLongMap!16123)

(assert (=> b!1134069 (= lt!503999 (getCurrentListMapNoExtraKeys!4526 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134070 () Bool)

(declare-fun c!110678 () Bool)

(declare-fun lt!504000 () Bool)

(assert (=> b!1134070 (= c!110678 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504000))))

(declare-fun e!645458 () Unit!37101)

(declare-fun e!645453 () Unit!37101)

(assert (=> b!1134070 (= e!645458 e!645453)))

(declare-fun b!1134071 () Bool)

(declare-fun e!645454 () Bool)

(declare-fun e!645468 () Bool)

(assert (=> b!1134071 (= e!645454 e!645468)))

(declare-fun res!757215 () Bool)

(assert (=> b!1134071 (=> (not res!757215) (not e!645468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73836 (_ BitVec 32)) Bool)

(assert (=> b!1134071 (= res!757215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504002 mask!1564))))

(assert (=> b!1134071 (= lt!504002 (array!73837 (store (arr!35565 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36102 _keys!1208)))))

(declare-fun b!1134072 () Bool)

(declare-fun res!757212 () Bool)

(assert (=> b!1134072 (=> (not res!757212) (not e!645454))))

(assert (=> b!1134072 (= res!757212 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36102 _keys!1208))))))

(declare-fun bm!49264 () Bool)

(declare-fun call!49270 () Unit!37101)

(assert (=> bm!49264 (= call!49270 call!49271)))

(declare-fun b!1134073 () Bool)

(declare-fun e!645461 () Bool)

(declare-fun arrayContainsKey!0 (array!73836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134073 (= e!645461 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!44585 () Bool)

(declare-fun mapRes!44585 () Bool)

(declare-fun tp!84642 () Bool)

(assert (=> mapNonEmpty!44585 (= mapRes!44585 (and tp!84642 e!645462))))

(declare-fun mapValue!44585 () ValueCell!13544)

(declare-fun mapRest!44585 () (Array (_ BitVec 32) ValueCell!13544))

(declare-fun mapKey!44585 () (_ BitVec 32))

(assert (=> mapNonEmpty!44585 (= (arr!35566 _values!996) (store mapRest!44585 mapKey!44585 mapValue!44585))))

(declare-fun bm!49265 () Bool)

(assert (=> bm!49265 (= call!49266 call!49272)))

(declare-fun b!1134074 () Bool)

(declare-fun e!645455 () Bool)

(assert (=> b!1134074 (= e!645455 tp_is_empty!28507)))

(declare-fun bm!49266 () Bool)

(assert (=> bm!49266 (= call!49267 (getCurrentListMapNoExtraKeys!4526 lt!504002 lt!503997 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134075 () Bool)

(declare-fun e!645464 () Bool)

(assert (=> b!1134075 (= e!645464 (and e!645455 mapRes!44585))))

(declare-fun condMapEmpty!44585 () Bool)

(declare-fun mapDefault!44585 () ValueCell!13544)

