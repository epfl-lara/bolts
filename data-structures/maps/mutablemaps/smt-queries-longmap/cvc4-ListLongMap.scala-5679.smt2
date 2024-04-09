; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73890 () Bool)

(assert start!73890)

(declare-fun b_free!14777 () Bool)

(declare-fun b_next!14777 () Bool)

(assert (=> start!73890 (= b_free!14777 (not b_next!14777))))

(declare-fun tp!51836 () Bool)

(declare-fun b_and!24547 () Bool)

(assert (=> start!73890 (= tp!51836 b_and!24547)))

(declare-fun b!867489 () Bool)

(declare-fun res!589524 () Bool)

(declare-fun e!483241 () Bool)

(assert (=> b!867489 (=> (not res!589524) (not e!483241))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49964 0))(
  ( (array!49965 (arr!24009 (Array (_ BitVec 32) (_ BitVec 64))) (size!24450 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49964)

(assert (=> b!867489 (= res!589524 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24450 _keys!868))))))

(declare-fun mapNonEmpty!26969 () Bool)

(declare-fun mapRes!26969 () Bool)

(declare-fun tp!51835 () Bool)

(declare-fun e!483240 () Bool)

(assert (=> mapNonEmpty!26969 (= mapRes!26969 (and tp!51835 e!483240))))

(declare-datatypes ((V!27597 0))(
  ( (V!27598 (val!8504 Int)) )
))
(declare-datatypes ((ValueCell!8017 0))(
  ( (ValueCellFull!8017 (v!10925 V!27597)) (EmptyCell!8017) )
))
(declare-fun mapRest!26969 () (Array (_ BitVec 32) ValueCell!8017))

(declare-fun mapKey!26969 () (_ BitVec 32))

(declare-fun mapValue!26969 () ValueCell!8017)

(declare-datatypes ((array!49966 0))(
  ( (array!49967 (arr!24010 (Array (_ BitVec 32) ValueCell!8017)) (size!24451 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49966)

(assert (=> mapNonEmpty!26969 (= (arr!24010 _values!688) (store mapRest!26969 mapKey!26969 mapValue!26969))))

(declare-fun mapIsEmpty!26969 () Bool)

(assert (=> mapIsEmpty!26969 mapRes!26969))

(declare-fun b!867491 () Bool)

(declare-fun res!589523 () Bool)

(assert (=> b!867491 (=> (not res!589523) (not e!483241))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867491 (= res!589523 (validMask!0 mask!1196))))

(declare-fun b!867492 () Bool)

(declare-fun res!589522 () Bool)

(assert (=> b!867492 (=> (not res!589522) (not e!483241))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!867492 (= res!589522 (and (= (select (arr!24009 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!867493 () Bool)

(declare-fun e!483239 () Bool)

(assert (=> b!867493 (= e!483239 (not true))))

(declare-fun v!557 () V!27597)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27597)

(declare-fun zeroValue!654 () V!27597)

(declare-fun lt!394146 () array!49966)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11288 0))(
  ( (tuple2!11289 (_1!5654 (_ BitVec 64)) (_2!5654 V!27597)) )
))
(declare-datatypes ((List!17150 0))(
  ( (Nil!17147) (Cons!17146 (h!18277 tuple2!11288) (t!24195 List!17150)) )
))
(declare-datatypes ((ListLongMap!10071 0))(
  ( (ListLongMap!10072 (toList!5051 List!17150)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3015 (array!49964 array!49966 (_ BitVec 32) (_ BitVec 32) V!27597 V!27597 (_ BitVec 32) Int) ListLongMap!10071)

(declare-fun +!2345 (ListLongMap!10071 tuple2!11288) ListLongMap!10071)

(assert (=> b!867493 (= (getCurrentListMapNoExtraKeys!3015 _keys!868 lt!394146 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2345 (getCurrentListMapNoExtraKeys!3015 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11289 k!854 v!557)))))

(declare-datatypes ((Unit!29740 0))(
  ( (Unit!29741) )
))
(declare-fun lt!394147 () Unit!29740)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!576 (array!49964 array!49966 (_ BitVec 32) (_ BitVec 32) V!27597 V!27597 (_ BitVec 32) (_ BitVec 64) V!27597 (_ BitVec 32) Int) Unit!29740)

(assert (=> b!867493 (= lt!394147 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!576 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867494 () Bool)

(declare-fun e!483243 () Bool)

(declare-fun tp_is_empty!16913 () Bool)

(assert (=> b!867494 (= e!483243 tp_is_empty!16913)))

(declare-fun b!867495 () Bool)

(assert (=> b!867495 (= e!483241 e!483239)))

(declare-fun res!589519 () Bool)

(assert (=> b!867495 (=> (not res!589519) (not e!483239))))

(assert (=> b!867495 (= res!589519 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394149 () ListLongMap!10071)

(assert (=> b!867495 (= lt!394149 (getCurrentListMapNoExtraKeys!3015 _keys!868 lt!394146 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867495 (= lt!394146 (array!49967 (store (arr!24010 _values!688) i!612 (ValueCellFull!8017 v!557)) (size!24451 _values!688)))))

(declare-fun lt!394148 () ListLongMap!10071)

(assert (=> b!867495 (= lt!394148 (getCurrentListMapNoExtraKeys!3015 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867496 () Bool)

(declare-fun res!589516 () Bool)

(assert (=> b!867496 (=> (not res!589516) (not e!483241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49964 (_ BitVec 32)) Bool)

(assert (=> b!867496 (= res!589516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!589520 () Bool)

(assert (=> start!73890 (=> (not res!589520) (not e!483241))))

(assert (=> start!73890 (= res!589520 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24450 _keys!868))))))

(assert (=> start!73890 e!483241))

(assert (=> start!73890 tp_is_empty!16913))

(assert (=> start!73890 true))

(assert (=> start!73890 tp!51836))

(declare-fun array_inv!18952 (array!49964) Bool)

(assert (=> start!73890 (array_inv!18952 _keys!868)))

(declare-fun e!483242 () Bool)

(declare-fun array_inv!18953 (array!49966) Bool)

(assert (=> start!73890 (and (array_inv!18953 _values!688) e!483242)))

(declare-fun b!867490 () Bool)

(assert (=> b!867490 (= e!483240 tp_is_empty!16913)))

(declare-fun b!867497 () Bool)

(declare-fun res!589517 () Bool)

(assert (=> b!867497 (=> (not res!589517) (not e!483241))))

(assert (=> b!867497 (= res!589517 (and (= (size!24451 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24450 _keys!868) (size!24451 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867498 () Bool)

(declare-fun res!589518 () Bool)

(assert (=> b!867498 (=> (not res!589518) (not e!483241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867498 (= res!589518 (validKeyInArray!0 k!854))))

(declare-fun b!867499 () Bool)

(assert (=> b!867499 (= e!483242 (and e!483243 mapRes!26969))))

(declare-fun condMapEmpty!26969 () Bool)

(declare-fun mapDefault!26969 () ValueCell!8017)

