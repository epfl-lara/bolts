; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73728 () Bool)

(assert start!73728)

(declare-fun b_free!14615 () Bool)

(declare-fun b_next!14615 () Bool)

(assert (=> start!73728 (= b_free!14615 (not b_next!14615))))

(declare-fun tp!51350 () Bool)

(declare-fun b_and!24227 () Bool)

(assert (=> start!73728 (= tp!51350 b_and!24227)))

(declare-fun b!863475 () Bool)

(declare-fun e!481080 () Bool)

(assert (=> b!863475 (= e!481080 true)))

(declare-datatypes ((V!27381 0))(
  ( (V!27382 (val!8423 Int)) )
))
(declare-datatypes ((tuple2!11146 0))(
  ( (tuple2!11147 (_1!5583 (_ BitVec 64)) (_2!5583 V!27381)) )
))
(declare-datatypes ((List!17015 0))(
  ( (Nil!17012) (Cons!17011 (h!18142 tuple2!11146) (t!23904 List!17015)) )
))
(declare-datatypes ((ListLongMap!9929 0))(
  ( (ListLongMap!9930 (toList!4980 List!17015)) )
))
(declare-fun lt!390359 () ListLongMap!9929)

(declare-fun lt!390363 () ListLongMap!9929)

(declare-fun lt!390364 () tuple2!11146)

(declare-fun lt!390356 () tuple2!11146)

(declare-fun +!2277 (ListLongMap!9929 tuple2!11146) ListLongMap!9929)

(assert (=> b!863475 (= lt!390363 (+!2277 (+!2277 lt!390359 lt!390356) lt!390364))))

(declare-datatypes ((Unit!29488 0))(
  ( (Unit!29489) )
))
(declare-fun lt!390357 () Unit!29488)

(declare-fun v!557 () V!27381)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49646 0))(
  ( (array!49647 (arr!23850 (Array (_ BitVec 32) (_ BitVec 64))) (size!24291 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49646)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lt!390362 () V!27381)

(declare-fun addCommutativeForDiffKeys!490 (ListLongMap!9929 (_ BitVec 64) V!27381 (_ BitVec 64) V!27381) Unit!29488)

(assert (=> b!863475 (= lt!390357 (addCommutativeForDiffKeys!490 lt!390359 k!854 v!557 (select (arr!23850 _keys!868) from!1053) lt!390362))))

(declare-fun mapIsEmpty!26726 () Bool)

(declare-fun mapRes!26726 () Bool)

(assert (=> mapIsEmpty!26726 mapRes!26726))

(declare-fun b!863477 () Bool)

(declare-fun res!586867 () Bool)

(declare-fun e!481078 () Bool)

(assert (=> b!863477 (=> (not res!586867) (not e!481078))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49646 (_ BitVec 32)) Bool)

(assert (=> b!863477 (= res!586867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863478 () Bool)

(declare-fun res!586863 () Bool)

(assert (=> b!863478 (=> (not res!586863) (not e!481078))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7936 0))(
  ( (ValueCellFull!7936 (v!10844 V!27381)) (EmptyCell!7936) )
))
(declare-datatypes ((array!49648 0))(
  ( (array!49649 (arr!23851 (Array (_ BitVec 32) ValueCell!7936)) (size!24292 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49648)

(assert (=> b!863478 (= res!586863 (and (= (size!24292 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24291 _keys!868) (size!24292 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863479 () Bool)

(declare-fun e!481082 () Unit!29488)

(declare-fun Unit!29490 () Unit!29488)

(assert (=> b!863479 (= e!481082 Unit!29490)))

(declare-fun b!863480 () Bool)

(declare-fun e!481081 () Bool)

(declare-fun tp_is_empty!16751 () Bool)

(assert (=> b!863480 (= e!481081 tp_is_empty!16751)))

(declare-fun mapNonEmpty!26726 () Bool)

(declare-fun tp!51349 () Bool)

(assert (=> mapNonEmpty!26726 (= mapRes!26726 (and tp!51349 e!481081))))

(declare-fun mapValue!26726 () ValueCell!7936)

(declare-fun mapRest!26726 () (Array (_ BitVec 32) ValueCell!7936))

(declare-fun mapKey!26726 () (_ BitVec 32))

(assert (=> mapNonEmpty!26726 (= (arr!23851 _values!688) (store mapRest!26726 mapKey!26726 mapValue!26726))))

(declare-fun b!863481 () Bool)

(declare-fun e!481077 () Bool)

(assert (=> b!863481 (= e!481077 tp_is_empty!16751)))

(declare-fun b!863482 () Bool)

(declare-fun res!586860 () Bool)

(assert (=> b!863482 (=> (not res!586860) (not e!481078))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!863482 (= res!586860 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24291 _keys!868))))))

(declare-fun b!863483 () Bool)

(declare-fun e!481075 () Bool)

(declare-fun e!481076 () Bool)

(assert (=> b!863483 (= e!481075 (not e!481076))))

(declare-fun res!586869 () Bool)

(assert (=> b!863483 (=> res!586869 e!481076)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863483 (= res!586869 (not (validKeyInArray!0 (select (arr!23850 _keys!868) from!1053))))))

(declare-fun lt!390368 () ListLongMap!9929)

(declare-fun lt!390355 () ListLongMap!9929)

(assert (=> b!863483 (= lt!390368 lt!390355)))

(assert (=> b!863483 (= lt!390355 (+!2277 lt!390359 lt!390364))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!390365 () array!49648)

(declare-fun minValue!654 () V!27381)

(declare-fun zeroValue!654 () V!27381)

(declare-fun getCurrentListMapNoExtraKeys!2955 (array!49646 array!49648 (_ BitVec 32) (_ BitVec 32) V!27381 V!27381 (_ BitVec 32) Int) ListLongMap!9929)

(assert (=> b!863483 (= lt!390368 (getCurrentListMapNoExtraKeys!2955 _keys!868 lt!390365 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863483 (= lt!390364 (tuple2!11147 k!854 v!557))))

(assert (=> b!863483 (= lt!390359 (getCurrentListMapNoExtraKeys!2955 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390361 () Unit!29488)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!524 (array!49646 array!49648 (_ BitVec 32) (_ BitVec 32) V!27381 V!27381 (_ BitVec 32) (_ BitVec 64) V!27381 (_ BitVec 32) Int) Unit!29488)

(assert (=> b!863483 (= lt!390361 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!524 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863484 () Bool)

(declare-fun res!586859 () Bool)

(assert (=> b!863484 (=> (not res!586859) (not e!481078))))

(declare-datatypes ((List!17016 0))(
  ( (Nil!17013) (Cons!17012 (h!18143 (_ BitVec 64)) (t!23905 List!17016)) )
))
(declare-fun arrayNoDuplicates!0 (array!49646 (_ BitVec 32) List!17016) Bool)

(assert (=> b!863484 (= res!586859 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17013))))

(declare-fun b!863485 () Bool)

(declare-fun res!586861 () Bool)

(assert (=> b!863485 (=> (not res!586861) (not e!481078))))

(assert (=> b!863485 (= res!586861 (and (= (select (arr!23850 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!863486 () Bool)

(declare-fun e!481079 () Bool)

(assert (=> b!863486 (= e!481079 (and e!481077 mapRes!26726))))

(declare-fun condMapEmpty!26726 () Bool)

(declare-fun mapDefault!26726 () ValueCell!7936)

