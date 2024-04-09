; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73090 () Bool)

(assert start!73090)

(declare-fun b_free!13977 () Bool)

(declare-fun b_next!13977 () Bool)

(assert (=> start!73090 (= b_free!13977 (not b_next!13977))))

(declare-fun tp!49436 () Bool)

(declare-fun b_and!23131 () Bool)

(assert (=> start!73090 (= tp!49436 b_and!23131)))

(declare-fun b!849464 () Bool)

(declare-fun res!577192 () Bool)

(declare-fun e!473938 () Bool)

(assert (=> b!849464 (=> (not res!577192) (not e!473938))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849464 (= res!577192 (validMask!0 mask!1196))))

(declare-fun b!849465 () Bool)

(declare-fun res!577199 () Bool)

(assert (=> b!849465 (=> (not res!577199) (not e!473938))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48418 0))(
  ( (array!48419 (arr!23236 (Array (_ BitVec 32) (_ BitVec 64))) (size!23677 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48418)

(declare-datatypes ((V!26531 0))(
  ( (V!26532 (val!8104 Int)) )
))
(declare-datatypes ((ValueCell!7617 0))(
  ( (ValueCellFull!7617 (v!10525 V!26531)) (EmptyCell!7617) )
))
(declare-datatypes ((array!48420 0))(
  ( (array!48421 (arr!23237 (Array (_ BitVec 32) ValueCell!7617)) (size!23678 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48420)

(assert (=> b!849465 (= res!577199 (and (= (size!23678 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23677 _keys!868) (size!23678 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849466 () Bool)

(declare-fun res!577198 () Bool)

(assert (=> b!849466 (=> (not res!577198) (not e!473938))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849466 (= res!577198 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23677 _keys!868))))))

(declare-fun bm!37784 () Bool)

(declare-fun lt!382266 () array!48420)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10626 0))(
  ( (tuple2!10627 (_1!5323 (_ BitVec 64)) (_2!5323 V!26531)) )
))
(declare-datatypes ((List!16525 0))(
  ( (Nil!16522) (Cons!16521 (h!17652 tuple2!10626) (t!22956 List!16525)) )
))
(declare-datatypes ((ListLongMap!9409 0))(
  ( (ListLongMap!9410 (toList!4720 List!16525)) )
))
(declare-fun call!37786 () ListLongMap!9409)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26531)

(declare-fun zeroValue!654 () V!26531)

(declare-fun getCurrentListMapNoExtraKeys!2708 (array!48418 array!48420 (_ BitVec 32) (_ BitVec 32) V!26531 V!26531 (_ BitVec 32) Int) ListLongMap!9409)

(assert (=> bm!37784 (= call!37786 (getCurrentListMapNoExtraKeys!2708 _keys!868 lt!382266 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849467 () Bool)

(declare-fun res!577194 () Bool)

(assert (=> b!849467 (=> (not res!577194) (not e!473938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48418 (_ BitVec 32)) Bool)

(assert (=> b!849467 (= res!577194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25769 () Bool)

(declare-fun mapRes!25769 () Bool)

(assert (=> mapIsEmpty!25769 mapRes!25769))

(declare-fun b!849468 () Bool)

(declare-fun e!473940 () Bool)

(declare-fun e!473937 () Bool)

(assert (=> b!849468 (= e!473940 (not e!473937))))

(declare-fun res!577197 () Bool)

(assert (=> b!849468 (=> res!577197 e!473937)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849468 (= res!577197 (not (validKeyInArray!0 (select (arr!23236 _keys!868) from!1053))))))

(declare-fun e!473936 () Bool)

(assert (=> b!849468 e!473936))

(declare-fun c!91554 () Bool)

(assert (=> b!849468 (= c!91554 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26531)

(declare-datatypes ((Unit!28980 0))(
  ( (Unit!28981) )
))
(declare-fun lt!382265 () Unit!28980)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!339 (array!48418 array!48420 (_ BitVec 32) (_ BitVec 32) V!26531 V!26531 (_ BitVec 32) (_ BitVec 64) V!26531 (_ BitVec 32) Int) Unit!28980)

(assert (=> b!849468 (= lt!382265 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!339 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849469 () Bool)

(declare-fun res!577193 () Bool)

(assert (=> b!849469 (=> (not res!577193) (not e!473938))))

(declare-datatypes ((List!16526 0))(
  ( (Nil!16523) (Cons!16522 (h!17653 (_ BitVec 64)) (t!22957 List!16526)) )
))
(declare-fun arrayNoDuplicates!0 (array!48418 (_ BitVec 32) List!16526) Bool)

(assert (=> b!849469 (= res!577193 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16523))))

(declare-fun call!37787 () ListLongMap!9409)

(declare-fun b!849470 () Bool)

(declare-fun +!2065 (ListLongMap!9409 tuple2!10626) ListLongMap!9409)

(assert (=> b!849470 (= e!473936 (= call!37786 (+!2065 call!37787 (tuple2!10627 k0!854 v!557))))))

(declare-fun b!849471 () Bool)

(assert (=> b!849471 (= e!473937 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23677 _keys!868))))))

(declare-fun lt!382263 () ListLongMap!9409)

(declare-fun get!12243 (ValueCell!7617 V!26531) V!26531)

(declare-fun dynLambda!1001 (Int (_ BitVec 64)) V!26531)

(assert (=> b!849471 (= lt!382263 (+!2065 (getCurrentListMapNoExtraKeys!2708 _keys!868 lt!382266 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10627 (select (arr!23236 _keys!868) from!1053) (get!12243 (select (arr!23237 lt!382266) from!1053) (dynLambda!1001 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849472 () Bool)

(assert (=> b!849472 (= e!473936 (= call!37786 call!37787))))

(declare-fun b!849473 () Bool)

(assert (=> b!849473 (= e!473938 e!473940)))

(declare-fun res!577195 () Bool)

(assert (=> b!849473 (=> (not res!577195) (not e!473940))))

(assert (=> b!849473 (= res!577195 (= from!1053 i!612))))

(assert (=> b!849473 (= lt!382263 (getCurrentListMapNoExtraKeys!2708 _keys!868 lt!382266 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849473 (= lt!382266 (array!48421 (store (arr!23237 _values!688) i!612 (ValueCellFull!7617 v!557)) (size!23678 _values!688)))))

(declare-fun lt!382264 () ListLongMap!9409)

(assert (=> b!849473 (= lt!382264 (getCurrentListMapNoExtraKeys!2708 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849474 () Bool)

(declare-fun res!577196 () Bool)

(assert (=> b!849474 (=> (not res!577196) (not e!473938))))

(assert (=> b!849474 (= res!577196 (validKeyInArray!0 k0!854))))

(declare-fun b!849475 () Bool)

(declare-fun e!473933 () Bool)

(declare-fun tp_is_empty!16113 () Bool)

(assert (=> b!849475 (= e!473933 tp_is_empty!16113)))

(declare-fun b!849476 () Bool)

(declare-fun res!577191 () Bool)

(assert (=> b!849476 (=> (not res!577191) (not e!473938))))

(assert (=> b!849476 (= res!577191 (and (= (select (arr!23236 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!849477 () Bool)

(declare-fun e!473935 () Bool)

(declare-fun e!473939 () Bool)

(assert (=> b!849477 (= e!473935 (and e!473939 mapRes!25769))))

(declare-fun condMapEmpty!25769 () Bool)

(declare-fun mapDefault!25769 () ValueCell!7617)

(assert (=> b!849477 (= condMapEmpty!25769 (= (arr!23237 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7617)) mapDefault!25769)))))

(declare-fun res!577200 () Bool)

(assert (=> start!73090 (=> (not res!577200) (not e!473938))))

(assert (=> start!73090 (= res!577200 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23677 _keys!868))))))

(assert (=> start!73090 e!473938))

(assert (=> start!73090 tp_is_empty!16113))

(assert (=> start!73090 true))

(assert (=> start!73090 tp!49436))

(declare-fun array_inv!18428 (array!48418) Bool)

(assert (=> start!73090 (array_inv!18428 _keys!868)))

(declare-fun array_inv!18429 (array!48420) Bool)

(assert (=> start!73090 (and (array_inv!18429 _values!688) e!473935)))

(declare-fun bm!37783 () Bool)

(assert (=> bm!37783 (= call!37787 (getCurrentListMapNoExtraKeys!2708 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25769 () Bool)

(declare-fun tp!49435 () Bool)

(assert (=> mapNonEmpty!25769 (= mapRes!25769 (and tp!49435 e!473933))))

(declare-fun mapRest!25769 () (Array (_ BitVec 32) ValueCell!7617))

(declare-fun mapKey!25769 () (_ BitVec 32))

(declare-fun mapValue!25769 () ValueCell!7617)

(assert (=> mapNonEmpty!25769 (= (arr!23237 _values!688) (store mapRest!25769 mapKey!25769 mapValue!25769))))

(declare-fun b!849478 () Bool)

(assert (=> b!849478 (= e!473939 tp_is_empty!16113)))

(assert (= (and start!73090 res!577200) b!849464))

(assert (= (and b!849464 res!577192) b!849465))

(assert (= (and b!849465 res!577199) b!849467))

(assert (= (and b!849467 res!577194) b!849469))

(assert (= (and b!849469 res!577193) b!849466))

(assert (= (and b!849466 res!577198) b!849474))

(assert (= (and b!849474 res!577196) b!849476))

(assert (= (and b!849476 res!577191) b!849473))

(assert (= (and b!849473 res!577195) b!849468))

(assert (= (and b!849468 c!91554) b!849470))

(assert (= (and b!849468 (not c!91554)) b!849472))

(assert (= (or b!849470 b!849472) bm!37784))

(assert (= (or b!849470 b!849472) bm!37783))

(assert (= (and b!849468 (not res!577197)) b!849471))

(assert (= (and b!849477 condMapEmpty!25769) mapIsEmpty!25769))

(assert (= (and b!849477 (not condMapEmpty!25769)) mapNonEmpty!25769))

(get-info :version)

(assert (= (and mapNonEmpty!25769 ((_ is ValueCellFull!7617) mapValue!25769)) b!849475))

(assert (= (and b!849477 ((_ is ValueCellFull!7617) mapDefault!25769)) b!849478))

(assert (= start!73090 b!849477))

(declare-fun b_lambda!11539 () Bool)

(assert (=> (not b_lambda!11539) (not b!849471)))

(declare-fun t!22955 () Bool)

(declare-fun tb!4287 () Bool)

(assert (=> (and start!73090 (= defaultEntry!696 defaultEntry!696) t!22955) tb!4287))

(declare-fun result!8177 () Bool)

(assert (=> tb!4287 (= result!8177 tp_is_empty!16113)))

(assert (=> b!849471 t!22955))

(declare-fun b_and!23133 () Bool)

(assert (= b_and!23131 (and (=> t!22955 result!8177) b_and!23133)))

(declare-fun m!790235 () Bool)

(assert (=> b!849469 m!790235))

(declare-fun m!790237 () Bool)

(assert (=> b!849476 m!790237))

(declare-fun m!790239 () Bool)

(assert (=> b!849474 m!790239))

(declare-fun m!790241 () Bool)

(assert (=> mapNonEmpty!25769 m!790241))

(declare-fun m!790243 () Bool)

(assert (=> bm!37783 m!790243))

(declare-fun m!790245 () Bool)

(assert (=> bm!37784 m!790245))

(declare-fun m!790247 () Bool)

(assert (=> b!849470 m!790247))

(declare-fun m!790249 () Bool)

(assert (=> b!849468 m!790249))

(assert (=> b!849468 m!790249))

(declare-fun m!790251 () Bool)

(assert (=> b!849468 m!790251))

(declare-fun m!790253 () Bool)

(assert (=> b!849468 m!790253))

(declare-fun m!790255 () Bool)

(assert (=> b!849464 m!790255))

(declare-fun m!790257 () Bool)

(assert (=> b!849473 m!790257))

(declare-fun m!790259 () Bool)

(assert (=> b!849473 m!790259))

(declare-fun m!790261 () Bool)

(assert (=> b!849473 m!790261))

(declare-fun m!790263 () Bool)

(assert (=> start!73090 m!790263))

(declare-fun m!790265 () Bool)

(assert (=> start!73090 m!790265))

(declare-fun m!790267 () Bool)

(assert (=> b!849467 m!790267))

(assert (=> b!849471 m!790245))

(declare-fun m!790269 () Bool)

(assert (=> b!849471 m!790269))

(declare-fun m!790271 () Bool)

(assert (=> b!849471 m!790271))

(declare-fun m!790273 () Bool)

(assert (=> b!849471 m!790273))

(assert (=> b!849471 m!790245))

(declare-fun m!790275 () Bool)

(assert (=> b!849471 m!790275))

(assert (=> b!849471 m!790269))

(assert (=> b!849471 m!790249))

(assert (=> b!849471 m!790271))

(check-sat (not b!849464) (not b!849474) (not bm!37784) (not mapNonEmpty!25769) tp_is_empty!16113 (not b!849471) (not b!849469) (not b_next!13977) (not b_lambda!11539) (not b!849470) (not b!849473) (not b!849468) (not start!73090) (not bm!37783) b_and!23133 (not b!849467))
(check-sat b_and!23133 (not b_next!13977))
