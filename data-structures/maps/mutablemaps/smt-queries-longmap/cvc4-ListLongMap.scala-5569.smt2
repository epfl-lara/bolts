; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73230 () Bool)

(assert start!73230)

(declare-fun b_free!14117 () Bool)

(declare-fun b_next!14117 () Bool)

(assert (=> start!73230 (= b_free!14117 (not b_next!14117))))

(declare-fun tp!49856 () Bool)

(declare-fun b_and!23411 () Bool)

(assert (=> start!73230 (= tp!49856 b_and!23411)))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!38203 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48690 0))(
  ( (array!48691 (arr!23372 (Array (_ BitVec 32) (_ BitVec 64))) (size!23813 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48690)

(declare-datatypes ((V!26717 0))(
  ( (V!26718 (val!8174 Int)) )
))
(declare-fun minValue!654 () V!26717)

(declare-fun zeroValue!654 () V!26717)

(declare-datatypes ((tuple2!10752 0))(
  ( (tuple2!10753 (_1!5386 (_ BitVec 64)) (_2!5386 V!26717)) )
))
(declare-datatypes ((List!16632 0))(
  ( (Nil!16629) (Cons!16628 (h!17759 tuple2!10752) (t!23203 List!16632)) )
))
(declare-datatypes ((ListLongMap!9535 0))(
  ( (ListLongMap!9536 (toList!4783 List!16632)) )
))
(declare-fun call!38206 () ListLongMap!9535)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7687 0))(
  ( (ValueCellFull!7687 (v!10595 V!26717)) (EmptyCell!7687) )
))
(declare-datatypes ((array!48692 0))(
  ( (array!48693 (arr!23373 (Array (_ BitVec 32) ValueCell!7687)) (size!23814 (_ BitVec 32))) )
))
(declare-fun lt!384343 () array!48692)

(declare-fun getCurrentListMapNoExtraKeys!2766 (array!48690 array!48692 (_ BitVec 32) (_ BitVec 32) V!26717 V!26717 (_ BitVec 32) Int) ListLongMap!9535)

(assert (=> bm!38203 (= call!38206 (getCurrentListMapNoExtraKeys!2766 _keys!868 lt!384343 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852755 () Bool)

(declare-fun e!475617 () Bool)

(assert (=> b!852755 (= e!475617 true)))

(declare-fun lt!384346 () V!26717)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!384344 () ListLongMap!9535)

(declare-fun lt!384342 () tuple2!10752)

(declare-fun +!2123 (ListLongMap!9535 tuple2!10752) ListLongMap!9535)

(assert (=> b!852755 (= (+!2123 lt!384344 lt!384342) (+!2123 (+!2123 lt!384344 (tuple2!10753 k!854 lt!384346)) lt!384342))))

(declare-fun lt!384340 () V!26717)

(assert (=> b!852755 (= lt!384342 (tuple2!10753 k!854 lt!384340))))

(declare-datatypes ((Unit!29092 0))(
  ( (Unit!29093) )
))
(declare-fun lt!384347 () Unit!29092)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!303 (ListLongMap!9535 (_ BitVec 64) V!26717 V!26717) Unit!29092)

(assert (=> b!852755 (= lt!384347 (addSameAsAddTwiceSameKeyDiffValues!303 lt!384344 k!854 lt!384346 lt!384340))))

(declare-fun lt!384341 () V!26717)

(declare-fun _values!688 () array!48692)

(declare-fun get!12339 (ValueCell!7687 V!26717) V!26717)

(assert (=> b!852755 (= lt!384346 (get!12339 (select (arr!23373 _values!688) from!1053) lt!384341))))

(declare-fun lt!384348 () ListLongMap!9535)

(assert (=> b!852755 (= lt!384348 (+!2123 lt!384344 (tuple2!10753 (select (arr!23372 _keys!868) from!1053) lt!384340)))))

(declare-fun v!557 () V!26717)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852755 (= lt!384340 (get!12339 (select (store (arr!23373 _values!688) i!612 (ValueCellFull!7687 v!557)) from!1053) lt!384341))))

(declare-fun dynLambda!1051 (Int (_ BitVec 64)) V!26717)

(assert (=> b!852755 (= lt!384341 (dynLambda!1051 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852755 (= lt!384344 (getCurrentListMapNoExtraKeys!2766 _keys!868 lt!384343 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852756 () Bool)

(declare-fun res!579296 () Bool)

(declare-fun e!475616 () Bool)

(assert (=> b!852756 (=> (not res!579296) (not e!475616))))

(assert (=> b!852756 (= res!579296 (and (= (select (arr!23372 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!852757 () Bool)

(declare-fun e!475613 () Bool)

(declare-fun e!475615 () Bool)

(declare-fun mapRes!25979 () Bool)

(assert (=> b!852757 (= e!475613 (and e!475615 mapRes!25979))))

(declare-fun condMapEmpty!25979 () Bool)

(declare-fun mapDefault!25979 () ValueCell!7687)

