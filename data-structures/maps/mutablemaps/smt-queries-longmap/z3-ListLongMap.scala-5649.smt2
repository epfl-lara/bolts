; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73708 () Bool)

(assert start!73708)

(declare-fun b_free!14595 () Bool)

(declare-fun b_next!14595 () Bool)

(assert (=> start!73708 (= b_free!14595 (not b_next!14595))))

(declare-fun tp!51289 () Bool)

(declare-fun b_and!24187 () Bool)

(assert (=> start!73708 (= tp!51289 b_and!24187)))

(declare-fun b!862975 () Bool)

(declare-fun res!586535 () Bool)

(declare-fun e!480809 () Bool)

(assert (=> b!862975 (=> (not res!586535) (not e!480809))))

(declare-datatypes ((array!49608 0))(
  ( (array!49609 (arr!23831 (Array (_ BitVec 32) (_ BitVec 64))) (size!24272 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49608)

(declare-datatypes ((List!16998 0))(
  ( (Nil!16995) (Cons!16994 (h!18125 (_ BitVec 64)) (t!23867 List!16998)) )
))
(declare-fun arrayNoDuplicates!0 (array!49608 (_ BitVec 32) List!16998) Bool)

(assert (=> b!862975 (= res!586535 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16995))))

(declare-fun b!862976 () Bool)

(declare-fun res!586537 () Bool)

(assert (=> b!862976 (=> (not res!586537) (not e!480809))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!862976 (= res!586537 (and (= (select (arr!23831 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862977 () Bool)

(declare-fun res!586530 () Bool)

(assert (=> b!862977 (=> (not res!586530) (not e!480809))))

(assert (=> b!862977 (= res!586530 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24272 _keys!868))))))

(declare-fun b!862978 () Bool)

(declare-fun e!480812 () Bool)

(declare-fun e!480811 () Bool)

(assert (=> b!862978 (= e!480812 (not e!480811))))

(declare-fun res!586529 () Bool)

(assert (=> b!862978 (=> res!586529 e!480811)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862978 (= res!586529 (not (validKeyInArray!0 (select (arr!23831 _keys!868) from!1053))))))

(declare-datatypes ((V!27355 0))(
  ( (V!27356 (val!8413 Int)) )
))
(declare-datatypes ((tuple2!11130 0))(
  ( (tuple2!11131 (_1!5575 (_ BitVec 64)) (_2!5575 V!27355)) )
))
(declare-datatypes ((List!16999 0))(
  ( (Nil!16996) (Cons!16995 (h!18126 tuple2!11130) (t!23868 List!16999)) )
))
(declare-datatypes ((ListLongMap!9913 0))(
  ( (ListLongMap!9914 (toList!4972 List!16999)) )
))
(declare-fun lt!389888 () ListLongMap!9913)

(declare-fun lt!389882 () ListLongMap!9913)

(assert (=> b!862978 (= lt!389888 lt!389882)))

(declare-fun lt!389876 () ListLongMap!9913)

(declare-fun lt!389886 () tuple2!11130)

(declare-fun +!2269 (ListLongMap!9913 tuple2!11130) ListLongMap!9913)

(assert (=> b!862978 (= lt!389882 (+!2269 lt!389876 lt!389886))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7926 0))(
  ( (ValueCellFull!7926 (v!10834 V!27355)) (EmptyCell!7926) )
))
(declare-datatypes ((array!49610 0))(
  ( (array!49611 (arr!23832 (Array (_ BitVec 32) ValueCell!7926)) (size!24273 (_ BitVec 32))) )
))
(declare-fun lt!389880 () array!49610)

(declare-fun minValue!654 () V!27355)

(declare-fun zeroValue!654 () V!27355)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2947 (array!49608 array!49610 (_ BitVec 32) (_ BitVec 32) V!27355 V!27355 (_ BitVec 32) Int) ListLongMap!9913)

(assert (=> b!862978 (= lt!389888 (getCurrentListMapNoExtraKeys!2947 _keys!868 lt!389880 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27355)

(assert (=> b!862978 (= lt!389886 (tuple2!11131 k0!854 v!557))))

(declare-fun _values!688 () array!49610)

(assert (=> b!862978 (= lt!389876 (getCurrentListMapNoExtraKeys!2947 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29457 0))(
  ( (Unit!29458) )
))
(declare-fun lt!389884 () Unit!29457)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!516 (array!49608 array!49610 (_ BitVec 32) (_ BitVec 32) V!27355 V!27355 (_ BitVec 32) (_ BitVec 64) V!27355 (_ BitVec 32) Int) Unit!29457)

(assert (=> b!862978 (= lt!389884 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!516 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862979 () Bool)

(assert (=> b!862979 (= e!480809 e!480812)))

(declare-fun res!586533 () Bool)

(assert (=> b!862979 (=> (not res!586533) (not e!480812))))

(assert (=> b!862979 (= res!586533 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!389879 () ListLongMap!9913)

(assert (=> b!862979 (= lt!389879 (getCurrentListMapNoExtraKeys!2947 _keys!868 lt!389880 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862979 (= lt!389880 (array!49611 (store (arr!23832 _values!688) i!612 (ValueCellFull!7926 v!557)) (size!24273 _values!688)))))

(declare-fun lt!389881 () ListLongMap!9913)

(assert (=> b!862979 (= lt!389881 (getCurrentListMapNoExtraKeys!2947 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862980 () Bool)

(declare-fun e!480813 () Bool)

(declare-fun e!480806 () Bool)

(declare-fun mapRes!26696 () Bool)

(assert (=> b!862980 (= e!480813 (and e!480806 mapRes!26696))))

(declare-fun condMapEmpty!26696 () Bool)

(declare-fun mapDefault!26696 () ValueCell!7926)

(assert (=> b!862980 (= condMapEmpty!26696 (= (arr!23832 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7926)) mapDefault!26696)))))

(declare-fun b!862981 () Bool)

(declare-fun tp_is_empty!16731 () Bool)

(assert (=> b!862981 (= e!480806 tp_is_empty!16731)))

(declare-fun mapNonEmpty!26696 () Bool)

(declare-fun tp!51290 () Bool)

(declare-fun e!480808 () Bool)

(assert (=> mapNonEmpty!26696 (= mapRes!26696 (and tp!51290 e!480808))))

(declare-fun mapValue!26696 () ValueCell!7926)

(declare-fun mapRest!26696 () (Array (_ BitVec 32) ValueCell!7926))

(declare-fun mapKey!26696 () (_ BitVec 32))

(assert (=> mapNonEmpty!26696 (= (arr!23832 _values!688) (store mapRest!26696 mapKey!26696 mapValue!26696))))

(declare-fun b!862982 () Bool)

(declare-fun e!480805 () Bool)

(assert (=> b!862982 (= e!480805 true)))

(declare-fun lt!389877 () ListLongMap!9913)

(declare-fun lt!389889 () tuple2!11130)

(assert (=> b!862982 (= lt!389877 (+!2269 (+!2269 lt!389876 lt!389889) lt!389886))))

(declare-fun lt!389883 () Unit!29457)

(declare-fun lt!389878 () V!27355)

(declare-fun addCommutativeForDiffKeys!484 (ListLongMap!9913 (_ BitVec 64) V!27355 (_ BitVec 64) V!27355) Unit!29457)

(assert (=> b!862982 (= lt!389883 (addCommutativeForDiffKeys!484 lt!389876 k0!854 v!557 (select (arr!23831 _keys!868) from!1053) lt!389878))))

(declare-fun b!862983 () Bool)

(declare-fun e!480810 () Unit!29457)

(declare-fun Unit!29459 () Unit!29457)

(assert (=> b!862983 (= e!480810 Unit!29459)))

(declare-fun b!862984 () Bool)

(declare-fun Unit!29460 () Unit!29457)

(assert (=> b!862984 (= e!480810 Unit!29460)))

(declare-fun lt!389885 () Unit!29457)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49608 (_ BitVec 32) (_ BitVec 32)) Unit!29457)

(assert (=> b!862984 (= lt!389885 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862984 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16995)))

(declare-fun lt!389875 () Unit!29457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49608 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29457)

(assert (=> b!862984 (= lt!389875 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862984 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389874 () Unit!29457)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49608 (_ BitVec 64) (_ BitVec 32) List!16998) Unit!29457)

(assert (=> b!862984 (= lt!389874 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16995))))

(assert (=> b!862984 false))

(declare-fun b!862985 () Bool)

(declare-fun res!586532 () Bool)

(assert (=> b!862985 (=> (not res!586532) (not e!480809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49608 (_ BitVec 32)) Bool)

(assert (=> b!862985 (= res!586532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862986 () Bool)

(declare-fun res!586539 () Bool)

(assert (=> b!862986 (=> (not res!586539) (not e!480809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862986 (= res!586539 (validMask!0 mask!1196))))

(declare-fun b!862987 () Bool)

(declare-fun res!586534 () Bool)

(assert (=> b!862987 (=> (not res!586534) (not e!480809))))

(assert (=> b!862987 (= res!586534 (validKeyInArray!0 k0!854))))

(declare-fun b!862988 () Bool)

(assert (=> b!862988 (= e!480808 tp_is_empty!16731)))

(declare-fun res!586536 () Bool)

(assert (=> start!73708 (=> (not res!586536) (not e!480809))))

(assert (=> start!73708 (= res!586536 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24272 _keys!868))))))

(assert (=> start!73708 e!480809))

(assert (=> start!73708 tp_is_empty!16731))

(assert (=> start!73708 true))

(assert (=> start!73708 tp!51289))

(declare-fun array_inv!18830 (array!49608) Bool)

(assert (=> start!73708 (array_inv!18830 _keys!868)))

(declare-fun array_inv!18831 (array!49610) Bool)

(assert (=> start!73708 (and (array_inv!18831 _values!688) e!480813)))

(declare-fun mapIsEmpty!26696 () Bool)

(assert (=> mapIsEmpty!26696 mapRes!26696))

(declare-fun b!862989 () Bool)

(assert (=> b!862989 (= e!480811 e!480805)))

(declare-fun res!586538 () Bool)

(assert (=> b!862989 (=> res!586538 e!480805)))

(assert (=> b!862989 (= res!586538 (= k0!854 (select (arr!23831 _keys!868) from!1053)))))

(assert (=> b!862989 (not (= (select (arr!23831 _keys!868) from!1053) k0!854))))

(declare-fun lt!389887 () Unit!29457)

(assert (=> b!862989 (= lt!389887 e!480810)))

(declare-fun c!92031 () Bool)

(assert (=> b!862989 (= c!92031 (= (select (arr!23831 _keys!868) from!1053) k0!854))))

(assert (=> b!862989 (= lt!389879 lt!389877)))

(assert (=> b!862989 (= lt!389877 (+!2269 lt!389882 lt!389889))))

(assert (=> b!862989 (= lt!389889 (tuple2!11131 (select (arr!23831 _keys!868) from!1053) lt!389878))))

(declare-fun get!12594 (ValueCell!7926 V!27355) V!27355)

(declare-fun dynLambda!1146 (Int (_ BitVec 64)) V!27355)

(assert (=> b!862989 (= lt!389878 (get!12594 (select (arr!23832 _values!688) from!1053) (dynLambda!1146 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862990 () Bool)

(declare-fun res!586531 () Bool)

(assert (=> b!862990 (=> (not res!586531) (not e!480809))))

(assert (=> b!862990 (= res!586531 (and (= (size!24273 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24272 _keys!868) (size!24273 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73708 res!586536) b!862986))

(assert (= (and b!862986 res!586539) b!862990))

(assert (= (and b!862990 res!586531) b!862985))

(assert (= (and b!862985 res!586532) b!862975))

(assert (= (and b!862975 res!586535) b!862977))

(assert (= (and b!862977 res!586530) b!862987))

(assert (= (and b!862987 res!586534) b!862976))

(assert (= (and b!862976 res!586537) b!862979))

(assert (= (and b!862979 res!586533) b!862978))

(assert (= (and b!862978 (not res!586529)) b!862989))

(assert (= (and b!862989 c!92031) b!862984))

(assert (= (and b!862989 (not c!92031)) b!862983))

(assert (= (and b!862989 (not res!586538)) b!862982))

(assert (= (and b!862980 condMapEmpty!26696) mapIsEmpty!26696))

(assert (= (and b!862980 (not condMapEmpty!26696)) mapNonEmpty!26696))

(get-info :version)

(assert (= (and mapNonEmpty!26696 ((_ is ValueCellFull!7926) mapValue!26696)) b!862988))

(assert (= (and b!862980 ((_ is ValueCellFull!7926) mapDefault!26696)) b!862981))

(assert (= start!73708 b!862980))

(declare-fun b_lambda!11977 () Bool)

(assert (=> (not b_lambda!11977) (not b!862989)))

(declare-fun t!23866 () Bool)

(declare-fun tb!4725 () Bool)

(assert (=> (and start!73708 (= defaultEntry!696 defaultEntry!696) t!23866) tb!4725))

(declare-fun result!9053 () Bool)

(assert (=> tb!4725 (= result!9053 tp_is_empty!16731)))

(assert (=> b!862989 t!23866))

(declare-fun b_and!24189 () Bool)

(assert (= b_and!24187 (and (=> t!23866 result!9053) b_and!24189)))

(declare-fun m!804209 () Bool)

(assert (=> b!862984 m!804209))

(declare-fun m!804211 () Bool)

(assert (=> b!862984 m!804211))

(declare-fun m!804213 () Bool)

(assert (=> b!862984 m!804213))

(declare-fun m!804215 () Bool)

(assert (=> b!862984 m!804215))

(declare-fun m!804217 () Bool)

(assert (=> b!862984 m!804217))

(declare-fun m!804219 () Bool)

(assert (=> b!862989 m!804219))

(declare-fun m!804221 () Bool)

(assert (=> b!862989 m!804221))

(declare-fun m!804223 () Bool)

(assert (=> b!862989 m!804223))

(assert (=> b!862989 m!804219))

(assert (=> b!862989 m!804223))

(declare-fun m!804225 () Bool)

(assert (=> b!862989 m!804225))

(declare-fun m!804227 () Bool)

(assert (=> b!862989 m!804227))

(declare-fun m!804229 () Bool)

(assert (=> b!862975 m!804229))

(declare-fun m!804231 () Bool)

(assert (=> mapNonEmpty!26696 m!804231))

(declare-fun m!804233 () Bool)

(assert (=> b!862985 m!804233))

(declare-fun m!804235 () Bool)

(assert (=> b!862986 m!804235))

(declare-fun m!804237 () Bool)

(assert (=> b!862987 m!804237))

(declare-fun m!804239 () Bool)

(assert (=> b!862978 m!804239))

(declare-fun m!804241 () Bool)

(assert (=> b!862978 m!804241))

(declare-fun m!804243 () Bool)

(assert (=> b!862978 m!804243))

(assert (=> b!862978 m!804221))

(declare-fun m!804245 () Bool)

(assert (=> b!862978 m!804245))

(assert (=> b!862978 m!804221))

(declare-fun m!804247 () Bool)

(assert (=> b!862978 m!804247))

(declare-fun m!804249 () Bool)

(assert (=> b!862976 m!804249))

(declare-fun m!804251 () Bool)

(assert (=> b!862979 m!804251))

(declare-fun m!804253 () Bool)

(assert (=> b!862979 m!804253))

(declare-fun m!804255 () Bool)

(assert (=> b!862979 m!804255))

(declare-fun m!804257 () Bool)

(assert (=> start!73708 m!804257))

(declare-fun m!804259 () Bool)

(assert (=> start!73708 m!804259))

(declare-fun m!804261 () Bool)

(assert (=> b!862982 m!804261))

(assert (=> b!862982 m!804261))

(declare-fun m!804263 () Bool)

(assert (=> b!862982 m!804263))

(assert (=> b!862982 m!804221))

(assert (=> b!862982 m!804221))

(declare-fun m!804265 () Bool)

(assert (=> b!862982 m!804265))

(check-sat (not b!862987) (not b!862984) (not b!862979) (not b_lambda!11977) (not b!862986) (not b!862985) (not b_next!14595) (not b!862978) tp_is_empty!16731 (not b!862982) (not b!862975) (not start!73708) (not b!862989) (not mapNonEmpty!26696) b_and!24189)
(check-sat b_and!24189 (not b_next!14595))
