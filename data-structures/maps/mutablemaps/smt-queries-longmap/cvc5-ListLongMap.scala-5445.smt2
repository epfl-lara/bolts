; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72482 () Bool)

(assert start!72482)

(declare-fun b_free!13639 () Bool)

(declare-fun b_next!13639 () Bool)

(assert (=> start!72482 (= b_free!13639 (not b_next!13639))))

(declare-fun tp!48017 () Bool)

(declare-fun b_and!22743 () Bool)

(assert (=> start!72482 (= tp!48017 b_and!22743)))

(declare-fun b!840122 () Bool)

(declare-fun e!468812 () Bool)

(assert (=> b!840122 (= e!468812 (not true))))

(declare-fun e!468813 () Bool)

(assert (=> b!840122 e!468813))

(declare-fun c!91236 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840122 (= c!91236 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25721 0))(
  ( (V!25722 (val!7800 Int)) )
))
(declare-fun v!557 () V!25721)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!28850 0))(
  ( (Unit!28851) )
))
(declare-fun lt!380769 () Unit!28850)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47258 0))(
  ( (array!47259 (arr!22656 (Array (_ BitVec 32) (_ BitVec 64))) (size!23097 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47258)

(declare-datatypes ((ValueCell!7313 0))(
  ( (ValueCellFull!7313 (v!10221 V!25721)) (EmptyCell!7313) )
))
(declare-datatypes ((array!47260 0))(
  ( (array!47261 (arr!22657 (Array (_ BitVec 32) ValueCell!7313)) (size!23098 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47260)

(declare-fun minValue!654 () V!25721)

(declare-fun zeroValue!654 () V!25721)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!274 (array!47258 array!47260 (_ BitVec 32) (_ BitVec 32) V!25721 V!25721 (_ BitVec 32) (_ BitVec 64) V!25721 (_ BitVec 32) Int) Unit!28850)

(assert (=> b!840122 (= lt!380769 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!274 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840123 () Bool)

(declare-fun res!571277 () Bool)

(assert (=> b!840123 (=> (not res!571277) (not e!468812))))

(assert (=> b!840123 (= res!571277 (and (= (select (arr!22656 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23097 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840124 () Bool)

(declare-fun res!571275 () Bool)

(assert (=> b!840124 (=> (not res!571275) (not e!468812))))

(declare-datatypes ((List!16181 0))(
  ( (Nil!16178) (Cons!16177 (h!17308 (_ BitVec 64)) (t!22560 List!16181)) )
))
(declare-fun arrayNoDuplicates!0 (array!47258 (_ BitVec 32) List!16181) Bool)

(assert (=> b!840124 (= res!571275 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16178))))

(declare-fun b!840125 () Bool)

(declare-fun res!571278 () Bool)

(assert (=> b!840125 (=> (not res!571278) (not e!468812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840125 (= res!571278 (validMask!0 mask!1196))))

(declare-fun b!840126 () Bool)

(declare-fun res!571274 () Bool)

(assert (=> b!840126 (=> (not res!571274) (not e!468812))))

(assert (=> b!840126 (= res!571274 (and (= (size!23098 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23097 _keys!868) (size!23098 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37147 () Bool)

(declare-datatypes ((tuple2!10352 0))(
  ( (tuple2!10353 (_1!5186 (_ BitVec 64)) (_2!5186 V!25721)) )
))
(declare-datatypes ((List!16182 0))(
  ( (Nil!16179) (Cons!16178 (h!17309 tuple2!10352) (t!22561 List!16182)) )
))
(declare-datatypes ((ListLongMap!9135 0))(
  ( (ListLongMap!9136 (toList!4583 List!16182)) )
))
(declare-fun call!37151 () ListLongMap!9135)

(declare-fun getCurrentListMapNoExtraKeys!2575 (array!47258 array!47260 (_ BitVec 32) (_ BitVec 32) V!25721 V!25721 (_ BitVec 32) Int) ListLongMap!9135)

(assert (=> bm!37147 (= call!37151 (getCurrentListMapNoExtraKeys!2575 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840127 () Bool)

(declare-fun e!468814 () Bool)

(declare-fun tp_is_empty!15505 () Bool)

(assert (=> b!840127 (= e!468814 tp_is_empty!15505)))

(declare-fun b!840128 () Bool)

(declare-fun e!468811 () Bool)

(assert (=> b!840128 (= e!468811 tp_is_empty!15505)))

(declare-fun b!840129 () Bool)

(declare-fun call!37150 () ListLongMap!9135)

(assert (=> b!840129 (= e!468813 (= call!37150 call!37151))))

(declare-fun b!840130 () Bool)

(declare-fun res!571271 () Bool)

(assert (=> b!840130 (=> (not res!571271) (not e!468812))))

(assert (=> b!840130 (= res!571271 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23097 _keys!868))))))

(declare-fun b!840131 () Bool)

(declare-fun e!468815 () Bool)

(declare-fun mapRes!24857 () Bool)

(assert (=> b!840131 (= e!468815 (and e!468814 mapRes!24857))))

(declare-fun condMapEmpty!24857 () Bool)

(declare-fun mapDefault!24857 () ValueCell!7313)

