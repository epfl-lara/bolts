; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73020 () Bool)

(assert start!73020)

(declare-fun b_free!13907 () Bool)

(declare-fun b_next!13907 () Bool)

(assert (=> start!73020 (= b_free!13907 (not b_next!13907))))

(declare-fun tp!49225 () Bool)

(declare-fun b_and!23011 () Bool)

(assert (=> start!73020 (= tp!49225 b_and!23011)))

(declare-fun b!847859 () Bool)

(declare-fun e!473118 () Bool)

(declare-datatypes ((V!26437 0))(
  ( (V!26438 (val!8069 Int)) )
))
(declare-datatypes ((tuple2!10560 0))(
  ( (tuple2!10561 (_1!5290 (_ BitVec 64)) (_2!5290 V!26437)) )
))
(declare-datatypes ((List!16469 0))(
  ( (Nil!16466) (Cons!16465 (h!17596 tuple2!10560) (t!22848 List!16469)) )
))
(declare-datatypes ((ListLongMap!9343 0))(
  ( (ListLongMap!9344 (toList!4687 List!16469)) )
))
(declare-fun call!37577 () ListLongMap!9343)

(declare-fun call!37576 () ListLongMap!9343)

(assert (=> b!847859 (= e!473118 (= call!37577 call!37576))))

(declare-fun b!847860 () Bool)

(declare-fun res!576165 () Bool)

(declare-fun e!473117 () Bool)

(assert (=> b!847860 (=> (not res!576165) (not e!473117))))

(declare-datatypes ((array!48278 0))(
  ( (array!48279 (arr!23166 (Array (_ BitVec 32) (_ BitVec 64))) (size!23607 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48278)

(declare-datatypes ((List!16470 0))(
  ( (Nil!16467) (Cons!16466 (h!17597 (_ BitVec 64)) (t!22849 List!16470)) )
))
(declare-fun arrayNoDuplicates!0 (array!48278 (_ BitVec 32) List!16470) Bool)

(assert (=> b!847860 (= res!576165 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16467))))

(declare-fun b!847861 () Bool)

(declare-fun res!576161 () Bool)

(assert (=> b!847861 (=> (not res!576161) (not e!473117))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7582 0))(
  ( (ValueCellFull!7582 (v!10490 V!26437)) (EmptyCell!7582) )
))
(declare-datatypes ((array!48280 0))(
  ( (array!48281 (arr!23167 (Array (_ BitVec 32) ValueCell!7582)) (size!23608 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48280)

(assert (=> b!847861 (= res!576161 (and (= (size!23608 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23607 _keys!868) (size!23608 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25664 () Bool)

(declare-fun mapRes!25664 () Bool)

(assert (=> mapIsEmpty!25664 mapRes!25664))

(declare-fun b!847862 () Bool)

(declare-fun res!576164 () Bool)

(assert (=> b!847862 (=> (not res!576164) (not e!473117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847862 (= res!576164 (validMask!0 mask!1196))))

(declare-fun b!847863 () Bool)

(declare-fun e!473114 () Bool)

(declare-fun tp_is_empty!16043 () Bool)

(assert (=> b!847863 (= e!473114 tp_is_empty!16043)))

(declare-fun b!847864 () Bool)

(declare-fun e!473113 () Bool)

(assert (=> b!847864 (= e!473117 e!473113)))

(declare-fun res!576160 () Bool)

(assert (=> b!847864 (=> (not res!576160) (not e!473113))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847864 (= res!576160 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26437)

(declare-fun zeroValue!654 () V!26437)

(declare-fun lt!381846 () ListLongMap!9343)

(declare-fun lt!381845 () array!48280)

(declare-fun getCurrentListMapNoExtraKeys!2676 (array!48278 array!48280 (_ BitVec 32) (_ BitVec 32) V!26437 V!26437 (_ BitVec 32) Int) ListLongMap!9343)

(assert (=> b!847864 (= lt!381846 (getCurrentListMapNoExtraKeys!2676 _keys!868 lt!381845 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26437)

(assert (=> b!847864 (= lt!381845 (array!48281 (store (arr!23167 _values!688) i!612 (ValueCellFull!7582 v!557)) (size!23608 _values!688)))))

(declare-fun lt!381843 () ListLongMap!9343)

(assert (=> b!847864 (= lt!381843 (getCurrentListMapNoExtraKeys!2676 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847865 () Bool)

(assert (=> b!847865 (= e!473113 (not true))))

(assert (=> b!847865 e!473118))

(declare-fun c!91449 () Bool)

(assert (=> b!847865 (= c!91449 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28940 0))(
  ( (Unit!28941) )
))
(declare-fun lt!381844 () Unit!28940)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!319 (array!48278 array!48280 (_ BitVec 32) (_ BitVec 32) V!26437 V!26437 (_ BitVec 32) (_ BitVec 64) V!26437 (_ BitVec 32) Int) Unit!28940)

(assert (=> b!847865 (= lt!381844 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!319 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847866 () Bool)

(declare-fun e!473115 () Bool)

(declare-fun e!473116 () Bool)

(assert (=> b!847866 (= e!473115 (and e!473116 mapRes!25664))))

(declare-fun condMapEmpty!25664 () Bool)

(declare-fun mapDefault!25664 () ValueCell!7582)

