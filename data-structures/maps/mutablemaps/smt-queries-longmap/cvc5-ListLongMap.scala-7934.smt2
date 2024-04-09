; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98480 () Bool)

(assert start!98480)

(declare-fun b_free!24049 () Bool)

(declare-fun b_next!24049 () Bool)

(assert (=> start!98480 (= b_free!24049 (not b_next!24049))))

(declare-fun tp!84858 () Bool)

(declare-fun b_and!38961 () Bool)

(assert (=> start!98480 (= tp!84858 b_and!38961)))

(declare-datatypes ((array!73976 0))(
  ( (array!73977 (arr!35635 (Array (_ BitVec 32) (_ BitVec 64))) (size!36172 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73976)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1137425 () Bool)

(declare-fun e!647269 () Bool)

(declare-fun arrayContainsKey!0 (array!73976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137425 (= e!647269 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-datatypes ((V!43233 0))(
  ( (V!43234 (val!14346 Int)) )
))
(declare-fun zeroValue!944 () V!43233)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13580 0))(
  ( (ValueCellFull!13580 (v!16984 V!43233)) (EmptyCell!13580) )
))
(declare-datatypes ((array!73978 0))(
  ( (array!73979 (arr!35636 (Array (_ BitVec 32) ValueCell!13580)) (size!36173 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73978)

(declare-fun minValue!944 () V!43233)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!50126 () Bool)

(declare-datatypes ((tuple2!18208 0))(
  ( (tuple2!18209 (_1!9114 (_ BitVec 64)) (_2!9114 V!43233)) )
))
(declare-datatypes ((List!25017 0))(
  ( (Nil!25014) (Cons!25013 (h!26222 tuple2!18208) (t!36065 List!25017)) )
))
(declare-datatypes ((ListLongMap!16189 0))(
  ( (ListLongMap!16190 (toList!8110 List!25017)) )
))
(declare-fun call!50136 () ListLongMap!16189)

(declare-fun getCurrentListMapNoExtraKeys!4558 (array!73976 array!73978 (_ BitVec 32) (_ BitVec 32) V!43233 V!43233 (_ BitVec 32) Int) ListLongMap!16189)

(assert (=> bm!50126 (= call!50136 (getCurrentListMapNoExtraKeys!4558 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137426 () Bool)

(declare-fun call!50129 () Bool)

(assert (=> b!1137426 call!50129))

(declare-datatypes ((Unit!37207 0))(
  ( (Unit!37208) )
))
(declare-fun lt!505866 () Unit!37207)

(declare-fun call!50133 () Unit!37207)

(assert (=> b!1137426 (= lt!505866 call!50133)))

(declare-fun e!647267 () Unit!37207)

(assert (=> b!1137426 (= e!647267 lt!505866)))

(declare-fun b!1137427 () Bool)

(declare-fun e!647268 () Bool)

(declare-fun e!647260 () Bool)

(assert (=> b!1137427 (= e!647268 e!647260)))

(declare-fun res!759039 () Bool)

(assert (=> b!1137427 (=> res!759039 e!647260)))

(assert (=> b!1137427 (= res!759039 (not (= (select (arr!35635 _keys!1208) from!1455) k!934)))))

(declare-fun e!647270 () Bool)

(assert (=> b!1137427 e!647270))

(declare-fun c!111251 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1137427 (= c!111251 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505864 () Unit!37207)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!475 (array!73976 array!73978 (_ BitVec 32) (_ BitVec 32) V!43233 V!43233 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37207)

(assert (=> b!1137427 (= lt!505864 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!50134 () Bool)

(declare-fun c!111249 () Bool)

(declare-fun bm!50127 () Bool)

(declare-fun lt!505861 () ListLongMap!16189)

(declare-fun call!50131 () ListLongMap!16189)

(declare-fun contains!6621 (ListLongMap!16189 (_ BitVec 64)) Bool)

(assert (=> bm!50127 (= call!50134 (contains!6621 (ite c!111249 lt!505861 call!50131) k!934))))

(declare-fun b!1137429 () Bool)

(declare-fun e!647264 () Bool)

(declare-fun e!647271 () Bool)

(declare-fun mapRes!44693 () Bool)

(assert (=> b!1137429 (= e!647264 (and e!647271 mapRes!44693))))

(declare-fun condMapEmpty!44693 () Bool)

(declare-fun mapDefault!44693 () ValueCell!13580)

