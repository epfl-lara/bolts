; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72494 () Bool)

(assert start!72494)

(declare-fun b_free!13651 () Bool)

(declare-fun b_next!13651 () Bool)

(assert (=> start!72494 (= b_free!13651 (not b_next!13651))))

(declare-fun tp!48052 () Bool)

(declare-fun b_and!22755 () Bool)

(assert (=> start!72494 (= tp!48052 b_and!22755)))

(declare-datatypes ((V!25737 0))(
  ( (V!25738 (val!7806 Int)) )
))
(declare-fun v!557 () V!25737)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10364 0))(
  ( (tuple2!10365 (_1!5192 (_ BitVec 64)) (_2!5192 V!25737)) )
))
(declare-datatypes ((List!16192 0))(
  ( (Nil!16189) (Cons!16188 (h!17319 tuple2!10364) (t!22571 List!16192)) )
))
(declare-datatypes ((ListLongMap!9147 0))(
  ( (ListLongMap!9148 (toList!4589 List!16192)) )
))
(declare-fun call!37187 () ListLongMap!9147)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47282 0))(
  ( (array!47283 (arr!22668 (Array (_ BitVec 32) (_ BitVec 64))) (size!23109 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47282)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25737)

(declare-fun zeroValue!654 () V!25737)

(declare-fun bm!37183 () Bool)

(declare-datatypes ((ValueCell!7319 0))(
  ( (ValueCellFull!7319 (v!10227 V!25737)) (EmptyCell!7319) )
))
(declare-datatypes ((array!47284 0))(
  ( (array!47285 (arr!22669 (Array (_ BitVec 32) ValueCell!7319)) (size!23110 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47284)

(declare-fun getCurrentListMapNoExtraKeys!2581 (array!47282 array!47284 (_ BitVec 32) (_ BitVec 32) V!25737 V!25737 (_ BitVec 32) Int) ListLongMap!9147)

(assert (=> bm!37183 (= call!37187 (getCurrentListMapNoExtraKeys!2581 _keys!868 (array!47285 (store (arr!22669 _values!688) i!612 (ValueCellFull!7319 v!557)) (size!23110 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571422 () Bool)

(declare-fun e!468919 () Bool)

(assert (=> start!72494 (=> (not res!571422) (not e!468919))))

(assert (=> start!72494 (= res!571422 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23109 _keys!868))))))

(assert (=> start!72494 e!468919))

(declare-fun tp_is_empty!15517 () Bool)

(assert (=> start!72494 tp_is_empty!15517))

(assert (=> start!72494 true))

(assert (=> start!72494 tp!48052))

(declare-fun array_inv!18020 (array!47282) Bool)

(assert (=> start!72494 (array_inv!18020 _keys!868)))

(declare-fun e!468924 () Bool)

(declare-fun array_inv!18021 (array!47284) Bool)

(assert (=> start!72494 (and (array_inv!18021 _values!688) e!468924)))

(declare-fun b!840356 () Bool)

(declare-fun res!571415 () Bool)

(assert (=> b!840356 (=> (not res!571415) (not e!468919))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840356 (= res!571415 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!24875 () Bool)

(declare-fun mapRes!24875 () Bool)

(assert (=> mapIsEmpty!24875 mapRes!24875))

(declare-fun b!840357 () Bool)

(declare-fun res!571418 () Bool)

(assert (=> b!840357 (=> (not res!571418) (not e!468919))))

(assert (=> b!840357 (= res!571418 (and (= (select (arr!22668 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23109 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun call!37186 () ListLongMap!9147)

(declare-fun bm!37184 () Bool)

(assert (=> bm!37184 (= call!37186 (getCurrentListMapNoExtraKeys!2581 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840358 () Bool)

(declare-fun e!468922 () Bool)

(assert (=> b!840358 (= e!468924 (and e!468922 mapRes!24875))))

(declare-fun condMapEmpty!24875 () Bool)

(declare-fun mapDefault!24875 () ValueCell!7319)

