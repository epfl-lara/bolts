; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74724 () Bool)

(assert start!74724)

(declare-fun b_free!15345 () Bool)

(declare-fun b_next!15345 () Bool)

(assert (=> start!74724 (= b_free!15345 (not b_next!15345))))

(declare-fun tp!53723 () Bool)

(declare-fun b_and!25327 () Bool)

(assert (=> start!74724 (= tp!53723 b_and!25327)))

(declare-fun b!880452 () Bool)

(declare-fun res!598314 () Bool)

(declare-fun e!489992 () Bool)

(assert (=> b!880452 (=> (not res!598314) (not e!489992))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51284 0))(
  ( (array!51285 (arr!24662 (Array (_ BitVec 32) (_ BitVec 64))) (size!25103 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51284)

(declare-datatypes ((V!28499 0))(
  ( (V!28500 (val!8842 Int)) )
))
(declare-datatypes ((ValueCell!8355 0))(
  ( (ValueCellFull!8355 (v!11286 V!28499)) (EmptyCell!8355) )
))
(declare-datatypes ((array!51286 0))(
  ( (array!51287 (arr!24663 (Array (_ BitVec 32) ValueCell!8355)) (size!25104 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51286)

(assert (=> b!880452 (= res!598314 (and (= (size!25104 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25103 _keys!868) (size!25104 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880453 () Bool)

(declare-fun e!489993 () Bool)

(declare-fun tp_is_empty!17589 () Bool)

(assert (=> b!880453 (= e!489993 tp_is_empty!17589)))

(declare-fun b!880454 () Bool)

(declare-fun e!489991 () Bool)

(declare-fun e!489997 () Bool)

(assert (=> b!880454 (= e!489991 (not e!489997))))

(declare-fun res!598312 () Bool)

(assert (=> b!880454 (=> res!598312 e!489997)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880454 (= res!598312 (not (validKeyInArray!0 (select (arr!24662 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11726 0))(
  ( (tuple2!11727 (_1!5873 (_ BitVec 64)) (_2!5873 V!28499)) )
))
(declare-datatypes ((List!17598 0))(
  ( (Nil!17595) (Cons!17594 (h!18725 tuple2!11726) (t!24753 List!17598)) )
))
(declare-datatypes ((ListLongMap!10509 0))(
  ( (ListLongMap!10510 (toList!5270 List!17598)) )
))
(declare-fun lt!398156 () ListLongMap!10509)

(declare-fun lt!398154 () ListLongMap!10509)

(assert (=> b!880454 (= lt!398156 lt!398154)))

(declare-fun lt!398158 () ListLongMap!10509)

(declare-fun v!557 () V!28499)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2476 (ListLongMap!10509 tuple2!11726) ListLongMap!10509)

(assert (=> b!880454 (= lt!398154 (+!2476 lt!398158 (tuple2!11727 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!398159 () array!51286)

(declare-fun minValue!654 () V!28499)

(declare-fun zeroValue!654 () V!28499)

(declare-fun getCurrentListMapNoExtraKeys!3230 (array!51284 array!51286 (_ BitVec 32) (_ BitVec 32) V!28499 V!28499 (_ BitVec 32) Int) ListLongMap!10509)

(assert (=> b!880454 (= lt!398156 (getCurrentListMapNoExtraKeys!3230 _keys!868 lt!398159 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880454 (= lt!398158 (getCurrentListMapNoExtraKeys!3230 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30028 0))(
  ( (Unit!30029) )
))
(declare-fun lt!398161 () Unit!30028)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!705 (array!51284 array!51286 (_ BitVec 32) (_ BitVec 32) V!28499 V!28499 (_ BitVec 32) (_ BitVec 64) V!28499 (_ BitVec 32) Int) Unit!30028)

(assert (=> b!880454 (= lt!398161 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!705 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!598316 () Bool)

(assert (=> start!74724 (=> (not res!598316) (not e!489992))))

(assert (=> start!74724 (= res!598316 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25103 _keys!868))))))

(assert (=> start!74724 e!489992))

(assert (=> start!74724 tp_is_empty!17589))

(assert (=> start!74724 true))

(assert (=> start!74724 tp!53723))

(declare-fun array_inv!19414 (array!51284) Bool)

(assert (=> start!74724 (array_inv!19414 _keys!868)))

(declare-fun e!489998 () Bool)

(declare-fun array_inv!19415 (array!51286) Bool)

(assert (=> start!74724 (and (array_inv!19415 _values!688) e!489998)))

(declare-fun b!880455 () Bool)

(declare-fun e!489995 () Bool)

(assert (=> b!880455 (= e!489995 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000))))

(declare-datatypes ((List!17599 0))(
  ( (Nil!17596) (Cons!17595 (h!18726 (_ BitVec 64)) (t!24754 List!17599)) )
))
(declare-fun arrayNoDuplicates!0 (array!51284 (_ BitVec 32) List!17599) Bool)

(assert (=> b!880455 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17596)))

(declare-fun lt!398157 () Unit!30028)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51284 (_ BitVec 32) (_ BitVec 32)) Unit!30028)

(assert (=> b!880455 (= lt!398157 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880456 () Bool)

(declare-fun res!598309 () Bool)

(assert (=> b!880456 (=> (not res!598309) (not e!489992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51284 (_ BitVec 32)) Bool)

(assert (=> b!880456 (= res!598309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880457 () Bool)

(declare-fun res!598313 () Bool)

(assert (=> b!880457 (=> (not res!598313) (not e!489992))))

(assert (=> b!880457 (= res!598313 (validKeyInArray!0 k0!854))))

(declare-fun b!880458 () Bool)

(declare-fun res!598308 () Bool)

(assert (=> b!880458 (=> (not res!598308) (not e!489992))))

(assert (=> b!880458 (= res!598308 (and (= (select (arr!24662 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!880459 () Bool)

(declare-fun res!598311 () Bool)

(assert (=> b!880459 (=> (not res!598311) (not e!489992))))

(assert (=> b!880459 (= res!598311 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17596))))

(declare-fun b!880460 () Bool)

(declare-fun e!489994 () Bool)

(assert (=> b!880460 (= e!489994 tp_is_empty!17589)))

(declare-fun b!880461 () Bool)

(declare-fun res!598318 () Bool)

(assert (=> b!880461 (=> (not res!598318) (not e!489992))))

(assert (=> b!880461 (= res!598318 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25103 _keys!868))))))

(declare-fun mapNonEmpty!28005 () Bool)

(declare-fun mapRes!28005 () Bool)

(declare-fun tp!53724 () Bool)

(assert (=> mapNonEmpty!28005 (= mapRes!28005 (and tp!53724 e!489993))))

(declare-fun mapRest!28005 () (Array (_ BitVec 32) ValueCell!8355))

(declare-fun mapValue!28005 () ValueCell!8355)

(declare-fun mapKey!28005 () (_ BitVec 32))

(assert (=> mapNonEmpty!28005 (= (arr!24663 _values!688) (store mapRest!28005 mapKey!28005 mapValue!28005))))

(declare-fun mapIsEmpty!28005 () Bool)

(assert (=> mapIsEmpty!28005 mapRes!28005))

(declare-fun b!880462 () Bool)

(declare-fun res!598310 () Bool)

(assert (=> b!880462 (=> (not res!598310) (not e!489992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880462 (= res!598310 (validMask!0 mask!1196))))

(declare-fun b!880463 () Bool)

(assert (=> b!880463 (= e!489998 (and e!489994 mapRes!28005))))

(declare-fun condMapEmpty!28005 () Bool)

(declare-fun mapDefault!28005 () ValueCell!8355)

(assert (=> b!880463 (= condMapEmpty!28005 (= (arr!24663 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8355)) mapDefault!28005)))))

(declare-fun b!880464 () Bool)

(assert (=> b!880464 (= e!489992 e!489991)))

(declare-fun res!598317 () Bool)

(assert (=> b!880464 (=> (not res!598317) (not e!489991))))

(assert (=> b!880464 (= res!598317 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398160 () ListLongMap!10509)

(assert (=> b!880464 (= lt!398160 (getCurrentListMapNoExtraKeys!3230 _keys!868 lt!398159 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880464 (= lt!398159 (array!51287 (store (arr!24663 _values!688) i!612 (ValueCellFull!8355 v!557)) (size!25104 _values!688)))))

(declare-fun lt!398155 () ListLongMap!10509)

(assert (=> b!880464 (= lt!398155 (getCurrentListMapNoExtraKeys!3230 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880465 () Bool)

(assert (=> b!880465 (= e!489997 e!489995)))

(declare-fun res!598315 () Bool)

(assert (=> b!880465 (=> res!598315 e!489995)))

(assert (=> b!880465 (= res!598315 (not (= (select (arr!24662 _keys!868) from!1053) k0!854)))))

(declare-fun get!12984 (ValueCell!8355 V!28499) V!28499)

(declare-fun dynLambda!1241 (Int (_ BitVec 64)) V!28499)

(assert (=> b!880465 (= lt!398160 (+!2476 lt!398154 (tuple2!11727 (select (arr!24662 _keys!868) from!1053) (get!12984 (select (arr!24663 _values!688) from!1053) (dynLambda!1241 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!74724 res!598316) b!880462))

(assert (= (and b!880462 res!598310) b!880452))

(assert (= (and b!880452 res!598314) b!880456))

(assert (= (and b!880456 res!598309) b!880459))

(assert (= (and b!880459 res!598311) b!880461))

(assert (= (and b!880461 res!598318) b!880457))

(assert (= (and b!880457 res!598313) b!880458))

(assert (= (and b!880458 res!598308) b!880464))

(assert (= (and b!880464 res!598317) b!880454))

(assert (= (and b!880454 (not res!598312)) b!880465))

(assert (= (and b!880465 (not res!598315)) b!880455))

(assert (= (and b!880463 condMapEmpty!28005) mapIsEmpty!28005))

(assert (= (and b!880463 (not condMapEmpty!28005)) mapNonEmpty!28005))

(get-info :version)

(assert (= (and mapNonEmpty!28005 ((_ is ValueCellFull!8355) mapValue!28005)) b!880453))

(assert (= (and b!880463 ((_ is ValueCellFull!8355) mapDefault!28005)) b!880460))

(assert (= start!74724 b!880463))

(declare-fun b_lambda!12483 () Bool)

(assert (=> (not b_lambda!12483) (not b!880465)))

(declare-fun t!24752 () Bool)

(declare-fun tb!5011 () Bool)

(assert (=> (and start!74724 (= defaultEntry!696 defaultEntry!696) t!24752) tb!5011))

(declare-fun result!9639 () Bool)

(assert (=> tb!5011 (= result!9639 tp_is_empty!17589)))

(assert (=> b!880465 t!24752))

(declare-fun b_and!25329 () Bool)

(assert (= b_and!25327 (and (=> t!24752 result!9639) b_and!25329)))

(declare-fun m!820341 () Bool)

(assert (=> b!880459 m!820341))

(declare-fun m!820343 () Bool)

(assert (=> b!880457 m!820343))

(declare-fun m!820345 () Bool)

(assert (=> b!880455 m!820345))

(declare-fun m!820347 () Bool)

(assert (=> b!880455 m!820347))

(declare-fun m!820349 () Bool)

(assert (=> b!880464 m!820349))

(declare-fun m!820351 () Bool)

(assert (=> b!880464 m!820351))

(declare-fun m!820353 () Bool)

(assert (=> b!880464 m!820353))

(declare-fun m!820355 () Bool)

(assert (=> start!74724 m!820355))

(declare-fun m!820357 () Bool)

(assert (=> start!74724 m!820357))

(declare-fun m!820359 () Bool)

(assert (=> mapNonEmpty!28005 m!820359))

(declare-fun m!820361 () Bool)

(assert (=> b!880456 m!820361))

(declare-fun m!820363 () Bool)

(assert (=> b!880454 m!820363))

(declare-fun m!820365 () Bool)

(assert (=> b!880454 m!820365))

(declare-fun m!820367 () Bool)

(assert (=> b!880454 m!820367))

(declare-fun m!820369 () Bool)

(assert (=> b!880454 m!820369))

(assert (=> b!880454 m!820367))

(declare-fun m!820371 () Bool)

(assert (=> b!880454 m!820371))

(declare-fun m!820373 () Bool)

(assert (=> b!880454 m!820373))

(declare-fun m!820375 () Bool)

(assert (=> b!880462 m!820375))

(declare-fun m!820377 () Bool)

(assert (=> b!880465 m!820377))

(declare-fun m!820379 () Bool)

(assert (=> b!880465 m!820379))

(declare-fun m!820381 () Bool)

(assert (=> b!880465 m!820381))

(declare-fun m!820383 () Bool)

(assert (=> b!880465 m!820383))

(assert (=> b!880465 m!820379))

(assert (=> b!880465 m!820367))

(assert (=> b!880465 m!820381))

(declare-fun m!820385 () Bool)

(assert (=> b!880458 m!820385))

(check-sat b_and!25329 tp_is_empty!17589 (not mapNonEmpty!28005) (not b_next!15345) (not b!880459) (not b!880465) (not b!880455) (not b!880457) (not b!880464) (not b!880454) (not b_lambda!12483) (not b!880456) (not start!74724) (not b!880462))
(check-sat b_and!25329 (not b_next!15345))
