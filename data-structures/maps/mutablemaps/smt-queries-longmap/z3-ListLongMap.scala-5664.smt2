; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73798 () Bool)

(assert start!73798)

(declare-fun b_free!14685 () Bool)

(declare-fun b_next!14685 () Bool)

(assert (=> start!73798 (= b_free!14685 (not b_next!14685))))

(declare-fun tp!51559 () Bool)

(declare-fun b_and!24367 () Bool)

(assert (=> start!73798 (= tp!51559 b_and!24367)))

(declare-fun b!865225 () Bool)

(declare-datatypes ((Unit!29604 0))(
  ( (Unit!29605) )
))
(declare-fun e!482027 () Unit!29604)

(declare-fun Unit!29606 () Unit!29604)

(assert (=> b!865225 (= e!482027 Unit!29606)))

(declare-fun lt!392036 () Unit!29604)

(declare-datatypes ((array!49786 0))(
  ( (array!49787 (arr!23920 (Array (_ BitVec 32) (_ BitVec 64))) (size!24361 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49786)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49786 (_ BitVec 32) (_ BitVec 32)) Unit!29604)

(assert (=> b!865225 (= lt!392036 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17074 0))(
  ( (Nil!17071) (Cons!17070 (h!18201 (_ BitVec 64)) (t!24033 List!17074)) )
))
(declare-fun arrayNoDuplicates!0 (array!49786 (_ BitVec 32) List!17074) Bool)

(assert (=> b!865225 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17071)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!392045 () Unit!29604)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49786 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29604)

(assert (=> b!865225 (= lt!392045 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865225 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392046 () Unit!29604)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49786 (_ BitVec 64) (_ BitVec 32) List!17074) Unit!29604)

(assert (=> b!865225 (= lt!392046 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17071))))

(assert (=> b!865225 false))

(declare-fun b!865226 () Bool)

(declare-fun e!482025 () Bool)

(assert (=> b!865226 (= e!482025 true)))

(declare-datatypes ((V!27475 0))(
  ( (V!27476 (val!8458 Int)) )
))
(declare-datatypes ((tuple2!11210 0))(
  ( (tuple2!11211 (_1!5615 (_ BitVec 64)) (_2!5615 V!27475)) )
))
(declare-fun lt!392044 () tuple2!11210)

(declare-fun lt!392037 () tuple2!11210)

(declare-datatypes ((List!17075 0))(
  ( (Nil!17072) (Cons!17071 (h!18202 tuple2!11210) (t!24034 List!17075)) )
))
(declare-datatypes ((ListLongMap!9993 0))(
  ( (ListLongMap!9994 (toList!5012 List!17075)) )
))
(declare-fun lt!392049 () ListLongMap!9993)

(declare-fun lt!392048 () ListLongMap!9993)

(declare-fun +!2308 (ListLongMap!9993 tuple2!11210) ListLongMap!9993)

(assert (=> b!865226 (= lt!392049 (+!2308 (+!2308 lt!392048 lt!392044) lt!392037))))

(declare-fun v!557 () V!27475)

(declare-fun lt!392042 () V!27475)

(declare-fun lt!392034 () Unit!29604)

(declare-fun addCommutativeForDiffKeys!515 (ListLongMap!9993 (_ BitVec 64) V!27475 (_ BitVec 64) V!27475) Unit!29604)

(assert (=> b!865226 (= lt!392034 (addCommutativeForDiffKeys!515 lt!392048 k0!854 v!557 (select (arr!23920 _keys!868) from!1053) lt!392042))))

(declare-fun b!865227 () Bool)

(declare-fun e!482028 () Bool)

(declare-fun e!482021 () Bool)

(assert (=> b!865227 (= e!482028 e!482021)))

(declare-fun res!588024 () Bool)

(assert (=> b!865227 (=> (not res!588024) (not e!482021))))

(assert (=> b!865227 (= res!588024 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!392040 () ListLongMap!9993)

(declare-fun minValue!654 () V!27475)

(declare-fun zeroValue!654 () V!27475)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7971 0))(
  ( (ValueCellFull!7971 (v!10879 V!27475)) (EmptyCell!7971) )
))
(declare-datatypes ((array!49788 0))(
  ( (array!49789 (arr!23921 (Array (_ BitVec 32) ValueCell!7971)) (size!24362 (_ BitVec 32))) )
))
(declare-fun lt!392041 () array!49788)

(declare-fun getCurrentListMapNoExtraKeys!2982 (array!49786 array!49788 (_ BitVec 32) (_ BitVec 32) V!27475 V!27475 (_ BitVec 32) Int) ListLongMap!9993)

(assert (=> b!865227 (= lt!392040 (getCurrentListMapNoExtraKeys!2982 _keys!868 lt!392041 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49788)

(assert (=> b!865227 (= lt!392041 (array!49789 (store (arr!23921 _values!688) i!612 (ValueCellFull!7971 v!557)) (size!24362 _values!688)))))

(declare-fun lt!392035 () ListLongMap!9993)

(assert (=> b!865227 (= lt!392035 (getCurrentListMapNoExtraKeys!2982 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865228 () Bool)

(declare-fun Unit!29607 () Unit!29604)

(assert (=> b!865228 (= e!482027 Unit!29607)))

(declare-fun res!588017 () Bool)

(assert (=> start!73798 (=> (not res!588017) (not e!482028))))

(assert (=> start!73798 (= res!588017 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24361 _keys!868))))))

(assert (=> start!73798 e!482028))

(declare-fun tp_is_empty!16821 () Bool)

(assert (=> start!73798 tp_is_empty!16821))

(assert (=> start!73798 true))

(assert (=> start!73798 tp!51559))

(declare-fun array_inv!18894 (array!49786) Bool)

(assert (=> start!73798 (array_inv!18894 _keys!868)))

(declare-fun e!482026 () Bool)

(declare-fun array_inv!18895 (array!49788) Bool)

(assert (=> start!73798 (and (array_inv!18895 _values!688) e!482026)))

(declare-fun b!865229 () Bool)

(declare-fun res!588019 () Bool)

(assert (=> b!865229 (=> (not res!588019) (not e!482028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865229 (= res!588019 (validMask!0 mask!1196))))

(declare-fun b!865230 () Bool)

(declare-fun res!588021 () Bool)

(assert (=> b!865230 (=> (not res!588021) (not e!482028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49786 (_ BitVec 32)) Bool)

(assert (=> b!865230 (= res!588021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26831 () Bool)

(declare-fun mapRes!26831 () Bool)

(assert (=> mapIsEmpty!26831 mapRes!26831))

(declare-fun b!865231 () Bool)

(declare-fun e!482020 () Bool)

(assert (=> b!865231 (= e!482020 tp_is_empty!16821)))

(declare-fun b!865232 () Bool)

(declare-fun res!588022 () Bool)

(assert (=> b!865232 (=> (not res!588022) (not e!482028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865232 (= res!588022 (validKeyInArray!0 k0!854))))

(declare-fun b!865233 () Bool)

(declare-fun e!482023 () Bool)

(assert (=> b!865233 (= e!482026 (and e!482023 mapRes!26831))))

(declare-fun condMapEmpty!26831 () Bool)

(declare-fun mapDefault!26831 () ValueCell!7971)

(assert (=> b!865233 (= condMapEmpty!26831 (= (arr!23921 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7971)) mapDefault!26831)))))

(declare-fun b!865234 () Bool)

(assert (=> b!865234 (= e!482023 tp_is_empty!16821)))

(declare-fun b!865235 () Bool)

(declare-fun res!588023 () Bool)

(assert (=> b!865235 (=> (not res!588023) (not e!482028))))

(assert (=> b!865235 (= res!588023 (and (= (size!24362 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24361 _keys!868) (size!24362 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26831 () Bool)

(declare-fun tp!51560 () Bool)

(assert (=> mapNonEmpty!26831 (= mapRes!26831 (and tp!51560 e!482020))))

(declare-fun mapValue!26831 () ValueCell!7971)

(declare-fun mapKey!26831 () (_ BitVec 32))

(declare-fun mapRest!26831 () (Array (_ BitVec 32) ValueCell!7971))

(assert (=> mapNonEmpty!26831 (= (arr!23921 _values!688) (store mapRest!26831 mapKey!26831 mapValue!26831))))

(declare-fun b!865236 () Bool)

(declare-fun e!482024 () Bool)

(assert (=> b!865236 (= e!482024 e!482025)))

(declare-fun res!588014 () Bool)

(assert (=> b!865236 (=> res!588014 e!482025)))

(assert (=> b!865236 (= res!588014 (= k0!854 (select (arr!23920 _keys!868) from!1053)))))

(assert (=> b!865236 (not (= (select (arr!23920 _keys!868) from!1053) k0!854))))

(declare-fun lt!392038 () Unit!29604)

(assert (=> b!865236 (= lt!392038 e!482027)))

(declare-fun c!92166 () Bool)

(assert (=> b!865236 (= c!92166 (= (select (arr!23920 _keys!868) from!1053) k0!854))))

(assert (=> b!865236 (= lt!392040 lt!392049)))

(declare-fun lt!392039 () ListLongMap!9993)

(assert (=> b!865236 (= lt!392049 (+!2308 lt!392039 lt!392044))))

(assert (=> b!865236 (= lt!392044 (tuple2!11211 (select (arr!23920 _keys!868) from!1053) lt!392042))))

(declare-fun get!12654 (ValueCell!7971 V!27475) V!27475)

(declare-fun dynLambda!1176 (Int (_ BitVec 64)) V!27475)

(assert (=> b!865236 (= lt!392042 (get!12654 (select (arr!23921 _values!688) from!1053) (dynLambda!1176 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865237 () Bool)

(declare-fun res!588016 () Bool)

(assert (=> b!865237 (=> (not res!588016) (not e!482028))))

(assert (=> b!865237 (= res!588016 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17071))))

(declare-fun b!865238 () Bool)

(assert (=> b!865238 (= e!482021 (not e!482024))))

(declare-fun res!588020 () Bool)

(assert (=> b!865238 (=> res!588020 e!482024)))

(assert (=> b!865238 (= res!588020 (not (validKeyInArray!0 (select (arr!23920 _keys!868) from!1053))))))

(declare-fun lt!392043 () ListLongMap!9993)

(assert (=> b!865238 (= lt!392043 lt!392039)))

(assert (=> b!865238 (= lt!392039 (+!2308 lt!392048 lt!392037))))

(assert (=> b!865238 (= lt!392043 (getCurrentListMapNoExtraKeys!2982 _keys!868 lt!392041 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865238 (= lt!392037 (tuple2!11211 k0!854 v!557))))

(assert (=> b!865238 (= lt!392048 (getCurrentListMapNoExtraKeys!2982 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392047 () Unit!29604)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!548 (array!49786 array!49788 (_ BitVec 32) (_ BitVec 32) V!27475 V!27475 (_ BitVec 32) (_ BitVec 64) V!27475 (_ BitVec 32) Int) Unit!29604)

(assert (=> b!865238 (= lt!392047 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!548 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865239 () Bool)

(declare-fun res!588015 () Bool)

(assert (=> b!865239 (=> (not res!588015) (not e!482028))))

(assert (=> b!865239 (= res!588015 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24361 _keys!868))))))

(declare-fun b!865240 () Bool)

(declare-fun res!588018 () Bool)

(assert (=> b!865240 (=> (not res!588018) (not e!482028))))

(assert (=> b!865240 (= res!588018 (and (= (select (arr!23920 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!73798 res!588017) b!865229))

(assert (= (and b!865229 res!588019) b!865235))

(assert (= (and b!865235 res!588023) b!865230))

(assert (= (and b!865230 res!588021) b!865237))

(assert (= (and b!865237 res!588016) b!865239))

(assert (= (and b!865239 res!588015) b!865232))

(assert (= (and b!865232 res!588022) b!865240))

(assert (= (and b!865240 res!588018) b!865227))

(assert (= (and b!865227 res!588024) b!865238))

(assert (= (and b!865238 (not res!588020)) b!865236))

(assert (= (and b!865236 c!92166) b!865225))

(assert (= (and b!865236 (not c!92166)) b!865228))

(assert (= (and b!865236 (not res!588014)) b!865226))

(assert (= (and b!865233 condMapEmpty!26831) mapIsEmpty!26831))

(assert (= (and b!865233 (not condMapEmpty!26831)) mapNonEmpty!26831))

(get-info :version)

(assert (= (and mapNonEmpty!26831 ((_ is ValueCellFull!7971) mapValue!26831)) b!865231))

(assert (= (and b!865233 ((_ is ValueCellFull!7971) mapDefault!26831)) b!865234))

(assert (= start!73798 b!865233))

(declare-fun b_lambda!12067 () Bool)

(assert (=> (not b_lambda!12067) (not b!865236)))

(declare-fun t!24032 () Bool)

(declare-fun tb!4815 () Bool)

(assert (=> (and start!73798 (= defaultEntry!696 defaultEntry!696) t!24032) tb!4815))

(declare-fun result!9233 () Bool)

(assert (=> tb!4815 (= result!9233 tp_is_empty!16821)))

(assert (=> b!865236 t!24032))

(declare-fun b_and!24369 () Bool)

(assert (= b_and!24367 (and (=> t!24032 result!9233) b_and!24369)))

(declare-fun m!806819 () Bool)

(assert (=> mapNonEmpty!26831 m!806819))

(declare-fun m!806821 () Bool)

(assert (=> b!865236 m!806821))

(declare-fun m!806823 () Bool)

(assert (=> b!865236 m!806823))

(declare-fun m!806825 () Bool)

(assert (=> b!865236 m!806825))

(declare-fun m!806827 () Bool)

(assert (=> b!865236 m!806827))

(assert (=> b!865236 m!806823))

(declare-fun m!806829 () Bool)

(assert (=> b!865236 m!806829))

(assert (=> b!865236 m!806825))

(assert (=> b!865238 m!806829))

(declare-fun m!806831 () Bool)

(assert (=> b!865238 m!806831))

(assert (=> b!865238 m!806829))

(declare-fun m!806833 () Bool)

(assert (=> b!865238 m!806833))

(declare-fun m!806835 () Bool)

(assert (=> b!865238 m!806835))

(declare-fun m!806837 () Bool)

(assert (=> b!865238 m!806837))

(declare-fun m!806839 () Bool)

(assert (=> b!865238 m!806839))

(declare-fun m!806841 () Bool)

(assert (=> b!865226 m!806841))

(assert (=> b!865226 m!806841))

(declare-fun m!806843 () Bool)

(assert (=> b!865226 m!806843))

(assert (=> b!865226 m!806829))

(assert (=> b!865226 m!806829))

(declare-fun m!806845 () Bool)

(assert (=> b!865226 m!806845))

(declare-fun m!806847 () Bool)

(assert (=> b!865227 m!806847))

(declare-fun m!806849 () Bool)

(assert (=> b!865227 m!806849))

(declare-fun m!806851 () Bool)

(assert (=> b!865227 m!806851))

(declare-fun m!806853 () Bool)

(assert (=> b!865229 m!806853))

(declare-fun m!806855 () Bool)

(assert (=> b!865237 m!806855))

(declare-fun m!806857 () Bool)

(assert (=> b!865232 m!806857))

(declare-fun m!806859 () Bool)

(assert (=> b!865230 m!806859))

(declare-fun m!806861 () Bool)

(assert (=> b!865225 m!806861))

(declare-fun m!806863 () Bool)

(assert (=> b!865225 m!806863))

(declare-fun m!806865 () Bool)

(assert (=> b!865225 m!806865))

(declare-fun m!806867 () Bool)

(assert (=> b!865225 m!806867))

(declare-fun m!806869 () Bool)

(assert (=> b!865225 m!806869))

(declare-fun m!806871 () Bool)

(assert (=> b!865240 m!806871))

(declare-fun m!806873 () Bool)

(assert (=> start!73798 m!806873))

(declare-fun m!806875 () Bool)

(assert (=> start!73798 m!806875))

(check-sat (not start!73798) (not b_lambda!12067) (not mapNonEmpty!26831) (not b!865229) (not b_next!14685) (not b!865230) (not b!865236) (not b!865226) (not b!865227) tp_is_empty!16821 (not b!865237) (not b!865232) (not b!865238) (not b!865225) b_and!24369)
(check-sat b_and!24369 (not b_next!14685))
