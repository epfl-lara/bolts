; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73870 () Bool)

(assert start!73870)

(declare-fun b_free!14757 () Bool)

(declare-fun b_next!14757 () Bool)

(assert (=> start!73870 (= b_free!14757 (not b_next!14757))))

(declare-fun tp!51775 () Bool)

(declare-fun b_and!24511 () Bool)

(assert (=> start!73870 (= tp!51775 b_and!24511)))

(declare-fun b!867025 () Bool)

(declare-fun e!482994 () Bool)

(declare-fun e!482993 () Bool)

(declare-fun mapRes!26939 () Bool)

(assert (=> b!867025 (= e!482994 (and e!482993 mapRes!26939))))

(declare-fun condMapEmpty!26939 () Bool)

(declare-datatypes ((V!27571 0))(
  ( (V!27572 (val!8494 Int)) )
))
(declare-datatypes ((ValueCell!8007 0))(
  ( (ValueCellFull!8007 (v!10915 V!27571)) (EmptyCell!8007) )
))
(declare-datatypes ((array!49926 0))(
  ( (array!49927 (arr!23990 (Array (_ BitVec 32) ValueCell!8007)) (size!24431 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49926)

(declare-fun mapDefault!26939 () ValueCell!8007)

(assert (=> b!867025 (= condMapEmpty!26939 (= (arr!23990 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8007)) mapDefault!26939)))))

(declare-fun b!867027 () Bool)

(declare-datatypes ((Unit!29717 0))(
  ( (Unit!29718) )
))
(declare-fun e!482999 () Unit!29717)

(declare-fun Unit!29719 () Unit!29717)

(assert (=> b!867027 (= e!482999 Unit!29719)))

(declare-fun lt!393768 () Unit!29717)

(declare-datatypes ((array!49928 0))(
  ( (array!49929 (arr!23991 (Array (_ BitVec 32) (_ BitVec 64))) (size!24432 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49928)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49928 (_ BitVec 32) (_ BitVec 32)) Unit!29717)

(assert (=> b!867027 (= lt!393768 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17135 0))(
  ( (Nil!17132) (Cons!17131 (h!18262 (_ BitVec 64)) (t!24166 List!17135)) )
))
(declare-fun arrayNoDuplicates!0 (array!49928 (_ BitVec 32) List!17135) Bool)

(assert (=> b!867027 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17132)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!393763 () Unit!29717)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49928 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29717)

(assert (=> b!867027 (= lt!393763 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!867027 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393766 () Unit!29717)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49928 (_ BitVec 64) (_ BitVec 32) List!17135) Unit!29717)

(assert (=> b!867027 (= lt!393766 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17132))))

(assert (=> b!867027 false))

(declare-fun b!867028 () Bool)

(declare-fun res!589203 () Bool)

(declare-fun e!482992 () Bool)

(assert (=> b!867028 (=> (not res!589203) (not e!482992))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49928 (_ BitVec 32)) Bool)

(assert (=> b!867028 (= res!589203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867029 () Bool)

(declare-fun e!482997 () Bool)

(declare-fun e!483000 () Bool)

(assert (=> b!867029 (= e!482997 (not e!483000))))

(declare-fun res!589212 () Bool)

(assert (=> b!867029 (=> res!589212 e!483000)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867029 (= res!589212 (not (validKeyInArray!0 (select (arr!23991 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11272 0))(
  ( (tuple2!11273 (_1!5646 (_ BitVec 64)) (_2!5646 V!27571)) )
))
(declare-datatypes ((List!17136 0))(
  ( (Nil!17133) (Cons!17132 (h!18263 tuple2!11272) (t!24167 List!17136)) )
))
(declare-datatypes ((ListLongMap!10055 0))(
  ( (ListLongMap!10056 (toList!5043 List!17136)) )
))
(declare-fun lt!393765 () ListLongMap!10055)

(declare-fun lt!393777 () ListLongMap!10055)

(assert (=> b!867029 (= lt!393765 lt!393777)))

(declare-fun lt!393771 () ListLongMap!10055)

(declare-fun lt!393775 () tuple2!11272)

(declare-fun +!2338 (ListLongMap!10055 tuple2!11272) ListLongMap!10055)

(assert (=> b!867029 (= lt!393777 (+!2338 lt!393771 lt!393775))))

(declare-fun lt!393764 () array!49926)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27571)

(declare-fun zeroValue!654 () V!27571)

(declare-fun getCurrentListMapNoExtraKeys!3008 (array!49928 array!49926 (_ BitVec 32) (_ BitVec 32) V!27571 V!27571 (_ BitVec 32) Int) ListLongMap!10055)

(assert (=> b!867029 (= lt!393765 (getCurrentListMapNoExtraKeys!3008 _keys!868 lt!393764 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27571)

(assert (=> b!867029 (= lt!393775 (tuple2!11273 k0!854 v!557))))

(assert (=> b!867029 (= lt!393771 (getCurrentListMapNoExtraKeys!3008 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393770 () Unit!29717)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!570 (array!49928 array!49926 (_ BitVec 32) (_ BitVec 32) V!27571 V!27571 (_ BitVec 32) (_ BitVec 64) V!27571 (_ BitVec 32) Int) Unit!29717)

(assert (=> b!867029 (= lt!393770 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!570 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867030 () Bool)

(declare-fun e!482995 () Bool)

(assert (=> b!867030 (= e!482995 true)))

(declare-fun lt!393773 () ListLongMap!10055)

(declare-fun lt!393769 () tuple2!11272)

(assert (=> b!867030 (= lt!393773 (+!2338 (+!2338 lt!393771 lt!393769) lt!393775))))

(declare-fun lt!393774 () Unit!29717)

(declare-fun lt!393767 () V!27571)

(declare-fun addCommutativeForDiffKeys!539 (ListLongMap!10055 (_ BitVec 64) V!27571 (_ BitVec 64) V!27571) Unit!29717)

(assert (=> b!867030 (= lt!393774 (addCommutativeForDiffKeys!539 lt!393771 k0!854 v!557 (select (arr!23991 _keys!868) from!1053) lt!393767))))

(declare-fun b!867031 () Bool)

(declare-fun res!589205 () Bool)

(assert (=> b!867031 (=> (not res!589205) (not e!482992))))

(assert (=> b!867031 (= res!589205 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24432 _keys!868))))))

(declare-fun b!867032 () Bool)

(declare-fun e!482998 () Bool)

(declare-fun tp_is_empty!16893 () Bool)

(assert (=> b!867032 (= e!482998 tp_is_empty!16893)))

(declare-fun b!867033 () Bool)

(declare-fun Unit!29720 () Unit!29717)

(assert (=> b!867033 (= e!482999 Unit!29720)))

(declare-fun b!867034 () Bool)

(assert (=> b!867034 (= e!482992 e!482997)))

(declare-fun res!589202 () Bool)

(assert (=> b!867034 (=> (not res!589202) (not e!482997))))

(assert (=> b!867034 (= res!589202 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!393762 () ListLongMap!10055)

(assert (=> b!867034 (= lt!393762 (getCurrentListMapNoExtraKeys!3008 _keys!868 lt!393764 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867034 (= lt!393764 (array!49927 (store (arr!23990 _values!688) i!612 (ValueCellFull!8007 v!557)) (size!24431 _values!688)))))

(declare-fun lt!393772 () ListLongMap!10055)

(assert (=> b!867034 (= lt!393772 (getCurrentListMapNoExtraKeys!3008 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867035 () Bool)

(declare-fun res!589206 () Bool)

(assert (=> b!867035 (=> (not res!589206) (not e!482992))))

(assert (=> b!867035 (= res!589206 (and (= (size!24431 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24432 _keys!868) (size!24431 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867036 () Bool)

(declare-fun res!589207 () Bool)

(assert (=> b!867036 (=> (not res!589207) (not e!482992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867036 (= res!589207 (validMask!0 mask!1196))))

(declare-fun b!867037 () Bool)

(assert (=> b!867037 (= e!483000 e!482995)))

(declare-fun res!589209 () Bool)

(assert (=> b!867037 (=> res!589209 e!482995)))

(assert (=> b!867037 (= res!589209 (= k0!854 (select (arr!23991 _keys!868) from!1053)))))

(assert (=> b!867037 (not (= (select (arr!23991 _keys!868) from!1053) k0!854))))

(declare-fun lt!393776 () Unit!29717)

(assert (=> b!867037 (= lt!393776 e!482999)))

(declare-fun c!92274 () Bool)

(assert (=> b!867037 (= c!92274 (= (select (arr!23991 _keys!868) from!1053) k0!854))))

(assert (=> b!867037 (= lt!393762 lt!393773)))

(assert (=> b!867037 (= lt!393773 (+!2338 lt!393777 lt!393769))))

(assert (=> b!867037 (= lt!393769 (tuple2!11273 (select (arr!23991 _keys!868) from!1053) lt!393767))))

(declare-fun get!12705 (ValueCell!8007 V!27571) V!27571)

(declare-fun dynLambda!1203 (Int (_ BitVec 64)) V!27571)

(assert (=> b!867037 (= lt!393767 (get!12705 (select (arr!23990 _values!688) from!1053) (dynLambda!1203 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!26939 () Bool)

(assert (=> mapIsEmpty!26939 mapRes!26939))

(declare-fun b!867026 () Bool)

(declare-fun res!589208 () Bool)

(assert (=> b!867026 (=> (not res!589208) (not e!482992))))

(assert (=> b!867026 (= res!589208 (and (= (select (arr!23991 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!589210 () Bool)

(assert (=> start!73870 (=> (not res!589210) (not e!482992))))

(assert (=> start!73870 (= res!589210 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24432 _keys!868))))))

(assert (=> start!73870 e!482992))

(assert (=> start!73870 tp_is_empty!16893))

(assert (=> start!73870 true))

(assert (=> start!73870 tp!51775))

(declare-fun array_inv!18942 (array!49928) Bool)

(assert (=> start!73870 (array_inv!18942 _keys!868)))

(declare-fun array_inv!18943 (array!49926) Bool)

(assert (=> start!73870 (and (array_inv!18943 _values!688) e!482994)))

(declare-fun b!867038 () Bool)

(declare-fun res!589211 () Bool)

(assert (=> b!867038 (=> (not res!589211) (not e!482992))))

(assert (=> b!867038 (= res!589211 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17132))))

(declare-fun b!867039 () Bool)

(assert (=> b!867039 (= e!482993 tp_is_empty!16893)))

(declare-fun mapNonEmpty!26939 () Bool)

(declare-fun tp!51776 () Bool)

(assert (=> mapNonEmpty!26939 (= mapRes!26939 (and tp!51776 e!482998))))

(declare-fun mapRest!26939 () (Array (_ BitVec 32) ValueCell!8007))

(declare-fun mapValue!26939 () ValueCell!8007)

(declare-fun mapKey!26939 () (_ BitVec 32))

(assert (=> mapNonEmpty!26939 (= (arr!23990 _values!688) (store mapRest!26939 mapKey!26939 mapValue!26939))))

(declare-fun b!867040 () Bool)

(declare-fun res!589204 () Bool)

(assert (=> b!867040 (=> (not res!589204) (not e!482992))))

(assert (=> b!867040 (= res!589204 (validKeyInArray!0 k0!854))))

(assert (= (and start!73870 res!589210) b!867036))

(assert (= (and b!867036 res!589207) b!867035))

(assert (= (and b!867035 res!589206) b!867028))

(assert (= (and b!867028 res!589203) b!867038))

(assert (= (and b!867038 res!589211) b!867031))

(assert (= (and b!867031 res!589205) b!867040))

(assert (= (and b!867040 res!589204) b!867026))

(assert (= (and b!867026 res!589208) b!867034))

(assert (= (and b!867034 res!589202) b!867029))

(assert (= (and b!867029 (not res!589212)) b!867037))

(assert (= (and b!867037 c!92274) b!867027))

(assert (= (and b!867037 (not c!92274)) b!867033))

(assert (= (and b!867037 (not res!589209)) b!867030))

(assert (= (and b!867025 condMapEmpty!26939) mapIsEmpty!26939))

(assert (= (and b!867025 (not condMapEmpty!26939)) mapNonEmpty!26939))

(get-info :version)

(assert (= (and mapNonEmpty!26939 ((_ is ValueCellFull!8007) mapValue!26939)) b!867032))

(assert (= (and b!867025 ((_ is ValueCellFull!8007) mapDefault!26939)) b!867039))

(assert (= start!73870 b!867025))

(declare-fun b_lambda!12139 () Bool)

(assert (=> (not b_lambda!12139) (not b!867037)))

(declare-fun t!24165 () Bool)

(declare-fun tb!4887 () Bool)

(assert (=> (and start!73870 (= defaultEntry!696 defaultEntry!696) t!24165) tb!4887))

(declare-fun result!9377 () Bool)

(assert (=> tb!4887 (= result!9377 tp_is_empty!16893)))

(assert (=> b!867037 t!24165))

(declare-fun b_and!24513 () Bool)

(assert (= b_and!24511 (and (=> t!24165 result!9377) b_and!24513)))

(declare-fun m!808907 () Bool)

(assert (=> b!867027 m!808907))

(declare-fun m!808909 () Bool)

(assert (=> b!867027 m!808909))

(declare-fun m!808911 () Bool)

(assert (=> b!867027 m!808911))

(declare-fun m!808913 () Bool)

(assert (=> b!867027 m!808913))

(declare-fun m!808915 () Bool)

(assert (=> b!867027 m!808915))

(declare-fun m!808917 () Bool)

(assert (=> b!867030 m!808917))

(assert (=> b!867030 m!808917))

(declare-fun m!808919 () Bool)

(assert (=> b!867030 m!808919))

(declare-fun m!808921 () Bool)

(assert (=> b!867030 m!808921))

(assert (=> b!867030 m!808921))

(declare-fun m!808923 () Bool)

(assert (=> b!867030 m!808923))

(declare-fun m!808925 () Bool)

(assert (=> b!867029 m!808925))

(assert (=> b!867029 m!808921))

(declare-fun m!808927 () Bool)

(assert (=> b!867029 m!808927))

(assert (=> b!867029 m!808921))

(declare-fun m!808929 () Bool)

(assert (=> b!867029 m!808929))

(declare-fun m!808931 () Bool)

(assert (=> b!867029 m!808931))

(declare-fun m!808933 () Bool)

(assert (=> b!867029 m!808933))

(declare-fun m!808935 () Bool)

(assert (=> start!73870 m!808935))

(declare-fun m!808937 () Bool)

(assert (=> start!73870 m!808937))

(declare-fun m!808939 () Bool)

(assert (=> b!867038 m!808939))

(declare-fun m!808941 () Bool)

(assert (=> b!867037 m!808941))

(declare-fun m!808943 () Bool)

(assert (=> b!867037 m!808943))

(declare-fun m!808945 () Bool)

(assert (=> b!867037 m!808945))

(declare-fun m!808947 () Bool)

(assert (=> b!867037 m!808947))

(assert (=> b!867037 m!808943))

(assert (=> b!867037 m!808921))

(assert (=> b!867037 m!808945))

(declare-fun m!808949 () Bool)

(assert (=> mapNonEmpty!26939 m!808949))

(declare-fun m!808951 () Bool)

(assert (=> b!867040 m!808951))

(declare-fun m!808953 () Bool)

(assert (=> b!867028 m!808953))

(declare-fun m!808955 () Bool)

(assert (=> b!867036 m!808955))

(declare-fun m!808957 () Bool)

(assert (=> b!867034 m!808957))

(declare-fun m!808959 () Bool)

(assert (=> b!867034 m!808959))

(declare-fun m!808961 () Bool)

(assert (=> b!867034 m!808961))

(declare-fun m!808963 () Bool)

(assert (=> b!867026 m!808963))

(check-sat (not b!867034) (not b!867027) (not mapNonEmpty!26939) (not b!867030) (not start!73870) b_and!24513 (not b!867038) (not b!867040) tp_is_empty!16893 (not b_lambda!12139) (not b!867037) (not b!867028) (not b_next!14757) (not b!867036) (not b!867029))
(check-sat b_and!24513 (not b_next!14757))
