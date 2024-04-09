; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73680 () Bool)

(assert start!73680)

(declare-fun b_free!14567 () Bool)

(declare-fun b_next!14567 () Bool)

(assert (=> start!73680 (= b_free!14567 (not b_next!14567))))

(declare-fun tp!51205 () Bool)

(declare-fun b_and!24131 () Bool)

(assert (=> start!73680 (= tp!51205 b_and!24131)))

(declare-fun b!862275 () Bool)

(declare-fun e!480431 () Bool)

(assert (=> b!862275 (= e!480431 true)))

(declare-datatypes ((V!27317 0))(
  ( (V!27318 (val!8399 Int)) )
))
(declare-datatypes ((tuple2!11104 0))(
  ( (tuple2!11105 (_1!5562 (_ BitVec 64)) (_2!5562 V!27317)) )
))
(declare-fun lt!389208 () tuple2!11104)

(declare-datatypes ((List!16975 0))(
  ( (Nil!16972) (Cons!16971 (h!18102 tuple2!11104) (t!23816 List!16975)) )
))
(declare-datatypes ((ListLongMap!9887 0))(
  ( (ListLongMap!9888 (toList!4959 List!16975)) )
))
(declare-fun lt!389213 () ListLongMap!9887)

(declare-fun lt!389212 () ListLongMap!9887)

(declare-fun lt!389214 () tuple2!11104)

(declare-fun +!2256 (ListLongMap!9887 tuple2!11104) ListLongMap!9887)

(assert (=> b!862275 (= lt!389213 (+!2256 (+!2256 lt!389212 lt!389214) lt!389208))))

(declare-fun v!557 () V!27317)

(declare-datatypes ((Unit!29416 0))(
  ( (Unit!29417) )
))
(declare-fun lt!389216 () Unit!29416)

(declare-fun lt!389211 () V!27317)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49552 0))(
  ( (array!49553 (arr!23803 (Array (_ BitVec 32) (_ BitVec 64))) (size!24244 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49552)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!473 (ListLongMap!9887 (_ BitVec 64) V!27317 (_ BitVec 64) V!27317) Unit!29416)

(assert (=> b!862275 (= lt!389216 (addCommutativeForDiffKeys!473 lt!389212 k!854 v!557 (select (arr!23803 _keys!868) from!1053) lt!389211))))

(declare-fun b!862276 () Bool)

(declare-fun res!586068 () Bool)

(declare-fun e!480435 () Bool)

(assert (=> b!862276 (=> (not res!586068) (not e!480435))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862276 (= res!586068 (and (= (select (arr!23803 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862277 () Bool)

(declare-fun res!586075 () Bool)

(assert (=> b!862277 (=> (not res!586075) (not e!480435))))

(assert (=> b!862277 (= res!586075 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24244 _keys!868))))))

(declare-fun b!862278 () Bool)

(declare-fun e!480429 () Bool)

(assert (=> b!862278 (= e!480429 e!480431)))

(declare-fun res!586073 () Bool)

(assert (=> b!862278 (=> res!586073 e!480431)))

(assert (=> b!862278 (= res!586073 (= k!854 (select (arr!23803 _keys!868) from!1053)))))

(assert (=> b!862278 (not (= (select (arr!23803 _keys!868) from!1053) k!854))))

(declare-fun lt!389203 () Unit!29416)

(declare-fun e!480427 () Unit!29416)

(assert (=> b!862278 (= lt!389203 e!480427)))

(declare-fun c!91989 () Bool)

(assert (=> b!862278 (= c!91989 (= (select (arr!23803 _keys!868) from!1053) k!854))))

(declare-fun lt!389207 () ListLongMap!9887)

(assert (=> b!862278 (= lt!389207 lt!389213)))

(declare-fun lt!389204 () ListLongMap!9887)

(assert (=> b!862278 (= lt!389213 (+!2256 lt!389204 lt!389214))))

(assert (=> b!862278 (= lt!389214 (tuple2!11105 (select (arr!23803 _keys!868) from!1053) lt!389211))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7912 0))(
  ( (ValueCellFull!7912 (v!10820 V!27317)) (EmptyCell!7912) )
))
(declare-datatypes ((array!49554 0))(
  ( (array!49555 (arr!23804 (Array (_ BitVec 32) ValueCell!7912)) (size!24245 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49554)

(declare-fun get!12574 (ValueCell!7912 V!27317) V!27317)

(declare-fun dynLambda!1136 (Int (_ BitVec 64)) V!27317)

(assert (=> b!862278 (= lt!389211 (get!12574 (select (arr!23804 _values!688) from!1053) (dynLambda!1136 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862279 () Bool)

(declare-fun res!586077 () Bool)

(assert (=> b!862279 (=> (not res!586077) (not e!480435))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49552 (_ BitVec 32)) Bool)

(assert (=> b!862279 (= res!586077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862280 () Bool)

(declare-fun res!586070 () Bool)

(assert (=> b!862280 (=> (not res!586070) (not e!480435))))

(declare-datatypes ((List!16976 0))(
  ( (Nil!16973) (Cons!16972 (h!18103 (_ BitVec 64)) (t!23817 List!16976)) )
))
(declare-fun arrayNoDuplicates!0 (array!49552 (_ BitVec 32) List!16976) Bool)

(assert (=> b!862280 (= res!586070 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16973))))

(declare-fun b!862281 () Bool)

(declare-fun res!586072 () Bool)

(assert (=> b!862281 (=> (not res!586072) (not e!480435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862281 (= res!586072 (validMask!0 mask!1196))))

(declare-fun b!862282 () Bool)

(declare-fun res!586074 () Bool)

(assert (=> b!862282 (=> (not res!586074) (not e!480435))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!862282 (= res!586074 (and (= (size!24245 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24244 _keys!868) (size!24245 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862283 () Bool)

(declare-fun e!480430 () Bool)

(declare-fun e!480432 () Bool)

(declare-fun mapRes!26654 () Bool)

(assert (=> b!862283 (= e!480430 (and e!480432 mapRes!26654))))

(declare-fun condMapEmpty!26654 () Bool)

(declare-fun mapDefault!26654 () ValueCell!7912)

