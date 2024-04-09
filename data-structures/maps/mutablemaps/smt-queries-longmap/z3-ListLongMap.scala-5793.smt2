; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74730 () Bool)

(assert start!74730)

(declare-fun b_free!15351 () Bool)

(declare-fun b_next!15351 () Bool)

(assert (=> start!74730 (= b_free!15351 (not b_next!15351))))

(declare-fun tp!53742 () Bool)

(declare-fun b_and!25339 () Bool)

(assert (=> start!74730 (= tp!53742 b_and!25339)))

(declare-fun b!880584 () Bool)

(declare-fun res!598414 () Bool)

(declare-fun e!490068 () Bool)

(assert (=> b!880584 (=> (not res!598414) (not e!490068))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880584 (= res!598414 (validMask!0 mask!1196))))

(declare-fun b!880585 () Bool)

(declare-fun e!490064 () Bool)

(declare-fun e!490069 () Bool)

(assert (=> b!880585 (= e!490064 (not e!490069))))

(declare-fun res!598415 () Bool)

(assert (=> b!880585 (=> res!598415 e!490069)))

(declare-datatypes ((array!51296 0))(
  ( (array!51297 (arr!24668 (Array (_ BitVec 32) (_ BitVec 64))) (size!25109 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51296)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880585 (= res!598415 (not (validKeyInArray!0 (select (arr!24668 _keys!868) from!1053))))))

(declare-datatypes ((V!28507 0))(
  ( (V!28508 (val!8845 Int)) )
))
(declare-datatypes ((tuple2!11732 0))(
  ( (tuple2!11733 (_1!5876 (_ BitVec 64)) (_2!5876 V!28507)) )
))
(declare-datatypes ((List!17603 0))(
  ( (Nil!17600) (Cons!17599 (h!18730 tuple2!11732) (t!24764 List!17603)) )
))
(declare-datatypes ((ListLongMap!10515 0))(
  ( (ListLongMap!10516 (toList!5273 List!17603)) )
))
(declare-fun lt!398233 () ListLongMap!10515)

(declare-fun lt!398230 () ListLongMap!10515)

(assert (=> b!880585 (= lt!398233 lt!398230)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun v!557 () V!28507)

(declare-fun lt!398227 () ListLongMap!10515)

(declare-fun +!2479 (ListLongMap!10515 tuple2!11732) ListLongMap!10515)

(assert (=> b!880585 (= lt!398230 (+!2479 lt!398227 (tuple2!11733 k0!854 v!557)))))

(declare-datatypes ((ValueCell!8358 0))(
  ( (ValueCellFull!8358 (v!11289 V!28507)) (EmptyCell!8358) )
))
(declare-datatypes ((array!51298 0))(
  ( (array!51299 (arr!24669 (Array (_ BitVec 32) ValueCell!8358)) (size!25110 (_ BitVec 32))) )
))
(declare-fun lt!398229 () array!51298)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28507)

(declare-fun zeroValue!654 () V!28507)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3233 (array!51296 array!51298 (_ BitVec 32) (_ BitVec 32) V!28507 V!28507 (_ BitVec 32) Int) ListLongMap!10515)

(assert (=> b!880585 (= lt!398233 (getCurrentListMapNoExtraKeys!3233 _keys!868 lt!398229 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51298)

(assert (=> b!880585 (= lt!398227 (getCurrentListMapNoExtraKeys!3233 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30034 0))(
  ( (Unit!30035) )
))
(declare-fun lt!398228 () Unit!30034)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!708 (array!51296 array!51298 (_ BitVec 32) (_ BitVec 32) V!28507 V!28507 (_ BitVec 32) (_ BitVec 64) V!28507 (_ BitVec 32) Int) Unit!30034)

(assert (=> b!880585 (= lt!398228 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!708 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880586 () Bool)

(declare-fun e!490066 () Bool)

(assert (=> b!880586 (= e!490066 true)))

(declare-datatypes ((List!17604 0))(
  ( (Nil!17601) (Cons!17600 (h!18731 (_ BitVec 64)) (t!24765 List!17604)) )
))
(declare-fun arrayNoDuplicates!0 (array!51296 (_ BitVec 32) List!17604) Bool)

(assert (=> b!880586 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17601)))

(declare-fun lt!398231 () Unit!30034)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51296 (_ BitVec 32) (_ BitVec 32)) Unit!30034)

(assert (=> b!880586 (= lt!398231 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880587 () Bool)

(declare-fun e!490070 () Bool)

(declare-fun tp_is_empty!17595 () Bool)

(assert (=> b!880587 (= e!490070 tp_is_empty!17595)))

(declare-fun b!880588 () Bool)

(assert (=> b!880588 (= e!490069 e!490066)))

(declare-fun res!598409 () Bool)

(assert (=> b!880588 (=> res!598409 e!490066)))

(assert (=> b!880588 (= res!598409 (not (= (select (arr!24668 _keys!868) from!1053) k0!854)))))

(declare-fun lt!398226 () ListLongMap!10515)

(declare-fun get!12989 (ValueCell!8358 V!28507) V!28507)

(declare-fun dynLambda!1244 (Int (_ BitVec 64)) V!28507)

(assert (=> b!880588 (= lt!398226 (+!2479 lt!398230 (tuple2!11733 (select (arr!24668 _keys!868) from!1053) (get!12989 (select (arr!24669 _values!688) from!1053) (dynLambda!1244 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880589 () Bool)

(declare-fun e!490063 () Bool)

(declare-fun mapRes!28014 () Bool)

(assert (=> b!880589 (= e!490063 (and e!490070 mapRes!28014))))

(declare-fun condMapEmpty!28014 () Bool)

(declare-fun mapDefault!28014 () ValueCell!8358)

(assert (=> b!880589 (= condMapEmpty!28014 (= (arr!24669 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8358)) mapDefault!28014)))))

(declare-fun b!880590 () Bool)

(declare-fun res!598411 () Bool)

(assert (=> b!880590 (=> (not res!598411) (not e!490068))))

(assert (=> b!880590 (= res!598411 (and (= (select (arr!24668 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!880591 () Bool)

(assert (=> b!880591 (= e!490068 e!490064)))

(declare-fun res!598416 () Bool)

(assert (=> b!880591 (=> (not res!598416) (not e!490064))))

(assert (=> b!880591 (= res!598416 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!880591 (= lt!398226 (getCurrentListMapNoExtraKeys!3233 _keys!868 lt!398229 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880591 (= lt!398229 (array!51299 (store (arr!24669 _values!688) i!612 (ValueCellFull!8358 v!557)) (size!25110 _values!688)))))

(declare-fun lt!398232 () ListLongMap!10515)

(assert (=> b!880591 (= lt!398232 (getCurrentListMapNoExtraKeys!3233 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880592 () Bool)

(declare-fun res!598407 () Bool)

(assert (=> b!880592 (=> (not res!598407) (not e!490068))))

(assert (=> b!880592 (= res!598407 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17601))))

(declare-fun b!880593 () Bool)

(declare-fun res!598408 () Bool)

(assert (=> b!880593 (=> (not res!598408) (not e!490068))))

(assert (=> b!880593 (= res!598408 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25109 _keys!868))))))

(declare-fun b!880594 () Bool)

(declare-fun res!598413 () Bool)

(assert (=> b!880594 (=> (not res!598413) (not e!490068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51296 (_ BitVec 32)) Bool)

(assert (=> b!880594 (= res!598413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880595 () Bool)

(declare-fun e!490067 () Bool)

(assert (=> b!880595 (= e!490067 tp_is_empty!17595)))

(declare-fun res!598412 () Bool)

(assert (=> start!74730 (=> (not res!598412) (not e!490068))))

(assert (=> start!74730 (= res!598412 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25109 _keys!868))))))

(assert (=> start!74730 e!490068))

(assert (=> start!74730 tp_is_empty!17595))

(assert (=> start!74730 true))

(assert (=> start!74730 tp!53742))

(declare-fun array_inv!19418 (array!51296) Bool)

(assert (=> start!74730 (array_inv!19418 _keys!868)))

(declare-fun array_inv!19419 (array!51298) Bool)

(assert (=> start!74730 (and (array_inv!19419 _values!688) e!490063)))

(declare-fun b!880596 () Bool)

(declare-fun res!598417 () Bool)

(assert (=> b!880596 (=> (not res!598417) (not e!490068))))

(assert (=> b!880596 (= res!598417 (and (= (size!25110 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25109 _keys!868) (size!25110 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880597 () Bool)

(declare-fun res!598410 () Bool)

(assert (=> b!880597 (=> (not res!598410) (not e!490068))))

(assert (=> b!880597 (= res!598410 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!28014 () Bool)

(declare-fun tp!53741 () Bool)

(assert (=> mapNonEmpty!28014 (= mapRes!28014 (and tp!53741 e!490067))))

(declare-fun mapValue!28014 () ValueCell!8358)

(declare-fun mapRest!28014 () (Array (_ BitVec 32) ValueCell!8358))

(declare-fun mapKey!28014 () (_ BitVec 32))

(assert (=> mapNonEmpty!28014 (= (arr!24669 _values!688) (store mapRest!28014 mapKey!28014 mapValue!28014))))

(declare-fun mapIsEmpty!28014 () Bool)

(assert (=> mapIsEmpty!28014 mapRes!28014))

(assert (= (and start!74730 res!598412) b!880584))

(assert (= (and b!880584 res!598414) b!880596))

(assert (= (and b!880596 res!598417) b!880594))

(assert (= (and b!880594 res!598413) b!880592))

(assert (= (and b!880592 res!598407) b!880593))

(assert (= (and b!880593 res!598408) b!880597))

(assert (= (and b!880597 res!598410) b!880590))

(assert (= (and b!880590 res!598411) b!880591))

(assert (= (and b!880591 res!598416) b!880585))

(assert (= (and b!880585 (not res!598415)) b!880588))

(assert (= (and b!880588 (not res!598409)) b!880586))

(assert (= (and b!880589 condMapEmpty!28014) mapIsEmpty!28014))

(assert (= (and b!880589 (not condMapEmpty!28014)) mapNonEmpty!28014))

(get-info :version)

(assert (= (and mapNonEmpty!28014 ((_ is ValueCellFull!8358) mapValue!28014)) b!880595))

(assert (= (and b!880589 ((_ is ValueCellFull!8358) mapDefault!28014)) b!880587))

(assert (= start!74730 b!880589))

(declare-fun b_lambda!12489 () Bool)

(assert (=> (not b_lambda!12489) (not b!880588)))

(declare-fun t!24763 () Bool)

(declare-fun tb!5017 () Bool)

(assert (=> (and start!74730 (= defaultEntry!696 defaultEntry!696) t!24763) tb!5017))

(declare-fun result!9651 () Bool)

(assert (=> tb!5017 (= result!9651 tp_is_empty!17595)))

(assert (=> b!880588 t!24763))

(declare-fun b_and!25341 () Bool)

(assert (= b_and!25339 (and (=> t!24763 result!9651) b_and!25341)))

(declare-fun m!820479 () Bool)

(assert (=> b!880586 m!820479))

(declare-fun m!820481 () Bool)

(assert (=> b!880586 m!820481))

(declare-fun m!820483 () Bool)

(assert (=> b!880591 m!820483))

(declare-fun m!820485 () Bool)

(assert (=> b!880591 m!820485))

(declare-fun m!820487 () Bool)

(assert (=> b!880591 m!820487))

(declare-fun m!820489 () Bool)

(assert (=> start!74730 m!820489))

(declare-fun m!820491 () Bool)

(assert (=> start!74730 m!820491))

(declare-fun m!820493 () Bool)

(assert (=> b!880597 m!820493))

(declare-fun m!820495 () Bool)

(assert (=> b!880590 m!820495))

(declare-fun m!820497 () Bool)

(assert (=> b!880594 m!820497))

(declare-fun m!820499 () Bool)

(assert (=> b!880584 m!820499))

(declare-fun m!820501 () Bool)

(assert (=> b!880585 m!820501))

(declare-fun m!820503 () Bool)

(assert (=> b!880585 m!820503))

(declare-fun m!820505 () Bool)

(assert (=> b!880585 m!820505))

(assert (=> b!880585 m!820503))

(declare-fun m!820507 () Bool)

(assert (=> b!880585 m!820507))

(declare-fun m!820509 () Bool)

(assert (=> b!880585 m!820509))

(declare-fun m!820511 () Bool)

(assert (=> b!880585 m!820511))

(declare-fun m!820513 () Bool)

(assert (=> b!880588 m!820513))

(declare-fun m!820515 () Bool)

(assert (=> b!880588 m!820515))

(declare-fun m!820517 () Bool)

(assert (=> b!880588 m!820517))

(declare-fun m!820519 () Bool)

(assert (=> b!880588 m!820519))

(assert (=> b!880588 m!820515))

(assert (=> b!880588 m!820503))

(assert (=> b!880588 m!820517))

(declare-fun m!820521 () Bool)

(assert (=> b!880592 m!820521))

(declare-fun m!820523 () Bool)

(assert (=> mapNonEmpty!28014 m!820523))

(check-sat (not mapNonEmpty!28014) (not b!880592) b_and!25341 (not b!880586) (not b!880591) (not b!880584) tp_is_empty!17595 (not b!880594) (not b!880588) (not b!880597) (not b_lambda!12489) (not start!74730) (not b_next!15351) (not b!880585))
(check-sat b_and!25341 (not b_next!15351))
