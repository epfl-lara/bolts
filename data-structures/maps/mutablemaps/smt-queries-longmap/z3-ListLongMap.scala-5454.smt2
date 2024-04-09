; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72538 () Bool)

(assert start!72538)

(declare-fun b_free!13695 () Bool)

(declare-fun b_next!13695 () Bool)

(assert (=> start!72538 (= b_free!13695 (not b_next!13695))))

(declare-fun tp!48185 () Bool)

(declare-fun b_and!22799 () Bool)

(assert (=> start!72538 (= tp!48185 b_and!22799)))

(declare-datatypes ((V!25795 0))(
  ( (V!25796 (val!7828 Int)) )
))
(declare-fun v!557 () V!25795)

(declare-fun b!841214 () Bool)

(declare-fun e!469316 () Bool)

(declare-datatypes ((tuple2!10406 0))(
  ( (tuple2!10407 (_1!5213 (_ BitVec 64)) (_2!5213 V!25795)) )
))
(declare-datatypes ((List!16230 0))(
  ( (Nil!16227) (Cons!16226 (h!17357 tuple2!10406) (t!22609 List!16230)) )
))
(declare-datatypes ((ListLongMap!9189 0))(
  ( (ListLongMap!9190 (toList!4610 List!16230)) )
))
(declare-fun call!37318 () ListLongMap!9189)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!37319 () ListLongMap!9189)

(declare-fun +!2015 (ListLongMap!9189 tuple2!10406) ListLongMap!9189)

(assert (=> b!841214 (= e!469316 (= call!37318 (+!2015 call!37319 (tuple2!10407 k0!854 v!557))))))

(declare-fun mapNonEmpty!24941 () Bool)

(declare-fun mapRes!24941 () Bool)

(declare-fun tp!48184 () Bool)

(declare-fun e!469320 () Bool)

(assert (=> mapNonEmpty!24941 (= mapRes!24941 (and tp!48184 e!469320))))

(declare-datatypes ((ValueCell!7341 0))(
  ( (ValueCellFull!7341 (v!10249 V!25795)) (EmptyCell!7341) )
))
(declare-fun mapValue!24941 () ValueCell!7341)

(declare-fun mapRest!24941 () (Array (_ BitVec 32) ValueCell!7341))

(declare-fun mapKey!24941 () (_ BitVec 32))

(declare-datatypes ((array!47368 0))(
  ( (array!47369 (arr!22711 (Array (_ BitVec 32) ValueCell!7341)) (size!23152 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47368)

(assert (=> mapNonEmpty!24941 (= (arr!22711 _values!688) (store mapRest!24941 mapKey!24941 mapValue!24941))))

(declare-fun mapIsEmpty!24941 () Bool)

(assert (=> mapIsEmpty!24941 mapRes!24941))

(declare-fun b!841215 () Bool)

(declare-fun res!571943 () Bool)

(declare-fun e!469318 () Bool)

(assert (=> b!841215 (=> (not res!571943) (not e!469318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841215 (= res!571943 (validKeyInArray!0 k0!854))))

(declare-fun b!841216 () Bool)

(declare-fun tp_is_empty!15561 () Bool)

(assert (=> b!841216 (= e!469320 tp_is_empty!15561)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37315 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47370 0))(
  ( (array!47371 (arr!22712 (Array (_ BitVec 32) (_ BitVec 64))) (size!23153 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47370)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25795)

(declare-fun zeroValue!654 () V!25795)

(declare-fun getCurrentListMapNoExtraKeys!2601 (array!47370 array!47368 (_ BitVec 32) (_ BitVec 32) V!25795 V!25795 (_ BitVec 32) Int) ListLongMap!9189)

(assert (=> bm!37315 (= call!37318 (getCurrentListMapNoExtraKeys!2601 _keys!868 (array!47369 (store (arr!22711 _values!688) i!612 (ValueCellFull!7341 v!557)) (size!23152 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841217 () Bool)

(declare-fun e!469315 () Bool)

(assert (=> b!841217 (= e!469315 tp_is_empty!15561)))

(declare-fun b!841219 () Bool)

(declare-fun res!571947 () Bool)

(assert (=> b!841219 (=> (not res!571947) (not e!469318))))

(declare-datatypes ((List!16231 0))(
  ( (Nil!16228) (Cons!16227 (h!17358 (_ BitVec 64)) (t!22610 List!16231)) )
))
(declare-fun arrayNoDuplicates!0 (array!47370 (_ BitVec 32) List!16231) Bool)

(assert (=> b!841219 (= res!571947 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16228))))

(declare-fun b!841220 () Bool)

(declare-fun res!571950 () Bool)

(assert (=> b!841220 (=> (not res!571950) (not e!469318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47370 (_ BitVec 32)) Bool)

(assert (=> b!841220 (= res!571950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841221 () Bool)

(declare-fun res!571944 () Bool)

(assert (=> b!841221 (=> (not res!571944) (not e!469318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841221 (= res!571944 (validMask!0 mask!1196))))

(declare-fun b!841222 () Bool)

(assert (=> b!841222 (= e!469316 (= call!37318 call!37319))))

(declare-fun bm!37316 () Bool)

(assert (=> bm!37316 (= call!37319 (getCurrentListMapNoExtraKeys!2601 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571945 () Bool)

(assert (=> start!72538 (=> (not res!571945) (not e!469318))))

(assert (=> start!72538 (= res!571945 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23153 _keys!868))))))

(assert (=> start!72538 e!469318))

(assert (=> start!72538 tp_is_empty!15561))

(assert (=> start!72538 true))

(assert (=> start!72538 tp!48185))

(declare-fun array_inv!18056 (array!47370) Bool)

(assert (=> start!72538 (array_inv!18056 _keys!868)))

(declare-fun e!469317 () Bool)

(declare-fun array_inv!18057 (array!47368) Bool)

(assert (=> start!72538 (and (array_inv!18057 _values!688) e!469317)))

(declare-fun b!841218 () Bool)

(declare-fun res!571948 () Bool)

(assert (=> b!841218 (=> (not res!571948) (not e!469318))))

(assert (=> b!841218 (= res!571948 (and (= (size!23152 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23153 _keys!868) (size!23152 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841223 () Bool)

(assert (=> b!841223 (= e!469318 (not true))))

(assert (=> b!841223 e!469316))

(declare-fun c!91320 () Bool)

(assert (=> b!841223 (= c!91320 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28890 0))(
  ( (Unit!28891) )
))
(declare-fun lt!380853 () Unit!28890)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!294 (array!47370 array!47368 (_ BitVec 32) (_ BitVec 32) V!25795 V!25795 (_ BitVec 32) (_ BitVec 64) V!25795 (_ BitVec 32) Int) Unit!28890)

(assert (=> b!841223 (= lt!380853 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!294 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841224 () Bool)

(declare-fun res!571949 () Bool)

(assert (=> b!841224 (=> (not res!571949) (not e!469318))))

(assert (=> b!841224 (= res!571949 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23153 _keys!868))))))

(declare-fun b!841225 () Bool)

(assert (=> b!841225 (= e!469317 (and e!469315 mapRes!24941))))

(declare-fun condMapEmpty!24941 () Bool)

(declare-fun mapDefault!24941 () ValueCell!7341)

(assert (=> b!841225 (= condMapEmpty!24941 (= (arr!22711 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7341)) mapDefault!24941)))))

(declare-fun b!841226 () Bool)

(declare-fun res!571946 () Bool)

(assert (=> b!841226 (=> (not res!571946) (not e!469318))))

(assert (=> b!841226 (= res!571946 (and (= (select (arr!22712 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23153 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(assert (= (and start!72538 res!571945) b!841221))

(assert (= (and b!841221 res!571944) b!841218))

(assert (= (and b!841218 res!571948) b!841220))

(assert (= (and b!841220 res!571950) b!841219))

(assert (= (and b!841219 res!571947) b!841224))

(assert (= (and b!841224 res!571949) b!841215))

(assert (= (and b!841215 res!571943) b!841226))

(assert (= (and b!841226 res!571946) b!841223))

(assert (= (and b!841223 c!91320) b!841214))

(assert (= (and b!841223 (not c!91320)) b!841222))

(assert (= (or b!841214 b!841222) bm!37315))

(assert (= (or b!841214 b!841222) bm!37316))

(assert (= (and b!841225 condMapEmpty!24941) mapIsEmpty!24941))

(assert (= (and b!841225 (not condMapEmpty!24941)) mapNonEmpty!24941))

(get-info :version)

(assert (= (and mapNonEmpty!24941 ((_ is ValueCellFull!7341) mapValue!24941)) b!841216))

(assert (= (and b!841225 ((_ is ValueCellFull!7341) mapDefault!24941)) b!841217))

(assert (= start!72538 b!841225))

(declare-fun m!784789 () Bool)

(assert (=> bm!37315 m!784789))

(declare-fun m!784791 () Bool)

(assert (=> bm!37315 m!784791))

(declare-fun m!784793 () Bool)

(assert (=> b!841215 m!784793))

(declare-fun m!784795 () Bool)

(assert (=> start!72538 m!784795))

(declare-fun m!784797 () Bool)

(assert (=> start!72538 m!784797))

(declare-fun m!784799 () Bool)

(assert (=> b!841223 m!784799))

(declare-fun m!784801 () Bool)

(assert (=> b!841226 m!784801))

(declare-fun m!784803 () Bool)

(assert (=> mapNonEmpty!24941 m!784803))

(declare-fun m!784805 () Bool)

(assert (=> b!841220 m!784805))

(declare-fun m!784807 () Bool)

(assert (=> b!841219 m!784807))

(declare-fun m!784809 () Bool)

(assert (=> b!841214 m!784809))

(declare-fun m!784811 () Bool)

(assert (=> b!841221 m!784811))

(declare-fun m!784813 () Bool)

(assert (=> bm!37316 m!784813))

(check-sat tp_is_empty!15561 b_and!22799 (not b!841220) (not start!72538) (not b!841219) (not b!841214) (not b!841215) (not b_next!13695) (not b!841221) (not b!841223) (not bm!37316) (not bm!37315) (not mapNonEmpty!24941))
(check-sat b_and!22799 (not b_next!13695))
