; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98108 () Bool)

(assert start!98108)

(declare-fun b_free!23773 () Bool)

(declare-fun b_next!23773 () Bool)

(assert (=> start!98108 (= b_free!23773 (not b_next!23773))))

(declare-fun tp!84024 () Bool)

(declare-fun b_and!38351 () Bool)

(assert (=> start!98108 (= tp!84024 b_and!38351)))

(declare-fun b!1126208 () Bool)

(declare-fun e!641086 () Bool)

(declare-datatypes ((V!42865 0))(
  ( (V!42866 (val!14208 Int)) )
))
(declare-datatypes ((tuple2!17948 0))(
  ( (tuple2!17949 (_1!8984 (_ BitVec 64)) (_2!8984 V!42865)) )
))
(declare-datatypes ((List!24775 0))(
  ( (Nil!24772) (Cons!24771 (h!25980 tuple2!17948) (t!35547 List!24775)) )
))
(declare-datatypes ((ListLongMap!15929 0))(
  ( (ListLongMap!15930 (toList!7980 List!24775)) )
))
(declare-fun call!47602 () ListLongMap!15929)

(declare-fun call!47603 () ListLongMap!15929)

(assert (=> b!1126208 (= e!641086 (= call!47602 call!47603))))

(declare-fun zeroValue!944 () V!42865)

(declare-datatypes ((array!73428 0))(
  ( (array!73429 (arr!35363 (Array (_ BitVec 32) (_ BitVec 64))) (size!35900 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73428)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47599 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13442 0))(
  ( (ValueCellFull!13442 (v!16842 V!42865)) (EmptyCell!13442) )
))
(declare-datatypes ((array!73430 0))(
  ( (array!73431 (arr!35364 (Array (_ BitVec 32) ValueCell!13442)) (size!35901 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73430)

(declare-fun minValue!944 () V!42865)

(declare-fun getCurrentListMapNoExtraKeys!4439 (array!73428 array!73430 (_ BitVec 32) (_ BitVec 32) V!42865 V!42865 (_ BitVec 32) Int) ListLongMap!15929)

(assert (=> bm!47599 (= call!47603 (getCurrentListMapNoExtraKeys!4439 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126209 () Bool)

(declare-fun res!752637 () Bool)

(declare-fun e!641089 () Bool)

(assert (=> b!1126209 (=> (not res!752637) (not e!641089))))

(assert (=> b!1126209 (= res!752637 (and (= (size!35901 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35900 _keys!1208) (size!35901 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126210 () Bool)

(declare-fun e!641088 () Bool)

(assert (=> b!1126210 (= e!641089 e!641088)))

(declare-fun res!752643 () Bool)

(assert (=> b!1126210 (=> (not res!752643) (not e!641088))))

(declare-fun lt!500126 () array!73428)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73428 (_ BitVec 32)) Bool)

(assert (=> b!1126210 (= res!752643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500126 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126210 (= lt!500126 (array!73429 (store (arr!35363 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35900 _keys!1208)))))

(declare-fun b!1126211 () Bool)

(declare-fun e!641085 () Bool)

(declare-fun e!641087 () Bool)

(assert (=> b!1126211 (= e!641085 e!641087)))

(declare-fun res!752639 () Bool)

(assert (=> b!1126211 (=> res!752639 e!641087)))

(assert (=> b!1126211 (= res!752639 (not (= from!1455 i!673)))))

(declare-fun lt!500124 () array!73430)

(declare-fun lt!500129 () ListLongMap!15929)

(assert (=> b!1126211 (= lt!500129 (getCurrentListMapNoExtraKeys!4439 lt!500126 lt!500124 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2520 (Int (_ BitVec 64)) V!42865)

(assert (=> b!1126211 (= lt!500124 (array!73431 (store (arr!35364 _values!996) i!673 (ValueCellFull!13442 (dynLambda!2520 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35901 _values!996)))))

(declare-fun lt!500127 () ListLongMap!15929)

(assert (=> b!1126211 (= lt!500127 (getCurrentListMapNoExtraKeys!4439 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126212 () Bool)

(declare-fun e!641093 () Bool)

(assert (=> b!1126212 (= e!641087 e!641093)))

(declare-fun res!752638 () Bool)

(assert (=> b!1126212 (=> res!752638 e!641093)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1126212 (= res!752638 (not (= (select (arr!35363 _keys!1208) from!1455) k!934)))))

(assert (=> b!1126212 e!641086))

(declare-fun c!109610 () Bool)

(assert (=> b!1126212 (= c!109610 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36853 0))(
  ( (Unit!36854) )
))
(declare-fun lt!500130 () Unit!36853)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!376 (array!73428 array!73430 (_ BitVec 32) (_ BitVec 32) V!42865 V!42865 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36853)

(assert (=> b!1126212 (= lt!500130 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!376 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126213 () Bool)

(declare-fun res!752641 () Bool)

(assert (=> b!1126213 (=> (not res!752641) (not e!641089))))

(assert (=> b!1126213 (= res!752641 (= (select (arr!35363 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!44272 () Bool)

(declare-fun mapRes!44272 () Bool)

(assert (=> mapIsEmpty!44272 mapRes!44272))

(declare-fun bm!47600 () Bool)

(assert (=> bm!47600 (= call!47602 (getCurrentListMapNoExtraKeys!4439 lt!500126 lt!500124 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126215 () Bool)

(declare-fun e!641091 () Bool)

(declare-fun tp_is_empty!28303 () Bool)

(assert (=> b!1126215 (= e!641091 tp_is_empty!28303)))

(declare-fun b!1126216 () Bool)

(declare-fun res!752645 () Bool)

(assert (=> b!1126216 (=> (not res!752645) (not e!641089))))

(declare-datatypes ((List!24776 0))(
  ( (Nil!24773) (Cons!24772 (h!25981 (_ BitVec 64)) (t!35548 List!24776)) )
))
(declare-fun arrayNoDuplicates!0 (array!73428 (_ BitVec 32) List!24776) Bool)

(assert (=> b!1126216 (= res!752645 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24773))))

(declare-fun b!1126217 () Bool)

(declare-fun -!1122 (ListLongMap!15929 (_ BitVec 64)) ListLongMap!15929)

(assert (=> b!1126217 (= e!641086 (= call!47602 (-!1122 call!47603 k!934)))))

(declare-fun b!1126218 () Bool)

(declare-fun res!752646 () Bool)

(assert (=> b!1126218 (=> (not res!752646) (not e!641088))))

(assert (=> b!1126218 (= res!752646 (arrayNoDuplicates!0 lt!500126 #b00000000000000000000000000000000 Nil!24773))))

(declare-fun b!1126219 () Bool)

(declare-fun res!752636 () Bool)

(assert (=> b!1126219 (=> (not res!752636) (not e!641089))))

(assert (=> b!1126219 (= res!752636 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35900 _keys!1208))))))

(declare-fun b!1126220 () Bool)

(declare-fun e!641092 () Bool)

(assert (=> b!1126220 (= e!641092 tp_is_empty!28303)))

(declare-fun mapNonEmpty!44272 () Bool)

(declare-fun tp!84023 () Bool)

(assert (=> mapNonEmpty!44272 (= mapRes!44272 (and tp!84023 e!641092))))

(declare-fun mapValue!44272 () ValueCell!13442)

(declare-fun mapRest!44272 () (Array (_ BitVec 32) ValueCell!13442))

(declare-fun mapKey!44272 () (_ BitVec 32))

(assert (=> mapNonEmpty!44272 (= (arr!35364 _values!996) (store mapRest!44272 mapKey!44272 mapValue!44272))))

(declare-fun b!1126221 () Bool)

(assert (=> b!1126221 (= e!641088 (not e!641085))))

(declare-fun res!752635 () Bool)

(assert (=> b!1126221 (=> res!752635 e!641085)))

(assert (=> b!1126221 (= res!752635 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126221 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500128 () Unit!36853)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73428 (_ BitVec 64) (_ BitVec 32)) Unit!36853)

(assert (=> b!1126221 (= lt!500128 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1126222 () Bool)

(declare-fun e!641090 () Bool)

(assert (=> b!1126222 (= e!641090 (and e!641091 mapRes!44272))))

(declare-fun condMapEmpty!44272 () Bool)

(declare-fun mapDefault!44272 () ValueCell!13442)

