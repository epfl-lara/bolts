; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99252 () Bool)

(assert start!99252)

(declare-fun b_free!24821 () Bool)

(declare-fun b_next!24821 () Bool)

(assert (=> start!99252 (= b_free!24821 (not b_next!24821))))

(declare-fun tp!87174 () Bool)

(declare-fun b_and!40505 () Bool)

(assert (=> start!99252 (= tp!87174 b_and!40505)))

(declare-fun b!1168291 () Bool)

(declare-fun e!664021 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75476 0))(
  ( (array!75477 (arr!36385 (Array (_ BitVec 32) (_ BitVec 64))) (size!36922 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75476)

(assert (=> b!1168291 (= e!664021 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36922 _keys!1208))))))

(declare-fun b!1168292 () Bool)

(declare-fun res!775205 () Bool)

(declare-fun e!664023 () Bool)

(assert (=> b!1168292 (=> (not res!775205) (not e!664023))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168292 (= res!775205 (validMask!0 mask!1564))))

(declare-fun b!1168293 () Bool)

(declare-fun e!664028 () Bool)

(declare-fun tp_is_empty!29351 () Bool)

(assert (=> b!1168293 (= e!664028 tp_is_empty!29351)))

(declare-fun b!1168294 () Bool)

(declare-fun e!664027 () Bool)

(assert (=> b!1168294 (= e!664027 tp_is_empty!29351)))

(declare-fun mapIsEmpty!45851 () Bool)

(declare-fun mapRes!45851 () Bool)

(assert (=> mapIsEmpty!45851 mapRes!45851))

(declare-fun b!1168295 () Bool)

(declare-fun e!664026 () Bool)

(assert (=> b!1168295 (= e!664026 e!664021)))

(declare-fun res!775215 () Bool)

(assert (=> b!1168295 (=> res!775215 e!664021)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168295 (= res!775215 (not (validKeyInArray!0 (select (arr!36385 _keys!1208) from!1455))))))

(declare-datatypes ((V!44261 0))(
  ( (V!44262 (val!14732 Int)) )
))
(declare-fun zeroValue!944 () V!44261)

(declare-fun lt!525933 () array!75476)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13966 0))(
  ( (ValueCellFull!13966 (v!17370 V!44261)) (EmptyCell!13966) )
))
(declare-datatypes ((array!75478 0))(
  ( (array!75479 (arr!36386 (Array (_ BitVec 32) ValueCell!13966)) (size!36923 (_ BitVec 32))) )
))
(declare-fun lt!525929 () array!75478)

(declare-fun _values!996 () array!75478)

(declare-fun minValue!944 () V!44261)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18882 0))(
  ( (tuple2!18883 (_1!9451 (_ BitVec 64)) (_2!9451 V!44261)) )
))
(declare-datatypes ((List!25658 0))(
  ( (Nil!25655) (Cons!25654 (h!26863 tuple2!18882) (t!37478 List!25658)) )
))
(declare-datatypes ((ListLongMap!16863 0))(
  ( (ListLongMap!16864 (toList!8447 List!25658)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4880 (array!75476 array!75478 (_ BitVec 32) (_ BitVec 32) V!44261 V!44261 (_ BitVec 32) Int) ListLongMap!16863)

(declare-fun -!1476 (ListLongMap!16863 (_ BitVec 64)) ListLongMap!16863)

(assert (=> b!1168295 (= (getCurrentListMapNoExtraKeys!4880 lt!525933 lt!525929 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1476 (getCurrentListMapNoExtraKeys!4880 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38442 0))(
  ( (Unit!38443) )
))
(declare-fun lt!525928 () Unit!38442)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!700 (array!75476 array!75478 (_ BitVec 32) (_ BitVec 32) V!44261 V!44261 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38442)

(assert (=> b!1168295 (= lt!525928 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!700 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168296 () Bool)

(declare-fun e!664029 () Bool)

(assert (=> b!1168296 (= e!664029 e!664026)))

(declare-fun res!775206 () Bool)

(assert (=> b!1168296 (=> res!775206 e!664026)))

(assert (=> b!1168296 (= res!775206 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525931 () ListLongMap!16863)

(assert (=> b!1168296 (= lt!525931 (getCurrentListMapNoExtraKeys!4880 lt!525933 lt!525929 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2872 (Int (_ BitVec 64)) V!44261)

(assert (=> b!1168296 (= lt!525929 (array!75479 (store (arr!36386 _values!996) i!673 (ValueCellFull!13966 (dynLambda!2872 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36923 _values!996)))))

(declare-fun lt!525930 () ListLongMap!16863)

(assert (=> b!1168296 (= lt!525930 (getCurrentListMapNoExtraKeys!4880 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168297 () Bool)

(declare-fun e!664024 () Bool)

(assert (=> b!1168297 (= e!664023 e!664024)))

(declare-fun res!775212 () Bool)

(assert (=> b!1168297 (=> (not res!775212) (not e!664024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75476 (_ BitVec 32)) Bool)

(assert (=> b!1168297 (= res!775212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525933 mask!1564))))

(assert (=> b!1168297 (= lt!525933 (array!75477 (store (arr!36385 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36922 _keys!1208)))))

(declare-fun b!1168298 () Bool)

(assert (=> b!1168298 (= e!664024 (not e!664029))))

(declare-fun res!775213 () Bool)

(assert (=> b!1168298 (=> res!775213 e!664029)))

(assert (=> b!1168298 (= res!775213 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168298 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525932 () Unit!38442)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75476 (_ BitVec 64) (_ BitVec 32)) Unit!38442)

(assert (=> b!1168298 (= lt!525932 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!45851 () Bool)

(declare-fun tp!87175 () Bool)

(assert (=> mapNonEmpty!45851 (= mapRes!45851 (and tp!87175 e!664028))))

(declare-fun mapKey!45851 () (_ BitVec 32))

(declare-fun mapRest!45851 () (Array (_ BitVec 32) ValueCell!13966))

(declare-fun mapValue!45851 () ValueCell!13966)

(assert (=> mapNonEmpty!45851 (= (arr!36386 _values!996) (store mapRest!45851 mapKey!45851 mapValue!45851))))

(declare-fun b!1168299 () Bool)

(declare-fun res!775214 () Bool)

(assert (=> b!1168299 (=> (not res!775214) (not e!664023))))

(assert (=> b!1168299 (= res!775214 (and (= (size!36923 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36922 _keys!1208) (size!36923 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168300 () Bool)

(declare-fun res!775207 () Bool)

(assert (=> b!1168300 (=> (not res!775207) (not e!664023))))

(assert (=> b!1168300 (= res!775207 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36922 _keys!1208))))))

(declare-fun b!1168301 () Bool)

(declare-fun res!775210 () Bool)

(assert (=> b!1168301 (=> (not res!775210) (not e!664023))))

(assert (=> b!1168301 (= res!775210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!775208 () Bool)

(assert (=> start!99252 (=> (not res!775208) (not e!664023))))

(assert (=> start!99252 (= res!775208 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36922 _keys!1208))))))

(assert (=> start!99252 e!664023))

(assert (=> start!99252 tp_is_empty!29351))

(declare-fun array_inv!27692 (array!75476) Bool)

(assert (=> start!99252 (array_inv!27692 _keys!1208)))

(assert (=> start!99252 true))

(assert (=> start!99252 tp!87174))

(declare-fun e!664022 () Bool)

(declare-fun array_inv!27693 (array!75478) Bool)

(assert (=> start!99252 (and (array_inv!27693 _values!996) e!664022)))

(declare-fun b!1168302 () Bool)

(assert (=> b!1168302 (= e!664022 (and e!664027 mapRes!45851))))

(declare-fun condMapEmpty!45851 () Bool)

(declare-fun mapDefault!45851 () ValueCell!13966)

