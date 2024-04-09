; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97424 () Bool)

(assert start!97424)

(declare-fun b_free!23359 () Bool)

(declare-fun b_next!23359 () Bool)

(assert (=> start!97424 (= b_free!23359 (not b_next!23359))))

(declare-fun tp!82377 () Bool)

(declare-fun b_and!37575 () Bool)

(assert (=> start!97424 (= tp!82377 b_and!37575)))

(declare-fun b!1110343 () Bool)

(declare-fun res!741051 () Bool)

(declare-fun e!633282 () Bool)

(assert (=> b!1110343 (=> (not res!741051) (not e!633282))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110343 (= res!741051 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43246 () Bool)

(declare-fun mapRes!43246 () Bool)

(declare-fun tp!82376 () Bool)

(declare-fun e!633285 () Bool)

(assert (=> mapNonEmpty!43246 (= mapRes!43246 (and tp!82376 e!633285))))

(declare-datatypes ((V!41953 0))(
  ( (V!41954 (val!13866 Int)) )
))
(declare-datatypes ((ValueCell!13100 0))(
  ( (ValueCellFull!13100 (v!16500 V!41953)) (EmptyCell!13100) )
))
(declare-fun mapRest!43246 () (Array (_ BitVec 32) ValueCell!13100))

(declare-fun mapValue!43246 () ValueCell!13100)

(declare-fun mapKey!43246 () (_ BitVec 32))

(declare-datatypes ((array!72104 0))(
  ( (array!72105 (arr!34701 (Array (_ BitVec 32) ValueCell!13100)) (size!35238 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72104)

(assert (=> mapNonEmpty!43246 (= (arr!34701 _values!996) (store mapRest!43246 mapKey!43246 mapValue!43246))))

(declare-datatypes ((tuple2!17602 0))(
  ( (tuple2!17603 (_1!8811 (_ BitVec 64)) (_2!8811 V!41953)) )
))
(declare-datatypes ((List!24338 0))(
  ( (Nil!24335) (Cons!24334 (h!25543 tuple2!17602) (t!34750 List!24338)) )
))
(declare-datatypes ((ListLongMap!15583 0))(
  ( (ListLongMap!15584 (toList!7807 List!24338)) )
))
(declare-fun call!46774 () ListLongMap!15583)

(declare-fun call!46775 () ListLongMap!15583)

(declare-fun b!1110344 () Bool)

(declare-fun e!633286 () Bool)

(declare-fun -!1033 (ListLongMap!15583 (_ BitVec 64)) ListLongMap!15583)

(assert (=> b!1110344 (= e!633286 (= call!46774 (-!1033 call!46775 k!934)))))

(declare-fun b!1110345 () Bool)

(declare-fun res!741055 () Bool)

(assert (=> b!1110345 (=> (not res!741055) (not e!633282))))

(declare-datatypes ((array!72106 0))(
  ( (array!72107 (arr!34702 (Array (_ BitVec 32) (_ BitVec 64))) (size!35239 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72106)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110345 (= res!741055 (= (select (arr!34702 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43246 () Bool)

(assert (=> mapIsEmpty!43246 mapRes!43246))

(declare-fun b!1110346 () Bool)

(declare-fun res!741049 () Bool)

(assert (=> b!1110346 (=> (not res!741049) (not e!633282))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110346 (= res!741049 (validMask!0 mask!1564))))

(declare-fun b!1110347 () Bool)

(declare-fun res!741050 () Bool)

(assert (=> b!1110347 (=> (not res!741050) (not e!633282))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1110347 (= res!741050 (and (= (size!35238 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35239 _keys!1208) (size!35238 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!41953)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!41953)

(declare-fun bm!46771 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4270 (array!72106 array!72104 (_ BitVec 32) (_ BitVec 32) V!41953 V!41953 (_ BitVec 32) Int) ListLongMap!15583)

(assert (=> bm!46771 (= call!46775 (getCurrentListMapNoExtraKeys!4270 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!741047 () Bool)

(assert (=> start!97424 (=> (not res!741047) (not e!633282))))

(assert (=> start!97424 (= res!741047 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35239 _keys!1208))))))

(assert (=> start!97424 e!633282))

(declare-fun tp_is_empty!27619 () Bool)

(assert (=> start!97424 tp_is_empty!27619))

(declare-fun array_inv!26566 (array!72106) Bool)

(assert (=> start!97424 (array_inv!26566 _keys!1208)))

(assert (=> start!97424 true))

(assert (=> start!97424 tp!82377))

(declare-fun e!633283 () Bool)

(declare-fun array_inv!26567 (array!72104) Bool)

(assert (=> start!97424 (and (array_inv!26567 _values!996) e!633283)))

(declare-fun lt!496130 () array!72106)

(declare-fun bm!46772 () Bool)

(declare-fun dynLambda!2392 (Int (_ BitVec 64)) V!41953)

(assert (=> bm!46772 (= call!46774 (getCurrentListMapNoExtraKeys!4270 lt!496130 (array!72105 (store (arr!34701 _values!996) i!673 (ValueCellFull!13100 (dynLambda!2392 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35238 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110348 () Bool)

(declare-fun res!741056 () Bool)

(assert (=> b!1110348 (=> (not res!741056) (not e!633282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72106 (_ BitVec 32)) Bool)

(assert (=> b!1110348 (= res!741056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110349 () Bool)

(declare-fun e!633284 () Bool)

(declare-fun e!633287 () Bool)

(assert (=> b!1110349 (= e!633284 (not e!633287))))

(declare-fun res!741057 () Bool)

(assert (=> b!1110349 (=> res!741057 e!633287)))

(assert (=> b!1110349 (= res!741057 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35239 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110349 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36357 0))(
  ( (Unit!36358) )
))
(declare-fun lt!496129 () Unit!36357)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72106 (_ BitVec 64) (_ BitVec 32)) Unit!36357)

(assert (=> b!1110349 (= lt!496129 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1110350 () Bool)

(assert (=> b!1110350 (= e!633286 (= call!46774 call!46775))))

(declare-fun b!1110351 () Bool)

(declare-fun res!741048 () Bool)

(assert (=> b!1110351 (=> (not res!741048) (not e!633282))))

(declare-datatypes ((List!24339 0))(
  ( (Nil!24336) (Cons!24335 (h!25544 (_ BitVec 64)) (t!34751 List!24339)) )
))
(declare-fun arrayNoDuplicates!0 (array!72106 (_ BitVec 32) List!24339) Bool)

(assert (=> b!1110351 (= res!741048 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24336))))

(declare-fun b!1110352 () Bool)

(assert (=> b!1110352 (= e!633285 tp_is_empty!27619)))

(declare-fun b!1110353 () Bool)

(assert (=> b!1110353 (= e!633282 e!633284)))

(declare-fun res!741054 () Bool)

(assert (=> b!1110353 (=> (not res!741054) (not e!633284))))

(assert (=> b!1110353 (= res!741054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496130 mask!1564))))

(assert (=> b!1110353 (= lt!496130 (array!72107 (store (arr!34702 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35239 _keys!1208)))))

(declare-fun b!1110354 () Bool)

(declare-fun res!741052 () Bool)

(assert (=> b!1110354 (=> (not res!741052) (not e!633282))))

(assert (=> b!1110354 (= res!741052 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35239 _keys!1208))))))

(declare-fun b!1110355 () Bool)

(declare-fun res!741053 () Bool)

(assert (=> b!1110355 (=> (not res!741053) (not e!633284))))

(assert (=> b!1110355 (= res!741053 (arrayNoDuplicates!0 lt!496130 #b00000000000000000000000000000000 Nil!24336))))

(declare-fun b!1110356 () Bool)

(assert (=> b!1110356 (= e!633287 true)))

(assert (=> b!1110356 e!633286))

(declare-fun c!109190 () Bool)

(assert (=> b!1110356 (= c!109190 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496131 () Unit!36357)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!285 (array!72106 array!72104 (_ BitVec 32) (_ BitVec 32) V!41953 V!41953 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36357)

(assert (=> b!1110356 (= lt!496131 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!285 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110357 () Bool)

(declare-fun e!633281 () Bool)

(assert (=> b!1110357 (= e!633283 (and e!633281 mapRes!43246))))

(declare-fun condMapEmpty!43246 () Bool)

(declare-fun mapDefault!43246 () ValueCell!13100)

