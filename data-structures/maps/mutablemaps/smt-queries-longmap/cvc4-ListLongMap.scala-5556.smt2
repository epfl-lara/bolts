; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73152 () Bool)

(assert start!73152)

(declare-fun b_free!14039 () Bool)

(declare-fun b_next!14039 () Bool)

(assert (=> start!73152 (= b_free!14039 (not b_next!14039))))

(declare-fun tp!49622 () Bool)

(declare-fun b_and!23255 () Bool)

(assert (=> start!73152 (= tp!49622 b_and!23255)))

(declare-fun b!850921 () Bool)

(declare-fun res!578130 () Bool)

(declare-fun e!474681 () Bool)

(assert (=> b!850921 (=> (not res!578130) (not e!474681))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48538 0))(
  ( (array!48539 (arr!23296 (Array (_ BitVec 32) (_ BitVec 64))) (size!23737 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48538)

(declare-datatypes ((V!26613 0))(
  ( (V!26614 (val!8135 Int)) )
))
(declare-datatypes ((ValueCell!7648 0))(
  ( (ValueCellFull!7648 (v!10556 V!26613)) (EmptyCell!7648) )
))
(declare-datatypes ((array!48540 0))(
  ( (array!48541 (arr!23297 (Array (_ BitVec 32) ValueCell!7648)) (size!23738 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48540)

(assert (=> b!850921 (= res!578130 (and (= (size!23738 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23737 _keys!868) (size!23738 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25862 () Bool)

(declare-fun mapRes!25862 () Bool)

(assert (=> mapIsEmpty!25862 mapRes!25862))

(declare-fun b!850922 () Bool)

(declare-fun e!474684 () Bool)

(assert (=> b!850922 (= e!474684 true)))

(declare-datatypes ((tuple2!10680 0))(
  ( (tuple2!10681 (_1!5350 (_ BitVec 64)) (_2!5350 V!26613)) )
))
(declare-fun lt!383170 () tuple2!10680)

(declare-datatypes ((List!16572 0))(
  ( (Nil!16569) (Cons!16568 (h!17699 tuple2!10680) (t!23065 List!16572)) )
))
(declare-datatypes ((ListLongMap!9463 0))(
  ( (ListLongMap!9464 (toList!4747 List!16572)) )
))
(declare-fun lt!383175 () ListLongMap!9463)

(declare-fun lt!383172 () V!26613)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2090 (ListLongMap!9463 tuple2!10680) ListLongMap!9463)

(assert (=> b!850922 (= (+!2090 lt!383175 lt!383170) (+!2090 (+!2090 lt!383175 (tuple2!10681 k!854 lt!383172)) lt!383170))))

(declare-fun lt!383171 () V!26613)

(assert (=> b!850922 (= lt!383170 (tuple2!10681 k!854 lt!383171))))

(declare-datatypes ((Unit!29026 0))(
  ( (Unit!29027) )
))
(declare-fun lt!383169 () Unit!29026)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!275 (ListLongMap!9463 (_ BitVec 64) V!26613 V!26613) Unit!29026)

(assert (=> b!850922 (= lt!383169 (addSameAsAddTwiceSameKeyDiffValues!275 lt!383175 k!854 lt!383172 lt!383171))))

(declare-fun lt!383178 () V!26613)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12285 (ValueCell!7648 V!26613) V!26613)

(assert (=> b!850922 (= lt!383172 (get!12285 (select (arr!23297 _values!688) from!1053) lt!383178))))

(declare-fun lt!383173 () ListLongMap!9463)

(assert (=> b!850922 (= lt!383173 (+!2090 lt!383175 (tuple2!10681 (select (arr!23296 _keys!868) from!1053) lt!383171)))))

(declare-fun v!557 () V!26613)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850922 (= lt!383171 (get!12285 (select (store (arr!23297 _values!688) i!612 (ValueCellFull!7648 v!557)) from!1053) lt!383178))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1023 (Int (_ BitVec 64)) V!26613)

(assert (=> b!850922 (= lt!383178 (dynLambda!1023 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383176 () array!48540)

(declare-fun minValue!654 () V!26613)

(declare-fun zeroValue!654 () V!26613)

(declare-fun getCurrentListMapNoExtraKeys!2733 (array!48538 array!48540 (_ BitVec 32) (_ BitVec 32) V!26613 V!26613 (_ BitVec 32) Int) ListLongMap!9463)

(assert (=> b!850922 (= lt!383175 (getCurrentListMapNoExtraKeys!2733 _keys!868 lt!383176 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850923 () Bool)

(declare-fun res!578124 () Bool)

(assert (=> b!850923 (=> (not res!578124) (not e!474681))))

(assert (=> b!850923 (= res!578124 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23737 _keys!868))))))

(declare-fun b!850924 () Bool)

(declare-fun res!578122 () Bool)

(assert (=> b!850924 (=> (not res!578122) (not e!474681))))

(assert (=> b!850924 (= res!578122 (and (= (select (arr!23296 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850925 () Bool)

(declare-fun res!578126 () Bool)

(assert (=> b!850925 (=> (not res!578126) (not e!474681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48538 (_ BitVec 32)) Bool)

(assert (=> b!850925 (= res!578126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850926 () Bool)

(declare-fun e!474680 () Bool)

(declare-fun tp_is_empty!16175 () Bool)

(assert (=> b!850926 (= e!474680 tp_is_empty!16175)))

(declare-fun b!850927 () Bool)

(declare-fun e!474682 () Bool)

(assert (=> b!850927 (= e!474682 (and e!474680 mapRes!25862))))

(declare-fun condMapEmpty!25862 () Bool)

(declare-fun mapDefault!25862 () ValueCell!7648)

