; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73744 () Bool)

(assert start!73744)

(declare-fun b_free!14631 () Bool)

(declare-fun b_next!14631 () Bool)

(assert (=> start!73744 (= b_free!14631 (not b_next!14631))))

(declare-fun tp!51398 () Bool)

(declare-fun b_and!24259 () Bool)

(assert (=> start!73744 (= tp!51398 b_and!24259)))

(declare-fun b!863875 () Bool)

(declare-fun e!481293 () Bool)

(declare-fun e!481298 () Bool)

(assert (=> b!863875 (= e!481293 e!481298)))

(declare-fun res!587129 () Bool)

(assert (=> b!863875 (=> (not res!587129) (not e!481298))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!863875 (= res!587129 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27403 0))(
  ( (V!27404 (val!8431 Int)) )
))
(declare-datatypes ((tuple2!11162 0))(
  ( (tuple2!11163 (_1!5591 (_ BitVec 64)) (_2!5591 V!27403)) )
))
(declare-datatypes ((List!17029 0))(
  ( (Nil!17026) (Cons!17025 (h!18156 tuple2!11162) (t!23934 List!17029)) )
))
(declare-datatypes ((ListLongMap!9945 0))(
  ( (ListLongMap!9946 (toList!4988 List!17029)) )
))
(declare-fun lt!390750 () ListLongMap!9945)

(declare-datatypes ((array!49678 0))(
  ( (array!49679 (arr!23866 (Array (_ BitVec 32) (_ BitVec 64))) (size!24307 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49678)

(declare-fun minValue!654 () V!27403)

(declare-fun zeroValue!654 () V!27403)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7944 0))(
  ( (ValueCellFull!7944 (v!10852 V!27403)) (EmptyCell!7944) )
))
(declare-datatypes ((array!49680 0))(
  ( (array!49681 (arr!23867 (Array (_ BitVec 32) ValueCell!7944)) (size!24308 (_ BitVec 32))) )
))
(declare-fun lt!390739 () array!49680)

(declare-fun getCurrentListMapNoExtraKeys!2961 (array!49678 array!49680 (_ BitVec 32) (_ BitVec 32) V!27403 V!27403 (_ BitVec 32) Int) ListLongMap!9945)

(assert (=> b!863875 (= lt!390750 (getCurrentListMapNoExtraKeys!2961 _keys!868 lt!390739 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27403)

(declare-fun _values!688 () array!49680)

(assert (=> b!863875 (= lt!390739 (array!49681 (store (arr!23867 _values!688) i!612 (ValueCellFull!7944 v!557)) (size!24308 _values!688)))))

(declare-fun lt!390748 () ListLongMap!9945)

(assert (=> b!863875 (= lt!390748 (getCurrentListMapNoExtraKeys!2961 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863876 () Bool)

(declare-datatypes ((Unit!29515 0))(
  ( (Unit!29516) )
))
(declare-fun e!481299 () Unit!29515)

(declare-fun Unit!29517 () Unit!29515)

(assert (=> b!863876 (= e!481299 Unit!29517)))

(declare-fun b!863877 () Bool)

(declare-fun Unit!29518 () Unit!29515)

(assert (=> b!863877 (= e!481299 Unit!29518)))

(declare-fun lt!390740 () Unit!29515)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49678 (_ BitVec 32) (_ BitVec 32)) Unit!29515)

(assert (=> b!863877 (= lt!390740 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17030 0))(
  ( (Nil!17027) (Cons!17026 (h!18157 (_ BitVec 64)) (t!23935 List!17030)) )
))
(declare-fun arrayNoDuplicates!0 (array!49678 (_ BitVec 32) List!17030) Bool)

(assert (=> b!863877 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17027)))

(declare-fun lt!390747 () Unit!29515)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49678 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29515)

(assert (=> b!863877 (= lt!390747 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863877 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390743 () Unit!29515)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49678 (_ BitVec 64) (_ BitVec 32) List!17030) Unit!29515)

(assert (=> b!863877 (= lt!390743 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17027))))

(assert (=> b!863877 false))

(declare-fun b!863878 () Bool)

(declare-fun res!587127 () Bool)

(assert (=> b!863878 (=> (not res!587127) (not e!481293))))

(assert (=> b!863878 (= res!587127 (and (= (size!24308 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24307 _keys!868) (size!24308 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863879 () Bool)

(declare-fun e!481292 () Bool)

(declare-fun e!481295 () Bool)

(assert (=> b!863879 (= e!481292 e!481295)))

(declare-fun res!587125 () Bool)

(assert (=> b!863879 (=> res!587125 e!481295)))

(assert (=> b!863879 (= res!587125 (= k0!854 (select (arr!23866 _keys!868) from!1053)))))

(assert (=> b!863879 (not (= (select (arr!23866 _keys!868) from!1053) k0!854))))

(declare-fun lt!390746 () Unit!29515)

(assert (=> b!863879 (= lt!390746 e!481299)))

(declare-fun c!92085 () Bool)

(assert (=> b!863879 (= c!92085 (= (select (arr!23866 _keys!868) from!1053) k0!854))))

(declare-fun lt!390749 () ListLongMap!9945)

(assert (=> b!863879 (= lt!390750 lt!390749)))

(declare-fun lt!390738 () ListLongMap!9945)

(declare-fun lt!390752 () tuple2!11162)

(declare-fun +!2285 (ListLongMap!9945 tuple2!11162) ListLongMap!9945)

(assert (=> b!863879 (= lt!390749 (+!2285 lt!390738 lt!390752))))

(declare-fun lt!390741 () V!27403)

(assert (=> b!863879 (= lt!390752 (tuple2!11163 (select (arr!23866 _keys!868) from!1053) lt!390741))))

(declare-fun get!12618 (ValueCell!7944 V!27403) V!27403)

(declare-fun dynLambda!1158 (Int (_ BitVec 64)) V!27403)

(assert (=> b!863879 (= lt!390741 (get!12618 (select (arr!23867 _values!688) from!1053) (dynLambda!1158 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863880 () Bool)

(declare-fun e!481297 () Bool)

(declare-fun tp_is_empty!16767 () Bool)

(assert (=> b!863880 (= e!481297 tp_is_empty!16767)))

(declare-fun b!863881 () Bool)

(assert (=> b!863881 (= e!481295 true)))

(declare-fun lt!390745 () tuple2!11162)

(declare-fun lt!390744 () ListLongMap!9945)

(assert (=> b!863881 (= lt!390749 (+!2285 (+!2285 lt!390744 lt!390752) lt!390745))))

(declare-fun lt!390742 () Unit!29515)

(declare-fun addCommutativeForDiffKeys!497 (ListLongMap!9945 (_ BitVec 64) V!27403 (_ BitVec 64) V!27403) Unit!29515)

(assert (=> b!863881 (= lt!390742 (addCommutativeForDiffKeys!497 lt!390744 k0!854 v!557 (select (arr!23866 _keys!868) from!1053) lt!390741))))

(declare-fun b!863882 () Bool)

(declare-fun e!481296 () Bool)

(declare-fun e!481291 () Bool)

(declare-fun mapRes!26750 () Bool)

(assert (=> b!863882 (= e!481296 (and e!481291 mapRes!26750))))

(declare-fun condMapEmpty!26750 () Bool)

(declare-fun mapDefault!26750 () ValueCell!7944)

(assert (=> b!863882 (= condMapEmpty!26750 (= (arr!23867 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7944)) mapDefault!26750)))))

(declare-fun res!587132 () Bool)

(assert (=> start!73744 (=> (not res!587132) (not e!481293))))

(assert (=> start!73744 (= res!587132 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24307 _keys!868))))))

(assert (=> start!73744 e!481293))

(assert (=> start!73744 tp_is_empty!16767))

(assert (=> start!73744 true))

(assert (=> start!73744 tp!51398))

(declare-fun array_inv!18854 (array!49678) Bool)

(assert (=> start!73744 (array_inv!18854 _keys!868)))

(declare-fun array_inv!18855 (array!49680) Bool)

(assert (=> start!73744 (and (array_inv!18855 _values!688) e!481296)))

(declare-fun b!863883 () Bool)

(declare-fun res!587133 () Bool)

(assert (=> b!863883 (=> (not res!587133) (not e!481293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863883 (= res!587133 (validMask!0 mask!1196))))

(declare-fun b!863884 () Bool)

(declare-fun res!587131 () Bool)

(assert (=> b!863884 (=> (not res!587131) (not e!481293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863884 (= res!587131 (validKeyInArray!0 k0!854))))

(declare-fun b!863885 () Bool)

(assert (=> b!863885 (= e!481291 tp_is_empty!16767)))

(declare-fun b!863886 () Bool)

(declare-fun res!587128 () Bool)

(assert (=> b!863886 (=> (not res!587128) (not e!481293))))

(assert (=> b!863886 (= res!587128 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17027))))

(declare-fun mapIsEmpty!26750 () Bool)

(assert (=> mapIsEmpty!26750 mapRes!26750))

(declare-fun mapNonEmpty!26750 () Bool)

(declare-fun tp!51397 () Bool)

(assert (=> mapNonEmpty!26750 (= mapRes!26750 (and tp!51397 e!481297))))

(declare-fun mapKey!26750 () (_ BitVec 32))

(declare-fun mapValue!26750 () ValueCell!7944)

(declare-fun mapRest!26750 () (Array (_ BitVec 32) ValueCell!7944))

(assert (=> mapNonEmpty!26750 (= (arr!23867 _values!688) (store mapRest!26750 mapKey!26750 mapValue!26750))))

(declare-fun b!863887 () Bool)

(declare-fun res!587130 () Bool)

(assert (=> b!863887 (=> (not res!587130) (not e!481293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49678 (_ BitVec 32)) Bool)

(assert (=> b!863887 (= res!587130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863888 () Bool)

(declare-fun res!587123 () Bool)

(assert (=> b!863888 (=> (not res!587123) (not e!481293))))

(assert (=> b!863888 (= res!587123 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24307 _keys!868))))))

(declare-fun b!863889 () Bool)

(assert (=> b!863889 (= e!481298 (not e!481292))))

(declare-fun res!587126 () Bool)

(assert (=> b!863889 (=> res!587126 e!481292)))

(assert (=> b!863889 (= res!587126 (not (validKeyInArray!0 (select (arr!23866 _keys!868) from!1053))))))

(declare-fun lt!390753 () ListLongMap!9945)

(assert (=> b!863889 (= lt!390753 lt!390738)))

(assert (=> b!863889 (= lt!390738 (+!2285 lt!390744 lt!390745))))

(assert (=> b!863889 (= lt!390753 (getCurrentListMapNoExtraKeys!2961 _keys!868 lt!390739 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863889 (= lt!390745 (tuple2!11163 k0!854 v!557))))

(assert (=> b!863889 (= lt!390744 (getCurrentListMapNoExtraKeys!2961 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390751 () Unit!29515)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!530 (array!49678 array!49680 (_ BitVec 32) (_ BitVec 32) V!27403 V!27403 (_ BitVec 32) (_ BitVec 64) V!27403 (_ BitVec 32) Int) Unit!29515)

(assert (=> b!863889 (= lt!390751 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!530 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863890 () Bool)

(declare-fun res!587124 () Bool)

(assert (=> b!863890 (=> (not res!587124) (not e!481293))))

(assert (=> b!863890 (= res!587124 (and (= (select (arr!23866 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!73744 res!587132) b!863883))

(assert (= (and b!863883 res!587133) b!863878))

(assert (= (and b!863878 res!587127) b!863887))

(assert (= (and b!863887 res!587130) b!863886))

(assert (= (and b!863886 res!587128) b!863888))

(assert (= (and b!863888 res!587123) b!863884))

(assert (= (and b!863884 res!587131) b!863890))

(assert (= (and b!863890 res!587124) b!863875))

(assert (= (and b!863875 res!587129) b!863889))

(assert (= (and b!863889 (not res!587126)) b!863879))

(assert (= (and b!863879 c!92085) b!863877))

(assert (= (and b!863879 (not c!92085)) b!863876))

(assert (= (and b!863879 (not res!587125)) b!863881))

(assert (= (and b!863882 condMapEmpty!26750) mapIsEmpty!26750))

(assert (= (and b!863882 (not condMapEmpty!26750)) mapNonEmpty!26750))

(get-info :version)

(assert (= (and mapNonEmpty!26750 ((_ is ValueCellFull!7944) mapValue!26750)) b!863880))

(assert (= (and b!863882 ((_ is ValueCellFull!7944) mapDefault!26750)) b!863885))

(assert (= start!73744 b!863882))

(declare-fun b_lambda!12013 () Bool)

(assert (=> (not b_lambda!12013) (not b!863879)))

(declare-fun t!23933 () Bool)

(declare-fun tb!4761 () Bool)

(assert (=> (and start!73744 (= defaultEntry!696 defaultEntry!696) t!23933) tb!4761))

(declare-fun result!9125 () Bool)

(assert (=> tb!4761 (= result!9125 tp_is_empty!16767)))

(assert (=> b!863879 t!23933))

(declare-fun b_and!24261 () Bool)

(assert (= b_and!24259 (and (=> t!23933 result!9125) b_and!24261)))

(declare-fun m!805253 () Bool)

(assert (=> start!73744 m!805253))

(declare-fun m!805255 () Bool)

(assert (=> start!73744 m!805255))

(declare-fun m!805257 () Bool)

(assert (=> b!863889 m!805257))

(declare-fun m!805259 () Bool)

(assert (=> b!863889 m!805259))

(declare-fun m!805261 () Bool)

(assert (=> b!863889 m!805261))

(assert (=> b!863889 m!805259))

(declare-fun m!805263 () Bool)

(assert (=> b!863889 m!805263))

(declare-fun m!805265 () Bool)

(assert (=> b!863889 m!805265))

(declare-fun m!805267 () Bool)

(assert (=> b!863889 m!805267))

(declare-fun m!805269 () Bool)

(assert (=> b!863884 m!805269))

(declare-fun m!805271 () Bool)

(assert (=> b!863875 m!805271))

(declare-fun m!805273 () Bool)

(assert (=> b!863875 m!805273))

(declare-fun m!805275 () Bool)

(assert (=> b!863875 m!805275))

(declare-fun m!805277 () Bool)

(assert (=> b!863881 m!805277))

(assert (=> b!863881 m!805277))

(declare-fun m!805279 () Bool)

(assert (=> b!863881 m!805279))

(assert (=> b!863881 m!805259))

(assert (=> b!863881 m!805259))

(declare-fun m!805281 () Bool)

(assert (=> b!863881 m!805281))

(declare-fun m!805283 () Bool)

(assert (=> b!863886 m!805283))

(declare-fun m!805285 () Bool)

(assert (=> b!863887 m!805285))

(declare-fun m!805287 () Bool)

(assert (=> mapNonEmpty!26750 m!805287))

(declare-fun m!805289 () Bool)

(assert (=> b!863877 m!805289))

(declare-fun m!805291 () Bool)

(assert (=> b!863877 m!805291))

(declare-fun m!805293 () Bool)

(assert (=> b!863877 m!805293))

(declare-fun m!805295 () Bool)

(assert (=> b!863877 m!805295))

(declare-fun m!805297 () Bool)

(assert (=> b!863877 m!805297))

(declare-fun m!805299 () Bool)

(assert (=> b!863890 m!805299))

(declare-fun m!805301 () Bool)

(assert (=> b!863879 m!805301))

(declare-fun m!805303 () Bool)

(assert (=> b!863879 m!805303))

(declare-fun m!805305 () Bool)

(assert (=> b!863879 m!805305))

(declare-fun m!805307 () Bool)

(assert (=> b!863879 m!805307))

(assert (=> b!863879 m!805303))

(assert (=> b!863879 m!805259))

(assert (=> b!863879 m!805305))

(declare-fun m!805309 () Bool)

(assert (=> b!863883 m!805309))

(check-sat (not b!863886) (not start!73744) (not b!863875) (not b!863887) (not b!863883) (not b!863884) (not b!863877) (not b_next!14631) (not mapNonEmpty!26750) (not b_lambda!12013) tp_is_empty!16767 (not b!863881) b_and!24261 (not b!863879) (not b!863889))
(check-sat b_and!24261 (not b_next!14631))
