; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72486 () Bool)

(assert start!72486)

(declare-fun b_free!13643 () Bool)

(declare-fun b_next!13643 () Bool)

(assert (=> start!72486 (= b_free!13643 (not b_next!13643))))

(declare-fun tp!48028 () Bool)

(declare-fun b_and!22747 () Bool)

(assert (=> start!72486 (= tp!48028 b_and!22747)))

(declare-fun b!840201 () Bool)

(declare-datatypes ((V!25725 0))(
  ( (V!25726 (val!7802 Int)) )
))
(declare-datatypes ((tuple2!10356 0))(
  ( (tuple2!10357 (_1!5188 (_ BitVec 64)) (_2!5188 V!25725)) )
))
(declare-datatypes ((List!16185 0))(
  ( (Nil!16182) (Cons!16181 (h!17312 tuple2!10356) (t!22564 List!16185)) )
))
(declare-datatypes ((ListLongMap!9139 0))(
  ( (ListLongMap!9140 (toList!4585 List!16185)) )
))
(declare-fun call!37162 () ListLongMap!9139)

(declare-fun call!37163 () ListLongMap!9139)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!468849 () Bool)

(declare-fun v!557 () V!25725)

(declare-fun +!1998 (ListLongMap!9139 tuple2!10356) ListLongMap!9139)

(assert (=> b!840201 (= e!468849 (= call!37162 (+!1998 call!37163 (tuple2!10357 k!854 v!557))))))

(declare-fun b!840202 () Bool)

(declare-fun res!571326 () Bool)

(declare-fun e!468848 () Bool)

(assert (=> b!840202 (=> (not res!571326) (not e!468848))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47266 0))(
  ( (array!47267 (arr!22660 (Array (_ BitVec 32) (_ BitVec 64))) (size!23101 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47266)

(assert (=> b!840202 (= res!571326 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23101 _keys!868))))))

(declare-fun b!840203 () Bool)

(declare-fun e!468850 () Bool)

(declare-fun tp_is_empty!15509 () Bool)

(assert (=> b!840203 (= e!468850 tp_is_empty!15509)))

(declare-fun b!840204 () Bool)

(declare-fun res!571321 () Bool)

(assert (=> b!840204 (=> (not res!571321) (not e!468848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840204 (= res!571321 (validKeyInArray!0 k!854))))

(declare-fun b!840205 () Bool)

(assert (=> b!840205 (= e!468849 (= call!37162 call!37163))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37159 () Bool)

(declare-datatypes ((ValueCell!7315 0))(
  ( (ValueCellFull!7315 (v!10223 V!25725)) (EmptyCell!7315) )
))
(declare-datatypes ((array!47268 0))(
  ( (array!47269 (arr!22661 (Array (_ BitVec 32) ValueCell!7315)) (size!23102 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47268)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25725)

(declare-fun zeroValue!654 () V!25725)

(declare-fun getCurrentListMapNoExtraKeys!2577 (array!47266 array!47268 (_ BitVec 32) (_ BitVec 32) V!25725 V!25725 (_ BitVec 32) Int) ListLongMap!9139)

(assert (=> bm!37159 (= call!37162 (getCurrentListMapNoExtraKeys!2577 _keys!868 (array!47269 (store (arr!22661 _values!688) i!612 (ValueCellFull!7315 v!557)) (size!23102 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840206 () Bool)

(declare-fun res!571319 () Bool)

(assert (=> b!840206 (=> (not res!571319) (not e!468848))))

(assert (=> b!840206 (= res!571319 (and (= (select (arr!22660 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23101 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840207 () Bool)

(declare-fun res!571325 () Bool)

(assert (=> b!840207 (=> (not res!571325) (not e!468848))))

(assert (=> b!840207 (= res!571325 (and (= (size!23102 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23101 _keys!868) (size!23102 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840208 () Bool)

(declare-fun e!468851 () Bool)

(declare-fun mapRes!24863 () Bool)

(assert (=> b!840208 (= e!468851 (and e!468850 mapRes!24863))))

(declare-fun condMapEmpty!24863 () Bool)

(declare-fun mapDefault!24863 () ValueCell!7315)

