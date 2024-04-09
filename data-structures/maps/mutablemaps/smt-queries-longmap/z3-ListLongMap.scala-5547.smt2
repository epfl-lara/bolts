; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73096 () Bool)

(assert start!73096)

(declare-fun b_free!13983 () Bool)

(declare-fun b_next!13983 () Bool)

(assert (=> start!73096 (= b_free!13983 (not b_next!13983))))

(declare-fun tp!49454 () Bool)

(declare-fun b_and!23143 () Bool)

(assert (=> start!73096 (= tp!49454 b_and!23143)))

(declare-fun bm!37801 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!26539 0))(
  ( (V!26540 (val!8107 Int)) )
))
(declare-datatypes ((tuple2!10630 0))(
  ( (tuple2!10631 (_1!5325 (_ BitVec 64)) (_2!5325 V!26539)) )
))
(declare-datatypes ((List!16530 0))(
  ( (Nil!16527) (Cons!16526 (h!17657 tuple2!10630) (t!22967 List!16530)) )
))
(declare-datatypes ((ListLongMap!9413 0))(
  ( (ListLongMap!9414 (toList!4722 List!16530)) )
))
(declare-fun call!37804 () ListLongMap!9413)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48430 0))(
  ( (array!48431 (arr!23242 (Array (_ BitVec 32) (_ BitVec 64))) (size!23683 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48430)

(declare-datatypes ((ValueCell!7620 0))(
  ( (ValueCellFull!7620 (v!10528 V!26539)) (EmptyCell!7620) )
))
(declare-datatypes ((array!48432 0))(
  ( (array!48433 (arr!23243 (Array (_ BitVec 32) ValueCell!7620)) (size!23684 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48432)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26539)

(declare-fun zeroValue!654 () V!26539)

(declare-fun getCurrentListMapNoExtraKeys!2710 (array!48430 array!48432 (_ BitVec 32) (_ BitVec 32) V!26539 V!26539 (_ BitVec 32) Int) ListLongMap!9413)

(assert (=> bm!37801 (= call!37804 (getCurrentListMapNoExtraKeys!2710 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849605 () Bool)

(declare-fun res!577288 () Bool)

(declare-fun e!474005 () Bool)

(assert (=> b!849605 (=> (not res!577288) (not e!474005))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!849605 (= res!577288 (and (= (select (arr!23242 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!849606 () Bool)

(declare-fun e!474006 () Bool)

(declare-fun call!37805 () ListLongMap!9413)

(assert (=> b!849606 (= e!474006 (= call!37805 call!37804))))

(declare-fun b!849607 () Bool)

(declare-fun e!474011 () Bool)

(declare-fun tp_is_empty!16119 () Bool)

(assert (=> b!849607 (= e!474011 tp_is_empty!16119)))

(declare-fun b!849608 () Bool)

(declare-fun res!577286 () Bool)

(assert (=> b!849608 (=> (not res!577286) (not e!474005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849608 (= res!577286 (validMask!0 mask!1196))))

(declare-fun b!849609 () Bool)

(declare-fun res!577281 () Bool)

(assert (=> b!849609 (=> (not res!577281) (not e!474005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48430 (_ BitVec 32)) Bool)

(assert (=> b!849609 (= res!577281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849610 () Bool)

(declare-fun res!577283 () Bool)

(assert (=> b!849610 (=> (not res!577283) (not e!474005))))

(declare-datatypes ((List!16531 0))(
  ( (Nil!16528) (Cons!16527 (h!17658 (_ BitVec 64)) (t!22968 List!16531)) )
))
(declare-fun arrayNoDuplicates!0 (array!48430 (_ BitVec 32) List!16531) Bool)

(assert (=> b!849610 (= res!577283 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16528))))

(declare-fun v!557 () V!26539)

(declare-fun b!849611 () Bool)

(declare-fun +!2067 (ListLongMap!9413 tuple2!10630) ListLongMap!9413)

(assert (=> b!849611 (= e!474006 (= call!37805 (+!2067 call!37804 (tuple2!10631 k0!854 v!557))))))

(declare-fun mapIsEmpty!25778 () Bool)

(declare-fun mapRes!25778 () Bool)

(assert (=> mapIsEmpty!25778 mapRes!25778))

(declare-fun b!849612 () Bool)

(declare-fun e!474007 () Bool)

(assert (=> b!849612 (= e!474007 true)))

(declare-fun lt!382331 () ListLongMap!9413)

(declare-fun lt!382332 () tuple2!10630)

(declare-fun lt!382333 () V!26539)

(assert (=> b!849612 (= (+!2067 lt!382331 lt!382332) (+!2067 (+!2067 lt!382331 (tuple2!10631 k0!854 lt!382333)) lt!382332))))

(declare-fun lt!382335 () V!26539)

(assert (=> b!849612 (= lt!382332 (tuple2!10631 k0!854 lt!382335))))

(declare-datatypes ((Unit!28984 0))(
  ( (Unit!28985) )
))
(declare-fun lt!382329 () Unit!28984)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!255 (ListLongMap!9413 (_ BitVec 64) V!26539 V!26539) Unit!28984)

(assert (=> b!849612 (= lt!382329 (addSameAsAddTwiceSameKeyDiffValues!255 lt!382331 k0!854 lt!382333 lt!382335))))

(declare-fun lt!382334 () V!26539)

(declare-fun get!12247 (ValueCell!7620 V!26539) V!26539)

(assert (=> b!849612 (= lt!382333 (get!12247 (select (arr!23243 _values!688) from!1053) lt!382334))))

(declare-fun lt!382337 () ListLongMap!9413)

(assert (=> b!849612 (= lt!382337 (+!2067 lt!382331 (tuple2!10631 (select (arr!23242 _keys!868) from!1053) lt!382335)))))

(assert (=> b!849612 (= lt!382335 (get!12247 (select (store (arr!23243 _values!688) i!612 (ValueCellFull!7620 v!557)) from!1053) lt!382334))))

(declare-fun dynLambda!1003 (Int (_ BitVec 64)) V!26539)

(assert (=> b!849612 (= lt!382334 (dynLambda!1003 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!382338 () array!48432)

(assert (=> b!849612 (= lt!382331 (getCurrentListMapNoExtraKeys!2710 _keys!868 lt!382338 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849613 () Bool)

(declare-fun res!577285 () Bool)

(assert (=> b!849613 (=> (not res!577285) (not e!474005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849613 (= res!577285 (validKeyInArray!0 k0!854))))

(declare-fun b!849614 () Bool)

(declare-fun e!474010 () Bool)

(assert (=> b!849614 (= e!474010 (and e!474011 mapRes!25778))))

(declare-fun condMapEmpty!25778 () Bool)

(declare-fun mapDefault!25778 () ValueCell!7620)

(assert (=> b!849614 (= condMapEmpty!25778 (= (arr!23243 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7620)) mapDefault!25778)))))

(declare-fun b!849615 () Bool)

(declare-fun res!577282 () Bool)

(assert (=> b!849615 (=> (not res!577282) (not e!474005))))

(assert (=> b!849615 (= res!577282 (and (= (size!23684 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23683 _keys!868) (size!23684 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849616 () Bool)

(declare-fun e!474012 () Bool)

(assert (=> b!849616 (= e!474005 e!474012)))

(declare-fun res!577287 () Bool)

(assert (=> b!849616 (=> (not res!577287) (not e!474012))))

(assert (=> b!849616 (= res!577287 (= from!1053 i!612))))

(assert (=> b!849616 (= lt!382337 (getCurrentListMapNoExtraKeys!2710 _keys!868 lt!382338 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849616 (= lt!382338 (array!48433 (store (arr!23243 _values!688) i!612 (ValueCellFull!7620 v!557)) (size!23684 _values!688)))))

(declare-fun lt!382330 () ListLongMap!9413)

(assert (=> b!849616 (= lt!382330 (getCurrentListMapNoExtraKeys!2710 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849617 () Bool)

(assert (=> b!849617 (= e!474012 (not e!474007))))

(declare-fun res!577289 () Bool)

(assert (=> b!849617 (=> res!577289 e!474007)))

(assert (=> b!849617 (= res!577289 (not (validKeyInArray!0 (select (arr!23242 _keys!868) from!1053))))))

(assert (=> b!849617 e!474006))

(declare-fun c!91563 () Bool)

(assert (=> b!849617 (= c!91563 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382336 () Unit!28984)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!340 (array!48430 array!48432 (_ BitVec 32) (_ BitVec 32) V!26539 V!26539 (_ BitVec 32) (_ BitVec 64) V!26539 (_ BitVec 32) Int) Unit!28984)

(assert (=> b!849617 (= lt!382336 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!340 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37802 () Bool)

(assert (=> bm!37802 (= call!37805 (getCurrentListMapNoExtraKeys!2710 _keys!868 lt!382338 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849618 () Bool)

(declare-fun res!577284 () Bool)

(assert (=> b!849618 (=> (not res!577284) (not e!474005))))

(assert (=> b!849618 (= res!577284 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23683 _keys!868))))))

(declare-fun b!849619 () Bool)

(declare-fun e!474008 () Bool)

(assert (=> b!849619 (= e!474008 tp_is_empty!16119)))

(declare-fun res!577290 () Bool)

(assert (=> start!73096 (=> (not res!577290) (not e!474005))))

(assert (=> start!73096 (= res!577290 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23683 _keys!868))))))

(assert (=> start!73096 e!474005))

(assert (=> start!73096 tp_is_empty!16119))

(assert (=> start!73096 true))

(assert (=> start!73096 tp!49454))

(declare-fun array_inv!18432 (array!48430) Bool)

(assert (=> start!73096 (array_inv!18432 _keys!868)))

(declare-fun array_inv!18433 (array!48432) Bool)

(assert (=> start!73096 (and (array_inv!18433 _values!688) e!474010)))

(declare-fun mapNonEmpty!25778 () Bool)

(declare-fun tp!49453 () Bool)

(assert (=> mapNonEmpty!25778 (= mapRes!25778 (and tp!49453 e!474008))))

(declare-fun mapValue!25778 () ValueCell!7620)

(declare-fun mapKey!25778 () (_ BitVec 32))

(declare-fun mapRest!25778 () (Array (_ BitVec 32) ValueCell!7620))

(assert (=> mapNonEmpty!25778 (= (arr!23243 _values!688) (store mapRest!25778 mapKey!25778 mapValue!25778))))

(assert (= (and start!73096 res!577290) b!849608))

(assert (= (and b!849608 res!577286) b!849615))

(assert (= (and b!849615 res!577282) b!849609))

(assert (= (and b!849609 res!577281) b!849610))

(assert (= (and b!849610 res!577283) b!849618))

(assert (= (and b!849618 res!577284) b!849613))

(assert (= (and b!849613 res!577285) b!849605))

(assert (= (and b!849605 res!577288) b!849616))

(assert (= (and b!849616 res!577287) b!849617))

(assert (= (and b!849617 c!91563) b!849611))

(assert (= (and b!849617 (not c!91563)) b!849606))

(assert (= (or b!849611 b!849606) bm!37802))

(assert (= (or b!849611 b!849606) bm!37801))

(assert (= (and b!849617 (not res!577289)) b!849612))

(assert (= (and b!849614 condMapEmpty!25778) mapIsEmpty!25778))

(assert (= (and b!849614 (not condMapEmpty!25778)) mapNonEmpty!25778))

(get-info :version)

(assert (= (and mapNonEmpty!25778 ((_ is ValueCellFull!7620) mapValue!25778)) b!849619))

(assert (= (and b!849614 ((_ is ValueCellFull!7620) mapDefault!25778)) b!849607))

(assert (= start!73096 b!849614))

(declare-fun b_lambda!11545 () Bool)

(assert (=> (not b_lambda!11545) (not b!849612)))

(declare-fun t!22966 () Bool)

(declare-fun tb!4293 () Bool)

(assert (=> (and start!73096 (= defaultEntry!696 defaultEntry!696) t!22966) tb!4293))

(declare-fun result!8189 () Bool)

(assert (=> tb!4293 (= result!8189 tp_is_empty!16119)))

(assert (=> b!849612 t!22966))

(declare-fun b_and!23145 () Bool)

(assert (= b_and!23143 (and (=> t!22966 result!8189) b_and!23145)))

(declare-fun m!790373 () Bool)

(assert (=> b!849616 m!790373))

(declare-fun m!790375 () Bool)

(assert (=> b!849616 m!790375))

(declare-fun m!790377 () Bool)

(assert (=> b!849616 m!790377))

(declare-fun m!790379 () Bool)

(assert (=> bm!37802 m!790379))

(declare-fun m!790381 () Bool)

(assert (=> b!849605 m!790381))

(declare-fun m!790383 () Bool)

(assert (=> b!849610 m!790383))

(declare-fun m!790385 () Bool)

(assert (=> bm!37801 m!790385))

(declare-fun m!790387 () Bool)

(assert (=> b!849612 m!790387))

(declare-fun m!790389 () Bool)

(assert (=> b!849612 m!790389))

(declare-fun m!790391 () Bool)

(assert (=> b!849612 m!790391))

(declare-fun m!790393 () Bool)

(assert (=> b!849612 m!790393))

(declare-fun m!790395 () Bool)

(assert (=> b!849612 m!790395))

(assert (=> b!849612 m!790379))

(declare-fun m!790397 () Bool)

(assert (=> b!849612 m!790397))

(declare-fun m!790399 () Bool)

(assert (=> b!849612 m!790399))

(assert (=> b!849612 m!790393))

(assert (=> b!849612 m!790375))

(assert (=> b!849612 m!790399))

(declare-fun m!790401 () Bool)

(assert (=> b!849612 m!790401))

(assert (=> b!849612 m!790391))

(declare-fun m!790403 () Bool)

(assert (=> b!849612 m!790403))

(declare-fun m!790405 () Bool)

(assert (=> b!849612 m!790405))

(declare-fun m!790407 () Bool)

(assert (=> b!849612 m!790407))

(declare-fun m!790409 () Bool)

(assert (=> b!849608 m!790409))

(declare-fun m!790411 () Bool)

(assert (=> b!849609 m!790411))

(declare-fun m!790413 () Bool)

(assert (=> mapNonEmpty!25778 m!790413))

(declare-fun m!790415 () Bool)

(assert (=> b!849611 m!790415))

(assert (=> b!849617 m!790405))

(assert (=> b!849617 m!790405))

(declare-fun m!790417 () Bool)

(assert (=> b!849617 m!790417))

(declare-fun m!790419 () Bool)

(assert (=> b!849617 m!790419))

(declare-fun m!790421 () Bool)

(assert (=> start!73096 m!790421))

(declare-fun m!790423 () Bool)

(assert (=> start!73096 m!790423))

(declare-fun m!790425 () Bool)

(assert (=> b!849613 m!790425))

(check-sat (not start!73096) (not bm!37801) (not b!849612) (not b!849609) (not b!849611) (not b!849610) b_and!23145 (not b!849616) (not mapNonEmpty!25778) tp_is_empty!16119 (not bm!37802) (not b_lambda!11545) (not b!849613) (not b!849617) (not b!849608) (not b_next!13983))
(check-sat b_and!23145 (not b_next!13983))
