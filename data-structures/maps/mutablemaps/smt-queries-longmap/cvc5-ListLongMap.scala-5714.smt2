; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74096 () Bool)

(assert start!74096)

(declare-fun b_free!14983 () Bool)

(declare-fun b_next!14983 () Bool)

(assert (=> start!74096 (= b_free!14983 (not b_next!14983))))

(declare-fun tp!52453 () Bool)

(declare-fun b_and!24753 () Bool)

(assert (=> start!74096 (= tp!52453 b_and!24753)))

(declare-fun b!871197 () Bool)

(declare-fun res!592303 () Bool)

(declare-fun e!485095 () Bool)

(assert (=> b!871197 (=> (not res!592303) (not e!485095))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871197 (= res!592303 (validMask!0 mask!1196))))

(declare-fun b!871198 () Bool)

(declare-fun res!592304 () Bool)

(assert (=> b!871198 (=> (not res!592304) (not e!485095))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50366 0))(
  ( (array!50367 (arr!24210 (Array (_ BitVec 32) (_ BitVec 64))) (size!24651 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50366)

(declare-datatypes ((V!27873 0))(
  ( (V!27874 (val!8607 Int)) )
))
(declare-datatypes ((ValueCell!8120 0))(
  ( (ValueCellFull!8120 (v!11028 V!27873)) (EmptyCell!8120) )
))
(declare-datatypes ((array!50368 0))(
  ( (array!50369 (arr!24211 (Array (_ BitVec 32) ValueCell!8120)) (size!24652 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50368)

(assert (=> b!871198 (= res!592304 (and (= (size!24652 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24651 _keys!868) (size!24652 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871199 () Bool)

(declare-fun res!592302 () Bool)

(assert (=> b!871199 (=> (not res!592302) (not e!485095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50366 (_ BitVec 32)) Bool)

(assert (=> b!871199 (= res!592302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!592297 () Bool)

(assert (=> start!74096 (=> (not res!592297) (not e!485095))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74096 (= res!592297 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24651 _keys!868))))))

(assert (=> start!74096 e!485095))

(declare-fun tp_is_empty!17119 () Bool)

(assert (=> start!74096 tp_is_empty!17119))

(assert (=> start!74096 true))

(assert (=> start!74096 tp!52453))

(declare-fun array_inv!19090 (array!50366) Bool)

(assert (=> start!74096 (array_inv!19090 _keys!868)))

(declare-fun e!485097 () Bool)

(declare-fun array_inv!19091 (array!50368) Bool)

(assert (=> start!74096 (and (array_inv!19091 _values!688) e!485097)))

(declare-fun b!871200 () Bool)

(declare-fun e!485094 () Bool)

(assert (=> b!871200 (= e!485094 (not true))))

(declare-fun v!557 () V!27873)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!395385 () array!50368)

(declare-fun minValue!654 () V!27873)

(declare-fun zeroValue!654 () V!27873)

(declare-datatypes ((tuple2!11438 0))(
  ( (tuple2!11439 (_1!5729 (_ BitVec 64)) (_2!5729 V!27873)) )
))
(declare-datatypes ((List!17291 0))(
  ( (Nil!17288) (Cons!17287 (h!18418 tuple2!11438) (t!24336 List!17291)) )
))
(declare-datatypes ((ListLongMap!10221 0))(
  ( (ListLongMap!10222 (toList!5126 List!17291)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3090 (array!50366 array!50368 (_ BitVec 32) (_ BitVec 32) V!27873 V!27873 (_ BitVec 32) Int) ListLongMap!10221)

(declare-fun +!2405 (ListLongMap!10221 tuple2!11438) ListLongMap!10221)

(assert (=> b!871200 (= (getCurrentListMapNoExtraKeys!3090 _keys!868 lt!395385 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2405 (getCurrentListMapNoExtraKeys!3090 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11439 k!854 v!557)))))

(declare-datatypes ((Unit!29860 0))(
  ( (Unit!29861) )
))
(declare-fun lt!395384 () Unit!29860)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!636 (array!50366 array!50368 (_ BitVec 32) (_ BitVec 32) V!27873 V!27873 (_ BitVec 32) (_ BitVec 64) V!27873 (_ BitVec 32) Int) Unit!29860)

(assert (=> b!871200 (= lt!395384 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!636 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871201 () Bool)

(declare-fun res!592301 () Bool)

(assert (=> b!871201 (=> (not res!592301) (not e!485095))))

(assert (=> b!871201 (= res!592301 (and (= (select (arr!24210 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27278 () Bool)

(declare-fun mapRes!27278 () Bool)

(assert (=> mapIsEmpty!27278 mapRes!27278))

(declare-fun b!871202 () Bool)

(declare-fun res!592300 () Bool)

(assert (=> b!871202 (=> (not res!592300) (not e!485095))))

(assert (=> b!871202 (= res!592300 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24651 _keys!868))))))

(declare-fun mapNonEmpty!27278 () Bool)

(declare-fun tp!52454 () Bool)

(declare-fun e!485092 () Bool)

(assert (=> mapNonEmpty!27278 (= mapRes!27278 (and tp!52454 e!485092))))

(declare-fun mapRest!27278 () (Array (_ BitVec 32) ValueCell!8120))

(declare-fun mapKey!27278 () (_ BitVec 32))

(declare-fun mapValue!27278 () ValueCell!8120)

(assert (=> mapNonEmpty!27278 (= (arr!24211 _values!688) (store mapRest!27278 mapKey!27278 mapValue!27278))))

(declare-fun b!871203 () Bool)

(assert (=> b!871203 (= e!485092 tp_is_empty!17119)))

(declare-fun b!871204 () Bool)

(declare-fun e!485093 () Bool)

(assert (=> b!871204 (= e!485093 tp_is_empty!17119)))

(declare-fun b!871205 () Bool)

(assert (=> b!871205 (= e!485097 (and e!485093 mapRes!27278))))

(declare-fun condMapEmpty!27278 () Bool)

(declare-fun mapDefault!27278 () ValueCell!8120)

