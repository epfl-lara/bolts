; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73564 () Bool)

(assert start!73564)

(declare-fun b_free!14451 () Bool)

(declare-fun b_next!14451 () Bool)

(assert (=> start!73564 (= b_free!14451 (not b_next!14451))))

(declare-fun tp!50858 () Bool)

(declare-fun b_and!23899 () Bool)

(assert (=> start!73564 (= tp!50858 b_and!23899)))

(declare-fun b!859398 () Bool)

(declare-fun res!584046 () Bool)

(declare-fun e!478959 () Bool)

(assert (=> b!859398 (=> res!584046 e!478959)))

(declare-datatypes ((List!16877 0))(
  ( (Nil!16874) (Cons!16873 (h!18004 (_ BitVec 64)) (t!23602 List!16877)) )
))
(declare-fun contains!4221 (List!16877 (_ BitVec 64)) Bool)

(assert (=> b!859398 (= res!584046 (contains!4221 Nil!16874 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859399 () Bool)

(declare-fun e!478958 () Bool)

(declare-fun tp_is_empty!16587 () Bool)

(assert (=> b!859399 (= e!478958 tp_is_empty!16587)))

(declare-fun mapIsEmpty!26480 () Bool)

(declare-fun mapRes!26480 () Bool)

(assert (=> mapIsEmpty!26480 mapRes!26480))

(declare-fun b!859400 () Bool)

(declare-fun res!584044 () Bool)

(declare-fun e!478952 () Bool)

(assert (=> b!859400 (=> (not res!584044) (not e!478952))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49332 0))(
  ( (array!49333 (arr!23693 (Array (_ BitVec 32) (_ BitVec 64))) (size!24134 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49332)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859400 (= res!584044 (and (= (select (arr!23693 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!859401 () Bool)

(declare-fun res!584042 () Bool)

(assert (=> b!859401 (=> (not res!584042) (not e!478952))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27163 0))(
  ( (V!27164 (val!8341 Int)) )
))
(declare-datatypes ((ValueCell!7854 0))(
  ( (ValueCellFull!7854 (v!10762 V!27163)) (EmptyCell!7854) )
))
(declare-datatypes ((array!49334 0))(
  ( (array!49335 (arr!23694 (Array (_ BitVec 32) ValueCell!7854)) (size!24135 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49334)

(assert (=> b!859401 (= res!584042 (and (= (size!24135 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24134 _keys!868) (size!24135 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859402 () Bool)

(declare-fun res!584049 () Bool)

(assert (=> b!859402 (=> (not res!584049) (not e!478952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859402 (= res!584049 (validMask!0 mask!1196))))

(declare-fun b!859403 () Bool)

(declare-fun e!478951 () Bool)

(assert (=> b!859403 (= e!478951 e!478959)))

(declare-fun res!584043 () Bool)

(assert (=> b!859403 (=> res!584043 e!478959)))

(assert (=> b!859403 (= res!584043 (or (bvsge (size!24134 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24134 _keys!868)) (bvsge from!1053 (size!24134 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859403 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!29268 0))(
  ( (Unit!29269) )
))
(declare-fun lt!387272 () Unit!29268)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49332 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29268)

(assert (=> b!859403 (= lt!387272 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!49332 (_ BitVec 32) List!16877) Bool)

(assert (=> b!859403 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16874)))

(declare-fun lt!387275 () Unit!29268)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49332 (_ BitVec 32) (_ BitVec 32)) Unit!29268)

(assert (=> b!859403 (= lt!387275 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859404 () Bool)

(declare-fun e!478957 () Bool)

(declare-fun e!478953 () Bool)

(assert (=> b!859404 (= e!478957 (not e!478953))))

(declare-fun res!584055 () Bool)

(assert (=> b!859404 (=> res!584055 e!478953)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859404 (= res!584055 (not (validKeyInArray!0 (select (arr!23693 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11004 0))(
  ( (tuple2!11005 (_1!5512 (_ BitVec 64)) (_2!5512 V!27163)) )
))
(declare-datatypes ((List!16878 0))(
  ( (Nil!16875) (Cons!16874 (h!18005 tuple2!11004) (t!23603 List!16878)) )
))
(declare-datatypes ((ListLongMap!9787 0))(
  ( (ListLongMap!9788 (toList!4909 List!16878)) )
))
(declare-fun lt!387279 () ListLongMap!9787)

(declare-fun lt!387278 () ListLongMap!9787)

(assert (=> b!859404 (= lt!387279 lt!387278)))

(declare-fun lt!387276 () ListLongMap!9787)

(declare-fun v!557 () V!27163)

(declare-fun +!2212 (ListLongMap!9787 tuple2!11004) ListLongMap!9787)

(assert (=> b!859404 (= lt!387278 (+!2212 lt!387276 (tuple2!11005 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27163)

(declare-fun zeroValue!654 () V!27163)

(declare-fun lt!387277 () array!49334)

(declare-fun getCurrentListMapNoExtraKeys!2889 (array!49332 array!49334 (_ BitVec 32) (_ BitVec 32) V!27163 V!27163 (_ BitVec 32) Int) ListLongMap!9787)

(assert (=> b!859404 (= lt!387279 (getCurrentListMapNoExtraKeys!2889 _keys!868 lt!387277 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859404 (= lt!387276 (getCurrentListMapNoExtraKeys!2889 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387271 () Unit!29268)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!469 (array!49332 array!49334 (_ BitVec 32) (_ BitVec 32) V!27163 V!27163 (_ BitVec 32) (_ BitVec 64) V!27163 (_ BitVec 32) Int) Unit!29268)

(assert (=> b!859404 (= lt!387271 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!469 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859405 () Bool)

(declare-fun res!584051 () Bool)

(assert (=> b!859405 (=> (not res!584051) (not e!478952))))

(assert (=> b!859405 (= res!584051 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16874))))

(declare-fun b!859406 () Bool)

(assert (=> b!859406 (= e!478959 true)))

(declare-fun lt!387274 () Bool)

(assert (=> b!859406 (= lt!387274 (contains!4221 Nil!16874 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!584053 () Bool)

(assert (=> start!73564 (=> (not res!584053) (not e!478952))))

(assert (=> start!73564 (= res!584053 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24134 _keys!868))))))

(assert (=> start!73564 e!478952))

(assert (=> start!73564 tp_is_empty!16587))

(assert (=> start!73564 true))

(assert (=> start!73564 tp!50858))

(declare-fun array_inv!18738 (array!49332) Bool)

(assert (=> start!73564 (array_inv!18738 _keys!868)))

(declare-fun e!478956 () Bool)

(declare-fun array_inv!18739 (array!49334) Bool)

(assert (=> start!73564 (and (array_inv!18739 _values!688) e!478956)))

(declare-fun b!859407 () Bool)

(assert (=> b!859407 (= e!478952 e!478957)))

(declare-fun res!584048 () Bool)

(assert (=> b!859407 (=> (not res!584048) (not e!478957))))

(assert (=> b!859407 (= res!584048 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387270 () ListLongMap!9787)

(assert (=> b!859407 (= lt!387270 (getCurrentListMapNoExtraKeys!2889 _keys!868 lt!387277 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!859407 (= lt!387277 (array!49335 (store (arr!23694 _values!688) i!612 (ValueCellFull!7854 v!557)) (size!24135 _values!688)))))

(declare-fun lt!387273 () ListLongMap!9787)

(assert (=> b!859407 (= lt!387273 (getCurrentListMapNoExtraKeys!2889 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859408 () Bool)

(assert (=> b!859408 (= e!478956 (and e!478958 mapRes!26480))))

(declare-fun condMapEmpty!26480 () Bool)

(declare-fun mapDefault!26480 () ValueCell!7854)

(assert (=> b!859408 (= condMapEmpty!26480 (= (arr!23694 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7854)) mapDefault!26480)))))

(declare-fun b!859409 () Bool)

(declare-fun res!584045 () Bool)

(assert (=> b!859409 (=> (not res!584045) (not e!478952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49332 (_ BitVec 32)) Bool)

(assert (=> b!859409 (= res!584045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859410 () Bool)

(declare-fun res!584052 () Bool)

(assert (=> b!859410 (=> res!584052 e!478959)))

(declare-fun noDuplicate!1303 (List!16877) Bool)

(assert (=> b!859410 (= res!584052 (not (noDuplicate!1303 Nil!16874)))))

(declare-fun b!859411 () Bool)

(declare-fun e!478955 () Bool)

(assert (=> b!859411 (= e!478955 tp_is_empty!16587)))

(declare-fun b!859412 () Bool)

(declare-fun res!584054 () Bool)

(assert (=> b!859412 (=> (not res!584054) (not e!478952))))

(assert (=> b!859412 (= res!584054 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24134 _keys!868))))))

(declare-fun b!859413 () Bool)

(assert (=> b!859413 (= e!478953 e!478951)))

(declare-fun res!584047 () Bool)

(assert (=> b!859413 (=> res!584047 e!478951)))

(assert (=> b!859413 (= res!584047 (not (= (select (arr!23693 _keys!868) from!1053) k0!854)))))

(declare-fun get!12499 (ValueCell!7854 V!27163) V!27163)

(declare-fun dynLambda!1099 (Int (_ BitVec 64)) V!27163)

(assert (=> b!859413 (= lt!387270 (+!2212 lt!387278 (tuple2!11005 (select (arr!23693 _keys!868) from!1053) (get!12499 (select (arr!23694 _values!688) from!1053) (dynLambda!1099 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!26480 () Bool)

(declare-fun tp!50857 () Bool)

(assert (=> mapNonEmpty!26480 (= mapRes!26480 (and tp!50857 e!478955))))

(declare-fun mapKey!26480 () (_ BitVec 32))

(declare-fun mapValue!26480 () ValueCell!7854)

(declare-fun mapRest!26480 () (Array (_ BitVec 32) ValueCell!7854))

(assert (=> mapNonEmpty!26480 (= (arr!23694 _values!688) (store mapRest!26480 mapKey!26480 mapValue!26480))))

(declare-fun b!859414 () Bool)

(declare-fun res!584050 () Bool)

(assert (=> b!859414 (=> (not res!584050) (not e!478952))))

(assert (=> b!859414 (= res!584050 (validKeyInArray!0 k0!854))))

(assert (= (and start!73564 res!584053) b!859402))

(assert (= (and b!859402 res!584049) b!859401))

(assert (= (and b!859401 res!584042) b!859409))

(assert (= (and b!859409 res!584045) b!859405))

(assert (= (and b!859405 res!584051) b!859412))

(assert (= (and b!859412 res!584054) b!859414))

(assert (= (and b!859414 res!584050) b!859400))

(assert (= (and b!859400 res!584044) b!859407))

(assert (= (and b!859407 res!584048) b!859404))

(assert (= (and b!859404 (not res!584055)) b!859413))

(assert (= (and b!859413 (not res!584047)) b!859403))

(assert (= (and b!859403 (not res!584043)) b!859410))

(assert (= (and b!859410 (not res!584052)) b!859398))

(assert (= (and b!859398 (not res!584046)) b!859406))

(assert (= (and b!859408 condMapEmpty!26480) mapIsEmpty!26480))

(assert (= (and b!859408 (not condMapEmpty!26480)) mapNonEmpty!26480))

(get-info :version)

(assert (= (and mapNonEmpty!26480 ((_ is ValueCellFull!7854) mapValue!26480)) b!859411))

(assert (= (and b!859408 ((_ is ValueCellFull!7854) mapDefault!26480)) b!859399))

(assert (= start!73564 b!859408))

(declare-fun b_lambda!11833 () Bool)

(assert (=> (not b_lambda!11833) (not b!859413)))

(declare-fun t!23601 () Bool)

(declare-fun tb!4581 () Bool)

(assert (=> (and start!73564 (= defaultEntry!696 defaultEntry!696) t!23601) tb!4581))

(declare-fun result!8765 () Bool)

(assert (=> tb!4581 (= result!8765 tp_is_empty!16587)))

(assert (=> b!859413 t!23601))

(declare-fun b_and!23901 () Bool)

(assert (= b_and!23899 (and (=> t!23601 result!8765) b_and!23901)))

(declare-fun m!800259 () Bool)

(assert (=> start!73564 m!800259))

(declare-fun m!800261 () Bool)

(assert (=> start!73564 m!800261))

(declare-fun m!800263 () Bool)

(assert (=> b!859406 m!800263))

(declare-fun m!800265 () Bool)

(assert (=> b!859407 m!800265))

(declare-fun m!800267 () Bool)

(assert (=> b!859407 m!800267))

(declare-fun m!800269 () Bool)

(assert (=> b!859407 m!800269))

(declare-fun m!800271 () Bool)

(assert (=> b!859409 m!800271))

(declare-fun m!800273 () Bool)

(assert (=> b!859405 m!800273))

(declare-fun m!800275 () Bool)

(assert (=> b!859414 m!800275))

(declare-fun m!800277 () Bool)

(assert (=> mapNonEmpty!26480 m!800277))

(declare-fun m!800279 () Bool)

(assert (=> b!859403 m!800279))

(declare-fun m!800281 () Bool)

(assert (=> b!859403 m!800281))

(declare-fun m!800283 () Bool)

(assert (=> b!859403 m!800283))

(declare-fun m!800285 () Bool)

(assert (=> b!859403 m!800285))

(declare-fun m!800287 () Bool)

(assert (=> b!859410 m!800287))

(declare-fun m!800289 () Bool)

(assert (=> b!859404 m!800289))

(declare-fun m!800291 () Bool)

(assert (=> b!859404 m!800291))

(declare-fun m!800293 () Bool)

(assert (=> b!859404 m!800293))

(declare-fun m!800295 () Bool)

(assert (=> b!859404 m!800295))

(declare-fun m!800297 () Bool)

(assert (=> b!859404 m!800297))

(assert (=> b!859404 m!800291))

(declare-fun m!800299 () Bool)

(assert (=> b!859404 m!800299))

(declare-fun m!800301 () Bool)

(assert (=> b!859398 m!800301))

(declare-fun m!800303 () Bool)

(assert (=> b!859402 m!800303))

(declare-fun m!800305 () Bool)

(assert (=> b!859400 m!800305))

(declare-fun m!800307 () Bool)

(assert (=> b!859413 m!800307))

(declare-fun m!800309 () Bool)

(assert (=> b!859413 m!800309))

(declare-fun m!800311 () Bool)

(assert (=> b!859413 m!800311))

(declare-fun m!800313 () Bool)

(assert (=> b!859413 m!800313))

(assert (=> b!859413 m!800309))

(assert (=> b!859413 m!800291))

(assert (=> b!859413 m!800311))

(check-sat (not b!859413) (not start!73564) b_and!23901 tp_is_empty!16587 (not b!859404) (not b!859405) (not mapNonEmpty!26480) (not b_next!14451) (not b!859410) (not b!859406) (not b_lambda!11833) (not b!859409) (not b!859403) (not b!859407) (not b!859414) (not b!859398) (not b!859402))
(check-sat b_and!23901 (not b_next!14451))
