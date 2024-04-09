; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98186 () Bool)

(assert start!98186)

(declare-fun b_free!23851 () Bool)

(declare-fun b_next!23851 () Bool)

(assert (=> start!98186 (= b_free!23851 (not b_next!23851))))

(declare-fun tp!84257 () Bool)

(declare-fun b_and!38507 () Bool)

(assert (=> start!98186 (= tp!84257 b_and!38507)))

(declare-fun b!1128401 () Bool)

(declare-fun e!642254 () Bool)

(declare-fun tp_is_empty!28381 () Bool)

(assert (=> b!1128401 (= e!642254 tp_is_empty!28381)))

(declare-fun b!1128402 () Bool)

(declare-fun e!642262 () Bool)

(assert (=> b!1128402 (= e!642262 tp_is_empty!28381)))

(declare-fun b!1128403 () Bool)

(declare-fun res!754170 () Bool)

(declare-fun e!642257 () Bool)

(assert (=> b!1128403 (=> (not res!754170) (not e!642257))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128403 (= res!754170 (validKeyInArray!0 k!934))))

(declare-datatypes ((V!42969 0))(
  ( (V!42970 (val!14247 Int)) )
))
(declare-fun zeroValue!944 () V!42969)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18020 0))(
  ( (tuple2!18021 (_1!9020 (_ BitVec 64)) (_2!9020 V!42969)) )
))
(declare-datatypes ((List!24841 0))(
  ( (Nil!24838) (Cons!24837 (h!26046 tuple2!18020) (t!35691 List!24841)) )
))
(declare-datatypes ((ListLongMap!16001 0))(
  ( (ListLongMap!16002 (toList!8016 List!24841)) )
))
(declare-fun call!47836 () ListLongMap!16001)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42969)

(declare-datatypes ((ValueCell!13481 0))(
  ( (ValueCellFull!13481 (v!16881 V!42969)) (EmptyCell!13481) )
))
(declare-datatypes ((array!73582 0))(
  ( (array!73583 (arr!35440 (Array (_ BitVec 32) ValueCell!13481)) (size!35977 (_ BitVec 32))) )
))
(declare-fun lt!500940 () array!73582)

(declare-datatypes ((array!73584 0))(
  ( (array!73585 (arr!35441 (Array (_ BitVec 32) (_ BitVec 64))) (size!35978 (_ BitVec 32))) )
))
(declare-fun lt!500937 () array!73584)

(declare-fun bm!47833 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4471 (array!73584 array!73582 (_ BitVec 32) (_ BitVec 32) V!42969 V!42969 (_ BitVec 32) Int) ListLongMap!16001)

(assert (=> bm!47833 (= call!47836 (getCurrentListMapNoExtraKeys!4471 lt!500937 lt!500940 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44389 () Bool)

(declare-fun mapRes!44389 () Bool)

(declare-fun tp!84258 () Bool)

(assert (=> mapNonEmpty!44389 (= mapRes!44389 (and tp!84258 e!642254))))

(declare-fun mapValue!44389 () ValueCell!13481)

(declare-fun mapRest!44389 () (Array (_ BitVec 32) ValueCell!13481))

(declare-fun mapKey!44389 () (_ BitVec 32))

(declare-fun _values!996 () array!73582)

(assert (=> mapNonEmpty!44389 (= (arr!35440 _values!996) (store mapRest!44389 mapKey!44389 mapValue!44389))))

(declare-fun b!1128404 () Bool)

(declare-fun e!642256 () Bool)

(declare-fun e!642255 () Bool)

(assert (=> b!1128404 (= e!642256 e!642255)))

(declare-fun res!754173 () Bool)

(assert (=> b!1128404 (=> res!754173 e!642255)))

(declare-fun _keys!1208 () array!73584)

(assert (=> b!1128404 (= res!754173 (not (= (select (arr!35441 _keys!1208) from!1455) k!934)))))

(declare-fun e!642260 () Bool)

(assert (=> b!1128404 e!642260))

(declare-fun c!109727 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128404 (= c!109727 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36917 0))(
  ( (Unit!36918) )
))
(declare-fun lt!500938 () Unit!36917)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!404 (array!73584 array!73582 (_ BitVec 32) (_ BitVec 32) V!42969 V!42969 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36917)

(assert (=> b!1128404 (= lt!500938 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!404 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128405 () Bool)

(assert (=> b!1128405 (= e!642255 true)))

(declare-fun lt!500936 () Bool)

(declare-fun contains!6512 (ListLongMap!16001 (_ BitVec 64)) Bool)

(assert (=> b!1128405 (= lt!500936 (contains!6512 (getCurrentListMapNoExtraKeys!4471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1128406 () Bool)

(declare-fun res!754175 () Bool)

(assert (=> b!1128406 (=> (not res!754175) (not e!642257))))

(assert (=> b!1128406 (= res!754175 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35978 _keys!1208))))))

(declare-fun b!1128407 () Bool)

(declare-fun e!642263 () Bool)

(declare-fun e!642259 () Bool)

(assert (=> b!1128407 (= e!642263 (not e!642259))))

(declare-fun res!754169 () Bool)

(assert (=> b!1128407 (=> res!754169 e!642259)))

(assert (=> b!1128407 (= res!754169 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128407 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500935 () Unit!36917)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73584 (_ BitVec 64) (_ BitVec 32)) Unit!36917)

(assert (=> b!1128407 (= lt!500935 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1128408 () Bool)

(assert (=> b!1128408 (= e!642257 e!642263)))

(declare-fun res!754165 () Bool)

(assert (=> b!1128408 (=> (not res!754165) (not e!642263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73584 (_ BitVec 32)) Bool)

(assert (=> b!1128408 (= res!754165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500937 mask!1564))))

(assert (=> b!1128408 (= lt!500937 (array!73585 (store (arr!35441 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35978 _keys!1208)))))

(declare-fun b!1128409 () Bool)

(declare-fun res!754167 () Bool)

(assert (=> b!1128409 (=> (not res!754167) (not e!642263))))

(declare-datatypes ((List!24842 0))(
  ( (Nil!24839) (Cons!24838 (h!26047 (_ BitVec 64)) (t!35692 List!24842)) )
))
(declare-fun arrayNoDuplicates!0 (array!73584 (_ BitVec 32) List!24842) Bool)

(assert (=> b!1128409 (= res!754167 (arrayNoDuplicates!0 lt!500937 #b00000000000000000000000000000000 Nil!24839))))

(declare-fun res!754164 () Bool)

(assert (=> start!98186 (=> (not res!754164) (not e!642257))))

(assert (=> start!98186 (= res!754164 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35978 _keys!1208))))))

(assert (=> start!98186 e!642257))

(assert (=> start!98186 tp_is_empty!28381))

(declare-fun array_inv!27058 (array!73584) Bool)

(assert (=> start!98186 (array_inv!27058 _keys!1208)))

(assert (=> start!98186 true))

(assert (=> start!98186 tp!84257))

(declare-fun e!642261 () Bool)

(declare-fun array_inv!27059 (array!73582) Bool)

(assert (=> start!98186 (and (array_inv!27059 _values!996) e!642261)))

(declare-fun b!1128410 () Bool)

(declare-fun res!754174 () Bool)

(assert (=> b!1128410 (=> (not res!754174) (not e!642257))))

(assert (=> b!1128410 (= res!754174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!47837 () ListLongMap!16001)

(declare-fun b!1128411 () Bool)

(declare-fun -!1151 (ListLongMap!16001 (_ BitVec 64)) ListLongMap!16001)

(assert (=> b!1128411 (= e!642260 (= call!47836 (-!1151 call!47837 k!934)))))

(declare-fun b!1128412 () Bool)

(declare-fun res!754176 () Bool)

(assert (=> b!1128412 (=> (not res!754176) (not e!642257))))

(assert (=> b!1128412 (= res!754176 (= (select (arr!35441 _keys!1208) i!673) k!934))))

(declare-fun b!1128413 () Bool)

(declare-fun res!754171 () Bool)

(assert (=> b!1128413 (=> (not res!754171) (not e!642257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128413 (= res!754171 (validMask!0 mask!1564))))

(declare-fun b!1128414 () Bool)

(assert (=> b!1128414 (= e!642260 (= call!47836 call!47837))))

(declare-fun b!1128415 () Bool)

(assert (=> b!1128415 (= e!642259 e!642256)))

(declare-fun res!754168 () Bool)

(assert (=> b!1128415 (=> res!754168 e!642256)))

(assert (=> b!1128415 (= res!754168 (not (= from!1455 i!673)))))

(declare-fun lt!500934 () ListLongMap!16001)

(assert (=> b!1128415 (= lt!500934 (getCurrentListMapNoExtraKeys!4471 lt!500937 lt!500940 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2549 (Int (_ BitVec 64)) V!42969)

(assert (=> b!1128415 (= lt!500940 (array!73583 (store (arr!35440 _values!996) i!673 (ValueCellFull!13481 (dynLambda!2549 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35977 _values!996)))))

(declare-fun lt!500939 () ListLongMap!16001)

(assert (=> b!1128415 (= lt!500939 (getCurrentListMapNoExtraKeys!4471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!47834 () Bool)

(assert (=> bm!47834 (= call!47837 (getCurrentListMapNoExtraKeys!4471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128416 () Bool)

(declare-fun res!754172 () Bool)

(assert (=> b!1128416 (=> (not res!754172) (not e!642257))))

(assert (=> b!1128416 (= res!754172 (and (= (size!35977 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35978 _keys!1208) (size!35977 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128417 () Bool)

(declare-fun res!754166 () Bool)

(assert (=> b!1128417 (=> (not res!754166) (not e!642257))))

(assert (=> b!1128417 (= res!754166 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24839))))

(declare-fun b!1128418 () Bool)

(assert (=> b!1128418 (= e!642261 (and e!642262 mapRes!44389))))

(declare-fun condMapEmpty!44389 () Bool)

(declare-fun mapDefault!44389 () ValueCell!13481)

