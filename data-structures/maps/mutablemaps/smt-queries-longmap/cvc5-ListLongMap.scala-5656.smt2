; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73748 () Bool)

(assert start!73748)

(declare-fun b_free!14635 () Bool)

(declare-fun b_next!14635 () Bool)

(assert (=> start!73748 (= b_free!14635 (not b_next!14635))))

(declare-fun tp!51409 () Bool)

(declare-fun b_and!24267 () Bool)

(assert (=> start!73748 (= tp!51409 b_and!24267)))

(declare-fun b!863975 () Bool)

(declare-datatypes ((Unit!29522 0))(
  ( (Unit!29523) )
))
(declare-fun e!481353 () Unit!29522)

(declare-fun Unit!29524 () Unit!29522)

(assert (=> b!863975 (= e!481353 Unit!29524)))

(declare-fun lt!390841 () Unit!29522)

(declare-datatypes ((array!49686 0))(
  ( (array!49687 (arr!23870 (Array (_ BitVec 32) (_ BitVec 64))) (size!24311 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49686)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49686 (_ BitVec 32) (_ BitVec 32)) Unit!29522)

(assert (=> b!863975 (= lt!390841 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17033 0))(
  ( (Nil!17030) (Cons!17029 (h!18160 (_ BitVec 64)) (t!23942 List!17033)) )
))
(declare-fun arrayNoDuplicates!0 (array!49686 (_ BitVec 32) List!17033) Bool)

(assert (=> b!863975 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17030)))

(declare-fun lt!390836 () Unit!29522)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29522)

(assert (=> b!863975 (= lt!390836 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863975 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390846 () Unit!29522)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49686 (_ BitVec 64) (_ BitVec 32) List!17033) Unit!29522)

(assert (=> b!863975 (= lt!390846 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17030))))

(assert (=> b!863975 false))

(declare-fun b!863976 () Bool)

(declare-fun e!481348 () Bool)

(declare-fun e!481349 () Bool)

(assert (=> b!863976 (= e!481348 (not e!481349))))

(declare-fun res!587189 () Bool)

(assert (=> b!863976 (=> res!587189 e!481349)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863976 (= res!587189 (not (validKeyInArray!0 (select (arr!23870 _keys!868) from!1053))))))

(declare-datatypes ((V!27409 0))(
  ( (V!27410 (val!8433 Int)) )
))
(declare-datatypes ((tuple2!11166 0))(
  ( (tuple2!11167 (_1!5593 (_ BitVec 64)) (_2!5593 V!27409)) )
))
(declare-datatypes ((List!17034 0))(
  ( (Nil!17031) (Cons!17030 (h!18161 tuple2!11166) (t!23943 List!17034)) )
))
(declare-datatypes ((ListLongMap!9949 0))(
  ( (ListLongMap!9950 (toList!4990 List!17034)) )
))
(declare-fun lt!390848 () ListLongMap!9949)

(declare-fun lt!390839 () ListLongMap!9949)

(assert (=> b!863976 (= lt!390848 lt!390839)))

(declare-fun lt!390834 () ListLongMap!9949)

(declare-fun lt!390838 () tuple2!11166)

(declare-fun +!2287 (ListLongMap!9949 tuple2!11166) ListLongMap!9949)

(assert (=> b!863976 (= lt!390839 (+!2287 lt!390834 lt!390838))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7946 0))(
  ( (ValueCellFull!7946 (v!10854 V!27409)) (EmptyCell!7946) )
))
(declare-datatypes ((array!49688 0))(
  ( (array!49689 (arr!23871 (Array (_ BitVec 32) ValueCell!7946)) (size!24312 (_ BitVec 32))) )
))
(declare-fun lt!390845 () array!49688)

(declare-fun minValue!654 () V!27409)

(declare-fun zeroValue!654 () V!27409)

(declare-fun getCurrentListMapNoExtraKeys!2963 (array!49686 array!49688 (_ BitVec 32) (_ BitVec 32) V!27409 V!27409 (_ BitVec 32) Int) ListLongMap!9949)

(assert (=> b!863976 (= lt!390848 (getCurrentListMapNoExtraKeys!2963 _keys!868 lt!390845 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27409)

(assert (=> b!863976 (= lt!390838 (tuple2!11167 k!854 v!557))))

(declare-fun _values!688 () array!49688)

(assert (=> b!863976 (= lt!390834 (getCurrentListMapNoExtraKeys!2963 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390840 () Unit!29522)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!532 (array!49686 array!49688 (_ BitVec 32) (_ BitVec 32) V!27409 V!27409 (_ BitVec 32) (_ BitVec 64) V!27409 (_ BitVec 32) Int) Unit!29522)

(assert (=> b!863976 (= lt!390840 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!532 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863977 () Bool)

(declare-fun res!587193 () Bool)

(declare-fun e!481350 () Bool)

(assert (=> b!863977 (=> (not res!587193) (not e!481350))))

(assert (=> b!863977 (= res!587193 (and (= (size!24312 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24311 _keys!868) (size!24312 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26756 () Bool)

(declare-fun mapRes!26756 () Bool)

(declare-fun tp!51410 () Bool)

(declare-fun e!481352 () Bool)

(assert (=> mapNonEmpty!26756 (= mapRes!26756 (and tp!51410 e!481352))))

(declare-fun mapKey!26756 () (_ BitVec 32))

(declare-fun mapRest!26756 () (Array (_ BitVec 32) ValueCell!7946))

(declare-fun mapValue!26756 () ValueCell!7946)

(assert (=> mapNonEmpty!26756 (= (arr!23871 _values!688) (store mapRest!26756 mapKey!26756 mapValue!26756))))

(declare-fun b!863978 () Bool)

(declare-fun res!587199 () Bool)

(assert (=> b!863978 (=> (not res!587199) (not e!481350))))

(assert (=> b!863978 (= res!587199 (and (= (select (arr!23870 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!863979 () Bool)

(declare-fun res!587197 () Bool)

(assert (=> b!863979 (=> (not res!587197) (not e!481350))))

(assert (=> b!863979 (= res!587197 (validKeyInArray!0 k!854))))

(declare-fun b!863980 () Bool)

(declare-fun e!481345 () Bool)

(declare-fun tp_is_empty!16771 () Bool)

(assert (=> b!863980 (= e!481345 tp_is_empty!16771)))

(declare-fun b!863981 () Bool)

(declare-fun e!481347 () Bool)

(assert (=> b!863981 (= e!481347 (and e!481345 mapRes!26756))))

(declare-fun condMapEmpty!26756 () Bool)

(declare-fun mapDefault!26756 () ValueCell!7946)

