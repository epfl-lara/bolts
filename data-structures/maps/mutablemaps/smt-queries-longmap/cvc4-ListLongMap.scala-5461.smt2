; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72582 () Bool)

(assert start!72582)

(declare-fun b_free!13739 () Bool)

(declare-fun b_next!13739 () Bool)

(assert (=> start!72582 (= b_free!13739 (not b_next!13739))))

(declare-fun tp!48317 () Bool)

(declare-fun b_and!22843 () Bool)

(assert (=> start!72582 (= tp!48317 b_and!22843)))

(declare-fun b!842072 () Bool)

(declare-fun e!469711 () Bool)

(declare-fun tp_is_empty!15605 () Bool)

(assert (=> b!842072 (= e!469711 tp_is_empty!15605)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!25853 0))(
  ( (V!25854 (val!7850 Int)) )
))
(declare-datatypes ((tuple2!10442 0))(
  ( (tuple2!10443 (_1!5231 (_ BitVec 64)) (_2!5231 V!25853)) )
))
(declare-datatypes ((List!16265 0))(
  ( (Nil!16262) (Cons!16261 (h!17392 tuple2!10442) (t!22644 List!16265)) )
))
(declare-datatypes ((ListLongMap!9225 0))(
  ( (ListLongMap!9226 (toList!4628 List!16265)) )
))
(declare-fun call!37450 () ListLongMap!9225)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37447 () Bool)

(declare-datatypes ((array!47452 0))(
  ( (array!47453 (arr!22753 (Array (_ BitVec 32) (_ BitVec 64))) (size!23194 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47452)

(declare-datatypes ((ValueCell!7363 0))(
  ( (ValueCellFull!7363 (v!10271 V!25853)) (EmptyCell!7363) )
))
(declare-datatypes ((array!47454 0))(
  ( (array!47455 (arr!22754 (Array (_ BitVec 32) ValueCell!7363)) (size!23195 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47454)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25853)

(declare-fun zeroValue!654 () V!25853)

(declare-fun getCurrentListMapNoExtraKeys!2617 (array!47452 array!47454 (_ BitVec 32) (_ BitVec 32) V!25853 V!25853 (_ BitVec 32) Int) ListLongMap!9225)

(assert (=> bm!37447 (= call!37450 (getCurrentListMapNoExtraKeys!2617 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842073 () Bool)

(declare-fun res!572473 () Bool)

(declare-fun e!469714 () Bool)

(assert (=> b!842073 (=> (not res!572473) (not e!469714))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!842073 (= res!572473 (and (= (select (arr!22753 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23194 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun bm!37448 () Bool)

(declare-fun v!557 () V!25853)

(declare-fun call!37451 () ListLongMap!9225)

(assert (=> bm!37448 (= call!37451 (getCurrentListMapNoExtraKeys!2617 _keys!868 (array!47455 (store (arr!22754 _values!688) i!612 (ValueCellFull!7363 v!557)) (size!23195 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842074 () Bool)

(declare-fun e!469713 () Bool)

(assert (=> b!842074 (= e!469713 (= call!37451 call!37450))))

(declare-fun mapNonEmpty!25007 () Bool)

(declare-fun mapRes!25007 () Bool)

(declare-fun tp!48316 () Bool)

(declare-fun e!469715 () Bool)

(assert (=> mapNonEmpty!25007 (= mapRes!25007 (and tp!48316 e!469715))))

(declare-fun mapKey!25007 () (_ BitVec 32))

(declare-fun mapValue!25007 () ValueCell!7363)

(declare-fun mapRest!25007 () (Array (_ BitVec 32) ValueCell!7363))

(assert (=> mapNonEmpty!25007 (= (arr!22754 _values!688) (store mapRest!25007 mapKey!25007 mapValue!25007))))

(declare-fun b!842075 () Bool)

(assert (=> b!842075 (= e!469715 tp_is_empty!15605)))

(declare-fun mapIsEmpty!25007 () Bool)

(assert (=> mapIsEmpty!25007 mapRes!25007))

(declare-fun b!842076 () Bool)

(declare-fun e!469712 () Bool)

(assert (=> b!842076 (= e!469712 (and e!469711 mapRes!25007))))

(declare-fun condMapEmpty!25007 () Bool)

(declare-fun mapDefault!25007 () ValueCell!7363)

