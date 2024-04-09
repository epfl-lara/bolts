; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73738 () Bool)

(assert start!73738)

(declare-fun b_free!14625 () Bool)

(declare-fun b_next!14625 () Bool)

(assert (=> start!73738 (= b_free!14625 (not b_next!14625))))

(declare-fun tp!51380 () Bool)

(declare-fun b_and!24247 () Bool)

(assert (=> start!73738 (= tp!51380 b_and!24247)))

(declare-fun b!863725 () Bool)

(declare-fun res!587030 () Bool)

(declare-fun e!481211 () Bool)

(assert (=> b!863725 (=> (not res!587030) (not e!481211))))

(declare-datatypes ((array!49666 0))(
  ( (array!49667 (arr!23860 (Array (_ BitVec 32) (_ BitVec 64))) (size!24301 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49666)

(declare-datatypes ((List!17024 0))(
  ( (Nil!17021) (Cons!17020 (h!18151 (_ BitVec 64)) (t!23923 List!17024)) )
))
(declare-fun arrayNoDuplicates!0 (array!49666 (_ BitVec 32) List!17024) Bool)

(assert (=> b!863725 (= res!587030 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17021))))

(declare-fun b!863727 () Bool)

(declare-fun e!481212 () Bool)

(declare-fun e!481210 () Bool)

(assert (=> b!863727 (= e!481212 e!481210)))

(declare-fun res!587026 () Bool)

(assert (=> b!863727 (=> res!587026 e!481210)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!863727 (= res!587026 (= k0!854 (select (arr!23860 _keys!868) from!1053)))))

(assert (=> b!863727 (not (= (select (arr!23860 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29505 0))(
  ( (Unit!29506) )
))
(declare-fun lt!390603 () Unit!29505)

(declare-fun e!481214 () Unit!29505)

(assert (=> b!863727 (= lt!390603 e!481214)))

(declare-fun c!92076 () Bool)

(assert (=> b!863727 (= c!92076 (= (select (arr!23860 _keys!868) from!1053) k0!854))))

(declare-datatypes ((V!27395 0))(
  ( (V!27396 (val!8428 Int)) )
))
(declare-datatypes ((tuple2!11156 0))(
  ( (tuple2!11157 (_1!5588 (_ BitVec 64)) (_2!5588 V!27395)) )
))
(declare-datatypes ((List!17025 0))(
  ( (Nil!17022) (Cons!17021 (h!18152 tuple2!11156) (t!23924 List!17025)) )
))
(declare-datatypes ((ListLongMap!9939 0))(
  ( (ListLongMap!9940 (toList!4985 List!17025)) )
))
(declare-fun lt!390596 () ListLongMap!9939)

(declare-fun lt!390595 () ListLongMap!9939)

(assert (=> b!863727 (= lt!390596 lt!390595)))

(declare-fun lt!390600 () ListLongMap!9939)

(declare-fun lt!390599 () tuple2!11156)

(declare-fun +!2282 (ListLongMap!9939 tuple2!11156) ListLongMap!9939)

(assert (=> b!863727 (= lt!390595 (+!2282 lt!390600 lt!390599))))

(declare-fun lt!390608 () V!27395)

(assert (=> b!863727 (= lt!390599 (tuple2!11157 (select (arr!23860 _keys!868) from!1053) lt!390608))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7941 0))(
  ( (ValueCellFull!7941 (v!10849 V!27395)) (EmptyCell!7941) )
))
(declare-datatypes ((array!49668 0))(
  ( (array!49669 (arr!23861 (Array (_ BitVec 32) ValueCell!7941)) (size!24302 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49668)

(declare-fun get!12614 (ValueCell!7941 V!27395) V!27395)

(declare-fun dynLambda!1156 (Int (_ BitVec 64)) V!27395)

(assert (=> b!863727 (= lt!390608 (get!12614 (select (arr!23861 _values!688) from!1053) (dynLambda!1156 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863728 () Bool)

(declare-fun res!587032 () Bool)

(assert (=> b!863728 (=> (not res!587032) (not e!481211))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49666 (_ BitVec 32)) Bool)

(assert (=> b!863728 (= res!587032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863729 () Bool)

(declare-fun res!587034 () Bool)

(assert (=> b!863729 (=> (not res!587034) (not e!481211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863729 (= res!587034 (validKeyInArray!0 k0!854))))

(declare-fun b!863730 () Bool)

(assert (=> b!863730 (= e!481210 true)))

(declare-fun lt!390597 () tuple2!11156)

(declare-fun lt!390609 () ListLongMap!9939)

(assert (=> b!863730 (= lt!390595 (+!2282 (+!2282 lt!390609 lt!390599) lt!390597))))

(declare-fun v!557 () V!27395)

(declare-fun lt!390598 () Unit!29505)

(declare-fun addCommutativeForDiffKeys!494 (ListLongMap!9939 (_ BitVec 64) V!27395 (_ BitVec 64) V!27395) Unit!29505)

(assert (=> b!863730 (= lt!390598 (addCommutativeForDiffKeys!494 lt!390609 k0!854 v!557 (select (arr!23860 _keys!868) from!1053) lt!390608))))

(declare-fun b!863731 () Bool)

(declare-fun res!587027 () Bool)

(assert (=> b!863731 (=> (not res!587027) (not e!481211))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!863731 (= res!587027 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24301 _keys!868))))))

(declare-fun b!863732 () Bool)

(declare-fun Unit!29507 () Unit!29505)

(assert (=> b!863732 (= e!481214 Unit!29507)))

(declare-fun lt!390606 () Unit!29505)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49666 (_ BitVec 32) (_ BitVec 32)) Unit!29505)

(assert (=> b!863732 (= lt!390606 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!863732 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17021)))

(declare-fun lt!390594 () Unit!29505)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29505)

(assert (=> b!863732 (= lt!390594 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863732 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390601 () Unit!29505)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49666 (_ BitVec 64) (_ BitVec 32) List!17024) Unit!29505)

(assert (=> b!863732 (= lt!390601 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17021))))

(assert (=> b!863732 false))

(declare-fun mapIsEmpty!26741 () Bool)

(declare-fun mapRes!26741 () Bool)

(assert (=> mapIsEmpty!26741 mapRes!26741))

(declare-fun b!863733 () Bool)

(declare-fun res!587031 () Bool)

(assert (=> b!863733 (=> (not res!587031) (not e!481211))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!863733 (= res!587031 (and (= (size!24302 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24301 _keys!868) (size!24302 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863734 () Bool)

(declare-fun res!587025 () Bool)

(assert (=> b!863734 (=> (not res!587025) (not e!481211))))

(assert (=> b!863734 (= res!587025 (and (= (select (arr!23860 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!587033 () Bool)

(assert (=> start!73738 (=> (not res!587033) (not e!481211))))

(assert (=> start!73738 (= res!587033 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24301 _keys!868))))))

(assert (=> start!73738 e!481211))

(declare-fun tp_is_empty!16761 () Bool)

(assert (=> start!73738 tp_is_empty!16761))

(assert (=> start!73738 true))

(assert (=> start!73738 tp!51380))

(declare-fun array_inv!18848 (array!49666) Bool)

(assert (=> start!73738 (array_inv!18848 _keys!868)))

(declare-fun e!481216 () Bool)

(declare-fun array_inv!18849 (array!49668) Bool)

(assert (=> start!73738 (and (array_inv!18849 _values!688) e!481216)))

(declare-fun b!863726 () Bool)

(declare-fun e!481217 () Bool)

(assert (=> b!863726 (= e!481217 tp_is_empty!16761)))

(declare-fun b!863735 () Bool)

(declare-fun res!587024 () Bool)

(assert (=> b!863735 (=> (not res!587024) (not e!481211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863735 (= res!587024 (validMask!0 mask!1196))))

(declare-fun b!863736 () Bool)

(declare-fun e!481218 () Bool)

(assert (=> b!863736 (= e!481218 (not e!481212))))

(declare-fun res!587029 () Bool)

(assert (=> b!863736 (=> res!587029 e!481212)))

(assert (=> b!863736 (= res!587029 (not (validKeyInArray!0 (select (arr!23860 _keys!868) from!1053))))))

(declare-fun lt!390604 () ListLongMap!9939)

(assert (=> b!863736 (= lt!390604 lt!390600)))

(assert (=> b!863736 (= lt!390600 (+!2282 lt!390609 lt!390597))))

(declare-fun lt!390602 () array!49668)

(declare-fun minValue!654 () V!27395)

(declare-fun zeroValue!654 () V!27395)

(declare-fun getCurrentListMapNoExtraKeys!2959 (array!49666 array!49668 (_ BitVec 32) (_ BitVec 32) V!27395 V!27395 (_ BitVec 32) Int) ListLongMap!9939)

(assert (=> b!863736 (= lt!390604 (getCurrentListMapNoExtraKeys!2959 _keys!868 lt!390602 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863736 (= lt!390597 (tuple2!11157 k0!854 v!557))))

(assert (=> b!863736 (= lt!390609 (getCurrentListMapNoExtraKeys!2959 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390607 () Unit!29505)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!528 (array!49666 array!49668 (_ BitVec 32) (_ BitVec 32) V!27395 V!27395 (_ BitVec 32) (_ BitVec 64) V!27395 (_ BitVec 32) Int) Unit!29505)

(assert (=> b!863736 (= lt!390607 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!528 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863737 () Bool)

(declare-fun e!481215 () Bool)

(assert (=> b!863737 (= e!481216 (and e!481215 mapRes!26741))))

(declare-fun condMapEmpty!26741 () Bool)

(declare-fun mapDefault!26741 () ValueCell!7941)

(assert (=> b!863737 (= condMapEmpty!26741 (= (arr!23861 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7941)) mapDefault!26741)))))

(declare-fun b!863738 () Bool)

(assert (=> b!863738 (= e!481215 tp_is_empty!16761)))

(declare-fun b!863739 () Bool)

(declare-fun Unit!29508 () Unit!29505)

(assert (=> b!863739 (= e!481214 Unit!29508)))

(declare-fun mapNonEmpty!26741 () Bool)

(declare-fun tp!51379 () Bool)

(assert (=> mapNonEmpty!26741 (= mapRes!26741 (and tp!51379 e!481217))))

(declare-fun mapRest!26741 () (Array (_ BitVec 32) ValueCell!7941))

(declare-fun mapValue!26741 () ValueCell!7941)

(declare-fun mapKey!26741 () (_ BitVec 32))

(assert (=> mapNonEmpty!26741 (= (arr!23861 _values!688) (store mapRest!26741 mapKey!26741 mapValue!26741))))

(declare-fun b!863740 () Bool)

(assert (=> b!863740 (= e!481211 e!481218)))

(declare-fun res!587028 () Bool)

(assert (=> b!863740 (=> (not res!587028) (not e!481218))))

(assert (=> b!863740 (= res!587028 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!863740 (= lt!390596 (getCurrentListMapNoExtraKeys!2959 _keys!868 lt!390602 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!863740 (= lt!390602 (array!49669 (store (arr!23861 _values!688) i!612 (ValueCellFull!7941 v!557)) (size!24302 _values!688)))))

(declare-fun lt!390605 () ListLongMap!9939)

(assert (=> b!863740 (= lt!390605 (getCurrentListMapNoExtraKeys!2959 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73738 res!587033) b!863735))

(assert (= (and b!863735 res!587024) b!863733))

(assert (= (and b!863733 res!587031) b!863728))

(assert (= (and b!863728 res!587032) b!863725))

(assert (= (and b!863725 res!587030) b!863731))

(assert (= (and b!863731 res!587027) b!863729))

(assert (= (and b!863729 res!587034) b!863734))

(assert (= (and b!863734 res!587025) b!863740))

(assert (= (and b!863740 res!587028) b!863736))

(assert (= (and b!863736 (not res!587029)) b!863727))

(assert (= (and b!863727 c!92076) b!863732))

(assert (= (and b!863727 (not c!92076)) b!863739))

(assert (= (and b!863727 (not res!587026)) b!863730))

(assert (= (and b!863737 condMapEmpty!26741) mapIsEmpty!26741))

(assert (= (and b!863737 (not condMapEmpty!26741)) mapNonEmpty!26741))

(get-info :version)

(assert (= (and mapNonEmpty!26741 ((_ is ValueCellFull!7941) mapValue!26741)) b!863726))

(assert (= (and b!863737 ((_ is ValueCellFull!7941) mapDefault!26741)) b!863738))

(assert (= start!73738 b!863737))

(declare-fun b_lambda!12007 () Bool)

(assert (=> (not b_lambda!12007) (not b!863727)))

(declare-fun t!23922 () Bool)

(declare-fun tb!4755 () Bool)

(assert (=> (and start!73738 (= defaultEntry!696 defaultEntry!696) t!23922) tb!4755))

(declare-fun result!9113 () Bool)

(assert (=> tb!4755 (= result!9113 tp_is_empty!16761)))

(assert (=> b!863727 t!23922))

(declare-fun b_and!24249 () Bool)

(assert (= b_and!24247 (and (=> t!23922 result!9113) b_and!24249)))

(declare-fun m!805079 () Bool)

(assert (=> b!863727 m!805079))

(declare-fun m!805081 () Bool)

(assert (=> b!863727 m!805081))

(declare-fun m!805083 () Bool)

(assert (=> b!863727 m!805083))

(declare-fun m!805085 () Bool)

(assert (=> b!863727 m!805085))

(assert (=> b!863727 m!805081))

(declare-fun m!805087 () Bool)

(assert (=> b!863727 m!805087))

(assert (=> b!863727 m!805083))

(declare-fun m!805089 () Bool)

(assert (=> start!73738 m!805089))

(declare-fun m!805091 () Bool)

(assert (=> start!73738 m!805091))

(declare-fun m!805093 () Bool)

(assert (=> b!863728 m!805093))

(declare-fun m!805095 () Bool)

(assert (=> mapNonEmpty!26741 m!805095))

(declare-fun m!805097 () Bool)

(assert (=> b!863725 m!805097))

(declare-fun m!805099 () Bool)

(assert (=> b!863736 m!805099))

(assert (=> b!863736 m!805087))

(declare-fun m!805101 () Bool)

(assert (=> b!863736 m!805101))

(assert (=> b!863736 m!805087))

(declare-fun m!805103 () Bool)

(assert (=> b!863736 m!805103))

(declare-fun m!805105 () Bool)

(assert (=> b!863736 m!805105))

(declare-fun m!805107 () Bool)

(assert (=> b!863736 m!805107))

(declare-fun m!805109 () Bool)

(assert (=> b!863729 m!805109))

(declare-fun m!805111 () Bool)

(assert (=> b!863732 m!805111))

(declare-fun m!805113 () Bool)

(assert (=> b!863732 m!805113))

(declare-fun m!805115 () Bool)

(assert (=> b!863732 m!805115))

(declare-fun m!805117 () Bool)

(assert (=> b!863732 m!805117))

(declare-fun m!805119 () Bool)

(assert (=> b!863732 m!805119))

(declare-fun m!805121 () Bool)

(assert (=> b!863734 m!805121))

(declare-fun m!805123 () Bool)

(assert (=> b!863735 m!805123))

(declare-fun m!805125 () Bool)

(assert (=> b!863740 m!805125))

(declare-fun m!805127 () Bool)

(assert (=> b!863740 m!805127))

(declare-fun m!805129 () Bool)

(assert (=> b!863740 m!805129))

(declare-fun m!805131 () Bool)

(assert (=> b!863730 m!805131))

(assert (=> b!863730 m!805131))

(declare-fun m!805133 () Bool)

(assert (=> b!863730 m!805133))

(assert (=> b!863730 m!805087))

(assert (=> b!863730 m!805087))

(declare-fun m!805135 () Bool)

(assert (=> b!863730 m!805135))

(check-sat (not b!863740) (not start!73738) (not b_lambda!12007) (not mapNonEmpty!26741) (not b!863729) (not b!863727) (not b!863736) (not b!863732) (not b!863725) (not b!863730) (not b_next!14625) b_and!24249 tp_is_empty!16761 (not b!863735) (not b!863728))
(check-sat b_and!24249 (not b_next!14625))
