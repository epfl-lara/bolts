; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73642 () Bool)

(assert start!73642)

(declare-fun b_free!14529 () Bool)

(declare-fun b_next!14529 () Bool)

(assert (=> start!73642 (= b_free!14529 (not b_next!14529))))

(declare-fun tp!51092 () Bool)

(declare-fun b_and!24055 () Bool)

(assert (=> start!73642 (= tp!51092 b_and!24055)))

(declare-fun b!861366 () Bool)

(declare-fun res!585484 () Bool)

(declare-fun e!479959 () Bool)

(assert (=> b!861366 (=> (not res!585484) (not e!479959))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49478 0))(
  ( (array!49479 (arr!23766 (Array (_ BitVec 32) (_ BitVec 64))) (size!24207 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49478)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861366 (= res!585484 (and (= (select (arr!23766 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!861367 () Bool)

(declare-fun e!479958 () Bool)

(declare-fun e!479961 () Bool)

(declare-fun mapRes!26597 () Bool)

(assert (=> b!861367 (= e!479958 (and e!479961 mapRes!26597))))

(declare-fun condMapEmpty!26597 () Bool)

(declare-datatypes ((V!27267 0))(
  ( (V!27268 (val!8380 Int)) )
))
(declare-datatypes ((ValueCell!7893 0))(
  ( (ValueCellFull!7893 (v!10801 V!27267)) (EmptyCell!7893) )
))
(declare-datatypes ((array!49480 0))(
  ( (array!49481 (arr!23767 (Array (_ BitVec 32) ValueCell!7893)) (size!24208 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49480)

(declare-fun mapDefault!26597 () ValueCell!7893)

(assert (=> b!861367 (= condMapEmpty!26597 (= (arr!23767 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7893)) mapDefault!26597)))))

(declare-fun b!861368 () Bool)

(declare-fun res!585485 () Bool)

(assert (=> b!861368 (=> (not res!585485) (not e!479959))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861368 (= res!585485 (validMask!0 mask!1196))))

(declare-fun b!861369 () Bool)

(declare-fun e!479955 () Bool)

(assert (=> b!861369 (= e!479955 true)))

(assert (=> b!861369 (not (= (select (arr!23766 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29348 0))(
  ( (Unit!29349) )
))
(declare-fun lt!388498 () Unit!29348)

(declare-fun e!479960 () Unit!29348)

(assert (=> b!861369 (= lt!388498 e!479960)))

(declare-fun c!91932 () Bool)

(assert (=> b!861369 (= c!91932 (= (select (arr!23766 _keys!868) from!1053) k0!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11070 0))(
  ( (tuple2!11071 (_1!5545 (_ BitVec 64)) (_2!5545 V!27267)) )
))
(declare-datatypes ((List!16940 0))(
  ( (Nil!16937) (Cons!16936 (h!18067 tuple2!11070) (t!23743 List!16940)) )
))
(declare-datatypes ((ListLongMap!9853 0))(
  ( (ListLongMap!9854 (toList!4942 List!16940)) )
))
(declare-fun lt!388496 () ListLongMap!9853)

(declare-fun lt!388492 () ListLongMap!9853)

(declare-fun +!2241 (ListLongMap!9853 tuple2!11070) ListLongMap!9853)

(declare-fun get!12549 (ValueCell!7893 V!27267) V!27267)

(declare-fun dynLambda!1123 (Int (_ BitVec 64)) V!27267)

(assert (=> b!861369 (= lt!388496 (+!2241 lt!388492 (tuple2!11071 (select (arr!23766 _keys!868) from!1053) (get!12549 (select (arr!23767 _values!688) from!1053) (dynLambda!1123 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861370 () Bool)

(declare-fun e!479954 () Bool)

(declare-fun tp_is_empty!16665 () Bool)

(assert (=> b!861370 (= e!479954 tp_is_empty!16665)))

(declare-fun b!861371 () Bool)

(assert (=> b!861371 (= e!479961 tp_is_empty!16665)))

(declare-fun b!861372 () Bool)

(declare-fun e!479957 () Bool)

(assert (=> b!861372 (= e!479959 e!479957)))

(declare-fun res!585480 () Bool)

(assert (=> b!861372 (=> (not res!585480) (not e!479957))))

(assert (=> b!861372 (= res!585480 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27267)

(declare-fun zeroValue!654 () V!27267)

(declare-fun lt!388499 () array!49480)

(declare-fun getCurrentListMapNoExtraKeys!2921 (array!49478 array!49480 (_ BitVec 32) (_ BitVec 32) V!27267 V!27267 (_ BitVec 32) Int) ListLongMap!9853)

(assert (=> b!861372 (= lt!388496 (getCurrentListMapNoExtraKeys!2921 _keys!868 lt!388499 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27267)

(assert (=> b!861372 (= lt!388499 (array!49481 (store (arr!23767 _values!688) i!612 (ValueCellFull!7893 v!557)) (size!24208 _values!688)))))

(declare-fun lt!388493 () ListLongMap!9853)

(assert (=> b!861372 (= lt!388493 (getCurrentListMapNoExtraKeys!2921 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861373 () Bool)

(declare-fun Unit!29350 () Unit!29348)

(assert (=> b!861373 (= e!479960 Unit!29350)))

(declare-fun lt!388500 () Unit!29348)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49478 (_ BitVec 32) (_ BitVec 32)) Unit!29348)

(assert (=> b!861373 (= lt!388500 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16941 0))(
  ( (Nil!16938) (Cons!16937 (h!18068 (_ BitVec 64)) (t!23744 List!16941)) )
))
(declare-fun arrayNoDuplicates!0 (array!49478 (_ BitVec 32) List!16941) Bool)

(assert (=> b!861373 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16938)))

(declare-fun lt!388491 () Unit!29348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49478 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29348)

(assert (=> b!861373 (= lt!388491 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861373 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388490 () Unit!29348)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49478 (_ BitVec 64) (_ BitVec 32) List!16941) Unit!29348)

(assert (=> b!861373 (= lt!388490 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16938))))

(assert (=> b!861373 false))

(declare-fun b!861374 () Bool)

(declare-fun res!585489 () Bool)

(assert (=> b!861374 (=> (not res!585489) (not e!479959))))

(assert (=> b!861374 (= res!585489 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16938))))

(declare-fun res!585488 () Bool)

(assert (=> start!73642 (=> (not res!585488) (not e!479959))))

(assert (=> start!73642 (= res!585488 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24207 _keys!868))))))

(assert (=> start!73642 e!479959))

(assert (=> start!73642 tp_is_empty!16665))

(assert (=> start!73642 true))

(assert (=> start!73642 tp!51092))

(declare-fun array_inv!18784 (array!49478) Bool)

(assert (=> start!73642 (array_inv!18784 _keys!868)))

(declare-fun array_inv!18785 (array!49480) Bool)

(assert (=> start!73642 (and (array_inv!18785 _values!688) e!479958)))

(declare-fun b!861365 () Bool)

(declare-fun res!585487 () Bool)

(assert (=> b!861365 (=> (not res!585487) (not e!479959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861365 (= res!585487 (validKeyInArray!0 k0!854))))

(declare-fun b!861375 () Bool)

(declare-fun Unit!29351 () Unit!29348)

(assert (=> b!861375 (= e!479960 Unit!29351)))

(declare-fun mapIsEmpty!26597 () Bool)

(assert (=> mapIsEmpty!26597 mapRes!26597))

(declare-fun b!861376 () Bool)

(declare-fun res!585486 () Bool)

(assert (=> b!861376 (=> (not res!585486) (not e!479959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49478 (_ BitVec 32)) Bool)

(assert (=> b!861376 (= res!585486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26597 () Bool)

(declare-fun tp!51091 () Bool)

(assert (=> mapNonEmpty!26597 (= mapRes!26597 (and tp!51091 e!479954))))

(declare-fun mapKey!26597 () (_ BitVec 32))

(declare-fun mapValue!26597 () ValueCell!7893)

(declare-fun mapRest!26597 () (Array (_ BitVec 32) ValueCell!7893))

(assert (=> mapNonEmpty!26597 (= (arr!23767 _values!688) (store mapRest!26597 mapKey!26597 mapValue!26597))))

(declare-fun b!861377 () Bool)

(declare-fun res!585482 () Bool)

(assert (=> b!861377 (=> (not res!585482) (not e!479959))))

(assert (=> b!861377 (= res!585482 (and (= (size!24208 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24207 _keys!868) (size!24208 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861378 () Bool)

(declare-fun res!585481 () Bool)

(assert (=> b!861378 (=> (not res!585481) (not e!479959))))

(assert (=> b!861378 (= res!585481 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24207 _keys!868))))))

(declare-fun b!861379 () Bool)

(assert (=> b!861379 (= e!479957 (not e!479955))))

(declare-fun res!585483 () Bool)

(assert (=> b!861379 (=> res!585483 e!479955)))

(assert (=> b!861379 (= res!585483 (not (validKeyInArray!0 (select (arr!23766 _keys!868) from!1053))))))

(declare-fun lt!388494 () ListLongMap!9853)

(assert (=> b!861379 (= lt!388494 lt!388492)))

(declare-fun lt!388495 () ListLongMap!9853)

(assert (=> b!861379 (= lt!388492 (+!2241 lt!388495 (tuple2!11071 k0!854 v!557)))))

(assert (=> b!861379 (= lt!388494 (getCurrentListMapNoExtraKeys!2921 _keys!868 lt!388499 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861379 (= lt!388495 (getCurrentListMapNoExtraKeys!2921 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388497 () Unit!29348)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!493 (array!49478 array!49480 (_ BitVec 32) (_ BitVec 32) V!27267 V!27267 (_ BitVec 32) (_ BitVec 64) V!27267 (_ BitVec 32) Int) Unit!29348)

(assert (=> b!861379 (= lt!388497 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!493 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73642 res!585488) b!861368))

(assert (= (and b!861368 res!585485) b!861377))

(assert (= (and b!861377 res!585482) b!861376))

(assert (= (and b!861376 res!585486) b!861374))

(assert (= (and b!861374 res!585489) b!861378))

(assert (= (and b!861378 res!585481) b!861365))

(assert (= (and b!861365 res!585487) b!861366))

(assert (= (and b!861366 res!585484) b!861372))

(assert (= (and b!861372 res!585480) b!861379))

(assert (= (and b!861379 (not res!585483)) b!861369))

(assert (= (and b!861369 c!91932) b!861373))

(assert (= (and b!861369 (not c!91932)) b!861375))

(assert (= (and b!861367 condMapEmpty!26597) mapIsEmpty!26597))

(assert (= (and b!861367 (not condMapEmpty!26597)) mapNonEmpty!26597))

(get-info :version)

(assert (= (and mapNonEmpty!26597 ((_ is ValueCellFull!7893) mapValue!26597)) b!861370))

(assert (= (and b!861367 ((_ is ValueCellFull!7893) mapDefault!26597)) b!861371))

(assert (= start!73642 b!861367))

(declare-fun b_lambda!11911 () Bool)

(assert (=> (not b_lambda!11911) (not b!861369)))

(declare-fun t!23742 () Bool)

(declare-fun tb!4659 () Bool)

(assert (=> (and start!73642 (= defaultEntry!696 defaultEntry!696) t!23742) tb!4659))

(declare-fun result!8921 () Bool)

(assert (=> tb!4659 (= result!8921 tp_is_empty!16665)))

(assert (=> b!861369 t!23742))

(declare-fun b_and!24057 () Bool)

(assert (= b_and!24055 (and (=> t!23742 result!8921) b_and!24057)))

(declare-fun m!802379 () Bool)

(assert (=> b!861372 m!802379))

(declare-fun m!802381 () Bool)

(assert (=> b!861372 m!802381))

(declare-fun m!802383 () Bool)

(assert (=> b!861372 m!802383))

(declare-fun m!802385 () Bool)

(assert (=> b!861369 m!802385))

(declare-fun m!802387 () Bool)

(assert (=> b!861369 m!802387))

(declare-fun m!802389 () Bool)

(assert (=> b!861369 m!802389))

(declare-fun m!802391 () Bool)

(assert (=> b!861369 m!802391))

(assert (=> b!861369 m!802387))

(declare-fun m!802393 () Bool)

(assert (=> b!861369 m!802393))

(assert (=> b!861369 m!802389))

(declare-fun m!802395 () Bool)

(assert (=> mapNonEmpty!26597 m!802395))

(declare-fun m!802397 () Bool)

(assert (=> b!861373 m!802397))

(declare-fun m!802399 () Bool)

(assert (=> b!861373 m!802399))

(declare-fun m!802401 () Bool)

(assert (=> b!861373 m!802401))

(declare-fun m!802403 () Bool)

(assert (=> b!861373 m!802403))

(declare-fun m!802405 () Bool)

(assert (=> b!861373 m!802405))

(declare-fun m!802407 () Bool)

(assert (=> b!861368 m!802407))

(declare-fun m!802409 () Bool)

(assert (=> b!861374 m!802409))

(declare-fun m!802411 () Bool)

(assert (=> b!861379 m!802411))

(declare-fun m!802413 () Bool)

(assert (=> b!861379 m!802413))

(assert (=> b!861379 m!802393))

(declare-fun m!802415 () Bool)

(assert (=> b!861379 m!802415))

(assert (=> b!861379 m!802393))

(declare-fun m!802417 () Bool)

(assert (=> b!861379 m!802417))

(declare-fun m!802419 () Bool)

(assert (=> b!861379 m!802419))

(declare-fun m!802421 () Bool)

(assert (=> b!861376 m!802421))

(declare-fun m!802423 () Bool)

(assert (=> b!861365 m!802423))

(declare-fun m!802425 () Bool)

(assert (=> b!861366 m!802425))

(declare-fun m!802427 () Bool)

(assert (=> start!73642 m!802427))

(declare-fun m!802429 () Bool)

(assert (=> start!73642 m!802429))

(check-sat b_and!24057 (not b!861365) (not b!861373) (not b!861374) tp_is_empty!16665 (not b!861368) (not start!73642) (not b!861369) (not b_next!14529) (not b!861372) (not b_lambda!11911) (not b!861379) (not b!861376) (not mapNonEmpty!26597))
(check-sat b_and!24057 (not b_next!14529))
