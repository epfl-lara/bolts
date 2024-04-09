; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73678 () Bool)

(assert start!73678)

(declare-fun b_free!14565 () Bool)

(declare-fun b_next!14565 () Bool)

(assert (=> start!73678 (= b_free!14565 (not b_next!14565))))

(declare-fun tp!51199 () Bool)

(declare-fun b_and!24127 () Bool)

(assert (=> start!73678 (= tp!51199 b_and!24127)))

(declare-fun b!862225 () Bool)

(declare-fun res!586038 () Bool)

(declare-fun e!480403 () Bool)

(assert (=> b!862225 (=> (not res!586038) (not e!480403))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862225 (= res!586038 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26651 () Bool)

(declare-fun mapRes!26651 () Bool)

(declare-fun tp!51200 () Bool)

(declare-fun e!480407 () Bool)

(assert (=> mapNonEmpty!26651 (= mapRes!26651 (and tp!51200 e!480407))))

(declare-datatypes ((V!27315 0))(
  ( (V!27316 (val!8398 Int)) )
))
(declare-datatypes ((ValueCell!7911 0))(
  ( (ValueCellFull!7911 (v!10819 V!27315)) (EmptyCell!7911) )
))
(declare-fun mapValue!26651 () ValueCell!7911)

(declare-fun mapRest!26651 () (Array (_ BitVec 32) ValueCell!7911))

(declare-datatypes ((array!49548 0))(
  ( (array!49549 (arr!23801 (Array (_ BitVec 32) ValueCell!7911)) (size!24242 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49548)

(declare-fun mapKey!26651 () (_ BitVec 32))

(assert (=> mapNonEmpty!26651 (= (arr!23801 _values!688) (store mapRest!26651 mapKey!26651 mapValue!26651))))

(declare-fun b!862226 () Bool)

(declare-fun res!586044 () Bool)

(assert (=> b!862226 (=> (not res!586044) (not e!480403))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862226 (= res!586044 (validKeyInArray!0 k0!854))))

(declare-fun b!862227 () Bool)

(declare-fun e!480404 () Bool)

(assert (=> b!862227 (= e!480404 true)))

(declare-datatypes ((tuple2!11102 0))(
  ( (tuple2!11103 (_1!5561 (_ BitVec 64)) (_2!5561 V!27315)) )
))
(declare-datatypes ((List!16973 0))(
  ( (Nil!16970) (Cons!16969 (h!18100 tuple2!11102) (t!23812 List!16973)) )
))
(declare-datatypes ((ListLongMap!9885 0))(
  ( (ListLongMap!9886 (toList!4958 List!16973)) )
))
(declare-fun lt!389160 () ListLongMap!9885)

(declare-fun lt!389164 () tuple2!11102)

(declare-fun lt!389165 () ListLongMap!9885)

(declare-fun lt!389155 () tuple2!11102)

(declare-fun +!2255 (ListLongMap!9885 tuple2!11102) ListLongMap!9885)

(assert (=> b!862227 (= lt!389165 (+!2255 (+!2255 lt!389160 lt!389155) lt!389164))))

(declare-fun lt!389156 () V!27315)

(declare-datatypes ((Unit!29412 0))(
  ( (Unit!29413) )
))
(declare-fun lt!389166 () Unit!29412)

(declare-fun v!557 () V!27315)

(declare-datatypes ((array!49550 0))(
  ( (array!49551 (arr!23802 (Array (_ BitVec 32) (_ BitVec 64))) (size!24243 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49550)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!472 (ListLongMap!9885 (_ BitVec 64) V!27315 (_ BitVec 64) V!27315) Unit!29412)

(assert (=> b!862227 (= lt!389166 (addCommutativeForDiffKeys!472 lt!389160 k0!854 v!557 (select (arr!23802 _keys!868) from!1053) lt!389156))))

(declare-fun b!862228 () Bool)

(declare-fun e!480401 () Bool)

(declare-fun tp_is_empty!16701 () Bool)

(assert (=> b!862228 (= e!480401 tp_is_empty!16701)))

(declare-fun b!862229 () Bool)

(declare-fun e!480405 () Bool)

(assert (=> b!862229 (= e!480403 e!480405)))

(declare-fun res!586040 () Bool)

(assert (=> b!862229 (=> (not res!586040) (not e!480405))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862229 (= res!586040 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!389158 () ListLongMap!9885)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!389167 () array!49548)

(declare-fun minValue!654 () V!27315)

(declare-fun zeroValue!654 () V!27315)

(declare-fun getCurrentListMapNoExtraKeys!2935 (array!49550 array!49548 (_ BitVec 32) (_ BitVec 32) V!27315 V!27315 (_ BitVec 32) Int) ListLongMap!9885)

(assert (=> b!862229 (= lt!389158 (getCurrentListMapNoExtraKeys!2935 _keys!868 lt!389167 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862229 (= lt!389167 (array!49549 (store (arr!23801 _values!688) i!612 (ValueCellFull!7911 v!557)) (size!24242 _values!688)))))

(declare-fun lt!389159 () ListLongMap!9885)

(assert (=> b!862229 (= lt!389159 (getCurrentListMapNoExtraKeys!2935 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862230 () Bool)

(declare-fun e!480400 () Bool)

(assert (=> b!862230 (= e!480405 (not e!480400))))

(declare-fun res!586042 () Bool)

(assert (=> b!862230 (=> res!586042 e!480400)))

(assert (=> b!862230 (= res!586042 (not (validKeyInArray!0 (select (arr!23802 _keys!868) from!1053))))))

(declare-fun lt!389163 () ListLongMap!9885)

(declare-fun lt!389154 () ListLongMap!9885)

(assert (=> b!862230 (= lt!389163 lt!389154)))

(assert (=> b!862230 (= lt!389154 (+!2255 lt!389160 lt!389164))))

(assert (=> b!862230 (= lt!389163 (getCurrentListMapNoExtraKeys!2935 _keys!868 lt!389167 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862230 (= lt!389164 (tuple2!11103 k0!854 v!557))))

(assert (=> b!862230 (= lt!389160 (getCurrentListMapNoExtraKeys!2935 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389168 () Unit!29412)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!505 (array!49550 array!49548 (_ BitVec 32) (_ BitVec 32) V!27315 V!27315 (_ BitVec 32) (_ BitVec 64) V!27315 (_ BitVec 32) Int) Unit!29412)

(assert (=> b!862230 (= lt!389168 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!505 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862231 () Bool)

(assert (=> b!862231 (= e!480407 tp_is_empty!16701)))

(declare-fun res!586043 () Bool)

(assert (=> start!73678 (=> (not res!586043) (not e!480403))))

(assert (=> start!73678 (= res!586043 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24243 _keys!868))))))

(assert (=> start!73678 e!480403))

(assert (=> start!73678 tp_is_empty!16701))

(assert (=> start!73678 true))

(assert (=> start!73678 tp!51199))

(declare-fun array_inv!18808 (array!49550) Bool)

(assert (=> start!73678 (array_inv!18808 _keys!868)))

(declare-fun e!480402 () Bool)

(declare-fun array_inv!18809 (array!49548) Bool)

(assert (=> start!73678 (and (array_inv!18809 _values!688) e!480402)))

(declare-fun b!862232 () Bool)

(assert (=> b!862232 (= e!480402 (and e!480401 mapRes!26651))))

(declare-fun condMapEmpty!26651 () Bool)

(declare-fun mapDefault!26651 () ValueCell!7911)

(assert (=> b!862232 (= condMapEmpty!26651 (= (arr!23801 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7911)) mapDefault!26651)))))

(declare-fun b!862233 () Bool)

(declare-fun res!586035 () Bool)

(assert (=> b!862233 (=> (not res!586035) (not e!480403))))

(assert (=> b!862233 (= res!586035 (and (= (size!24242 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24243 _keys!868) (size!24242 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862234 () Bool)

(declare-fun e!480406 () Unit!29412)

(declare-fun Unit!29414 () Unit!29412)

(assert (=> b!862234 (= e!480406 Unit!29414)))

(declare-fun lt!389169 () Unit!29412)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49550 (_ BitVec 32) (_ BitVec 32)) Unit!29412)

(assert (=> b!862234 (= lt!389169 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16974 0))(
  ( (Nil!16971) (Cons!16970 (h!18101 (_ BitVec 64)) (t!23813 List!16974)) )
))
(declare-fun arrayNoDuplicates!0 (array!49550 (_ BitVec 32) List!16974) Bool)

(assert (=> b!862234 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16971)))

(declare-fun lt!389157 () Unit!29412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49550 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29412)

(assert (=> b!862234 (= lt!389157 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862234 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389161 () Unit!29412)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49550 (_ BitVec 64) (_ BitVec 32) List!16974) Unit!29412)

(assert (=> b!862234 (= lt!389161 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16971))))

(assert (=> b!862234 false))

(declare-fun b!862235 () Bool)

(assert (=> b!862235 (= e!480400 e!480404)))

(declare-fun res!586039 () Bool)

(assert (=> b!862235 (=> res!586039 e!480404)))

(assert (=> b!862235 (= res!586039 (= k0!854 (select (arr!23802 _keys!868) from!1053)))))

(assert (=> b!862235 (not (= (select (arr!23802 _keys!868) from!1053) k0!854))))

(declare-fun lt!389162 () Unit!29412)

(assert (=> b!862235 (= lt!389162 e!480406)))

(declare-fun c!91986 () Bool)

(assert (=> b!862235 (= c!91986 (= (select (arr!23802 _keys!868) from!1053) k0!854))))

(assert (=> b!862235 (= lt!389158 lt!389165)))

(assert (=> b!862235 (= lt!389165 (+!2255 lt!389154 lt!389155))))

(assert (=> b!862235 (= lt!389155 (tuple2!11103 (select (arr!23802 _keys!868) from!1053) lt!389156))))

(declare-fun get!12573 (ValueCell!7911 V!27315) V!27315)

(declare-fun dynLambda!1135 (Int (_ BitVec 64)) V!27315)

(assert (=> b!862235 (= lt!389156 (get!12573 (select (arr!23801 _values!688) from!1053) (dynLambda!1135 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862236 () Bool)

(declare-fun res!586037 () Bool)

(assert (=> b!862236 (=> (not res!586037) (not e!480403))))

(assert (=> b!862236 (= res!586037 (and (= (select (arr!23802 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862237 () Bool)

(declare-fun res!586034 () Bool)

(assert (=> b!862237 (=> (not res!586034) (not e!480403))))

(assert (=> b!862237 (= res!586034 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16971))))

(declare-fun mapIsEmpty!26651 () Bool)

(assert (=> mapIsEmpty!26651 mapRes!26651))

(declare-fun b!862238 () Bool)

(declare-fun res!586041 () Bool)

(assert (=> b!862238 (=> (not res!586041) (not e!480403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49550 (_ BitVec 32)) Bool)

(assert (=> b!862238 (= res!586041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862239 () Bool)

(declare-fun res!586036 () Bool)

(assert (=> b!862239 (=> (not res!586036) (not e!480403))))

(assert (=> b!862239 (= res!586036 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24243 _keys!868))))))

(declare-fun b!862240 () Bool)

(declare-fun Unit!29415 () Unit!29412)

(assert (=> b!862240 (= e!480406 Unit!29415)))

(assert (= (and start!73678 res!586043) b!862225))

(assert (= (and b!862225 res!586038) b!862233))

(assert (= (and b!862233 res!586035) b!862238))

(assert (= (and b!862238 res!586041) b!862237))

(assert (= (and b!862237 res!586034) b!862239))

(assert (= (and b!862239 res!586036) b!862226))

(assert (= (and b!862226 res!586044) b!862236))

(assert (= (and b!862236 res!586037) b!862229))

(assert (= (and b!862229 res!586040) b!862230))

(assert (= (and b!862230 (not res!586042)) b!862235))

(assert (= (and b!862235 c!91986) b!862234))

(assert (= (and b!862235 (not c!91986)) b!862240))

(assert (= (and b!862235 (not res!586039)) b!862227))

(assert (= (and b!862232 condMapEmpty!26651) mapIsEmpty!26651))

(assert (= (and b!862232 (not condMapEmpty!26651)) mapNonEmpty!26651))

(get-info :version)

(assert (= (and mapNonEmpty!26651 ((_ is ValueCellFull!7911) mapValue!26651)) b!862231))

(assert (= (and b!862232 ((_ is ValueCellFull!7911) mapDefault!26651)) b!862228))

(assert (= start!73678 b!862232))

(declare-fun b_lambda!11947 () Bool)

(assert (=> (not b_lambda!11947) (not b!862235)))

(declare-fun t!23811 () Bool)

(declare-fun tb!4695 () Bool)

(assert (=> (and start!73678 (= defaultEntry!696 defaultEntry!696) t!23811) tb!4695))

(declare-fun result!8993 () Bool)

(assert (=> tb!4695 (= result!8993 tp_is_empty!16701)))

(assert (=> b!862235 t!23811))

(declare-fun b_and!24129 () Bool)

(assert (= b_and!24127 (and (=> t!23811 result!8993) b_and!24129)))

(declare-fun m!803339 () Bool)

(assert (=> b!862237 m!803339))

(declare-fun m!803341 () Bool)

(assert (=> mapNonEmpty!26651 m!803341))

(declare-fun m!803343 () Bool)

(assert (=> start!73678 m!803343))

(declare-fun m!803345 () Bool)

(assert (=> start!73678 m!803345))

(declare-fun m!803347 () Bool)

(assert (=> b!862226 m!803347))

(declare-fun m!803349 () Bool)

(assert (=> b!862236 m!803349))

(declare-fun m!803351 () Bool)

(assert (=> b!862227 m!803351))

(assert (=> b!862227 m!803351))

(declare-fun m!803353 () Bool)

(assert (=> b!862227 m!803353))

(declare-fun m!803355 () Bool)

(assert (=> b!862227 m!803355))

(assert (=> b!862227 m!803355))

(declare-fun m!803357 () Bool)

(assert (=> b!862227 m!803357))

(declare-fun m!803359 () Bool)

(assert (=> b!862235 m!803359))

(declare-fun m!803361 () Bool)

(assert (=> b!862235 m!803361))

(declare-fun m!803363 () Bool)

(assert (=> b!862235 m!803363))

(declare-fun m!803365 () Bool)

(assert (=> b!862235 m!803365))

(assert (=> b!862235 m!803361))

(assert (=> b!862235 m!803355))

(assert (=> b!862235 m!803363))

(declare-fun m!803367 () Bool)

(assert (=> b!862230 m!803367))

(declare-fun m!803369 () Bool)

(assert (=> b!862230 m!803369))

(assert (=> b!862230 m!803355))

(declare-fun m!803371 () Bool)

(assert (=> b!862230 m!803371))

(assert (=> b!862230 m!803355))

(declare-fun m!803373 () Bool)

(assert (=> b!862230 m!803373))

(declare-fun m!803375 () Bool)

(assert (=> b!862230 m!803375))

(declare-fun m!803377 () Bool)

(assert (=> b!862238 m!803377))

(declare-fun m!803379 () Bool)

(assert (=> b!862234 m!803379))

(declare-fun m!803381 () Bool)

(assert (=> b!862234 m!803381))

(declare-fun m!803383 () Bool)

(assert (=> b!862234 m!803383))

(declare-fun m!803385 () Bool)

(assert (=> b!862234 m!803385))

(declare-fun m!803387 () Bool)

(assert (=> b!862234 m!803387))

(declare-fun m!803389 () Bool)

(assert (=> b!862225 m!803389))

(declare-fun m!803391 () Bool)

(assert (=> b!862229 m!803391))

(declare-fun m!803393 () Bool)

(assert (=> b!862229 m!803393))

(declare-fun m!803395 () Bool)

(assert (=> b!862229 m!803395))

(check-sat (not b!862234) (not mapNonEmpty!26651) (not b!862227) (not b_lambda!11947) (not start!73678) b_and!24129 (not b!862238) (not b!862226) (not b!862225) (not b_next!14565) tp_is_empty!16701 (not b!862229) (not b!862235) (not b!862230) (not b!862237))
(check-sat b_and!24129 (not b_next!14565))
