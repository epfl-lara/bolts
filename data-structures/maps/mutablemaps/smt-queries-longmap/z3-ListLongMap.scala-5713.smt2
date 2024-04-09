; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74092 () Bool)

(assert start!74092)

(declare-fun b_free!14979 () Bool)

(declare-fun b_next!14979 () Bool)

(assert (=> start!74092 (= b_free!14979 (not b_next!14979))))

(declare-fun tp!52442 () Bool)

(declare-fun b_and!24749 () Bool)

(assert (=> start!74092 (= tp!52442 b_and!24749)))

(declare-fun b!871125 () Bool)

(declare-fun e!485057 () Bool)

(declare-fun e!485059 () Bool)

(assert (=> b!871125 (= e!485057 e!485059)))

(declare-fun res!592247 () Bool)

(assert (=> b!871125 (=> (not res!592247) (not e!485059))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871125 (= res!592247 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27867 0))(
  ( (V!27868 (val!8605 Int)) )
))
(declare-datatypes ((ValueCell!8118 0))(
  ( (ValueCellFull!8118 (v!11026 V!27867)) (EmptyCell!8118) )
))
(declare-datatypes ((array!50358 0))(
  ( (array!50359 (arr!24206 (Array (_ BitVec 32) ValueCell!8118)) (size!24647 (_ BitVec 32))) )
))
(declare-fun lt!395361 () array!50358)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11434 0))(
  ( (tuple2!11435 (_1!5727 (_ BitVec 64)) (_2!5727 V!27867)) )
))
(declare-datatypes ((List!17288 0))(
  ( (Nil!17285) (Cons!17284 (h!18415 tuple2!11434) (t!24333 List!17288)) )
))
(declare-datatypes ((ListLongMap!10217 0))(
  ( (ListLongMap!10218 (toList!5124 List!17288)) )
))
(declare-fun lt!395359 () ListLongMap!10217)

(declare-datatypes ((array!50360 0))(
  ( (array!50361 (arr!24207 (Array (_ BitVec 32) (_ BitVec 64))) (size!24648 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50360)

(declare-fun minValue!654 () V!27867)

(declare-fun zeroValue!654 () V!27867)

(declare-fun getCurrentListMapNoExtraKeys!3088 (array!50360 array!50358 (_ BitVec 32) (_ BitVec 32) V!27867 V!27867 (_ BitVec 32) Int) ListLongMap!10217)

(assert (=> b!871125 (= lt!395359 (getCurrentListMapNoExtraKeys!3088 _keys!868 lt!395361 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27867)

(declare-fun _values!688 () array!50358)

(assert (=> b!871125 (= lt!395361 (array!50359 (store (arr!24206 _values!688) i!612 (ValueCellFull!8118 v!557)) (size!24647 _values!688)))))

(declare-fun lt!395360 () ListLongMap!10217)

(assert (=> b!871125 (= lt!395360 (getCurrentListMapNoExtraKeys!3088 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871126 () Bool)

(declare-fun res!592245 () Bool)

(assert (=> b!871126 (=> (not res!592245) (not e!485057))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!871126 (= res!592245 (and (= (select (arr!24207 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!871127 () Bool)

(declare-fun res!592248 () Bool)

(assert (=> b!871127 (=> (not res!592248) (not e!485057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50360 (_ BitVec 32)) Bool)

(assert (=> b!871127 (= res!592248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871128 () Bool)

(declare-fun res!592249 () Bool)

(assert (=> b!871128 (=> (not res!592249) (not e!485057))))

(assert (=> b!871128 (= res!592249 (and (= (size!24647 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24648 _keys!868) (size!24647 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27272 () Bool)

(declare-fun mapRes!27272 () Bool)

(declare-fun tp!52441 () Bool)

(declare-fun e!485058 () Bool)

(assert (=> mapNonEmpty!27272 (= mapRes!27272 (and tp!52441 e!485058))))

(declare-fun mapRest!27272 () (Array (_ BitVec 32) ValueCell!8118))

(declare-fun mapKey!27272 () (_ BitVec 32))

(declare-fun mapValue!27272 () ValueCell!8118)

(assert (=> mapNonEmpty!27272 (= (arr!24206 _values!688) (store mapRest!27272 mapKey!27272 mapValue!27272))))

(declare-fun b!871129 () Bool)

(declare-fun res!592243 () Bool)

(assert (=> b!871129 (=> (not res!592243) (not e!485057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871129 (= res!592243 (validMask!0 mask!1196))))

(declare-fun b!871130 () Bool)

(declare-fun tp_is_empty!17115 () Bool)

(assert (=> b!871130 (= e!485058 tp_is_empty!17115)))

(declare-fun res!592246 () Bool)

(assert (=> start!74092 (=> (not res!592246) (not e!485057))))

(assert (=> start!74092 (= res!592246 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24648 _keys!868))))))

(assert (=> start!74092 e!485057))

(assert (=> start!74092 tp_is_empty!17115))

(assert (=> start!74092 true))

(assert (=> start!74092 tp!52442))

(declare-fun array_inv!19088 (array!50360) Bool)

(assert (=> start!74092 (array_inv!19088 _keys!868)))

(declare-fun e!485056 () Bool)

(declare-fun array_inv!19089 (array!50358) Bool)

(assert (=> start!74092 (and (array_inv!19089 _values!688) e!485056)))

(declare-fun b!871131 () Bool)

(declare-fun res!592251 () Bool)

(assert (=> b!871131 (=> (not res!592251) (not e!485057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871131 (= res!592251 (validKeyInArray!0 k0!854))))

(declare-fun b!871132 () Bool)

(declare-fun res!592244 () Bool)

(assert (=> b!871132 (=> (not res!592244) (not e!485057))))

(assert (=> b!871132 (= res!592244 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24648 _keys!868))))))

(declare-fun b!871133 () Bool)

(assert (=> b!871133 (= e!485059 (not true))))

(declare-fun +!2403 (ListLongMap!10217 tuple2!11434) ListLongMap!10217)

(assert (=> b!871133 (= (getCurrentListMapNoExtraKeys!3088 _keys!868 lt!395361 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2403 (getCurrentListMapNoExtraKeys!3088 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11435 k0!854 v!557)))))

(declare-datatypes ((Unit!29856 0))(
  ( (Unit!29857) )
))
(declare-fun lt!395358 () Unit!29856)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!634 (array!50360 array!50358 (_ BitVec 32) (_ BitVec 32) V!27867 V!27867 (_ BitVec 32) (_ BitVec 64) V!27867 (_ BitVec 32) Int) Unit!29856)

(assert (=> b!871133 (= lt!395358 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!634 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27272 () Bool)

(assert (=> mapIsEmpty!27272 mapRes!27272))

(declare-fun b!871134 () Bool)

(declare-fun res!592250 () Bool)

(assert (=> b!871134 (=> (not res!592250) (not e!485057))))

(declare-datatypes ((List!17289 0))(
  ( (Nil!17286) (Cons!17285 (h!18416 (_ BitVec 64)) (t!24334 List!17289)) )
))
(declare-fun arrayNoDuplicates!0 (array!50360 (_ BitVec 32) List!17289) Bool)

(assert (=> b!871134 (= res!592250 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17286))))

(declare-fun b!871135 () Bool)

(declare-fun e!485060 () Bool)

(assert (=> b!871135 (= e!485060 tp_is_empty!17115)))

(declare-fun b!871136 () Bool)

(assert (=> b!871136 (= e!485056 (and e!485060 mapRes!27272))))

(declare-fun condMapEmpty!27272 () Bool)

(declare-fun mapDefault!27272 () ValueCell!8118)

(assert (=> b!871136 (= condMapEmpty!27272 (= (arr!24206 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8118)) mapDefault!27272)))))

(assert (= (and start!74092 res!592246) b!871129))

(assert (= (and b!871129 res!592243) b!871128))

(assert (= (and b!871128 res!592249) b!871127))

(assert (= (and b!871127 res!592248) b!871134))

(assert (= (and b!871134 res!592250) b!871132))

(assert (= (and b!871132 res!592244) b!871131))

(assert (= (and b!871131 res!592251) b!871126))

(assert (= (and b!871126 res!592245) b!871125))

(assert (= (and b!871125 res!592247) b!871133))

(assert (= (and b!871136 condMapEmpty!27272) mapIsEmpty!27272))

(assert (= (and b!871136 (not condMapEmpty!27272)) mapNonEmpty!27272))

(get-info :version)

(assert (= (and mapNonEmpty!27272 ((_ is ValueCellFull!8118) mapValue!27272)) b!871130))

(assert (= (and b!871136 ((_ is ValueCellFull!8118) mapDefault!27272)) b!871135))

(assert (= start!74092 b!871136))

(declare-fun m!812461 () Bool)

(assert (=> b!871125 m!812461))

(declare-fun m!812463 () Bool)

(assert (=> b!871125 m!812463))

(declare-fun m!812465 () Bool)

(assert (=> b!871125 m!812465))

(declare-fun m!812467 () Bool)

(assert (=> mapNonEmpty!27272 m!812467))

(declare-fun m!812469 () Bool)

(assert (=> b!871126 m!812469))

(declare-fun m!812471 () Bool)

(assert (=> b!871129 m!812471))

(declare-fun m!812473 () Bool)

(assert (=> b!871127 m!812473))

(declare-fun m!812475 () Bool)

(assert (=> start!74092 m!812475))

(declare-fun m!812477 () Bool)

(assert (=> start!74092 m!812477))

(declare-fun m!812479 () Bool)

(assert (=> b!871133 m!812479))

(declare-fun m!812481 () Bool)

(assert (=> b!871133 m!812481))

(assert (=> b!871133 m!812481))

(declare-fun m!812483 () Bool)

(assert (=> b!871133 m!812483))

(declare-fun m!812485 () Bool)

(assert (=> b!871133 m!812485))

(declare-fun m!812487 () Bool)

(assert (=> b!871134 m!812487))

(declare-fun m!812489 () Bool)

(assert (=> b!871131 m!812489))

(check-sat (not mapNonEmpty!27272) tp_is_empty!17115 (not b_next!14979) (not b!871133) (not b!871125) b_and!24749 (not start!74092) (not b!871127) (not b!871129) (not b!871131) (not b!871134))
(check-sat b_and!24749 (not b_next!14979))
