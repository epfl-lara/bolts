; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73574 () Bool)

(assert start!73574)

(declare-fun b_free!14461 () Bool)

(declare-fun b_next!14461 () Bool)

(assert (=> start!73574 (= b_free!14461 (not b_next!14461))))

(declare-fun tp!50888 () Bool)

(declare-fun b_and!23919 () Bool)

(assert (=> start!73574 (= tp!50888 b_and!23919)))

(declare-fun mapNonEmpty!26495 () Bool)

(declare-fun mapRes!26495 () Bool)

(declare-fun tp!50887 () Bool)

(declare-fun e!479091 () Bool)

(assert (=> mapNonEmpty!26495 (= mapRes!26495 (and tp!50887 e!479091))))

(declare-fun mapKey!26495 () (_ BitVec 32))

(declare-datatypes ((V!27177 0))(
  ( (V!27178 (val!8346 Int)) )
))
(declare-datatypes ((ValueCell!7859 0))(
  ( (ValueCellFull!7859 (v!10767 V!27177)) (EmptyCell!7859) )
))
(declare-fun mapValue!26495 () ValueCell!7859)

(declare-fun mapRest!26495 () (Array (_ BitVec 32) ValueCell!7859))

(declare-datatypes ((array!49352 0))(
  ( (array!49353 (arr!23703 (Array (_ BitVec 32) ValueCell!7859)) (size!24144 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49352)

(assert (=> mapNonEmpty!26495 (= (arr!23703 _values!688) (store mapRest!26495 mapKey!26495 mapValue!26495))))

(declare-fun b!859663 () Bool)

(declare-fun res!584264 () Bool)

(declare-fun e!479092 () Bool)

(assert (=> b!859663 (=> (not res!584264) (not e!479092))))

(declare-datatypes ((array!49354 0))(
  ( (array!49355 (arr!23704 (Array (_ BitVec 32) (_ BitVec 64))) (size!24145 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49354)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49354 (_ BitVec 32)) Bool)

(assert (=> b!859663 (= res!584264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859664 () Bool)

(declare-fun res!584265 () Bool)

(assert (=> b!859664 (=> (not res!584265) (not e!479092))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!859664 (= res!584265 (and (= (size!24144 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24145 _keys!868) (size!24144 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859665 () Bool)

(declare-fun e!479086 () Bool)

(declare-fun e!479093 () Bool)

(assert (=> b!859665 (= e!479086 (not e!479093))))

(declare-fun res!584258 () Bool)

(assert (=> b!859665 (=> res!584258 e!479093)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859665 (= res!584258 (not (validKeyInArray!0 (select (arr!23704 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11014 0))(
  ( (tuple2!11015 (_1!5517 (_ BitVec 64)) (_2!5517 V!27177)) )
))
(declare-datatypes ((List!16887 0))(
  ( (Nil!16884) (Cons!16883 (h!18014 tuple2!11014) (t!23622 List!16887)) )
))
(declare-datatypes ((ListLongMap!9797 0))(
  ( (ListLongMap!9798 (toList!4914 List!16887)) )
))
(declare-fun lt!387421 () ListLongMap!9797)

(declare-fun lt!387423 () ListLongMap!9797)

(assert (=> b!859665 (= lt!387421 lt!387423)))

(declare-fun lt!387426 () ListLongMap!9797)

(declare-fun v!557 () V!27177)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2217 (ListLongMap!9797 tuple2!11014) ListLongMap!9797)

(assert (=> b!859665 (= lt!387423 (+!2217 lt!387426 (tuple2!11015 k!854 v!557)))))

(declare-fun lt!387429 () array!49352)

(declare-fun minValue!654 () V!27177)

(declare-fun zeroValue!654 () V!27177)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2894 (array!49354 array!49352 (_ BitVec 32) (_ BitVec 32) V!27177 V!27177 (_ BitVec 32) Int) ListLongMap!9797)

(assert (=> b!859665 (= lt!387421 (getCurrentListMapNoExtraKeys!2894 _keys!868 lt!387429 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859665 (= lt!387426 (getCurrentListMapNoExtraKeys!2894 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29278 0))(
  ( (Unit!29279) )
))
(declare-fun lt!387420 () Unit!29278)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!474 (array!49354 array!49352 (_ BitVec 32) (_ BitVec 32) V!27177 V!27177 (_ BitVec 32) (_ BitVec 64) V!27177 (_ BitVec 32) Int) Unit!29278)

(assert (=> b!859665 (= lt!387420 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!474 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859666 () Bool)

(declare-fun e!479088 () Bool)

(declare-fun e!479089 () Bool)

(assert (=> b!859666 (= e!479088 (and e!479089 mapRes!26495))))

(declare-fun condMapEmpty!26495 () Bool)

(declare-fun mapDefault!26495 () ValueCell!7859)

