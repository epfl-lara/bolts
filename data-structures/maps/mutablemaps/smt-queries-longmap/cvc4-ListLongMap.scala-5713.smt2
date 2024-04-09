; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74094 () Bool)

(assert start!74094)

(declare-fun b_free!14981 () Bool)

(declare-fun b_next!14981 () Bool)

(assert (=> start!74094 (= b_free!14981 (not b_next!14981))))

(declare-fun tp!52448 () Bool)

(declare-fun b_and!24751 () Bool)

(assert (=> start!74094 (= tp!52448 b_and!24751)))

(declare-fun b!871161 () Bool)

(declare-fun e!485076 () Bool)

(declare-fun e!485078 () Bool)

(assert (=> b!871161 (= e!485076 e!485078)))

(declare-fun res!592276 () Bool)

(assert (=> b!871161 (=> (not res!592276) (not e!485078))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871161 (= res!592276 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27869 0))(
  ( (V!27870 (val!8606 Int)) )
))
(declare-datatypes ((ValueCell!8119 0))(
  ( (ValueCellFull!8119 (v!11027 V!27869)) (EmptyCell!8119) )
))
(declare-datatypes ((array!50362 0))(
  ( (array!50363 (arr!24208 (Array (_ BitVec 32) ValueCell!8119)) (size!24649 (_ BitVec 32))) )
))
(declare-fun lt!395371 () array!50362)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11436 0))(
  ( (tuple2!11437 (_1!5728 (_ BitVec 64)) (_2!5728 V!27869)) )
))
(declare-datatypes ((List!17290 0))(
  ( (Nil!17287) (Cons!17286 (h!18417 tuple2!11436) (t!24335 List!17290)) )
))
(declare-datatypes ((ListLongMap!10219 0))(
  ( (ListLongMap!10220 (toList!5125 List!17290)) )
))
(declare-fun lt!395373 () ListLongMap!10219)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50364 0))(
  ( (array!50365 (arr!24209 (Array (_ BitVec 32) (_ BitVec 64))) (size!24650 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50364)

(declare-fun minValue!654 () V!27869)

(declare-fun zeroValue!654 () V!27869)

(declare-fun getCurrentListMapNoExtraKeys!3089 (array!50364 array!50362 (_ BitVec 32) (_ BitVec 32) V!27869 V!27869 (_ BitVec 32) Int) ListLongMap!10219)

(assert (=> b!871161 (= lt!395373 (getCurrentListMapNoExtraKeys!3089 _keys!868 lt!395371 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27869)

(declare-fun _values!688 () array!50362)

(assert (=> b!871161 (= lt!395371 (array!50363 (store (arr!24208 _values!688) i!612 (ValueCellFull!8119 v!557)) (size!24649 _values!688)))))

(declare-fun lt!395370 () ListLongMap!10219)

(assert (=> b!871161 (= lt!395370 (getCurrentListMapNoExtraKeys!3089 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871162 () Bool)

(declare-fun res!592273 () Bool)

(assert (=> b!871162 (=> (not res!592273) (not e!485076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871162 (= res!592273 (validMask!0 mask!1196))))

(declare-fun b!871163 () Bool)

(declare-fun res!592272 () Bool)

(assert (=> b!871163 (=> (not res!592272) (not e!485076))))

(assert (=> b!871163 (= res!592272 (and (= (size!24649 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24650 _keys!868) (size!24649 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871164 () Bool)

(assert (=> b!871164 (= e!485078 (not true))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2404 (ListLongMap!10219 tuple2!11436) ListLongMap!10219)

(assert (=> b!871164 (= (getCurrentListMapNoExtraKeys!3089 _keys!868 lt!395371 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2404 (getCurrentListMapNoExtraKeys!3089 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11437 k!854 v!557)))))

(declare-datatypes ((Unit!29858 0))(
  ( (Unit!29859) )
))
(declare-fun lt!395372 () Unit!29858)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!635 (array!50364 array!50362 (_ BitVec 32) (_ BitVec 32) V!27869 V!27869 (_ BitVec 32) (_ BitVec 64) V!27869 (_ BitVec 32) Int) Unit!29858)

(assert (=> b!871164 (= lt!395372 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!635 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871165 () Bool)

(declare-fun res!592277 () Bool)

(assert (=> b!871165 (=> (not res!592277) (not e!485076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871165 (= res!592277 (validKeyInArray!0 k!854))))

(declare-fun b!871166 () Bool)

(declare-fun res!592271 () Bool)

(assert (=> b!871166 (=> (not res!592271) (not e!485076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50364 (_ BitVec 32)) Bool)

(assert (=> b!871166 (= res!592271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871167 () Bool)

(declare-fun e!485075 () Bool)

(declare-fun tp_is_empty!17117 () Bool)

(assert (=> b!871167 (= e!485075 tp_is_empty!17117)))

(declare-fun mapIsEmpty!27275 () Bool)

(declare-fun mapRes!27275 () Bool)

(assert (=> mapIsEmpty!27275 mapRes!27275))

(declare-fun b!871168 () Bool)

(declare-fun e!485077 () Bool)

(assert (=> b!871168 (= e!485077 tp_is_empty!17117)))

(declare-fun b!871170 () Bool)

(declare-fun e!485079 () Bool)

(assert (=> b!871170 (= e!485079 (and e!485077 mapRes!27275))))

(declare-fun condMapEmpty!27275 () Bool)

(declare-fun mapDefault!27275 () ValueCell!8119)

