; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73882 () Bool)

(assert start!73882)

(declare-fun b_free!14769 () Bool)

(declare-fun b_next!14769 () Bool)

(assert (=> start!73882 (= b_free!14769 (not b_next!14769))))

(declare-fun tp!51811 () Bool)

(declare-fun b_and!24535 () Bool)

(assert (=> start!73882 (= tp!51811 b_and!24535)))

(declare-fun b!867325 () Bool)

(declare-fun res!589402 () Bool)

(declare-fun e!483156 () Bool)

(assert (=> b!867325 (=> (not res!589402) (not e!483156))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49950 0))(
  ( (array!49951 (arr!24002 (Array (_ BitVec 32) (_ BitVec 64))) (size!24443 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49950)

(declare-datatypes ((V!27587 0))(
  ( (V!27588 (val!8500 Int)) )
))
(declare-datatypes ((ValueCell!8013 0))(
  ( (ValueCellFull!8013 (v!10921 V!27587)) (EmptyCell!8013) )
))
(declare-datatypes ((array!49952 0))(
  ( (array!49953 (arr!24003 (Array (_ BitVec 32) ValueCell!8013)) (size!24444 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49952)

(assert (=> b!867325 (= res!589402 (and (= (size!24444 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24443 _keys!868) (size!24444 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867326 () Bool)

(declare-fun e!483155 () Bool)

(declare-fun tp_is_empty!16905 () Bool)

(assert (=> b!867326 (= e!483155 tp_is_empty!16905)))

(declare-fun b!867327 () Bool)

(declare-fun res!589406 () Bool)

(assert (=> b!867327 (=> (not res!589406) (not e!483156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867327 (= res!589406 (validMask!0 mask!1196))))

(declare-fun b!867328 () Bool)

(declare-datatypes ((Unit!29731 0))(
  ( (Unit!29732) )
))
(declare-fun e!483160 () Unit!29731)

(declare-fun Unit!29733 () Unit!29731)

(assert (=> b!867328 (= e!483160 Unit!29733)))

(declare-fun lt!394055 () Unit!29731)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49950 (_ BitVec 32) (_ BitVec 32)) Unit!29731)

(assert (=> b!867328 (= lt!394055 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17144 0))(
  ( (Nil!17141) (Cons!17140 (h!18271 (_ BitVec 64)) (t!24187 List!17144)) )
))
(declare-fun arrayNoDuplicates!0 (array!49950 (_ BitVec 32) List!17144) Bool)

(assert (=> b!867328 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17141)))

(declare-fun lt!394060 () Unit!29731)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49950 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29731)

(assert (=> b!867328 (= lt!394060 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!867328 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!394065 () Unit!29731)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49950 (_ BitVec 64) (_ BitVec 32) List!17144) Unit!29731)

(assert (=> b!867328 (= lt!394065 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17141))))

(assert (=> b!867328 false))

(declare-fun b!867329 () Bool)

(declare-fun res!589405 () Bool)

(assert (=> b!867329 (=> (not res!589405) (not e!483156))))

(assert (=> b!867329 (= res!589405 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17141))))

(declare-fun b!867330 () Bool)

(declare-fun e!483154 () Bool)

(assert (=> b!867330 (= e!483154 true)))

(declare-datatypes ((tuple2!11282 0))(
  ( (tuple2!11283 (_1!5651 (_ BitVec 64)) (_2!5651 V!27587)) )
))
(declare-fun lt!394056 () tuple2!11282)

(declare-datatypes ((List!17145 0))(
  ( (Nil!17142) (Cons!17141 (h!18272 tuple2!11282) (t!24188 List!17145)) )
))
(declare-datatypes ((ListLongMap!10065 0))(
  ( (ListLongMap!10066 (toList!5048 List!17145)) )
))
(declare-fun lt!394063 () ListLongMap!10065)

(declare-fun lt!394059 () ListLongMap!10065)

(declare-fun lt!394050 () tuple2!11282)

(declare-fun +!2342 (ListLongMap!10065 tuple2!11282) ListLongMap!10065)

(assert (=> b!867330 (= lt!394063 (+!2342 (+!2342 lt!394059 lt!394050) lt!394056))))

(declare-fun v!557 () V!27587)

(declare-fun lt!394058 () Unit!29731)

(declare-fun lt!394052 () V!27587)

(declare-fun addCommutativeForDiffKeys!543 (ListLongMap!10065 (_ BitVec 64) V!27587 (_ BitVec 64) V!27587) Unit!29731)

(assert (=> b!867330 (= lt!394058 (addCommutativeForDiffKeys!543 lt!394059 k0!854 v!557 (select (arr!24002 _keys!868) from!1053) lt!394052))))

(declare-fun b!867331 () Bool)

(declare-fun e!483161 () Bool)

(assert (=> b!867331 (= e!483161 tp_is_empty!16905)))

(declare-fun b!867332 () Bool)

(declare-fun e!483157 () Bool)

(declare-fun e!483162 () Bool)

(assert (=> b!867332 (= e!483157 (not e!483162))))

(declare-fun res!589410 () Bool)

(assert (=> b!867332 (=> res!589410 e!483162)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867332 (= res!589410 (not (validKeyInArray!0 (select (arr!24002 _keys!868) from!1053))))))

(declare-fun lt!394064 () ListLongMap!10065)

(declare-fun lt!394053 () ListLongMap!10065)

(assert (=> b!867332 (= lt!394064 lt!394053)))

(assert (=> b!867332 (= lt!394053 (+!2342 lt!394059 lt!394056))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27587)

(declare-fun zeroValue!654 () V!27587)

(declare-fun lt!394062 () array!49952)

(declare-fun getCurrentListMapNoExtraKeys!3013 (array!49950 array!49952 (_ BitVec 32) (_ BitVec 32) V!27587 V!27587 (_ BitVec 32) Int) ListLongMap!10065)

(assert (=> b!867332 (= lt!394064 (getCurrentListMapNoExtraKeys!3013 _keys!868 lt!394062 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!867332 (= lt!394056 (tuple2!11283 k0!854 v!557))))

(assert (=> b!867332 (= lt!394059 (getCurrentListMapNoExtraKeys!3013 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!394061 () Unit!29731)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!574 (array!49950 array!49952 (_ BitVec 32) (_ BitVec 32) V!27587 V!27587 (_ BitVec 32) (_ BitVec 64) V!27587 (_ BitVec 32) Int) Unit!29731)

(assert (=> b!867332 (= lt!394061 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!574 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867333 () Bool)

(declare-fun e!483159 () Bool)

(declare-fun mapRes!26957 () Bool)

(assert (=> b!867333 (= e!483159 (and e!483155 mapRes!26957))))

(declare-fun condMapEmpty!26957 () Bool)

(declare-fun mapDefault!26957 () ValueCell!8013)

(assert (=> b!867333 (= condMapEmpty!26957 (= (arr!24003 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8013)) mapDefault!26957)))))

(declare-fun mapNonEmpty!26957 () Bool)

(declare-fun tp!51812 () Bool)

(assert (=> mapNonEmpty!26957 (= mapRes!26957 (and tp!51812 e!483161))))

(declare-fun mapKey!26957 () (_ BitVec 32))

(declare-fun mapRest!26957 () (Array (_ BitVec 32) ValueCell!8013))

(declare-fun mapValue!26957 () ValueCell!8013)

(assert (=> mapNonEmpty!26957 (= (arr!24003 _values!688) (store mapRest!26957 mapKey!26957 mapValue!26957))))

(declare-fun b!867334 () Bool)

(declare-fun res!589407 () Bool)

(assert (=> b!867334 (=> (not res!589407) (not e!483156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49950 (_ BitVec 32)) Bool)

(assert (=> b!867334 (= res!589407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867335 () Bool)

(declare-fun res!589403 () Bool)

(assert (=> b!867335 (=> (not res!589403) (not e!483156))))

(assert (=> b!867335 (= res!589403 (validKeyInArray!0 k0!854))))

(declare-fun b!867336 () Bool)

(declare-fun Unit!29734 () Unit!29731)

(assert (=> b!867336 (= e!483160 Unit!29734)))

(declare-fun b!867337 () Bool)

(assert (=> b!867337 (= e!483162 e!483154)))

(declare-fun res!589408 () Bool)

(assert (=> b!867337 (=> res!589408 e!483154)))

(assert (=> b!867337 (= res!589408 (= k0!854 (select (arr!24002 _keys!868) from!1053)))))

(assert (=> b!867337 (not (= (select (arr!24002 _keys!868) from!1053) k0!854))))

(declare-fun lt!394051 () Unit!29731)

(assert (=> b!867337 (= lt!394051 e!483160)))

(declare-fun c!92292 () Bool)

(assert (=> b!867337 (= c!92292 (= (select (arr!24002 _keys!868) from!1053) k0!854))))

(declare-fun lt!394054 () ListLongMap!10065)

(assert (=> b!867337 (= lt!394054 lt!394063)))

(assert (=> b!867337 (= lt!394063 (+!2342 lt!394053 lt!394050))))

(assert (=> b!867337 (= lt!394050 (tuple2!11283 (select (arr!24002 _keys!868) from!1053) lt!394052))))

(declare-fun get!12712 (ValueCell!8013 V!27587) V!27587)

(declare-fun dynLambda!1206 (Int (_ BitVec 64)) V!27587)

(assert (=> b!867337 (= lt!394052 (get!12712 (select (arr!24003 _values!688) from!1053) (dynLambda!1206 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!867338 () Bool)

(declare-fun res!589409 () Bool)

(assert (=> b!867338 (=> (not res!589409) (not e!483156))))

(assert (=> b!867338 (= res!589409 (and (= (select (arr!24002 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!867339 () Bool)

(assert (=> b!867339 (= e!483156 e!483157)))

(declare-fun res!589404 () Bool)

(assert (=> b!867339 (=> (not res!589404) (not e!483157))))

(assert (=> b!867339 (= res!589404 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!867339 (= lt!394054 (getCurrentListMapNoExtraKeys!3013 _keys!868 lt!394062 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867339 (= lt!394062 (array!49953 (store (arr!24003 _values!688) i!612 (ValueCellFull!8013 v!557)) (size!24444 _values!688)))))

(declare-fun lt!394057 () ListLongMap!10065)

(assert (=> b!867339 (= lt!394057 (getCurrentListMapNoExtraKeys!3013 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867340 () Bool)

(declare-fun res!589400 () Bool)

(assert (=> b!867340 (=> (not res!589400) (not e!483156))))

(assert (=> b!867340 (= res!589400 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24443 _keys!868))))))

(declare-fun res!589401 () Bool)

(assert (=> start!73882 (=> (not res!589401) (not e!483156))))

(assert (=> start!73882 (= res!589401 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24443 _keys!868))))))

(assert (=> start!73882 e!483156))

(assert (=> start!73882 tp_is_empty!16905))

(assert (=> start!73882 true))

(assert (=> start!73882 tp!51811))

(declare-fun array_inv!18948 (array!49950) Bool)

(assert (=> start!73882 (array_inv!18948 _keys!868)))

(declare-fun array_inv!18949 (array!49952) Bool)

(assert (=> start!73882 (and (array_inv!18949 _values!688) e!483159)))

(declare-fun mapIsEmpty!26957 () Bool)

(assert (=> mapIsEmpty!26957 mapRes!26957))

(assert (= (and start!73882 res!589401) b!867327))

(assert (= (and b!867327 res!589406) b!867325))

(assert (= (and b!867325 res!589402) b!867334))

(assert (= (and b!867334 res!589407) b!867329))

(assert (= (and b!867329 res!589405) b!867340))

(assert (= (and b!867340 res!589400) b!867335))

(assert (= (and b!867335 res!589403) b!867338))

(assert (= (and b!867338 res!589409) b!867339))

(assert (= (and b!867339 res!589404) b!867332))

(assert (= (and b!867332 (not res!589410)) b!867337))

(assert (= (and b!867337 c!92292) b!867328))

(assert (= (and b!867337 (not c!92292)) b!867336))

(assert (= (and b!867337 (not res!589408)) b!867330))

(assert (= (and b!867333 condMapEmpty!26957) mapIsEmpty!26957))

(assert (= (and b!867333 (not condMapEmpty!26957)) mapNonEmpty!26957))

(get-info :version)

(assert (= (and mapNonEmpty!26957 ((_ is ValueCellFull!8013) mapValue!26957)) b!867331))

(assert (= (and b!867333 ((_ is ValueCellFull!8013) mapDefault!26957)) b!867326))

(assert (= start!73882 b!867333))

(declare-fun b_lambda!12151 () Bool)

(assert (=> (not b_lambda!12151) (not b!867337)))

(declare-fun t!24186 () Bool)

(declare-fun tb!4899 () Bool)

(assert (=> (and start!73882 (= defaultEntry!696 defaultEntry!696) t!24186) tb!4899))

(declare-fun result!9401 () Bool)

(assert (=> tb!4899 (= result!9401 tp_is_empty!16905)))

(assert (=> b!867337 t!24186))

(declare-fun b_and!24537 () Bool)

(assert (= b_and!24535 (and (=> t!24186 result!9401) b_and!24537)))

(declare-fun m!809255 () Bool)

(assert (=> b!867338 m!809255))

(declare-fun m!809257 () Bool)

(assert (=> b!867334 m!809257))

(declare-fun m!809259 () Bool)

(assert (=> b!867337 m!809259))

(declare-fun m!809261 () Bool)

(assert (=> b!867337 m!809261))

(declare-fun m!809263 () Bool)

(assert (=> b!867337 m!809263))

(declare-fun m!809265 () Bool)

(assert (=> b!867337 m!809265))

(assert (=> b!867337 m!809261))

(declare-fun m!809267 () Bool)

(assert (=> b!867337 m!809267))

(assert (=> b!867337 m!809263))

(declare-fun m!809269 () Bool)

(assert (=> b!867329 m!809269))

(declare-fun m!809271 () Bool)

(assert (=> start!73882 m!809271))

(declare-fun m!809273 () Bool)

(assert (=> start!73882 m!809273))

(declare-fun m!809275 () Bool)

(assert (=> b!867335 m!809275))

(declare-fun m!809277 () Bool)

(assert (=> mapNonEmpty!26957 m!809277))

(declare-fun m!809279 () Bool)

(assert (=> b!867330 m!809279))

(assert (=> b!867330 m!809279))

(declare-fun m!809281 () Bool)

(assert (=> b!867330 m!809281))

(assert (=> b!867330 m!809267))

(assert (=> b!867330 m!809267))

(declare-fun m!809283 () Bool)

(assert (=> b!867330 m!809283))

(declare-fun m!809285 () Bool)

(assert (=> b!867327 m!809285))

(declare-fun m!809287 () Bool)

(assert (=> b!867339 m!809287))

(declare-fun m!809289 () Bool)

(assert (=> b!867339 m!809289))

(declare-fun m!809291 () Bool)

(assert (=> b!867339 m!809291))

(declare-fun m!809293 () Bool)

(assert (=> b!867332 m!809293))

(declare-fun m!809295 () Bool)

(assert (=> b!867332 m!809295))

(assert (=> b!867332 m!809267))

(declare-fun m!809297 () Bool)

(assert (=> b!867332 m!809297))

(assert (=> b!867332 m!809267))

(declare-fun m!809299 () Bool)

(assert (=> b!867332 m!809299))

(declare-fun m!809301 () Bool)

(assert (=> b!867332 m!809301))

(declare-fun m!809303 () Bool)

(assert (=> b!867328 m!809303))

(declare-fun m!809305 () Bool)

(assert (=> b!867328 m!809305))

(declare-fun m!809307 () Bool)

(assert (=> b!867328 m!809307))

(declare-fun m!809309 () Bool)

(assert (=> b!867328 m!809309))

(declare-fun m!809311 () Bool)

(assert (=> b!867328 m!809311))

(check-sat tp_is_empty!16905 (not b_next!14769) (not b!867329) (not b!867332) (not b!867328) (not b!867334) (not b!867330) (not start!73882) (not b!867339) (not mapNonEmpty!26957) b_and!24537 (not b_lambda!12151) (not b!867327) (not b!867337) (not b!867335))
(check-sat b_and!24537 (not b_next!14769))
