; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72500 () Bool)

(assert start!72500)

(declare-fun b_free!13657 () Bool)

(declare-fun b_next!13657 () Bool)

(assert (=> start!72500 (= b_free!13657 (not b_next!13657))))

(declare-fun tp!48071 () Bool)

(declare-fun b_and!22761 () Bool)

(assert (=> start!72500 (= tp!48071 b_and!22761)))

(declare-fun mapIsEmpty!24884 () Bool)

(declare-fun mapRes!24884 () Bool)

(assert (=> mapIsEmpty!24884 mapRes!24884))

(declare-fun b!840473 () Bool)

(declare-fun res!571487 () Bool)

(declare-fun e!468974 () Bool)

(assert (=> b!840473 (=> (not res!571487) (not e!468974))))

(declare-datatypes ((array!47294 0))(
  ( (array!47295 (arr!22674 (Array (_ BitVec 32) (_ BitVec 64))) (size!23115 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47294)

(declare-datatypes ((List!16197 0))(
  ( (Nil!16194) (Cons!16193 (h!17324 (_ BitVec 64)) (t!22576 List!16197)) )
))
(declare-fun arrayNoDuplicates!0 (array!47294 (_ BitVec 32) List!16197) Bool)

(assert (=> b!840473 (= res!571487 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16194))))

(declare-fun res!571492 () Bool)

(assert (=> start!72500 (=> (not res!571492) (not e!468974))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72500 (= res!571492 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23115 _keys!868))))))

(assert (=> start!72500 e!468974))

(declare-fun tp_is_empty!15523 () Bool)

(assert (=> start!72500 tp_is_empty!15523))

(assert (=> start!72500 true))

(assert (=> start!72500 tp!48071))

(declare-fun array_inv!18026 (array!47294) Bool)

(assert (=> start!72500 (array_inv!18026 _keys!868)))

(declare-datatypes ((V!25745 0))(
  ( (V!25746 (val!7809 Int)) )
))
(declare-datatypes ((ValueCell!7322 0))(
  ( (ValueCellFull!7322 (v!10230 V!25745)) (EmptyCell!7322) )
))
(declare-datatypes ((array!47296 0))(
  ( (array!47297 (arr!22675 (Array (_ BitVec 32) ValueCell!7322)) (size!23116 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47296)

(declare-fun e!468978 () Bool)

(declare-fun array_inv!18027 (array!47296) Bool)

(assert (=> start!72500 (and (array_inv!18027 _values!688) e!468978)))

(declare-fun b!840474 () Bool)

(declare-fun e!468977 () Bool)

(declare-datatypes ((tuple2!10370 0))(
  ( (tuple2!10371 (_1!5195 (_ BitVec 64)) (_2!5195 V!25745)) )
))
(declare-datatypes ((List!16198 0))(
  ( (Nil!16195) (Cons!16194 (h!17325 tuple2!10370) (t!22577 List!16198)) )
))
(declare-datatypes ((ListLongMap!9153 0))(
  ( (ListLongMap!9154 (toList!4592 List!16198)) )
))
(declare-fun call!37205 () ListLongMap!9153)

(declare-fun call!37204 () ListLongMap!9153)

(assert (=> b!840474 (= e!468977 (= call!37205 call!37204))))

(declare-fun b!840475 () Bool)

(declare-fun res!571489 () Bool)

(assert (=> b!840475 (=> (not res!571489) (not e!468974))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840475 (= res!571489 (and (= (select (arr!22674 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23115 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840476 () Bool)

(assert (=> b!840476 (= e!468974 (not true))))

(assert (=> b!840476 e!468977))

(declare-fun c!91263 () Bool)

(assert (=> b!840476 (= c!91263 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25745)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!25745)

(declare-fun zeroValue!654 () V!25745)

(declare-datatypes ((Unit!28864 0))(
  ( (Unit!28865) )
))
(declare-fun lt!380796 () Unit!28864)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!281 (array!47294 array!47296 (_ BitVec 32) (_ BitVec 32) V!25745 V!25745 (_ BitVec 32) (_ BitVec 64) V!25745 (_ BitVec 32) Int) Unit!28864)

(assert (=> b!840476 (= lt!380796 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!281 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840477 () Bool)

(declare-fun res!571491 () Bool)

(assert (=> b!840477 (=> (not res!571491) (not e!468974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840477 (= res!571491 (validKeyInArray!0 k!854))))

(declare-fun b!840478 () Bool)

(declare-fun res!571493 () Bool)

(assert (=> b!840478 (=> (not res!571493) (not e!468974))))

(assert (=> b!840478 (= res!571493 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23115 _keys!868))))))

(declare-fun bm!37201 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2584 (array!47294 array!47296 (_ BitVec 32) (_ BitVec 32) V!25745 V!25745 (_ BitVec 32) Int) ListLongMap!9153)

(assert (=> bm!37201 (= call!37205 (getCurrentListMapNoExtraKeys!2584 _keys!868 (array!47297 (store (arr!22675 _values!688) i!612 (ValueCellFull!7322 v!557)) (size!23116 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840479 () Bool)

(declare-fun res!571488 () Bool)

(assert (=> b!840479 (=> (not res!571488) (not e!468974))))

(assert (=> b!840479 (= res!571488 (and (= (size!23116 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23115 _keys!868) (size!23116 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840480 () Bool)

(declare-fun e!468973 () Bool)

(assert (=> b!840480 (= e!468973 tp_is_empty!15523)))

(declare-fun b!840481 () Bool)

(declare-fun +!2002 (ListLongMap!9153 tuple2!10370) ListLongMap!9153)

(assert (=> b!840481 (= e!468977 (= call!37205 (+!2002 call!37204 (tuple2!10371 k!854 v!557))))))

(declare-fun b!840482 () Bool)

(declare-fun e!468976 () Bool)

(assert (=> b!840482 (= e!468978 (and e!468976 mapRes!24884))))

(declare-fun condMapEmpty!24884 () Bool)

(declare-fun mapDefault!24884 () ValueCell!7322)

