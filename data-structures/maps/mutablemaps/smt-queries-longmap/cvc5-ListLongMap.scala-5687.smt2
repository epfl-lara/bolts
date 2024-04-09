; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73934 () Bool)

(assert start!73934)

(declare-fun b_free!14821 () Bool)

(declare-fun b_next!14821 () Bool)

(assert (=> start!73934 (= b_free!14821 (not b_next!14821))))

(declare-fun tp!51968 () Bool)

(declare-fun b_and!24591 () Bool)

(assert (=> start!73934 (= tp!51968 b_and!24591)))

(declare-fun b!868281 () Bool)

(declare-fun e!483638 () Bool)

(declare-fun e!483639 () Bool)

(assert (=> b!868281 (= e!483638 e!483639)))

(declare-fun res!590111 () Bool)

(assert (=> b!868281 (=> (not res!590111) (not e!483639))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868281 (= res!590111 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50050 0))(
  ( (array!50051 (arr!24052 (Array (_ BitVec 32) (_ BitVec 64))) (size!24493 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50050)

(declare-datatypes ((V!27657 0))(
  ( (V!27658 (val!8526 Int)) )
))
(declare-fun minValue!654 () V!27657)

(declare-fun zeroValue!654 () V!27657)

(declare-datatypes ((ValueCell!8039 0))(
  ( (ValueCellFull!8039 (v!10947 V!27657)) (EmptyCell!8039) )
))
(declare-datatypes ((array!50052 0))(
  ( (array!50053 (arr!24053 (Array (_ BitVec 32) ValueCell!8039)) (size!24494 (_ BitVec 32))) )
))
(declare-fun lt!394413 () array!50052)

(declare-datatypes ((tuple2!11316 0))(
  ( (tuple2!11317 (_1!5668 (_ BitVec 64)) (_2!5668 V!27657)) )
))
(declare-datatypes ((List!17177 0))(
  ( (Nil!17174) (Cons!17173 (h!18304 tuple2!11316) (t!24222 List!17177)) )
))
(declare-datatypes ((ListLongMap!10099 0))(
  ( (ListLongMap!10100 (toList!5065 List!17177)) )
))
(declare-fun lt!394411 () ListLongMap!10099)

(declare-fun getCurrentListMapNoExtraKeys!3029 (array!50050 array!50052 (_ BitVec 32) (_ BitVec 32) V!27657 V!27657 (_ BitVec 32) Int) ListLongMap!10099)

(assert (=> b!868281 (= lt!394411 (getCurrentListMapNoExtraKeys!3029 _keys!868 lt!394413 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27657)

(declare-fun _values!688 () array!50052)

(assert (=> b!868281 (= lt!394413 (array!50053 (store (arr!24053 _values!688) i!612 (ValueCellFull!8039 v!557)) (size!24494 _values!688)))))

(declare-fun lt!394412 () ListLongMap!10099)

(assert (=> b!868281 (= lt!394412 (getCurrentListMapNoExtraKeys!3029 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868282 () Bool)

(declare-fun res!590117 () Bool)

(assert (=> b!868282 (=> (not res!590117) (not e!483638))))

(declare-datatypes ((List!17178 0))(
  ( (Nil!17175) (Cons!17174 (h!18305 (_ BitVec 64)) (t!24223 List!17178)) )
))
(declare-fun arrayNoDuplicates!0 (array!50050 (_ BitVec 32) List!17178) Bool)

(assert (=> b!868282 (= res!590117 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17175))))

(declare-fun b!868283 () Bool)

(assert (=> b!868283 (= e!483639 (not true))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2355 (ListLongMap!10099 tuple2!11316) ListLongMap!10099)

(assert (=> b!868283 (= (getCurrentListMapNoExtraKeys!3029 _keys!868 lt!394413 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2355 (getCurrentListMapNoExtraKeys!3029 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11317 k!854 v!557)))))

(declare-datatypes ((Unit!29760 0))(
  ( (Unit!29761) )
))
(declare-fun lt!394410 () Unit!29760)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!586 (array!50050 array!50052 (_ BitVec 32) (_ BitVec 32) V!27657 V!27657 (_ BitVec 32) (_ BitVec 64) V!27657 (_ BitVec 32) Int) Unit!29760)

(assert (=> b!868283 (= lt!394410 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!586 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868284 () Bool)

(declare-fun e!483637 () Bool)

(declare-fun e!483636 () Bool)

(declare-fun mapRes!27035 () Bool)

(assert (=> b!868284 (= e!483637 (and e!483636 mapRes!27035))))

(declare-fun condMapEmpty!27035 () Bool)

(declare-fun mapDefault!27035 () ValueCell!8039)

