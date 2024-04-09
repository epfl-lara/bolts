; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72580 () Bool)

(assert start!72580)

(declare-fun b_free!13737 () Bool)

(declare-fun b_next!13737 () Bool)

(assert (=> start!72580 (= b_free!13737 (not b_next!13737))))

(declare-fun tp!48310 () Bool)

(declare-fun b_and!22841 () Bool)

(assert (=> start!72580 (= tp!48310 b_and!22841)))

(declare-fun b!842033 () Bool)

(declare-fun e!469696 () Bool)

(declare-fun tp_is_empty!15603 () Bool)

(assert (=> b!842033 (= e!469696 tp_is_empty!15603)))

(declare-fun res!572454 () Bool)

(declare-fun e!469697 () Bool)

(assert (=> start!72580 (=> (not res!572454) (not e!469697))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47448 0))(
  ( (array!47449 (arr!22751 (Array (_ BitVec 32) (_ BitVec 64))) (size!23192 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47448)

(assert (=> start!72580 (= res!572454 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23192 _keys!868))))))

(assert (=> start!72580 e!469697))

(assert (=> start!72580 tp_is_empty!15603))

(assert (=> start!72580 true))

(assert (=> start!72580 tp!48310))

(declare-fun array_inv!18086 (array!47448) Bool)

(assert (=> start!72580 (array_inv!18086 _keys!868)))

(declare-datatypes ((V!25851 0))(
  ( (V!25852 (val!7849 Int)) )
))
(declare-datatypes ((ValueCell!7362 0))(
  ( (ValueCellFull!7362 (v!10270 V!25851)) (EmptyCell!7362) )
))
(declare-datatypes ((array!47450 0))(
  ( (array!47451 (arr!22752 (Array (_ BitVec 32) ValueCell!7362)) (size!23193 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47450)

(declare-fun e!469698 () Bool)

(declare-fun array_inv!18087 (array!47450) Bool)

(assert (=> start!72580 (and (array_inv!18087 _values!688) e!469698)))

(declare-datatypes ((tuple2!10440 0))(
  ( (tuple2!10441 (_1!5230 (_ BitVec 64)) (_2!5230 V!25851)) )
))
(declare-datatypes ((List!16263 0))(
  ( (Nil!16260) (Cons!16259 (h!17390 tuple2!10440) (t!22642 List!16263)) )
))
(declare-datatypes ((ListLongMap!9223 0))(
  ( (ListLongMap!9224 (toList!4627 List!16263)) )
))
(declare-fun call!37444 () ListLongMap!9223)

(declare-fun v!557 () V!25851)

(declare-fun call!37445 () ListLongMap!9223)

(declare-fun b!842034 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun e!469693 () Bool)

(declare-fun +!2029 (ListLongMap!9223 tuple2!10440) ListLongMap!9223)

(assert (=> b!842034 (= e!469693 (= call!37445 (+!2029 call!37444 (tuple2!10441 k0!854 v!557))))))

(declare-fun mapNonEmpty!25004 () Bool)

(declare-fun mapRes!25004 () Bool)

(declare-fun tp!48311 () Bool)

(assert (=> mapNonEmpty!25004 (= mapRes!25004 (and tp!48311 e!469696))))

(declare-fun mapRest!25004 () (Array (_ BitVec 32) ValueCell!7362))

(declare-fun mapValue!25004 () ValueCell!7362)

(declare-fun mapKey!25004 () (_ BitVec 32))

(assert (=> mapNonEmpty!25004 (= (arr!22752 _values!688) (store mapRest!25004 mapKey!25004 mapValue!25004))))

(declare-fun b!842035 () Bool)

(declare-fun e!469695 () Bool)

(assert (=> b!842035 (= e!469698 (and e!469695 mapRes!25004))))

(declare-fun condMapEmpty!25004 () Bool)

(declare-fun mapDefault!25004 () ValueCell!7362)

(assert (=> b!842035 (= condMapEmpty!25004 (= (arr!22752 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7362)) mapDefault!25004)))))

(declare-fun b!842036 () Bool)

(assert (=> b!842036 (= e!469695 tp_is_empty!15603)))

(declare-fun b!842037 () Bool)

(declare-fun res!572449 () Bool)

(assert (=> b!842037 (=> (not res!572449) (not e!469697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!842037 (= res!572449 (validKeyInArray!0 k0!854))))

(declare-fun b!842038 () Bool)

(declare-fun res!572448 () Bool)

(assert (=> b!842038 (=> (not res!572448) (not e!469697))))

(declare-datatypes ((List!16264 0))(
  ( (Nil!16261) (Cons!16260 (h!17391 (_ BitVec 64)) (t!22643 List!16264)) )
))
(declare-fun arrayNoDuplicates!0 (array!47448 (_ BitVec 32) List!16264) Bool)

(assert (=> b!842038 (= res!572448 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16261))))

(declare-fun b!842039 () Bool)

(assert (=> b!842039 (= e!469697 (not true))))

(assert (=> b!842039 e!469693))

(declare-fun c!91383 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!842039 (= c!91383 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((Unit!28912 0))(
  ( (Unit!28913) )
))
(declare-fun lt!380916 () Unit!28912)

(declare-fun minValue!654 () V!25851)

(declare-fun zeroValue!654 () V!25851)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!305 (array!47448 array!47450 (_ BitVec 32) (_ BitVec 32) V!25851 V!25851 (_ BitVec 32) (_ BitVec 64) V!25851 (_ BitVec 32) Int) Unit!28912)

(assert (=> b!842039 (= lt!380916 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!305 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842040 () Bool)

(declare-fun res!572450 () Bool)

(assert (=> b!842040 (=> (not res!572450) (not e!469697))))

(assert (=> b!842040 (= res!572450 (and (= (select (arr!22751 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23192 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!25004 () Bool)

(assert (=> mapIsEmpty!25004 mapRes!25004))

(declare-fun bm!37441 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2616 (array!47448 array!47450 (_ BitVec 32) (_ BitVec 32) V!25851 V!25851 (_ BitVec 32) Int) ListLongMap!9223)

(assert (=> bm!37441 (= call!37445 (getCurrentListMapNoExtraKeys!2616 _keys!868 (array!47451 (store (arr!22752 _values!688) i!612 (ValueCellFull!7362 v!557)) (size!23193 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842041 () Bool)

(declare-fun res!572447 () Bool)

(assert (=> b!842041 (=> (not res!572447) (not e!469697))))

(assert (=> b!842041 (= res!572447 (and (= (size!23193 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23192 _keys!868) (size!23193 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842042 () Bool)

(declare-fun res!572452 () Bool)

(assert (=> b!842042 (=> (not res!572452) (not e!469697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47448 (_ BitVec 32)) Bool)

(assert (=> b!842042 (= res!572452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!37442 () Bool)

(assert (=> bm!37442 (= call!37444 (getCurrentListMapNoExtraKeys!2616 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842043 () Bool)

(assert (=> b!842043 (= e!469693 (= call!37445 call!37444))))

(declare-fun b!842044 () Bool)

(declare-fun res!572453 () Bool)

(assert (=> b!842044 (=> (not res!572453) (not e!469697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842044 (= res!572453 (validMask!0 mask!1196))))

(declare-fun b!842045 () Bool)

(declare-fun res!572451 () Bool)

(assert (=> b!842045 (=> (not res!572451) (not e!469697))))

(assert (=> b!842045 (= res!572451 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23192 _keys!868))))))

(assert (= (and start!72580 res!572454) b!842044))

(assert (= (and b!842044 res!572453) b!842041))

(assert (= (and b!842041 res!572447) b!842042))

(assert (= (and b!842042 res!572452) b!842038))

(assert (= (and b!842038 res!572448) b!842045))

(assert (= (and b!842045 res!572451) b!842037))

(assert (= (and b!842037 res!572449) b!842040))

(assert (= (and b!842040 res!572450) b!842039))

(assert (= (and b!842039 c!91383) b!842034))

(assert (= (and b!842039 (not c!91383)) b!842043))

(assert (= (or b!842034 b!842043) bm!37441))

(assert (= (or b!842034 b!842043) bm!37442))

(assert (= (and b!842035 condMapEmpty!25004) mapIsEmpty!25004))

(assert (= (and b!842035 (not condMapEmpty!25004)) mapNonEmpty!25004))

(get-info :version)

(assert (= (and mapNonEmpty!25004 ((_ is ValueCellFull!7362) mapValue!25004)) b!842033))

(assert (= (and b!842035 ((_ is ValueCellFull!7362) mapDefault!25004)) b!842036))

(assert (= start!72580 b!842035))

(declare-fun m!785335 () Bool)

(assert (=> b!842040 m!785335))

(declare-fun m!785337 () Bool)

(assert (=> mapNonEmpty!25004 m!785337))

(declare-fun m!785339 () Bool)

(assert (=> bm!37442 m!785339))

(declare-fun m!785341 () Bool)

(assert (=> b!842034 m!785341))

(declare-fun m!785343 () Bool)

(assert (=> b!842039 m!785343))

(declare-fun m!785345 () Bool)

(assert (=> b!842037 m!785345))

(declare-fun m!785347 () Bool)

(assert (=> bm!37441 m!785347))

(declare-fun m!785349 () Bool)

(assert (=> bm!37441 m!785349))

(declare-fun m!785351 () Bool)

(assert (=> b!842042 m!785351))

(declare-fun m!785353 () Bool)

(assert (=> b!842044 m!785353))

(declare-fun m!785355 () Bool)

(assert (=> start!72580 m!785355))

(declare-fun m!785357 () Bool)

(assert (=> start!72580 m!785357))

(declare-fun m!785359 () Bool)

(assert (=> b!842038 m!785359))

(check-sat (not bm!37442) (not b!842044) (not b_next!13737) (not b!842039) (not bm!37441) (not b!842037) (not b!842038) tp_is_empty!15603 (not b!842034) (not start!72580) (not mapNonEmpty!25004) b_and!22841 (not b!842042))
(check-sat b_and!22841 (not b_next!13737))
