; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73100 () Bool)

(assert start!73100)

(declare-fun b_free!13987 () Bool)

(declare-fun b_next!13987 () Bool)

(assert (=> start!73100 (= b_free!13987 (not b_next!13987))))

(declare-fun tp!49465 () Bool)

(declare-fun b_and!23151 () Bool)

(assert (=> start!73100 (= tp!49465 b_and!23151)))

(declare-fun res!577341 () Bool)

(declare-fun e!474055 () Bool)

(assert (=> start!73100 (=> (not res!577341) (not e!474055))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48438 0))(
  ( (array!48439 (arr!23246 (Array (_ BitVec 32) (_ BitVec 64))) (size!23687 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48438)

(assert (=> start!73100 (= res!577341 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23687 _keys!868))))))

(assert (=> start!73100 e!474055))

(declare-fun tp_is_empty!16123 () Bool)

(assert (=> start!73100 tp_is_empty!16123))

(assert (=> start!73100 true))

(assert (=> start!73100 tp!49465))

(declare-fun array_inv!18434 (array!48438) Bool)

(assert (=> start!73100 (array_inv!18434 _keys!868)))

(declare-datatypes ((V!26545 0))(
  ( (V!26546 (val!8109 Int)) )
))
(declare-datatypes ((ValueCell!7622 0))(
  ( (ValueCellFull!7622 (v!10530 V!26545)) (EmptyCell!7622) )
))
(declare-datatypes ((array!48440 0))(
  ( (array!48441 (arr!23247 (Array (_ BitVec 32) ValueCell!7622)) (size!23688 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48440)

(declare-fun e!474054 () Bool)

(declare-fun array_inv!18435 (array!48440) Bool)

(assert (=> start!73100 (and (array_inv!18435 _values!688) e!474054)))

(declare-fun b!849699 () Bool)

(declare-fun res!577343 () Bool)

(assert (=> b!849699 (=> (not res!577343) (not e!474055))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!849699 (= res!577343 (and (= (size!23688 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23687 _keys!868) (size!23688 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25784 () Bool)

(declare-fun mapRes!25784 () Bool)

(assert (=> mapIsEmpty!25784 mapRes!25784))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!382391 () array!48440)

(declare-fun bm!37813 () Bool)

(declare-fun minValue!654 () V!26545)

(declare-fun zeroValue!654 () V!26545)

(declare-datatypes ((tuple2!10634 0))(
  ( (tuple2!10635 (_1!5327 (_ BitVec 64)) (_2!5327 V!26545)) )
))
(declare-datatypes ((List!16533 0))(
  ( (Nil!16530) (Cons!16529 (h!17660 tuple2!10634) (t!22974 List!16533)) )
))
(declare-datatypes ((ListLongMap!9417 0))(
  ( (ListLongMap!9418 (toList!4724 List!16533)) )
))
(declare-fun call!37817 () ListLongMap!9417)

(declare-fun getCurrentListMapNoExtraKeys!2712 (array!48438 array!48440 (_ BitVec 32) (_ BitVec 32) V!26545 V!26545 (_ BitVec 32) Int) ListLongMap!9417)

(assert (=> bm!37813 (= call!37817 (getCurrentListMapNoExtraKeys!2712 _keys!868 lt!382391 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849700 () Bool)

(declare-fun e!474056 () Bool)

(assert (=> b!849700 (= e!474056 tp_is_empty!16123)))

(declare-fun b!849701 () Bool)

(declare-fun e!474058 () Bool)

(declare-fun e!474060 () Bool)

(assert (=> b!849701 (= e!474058 (not e!474060))))

(declare-fun res!577348 () Bool)

(assert (=> b!849701 (=> res!577348 e!474060)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849701 (= res!577348 (not (validKeyInArray!0 (select (arr!23246 _keys!868) from!1053))))))

(declare-fun e!474059 () Bool)

(assert (=> b!849701 e!474059))

(declare-fun c!91569 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849701 (= c!91569 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28988 0))(
  ( (Unit!28989) )
))
(declare-fun lt!382390 () Unit!28988)

(declare-fun v!557 () V!26545)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!341 (array!48438 array!48440 (_ BitVec 32) (_ BitVec 32) V!26545 V!26545 (_ BitVec 32) (_ BitVec 64) V!26545 (_ BitVec 32) Int) Unit!28988)

(assert (=> b!849701 (= lt!382390 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!341 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849702 () Bool)

(assert (=> b!849702 (= e!474060 true)))

(declare-fun lt!382397 () ListLongMap!9417)

(declare-fun lt!382393 () tuple2!10634)

(declare-fun lt!382389 () V!26545)

(declare-fun +!2069 (ListLongMap!9417 tuple2!10634) ListLongMap!9417)

(assert (=> b!849702 (= (+!2069 lt!382397 lt!382393) (+!2069 (+!2069 lt!382397 (tuple2!10635 k!854 lt!382389)) lt!382393))))

(declare-fun lt!382396 () V!26545)

(assert (=> b!849702 (= lt!382393 (tuple2!10635 k!854 lt!382396))))

(declare-fun lt!382394 () Unit!28988)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!257 (ListLongMap!9417 (_ BitVec 64) V!26545 V!26545) Unit!28988)

(assert (=> b!849702 (= lt!382394 (addSameAsAddTwiceSameKeyDiffValues!257 lt!382397 k!854 lt!382389 lt!382396))))

(declare-fun lt!382392 () V!26545)

(declare-fun get!12251 (ValueCell!7622 V!26545) V!26545)

(assert (=> b!849702 (= lt!382389 (get!12251 (select (arr!23247 _values!688) from!1053) lt!382392))))

(declare-fun lt!382398 () ListLongMap!9417)

(assert (=> b!849702 (= lt!382398 (+!2069 lt!382397 (tuple2!10635 (select (arr!23246 _keys!868) from!1053) lt!382396)))))

(assert (=> b!849702 (= lt!382396 (get!12251 (select (store (arr!23247 _values!688) i!612 (ValueCellFull!7622 v!557)) from!1053) lt!382392))))

(declare-fun dynLambda!1005 (Int (_ BitVec 64)) V!26545)

(assert (=> b!849702 (= lt!382392 (dynLambda!1005 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!849702 (= lt!382397 (getCurrentListMapNoExtraKeys!2712 _keys!868 lt!382391 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849703 () Bool)

(declare-fun res!577345 () Bool)

(assert (=> b!849703 (=> (not res!577345) (not e!474055))))

(assert (=> b!849703 (= res!577345 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23687 _keys!868))))))

(declare-fun b!849704 () Bool)

(declare-fun res!577342 () Bool)

(assert (=> b!849704 (=> (not res!577342) (not e!474055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849704 (= res!577342 (validMask!0 mask!1196))))

(declare-fun b!849705 () Bool)

(declare-fun res!577349 () Bool)

(assert (=> b!849705 (=> (not res!577349) (not e!474055))))

(assert (=> b!849705 (= res!577349 (and (= (select (arr!23246 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849706 () Bool)

(declare-fun e!474053 () Bool)

(assert (=> b!849706 (= e!474053 tp_is_empty!16123)))

(declare-fun b!849707 () Bool)

(declare-fun res!577344 () Bool)

(assert (=> b!849707 (=> (not res!577344) (not e!474055))))

(declare-datatypes ((List!16534 0))(
  ( (Nil!16531) (Cons!16530 (h!17661 (_ BitVec 64)) (t!22975 List!16534)) )
))
(declare-fun arrayNoDuplicates!0 (array!48438 (_ BitVec 32) List!16534) Bool)

(assert (=> b!849707 (= res!577344 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16531))))

(declare-fun b!849708 () Bool)

(declare-fun call!37816 () ListLongMap!9417)

(assert (=> b!849708 (= e!474059 (= call!37817 (+!2069 call!37816 (tuple2!10635 k!854 v!557))))))

(declare-fun b!849709 () Bool)

(declare-fun res!577350 () Bool)

(assert (=> b!849709 (=> (not res!577350) (not e!474055))))

(assert (=> b!849709 (= res!577350 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!25784 () Bool)

(declare-fun tp!49466 () Bool)

(assert (=> mapNonEmpty!25784 (= mapRes!25784 (and tp!49466 e!474053))))

(declare-fun mapRest!25784 () (Array (_ BitVec 32) ValueCell!7622))

(declare-fun mapValue!25784 () ValueCell!7622)

(declare-fun mapKey!25784 () (_ BitVec 32))

(assert (=> mapNonEmpty!25784 (= (arr!23247 _values!688) (store mapRest!25784 mapKey!25784 mapValue!25784))))

(declare-fun b!849710 () Bool)

(assert (=> b!849710 (= e!474055 e!474058)))

(declare-fun res!577346 () Bool)

(assert (=> b!849710 (=> (not res!577346) (not e!474058))))

(assert (=> b!849710 (= res!577346 (= from!1053 i!612))))

(assert (=> b!849710 (= lt!382398 (getCurrentListMapNoExtraKeys!2712 _keys!868 lt!382391 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849710 (= lt!382391 (array!48441 (store (arr!23247 _values!688) i!612 (ValueCellFull!7622 v!557)) (size!23688 _values!688)))))

(declare-fun lt!382395 () ListLongMap!9417)

(assert (=> b!849710 (= lt!382395 (getCurrentListMapNoExtraKeys!2712 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849711 () Bool)

(declare-fun res!577347 () Bool)

(assert (=> b!849711 (=> (not res!577347) (not e!474055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48438 (_ BitVec 32)) Bool)

(assert (=> b!849711 (= res!577347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849712 () Bool)

(assert (=> b!849712 (= e!474059 (= call!37817 call!37816))))

(declare-fun bm!37814 () Bool)

(assert (=> bm!37814 (= call!37816 (getCurrentListMapNoExtraKeys!2712 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849713 () Bool)

(assert (=> b!849713 (= e!474054 (and e!474056 mapRes!25784))))

(declare-fun condMapEmpty!25784 () Bool)

(declare-fun mapDefault!25784 () ValueCell!7622)

