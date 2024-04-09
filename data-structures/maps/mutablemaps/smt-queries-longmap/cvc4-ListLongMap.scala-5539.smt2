; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73050 () Bool)

(assert start!73050)

(declare-fun b_free!13937 () Bool)

(declare-fun b_next!13937 () Bool)

(assert (=> start!73050 (= b_free!13937 (not b_next!13937))))

(declare-fun tp!49316 () Bool)

(declare-fun b_and!23051 () Bool)

(assert (=> start!73050 (= tp!49316 b_and!23051)))

(declare-fun b!848524 () Bool)

(declare-fun res!576594 () Bool)

(declare-fun e!473455 () Bool)

(assert (=> b!848524 (=> (not res!576594) (not e!473455))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848524 (= res!576594 (validMask!0 mask!1196))))

(declare-fun b!848525 () Bool)

(declare-fun e!473460 () Bool)

(assert (=> b!848525 (= e!473460 true)))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!26477 0))(
  ( (V!26478 (val!8084 Int)) )
))
(declare-datatypes ((tuple2!10586 0))(
  ( (tuple2!10587 (_1!5303 (_ BitVec 64)) (_2!5303 V!26477)) )
))
(declare-datatypes ((List!16492 0))(
  ( (Nil!16489) (Cons!16488 (h!17619 tuple2!10586) (t!22883 List!16492)) )
))
(declare-datatypes ((ListLongMap!9369 0))(
  ( (ListLongMap!9370 (toList!4700 List!16492)) )
))
(declare-fun lt!382024 () ListLongMap!9369)

(declare-fun minValue!654 () V!26477)

(declare-fun zeroValue!654 () V!26477)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((array!48338 0))(
  ( (array!48339 (arr!23196 (Array (_ BitVec 32) (_ BitVec 64))) (size!23637 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48338)

(declare-datatypes ((ValueCell!7597 0))(
  ( (ValueCellFull!7597 (v!10505 V!26477)) (EmptyCell!7597) )
))
(declare-datatypes ((array!48340 0))(
  ( (array!48341 (arr!23197 (Array (_ BitVec 32) ValueCell!7597)) (size!23638 (_ BitVec 32))) )
))
(declare-fun lt!382026 () array!48340)

(declare-fun +!2048 (ListLongMap!9369 tuple2!10586) ListLongMap!9369)

(declare-fun getCurrentListMapNoExtraKeys!2689 (array!48338 array!48340 (_ BitVec 32) (_ BitVec 32) V!26477 V!26477 (_ BitVec 32) Int) ListLongMap!9369)

(declare-fun get!12214 (ValueCell!7597 V!26477) V!26477)

(declare-fun dynLambda!986 (Int (_ BitVec 64)) V!26477)

(assert (=> b!848525 (= lt!382024 (+!2048 (getCurrentListMapNoExtraKeys!2689 _keys!868 lt!382026 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10587 (select (arr!23196 _keys!868) from!1053) (get!12214 (select (arr!23197 lt!382026) from!1053) (dynLambda!986 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!37663 () Bool)

(declare-fun call!37666 () ListLongMap!9369)

(assert (=> bm!37663 (= call!37666 (getCurrentListMapNoExtraKeys!2689 _keys!868 lt!382026 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848526 () Bool)

(declare-fun e!473458 () Bool)

(assert (=> b!848526 (= e!473455 e!473458)))

(declare-fun res!576593 () Bool)

(assert (=> b!848526 (=> (not res!576593) (not e!473458))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848526 (= res!576593 (= from!1053 i!612))))

(assert (=> b!848526 (= lt!382024 (getCurrentListMapNoExtraKeys!2689 _keys!868 lt!382026 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26477)

(declare-fun _values!688 () array!48340)

(assert (=> b!848526 (= lt!382026 (array!48341 (store (arr!23197 _values!688) i!612 (ValueCellFull!7597 v!557)) (size!23638 _values!688)))))

(declare-fun lt!382025 () ListLongMap!9369)

(assert (=> b!848526 (= lt!382025 (getCurrentListMapNoExtraKeys!2689 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848527 () Bool)

(declare-fun res!576591 () Bool)

(assert (=> b!848527 (=> (not res!576591) (not e!473455))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!848527 (= res!576591 (and (= (select (arr!23196 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!848528 () Bool)

(declare-fun e!473457 () Bool)

(declare-fun tp_is_empty!16073 () Bool)

(assert (=> b!848528 (= e!473457 tp_is_empty!16073)))

(declare-fun b!848529 () Bool)

(declare-fun res!576595 () Bool)

(assert (=> b!848529 (=> (not res!576595) (not e!473455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48338 (_ BitVec 32)) Bool)

(assert (=> b!848529 (= res!576595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!848530 () Bool)

(declare-fun res!576592 () Bool)

(assert (=> b!848530 (=> (not res!576592) (not e!473455))))

(declare-datatypes ((List!16493 0))(
  ( (Nil!16490) (Cons!16489 (h!17620 (_ BitVec 64)) (t!22884 List!16493)) )
))
(declare-fun arrayNoDuplicates!0 (array!48338 (_ BitVec 32) List!16493) Bool)

(assert (=> b!848530 (= res!576592 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16490))))

(declare-fun b!848531 () Bool)

(declare-fun res!576596 () Bool)

(assert (=> b!848531 (=> (not res!576596) (not e!473455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848531 (= res!576596 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!25709 () Bool)

(declare-fun mapRes!25709 () Bool)

(declare-fun tp!49315 () Bool)

(assert (=> mapNonEmpty!25709 (= mapRes!25709 (and tp!49315 e!473457))))

(declare-fun mapValue!25709 () ValueCell!7597)

(declare-fun mapKey!25709 () (_ BitVec 32))

(declare-fun mapRest!25709 () (Array (_ BitVec 32) ValueCell!7597))

(assert (=> mapNonEmpty!25709 (= (arr!23197 _values!688) (store mapRest!25709 mapKey!25709 mapValue!25709))))

(declare-fun b!848532 () Bool)

(declare-fun e!473456 () Bool)

(assert (=> b!848532 (= e!473456 tp_is_empty!16073)))

(declare-fun res!576600 () Bool)

(assert (=> start!73050 (=> (not res!576600) (not e!473455))))

(assert (=> start!73050 (= res!576600 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23637 _keys!868))))))

(assert (=> start!73050 e!473455))

(assert (=> start!73050 tp_is_empty!16073))

(assert (=> start!73050 true))

(assert (=> start!73050 tp!49316))

(declare-fun array_inv!18398 (array!48338) Bool)

(assert (=> start!73050 (array_inv!18398 _keys!868)))

(declare-fun e!473454 () Bool)

(declare-fun array_inv!18399 (array!48340) Bool)

(assert (=> start!73050 (and (array_inv!18399 _values!688) e!473454)))

(declare-fun b!848533 () Bool)

(declare-fun e!473453 () Bool)

(declare-fun call!37667 () ListLongMap!9369)

(assert (=> b!848533 (= e!473453 (= call!37666 call!37667))))

(declare-fun mapIsEmpty!25709 () Bool)

(assert (=> mapIsEmpty!25709 mapRes!25709))

(declare-fun b!848534 () Bool)

(declare-fun res!576597 () Bool)

(assert (=> b!848534 (=> (not res!576597) (not e!473455))))

(assert (=> b!848534 (= res!576597 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23637 _keys!868))))))

(declare-fun b!848535 () Bool)

(assert (=> b!848535 (= e!473454 (and e!473456 mapRes!25709))))

(declare-fun condMapEmpty!25709 () Bool)

(declare-fun mapDefault!25709 () ValueCell!7597)

