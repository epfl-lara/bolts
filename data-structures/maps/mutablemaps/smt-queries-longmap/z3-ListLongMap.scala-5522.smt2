; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72946 () Bool)

(assert start!72946)

(declare-fun b_free!13833 () Bool)

(declare-fun b_next!13833 () Bool)

(assert (=> start!72946 (= b_free!13833 (not b_next!13833))))

(declare-fun tp!49004 () Bool)

(declare-fun b_and!22937 () Bool)

(assert (=> start!72946 (= tp!49004 b_and!22937)))

(declare-fun b!846478 () Bool)

(declare-fun res!575222 () Bool)

(declare-fun e!472452 () Bool)

(assert (=> b!846478 (=> (not res!575222) (not e!472452))))

(declare-datatypes ((array!48136 0))(
  ( (array!48137 (arr!23095 (Array (_ BitVec 32) (_ BitVec 64))) (size!23536 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48136)

(declare-datatypes ((List!16421 0))(
  ( (Nil!16418) (Cons!16417 (h!17548 (_ BitVec 64)) (t!22800 List!16421)) )
))
(declare-fun arrayNoDuplicates!0 (array!48136 (_ BitVec 32) List!16421) Bool)

(assert (=> b!846478 (= res!575222 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16418))))

(declare-fun b!846479 () Bool)

(assert (=> b!846479 (= e!472452 false)))

(declare-datatypes ((V!26339 0))(
  ( (V!26340 (val!8032 Int)) )
))
(declare-datatypes ((tuple2!10510 0))(
  ( (tuple2!10511 (_1!5265 (_ BitVec 64)) (_2!5265 V!26339)) )
))
(declare-datatypes ((List!16422 0))(
  ( (Nil!16419) (Cons!16418 (h!17549 tuple2!10510) (t!22801 List!16422)) )
))
(declare-datatypes ((ListLongMap!9293 0))(
  ( (ListLongMap!9294 (toList!4662 List!16422)) )
))
(declare-fun lt!381516 () ListLongMap!9293)

(declare-fun v!557 () V!26339)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7545 0))(
  ( (ValueCellFull!7545 (v!10453 V!26339)) (EmptyCell!7545) )
))
(declare-datatypes ((array!48138 0))(
  ( (array!48139 (arr!23096 (Array (_ BitVec 32) ValueCell!7545)) (size!23537 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48138)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26339)

(declare-fun zeroValue!654 () V!26339)

(declare-fun getCurrentListMapNoExtraKeys!2651 (array!48136 array!48138 (_ BitVec 32) (_ BitVec 32) V!26339 V!26339 (_ BitVec 32) Int) ListLongMap!9293)

(assert (=> b!846479 (= lt!381516 (getCurrentListMapNoExtraKeys!2651 _keys!868 (array!48139 (store (arr!23096 _values!688) i!612 (ValueCellFull!7545 v!557)) (size!23537 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381515 () ListLongMap!9293)

(assert (=> b!846479 (= lt!381515 (getCurrentListMapNoExtraKeys!2651 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846481 () Bool)

(declare-fun e!472455 () Bool)

(declare-fun e!472453 () Bool)

(declare-fun mapRes!25553 () Bool)

(assert (=> b!846481 (= e!472455 (and e!472453 mapRes!25553))))

(declare-fun condMapEmpty!25553 () Bool)

(declare-fun mapDefault!25553 () ValueCell!7545)

(assert (=> b!846481 (= condMapEmpty!25553 (= (arr!23096 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7545)) mapDefault!25553)))))

(declare-fun b!846482 () Bool)

(declare-fun tp_is_empty!15969 () Bool)

(assert (=> b!846482 (= e!472453 tp_is_empty!15969)))

(declare-fun b!846483 () Bool)

(declare-fun res!575224 () Bool)

(assert (=> b!846483 (=> (not res!575224) (not e!472452))))

(assert (=> b!846483 (= res!575224 (and (= (size!23537 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23536 _keys!868) (size!23537 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846484 () Bool)

(declare-fun res!575225 () Bool)

(assert (=> b!846484 (=> (not res!575225) (not e!472452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48136 (_ BitVec 32)) Bool)

(assert (=> b!846484 (= res!575225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25553 () Bool)

(declare-fun tp!49003 () Bool)

(declare-fun e!472454 () Bool)

(assert (=> mapNonEmpty!25553 (= mapRes!25553 (and tp!49003 e!472454))))

(declare-fun mapValue!25553 () ValueCell!7545)

(declare-fun mapRest!25553 () (Array (_ BitVec 32) ValueCell!7545))

(declare-fun mapKey!25553 () (_ BitVec 32))

(assert (=> mapNonEmpty!25553 (= (arr!23096 _values!688) (store mapRest!25553 mapKey!25553 mapValue!25553))))

(declare-fun b!846485 () Bool)

(declare-fun res!575223 () Bool)

(assert (=> b!846485 (=> (not res!575223) (not e!472452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846485 (= res!575223 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25553 () Bool)

(assert (=> mapIsEmpty!25553 mapRes!25553))

(declare-fun b!846486 () Bool)

(assert (=> b!846486 (= e!472454 tp_is_empty!15969)))

(declare-fun res!575220 () Bool)

(assert (=> start!72946 (=> (not res!575220) (not e!472452))))

(assert (=> start!72946 (= res!575220 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23536 _keys!868))))))

(assert (=> start!72946 e!472452))

(assert (=> start!72946 tp_is_empty!15969))

(assert (=> start!72946 true))

(assert (=> start!72946 tp!49004))

(declare-fun array_inv!18328 (array!48136) Bool)

(assert (=> start!72946 (array_inv!18328 _keys!868)))

(declare-fun array_inv!18329 (array!48138) Bool)

(assert (=> start!72946 (and (array_inv!18329 _values!688) e!472455)))

(declare-fun b!846480 () Bool)

(declare-fun res!575219 () Bool)

(assert (=> b!846480 (=> (not res!575219) (not e!472452))))

(assert (=> b!846480 (= res!575219 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23536 _keys!868))))))

(declare-fun b!846487 () Bool)

(declare-fun res!575226 () Bool)

(assert (=> b!846487 (=> (not res!575226) (not e!472452))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846487 (= res!575226 (validKeyInArray!0 k0!854))))

(declare-fun b!846488 () Bool)

(declare-fun res!575221 () Bool)

(assert (=> b!846488 (=> (not res!575221) (not e!472452))))

(assert (=> b!846488 (= res!575221 (and (= (select (arr!23095 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!72946 res!575220) b!846485))

(assert (= (and b!846485 res!575223) b!846483))

(assert (= (and b!846483 res!575224) b!846484))

(assert (= (and b!846484 res!575225) b!846478))

(assert (= (and b!846478 res!575222) b!846480))

(assert (= (and b!846480 res!575219) b!846487))

(assert (= (and b!846487 res!575226) b!846488))

(assert (= (and b!846488 res!575221) b!846479))

(assert (= (and b!846481 condMapEmpty!25553) mapIsEmpty!25553))

(assert (= (and b!846481 (not condMapEmpty!25553)) mapNonEmpty!25553))

(get-info :version)

(assert (= (and mapNonEmpty!25553 ((_ is ValueCellFull!7545) mapValue!25553)) b!846486))

(assert (= (and b!846481 ((_ is ValueCellFull!7545) mapDefault!25553)) b!846482))

(assert (= start!72946 b!846481))

(declare-fun m!787923 () Bool)

(assert (=> b!846478 m!787923))

(declare-fun m!787925 () Bool)

(assert (=> mapNonEmpty!25553 m!787925))

(declare-fun m!787927 () Bool)

(assert (=> b!846484 m!787927))

(declare-fun m!787929 () Bool)

(assert (=> b!846487 m!787929))

(declare-fun m!787931 () Bool)

(assert (=> b!846479 m!787931))

(declare-fun m!787933 () Bool)

(assert (=> b!846479 m!787933))

(declare-fun m!787935 () Bool)

(assert (=> b!846479 m!787935))

(declare-fun m!787937 () Bool)

(assert (=> b!846485 m!787937))

(declare-fun m!787939 () Bool)

(assert (=> start!72946 m!787939))

(declare-fun m!787941 () Bool)

(assert (=> start!72946 m!787941))

(declare-fun m!787943 () Bool)

(assert (=> b!846488 m!787943))

(check-sat tp_is_empty!15969 (not b_next!13833) (not b!846479) b_and!22937 (not mapNonEmpty!25553) (not b!846478) (not b!846484) (not b!846485) (not start!72946) (not b!846487))
(check-sat b_and!22937 (not b_next!13833))
