; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72936 () Bool)

(assert start!72936)

(declare-fun b_free!13823 () Bool)

(declare-fun b_next!13823 () Bool)

(assert (=> start!72936 (= b_free!13823 (not b_next!13823))))

(declare-fun tp!48973 () Bool)

(declare-fun b_and!22927 () Bool)

(assert (=> start!72936 (= tp!48973 b_and!22927)))

(declare-fun b!846313 () Bool)

(declare-fun res!575105 () Bool)

(declare-fun e!472377 () Bool)

(assert (=> b!846313 (=> (not res!575105) (not e!472377))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48116 0))(
  ( (array!48117 (arr!23085 (Array (_ BitVec 32) (_ BitVec 64))) (size!23526 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48116)

(declare-datatypes ((V!26325 0))(
  ( (V!26326 (val!8027 Int)) )
))
(declare-datatypes ((ValueCell!7540 0))(
  ( (ValueCellFull!7540 (v!10448 V!26325)) (EmptyCell!7540) )
))
(declare-datatypes ((array!48118 0))(
  ( (array!48119 (arr!23086 (Array (_ BitVec 32) ValueCell!7540)) (size!23527 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48118)

(assert (=> b!846313 (= res!575105 (and (= (size!23527 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23526 _keys!868) (size!23527 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846314 () Bool)

(declare-fun e!472380 () Bool)

(declare-fun tp_is_empty!15959 () Bool)

(assert (=> b!846314 (= e!472380 tp_is_empty!15959)))

(declare-fun b!846315 () Bool)

(declare-fun res!575100 () Bool)

(assert (=> b!846315 (=> (not res!575100) (not e!472377))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846315 (= res!575100 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23526 _keys!868))))))

(declare-fun b!846316 () Bool)

(declare-fun e!472376 () Bool)

(assert (=> b!846316 (= e!472376 tp_is_empty!15959)))

(declare-fun b!846317 () Bool)

(declare-fun res!575106 () Bool)

(assert (=> b!846317 (=> (not res!575106) (not e!472377))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846317 (= res!575106 (validKeyInArray!0 k!854))))

(declare-fun b!846318 () Bool)

(declare-fun res!575101 () Bool)

(assert (=> b!846318 (=> (not res!575101) (not e!472377))))

(declare-datatypes ((List!16415 0))(
  ( (Nil!16412) (Cons!16411 (h!17542 (_ BitVec 64)) (t!22794 List!16415)) )
))
(declare-fun arrayNoDuplicates!0 (array!48116 (_ BitVec 32) List!16415) Bool)

(assert (=> b!846318 (= res!575101 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16412))))

(declare-fun b!846319 () Bool)

(declare-fun res!575103 () Bool)

(assert (=> b!846319 (=> (not res!575103) (not e!472377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846319 (= res!575103 (validMask!0 mask!1196))))

(declare-fun b!846320 () Bool)

(declare-fun res!575099 () Bool)

(assert (=> b!846320 (=> (not res!575099) (not e!472377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48116 (_ BitVec 32)) Bool)

(assert (=> b!846320 (= res!575099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846321 () Bool)

(assert (=> b!846321 (= e!472377 false)))

(declare-fun v!557 () V!26325)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10504 0))(
  ( (tuple2!10505 (_1!5262 (_ BitVec 64)) (_2!5262 V!26325)) )
))
(declare-datatypes ((List!16416 0))(
  ( (Nil!16413) (Cons!16412 (h!17543 tuple2!10504) (t!22795 List!16416)) )
))
(declare-datatypes ((ListLongMap!9287 0))(
  ( (ListLongMap!9288 (toList!4659 List!16416)) )
))
(declare-fun lt!381485 () ListLongMap!9287)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26325)

(declare-fun zeroValue!654 () V!26325)

(declare-fun getCurrentListMapNoExtraKeys!2648 (array!48116 array!48118 (_ BitVec 32) (_ BitVec 32) V!26325 V!26325 (_ BitVec 32) Int) ListLongMap!9287)

(assert (=> b!846321 (= lt!381485 (getCurrentListMapNoExtraKeys!2648 _keys!868 (array!48119 (store (arr!23086 _values!688) i!612 (ValueCellFull!7540 v!557)) (size!23527 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381486 () ListLongMap!9287)

(assert (=> b!846321 (= lt!381486 (getCurrentListMapNoExtraKeys!2648 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846322 () Bool)

(declare-fun e!472379 () Bool)

(declare-fun mapRes!25538 () Bool)

(assert (=> b!846322 (= e!472379 (and e!472380 mapRes!25538))))

(declare-fun condMapEmpty!25538 () Bool)

(declare-fun mapDefault!25538 () ValueCell!7540)

