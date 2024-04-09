; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72546 () Bool)

(assert start!72546)

(declare-fun b_free!13703 () Bool)

(declare-fun b_next!13703 () Bool)

(assert (=> start!72546 (= b_free!13703 (not b_next!13703))))

(declare-fun tp!48208 () Bool)

(declare-fun b_and!22807 () Bool)

(assert (=> start!72546 (= tp!48208 b_and!22807)))

(declare-fun b!841370 () Bool)

(declare-fun res!572044 () Bool)

(declare-fun e!469388 () Bool)

(assert (=> b!841370 (=> (not res!572044) (not e!469388))))

(declare-datatypes ((array!47384 0))(
  ( (array!47385 (arr!22719 (Array (_ BitVec 32) (_ BitVec 64))) (size!23160 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47384)

(declare-datatypes ((List!16238 0))(
  ( (Nil!16235) (Cons!16234 (h!17365 (_ BitVec 64)) (t!22617 List!16238)) )
))
(declare-fun arrayNoDuplicates!0 (array!47384 (_ BitVec 32) List!16238) Bool)

(assert (=> b!841370 (= res!572044 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16235))))

(declare-datatypes ((V!25805 0))(
  ( (V!25806 (val!7832 Int)) )
))
(declare-datatypes ((tuple2!10414 0))(
  ( (tuple2!10415 (_1!5217 (_ BitVec 64)) (_2!5217 V!25805)) )
))
(declare-datatypes ((List!16239 0))(
  ( (Nil!16236) (Cons!16235 (h!17366 tuple2!10414) (t!22618 List!16239)) )
))
(declare-datatypes ((ListLongMap!9197 0))(
  ( (ListLongMap!9198 (toList!4614 List!16239)) )
))
(declare-fun call!37342 () ListLongMap!9197)

(declare-fun v!557 () V!25805)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25805)

(declare-fun zeroValue!654 () V!25805)

(declare-fun bm!37339 () Bool)

(declare-datatypes ((ValueCell!7345 0))(
  ( (ValueCellFull!7345 (v!10253 V!25805)) (EmptyCell!7345) )
))
(declare-datatypes ((array!47386 0))(
  ( (array!47387 (arr!22720 (Array (_ BitVec 32) ValueCell!7345)) (size!23161 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47386)

(declare-fun getCurrentListMapNoExtraKeys!2605 (array!47384 array!47386 (_ BitVec 32) (_ BitVec 32) V!25805 V!25805 (_ BitVec 32) Int) ListLongMap!9197)

(assert (=> bm!37339 (= call!37342 (getCurrentListMapNoExtraKeys!2605 _keys!868 (array!47387 (store (arr!22720 _values!688) i!612 (ValueCellFull!7345 v!557)) (size!23161 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841371 () Bool)

(declare-fun res!572039 () Bool)

(assert (=> b!841371 (=> (not res!572039) (not e!469388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47384 (_ BitVec 32)) Bool)

(assert (=> b!841371 (= res!572039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!572046 () Bool)

(assert (=> start!72546 (=> (not res!572046) (not e!469388))))

(assert (=> start!72546 (= res!572046 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23160 _keys!868))))))

(assert (=> start!72546 e!469388))

(declare-fun tp_is_empty!15569 () Bool)

(assert (=> start!72546 tp_is_empty!15569))

(assert (=> start!72546 true))

(assert (=> start!72546 tp!48208))

(declare-fun array_inv!18064 (array!47384) Bool)

(assert (=> start!72546 (array_inv!18064 _keys!868)))

(declare-fun e!469391 () Bool)

(declare-fun array_inv!18065 (array!47386) Bool)

(assert (=> start!72546 (and (array_inv!18065 _values!688) e!469391)))

(declare-fun b!841372 () Bool)

(declare-fun e!469387 () Bool)

(assert (=> b!841372 (= e!469387 tp_is_empty!15569)))

(declare-fun bm!37340 () Bool)

(declare-fun call!37343 () ListLongMap!9197)

(assert (=> bm!37340 (= call!37343 (getCurrentListMapNoExtraKeys!2605 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841373 () Bool)

(declare-fun res!572041 () Bool)

(assert (=> b!841373 (=> (not res!572041) (not e!469388))))

(assert (=> b!841373 (= res!572041 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23160 _keys!868))))))

(declare-fun mapNonEmpty!24953 () Bool)

(declare-fun mapRes!24953 () Bool)

(declare-fun tp!48209 () Bool)

(assert (=> mapNonEmpty!24953 (= mapRes!24953 (and tp!48209 e!469387))))

(declare-fun mapKey!24953 () (_ BitVec 32))

(declare-fun mapValue!24953 () ValueCell!7345)

(declare-fun mapRest!24953 () (Array (_ BitVec 32) ValueCell!7345))

(assert (=> mapNonEmpty!24953 (= (arr!22720 _values!688) (store mapRest!24953 mapKey!24953 mapValue!24953))))

(declare-fun mapIsEmpty!24953 () Bool)

(assert (=> mapIsEmpty!24953 mapRes!24953))

(declare-fun b!841374 () Bool)

(declare-fun e!469389 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2017 (ListLongMap!9197 tuple2!10414) ListLongMap!9197)

(assert (=> b!841374 (= e!469389 (= call!37342 (+!2017 call!37343 (tuple2!10415 k!854 v!557))))))

(declare-fun b!841375 () Bool)

(declare-fun e!469392 () Bool)

(assert (=> b!841375 (= e!469392 tp_is_empty!15569)))

(declare-fun b!841376 () Bool)

(declare-fun res!572040 () Bool)

(assert (=> b!841376 (=> (not res!572040) (not e!469388))))

(assert (=> b!841376 (= res!572040 (and (= (select (arr!22719 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23160 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841377 () Bool)

(assert (=> b!841377 (= e!469389 (= call!37342 call!37343))))

(declare-fun b!841378 () Bool)

(declare-fun res!572042 () Bool)

(assert (=> b!841378 (=> (not res!572042) (not e!469388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841378 (= res!572042 (validMask!0 mask!1196))))

(declare-fun b!841379 () Bool)

(declare-fun res!572045 () Bool)

(assert (=> b!841379 (=> (not res!572045) (not e!469388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841379 (= res!572045 (validKeyInArray!0 k!854))))

(declare-fun b!841380 () Bool)

(assert (=> b!841380 (= e!469391 (and e!469392 mapRes!24953))))

(declare-fun condMapEmpty!24953 () Bool)

(declare-fun mapDefault!24953 () ValueCell!7345)

