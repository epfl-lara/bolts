; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72378 () Bool)

(assert start!72378)

(declare-fun b_free!13535 () Bool)

(declare-fun b_next!13535 () Bool)

(assert (=> start!72378 (= b_free!13535 (not b_next!13535))))

(declare-fun tp!47704 () Bool)

(declare-fun b_and!22639 () Bool)

(assert (=> start!72378 (= tp!47704 b_and!22639)))

(declare-fun b!838094 () Bool)

(declare-fun res!570028 () Bool)

(declare-fun e!467880 () Bool)

(assert (=> b!838094 (=> (not res!570028) (not e!467880))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47056 0))(
  ( (array!47057 (arr!22555 (Array (_ BitVec 32) (_ BitVec 64))) (size!22996 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47056)

(assert (=> b!838094 (= res!570028 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!22996 _keys!868))))))

(declare-fun b!838095 () Bool)

(declare-fun e!467876 () Bool)

(declare-datatypes ((V!25581 0))(
  ( (V!25582 (val!7748 Int)) )
))
(declare-datatypes ((tuple2!10266 0))(
  ( (tuple2!10267 (_1!5143 (_ BitVec 64)) (_2!5143 V!25581)) )
))
(declare-datatypes ((List!16106 0))(
  ( (Nil!16103) (Cons!16102 (h!17233 tuple2!10266) (t!22485 List!16106)) )
))
(declare-datatypes ((ListLongMap!9049 0))(
  ( (ListLongMap!9050 (toList!4540 List!16106)) )
))
(declare-fun call!36838 () ListLongMap!9049)

(declare-fun call!36839 () ListLongMap!9049)

(assert (=> b!838095 (= e!467876 (= call!36838 call!36839))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!36835 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7261 0))(
  ( (ValueCellFull!7261 (v!10169 V!25581)) (EmptyCell!7261) )
))
(declare-datatypes ((array!47058 0))(
  ( (array!47059 (arr!22556 (Array (_ BitVec 32) ValueCell!7261)) (size!22997 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47058)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25581)

(declare-fun zeroValue!654 () V!25581)

(declare-fun getCurrentListMapNoExtraKeys!2535 (array!47056 array!47058 (_ BitVec 32) (_ BitVec 32) V!25581 V!25581 (_ BitVec 32) Int) ListLongMap!9049)

(assert (=> bm!36835 (= call!36839 (getCurrentListMapNoExtraKeys!2535 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!25581)

(declare-fun bm!36836 () Bool)

(assert (=> bm!36836 (= call!36838 (getCurrentListMapNoExtraKeys!2535 _keys!868 (array!47059 (store (arr!22556 _values!688) i!612 (ValueCellFull!7261 v!557)) (size!22997 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24701 () Bool)

(declare-fun mapRes!24701 () Bool)

(declare-fun tp!47705 () Bool)

(declare-fun e!467879 () Bool)

(assert (=> mapNonEmpty!24701 (= mapRes!24701 (and tp!47705 e!467879))))

(declare-fun mapValue!24701 () ValueCell!7261)

(declare-fun mapKey!24701 () (_ BitVec 32))

(declare-fun mapRest!24701 () (Array (_ BitVec 32) ValueCell!7261))

(assert (=> mapNonEmpty!24701 (= (arr!22556 _values!688) (store mapRest!24701 mapKey!24701 mapValue!24701))))

(declare-fun b!838097 () Bool)

(declare-fun res!570026 () Bool)

(assert (=> b!838097 (=> (not res!570026) (not e!467880))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838097 (= res!570026 (validKeyInArray!0 k!854))))

(declare-fun b!838098 () Bool)

(declare-fun res!570023 () Bool)

(assert (=> b!838098 (=> (not res!570023) (not e!467880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47056 (_ BitVec 32)) Bool)

(assert (=> b!838098 (= res!570023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838099 () Bool)

(declare-fun e!467878 () Bool)

(declare-fun e!467877 () Bool)

(assert (=> b!838099 (= e!467878 (and e!467877 mapRes!24701))))

(declare-fun condMapEmpty!24701 () Bool)

(declare-fun mapDefault!24701 () ValueCell!7261)

