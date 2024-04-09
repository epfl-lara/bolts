; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72566 () Bool)

(assert start!72566)

(declare-fun b_free!13723 () Bool)

(declare-fun b_next!13723 () Bool)

(assert (=> start!72566 (= b_free!13723 (not b_next!13723))))

(declare-fun tp!48268 () Bool)

(declare-fun b_and!22827 () Bool)

(assert (=> start!72566 (= tp!48268 b_and!22827)))

(declare-datatypes ((V!25833 0))(
  ( (V!25834 (val!7842 Int)) )
))
(declare-fun v!557 () V!25833)

(declare-fun b!841760 () Bool)

(declare-datatypes ((tuple2!10426 0))(
  ( (tuple2!10427 (_1!5223 (_ BitVec 64)) (_2!5223 V!25833)) )
))
(declare-datatypes ((List!16252 0))(
  ( (Nil!16249) (Cons!16248 (h!17379 tuple2!10426) (t!22631 List!16252)) )
))
(declare-datatypes ((ListLongMap!9209 0))(
  ( (ListLongMap!9210 (toList!4620 List!16252)) )
))
(declare-fun call!37402 () ListLongMap!9209)

(declare-fun call!37403 () ListLongMap!9209)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!469572 () Bool)

(declare-fun +!2023 (ListLongMap!9209 tuple2!10426) ListLongMap!9209)

(assert (=> b!841760 (= e!469572 (= call!37403 (+!2023 call!37402 (tuple2!10427 k!854 v!557))))))

(declare-fun b!841761 () Bool)

(declare-fun e!469571 () Bool)

(declare-fun tp_is_empty!15589 () Bool)

(assert (=> b!841761 (= e!469571 tp_is_empty!15589)))

(declare-fun b!841762 () Bool)

(declare-fun res!572279 () Bool)

(declare-fun e!469569 () Bool)

(assert (=> b!841762 (=> (not res!572279) (not e!469569))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47422 0))(
  ( (array!47423 (arr!22738 (Array (_ BitVec 32) (_ BitVec 64))) (size!23179 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47422)

(declare-datatypes ((ValueCell!7355 0))(
  ( (ValueCellFull!7355 (v!10263 V!25833)) (EmptyCell!7355) )
))
(declare-datatypes ((array!47424 0))(
  ( (array!47425 (arr!22739 (Array (_ BitVec 32) ValueCell!7355)) (size!23180 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47424)

(assert (=> b!841762 (= res!572279 (and (= (size!23180 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23179 _keys!868) (size!23180 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!24983 () Bool)

(declare-fun mapRes!24983 () Bool)

(declare-fun tp!48269 () Bool)

(assert (=> mapNonEmpty!24983 (= mapRes!24983 (and tp!48269 e!469571))))

(declare-fun mapRest!24983 () (Array (_ BitVec 32) ValueCell!7355))

(declare-fun mapKey!24983 () (_ BitVec 32))

(declare-fun mapValue!24983 () ValueCell!7355)

(assert (=> mapNonEmpty!24983 (= (arr!22739 _values!688) (store mapRest!24983 mapKey!24983 mapValue!24983))))

(declare-fun b!841763 () Bool)

(declare-fun res!572286 () Bool)

(assert (=> b!841763 (=> (not res!572286) (not e!469569))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841763 (= res!572286 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23179 _keys!868))))))

(declare-fun b!841764 () Bool)

(declare-fun res!572282 () Bool)

(assert (=> b!841764 (=> (not res!572282) (not e!469569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841764 (= res!572282 (validKeyInArray!0 k!854))))

(declare-fun res!572285 () Bool)

(assert (=> start!72566 (=> (not res!572285) (not e!469569))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72566 (= res!572285 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23179 _keys!868))))))

(assert (=> start!72566 e!469569))

(assert (=> start!72566 tp_is_empty!15589))

(assert (=> start!72566 true))

(assert (=> start!72566 tp!48268))

(declare-fun array_inv!18074 (array!47422) Bool)

(assert (=> start!72566 (array_inv!18074 _keys!868)))

(declare-fun e!469570 () Bool)

(declare-fun array_inv!18075 (array!47424) Bool)

(assert (=> start!72566 (and (array_inv!18075 _values!688) e!469570)))

(declare-fun b!841765 () Bool)

(declare-fun res!572280 () Bool)

(assert (=> b!841765 (=> (not res!572280) (not e!469569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47422 (_ BitVec 32)) Bool)

(assert (=> b!841765 (= res!572280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841766 () Bool)

(declare-fun res!572283 () Bool)

(assert (=> b!841766 (=> (not res!572283) (not e!469569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841766 (= res!572283 (validMask!0 mask!1196))))

(declare-fun b!841767 () Bool)

(assert (=> b!841767 (= e!469572 (= call!37403 call!37402))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37399 () Bool)

(declare-fun minValue!654 () V!25833)

(declare-fun zeroValue!654 () V!25833)

(declare-fun getCurrentListMapNoExtraKeys!2610 (array!47422 array!47424 (_ BitVec 32) (_ BitVec 32) V!25833 V!25833 (_ BitVec 32) Int) ListLongMap!9209)

(assert (=> bm!37399 (= call!37403 (getCurrentListMapNoExtraKeys!2610 _keys!868 (array!47425 (store (arr!22739 _values!688) i!612 (ValueCellFull!7355 v!557)) (size!23180 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841768 () Bool)

(declare-fun res!572284 () Bool)

(assert (=> b!841768 (=> (not res!572284) (not e!469569))))

(assert (=> b!841768 (= res!572284 (and (= (select (arr!22738 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23179 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841769 () Bool)

(declare-fun res!572281 () Bool)

(assert (=> b!841769 (=> (not res!572281) (not e!469569))))

(declare-datatypes ((List!16253 0))(
  ( (Nil!16250) (Cons!16249 (h!17380 (_ BitVec 64)) (t!22632 List!16253)) )
))
(declare-fun arrayNoDuplicates!0 (array!47422 (_ BitVec 32) List!16253) Bool)

(assert (=> b!841769 (= res!572281 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16250))))

(declare-fun mapIsEmpty!24983 () Bool)

(assert (=> mapIsEmpty!24983 mapRes!24983))

(declare-fun bm!37400 () Bool)

(assert (=> bm!37400 (= call!37402 (getCurrentListMapNoExtraKeys!2610 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841770 () Bool)

(declare-fun e!469568 () Bool)

(assert (=> b!841770 (= e!469570 (and e!469568 mapRes!24983))))

(declare-fun condMapEmpty!24983 () Bool)

(declare-fun mapDefault!24983 () ValueCell!7355)

