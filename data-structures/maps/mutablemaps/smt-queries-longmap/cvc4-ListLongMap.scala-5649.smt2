; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73710 () Bool)

(assert start!73710)

(declare-fun b_free!14597 () Bool)

(declare-fun b_next!14597 () Bool)

(assert (=> start!73710 (= b_free!14597 (not b_next!14597))))

(declare-fun tp!51296 () Bool)

(declare-fun b_and!24191 () Bool)

(assert (=> start!73710 (= tp!51296 b_and!24191)))

(declare-fun b!863025 () Bool)

(declare-fun e!480834 () Bool)

(declare-fun tp_is_empty!16733 () Bool)

(assert (=> b!863025 (= e!480834 tp_is_empty!16733)))

(declare-fun b!863026 () Bool)

(declare-fun e!480832 () Bool)

(declare-fun e!480836 () Bool)

(assert (=> b!863026 (= e!480832 e!480836)))

(declare-fun res!586572 () Bool)

(assert (=> b!863026 (=> (not res!586572) (not e!480836))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!863026 (= res!586572 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27357 0))(
  ( (V!27358 (val!8414 Int)) )
))
(declare-datatypes ((tuple2!11132 0))(
  ( (tuple2!11133 (_1!5576 (_ BitVec 64)) (_2!5576 V!27357)) )
))
(declare-datatypes ((List!17000 0))(
  ( (Nil!16997) (Cons!16996 (h!18127 tuple2!11132) (t!23871 List!17000)) )
))
(declare-datatypes ((ListLongMap!9915 0))(
  ( (ListLongMap!9916 (toList!4973 List!17000)) )
))
(declare-fun lt!389936 () ListLongMap!9915)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49612 0))(
  ( (array!49613 (arr!23833 (Array (_ BitVec 32) (_ BitVec 64))) (size!24274 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49612)

(declare-datatypes ((ValueCell!7927 0))(
  ( (ValueCellFull!7927 (v!10835 V!27357)) (EmptyCell!7927) )
))
(declare-datatypes ((array!49614 0))(
  ( (array!49615 (arr!23834 (Array (_ BitVec 32) ValueCell!7927)) (size!24275 (_ BitVec 32))) )
))
(declare-fun lt!389927 () array!49614)

(declare-fun minValue!654 () V!27357)

(declare-fun zeroValue!654 () V!27357)

(declare-fun getCurrentListMapNoExtraKeys!2948 (array!49612 array!49614 (_ BitVec 32) (_ BitVec 32) V!27357 V!27357 (_ BitVec 32) Int) ListLongMap!9915)

(assert (=> b!863026 (= lt!389936 (getCurrentListMapNoExtraKeys!2948 _keys!868 lt!389927 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27357)

(declare-fun _values!688 () array!49614)

(assert (=> b!863026 (= lt!389927 (array!49615 (store (arr!23834 _values!688) i!612 (ValueCellFull!7927 v!557)) (size!24275 _values!688)))))

(declare-fun lt!389928 () ListLongMap!9915)

(assert (=> b!863026 (= lt!389928 (getCurrentListMapNoExtraKeys!2948 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!586567 () Bool)

(assert (=> start!73710 (=> (not res!586567) (not e!480832))))

(assert (=> start!73710 (= res!586567 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24274 _keys!868))))))

(assert (=> start!73710 e!480832))

(assert (=> start!73710 tp_is_empty!16733))

(assert (=> start!73710 true))

(assert (=> start!73710 tp!51296))

(declare-fun array_inv!18832 (array!49612) Bool)

(assert (=> start!73710 (array_inv!18832 _keys!868)))

(declare-fun e!480838 () Bool)

(declare-fun array_inv!18833 (array!49614) Bool)

(assert (=> start!73710 (and (array_inv!18833 _values!688) e!480838)))

(declare-fun b!863027 () Bool)

(declare-datatypes ((Unit!29461 0))(
  ( (Unit!29462) )
))
(declare-fun e!480835 () Unit!29461)

(declare-fun Unit!29463 () Unit!29461)

(assert (=> b!863027 (= e!480835 Unit!29463)))

(declare-fun lt!389935 () Unit!29461)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49612 (_ BitVec 32) (_ BitVec 32)) Unit!29461)

(assert (=> b!863027 (= lt!389935 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17001 0))(
  ( (Nil!16998) (Cons!16997 (h!18128 (_ BitVec 64)) (t!23872 List!17001)) )
))
(declare-fun arrayNoDuplicates!0 (array!49612 (_ BitVec 32) List!17001) Bool)

(assert (=> b!863027 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16998)))

(declare-fun lt!389925 () Unit!29461)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49612 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29461)

(assert (=> b!863027 (= lt!389925 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863027 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389926 () Unit!29461)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49612 (_ BitVec 64) (_ BitVec 32) List!17001) Unit!29461)

(assert (=> b!863027 (= lt!389926 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16998))))

(assert (=> b!863027 false))

(declare-fun b!863028 () Bool)

(declare-fun res!586569 () Bool)

(assert (=> b!863028 (=> (not res!586569) (not e!480832))))

(assert (=> b!863028 (= res!586569 (and (= (size!24275 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24274 _keys!868) (size!24275 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863029 () Bool)

(declare-fun res!586564 () Bool)

(assert (=> b!863029 (=> (not res!586564) (not e!480832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863029 (= res!586564 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26699 () Bool)

(declare-fun mapRes!26699 () Bool)

(declare-fun tp!51295 () Bool)

(assert (=> mapNonEmpty!26699 (= mapRes!26699 (and tp!51295 e!480834))))

(declare-fun mapKey!26699 () (_ BitVec 32))

(declare-fun mapRest!26699 () (Array (_ BitVec 32) ValueCell!7927))

(declare-fun mapValue!26699 () ValueCell!7927)

(assert (=> mapNonEmpty!26699 (= (arr!23834 _values!688) (store mapRest!26699 mapKey!26699 mapValue!26699))))

(declare-fun b!863030 () Bool)

(declare-fun e!480839 () Bool)

(assert (=> b!863030 (= e!480836 (not e!480839))))

(declare-fun res!586566 () Bool)

(assert (=> b!863030 (=> res!586566 e!480839)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863030 (= res!586566 (not (validKeyInArray!0 (select (arr!23833 _keys!868) from!1053))))))

(declare-fun lt!389929 () ListLongMap!9915)

(declare-fun lt!389923 () ListLongMap!9915)

(assert (=> b!863030 (= lt!389929 lt!389923)))

(declare-fun lt!389937 () ListLongMap!9915)

(declare-fun lt!389924 () tuple2!11132)

(declare-fun +!2270 (ListLongMap!9915 tuple2!11132) ListLongMap!9915)

(assert (=> b!863030 (= lt!389923 (+!2270 lt!389937 lt!389924))))

(assert (=> b!863030 (= lt!389929 (getCurrentListMapNoExtraKeys!2948 _keys!868 lt!389927 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863030 (= lt!389924 (tuple2!11133 k!854 v!557))))

(assert (=> b!863030 (= lt!389937 (getCurrentListMapNoExtraKeys!2948 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389933 () Unit!29461)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!517 (array!49612 array!49614 (_ BitVec 32) (_ BitVec 32) V!27357 V!27357 (_ BitVec 32) (_ BitVec 64) V!27357 (_ BitVec 32) Int) Unit!29461)

(assert (=> b!863030 (= lt!389933 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!517 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863031 () Bool)

(declare-fun e!480840 () Bool)

(assert (=> b!863031 (= e!480838 (and e!480840 mapRes!26699))))

(declare-fun condMapEmpty!26699 () Bool)

(declare-fun mapDefault!26699 () ValueCell!7927)

