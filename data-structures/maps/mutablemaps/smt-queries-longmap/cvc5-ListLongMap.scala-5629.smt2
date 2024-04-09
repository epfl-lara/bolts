; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73586 () Bool)

(assert start!73586)

(declare-fun b_free!14473 () Bool)

(declare-fun b_next!14473 () Bool)

(assert (=> start!73586 (= b_free!14473 (not b_next!14473))))

(declare-fun tp!50923 () Bool)

(declare-fun b_and!23943 () Bool)

(assert (=> start!73586 (= tp!50923 b_and!23943)))

(declare-fun b!859981 () Bool)

(declare-fun res!584515 () Bool)

(declare-fun e!479253 () Bool)

(assert (=> b!859981 (=> (not res!584515) (not e!479253))))

(declare-datatypes ((array!49376 0))(
  ( (array!49377 (arr!23715 (Array (_ BitVec 32) (_ BitVec 64))) (size!24156 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49376)

(declare-datatypes ((List!16896 0))(
  ( (Nil!16893) (Cons!16892 (h!18023 (_ BitVec 64)) (t!23643 List!16896)) )
))
(declare-fun arrayNoDuplicates!0 (array!49376 (_ BitVec 32) List!16896) Bool)

(assert (=> b!859981 (= res!584515 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16893))))

(declare-fun b!859982 () Bool)

(declare-fun res!584512 () Bool)

(assert (=> b!859982 (=> (not res!584512) (not e!479253))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27193 0))(
  ( (V!27194 (val!8352 Int)) )
))
(declare-datatypes ((ValueCell!7865 0))(
  ( (ValueCellFull!7865 (v!10773 V!27193)) (EmptyCell!7865) )
))
(declare-datatypes ((array!49378 0))(
  ( (array!49379 (arr!23716 (Array (_ BitVec 32) ValueCell!7865)) (size!24157 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49378)

(assert (=> b!859982 (= res!584512 (and (= (size!24157 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24156 _keys!868) (size!24157 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859983 () Bool)

(declare-fun res!584508 () Bool)

(assert (=> b!859983 (=> (not res!584508) (not e!479253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859983 (= res!584508 (validMask!0 mask!1196))))

(declare-fun b!859984 () Bool)

(declare-fun e!479256 () Bool)

(declare-fun e!479254 () Bool)

(assert (=> b!859984 (= e!479256 (not e!479254))))

(declare-fun res!584510 () Bool)

(assert (=> b!859984 (=> res!584510 e!479254)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859984 (= res!584510 (not (validKeyInArray!0 (select (arr!23715 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11026 0))(
  ( (tuple2!11027 (_1!5523 (_ BitVec 64)) (_2!5523 V!27193)) )
))
(declare-datatypes ((List!16897 0))(
  ( (Nil!16894) (Cons!16893 (h!18024 tuple2!11026) (t!23644 List!16897)) )
))
(declare-datatypes ((ListLongMap!9809 0))(
  ( (ListLongMap!9810 (toList!4920 List!16897)) )
))
(declare-fun lt!387604 () ListLongMap!9809)

(declare-fun lt!387607 () ListLongMap!9809)

(assert (=> b!859984 (= lt!387604 lt!387607)))

(declare-fun lt!387605 () ListLongMap!9809)

(declare-fun v!557 () V!27193)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2221 (ListLongMap!9809 tuple2!11026) ListLongMap!9809)

(assert (=> b!859984 (= lt!387607 (+!2221 lt!387605 (tuple2!11027 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!387608 () array!49378)

(declare-fun minValue!654 () V!27193)

(declare-fun zeroValue!654 () V!27193)

(declare-fun getCurrentListMapNoExtraKeys!2900 (array!49376 array!49378 (_ BitVec 32) (_ BitVec 32) V!27193 V!27193 (_ BitVec 32) Int) ListLongMap!9809)

(assert (=> b!859984 (= lt!387604 (getCurrentListMapNoExtraKeys!2900 _keys!868 lt!387608 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859984 (= lt!387605 (getCurrentListMapNoExtraKeys!2900 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29286 0))(
  ( (Unit!29287) )
))
(declare-fun lt!387601 () Unit!29286)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!477 (array!49376 array!49378 (_ BitVec 32) (_ BitVec 32) V!27193 V!27193 (_ BitVec 32) (_ BitVec 64) V!27193 (_ BitVec 32) Int) Unit!29286)

(assert (=> b!859984 (= lt!387601 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!477 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859985 () Bool)

(declare-fun e!479249 () Bool)

(declare-fun e!479251 () Bool)

(declare-fun mapRes!26513 () Bool)

(assert (=> b!859985 (= e!479249 (and e!479251 mapRes!26513))))

(declare-fun condMapEmpty!26513 () Bool)

(declare-fun mapDefault!26513 () ValueCell!7865)

