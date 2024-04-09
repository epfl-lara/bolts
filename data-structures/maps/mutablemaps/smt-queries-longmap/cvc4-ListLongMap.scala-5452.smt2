; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72528 () Bool)

(assert start!72528)

(declare-fun b_free!13685 () Bool)

(declare-fun b_next!13685 () Bool)

(assert (=> start!72528 (= b_free!13685 (not b_next!13685))))

(declare-fun tp!48155 () Bool)

(declare-fun b_and!22789 () Bool)

(assert (=> start!72528 (= tp!48155 b_and!22789)))

(declare-fun b!841019 () Bool)

(declare-fun e!469229 () Bool)

(declare-fun tp_is_empty!15551 () Bool)

(assert (=> b!841019 (= e!469229 tp_is_empty!15551)))

(declare-datatypes ((V!25781 0))(
  ( (V!25782 (val!7823 Int)) )
))
(declare-datatypes ((tuple2!10396 0))(
  ( (tuple2!10397 (_1!5208 (_ BitVec 64)) (_2!5208 V!25781)) )
))
(declare-datatypes ((List!16220 0))(
  ( (Nil!16217) (Cons!16216 (h!17347 tuple2!10396) (t!22599 List!16220)) )
))
(declare-datatypes ((ListLongMap!9179 0))(
  ( (ListLongMap!9180 (toList!4605 List!16220)) )
))
(declare-fun call!37289 () ListLongMap!9179)

(declare-fun v!557 () V!25781)

(declare-fun e!469228 () Bool)

(declare-fun b!841020 () Bool)

(declare-fun call!37288 () ListLongMap!9179)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2011 (ListLongMap!9179 tuple2!10396) ListLongMap!9179)

(assert (=> b!841020 (= e!469228 (= call!37288 (+!2011 call!37289 (tuple2!10397 k!854 v!557))))))

(declare-fun b!841021 () Bool)

(declare-fun res!571827 () Bool)

(declare-fun e!469227 () Bool)

(assert (=> b!841021 (=> (not res!571827) (not e!469227))))

(declare-datatypes ((array!47348 0))(
  ( (array!47349 (arr!22701 (Array (_ BitVec 32) (_ BitVec 64))) (size!23142 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47348)

(declare-datatypes ((List!16221 0))(
  ( (Nil!16218) (Cons!16217 (h!17348 (_ BitVec 64)) (t!22600 List!16221)) )
))
(declare-fun arrayNoDuplicates!0 (array!47348 (_ BitVec 32) List!16221) Bool)

(assert (=> b!841021 (= res!571827 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16218))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7336 0))(
  ( (ValueCellFull!7336 (v!10244 V!25781)) (EmptyCell!7336) )
))
(declare-datatypes ((array!47350 0))(
  ( (array!47351 (arr!22702 (Array (_ BitVec 32) ValueCell!7336)) (size!23143 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47350)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37285 () Bool)

(declare-fun minValue!654 () V!25781)

(declare-fun zeroValue!654 () V!25781)

(declare-fun getCurrentListMapNoExtraKeys!2596 (array!47348 array!47350 (_ BitVec 32) (_ BitVec 32) V!25781 V!25781 (_ BitVec 32) Int) ListLongMap!9179)

(assert (=> bm!37285 (= call!37288 (getCurrentListMapNoExtraKeys!2596 _keys!868 (array!47351 (store (arr!22702 _values!688) i!612 (ValueCellFull!7336 v!557)) (size!23143 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841022 () Bool)

(declare-fun res!571830 () Bool)

(assert (=> b!841022 (=> (not res!571830) (not e!469227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841022 (= res!571830 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24926 () Bool)

(declare-fun mapRes!24926 () Bool)

(assert (=> mapIsEmpty!24926 mapRes!24926))

(declare-fun b!841023 () Bool)

(declare-fun res!571828 () Bool)

(assert (=> b!841023 (=> (not res!571828) (not e!469227))))

(assert (=> b!841023 (= res!571828 (and (= (size!23143 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23142 _keys!868) (size!23143 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841024 () Bool)

(declare-fun e!469230 () Bool)

(assert (=> b!841024 (= e!469230 tp_is_empty!15551)))

(declare-fun b!841025 () Bool)

(declare-fun res!571825 () Bool)

(assert (=> b!841025 (=> (not res!571825) (not e!469227))))

(assert (=> b!841025 (= res!571825 (and (= (select (arr!22701 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23142 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841026 () Bool)

(declare-fun res!571829 () Bool)

(assert (=> b!841026 (=> (not res!571829) (not e!469227))))

(assert (=> b!841026 (= res!571829 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23142 _keys!868))))))

(declare-fun res!571826 () Bool)

(assert (=> start!72528 (=> (not res!571826) (not e!469227))))

(assert (=> start!72528 (= res!571826 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23142 _keys!868))))))

(assert (=> start!72528 e!469227))

(assert (=> start!72528 tp_is_empty!15551))

(assert (=> start!72528 true))

(assert (=> start!72528 tp!48155))

(declare-fun array_inv!18048 (array!47348) Bool)

(assert (=> start!72528 (array_inv!18048 _keys!868)))

(declare-fun e!469226 () Bool)

(declare-fun array_inv!18049 (array!47350) Bool)

(assert (=> start!72528 (and (array_inv!18049 _values!688) e!469226)))

(declare-fun mapNonEmpty!24926 () Bool)

(declare-fun tp!48154 () Bool)

(assert (=> mapNonEmpty!24926 (= mapRes!24926 (and tp!48154 e!469230))))

(declare-fun mapValue!24926 () ValueCell!7336)

(declare-fun mapKey!24926 () (_ BitVec 32))

(declare-fun mapRest!24926 () (Array (_ BitVec 32) ValueCell!7336))

(assert (=> mapNonEmpty!24926 (= (arr!22702 _values!688) (store mapRest!24926 mapKey!24926 mapValue!24926))))

(declare-fun b!841027 () Bool)

(declare-fun res!571823 () Bool)

(assert (=> b!841027 (=> (not res!571823) (not e!469227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47348 (_ BitVec 32)) Bool)

(assert (=> b!841027 (= res!571823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841028 () Bool)

(declare-fun res!571824 () Bool)

(assert (=> b!841028 (=> (not res!571824) (not e!469227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841028 (= res!571824 (validKeyInArray!0 k!854))))

(declare-fun b!841029 () Bool)

(assert (=> b!841029 (= e!469228 (= call!37288 call!37289))))

(declare-fun b!841030 () Bool)

(assert (=> b!841030 (= e!469226 (and e!469229 mapRes!24926))))

(declare-fun condMapEmpty!24926 () Bool)

(declare-fun mapDefault!24926 () ValueCell!7336)

