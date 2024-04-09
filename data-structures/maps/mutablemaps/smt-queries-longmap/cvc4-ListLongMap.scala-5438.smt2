; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72444 () Bool)

(assert start!72444)

(declare-fun b_free!13601 () Bool)

(declare-fun b_next!13601 () Bool)

(assert (=> start!72444 (= b_free!13601 (not b_next!13601))))

(declare-fun tp!47902 () Bool)

(declare-fun b_and!22705 () Bool)

(assert (=> start!72444 (= tp!47902 b_and!22705)))

(declare-fun b!839381 () Bool)

(declare-fun e!468469 () Bool)

(assert (=> b!839381 (= e!468469 (not true))))

(declare-fun e!468470 () Bool)

(assert (=> b!839381 e!468470))

(declare-fun c!91179 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839381 (= c!91179 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25669 0))(
  ( (V!25670 (val!7781 Int)) )
))
(declare-fun v!557 () V!25669)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47186 0))(
  ( (array!47187 (arr!22620 (Array (_ BitVec 32) (_ BitVec 64))) (size!23061 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47186)

(declare-datatypes ((Unit!28828 0))(
  ( (Unit!28829) )
))
(declare-fun lt!380712 () Unit!28828)

(declare-datatypes ((ValueCell!7294 0))(
  ( (ValueCellFull!7294 (v!10202 V!25669)) (EmptyCell!7294) )
))
(declare-datatypes ((array!47188 0))(
  ( (array!47189 (arr!22621 (Array (_ BitVec 32) ValueCell!7294)) (size!23062 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47188)

(declare-fun minValue!654 () V!25669)

(declare-fun zeroValue!654 () V!25669)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!263 (array!47186 array!47188 (_ BitVec 32) (_ BitVec 32) V!25669 V!25669 (_ BitVec 32) (_ BitVec 64) V!25669 (_ BitVec 32) Int) Unit!28828)

(assert (=> b!839381 (= lt!380712 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!263 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839383 () Bool)

(declare-fun res!570817 () Bool)

(assert (=> b!839383 (=> (not res!570817) (not e!468469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839383 (= res!570817 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!24800 () Bool)

(declare-fun mapRes!24800 () Bool)

(declare-fun tp!47903 () Bool)

(declare-fun e!468473 () Bool)

(assert (=> mapNonEmpty!24800 (= mapRes!24800 (and tp!47903 e!468473))))

(declare-fun mapKey!24800 () (_ BitVec 32))

(declare-fun mapValue!24800 () ValueCell!7294)

(declare-fun mapRest!24800 () (Array (_ BitVec 32) ValueCell!7294))

(assert (=> mapNonEmpty!24800 (= (arr!22621 _values!688) (store mapRest!24800 mapKey!24800 mapValue!24800))))

(declare-fun b!839384 () Bool)

(declare-fun res!570821 () Bool)

(assert (=> b!839384 (=> (not res!570821) (not e!468469))))

(assert (=> b!839384 (= res!570821 (and (= (select (arr!22620 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23061 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun bm!37033 () Bool)

(declare-datatypes ((tuple2!10324 0))(
  ( (tuple2!10325 (_1!5172 (_ BitVec 64)) (_2!5172 V!25669)) )
))
(declare-datatypes ((List!16157 0))(
  ( (Nil!16154) (Cons!16153 (h!17284 tuple2!10324) (t!22536 List!16157)) )
))
(declare-datatypes ((ListLongMap!9107 0))(
  ( (ListLongMap!9108 (toList!4569 List!16157)) )
))
(declare-fun call!37036 () ListLongMap!9107)

(declare-fun getCurrentListMapNoExtraKeys!2562 (array!47186 array!47188 (_ BitVec 32) (_ BitVec 32) V!25669 V!25669 (_ BitVec 32) Int) ListLongMap!9107)

(assert (=> bm!37033 (= call!37036 (getCurrentListMapNoExtraKeys!2562 _keys!868 (array!47189 (store (arr!22621 _values!688) i!612 (ValueCellFull!7294 v!557)) (size!23062 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839385 () Bool)

(declare-fun e!468474 () Bool)

(declare-fun e!468472 () Bool)

(assert (=> b!839385 (= e!468474 (and e!468472 mapRes!24800))))

(declare-fun condMapEmpty!24800 () Bool)

(declare-fun mapDefault!24800 () ValueCell!7294)

