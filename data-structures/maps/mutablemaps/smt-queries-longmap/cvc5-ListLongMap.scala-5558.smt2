; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73160 () Bool)

(assert start!73160)

(declare-fun b_free!14047 () Bool)

(declare-fun b_next!14047 () Bool)

(assert (=> start!73160 (= b_free!14047 (not b_next!14047))))

(declare-fun tp!49646 () Bool)

(declare-fun b_and!23271 () Bool)

(assert (=> start!73160 (= tp!49646 b_and!23271)))

(declare-fun b!851109 () Bool)

(declare-fun e!474777 () Bool)

(declare-datatypes ((V!26625 0))(
  ( (V!26626 (val!8139 Int)) )
))
(declare-datatypes ((tuple2!10688 0))(
  ( (tuple2!10689 (_1!5354 (_ BitVec 64)) (_2!5354 V!26625)) )
))
(declare-datatypes ((List!16578 0))(
  ( (Nil!16575) (Cons!16574 (h!17705 tuple2!10688) (t!23079 List!16578)) )
))
(declare-datatypes ((ListLongMap!9471 0))(
  ( (ListLongMap!9472 (toList!4751 List!16578)) )
))
(declare-fun call!37996 () ListLongMap!9471)

(declare-fun call!37997 () ListLongMap!9471)

(assert (=> b!851109 (= e!474777 (= call!37996 call!37997))))

(declare-fun b!851110 () Bool)

(declare-fun e!474773 () Bool)

(declare-fun e!474775 () Bool)

(assert (=> b!851110 (= e!474773 (not e!474775))))

(declare-fun res!578246 () Bool)

(assert (=> b!851110 (=> res!578246 e!474775)))

(declare-datatypes ((array!48554 0))(
  ( (array!48555 (arr!23304 (Array (_ BitVec 32) (_ BitVec 64))) (size!23745 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48554)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851110 (= res!578246 (not (validKeyInArray!0 (select (arr!23304 _keys!868) from!1053))))))

(assert (=> b!851110 e!474777))

(declare-fun c!91659 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851110 (= c!91659 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26625)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!29032 0))(
  ( (Unit!29033) )
))
(declare-fun lt!383298 () Unit!29032)

(declare-datatypes ((ValueCell!7652 0))(
  ( (ValueCellFull!7652 (v!10560 V!26625)) (EmptyCell!7652) )
))
(declare-datatypes ((array!48556 0))(
  ( (array!48557 (arr!23305 (Array (_ BitVec 32) ValueCell!7652)) (size!23746 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48556)

(declare-fun minValue!654 () V!26625)

(declare-fun zeroValue!654 () V!26625)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!361 (array!48554 array!48556 (_ BitVec 32) (_ BitVec 32) V!26625 V!26625 (_ BitVec 32) (_ BitVec 64) V!26625 (_ BitVec 32) Int) Unit!29032)

(assert (=> b!851110 (= lt!383298 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!361 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25874 () Bool)

(declare-fun mapRes!25874 () Bool)

(assert (=> mapIsEmpty!25874 mapRes!25874))

(declare-fun bm!37994 () Bool)

(declare-fun lt!383292 () array!48556)

(declare-fun getCurrentListMapNoExtraKeys!2736 (array!48554 array!48556 (_ BitVec 32) (_ BitVec 32) V!26625 V!26625 (_ BitVec 32) Int) ListLongMap!9471)

(assert (=> bm!37994 (= call!37996 (getCurrentListMapNoExtraKeys!2736 _keys!868 lt!383292 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851111 () Bool)

(declare-fun res!578242 () Bool)

(declare-fun e!474776 () Bool)

(assert (=> b!851111 (=> (not res!578242) (not e!474776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851111 (= res!578242 (validMask!0 mask!1196))))

(declare-fun b!851112 () Bool)

(declare-fun res!578247 () Bool)

(assert (=> b!851112 (=> (not res!578247) (not e!474776))))

(assert (=> b!851112 (= res!578247 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23745 _keys!868))))))

(declare-fun b!851113 () Bool)

(declare-fun +!2094 (ListLongMap!9471 tuple2!10688) ListLongMap!9471)

(assert (=> b!851113 (= e!474777 (= call!37996 (+!2094 call!37997 (tuple2!10689 k!854 v!557))))))

(declare-fun b!851114 () Bool)

(assert (=> b!851114 (= e!474775 true)))

(declare-fun lt!383290 () ListLongMap!9471)

(declare-fun lt!383293 () tuple2!10688)

(declare-fun lt!383289 () V!26625)

(assert (=> b!851114 (= (+!2094 lt!383290 lt!383293) (+!2094 (+!2094 lt!383290 (tuple2!10689 k!854 lt!383289)) lt!383293))))

(declare-fun lt!383291 () V!26625)

(assert (=> b!851114 (= lt!383293 (tuple2!10689 k!854 lt!383291))))

(declare-fun lt!383294 () Unit!29032)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!278 (ListLongMap!9471 (_ BitVec 64) V!26625 V!26625) Unit!29032)

(assert (=> b!851114 (= lt!383294 (addSameAsAddTwiceSameKeyDiffValues!278 lt!383290 k!854 lt!383289 lt!383291))))

(declare-fun lt!383295 () V!26625)

(declare-fun get!12292 (ValueCell!7652 V!26625) V!26625)

(assert (=> b!851114 (= lt!383289 (get!12292 (select (arr!23305 _values!688) from!1053) lt!383295))))

(declare-fun lt!383296 () ListLongMap!9471)

(assert (=> b!851114 (= lt!383296 (+!2094 lt!383290 (tuple2!10689 (select (arr!23304 _keys!868) from!1053) lt!383291)))))

(assert (=> b!851114 (= lt!383291 (get!12292 (select (store (arr!23305 _values!688) i!612 (ValueCellFull!7652 v!557)) from!1053) lt!383295))))

(declare-fun dynLambda!1026 (Int (_ BitVec 64)) V!26625)

(assert (=> b!851114 (= lt!383295 (dynLambda!1026 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851114 (= lt!383290 (getCurrentListMapNoExtraKeys!2736 _keys!868 lt!383292 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851115 () Bool)

(declare-fun res!578248 () Bool)

(assert (=> b!851115 (=> (not res!578248) (not e!474776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48554 (_ BitVec 32)) Bool)

(assert (=> b!851115 (= res!578248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851116 () Bool)

(declare-fun e!474778 () Bool)

(declare-fun e!474780 () Bool)

(assert (=> b!851116 (= e!474778 (and e!474780 mapRes!25874))))

(declare-fun condMapEmpty!25874 () Bool)

(declare-fun mapDefault!25874 () ValueCell!7652)

