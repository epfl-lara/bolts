; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73758 () Bool)

(assert start!73758)

(declare-fun b_free!14645 () Bool)

(declare-fun b_next!14645 () Bool)

(assert (=> start!73758 (= b_free!14645 (not b_next!14645))))

(declare-fun tp!51440 () Bool)

(declare-fun b_and!24287 () Bool)

(assert (=> start!73758 (= tp!51440 b_and!24287)))

(declare-fun b!864225 () Bool)

(declare-fun e!481486 () Bool)

(declare-fun e!481488 () Bool)

(assert (=> b!864225 (= e!481486 (not e!481488))))

(declare-fun res!587356 () Bool)

(assert (=> b!864225 (=> res!587356 e!481488)))

(declare-datatypes ((array!49706 0))(
  ( (array!49707 (arr!23880 (Array (_ BitVec 32) (_ BitVec 64))) (size!24321 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49706)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864225 (= res!587356 (not (validKeyInArray!0 (select (arr!23880 _keys!868) from!1053))))))

(declare-datatypes ((V!27421 0))(
  ( (V!27422 (val!8438 Int)) )
))
(declare-datatypes ((tuple2!11176 0))(
  ( (tuple2!11177 (_1!5598 (_ BitVec 64)) (_2!5598 V!27421)) )
))
(declare-datatypes ((List!17043 0))(
  ( (Nil!17040) (Cons!17039 (h!18170 tuple2!11176) (t!23962 List!17043)) )
))
(declare-datatypes ((ListLongMap!9959 0))(
  ( (ListLongMap!9960 (toList!4995 List!17043)) )
))
(declare-fun lt!391084 () ListLongMap!9959)

(declare-fun lt!391079 () ListLongMap!9959)

(assert (=> b!864225 (= lt!391084 lt!391079)))

(declare-fun lt!391075 () ListLongMap!9959)

(declare-fun lt!391078 () tuple2!11176)

(declare-fun +!2292 (ListLongMap!9959 tuple2!11176) ListLongMap!9959)

(assert (=> b!864225 (= lt!391079 (+!2292 lt!391075 lt!391078))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7951 0))(
  ( (ValueCellFull!7951 (v!10859 V!27421)) (EmptyCell!7951) )
))
(declare-datatypes ((array!49708 0))(
  ( (array!49709 (arr!23881 (Array (_ BitVec 32) ValueCell!7951)) (size!24322 (_ BitVec 32))) )
))
(declare-fun lt!391076 () array!49708)

(declare-fun minValue!654 () V!27421)

(declare-fun zeroValue!654 () V!27421)

(declare-fun getCurrentListMapNoExtraKeys!2968 (array!49706 array!49708 (_ BitVec 32) (_ BitVec 32) V!27421 V!27421 (_ BitVec 32) Int) ListLongMap!9959)

(assert (=> b!864225 (= lt!391084 (getCurrentListMapNoExtraKeys!2968 _keys!868 lt!391076 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27421)

(assert (=> b!864225 (= lt!391078 (tuple2!11177 k!854 v!557))))

(declare-fun _values!688 () array!49708)

(assert (=> b!864225 (= lt!391075 (getCurrentListMapNoExtraKeys!2968 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29539 0))(
  ( (Unit!29540) )
))
(declare-fun lt!391083 () Unit!29539)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!536 (array!49706 array!49708 (_ BitVec 32) (_ BitVec 32) V!27421 V!27421 (_ BitVec 32) (_ BitVec 64) V!27421 (_ BitVec 32) Int) Unit!29539)

(assert (=> b!864225 (= lt!391083 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!536 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864226 () Bool)

(declare-fun e!481483 () Bool)

(declare-fun e!481487 () Bool)

(declare-fun mapRes!26771 () Bool)

(assert (=> b!864226 (= e!481483 (and e!481487 mapRes!26771))))

(declare-fun condMapEmpty!26771 () Bool)

(declare-fun mapDefault!26771 () ValueCell!7951)

