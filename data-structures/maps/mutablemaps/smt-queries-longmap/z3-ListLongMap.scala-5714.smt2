; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74098 () Bool)

(assert start!74098)

(declare-fun b_free!14985 () Bool)

(declare-fun b_next!14985 () Bool)

(assert (=> start!74098 (= b_free!14985 (not b_next!14985))))

(declare-fun tp!52460 () Bool)

(declare-fun b_and!24755 () Bool)

(assert (=> start!74098 (= tp!52460 b_and!24755)))

(declare-fun b!871233 () Bool)

(declare-fun res!592326 () Bool)

(declare-fun e!485112 () Bool)

(assert (=> b!871233 (=> (not res!592326) (not e!485112))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871233 (= res!592326 (validKeyInArray!0 k0!854))))

(declare-fun b!871234 () Bool)

(declare-fun e!485113 () Bool)

(assert (=> b!871234 (= e!485112 e!485113)))

(declare-fun res!592324 () Bool)

(assert (=> b!871234 (=> (not res!592324) (not e!485113))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871234 (= res!592324 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27875 0))(
  ( (V!27876 (val!8608 Int)) )
))
(declare-datatypes ((tuple2!11440 0))(
  ( (tuple2!11441 (_1!5730 (_ BitVec 64)) (_2!5730 V!27875)) )
))
(declare-datatypes ((List!17292 0))(
  ( (Nil!17289) (Cons!17288 (h!18419 tuple2!11440) (t!24337 List!17292)) )
))
(declare-datatypes ((ListLongMap!10223 0))(
  ( (ListLongMap!10224 (toList!5127 List!17292)) )
))
(declare-fun lt!395397 () ListLongMap!10223)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27875)

(declare-fun zeroValue!654 () V!27875)

(declare-datatypes ((array!50370 0))(
  ( (array!50371 (arr!24212 (Array (_ BitVec 32) (_ BitVec 64))) (size!24653 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50370)

(declare-datatypes ((ValueCell!8121 0))(
  ( (ValueCellFull!8121 (v!11029 V!27875)) (EmptyCell!8121) )
))
(declare-datatypes ((array!50372 0))(
  ( (array!50373 (arr!24213 (Array (_ BitVec 32) ValueCell!8121)) (size!24654 (_ BitVec 32))) )
))
(declare-fun lt!395395 () array!50372)

(declare-fun getCurrentListMapNoExtraKeys!3091 (array!50370 array!50372 (_ BitVec 32) (_ BitVec 32) V!27875 V!27875 (_ BitVec 32) Int) ListLongMap!10223)

(assert (=> b!871234 (= lt!395397 (getCurrentListMapNoExtraKeys!3091 _keys!868 lt!395395 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27875)

(declare-fun _values!688 () array!50372)

(assert (=> b!871234 (= lt!395395 (array!50373 (store (arr!24213 _values!688) i!612 (ValueCellFull!8121 v!557)) (size!24654 _values!688)))))

(declare-fun lt!395396 () ListLongMap!10223)

(assert (=> b!871234 (= lt!395396 (getCurrentListMapNoExtraKeys!3091 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871235 () Bool)

(declare-fun e!485110 () Bool)

(declare-fun tp_is_empty!17121 () Bool)

(assert (=> b!871235 (= e!485110 tp_is_empty!17121)))

(declare-fun b!871236 () Bool)

(assert (=> b!871236 (= e!485113 (not true))))

(declare-fun +!2406 (ListLongMap!10223 tuple2!11440) ListLongMap!10223)

(assert (=> b!871236 (= (getCurrentListMapNoExtraKeys!3091 _keys!868 lt!395395 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2406 (getCurrentListMapNoExtraKeys!3091 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11441 k0!854 v!557)))))

(declare-datatypes ((Unit!29862 0))(
  ( (Unit!29863) )
))
(declare-fun lt!395394 () Unit!29862)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!637 (array!50370 array!50372 (_ BitVec 32) (_ BitVec 32) V!27875 V!27875 (_ BitVec 32) (_ BitVec 64) V!27875 (_ BitVec 32) Int) Unit!29862)

(assert (=> b!871236 (= lt!395394 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!637 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871237 () Bool)

(declare-fun res!592331 () Bool)

(assert (=> b!871237 (=> (not res!592331) (not e!485112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50370 (_ BitVec 32)) Bool)

(assert (=> b!871237 (= res!592331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871238 () Bool)

(declare-fun res!592332 () Bool)

(assert (=> b!871238 (=> (not res!592332) (not e!485112))))

(declare-datatypes ((List!17293 0))(
  ( (Nil!17290) (Cons!17289 (h!18420 (_ BitVec 64)) (t!24338 List!17293)) )
))
(declare-fun arrayNoDuplicates!0 (array!50370 (_ BitVec 32) List!17293) Bool)

(assert (=> b!871238 (= res!592332 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17290))))

(declare-fun b!871239 () Bool)

(declare-fun res!592328 () Bool)

(assert (=> b!871239 (=> (not res!592328) (not e!485112))))

(assert (=> b!871239 (= res!592328 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24653 _keys!868))))))

(declare-fun res!592327 () Bool)

(assert (=> start!74098 (=> (not res!592327) (not e!485112))))

(assert (=> start!74098 (= res!592327 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24653 _keys!868))))))

(assert (=> start!74098 e!485112))

(assert (=> start!74098 tp_is_empty!17121))

(assert (=> start!74098 true))

(assert (=> start!74098 tp!52460))

(declare-fun array_inv!19092 (array!50370) Bool)

(assert (=> start!74098 (array_inv!19092 _keys!868)))

(declare-fun e!485111 () Bool)

(declare-fun array_inv!19093 (array!50372) Bool)

(assert (=> start!74098 (and (array_inv!19093 _values!688) e!485111)))

(declare-fun b!871240 () Bool)

(declare-fun res!592329 () Bool)

(assert (=> b!871240 (=> (not res!592329) (not e!485112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871240 (= res!592329 (validMask!0 mask!1196))))

(declare-fun b!871241 () Bool)

(declare-fun res!592330 () Bool)

(assert (=> b!871241 (=> (not res!592330) (not e!485112))))

(assert (=> b!871241 (= res!592330 (and (= (size!24654 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24653 _keys!868) (size!24654 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27281 () Bool)

(declare-fun mapRes!27281 () Bool)

(declare-fun tp!52459 () Bool)

(assert (=> mapNonEmpty!27281 (= mapRes!27281 (and tp!52459 e!485110))))

(declare-fun mapKey!27281 () (_ BitVec 32))

(declare-fun mapValue!27281 () ValueCell!8121)

(declare-fun mapRest!27281 () (Array (_ BitVec 32) ValueCell!8121))

(assert (=> mapNonEmpty!27281 (= (arr!24213 _values!688) (store mapRest!27281 mapKey!27281 mapValue!27281))))

(declare-fun b!871242 () Bool)

(declare-fun e!485114 () Bool)

(assert (=> b!871242 (= e!485114 tp_is_empty!17121)))

(declare-fun b!871243 () Bool)

(assert (=> b!871243 (= e!485111 (and e!485114 mapRes!27281))))

(declare-fun condMapEmpty!27281 () Bool)

(declare-fun mapDefault!27281 () ValueCell!8121)

(assert (=> b!871243 (= condMapEmpty!27281 (= (arr!24213 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8121)) mapDefault!27281)))))

(declare-fun mapIsEmpty!27281 () Bool)

(assert (=> mapIsEmpty!27281 mapRes!27281))

(declare-fun b!871244 () Bool)

(declare-fun res!592325 () Bool)

(assert (=> b!871244 (=> (not res!592325) (not e!485112))))

(assert (=> b!871244 (= res!592325 (and (= (select (arr!24212 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!74098 res!592327) b!871240))

(assert (= (and b!871240 res!592329) b!871241))

(assert (= (and b!871241 res!592330) b!871237))

(assert (= (and b!871237 res!592331) b!871238))

(assert (= (and b!871238 res!592332) b!871239))

(assert (= (and b!871239 res!592328) b!871233))

(assert (= (and b!871233 res!592326) b!871244))

(assert (= (and b!871244 res!592325) b!871234))

(assert (= (and b!871234 res!592324) b!871236))

(assert (= (and b!871243 condMapEmpty!27281) mapIsEmpty!27281))

(assert (= (and b!871243 (not condMapEmpty!27281)) mapNonEmpty!27281))

(get-info :version)

(assert (= (and mapNonEmpty!27281 ((_ is ValueCellFull!8121) mapValue!27281)) b!871235))

(assert (= (and b!871243 ((_ is ValueCellFull!8121) mapDefault!27281)) b!871242))

(assert (= start!74098 b!871243))

(declare-fun m!812551 () Bool)

(assert (=> b!871236 m!812551))

(declare-fun m!812553 () Bool)

(assert (=> b!871236 m!812553))

(assert (=> b!871236 m!812553))

(declare-fun m!812555 () Bool)

(assert (=> b!871236 m!812555))

(declare-fun m!812557 () Bool)

(assert (=> b!871236 m!812557))

(declare-fun m!812559 () Bool)

(assert (=> mapNonEmpty!27281 m!812559))

(declare-fun m!812561 () Bool)

(assert (=> b!871233 m!812561))

(declare-fun m!812563 () Bool)

(assert (=> b!871238 m!812563))

(declare-fun m!812565 () Bool)

(assert (=> b!871240 m!812565))

(declare-fun m!812567 () Bool)

(assert (=> b!871244 m!812567))

(declare-fun m!812569 () Bool)

(assert (=> b!871234 m!812569))

(declare-fun m!812571 () Bool)

(assert (=> b!871234 m!812571))

(declare-fun m!812573 () Bool)

(assert (=> b!871234 m!812573))

(declare-fun m!812575 () Bool)

(assert (=> b!871237 m!812575))

(declare-fun m!812577 () Bool)

(assert (=> start!74098 m!812577))

(declare-fun m!812579 () Bool)

(assert (=> start!74098 m!812579))

(check-sat (not b!871236) b_and!24755 (not b!871238) (not b!871233) (not b!871234) (not b_next!14985) (not mapNonEmpty!27281) (not b!871240) (not b!871237) tp_is_empty!17121 (not start!74098))
(check-sat b_and!24755 (not b_next!14985))
