; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72954 () Bool)

(assert start!72954)

(declare-fun b_free!13841 () Bool)

(declare-fun b_next!13841 () Bool)

(assert (=> start!72954 (= b_free!13841 (not b_next!13841))))

(declare-fun tp!49028 () Bool)

(declare-fun b_and!22945 () Bool)

(assert (=> start!72954 (= tp!49028 b_and!22945)))

(declare-fun b!846610 () Bool)

(declare-fun e!472513 () Bool)

(declare-fun tp_is_empty!15977 () Bool)

(assert (=> b!846610 (= e!472513 tp_is_empty!15977)))

(declare-fun b!846611 () Bool)

(declare-fun res!575321 () Bool)

(declare-fun e!472511 () Bool)

(assert (=> b!846611 (=> (not res!575321) (not e!472511))))

(declare-datatypes ((array!48152 0))(
  ( (array!48153 (arr!23103 (Array (_ BitVec 32) (_ BitVec 64))) (size!23544 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48152)

(declare-datatypes ((List!16426 0))(
  ( (Nil!16423) (Cons!16422 (h!17553 (_ BitVec 64)) (t!22805 List!16426)) )
))
(declare-fun arrayNoDuplicates!0 (array!48152 (_ BitVec 32) List!16426) Bool)

(assert (=> b!846611 (= res!575321 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16423))))

(declare-fun b!846612 () Bool)

(declare-fun res!575319 () Bool)

(assert (=> b!846612 (=> (not res!575319) (not e!472511))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846612 (= res!575319 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23544 _keys!868))))))

(declare-fun b!846613 () Bool)

(declare-fun res!575322 () Bool)

(assert (=> b!846613 (=> (not res!575322) (not e!472511))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26349 0))(
  ( (V!26350 (val!8036 Int)) )
))
(declare-datatypes ((ValueCell!7549 0))(
  ( (ValueCellFull!7549 (v!10457 V!26349)) (EmptyCell!7549) )
))
(declare-datatypes ((array!48154 0))(
  ( (array!48155 (arr!23104 (Array (_ BitVec 32) ValueCell!7549)) (size!23545 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48154)

(assert (=> b!846613 (= res!575322 (and (= (size!23545 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23544 _keys!868) (size!23545 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846614 () Bool)

(declare-fun res!575318 () Bool)

(assert (=> b!846614 (=> (not res!575318) (not e!472511))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846614 (= res!575318 (validKeyInArray!0 k!854))))

(declare-fun res!575320 () Bool)

(assert (=> start!72954 (=> (not res!575320) (not e!472511))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72954 (= res!575320 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23544 _keys!868))))))

(assert (=> start!72954 e!472511))

(assert (=> start!72954 tp_is_empty!15977))

(assert (=> start!72954 true))

(assert (=> start!72954 tp!49028))

(declare-fun array_inv!18336 (array!48152) Bool)

(assert (=> start!72954 (array_inv!18336 _keys!868)))

(declare-fun e!472514 () Bool)

(declare-fun array_inv!18337 (array!48154) Bool)

(assert (=> start!72954 (and (array_inv!18337 _values!688) e!472514)))

(declare-fun b!846615 () Bool)

(declare-fun res!575316 () Bool)

(assert (=> b!846615 (=> (not res!575316) (not e!472511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846615 (= res!575316 (validMask!0 mask!1196))))

(declare-fun b!846616 () Bool)

(declare-fun res!575315 () Bool)

(assert (=> b!846616 (=> (not res!575315) (not e!472511))))

(assert (=> b!846616 (= res!575315 (and (= (select (arr!23103 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!846617 () Bool)

(declare-fun e!472512 () Bool)

(declare-fun mapRes!25565 () Bool)

(assert (=> b!846617 (= e!472514 (and e!472512 mapRes!25565))))

(declare-fun condMapEmpty!25565 () Bool)

(declare-fun mapDefault!25565 () ValueCell!7549)

