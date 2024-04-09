; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72518 () Bool)

(assert start!72518)

(declare-fun b_free!13675 () Bool)

(declare-fun b_next!13675 () Bool)

(assert (=> start!72518 (= b_free!13675 (not b_next!13675))))

(declare-fun tp!48125 () Bool)

(declare-fun b_and!22779 () Bool)

(assert (=> start!72518 (= tp!48125 b_and!22779)))

(declare-fun b!840824 () Bool)

(declare-fun res!571703 () Bool)

(declare-fun e!469136 () Bool)

(assert (=> b!840824 (=> (not res!571703) (not e!469136))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47328 0))(
  ( (array!47329 (arr!22691 (Array (_ BitVec 32) (_ BitVec 64))) (size!23132 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47328)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!840824 (= res!571703 (and (= (select (arr!22691 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23132 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840825 () Bool)

(declare-fun res!571710 () Bool)

(assert (=> b!840825 (=> (not res!571710) (not e!469136))))

(declare-datatypes ((List!16210 0))(
  ( (Nil!16207) (Cons!16206 (h!17337 (_ BitVec 64)) (t!22589 List!16210)) )
))
(declare-fun arrayNoDuplicates!0 (array!47328 (_ BitVec 32) List!16210) Bool)

(assert (=> b!840825 (= res!571710 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16207))))

(declare-fun b!840826 () Bool)

(assert (=> b!840826 (= e!469136 (not true))))

(declare-fun e!469137 () Bool)

(assert (=> b!840826 e!469137))

(declare-fun c!91290 () Bool)

(assert (=> b!840826 (= c!91290 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28876 0))(
  ( (Unit!28877) )
))
(declare-fun lt!380823 () Unit!28876)

(declare-datatypes ((V!25769 0))(
  ( (V!25770 (val!7818 Int)) )
))
(declare-fun v!557 () V!25769)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7331 0))(
  ( (ValueCellFull!7331 (v!10239 V!25769)) (EmptyCell!7331) )
))
(declare-datatypes ((array!47330 0))(
  ( (array!47331 (arr!22692 (Array (_ BitVec 32) ValueCell!7331)) (size!23133 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47330)

(declare-fun minValue!654 () V!25769)

(declare-fun zeroValue!654 () V!25769)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!287 (array!47328 array!47330 (_ BitVec 32) (_ BitVec 32) V!25769 V!25769 (_ BitVec 32) (_ BitVec 64) V!25769 (_ BitVec 32) Int) Unit!28876)

(assert (=> b!840826 (= lt!380823 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!287 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571705 () Bool)

(assert (=> start!72518 (=> (not res!571705) (not e!469136))))

(assert (=> start!72518 (= res!571705 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23132 _keys!868))))))

(assert (=> start!72518 e!469136))

(declare-fun tp_is_empty!15541 () Bool)

(assert (=> start!72518 tp_is_empty!15541))

(assert (=> start!72518 true))

(assert (=> start!72518 tp!48125))

(declare-fun array_inv!18038 (array!47328) Bool)

(assert (=> start!72518 (array_inv!18038 _keys!868)))

(declare-fun e!469140 () Bool)

(declare-fun array_inv!18039 (array!47330) Bool)

(assert (=> start!72518 (and (array_inv!18039 _values!688) e!469140)))

(declare-fun bm!37255 () Bool)

(declare-datatypes ((tuple2!10386 0))(
  ( (tuple2!10387 (_1!5203 (_ BitVec 64)) (_2!5203 V!25769)) )
))
(declare-datatypes ((List!16211 0))(
  ( (Nil!16208) (Cons!16207 (h!17338 tuple2!10386) (t!22590 List!16211)) )
))
(declare-datatypes ((ListLongMap!9169 0))(
  ( (ListLongMap!9170 (toList!4600 List!16211)) )
))
(declare-fun call!37258 () ListLongMap!9169)

(declare-fun getCurrentListMapNoExtraKeys!2591 (array!47328 array!47330 (_ BitVec 32) (_ BitVec 32) V!25769 V!25769 (_ BitVec 32) Int) ListLongMap!9169)

(assert (=> bm!37255 (= call!37258 (getCurrentListMapNoExtraKeys!2591 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840827 () Bool)

(declare-fun e!469138 () Bool)

(assert (=> b!840827 (= e!469138 tp_is_empty!15541)))

(declare-fun b!840828 () Bool)

(declare-fun e!469135 () Bool)

(assert (=> b!840828 (= e!469135 tp_is_empty!15541)))

(declare-fun b!840829 () Bool)

(declare-fun res!571704 () Bool)

(assert (=> b!840829 (=> (not res!571704) (not e!469136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840829 (= res!571704 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!24911 () Bool)

(declare-fun mapRes!24911 () Bool)

(declare-fun tp!48124 () Bool)

(assert (=> mapNonEmpty!24911 (= mapRes!24911 (and tp!48124 e!469135))))

(declare-fun mapValue!24911 () ValueCell!7331)

(declare-fun mapKey!24911 () (_ BitVec 32))

(declare-fun mapRest!24911 () (Array (_ BitVec 32) ValueCell!7331))

(assert (=> mapNonEmpty!24911 (= (arr!22692 _values!688) (store mapRest!24911 mapKey!24911 mapValue!24911))))

(declare-fun bm!37256 () Bool)

(declare-fun call!37259 () ListLongMap!9169)

(assert (=> bm!37256 (= call!37259 (getCurrentListMapNoExtraKeys!2591 _keys!868 (array!47331 (store (arr!22692 _values!688) i!612 (ValueCellFull!7331 v!557)) (size!23133 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840830 () Bool)

(declare-fun res!571707 () Bool)

(assert (=> b!840830 (=> (not res!571707) (not e!469136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840830 (= res!571707 (validMask!0 mask!1196))))

(declare-fun b!840831 () Bool)

(assert (=> b!840831 (= e!469140 (and e!469138 mapRes!24911))))

(declare-fun condMapEmpty!24911 () Bool)

(declare-fun mapDefault!24911 () ValueCell!7331)

