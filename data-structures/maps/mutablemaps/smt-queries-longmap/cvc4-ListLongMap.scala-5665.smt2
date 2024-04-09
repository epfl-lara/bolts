; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73806 () Bool)

(assert start!73806)

(declare-fun b_free!14693 () Bool)

(declare-fun b_next!14693 () Bool)

(assert (=> start!73806 (= b_free!14693 (not b_next!14693))))

(declare-fun tp!51584 () Bool)

(declare-fun b_and!24383 () Bool)

(assert (=> start!73806 (= tp!51584 b_and!24383)))

(declare-fun b!865425 () Bool)

(declare-fun e!482132 () Bool)

(declare-fun tp_is_empty!16829 () Bool)

(assert (=> b!865425 (= e!482132 tp_is_empty!16829)))

(declare-fun b!865426 () Bool)

(declare-fun e!482129 () Bool)

(declare-fun e!482133 () Bool)

(assert (=> b!865426 (= e!482129 e!482133)))

(declare-fun res!588150 () Bool)

(assert (=> b!865426 (=> res!588150 e!482133)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49802 0))(
  ( (array!49803 (arr!23928 (Array (_ BitVec 32) (_ BitVec 64))) (size!24369 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49802)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!865426 (= res!588150 (= k!854 (select (arr!23928 _keys!868) from!1053)))))

(assert (=> b!865426 (not (= (select (arr!23928 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29619 0))(
  ( (Unit!29620) )
))
(declare-fun lt!392229 () Unit!29619)

(declare-fun e!482130 () Unit!29619)

(assert (=> b!865426 (= lt!392229 e!482130)))

(declare-fun c!92178 () Bool)

(assert (=> b!865426 (= c!92178 (= (select (arr!23928 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27485 0))(
  ( (V!27486 (val!8462 Int)) )
))
(declare-datatypes ((tuple2!11218 0))(
  ( (tuple2!11219 (_1!5619 (_ BitVec 64)) (_2!5619 V!27485)) )
))
(declare-datatypes ((List!17082 0))(
  ( (Nil!17079) (Cons!17078 (h!18209 tuple2!11218) (t!24049 List!17082)) )
))
(declare-datatypes ((ListLongMap!10001 0))(
  ( (ListLongMap!10002 (toList!5016 List!17082)) )
))
(declare-fun lt!392236 () ListLongMap!10001)

(declare-fun lt!392226 () ListLongMap!10001)

(assert (=> b!865426 (= lt!392236 lt!392226)))

(declare-fun lt!392239 () ListLongMap!10001)

(declare-fun lt!392231 () tuple2!11218)

(declare-fun +!2312 (ListLongMap!10001 tuple2!11218) ListLongMap!10001)

(assert (=> b!865426 (= lt!392226 (+!2312 lt!392239 lt!392231))))

(declare-fun lt!392230 () V!27485)

(assert (=> b!865426 (= lt!392231 (tuple2!11219 (select (arr!23928 _keys!868) from!1053) lt!392230))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7975 0))(
  ( (ValueCellFull!7975 (v!10883 V!27485)) (EmptyCell!7975) )
))
(declare-datatypes ((array!49804 0))(
  ( (array!49805 (arr!23929 (Array (_ BitVec 32) ValueCell!7975)) (size!24370 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49804)

(declare-fun get!12660 (ValueCell!7975 V!27485) V!27485)

(declare-fun dynLambda!1180 (Int (_ BitVec 64)) V!27485)

(assert (=> b!865426 (= lt!392230 (get!12660 (select (arr!23929 _values!688) from!1053) (dynLambda!1180 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865427 () Bool)

(declare-fun res!588154 () Bool)

(declare-fun e!482134 () Bool)

(assert (=> b!865427 (=> (not res!588154) (not e!482134))))

(declare-datatypes ((List!17083 0))(
  ( (Nil!17080) (Cons!17079 (h!18210 (_ BitVec 64)) (t!24050 List!17083)) )
))
(declare-fun arrayNoDuplicates!0 (array!49802 (_ BitVec 32) List!17083) Bool)

(assert (=> b!865427 (= res!588154 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17080))))

(declare-fun b!865428 () Bool)

(declare-fun Unit!29621 () Unit!29619)

(assert (=> b!865428 (= e!482130 Unit!29621)))

(declare-fun lt!392228 () Unit!29619)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49802 (_ BitVec 32) (_ BitVec 32)) Unit!29619)

(assert (=> b!865428 (= lt!392228 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865428 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17080)))

(declare-fun lt!392238 () Unit!29619)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49802 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29619)

(assert (=> b!865428 (= lt!392238 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865428 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392234 () Unit!29619)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49802 (_ BitVec 64) (_ BitVec 32) List!17083) Unit!29619)

(assert (=> b!865428 (= lt!392234 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17080))))

(assert (=> b!865428 false))

(declare-fun b!865429 () Bool)

(declare-fun res!588146 () Bool)

(assert (=> b!865429 (=> (not res!588146) (not e!482134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865429 (= res!588146 (validKeyInArray!0 k!854))))

(declare-fun b!865430 () Bool)

(assert (=> b!865430 (= e!482133 true)))

(declare-fun lt!392240 () ListLongMap!10001)

(declare-fun lt!392232 () tuple2!11218)

(assert (=> b!865430 (= lt!392226 (+!2312 (+!2312 lt!392240 lt!392231) lt!392232))))

(declare-fun v!557 () V!27485)

(declare-fun lt!392233 () Unit!29619)

(declare-fun addCommutativeForDiffKeys!519 (ListLongMap!10001 (_ BitVec 64) V!27485 (_ BitVec 64) V!27485) Unit!29619)

(assert (=> b!865430 (= lt!392233 (addCommutativeForDiffKeys!519 lt!392240 k!854 v!557 (select (arr!23928 _keys!868) from!1053) lt!392230))))

(declare-fun b!865431 () Bool)

(declare-fun res!588155 () Bool)

(assert (=> b!865431 (=> (not res!588155) (not e!482134))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!865431 (= res!588155 (and (= (size!24370 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24369 _keys!868) (size!24370 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865432 () Bool)

(declare-fun Unit!29622 () Unit!29619)

(assert (=> b!865432 (= e!482130 Unit!29622)))

(declare-fun mapNonEmpty!26843 () Bool)

(declare-fun mapRes!26843 () Bool)

(declare-fun tp!51583 () Bool)

(assert (=> mapNonEmpty!26843 (= mapRes!26843 (and tp!51583 e!482132))))

(declare-fun mapRest!26843 () (Array (_ BitVec 32) ValueCell!7975))

(declare-fun mapValue!26843 () ValueCell!7975)

(declare-fun mapKey!26843 () (_ BitVec 32))

(assert (=> mapNonEmpty!26843 (= (arr!23929 _values!688) (store mapRest!26843 mapKey!26843 mapValue!26843))))

(declare-fun b!865433 () Bool)

(declare-fun e!482131 () Bool)

(declare-fun e!482136 () Bool)

(assert (=> b!865433 (= e!482131 (and e!482136 mapRes!26843))))

(declare-fun condMapEmpty!26843 () Bool)

(declare-fun mapDefault!26843 () ValueCell!7975)

