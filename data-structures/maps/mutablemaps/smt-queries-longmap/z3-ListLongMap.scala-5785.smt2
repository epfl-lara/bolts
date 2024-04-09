; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74662 () Bool)

(assert start!74662)

(declare-fun b_free!15303 () Bool)

(declare-fun b_next!15303 () Bool)

(assert (=> start!74662 (= b_free!15303 (not b_next!15303))))

(declare-fun tp!53594 () Bool)

(declare-fun b_and!25227 () Bool)

(assert (=> start!74662 (= tp!53594 b_and!25227)))

(declare-fun b!879438 () Bool)

(declare-fun res!597613 () Bool)

(declare-fun e!489445 () Bool)

(assert (=> b!879438 (=> (not res!597613) (not e!489445))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51202 0))(
  ( (array!51203 (arr!24622 (Array (_ BitVec 32) (_ BitVec 64))) (size!25063 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51202)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879438 (= res!597613 (and (= (select (arr!24622 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!879439 () Bool)

(declare-fun res!597607 () Bool)

(assert (=> b!879439 (=> (not res!597607) (not e!489445))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51202 (_ BitVec 32)) Bool)

(assert (=> b!879439 (= res!597607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879440 () Bool)

(declare-fun res!597605 () Bool)

(assert (=> b!879440 (=> (not res!597605) (not e!489445))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28443 0))(
  ( (V!28444 (val!8821 Int)) )
))
(declare-datatypes ((ValueCell!8334 0))(
  ( (ValueCellFull!8334 (v!11261 V!28443)) (EmptyCell!8334) )
))
(declare-datatypes ((array!51204 0))(
  ( (array!51205 (arr!24623 (Array (_ BitVec 32) ValueCell!8334)) (size!25064 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51204)

(assert (=> b!879440 (= res!597605 (and (= (size!25064 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25063 _keys!868) (size!25064 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879441 () Bool)

(declare-fun res!597610 () Bool)

(assert (=> b!879441 (=> (not res!597610) (not e!489445))))

(assert (=> b!879441 (= res!597610 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25063 _keys!868))))))

(declare-fun b!879442 () Bool)

(declare-fun res!597606 () Bool)

(assert (=> b!879442 (=> (not res!597606) (not e!489445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879442 (= res!597606 (validKeyInArray!0 k0!854))))

(declare-fun res!597612 () Bool)

(assert (=> start!74662 (=> (not res!597612) (not e!489445))))

(assert (=> start!74662 (= res!597612 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25063 _keys!868))))))

(assert (=> start!74662 e!489445))

(declare-fun tp_is_empty!17547 () Bool)

(assert (=> start!74662 tp_is_empty!17547))

(assert (=> start!74662 true))

(assert (=> start!74662 tp!53594))

(declare-fun array_inv!19382 (array!51202) Bool)

(assert (=> start!74662 (array_inv!19382 _keys!868)))

(declare-fun e!489448 () Bool)

(declare-fun array_inv!19383 (array!51204) Bool)

(assert (=> start!74662 (and (array_inv!19383 _values!688) e!489448)))

(declare-fun mapNonEmpty!27939 () Bool)

(declare-fun mapRes!27939 () Bool)

(declare-fun tp!53595 () Bool)

(declare-fun e!489446 () Bool)

(assert (=> mapNonEmpty!27939 (= mapRes!27939 (and tp!53595 e!489446))))

(declare-fun mapRest!27939 () (Array (_ BitVec 32) ValueCell!8334))

(declare-fun mapValue!27939 () ValueCell!8334)

(declare-fun mapKey!27939 () (_ BitVec 32))

(assert (=> mapNonEmpty!27939 (= (arr!24623 _values!688) (store mapRest!27939 mapKey!27939 mapValue!27939))))

(declare-fun b!879443 () Bool)

(assert (=> b!879443 (= e!489446 tp_is_empty!17547)))

(declare-fun b!879444 () Bool)

(declare-fun res!597614 () Bool)

(assert (=> b!879444 (=> (not res!597614) (not e!489445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879444 (= res!597614 (validMask!0 mask!1196))))

(declare-fun b!879445 () Bool)

(declare-fun e!489449 () Bool)

(declare-fun e!489447 () Bool)

(assert (=> b!879445 (= e!489449 (not e!489447))))

(declare-fun res!597611 () Bool)

(assert (=> b!879445 (=> res!597611 e!489447)))

(assert (=> b!879445 (= res!597611 (not (validKeyInArray!0 (select (arr!24622 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11688 0))(
  ( (tuple2!11689 (_1!5854 (_ BitVec 64)) (_2!5854 V!28443)) )
))
(declare-datatypes ((List!17564 0))(
  ( (Nil!17561) (Cons!17560 (h!18691 tuple2!11688) (t!24677 List!17564)) )
))
(declare-datatypes ((ListLongMap!10471 0))(
  ( (ListLongMap!10472 (toList!5251 List!17564)) )
))
(declare-fun lt!397621 () ListLongMap!10471)

(declare-fun lt!397624 () ListLongMap!10471)

(assert (=> b!879445 (= lt!397621 lt!397624)))

(declare-fun v!557 () V!28443)

(declare-fun lt!397622 () ListLongMap!10471)

(declare-fun +!2457 (ListLongMap!10471 tuple2!11688) ListLongMap!10471)

(assert (=> b!879445 (= lt!397624 (+!2457 lt!397622 (tuple2!11689 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28443)

(declare-fun zeroValue!654 () V!28443)

(declare-fun lt!397620 () array!51204)

(declare-fun getCurrentListMapNoExtraKeys!3212 (array!51202 array!51204 (_ BitVec 32) (_ BitVec 32) V!28443 V!28443 (_ BitVec 32) Int) ListLongMap!10471)

(assert (=> b!879445 (= lt!397621 (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879445 (= lt!397622 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29992 0))(
  ( (Unit!29993) )
))
(declare-fun lt!397625 () Unit!29992)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!688 (array!51202 array!51204 (_ BitVec 32) (_ BitVec 32) V!28443 V!28443 (_ BitVec 32) (_ BitVec 64) V!28443 (_ BitVec 32) Int) Unit!29992)

(assert (=> b!879445 (= lt!397625 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!688 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879446 () Bool)

(declare-fun e!489451 () Bool)

(assert (=> b!879446 (= e!489448 (and e!489451 mapRes!27939))))

(declare-fun condMapEmpty!27939 () Bool)

(declare-fun mapDefault!27939 () ValueCell!8334)

(assert (=> b!879446 (= condMapEmpty!27939 (= (arr!24623 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8334)) mapDefault!27939)))))

(declare-fun b!879447 () Bool)

(assert (=> b!879447 (= e!489445 e!489449)))

(declare-fun res!597609 () Bool)

(assert (=> b!879447 (=> (not res!597609) (not e!489449))))

(assert (=> b!879447 (= res!597609 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397623 () ListLongMap!10471)

(assert (=> b!879447 (= lt!397623 (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!879447 (= lt!397620 (array!51205 (store (arr!24623 _values!688) i!612 (ValueCellFull!8334 v!557)) (size!25064 _values!688)))))

(declare-fun lt!397626 () ListLongMap!10471)

(assert (=> b!879447 (= lt!397626 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!879448 () Bool)

(assert (=> b!879448 (= e!489451 tp_is_empty!17547)))

(declare-fun b!879449 () Bool)

(declare-fun res!597608 () Bool)

(assert (=> b!879449 (=> (not res!597608) (not e!489445))))

(declare-datatypes ((List!17565 0))(
  ( (Nil!17562) (Cons!17561 (h!18692 (_ BitVec 64)) (t!24678 List!17565)) )
))
(declare-fun arrayNoDuplicates!0 (array!51202 (_ BitVec 32) List!17565) Bool)

(assert (=> b!879449 (= res!597608 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17562))))

(declare-fun mapIsEmpty!27939 () Bool)

(assert (=> mapIsEmpty!27939 mapRes!27939))

(declare-fun b!879450 () Bool)

(assert (=> b!879450 (= e!489447 (or (not (= (select (arr!24622 _keys!868) from!1053) k0!854)) (bvslt (size!25063 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun get!12955 (ValueCell!8334 V!28443) V!28443)

(declare-fun dynLambda!1228 (Int (_ BitVec 64)) V!28443)

(assert (=> b!879450 (= lt!397623 (+!2457 lt!397624 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!74662 res!597612) b!879444))

(assert (= (and b!879444 res!597614) b!879440))

(assert (= (and b!879440 res!597605) b!879439))

(assert (= (and b!879439 res!597607) b!879449))

(assert (= (and b!879449 res!597608) b!879441))

(assert (= (and b!879441 res!597610) b!879442))

(assert (= (and b!879442 res!597606) b!879438))

(assert (= (and b!879438 res!597613) b!879447))

(assert (= (and b!879447 res!597609) b!879445))

(assert (= (and b!879445 (not res!597611)) b!879450))

(assert (= (and b!879446 condMapEmpty!27939) mapIsEmpty!27939))

(assert (= (and b!879446 (not condMapEmpty!27939)) mapNonEmpty!27939))

(get-info :version)

(assert (= (and mapNonEmpty!27939 ((_ is ValueCellFull!8334) mapValue!27939)) b!879443))

(assert (= (and b!879446 ((_ is ValueCellFull!8334) mapDefault!27939)) b!879448))

(assert (= start!74662 b!879446))

(declare-fun b_lambda!12407 () Bool)

(assert (=> (not b_lambda!12407) (not b!879450)))

(declare-fun t!24676 () Bool)

(declare-fun tb!4969 () Bool)

(assert (=> (and start!74662 (= defaultEntry!696 defaultEntry!696) t!24676) tb!4969))

(declare-fun result!9553 () Bool)

(assert (=> tb!4969 (= result!9553 tp_is_empty!17547)))

(assert (=> b!879450 t!24676))

(declare-fun b_and!25229 () Bool)

(assert (= b_and!25227 (and (=> t!24676 result!9553) b_and!25229)))

(declare-fun m!819283 () Bool)

(assert (=> b!879438 m!819283))

(declare-fun m!819285 () Bool)

(assert (=> b!879447 m!819285))

(declare-fun m!819287 () Bool)

(assert (=> b!879447 m!819287))

(declare-fun m!819289 () Bool)

(assert (=> b!879447 m!819289))

(declare-fun m!819291 () Bool)

(assert (=> b!879450 m!819291))

(declare-fun m!819293 () Bool)

(assert (=> b!879450 m!819293))

(declare-fun m!819295 () Bool)

(assert (=> b!879450 m!819295))

(declare-fun m!819297 () Bool)

(assert (=> b!879450 m!819297))

(assert (=> b!879450 m!819293))

(declare-fun m!819299 () Bool)

(assert (=> b!879450 m!819299))

(assert (=> b!879450 m!819295))

(declare-fun m!819301 () Bool)

(assert (=> start!74662 m!819301))

(declare-fun m!819303 () Bool)

(assert (=> start!74662 m!819303))

(declare-fun m!819305 () Bool)

(assert (=> b!879445 m!819305))

(declare-fun m!819307 () Bool)

(assert (=> b!879445 m!819307))

(assert (=> b!879445 m!819299))

(declare-fun m!819309 () Bool)

(assert (=> b!879445 m!819309))

(assert (=> b!879445 m!819299))

(declare-fun m!819311 () Bool)

(assert (=> b!879445 m!819311))

(declare-fun m!819313 () Bool)

(assert (=> b!879445 m!819313))

(declare-fun m!819315 () Bool)

(assert (=> mapNonEmpty!27939 m!819315))

(declare-fun m!819317 () Bool)

(assert (=> b!879442 m!819317))

(declare-fun m!819319 () Bool)

(assert (=> b!879439 m!819319))

(declare-fun m!819321 () Bool)

(assert (=> b!879449 m!819321))

(declare-fun m!819323 () Bool)

(assert (=> b!879444 m!819323))

(check-sat (not b!879439) (not b!879449) (not b_lambda!12407) (not b!879450) (not b!879444) (not start!74662) (not b_next!15303) (not b!879447) tp_is_empty!17547 (not mapNonEmpty!27939) b_and!25229 (not b!879445) (not b!879442))
(check-sat b_and!25229 (not b_next!15303))
(get-model)

(declare-fun b_lambda!12411 () Bool)

(assert (= b_lambda!12407 (or (and start!74662 b_free!15303) b_lambda!12411)))

(check-sat (not b_lambda!12411) (not b!879439) (not b!879449) (not b!879450) (not b!879444) (not start!74662) (not b_next!15303) (not b!879447) tp_is_empty!17547 (not mapNonEmpty!27939) b_and!25229 (not b!879445) (not b!879442))
(check-sat b_and!25229 (not b_next!15303))
(get-model)

(declare-fun b!879518 () Bool)

(declare-fun e!489493 () Bool)

(declare-fun e!489487 () Bool)

(assert (=> b!879518 (= e!489493 e!489487)))

(declare-fun c!92752 () Bool)

(assert (=> b!879518 (= c!92752 (bvslt from!1053 (size!25063 _keys!868)))))

(declare-fun b!879519 () Bool)

(declare-fun e!489488 () Bool)

(assert (=> b!879519 (= e!489493 e!489488)))

(assert (=> b!879519 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25063 _keys!868)))))

(declare-fun res!597654 () Bool)

(declare-fun lt!397666 () ListLongMap!10471)

(declare-fun contains!4250 (ListLongMap!10471 (_ BitVec 64)) Bool)

(assert (=> b!879519 (= res!597654 (contains!4250 lt!397666 (select (arr!24622 _keys!868) from!1053)))))

(assert (=> b!879519 (=> (not res!597654) (not e!489488))))

(declare-fun d!108851 () Bool)

(declare-fun e!489490 () Bool)

(assert (=> d!108851 e!489490))

(declare-fun res!597655 () Bool)

(assert (=> d!108851 (=> (not res!597655) (not e!489490))))

(assert (=> d!108851 (= res!597655 (not (contains!4250 lt!397666 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489492 () ListLongMap!10471)

(assert (=> d!108851 (= lt!397666 e!489492)))

(declare-fun c!92751 () Bool)

(assert (=> d!108851 (= c!92751 (bvsge from!1053 (size!25063 _keys!868)))))

(assert (=> d!108851 (validMask!0 mask!1196)))

(assert (=> d!108851 (= (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!397666)))

(declare-fun b!879520 () Bool)

(assert (=> b!879520 (= e!489492 (ListLongMap!10472 Nil!17561))))

(declare-fun b!879521 () Bool)

(assert (=> b!879521 (= e!489487 (= lt!397666 (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879522 () Bool)

(declare-fun isEmpty!671 (ListLongMap!10471) Bool)

(assert (=> b!879522 (= e!489487 (isEmpty!671 lt!397666))))

(declare-fun bm!38872 () Bool)

(declare-fun call!38875 () ListLongMap!10471)

(assert (=> bm!38872 (= call!38875 (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879523 () Bool)

(declare-fun e!489489 () Bool)

(assert (=> b!879523 (= e!489489 (validKeyInArray!0 (select (arr!24622 _keys!868) from!1053)))))

(assert (=> b!879523 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!879524 () Bool)

(assert (=> b!879524 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25063 _keys!868)))))

(assert (=> b!879524 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25064 lt!397620)))))

(declare-fun apply!379 (ListLongMap!10471 (_ BitVec 64)) V!28443)

(assert (=> b!879524 (= e!489488 (= (apply!379 lt!397666 (select (arr!24622 _keys!868) from!1053)) (get!12955 (select (arr!24623 lt!397620) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879525 () Bool)

(declare-fun e!489491 () ListLongMap!10471)

(assert (=> b!879525 (= e!489492 e!489491)))

(declare-fun c!92749 () Bool)

(assert (=> b!879525 (= c!92749 (validKeyInArray!0 (select (arr!24622 _keys!868) from!1053)))))

(declare-fun b!879526 () Bool)

(assert (=> b!879526 (= e!489490 e!489493)))

(declare-fun c!92750 () Bool)

(assert (=> b!879526 (= c!92750 e!489489)))

(declare-fun res!597653 () Bool)

(assert (=> b!879526 (=> (not res!597653) (not e!489489))))

(assert (=> b!879526 (= res!597653 (bvslt from!1053 (size!25063 _keys!868)))))

(declare-fun b!879527 () Bool)

(declare-fun lt!397663 () Unit!29992)

(declare-fun lt!397665 () Unit!29992)

(assert (=> b!879527 (= lt!397663 lt!397665)))

(declare-fun lt!397668 () V!28443)

(declare-fun lt!397662 () ListLongMap!10471)

(declare-fun lt!397664 () (_ BitVec 64))

(declare-fun lt!397667 () (_ BitVec 64))

(assert (=> b!879527 (not (contains!4250 (+!2457 lt!397662 (tuple2!11689 lt!397664 lt!397668)) lt!397667))))

(declare-fun addStillNotContains!206 (ListLongMap!10471 (_ BitVec 64) V!28443 (_ BitVec 64)) Unit!29992)

(assert (=> b!879527 (= lt!397665 (addStillNotContains!206 lt!397662 lt!397664 lt!397668 lt!397667))))

(assert (=> b!879527 (= lt!397667 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879527 (= lt!397668 (get!12955 (select (arr!24623 lt!397620) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879527 (= lt!397664 (select (arr!24622 _keys!868) from!1053))))

(assert (=> b!879527 (= lt!397662 call!38875)))

(assert (=> b!879527 (= e!489491 (+!2457 call!38875 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 lt!397620) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879528 () Bool)

(assert (=> b!879528 (= e!489491 call!38875)))

(declare-fun b!879529 () Bool)

(declare-fun res!597656 () Bool)

(assert (=> b!879529 (=> (not res!597656) (not e!489490))))

(assert (=> b!879529 (= res!597656 (not (contains!4250 lt!397666 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108851 c!92751) b!879520))

(assert (= (and d!108851 (not c!92751)) b!879525))

(assert (= (and b!879525 c!92749) b!879527))

(assert (= (and b!879525 (not c!92749)) b!879528))

(assert (= (or b!879527 b!879528) bm!38872))

(assert (= (and d!108851 res!597655) b!879529))

(assert (= (and b!879529 res!597656) b!879526))

(assert (= (and b!879526 res!597653) b!879523))

(assert (= (and b!879526 c!92750) b!879519))

(assert (= (and b!879526 (not c!92750)) b!879518))

(assert (= (and b!879519 res!597654) b!879524))

(assert (= (and b!879518 c!92752) b!879521))

(assert (= (and b!879518 (not c!92752)) b!879522))

(declare-fun b_lambda!12413 () Bool)

(assert (=> (not b_lambda!12413) (not b!879524)))

(assert (=> b!879524 t!24676))

(declare-fun b_and!25235 () Bool)

(assert (= b_and!25229 (and (=> t!24676 result!9553) b_and!25235)))

(declare-fun b_lambda!12415 () Bool)

(assert (=> (not b_lambda!12415) (not b!879527)))

(assert (=> b!879527 t!24676))

(declare-fun b_and!25237 () Bool)

(assert (= b_and!25235 (and (=> t!24676 result!9553) b_and!25237)))

(assert (=> b!879523 m!819299))

(assert (=> b!879523 m!819299))

(assert (=> b!879523 m!819309))

(assert (=> b!879525 m!819299))

(assert (=> b!879525 m!819299))

(assert (=> b!879525 m!819309))

(declare-fun m!819367 () Bool)

(assert (=> b!879529 m!819367))

(declare-fun m!819369 () Bool)

(assert (=> b!879527 m!819369))

(assert (=> b!879527 m!819295))

(declare-fun m!819371 () Bool)

(assert (=> b!879527 m!819371))

(declare-fun m!819373 () Bool)

(assert (=> b!879527 m!819373))

(declare-fun m!819375 () Bool)

(assert (=> b!879527 m!819375))

(assert (=> b!879527 m!819299))

(assert (=> b!879527 m!819295))

(assert (=> b!879527 m!819373))

(declare-fun m!819377 () Bool)

(assert (=> b!879527 m!819377))

(assert (=> b!879527 m!819369))

(declare-fun m!819379 () Bool)

(assert (=> b!879527 m!819379))

(declare-fun m!819381 () Bool)

(assert (=> d!108851 m!819381))

(assert (=> d!108851 m!819323))

(declare-fun m!819383 () Bool)

(assert (=> b!879522 m!819383))

(declare-fun m!819385 () Bool)

(assert (=> b!879521 m!819385))

(assert (=> bm!38872 m!819385))

(assert (=> b!879519 m!819299))

(assert (=> b!879519 m!819299))

(declare-fun m!819387 () Bool)

(assert (=> b!879519 m!819387))

(assert (=> b!879524 m!819369))

(assert (=> b!879524 m!819295))

(assert (=> b!879524 m!819371))

(assert (=> b!879524 m!819299))

(assert (=> b!879524 m!819295))

(assert (=> b!879524 m!819369))

(assert (=> b!879524 m!819299))

(declare-fun m!819389 () Bool)

(assert (=> b!879524 m!819389))

(assert (=> b!879447 d!108851))

(declare-fun b!879530 () Bool)

(declare-fun e!489500 () Bool)

(declare-fun e!489494 () Bool)

(assert (=> b!879530 (= e!489500 e!489494)))

(declare-fun c!92756 () Bool)

(assert (=> b!879530 (= c!92756 (bvslt from!1053 (size!25063 _keys!868)))))

(declare-fun b!879531 () Bool)

(declare-fun e!489495 () Bool)

(assert (=> b!879531 (= e!489500 e!489495)))

(assert (=> b!879531 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25063 _keys!868)))))

(declare-fun res!597658 () Bool)

(declare-fun lt!397673 () ListLongMap!10471)

(assert (=> b!879531 (= res!597658 (contains!4250 lt!397673 (select (arr!24622 _keys!868) from!1053)))))

(assert (=> b!879531 (=> (not res!597658) (not e!489495))))

(declare-fun d!108853 () Bool)

(declare-fun e!489497 () Bool)

(assert (=> d!108853 e!489497))

(declare-fun res!597659 () Bool)

(assert (=> d!108853 (=> (not res!597659) (not e!489497))))

(assert (=> d!108853 (= res!597659 (not (contains!4250 lt!397673 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489499 () ListLongMap!10471)

(assert (=> d!108853 (= lt!397673 e!489499)))

(declare-fun c!92755 () Bool)

(assert (=> d!108853 (= c!92755 (bvsge from!1053 (size!25063 _keys!868)))))

(assert (=> d!108853 (validMask!0 mask!1196)))

(assert (=> d!108853 (= (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!397673)))

(declare-fun b!879532 () Bool)

(assert (=> b!879532 (= e!489499 (ListLongMap!10472 Nil!17561))))

(declare-fun b!879533 () Bool)

(assert (=> b!879533 (= e!489494 (= lt!397673 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879534 () Bool)

(assert (=> b!879534 (= e!489494 (isEmpty!671 lt!397673))))

(declare-fun call!38876 () ListLongMap!10471)

(declare-fun bm!38873 () Bool)

(assert (=> bm!38873 (= call!38876 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879535 () Bool)

(declare-fun e!489496 () Bool)

(assert (=> b!879535 (= e!489496 (validKeyInArray!0 (select (arr!24622 _keys!868) from!1053)))))

(assert (=> b!879535 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!879536 () Bool)

(assert (=> b!879536 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25063 _keys!868)))))

(assert (=> b!879536 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25064 _values!688)))))

(assert (=> b!879536 (= e!489495 (= (apply!379 lt!397673 (select (arr!24622 _keys!868) from!1053)) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879537 () Bool)

(declare-fun e!489498 () ListLongMap!10471)

(assert (=> b!879537 (= e!489499 e!489498)))

(declare-fun c!92753 () Bool)

(assert (=> b!879537 (= c!92753 (validKeyInArray!0 (select (arr!24622 _keys!868) from!1053)))))

(declare-fun b!879538 () Bool)

(assert (=> b!879538 (= e!489497 e!489500)))

(declare-fun c!92754 () Bool)

(assert (=> b!879538 (= c!92754 e!489496)))

(declare-fun res!597657 () Bool)

(assert (=> b!879538 (=> (not res!597657) (not e!489496))))

(assert (=> b!879538 (= res!597657 (bvslt from!1053 (size!25063 _keys!868)))))

(declare-fun b!879539 () Bool)

(declare-fun lt!397670 () Unit!29992)

(declare-fun lt!397672 () Unit!29992)

(assert (=> b!879539 (= lt!397670 lt!397672)))

(declare-fun lt!397671 () (_ BitVec 64))

(declare-fun lt!397674 () (_ BitVec 64))

(declare-fun lt!397675 () V!28443)

(declare-fun lt!397669 () ListLongMap!10471)

(assert (=> b!879539 (not (contains!4250 (+!2457 lt!397669 (tuple2!11689 lt!397671 lt!397675)) lt!397674))))

(assert (=> b!879539 (= lt!397672 (addStillNotContains!206 lt!397669 lt!397671 lt!397675 lt!397674))))

(assert (=> b!879539 (= lt!397674 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879539 (= lt!397675 (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879539 (= lt!397671 (select (arr!24622 _keys!868) from!1053))))

(assert (=> b!879539 (= lt!397669 call!38876)))

(assert (=> b!879539 (= e!489498 (+!2457 call!38876 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879540 () Bool)

(assert (=> b!879540 (= e!489498 call!38876)))

(declare-fun b!879541 () Bool)

(declare-fun res!597660 () Bool)

(assert (=> b!879541 (=> (not res!597660) (not e!489497))))

(assert (=> b!879541 (= res!597660 (not (contains!4250 lt!397673 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108853 c!92755) b!879532))

(assert (= (and d!108853 (not c!92755)) b!879537))

(assert (= (and b!879537 c!92753) b!879539))

(assert (= (and b!879537 (not c!92753)) b!879540))

(assert (= (or b!879539 b!879540) bm!38873))

(assert (= (and d!108853 res!597659) b!879541))

(assert (= (and b!879541 res!597660) b!879538))

(assert (= (and b!879538 res!597657) b!879535))

(assert (= (and b!879538 c!92754) b!879531))

(assert (= (and b!879538 (not c!92754)) b!879530))

(assert (= (and b!879531 res!597658) b!879536))

(assert (= (and b!879530 c!92756) b!879533))

(assert (= (and b!879530 (not c!92756)) b!879534))

(declare-fun b_lambda!12417 () Bool)

(assert (=> (not b_lambda!12417) (not b!879536)))

(assert (=> b!879536 t!24676))

(declare-fun b_and!25239 () Bool)

(assert (= b_and!25237 (and (=> t!24676 result!9553) b_and!25239)))

(declare-fun b_lambda!12419 () Bool)

(assert (=> (not b_lambda!12419) (not b!879539)))

(assert (=> b!879539 t!24676))

(declare-fun b_and!25241 () Bool)

(assert (= b_and!25239 (and (=> t!24676 result!9553) b_and!25241)))

(assert (=> b!879535 m!819299))

(assert (=> b!879535 m!819299))

(assert (=> b!879535 m!819309))

(assert (=> b!879537 m!819299))

(assert (=> b!879537 m!819299))

(assert (=> b!879537 m!819309))

(declare-fun m!819391 () Bool)

(assert (=> b!879541 m!819391))

(assert (=> b!879539 m!819293))

(assert (=> b!879539 m!819295))

(assert (=> b!879539 m!819297))

(declare-fun m!819393 () Bool)

(assert (=> b!879539 m!819393))

(declare-fun m!819395 () Bool)

(assert (=> b!879539 m!819395))

(assert (=> b!879539 m!819299))

(assert (=> b!879539 m!819295))

(assert (=> b!879539 m!819393))

(declare-fun m!819397 () Bool)

(assert (=> b!879539 m!819397))

(assert (=> b!879539 m!819293))

(declare-fun m!819399 () Bool)

(assert (=> b!879539 m!819399))

(declare-fun m!819401 () Bool)

(assert (=> d!108853 m!819401))

(assert (=> d!108853 m!819323))

(declare-fun m!819403 () Bool)

(assert (=> b!879534 m!819403))

(declare-fun m!819405 () Bool)

(assert (=> b!879533 m!819405))

(assert (=> bm!38873 m!819405))

(assert (=> b!879531 m!819299))

(assert (=> b!879531 m!819299))

(declare-fun m!819407 () Bool)

(assert (=> b!879531 m!819407))

(assert (=> b!879536 m!819293))

(assert (=> b!879536 m!819295))

(assert (=> b!879536 m!819297))

(assert (=> b!879536 m!819299))

(assert (=> b!879536 m!819295))

(assert (=> b!879536 m!819293))

(assert (=> b!879536 m!819299))

(declare-fun m!819409 () Bool)

(assert (=> b!879536 m!819409))

(assert (=> b!879447 d!108853))

(declare-fun d!108855 () Bool)

(assert (=> d!108855 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!879442 d!108855))

(declare-fun d!108857 () Bool)

(assert (=> d!108857 (= (array_inv!19382 _keys!868) (bvsge (size!25063 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74662 d!108857))

(declare-fun d!108859 () Bool)

(assert (=> d!108859 (= (array_inv!19383 _values!688) (bvsge (size!25064 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74662 d!108859))

(declare-fun b!879550 () Bool)

(declare-fun e!489507 () Bool)

(declare-fun e!489508 () Bool)

(assert (=> b!879550 (= e!489507 e!489508)))

(declare-fun lt!397684 () (_ BitVec 64))

(assert (=> b!879550 (= lt!397684 (select (arr!24622 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!397683 () Unit!29992)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51202 (_ BitVec 64) (_ BitVec 32)) Unit!29992)

(assert (=> b!879550 (= lt!397683 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!397684 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!51202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!879550 (arrayContainsKey!0 _keys!868 lt!397684 #b00000000000000000000000000000000)))

(declare-fun lt!397682 () Unit!29992)

(assert (=> b!879550 (= lt!397682 lt!397683)))

(declare-fun res!597665 () Bool)

(declare-datatypes ((SeekEntryResult!8744 0))(
  ( (MissingZero!8744 (index!37346 (_ BitVec 32))) (Found!8744 (index!37347 (_ BitVec 32))) (Intermediate!8744 (undefined!9556 Bool) (index!37348 (_ BitVec 32)) (x!74494 (_ BitVec 32))) (Undefined!8744) (MissingVacant!8744 (index!37349 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51202 (_ BitVec 32)) SeekEntryResult!8744)

(assert (=> b!879550 (= res!597665 (= (seekEntryOrOpen!0 (select (arr!24622 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8744 #b00000000000000000000000000000000)))))

(assert (=> b!879550 (=> (not res!597665) (not e!489508))))

(declare-fun bm!38876 () Bool)

(declare-fun call!38879 () Bool)

(assert (=> bm!38876 (= call!38879 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!879551 () Bool)

(declare-fun e!489509 () Bool)

(assert (=> b!879551 (= e!489509 e!489507)))

(declare-fun c!92759 () Bool)

(assert (=> b!879551 (= c!92759 (validKeyInArray!0 (select (arr!24622 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!879552 () Bool)

(assert (=> b!879552 (= e!489507 call!38879)))

(declare-fun d!108861 () Bool)

(declare-fun res!597666 () Bool)

(assert (=> d!108861 (=> res!597666 e!489509)))

(assert (=> d!108861 (= res!597666 (bvsge #b00000000000000000000000000000000 (size!25063 _keys!868)))))

(assert (=> d!108861 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!489509)))

(declare-fun b!879553 () Bool)

(assert (=> b!879553 (= e!489508 call!38879)))

(assert (= (and d!108861 (not res!597666)) b!879551))

(assert (= (and b!879551 c!92759) b!879550))

(assert (= (and b!879551 (not c!92759)) b!879552))

(assert (= (and b!879550 res!597665) b!879553))

(assert (= (or b!879553 b!879552) bm!38876))

(declare-fun m!819411 () Bool)

(assert (=> b!879550 m!819411))

(declare-fun m!819413 () Bool)

(assert (=> b!879550 m!819413))

(declare-fun m!819415 () Bool)

(assert (=> b!879550 m!819415))

(assert (=> b!879550 m!819411))

(declare-fun m!819417 () Bool)

(assert (=> b!879550 m!819417))

(declare-fun m!819419 () Bool)

(assert (=> bm!38876 m!819419))

(assert (=> b!879551 m!819411))

(assert (=> b!879551 m!819411))

(declare-fun m!819421 () Bool)

(assert (=> b!879551 m!819421))

(assert (=> b!879439 d!108861))

(declare-fun d!108863 () Bool)

(declare-fun res!597673 () Bool)

(declare-fun e!489521 () Bool)

(assert (=> d!108863 (=> res!597673 e!489521)))

(assert (=> d!108863 (= res!597673 (bvsge #b00000000000000000000000000000000 (size!25063 _keys!868)))))

(assert (=> d!108863 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17562) e!489521)))

(declare-fun b!879564 () Bool)

(declare-fun e!489518 () Bool)

(declare-fun contains!4251 (List!17565 (_ BitVec 64)) Bool)

(assert (=> b!879564 (= e!489518 (contains!4251 Nil!17562 (select (arr!24622 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!879565 () Bool)

(declare-fun e!489519 () Bool)

(assert (=> b!879565 (= e!489521 e!489519)))

(declare-fun res!597675 () Bool)

(assert (=> b!879565 (=> (not res!597675) (not e!489519))))

(assert (=> b!879565 (= res!597675 (not e!489518))))

(declare-fun res!597674 () Bool)

(assert (=> b!879565 (=> (not res!597674) (not e!489518))))

(assert (=> b!879565 (= res!597674 (validKeyInArray!0 (select (arr!24622 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!879566 () Bool)

(declare-fun e!489520 () Bool)

(declare-fun call!38882 () Bool)

(assert (=> b!879566 (= e!489520 call!38882)))

(declare-fun b!879567 () Bool)

(assert (=> b!879567 (= e!489520 call!38882)))

(declare-fun bm!38879 () Bool)

(declare-fun c!92762 () Bool)

(assert (=> bm!38879 (= call!38882 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92762 (Cons!17561 (select (arr!24622 _keys!868) #b00000000000000000000000000000000) Nil!17562) Nil!17562)))))

(declare-fun b!879568 () Bool)

(assert (=> b!879568 (= e!489519 e!489520)))

(assert (=> b!879568 (= c!92762 (validKeyInArray!0 (select (arr!24622 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108863 (not res!597673)) b!879565))

(assert (= (and b!879565 res!597674) b!879564))

(assert (= (and b!879565 res!597675) b!879568))

(assert (= (and b!879568 c!92762) b!879566))

(assert (= (and b!879568 (not c!92762)) b!879567))

(assert (= (or b!879566 b!879567) bm!38879))

(assert (=> b!879564 m!819411))

(assert (=> b!879564 m!819411))

(declare-fun m!819423 () Bool)

(assert (=> b!879564 m!819423))

(assert (=> b!879565 m!819411))

(assert (=> b!879565 m!819411))

(assert (=> b!879565 m!819421))

(assert (=> bm!38879 m!819411))

(declare-fun m!819425 () Bool)

(assert (=> bm!38879 m!819425))

(assert (=> b!879568 m!819411))

(assert (=> b!879568 m!819411))

(assert (=> b!879568 m!819421))

(assert (=> b!879449 d!108863))

(declare-fun d!108865 () Bool)

(assert (=> d!108865 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!879444 d!108865))

(declare-fun d!108867 () Bool)

(declare-fun e!489524 () Bool)

(assert (=> d!108867 e!489524))

(declare-fun res!597681 () Bool)

(assert (=> d!108867 (=> (not res!597681) (not e!489524))))

(declare-fun lt!397696 () ListLongMap!10471)

(assert (=> d!108867 (= res!597681 (contains!4250 lt!397696 (_1!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!397695 () List!17564)

(assert (=> d!108867 (= lt!397696 (ListLongMap!10472 lt!397695))))

(declare-fun lt!397694 () Unit!29992)

(declare-fun lt!397693 () Unit!29992)

(assert (=> d!108867 (= lt!397694 lt!397693)))

(declare-datatypes ((Option!426 0))(
  ( (Some!425 (v!11266 V!28443)) (None!424) )
))
(declare-fun getValueByKey!420 (List!17564 (_ BitVec 64)) Option!426)

(assert (=> d!108867 (= (getValueByKey!420 lt!397695 (_1!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!425 (_2!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!236 (List!17564 (_ BitVec 64) V!28443) Unit!29992)

(assert (=> d!108867 (= lt!397693 (lemmaContainsTupThenGetReturnValue!236 lt!397695 (_1!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!274 (List!17564 (_ BitVec 64) V!28443) List!17564)

(assert (=> d!108867 (= lt!397695 (insertStrictlySorted!274 (toList!5251 lt!397624) (_1!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108867 (= (+!2457 lt!397624 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!397696)))

(declare-fun b!879573 () Bool)

(declare-fun res!597680 () Bool)

(assert (=> b!879573 (=> (not res!597680) (not e!489524))))

(assert (=> b!879573 (= res!597680 (= (getValueByKey!420 (toList!5251 lt!397696) (_1!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!425 (_2!5854 (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!879574 () Bool)

(declare-fun contains!4252 (List!17564 tuple2!11688) Bool)

(assert (=> b!879574 (= e!489524 (contains!4252 (toList!5251 lt!397696) (tuple2!11689 (select (arr!24622 _keys!868) from!1053) (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108867 res!597681) b!879573))

(assert (= (and b!879573 res!597680) b!879574))

(declare-fun m!819427 () Bool)

(assert (=> d!108867 m!819427))

(declare-fun m!819429 () Bool)

(assert (=> d!108867 m!819429))

(declare-fun m!819431 () Bool)

(assert (=> d!108867 m!819431))

(declare-fun m!819433 () Bool)

(assert (=> d!108867 m!819433))

(declare-fun m!819435 () Bool)

(assert (=> b!879573 m!819435))

(declare-fun m!819437 () Bool)

(assert (=> b!879574 m!819437))

(assert (=> b!879450 d!108867))

(declare-fun d!108869 () Bool)

(declare-fun c!92765 () Bool)

(assert (=> d!108869 (= c!92765 ((_ is ValueCellFull!8334) (select (arr!24623 _values!688) from!1053)))))

(declare-fun e!489527 () V!28443)

(assert (=> d!108869 (= (get!12955 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!489527)))

(declare-fun b!879579 () Bool)

(declare-fun get!12957 (ValueCell!8334 V!28443) V!28443)

(assert (=> b!879579 (= e!489527 (get!12957 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!879580 () Bool)

(declare-fun get!12958 (ValueCell!8334 V!28443) V!28443)

(assert (=> b!879580 (= e!489527 (get!12958 (select (arr!24623 _values!688) from!1053) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108869 c!92765) b!879579))

(assert (= (and d!108869 (not c!92765)) b!879580))

(assert (=> b!879579 m!819293))

(assert (=> b!879579 m!819295))

(declare-fun m!819439 () Bool)

(assert (=> b!879579 m!819439))

(assert (=> b!879580 m!819293))

(assert (=> b!879580 m!819295))

(declare-fun m!819441 () Bool)

(assert (=> b!879580 m!819441))

(assert (=> b!879450 d!108869))

(declare-fun b!879581 () Bool)

(declare-fun e!489534 () Bool)

(declare-fun e!489528 () Bool)

(assert (=> b!879581 (= e!489534 e!489528)))

(declare-fun c!92769 () Bool)

(assert (=> b!879581 (= c!92769 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(declare-fun b!879582 () Bool)

(declare-fun e!489529 () Bool)

(assert (=> b!879582 (= e!489534 e!489529)))

(assert (=> b!879582 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(declare-fun res!597683 () Bool)

(declare-fun lt!397701 () ListLongMap!10471)

(assert (=> b!879582 (= res!597683 (contains!4250 lt!397701 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879582 (=> (not res!597683) (not e!489529))))

(declare-fun d!108871 () Bool)

(declare-fun e!489531 () Bool)

(assert (=> d!108871 e!489531))

(declare-fun res!597684 () Bool)

(assert (=> d!108871 (=> (not res!597684) (not e!489531))))

(assert (=> d!108871 (= res!597684 (not (contains!4250 lt!397701 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489533 () ListLongMap!10471)

(assert (=> d!108871 (= lt!397701 e!489533)))

(declare-fun c!92768 () Bool)

(assert (=> d!108871 (= c!92768 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(assert (=> d!108871 (validMask!0 mask!1196)))

(assert (=> d!108871 (= (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!397701)))

(declare-fun b!879583 () Bool)

(assert (=> b!879583 (= e!489533 (ListLongMap!10472 Nil!17561))))

(declare-fun b!879584 () Bool)

(assert (=> b!879584 (= e!489528 (= lt!397701 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879585 () Bool)

(assert (=> b!879585 (= e!489528 (isEmpty!671 lt!397701))))

(declare-fun call!38883 () ListLongMap!10471)

(declare-fun bm!38880 () Bool)

(assert (=> bm!38880 (= call!38883 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879586 () Bool)

(declare-fun e!489530 () Bool)

(assert (=> b!879586 (= e!489530 (validKeyInArray!0 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879586 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!879587 () Bool)

(assert (=> b!879587 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(assert (=> b!879587 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25064 _values!688)))))

(assert (=> b!879587 (= e!489529 (= (apply!379 lt!397701 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12955 (select (arr!24623 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879588 () Bool)

(declare-fun e!489532 () ListLongMap!10471)

(assert (=> b!879588 (= e!489533 e!489532)))

(declare-fun c!92766 () Bool)

(assert (=> b!879588 (= c!92766 (validKeyInArray!0 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!879589 () Bool)

(assert (=> b!879589 (= e!489531 e!489534)))

(declare-fun c!92767 () Bool)

(assert (=> b!879589 (= c!92767 e!489530)))

(declare-fun res!597682 () Bool)

(assert (=> b!879589 (=> (not res!597682) (not e!489530))))

(assert (=> b!879589 (= res!597682 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(declare-fun b!879590 () Bool)

(declare-fun lt!397698 () Unit!29992)

(declare-fun lt!397700 () Unit!29992)

(assert (=> b!879590 (= lt!397698 lt!397700)))

(declare-fun lt!397697 () ListLongMap!10471)

(declare-fun lt!397699 () (_ BitVec 64))

(declare-fun lt!397703 () V!28443)

(declare-fun lt!397702 () (_ BitVec 64))

(assert (=> b!879590 (not (contains!4250 (+!2457 lt!397697 (tuple2!11689 lt!397699 lt!397703)) lt!397702))))

(assert (=> b!879590 (= lt!397700 (addStillNotContains!206 lt!397697 lt!397699 lt!397703 lt!397702))))

(assert (=> b!879590 (= lt!397702 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879590 (= lt!397703 (get!12955 (select (arr!24623 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879590 (= lt!397699 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!879590 (= lt!397697 call!38883)))

(assert (=> b!879590 (= e!489532 (+!2457 call!38883 (tuple2!11689 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12955 (select (arr!24623 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879591 () Bool)

(assert (=> b!879591 (= e!489532 call!38883)))

(declare-fun b!879592 () Bool)

(declare-fun res!597685 () Bool)

(assert (=> b!879592 (=> (not res!597685) (not e!489531))))

(assert (=> b!879592 (= res!597685 (not (contains!4250 lt!397701 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108871 c!92768) b!879583))

(assert (= (and d!108871 (not c!92768)) b!879588))

(assert (= (and b!879588 c!92766) b!879590))

(assert (= (and b!879588 (not c!92766)) b!879591))

(assert (= (or b!879590 b!879591) bm!38880))

(assert (= (and d!108871 res!597684) b!879592))

(assert (= (and b!879592 res!597685) b!879589))

(assert (= (and b!879589 res!597682) b!879586))

(assert (= (and b!879589 c!92767) b!879582))

(assert (= (and b!879589 (not c!92767)) b!879581))

(assert (= (and b!879582 res!597683) b!879587))

(assert (= (and b!879581 c!92769) b!879584))

(assert (= (and b!879581 (not c!92769)) b!879585))

(declare-fun b_lambda!12421 () Bool)

(assert (=> (not b_lambda!12421) (not b!879587)))

(assert (=> b!879587 t!24676))

(declare-fun b_and!25243 () Bool)

(assert (= b_and!25241 (and (=> t!24676 result!9553) b_and!25243)))

(declare-fun b_lambda!12423 () Bool)

(assert (=> (not b_lambda!12423) (not b!879590)))

(assert (=> b!879590 t!24676))

(declare-fun b_and!25245 () Bool)

(assert (= b_and!25243 (and (=> t!24676 result!9553) b_and!25245)))

(declare-fun m!819443 () Bool)

(assert (=> b!879586 m!819443))

(assert (=> b!879586 m!819443))

(declare-fun m!819445 () Bool)

(assert (=> b!879586 m!819445))

(assert (=> b!879588 m!819443))

(assert (=> b!879588 m!819443))

(assert (=> b!879588 m!819445))

(declare-fun m!819447 () Bool)

(assert (=> b!879592 m!819447))

(declare-fun m!819449 () Bool)

(assert (=> b!879590 m!819449))

(assert (=> b!879590 m!819295))

(declare-fun m!819451 () Bool)

(assert (=> b!879590 m!819451))

(declare-fun m!819453 () Bool)

(assert (=> b!879590 m!819453))

(declare-fun m!819455 () Bool)

(assert (=> b!879590 m!819455))

(assert (=> b!879590 m!819443))

(assert (=> b!879590 m!819295))

(assert (=> b!879590 m!819453))

(declare-fun m!819457 () Bool)

(assert (=> b!879590 m!819457))

(assert (=> b!879590 m!819449))

(declare-fun m!819459 () Bool)

(assert (=> b!879590 m!819459))

(declare-fun m!819461 () Bool)

(assert (=> d!108871 m!819461))

(assert (=> d!108871 m!819323))

(declare-fun m!819463 () Bool)

(assert (=> b!879585 m!819463))

(declare-fun m!819465 () Bool)

(assert (=> b!879584 m!819465))

(assert (=> bm!38880 m!819465))

(assert (=> b!879582 m!819443))

(assert (=> b!879582 m!819443))

(declare-fun m!819467 () Bool)

(assert (=> b!879582 m!819467))

(assert (=> b!879587 m!819449))

(assert (=> b!879587 m!819295))

(assert (=> b!879587 m!819451))

(assert (=> b!879587 m!819443))

(assert (=> b!879587 m!819295))

(assert (=> b!879587 m!819449))

(assert (=> b!879587 m!819443))

(declare-fun m!819469 () Bool)

(assert (=> b!879587 m!819469))

(assert (=> b!879445 d!108871))

(declare-fun d!108873 () Bool)

(assert (=> d!108873 (= (validKeyInArray!0 (select (arr!24622 _keys!868) from!1053)) (and (not (= (select (arr!24622 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24622 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!879445 d!108873))

(declare-fun d!108875 () Bool)

(declare-fun e!489535 () Bool)

(assert (=> d!108875 e!489535))

(declare-fun res!597687 () Bool)

(assert (=> d!108875 (=> (not res!597687) (not e!489535))))

(declare-fun lt!397707 () ListLongMap!10471)

(assert (=> d!108875 (= res!597687 (contains!4250 lt!397707 (_1!5854 (tuple2!11689 k0!854 v!557))))))

(declare-fun lt!397706 () List!17564)

(assert (=> d!108875 (= lt!397707 (ListLongMap!10472 lt!397706))))

(declare-fun lt!397705 () Unit!29992)

(declare-fun lt!397704 () Unit!29992)

(assert (=> d!108875 (= lt!397705 lt!397704)))

(assert (=> d!108875 (= (getValueByKey!420 lt!397706 (_1!5854 (tuple2!11689 k0!854 v!557))) (Some!425 (_2!5854 (tuple2!11689 k0!854 v!557))))))

(assert (=> d!108875 (= lt!397704 (lemmaContainsTupThenGetReturnValue!236 lt!397706 (_1!5854 (tuple2!11689 k0!854 v!557)) (_2!5854 (tuple2!11689 k0!854 v!557))))))

(assert (=> d!108875 (= lt!397706 (insertStrictlySorted!274 (toList!5251 lt!397622) (_1!5854 (tuple2!11689 k0!854 v!557)) (_2!5854 (tuple2!11689 k0!854 v!557))))))

(assert (=> d!108875 (= (+!2457 lt!397622 (tuple2!11689 k0!854 v!557)) lt!397707)))

(declare-fun b!879593 () Bool)

(declare-fun res!597686 () Bool)

(assert (=> b!879593 (=> (not res!597686) (not e!489535))))

(assert (=> b!879593 (= res!597686 (= (getValueByKey!420 (toList!5251 lt!397707) (_1!5854 (tuple2!11689 k0!854 v!557))) (Some!425 (_2!5854 (tuple2!11689 k0!854 v!557)))))))

(declare-fun b!879594 () Bool)

(assert (=> b!879594 (= e!489535 (contains!4252 (toList!5251 lt!397707) (tuple2!11689 k0!854 v!557)))))

(assert (= (and d!108875 res!597687) b!879593))

(assert (= (and b!879593 res!597686) b!879594))

(declare-fun m!819471 () Bool)

(assert (=> d!108875 m!819471))

(declare-fun m!819473 () Bool)

(assert (=> d!108875 m!819473))

(declare-fun m!819475 () Bool)

(assert (=> d!108875 m!819475))

(declare-fun m!819477 () Bool)

(assert (=> d!108875 m!819477))

(declare-fun m!819479 () Bool)

(assert (=> b!879593 m!819479))

(declare-fun m!819481 () Bool)

(assert (=> b!879594 m!819481))

(assert (=> b!879445 d!108875))

(declare-fun d!108877 () Bool)

(declare-fun e!489541 () Bool)

(assert (=> d!108877 e!489541))

(declare-fun res!597690 () Bool)

(assert (=> d!108877 (=> (not res!597690) (not e!489541))))

(assert (=> d!108877 (= res!597690 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25064 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25064 _values!688))))))))

(declare-fun lt!397710 () Unit!29992)

(declare-fun choose!1443 (array!51202 array!51204 (_ BitVec 32) (_ BitVec 32) V!28443 V!28443 (_ BitVec 32) (_ BitVec 64) V!28443 (_ BitVec 32) Int) Unit!29992)

(assert (=> d!108877 (= lt!397710 (choose!1443 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108877 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(assert (=> d!108877 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!688 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!397710)))

(declare-fun call!38889 () ListLongMap!10471)

(declare-fun bm!38885 () Bool)

(assert (=> bm!38885 (= call!38889 (getCurrentListMapNoExtraKeys!3212 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38888 () ListLongMap!10471)

(declare-fun b!879601 () Bool)

(declare-fun e!489540 () Bool)

(assert (=> b!879601 (= e!489540 (= call!38888 (+!2457 call!38889 (tuple2!11689 k0!854 v!557))))))

(declare-fun b!879602 () Bool)

(assert (=> b!879602 (= e!489541 e!489540)))

(declare-fun c!92772 () Bool)

(assert (=> b!879602 (= c!92772 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38886 () Bool)

(assert (=> bm!38886 (= call!38888 (getCurrentListMapNoExtraKeys!3212 _keys!868 (array!51205 (store (arr!24623 _values!688) i!612 (ValueCellFull!8334 v!557)) (size!25064 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879603 () Bool)

(assert (=> b!879603 (= e!489540 (= call!38888 call!38889))))

(assert (= (and d!108877 res!597690) b!879602))

(assert (= (and b!879602 c!92772) b!879601))

(assert (= (and b!879602 (not c!92772)) b!879603))

(assert (= (or b!879601 b!879603) bm!38885))

(assert (= (or b!879601 b!879603) bm!38886))

(declare-fun m!819483 () Bool)

(assert (=> d!108877 m!819483))

(assert (=> bm!38885 m!819307))

(declare-fun m!819485 () Bool)

(assert (=> b!879601 m!819485))

(assert (=> bm!38886 m!819287))

(declare-fun m!819487 () Bool)

(assert (=> bm!38886 m!819487))

(assert (=> b!879445 d!108877))

(declare-fun b!879604 () Bool)

(declare-fun e!489548 () Bool)

(declare-fun e!489542 () Bool)

(assert (=> b!879604 (= e!489548 e!489542)))

(declare-fun c!92776 () Bool)

(assert (=> b!879604 (= c!92776 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(declare-fun b!879605 () Bool)

(declare-fun e!489543 () Bool)

(assert (=> b!879605 (= e!489548 e!489543)))

(assert (=> b!879605 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(declare-fun lt!397715 () ListLongMap!10471)

(declare-fun res!597692 () Bool)

(assert (=> b!879605 (= res!597692 (contains!4250 lt!397715 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879605 (=> (not res!597692) (not e!489543))))

(declare-fun d!108879 () Bool)

(declare-fun e!489545 () Bool)

(assert (=> d!108879 e!489545))

(declare-fun res!597693 () Bool)

(assert (=> d!108879 (=> (not res!597693) (not e!489545))))

(assert (=> d!108879 (= res!597693 (not (contains!4250 lt!397715 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489547 () ListLongMap!10471)

(assert (=> d!108879 (= lt!397715 e!489547)))

(declare-fun c!92775 () Bool)

(assert (=> d!108879 (= c!92775 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(assert (=> d!108879 (validMask!0 mask!1196)))

(assert (=> d!108879 (= (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!397715)))

(declare-fun b!879606 () Bool)

(assert (=> b!879606 (= e!489547 (ListLongMap!10472 Nil!17561))))

(declare-fun b!879607 () Bool)

(assert (=> b!879607 (= e!489542 (= lt!397715 (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879608 () Bool)

(assert (=> b!879608 (= e!489542 (isEmpty!671 lt!397715))))

(declare-fun bm!38887 () Bool)

(declare-fun call!38890 () ListLongMap!10471)

(assert (=> bm!38887 (= call!38890 (getCurrentListMapNoExtraKeys!3212 _keys!868 lt!397620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879609 () Bool)

(declare-fun e!489544 () Bool)

(assert (=> b!879609 (= e!489544 (validKeyInArray!0 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879609 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!879610 () Bool)

(assert (=> b!879610 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(assert (=> b!879610 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25064 lt!397620)))))

(assert (=> b!879610 (= e!489543 (= (apply!379 lt!397715 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12955 (select (arr!24623 lt!397620) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879611 () Bool)

(declare-fun e!489546 () ListLongMap!10471)

(assert (=> b!879611 (= e!489547 e!489546)))

(declare-fun c!92773 () Bool)

(assert (=> b!879611 (= c!92773 (validKeyInArray!0 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!879612 () Bool)

(assert (=> b!879612 (= e!489545 e!489548)))

(declare-fun c!92774 () Bool)

(assert (=> b!879612 (= c!92774 e!489544)))

(declare-fun res!597691 () Bool)

(assert (=> b!879612 (=> (not res!597691) (not e!489544))))

(assert (=> b!879612 (= res!597691 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25063 _keys!868)))))

(declare-fun b!879613 () Bool)

(declare-fun lt!397712 () Unit!29992)

(declare-fun lt!397714 () Unit!29992)

(assert (=> b!879613 (= lt!397712 lt!397714)))

(declare-fun lt!397717 () V!28443)

(declare-fun lt!397713 () (_ BitVec 64))

(declare-fun lt!397716 () (_ BitVec 64))

(declare-fun lt!397711 () ListLongMap!10471)

(assert (=> b!879613 (not (contains!4250 (+!2457 lt!397711 (tuple2!11689 lt!397713 lt!397717)) lt!397716))))

(assert (=> b!879613 (= lt!397714 (addStillNotContains!206 lt!397711 lt!397713 lt!397717 lt!397716))))

(assert (=> b!879613 (= lt!397716 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879613 (= lt!397717 (get!12955 (select (arr!24623 lt!397620) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879613 (= lt!397713 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!879613 (= lt!397711 call!38890)))

(assert (=> b!879613 (= e!489546 (+!2457 call!38890 (tuple2!11689 (select (arr!24622 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12955 (select (arr!24623 lt!397620) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1228 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879614 () Bool)

(assert (=> b!879614 (= e!489546 call!38890)))

(declare-fun b!879615 () Bool)

(declare-fun res!597694 () Bool)

(assert (=> b!879615 (=> (not res!597694) (not e!489545))))

(assert (=> b!879615 (= res!597694 (not (contains!4250 lt!397715 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108879 c!92775) b!879606))

(assert (= (and d!108879 (not c!92775)) b!879611))

(assert (= (and b!879611 c!92773) b!879613))

(assert (= (and b!879611 (not c!92773)) b!879614))

(assert (= (or b!879613 b!879614) bm!38887))

(assert (= (and d!108879 res!597693) b!879615))

(assert (= (and b!879615 res!597694) b!879612))

(assert (= (and b!879612 res!597691) b!879609))

(assert (= (and b!879612 c!92774) b!879605))

(assert (= (and b!879612 (not c!92774)) b!879604))

(assert (= (and b!879605 res!597692) b!879610))

(assert (= (and b!879604 c!92776) b!879607))

(assert (= (and b!879604 (not c!92776)) b!879608))

(declare-fun b_lambda!12425 () Bool)

(assert (=> (not b_lambda!12425) (not b!879610)))

(assert (=> b!879610 t!24676))

(declare-fun b_and!25247 () Bool)

(assert (= b_and!25245 (and (=> t!24676 result!9553) b_and!25247)))

(declare-fun b_lambda!12427 () Bool)

(assert (=> (not b_lambda!12427) (not b!879613)))

(assert (=> b!879613 t!24676))

(declare-fun b_and!25249 () Bool)

(assert (= b_and!25247 (and (=> t!24676 result!9553) b_and!25249)))

(assert (=> b!879609 m!819443))

(assert (=> b!879609 m!819443))

(assert (=> b!879609 m!819445))

(assert (=> b!879611 m!819443))

(assert (=> b!879611 m!819443))

(assert (=> b!879611 m!819445))

(declare-fun m!819489 () Bool)

(assert (=> b!879615 m!819489))

(declare-fun m!819491 () Bool)

(assert (=> b!879613 m!819491))

(assert (=> b!879613 m!819295))

(declare-fun m!819493 () Bool)

(assert (=> b!879613 m!819493))

(declare-fun m!819495 () Bool)

(assert (=> b!879613 m!819495))

(declare-fun m!819497 () Bool)

(assert (=> b!879613 m!819497))

(assert (=> b!879613 m!819443))

(assert (=> b!879613 m!819295))

(assert (=> b!879613 m!819495))

(declare-fun m!819499 () Bool)

(assert (=> b!879613 m!819499))

(assert (=> b!879613 m!819491))

(declare-fun m!819501 () Bool)

(assert (=> b!879613 m!819501))

(declare-fun m!819503 () Bool)

(assert (=> d!108879 m!819503))

(assert (=> d!108879 m!819323))

(declare-fun m!819505 () Bool)

(assert (=> b!879608 m!819505))

(declare-fun m!819507 () Bool)

(assert (=> b!879607 m!819507))

(assert (=> bm!38887 m!819507))

(assert (=> b!879605 m!819443))

(assert (=> b!879605 m!819443))

(declare-fun m!819509 () Bool)

(assert (=> b!879605 m!819509))

(assert (=> b!879610 m!819491))

(assert (=> b!879610 m!819295))

(assert (=> b!879610 m!819493))

(assert (=> b!879610 m!819443))

(assert (=> b!879610 m!819295))

(assert (=> b!879610 m!819491))

(assert (=> b!879610 m!819443))

(declare-fun m!819511 () Bool)

(assert (=> b!879610 m!819511))

(assert (=> b!879445 d!108879))

(declare-fun mapNonEmpty!27945 () Bool)

(declare-fun mapRes!27945 () Bool)

(declare-fun tp!53604 () Bool)

(declare-fun e!489554 () Bool)

(assert (=> mapNonEmpty!27945 (= mapRes!27945 (and tp!53604 e!489554))))

(declare-fun mapRest!27945 () (Array (_ BitVec 32) ValueCell!8334))

(declare-fun mapKey!27945 () (_ BitVec 32))

(declare-fun mapValue!27945 () ValueCell!8334)

(assert (=> mapNonEmpty!27945 (= mapRest!27939 (store mapRest!27945 mapKey!27945 mapValue!27945))))

(declare-fun b!879622 () Bool)

(assert (=> b!879622 (= e!489554 tp_is_empty!17547)))

(declare-fun condMapEmpty!27945 () Bool)

(declare-fun mapDefault!27945 () ValueCell!8334)

(assert (=> mapNonEmpty!27939 (= condMapEmpty!27945 (= mapRest!27939 ((as const (Array (_ BitVec 32) ValueCell!8334)) mapDefault!27945)))))

(declare-fun e!489553 () Bool)

(assert (=> mapNonEmpty!27939 (= tp!53595 (and e!489553 mapRes!27945))))

(declare-fun mapIsEmpty!27945 () Bool)

(assert (=> mapIsEmpty!27945 mapRes!27945))

(declare-fun b!879623 () Bool)

(assert (=> b!879623 (= e!489553 tp_is_empty!17547)))

(assert (= (and mapNonEmpty!27939 condMapEmpty!27945) mapIsEmpty!27945))

(assert (= (and mapNonEmpty!27939 (not condMapEmpty!27945)) mapNonEmpty!27945))

(assert (= (and mapNonEmpty!27945 ((_ is ValueCellFull!8334) mapValue!27945)) b!879622))

(assert (= (and mapNonEmpty!27939 ((_ is ValueCellFull!8334) mapDefault!27945)) b!879623))

(declare-fun m!819513 () Bool)

(assert (=> mapNonEmpty!27945 m!819513))

(declare-fun b_lambda!12429 () Bool)

(assert (= b_lambda!12417 (or (and start!74662 b_free!15303) b_lambda!12429)))

(declare-fun b_lambda!12431 () Bool)

(assert (= b_lambda!12427 (or (and start!74662 b_free!15303) b_lambda!12431)))

(declare-fun b_lambda!12433 () Bool)

(assert (= b_lambda!12419 (or (and start!74662 b_free!15303) b_lambda!12433)))

(declare-fun b_lambda!12435 () Bool)

(assert (= b_lambda!12413 (or (and start!74662 b_free!15303) b_lambda!12435)))

(declare-fun b_lambda!12437 () Bool)

(assert (= b_lambda!12415 (or (and start!74662 b_free!15303) b_lambda!12437)))

(declare-fun b_lambda!12439 () Bool)

(assert (= b_lambda!12425 (or (and start!74662 b_free!15303) b_lambda!12439)))

(declare-fun b_lambda!12441 () Bool)

(assert (= b_lambda!12423 (or (and start!74662 b_free!15303) b_lambda!12441)))

(declare-fun b_lambda!12443 () Bool)

(assert (= b_lambda!12421 (or (and start!74662 b_free!15303) b_lambda!12443)))

(check-sat (not b!879568) (not b_lambda!12411) (not b_lambda!12429) (not d!108877) b_and!25249 (not d!108879) (not bm!38886) (not mapNonEmpty!27945) (not b!879594) (not b!879550) (not b!879537) (not b!879593) (not b_lambda!12441) (not b!879590) (not b!879529) (not b!879585) (not b!879609) (not b!879610) (not b!879587) (not b!879605) (not b!879535) (not b!879582) (not b!879531) (not bm!38880) (not b!879613) (not b_lambda!12443) (not b!879592) (not b!879527) (not bm!38879) (not d!108871) (not d!108851) (not b!879580) (not b_lambda!12437) (not b!879539) (not b!879551) (not b!879579) (not b!879525) (not b!879588) (not b!879536) (not b!879522) tp_is_empty!17547 (not b_lambda!12433) (not bm!38876) (not b!879521) (not b!879519) (not b!879611) (not b!879534) (not b!879573) (not b!879574) (not d!108875) (not d!108853) (not d!108867) (not b_lambda!12439) (not bm!38885) (not b!879564) (not b!879586) (not b_lambda!12431) (not b!879607) (not b!879541) (not b_lambda!12435) (not b!879565) (not b!879524) (not b!879523) (not b!879615) (not b!879533) (not bm!38887) (not bm!38873) (not bm!38872) (not b_next!15303) (not b!879601) (not b!879608) (not b!879584))
(check-sat b_and!25249 (not b_next!15303))
