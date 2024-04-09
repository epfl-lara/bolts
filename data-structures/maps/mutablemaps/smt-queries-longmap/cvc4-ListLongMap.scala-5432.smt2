; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72408 () Bool)

(assert start!72408)

(declare-fun b_free!13565 () Bool)

(declare-fun b_next!13565 () Bool)

(assert (=> start!72408 (= b_free!13565 (not b_next!13565))))

(declare-fun tp!47794 () Bool)

(declare-fun b_and!22669 () Bool)

(assert (=> start!72408 (= tp!47794 b_and!22669)))

(declare-fun b!838679 () Bool)

(declare-fun res!570389 () Bool)

(declare-fun e!468145 () Bool)

(assert (=> b!838679 (=> (not res!570389) (not e!468145))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47114 0))(
  ( (array!47115 (arr!22584 (Array (_ BitVec 32) (_ BitVec 64))) (size!23025 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47114)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!838679 (= res!570389 (and (= (select (arr!22584 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23025 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838680 () Bool)

(declare-fun res!570387 () Bool)

(assert (=> b!838680 (=> (not res!570387) (not e!468145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838680 (= res!570387 (validKeyInArray!0 k!854))))

(declare-datatypes ((V!25621 0))(
  ( (V!25622 (val!7763 Int)) )
))
(declare-datatypes ((tuple2!10290 0))(
  ( (tuple2!10291 (_1!5155 (_ BitVec 64)) (_2!5155 V!25621)) )
))
(declare-datatypes ((List!16126 0))(
  ( (Nil!16123) (Cons!16122 (h!17253 tuple2!10290) (t!22505 List!16126)) )
))
(declare-datatypes ((ListLongMap!9073 0))(
  ( (ListLongMap!9074 (toList!4552 List!16126)) )
))
(declare-fun call!36929 () ListLongMap!9073)

(declare-fun v!557 () V!25621)

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7276 0))(
  ( (ValueCellFull!7276 (v!10184 V!25621)) (EmptyCell!7276) )
))
(declare-datatypes ((array!47116 0))(
  ( (array!47117 (arr!22585 (Array (_ BitVec 32) ValueCell!7276)) (size!23026 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47116)

(declare-fun minValue!654 () V!25621)

(declare-fun zeroValue!654 () V!25621)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!36925 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2547 (array!47114 array!47116 (_ BitVec 32) (_ BitVec 32) V!25621 V!25621 (_ BitVec 32) Int) ListLongMap!9073)

(assert (=> bm!36925 (= call!36929 (getCurrentListMapNoExtraKeys!2547 _keys!868 (array!47117 (store (arr!22585 _values!688) i!612 (ValueCellFull!7276 v!557)) (size!23026 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838681 () Bool)

(declare-fun res!570384 () Bool)

(assert (=> b!838681 (=> (not res!570384) (not e!468145))))

(assert (=> b!838681 (= res!570384 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23025 _keys!868))))))

(declare-fun res!570385 () Bool)

(assert (=> start!72408 (=> (not res!570385) (not e!468145))))

(assert (=> start!72408 (= res!570385 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23025 _keys!868))))))

(assert (=> start!72408 e!468145))

(declare-fun tp_is_empty!15431 () Bool)

(assert (=> start!72408 tp_is_empty!15431))

(assert (=> start!72408 true))

(assert (=> start!72408 tp!47794))

(declare-fun array_inv!17966 (array!47114) Bool)

(assert (=> start!72408 (array_inv!17966 _keys!868)))

(declare-fun e!468149 () Bool)

(declare-fun array_inv!17967 (array!47116) Bool)

(assert (=> start!72408 (and (array_inv!17967 _values!688) e!468149)))

(declare-fun b!838682 () Bool)

(declare-fun res!570383 () Bool)

(assert (=> b!838682 (=> (not res!570383) (not e!468145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838682 (= res!570383 (validMask!0 mask!1196))))

(declare-fun b!838683 () Bool)

(declare-fun res!570386 () Bool)

(assert (=> b!838683 (=> (not res!570386) (not e!468145))))

(assert (=> b!838683 (= res!570386 (and (= (size!23026 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23025 _keys!868) (size!23026 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838684 () Bool)

(declare-fun e!468148 () Bool)

(assert (=> b!838684 (= e!468148 tp_is_empty!15431)))

(declare-fun b!838685 () Bool)

(declare-fun res!570390 () Bool)

(assert (=> b!838685 (=> (not res!570390) (not e!468145))))

(declare-datatypes ((List!16127 0))(
  ( (Nil!16124) (Cons!16123 (h!17254 (_ BitVec 64)) (t!22506 List!16127)) )
))
(declare-fun arrayNoDuplicates!0 (array!47114 (_ BitVec 32) List!16127) Bool)

(assert (=> b!838685 (= res!570390 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16124))))

(declare-fun b!838686 () Bool)

(declare-fun e!468150 () Bool)

(declare-fun mapRes!24746 () Bool)

(assert (=> b!838686 (= e!468149 (and e!468150 mapRes!24746))))

(declare-fun condMapEmpty!24746 () Bool)

(declare-fun mapDefault!24746 () ValueCell!7276)

