; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72418 () Bool)

(assert start!72418)

(declare-fun b_free!13575 () Bool)

(declare-fun b_next!13575 () Bool)

(assert (=> start!72418 (= b_free!13575 (not b_next!13575))))

(declare-fun tp!47824 () Bool)

(declare-fun b_and!22679 () Bool)

(assert (=> start!72418 (= tp!47824 b_and!22679)))

(declare-fun b!838874 () Bool)

(declare-fun res!570503 () Bool)

(declare-fun e!468236 () Bool)

(assert (=> b!838874 (=> (not res!570503) (not e!468236))))

(declare-datatypes ((array!47134 0))(
  ( (array!47135 (arr!22594 (Array (_ BitVec 32) (_ BitVec 64))) (size!23035 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47134)

(declare-datatypes ((List!16133 0))(
  ( (Nil!16130) (Cons!16129 (h!17260 (_ BitVec 64)) (t!22512 List!16133)) )
))
(declare-fun arrayNoDuplicates!0 (array!47134 (_ BitVec 32) List!16133) Bool)

(assert (=> b!838874 (= res!570503 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16130))))

(declare-fun b!838875 () Bool)

(declare-fun e!468239 () Bool)

(declare-fun tp_is_empty!15441 () Bool)

(assert (=> b!838875 (= e!468239 tp_is_empty!15441)))

(declare-fun mapIsEmpty!24761 () Bool)

(declare-fun mapRes!24761 () Bool)

(assert (=> mapIsEmpty!24761 mapRes!24761))

(declare-fun b!838876 () Bool)

(declare-fun res!570509 () Bool)

(assert (=> b!838876 (=> (not res!570509) (not e!468236))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47134 (_ BitVec 32)) Bool)

(assert (=> b!838876 (= res!570509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838877 () Bool)

(declare-datatypes ((V!25635 0))(
  ( (V!25636 (val!7768 Int)) )
))
(declare-datatypes ((tuple2!10298 0))(
  ( (tuple2!10299 (_1!5159 (_ BitVec 64)) (_2!5159 V!25635)) )
))
(declare-datatypes ((List!16134 0))(
  ( (Nil!16131) (Cons!16130 (h!17261 tuple2!10298) (t!22513 List!16134)) )
))
(declare-datatypes ((ListLongMap!9081 0))(
  ( (ListLongMap!9082 (toList!4556 List!16134)) )
))
(declare-fun call!36959 () ListLongMap!9081)

(declare-fun v!557 () V!25635)

(declare-fun e!468237 () Bool)

(declare-fun call!36958 () ListLongMap!9081)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!1976 (ListLongMap!9081 tuple2!10298) ListLongMap!9081)

(assert (=> b!838877 (= e!468237 (= call!36958 (+!1976 call!36959 (tuple2!10299 k0!854 v!557))))))

(declare-fun mapNonEmpty!24761 () Bool)

(declare-fun tp!47825 () Bool)

(assert (=> mapNonEmpty!24761 (= mapRes!24761 (and tp!47825 e!468239))))

(declare-datatypes ((ValueCell!7281 0))(
  ( (ValueCellFull!7281 (v!10189 V!25635)) (EmptyCell!7281) )
))
(declare-fun mapValue!24761 () ValueCell!7281)

(declare-fun mapKey!24761 () (_ BitVec 32))

(declare-fun mapRest!24761 () (Array (_ BitVec 32) ValueCell!7281))

(declare-datatypes ((array!47136 0))(
  ( (array!47137 (arr!22595 (Array (_ BitVec 32) ValueCell!7281)) (size!23036 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47136)

(assert (=> mapNonEmpty!24761 (= (arr!22595 _values!688) (store mapRest!24761 mapKey!24761 mapValue!24761))))

(declare-fun b!838878 () Bool)

(declare-fun e!468240 () Bool)

(assert (=> b!838878 (= e!468240 tp_is_empty!15441)))

(declare-fun res!570508 () Bool)

(assert (=> start!72418 (=> (not res!570508) (not e!468236))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72418 (= res!570508 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23035 _keys!868))))))

(assert (=> start!72418 e!468236))

(assert (=> start!72418 tp_is_empty!15441))

(assert (=> start!72418 true))

(assert (=> start!72418 tp!47824))

(declare-fun array_inv!17974 (array!47134) Bool)

(assert (=> start!72418 (array_inv!17974 _keys!868)))

(declare-fun e!468238 () Bool)

(declare-fun array_inv!17975 (array!47136) Bool)

(assert (=> start!72418 (and (array_inv!17975 _values!688) e!468238)))

(declare-fun b!838879 () Bool)

(declare-fun res!570507 () Bool)

(assert (=> b!838879 (=> (not res!570507) (not e!468236))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838879 (= res!570507 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23035 _keys!868))))))

(declare-fun b!838880 () Bool)

(declare-fun res!570506 () Bool)

(assert (=> b!838880 (=> (not res!570506) (not e!468236))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!838880 (= res!570506 (and (= (size!23036 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23035 _keys!868) (size!23036 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838881 () Bool)

(assert (=> b!838881 (= e!468236 (not true))))

(assert (=> b!838881 e!468237))

(declare-fun c!91140 () Bool)

(assert (=> b!838881 (= c!91140 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28806 0))(
  ( (Unit!28807) )
))
(declare-fun lt!380673 () Unit!28806)

(declare-fun minValue!654 () V!25635)

(declare-fun zeroValue!654 () V!25635)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!252 (array!47134 array!47136 (_ BitVec 32) (_ BitVec 32) V!25635 V!25635 (_ BitVec 32) (_ BitVec 64) V!25635 (_ BitVec 32) Int) Unit!28806)

(assert (=> b!838881 (= lt!380673 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!252 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838882 () Bool)

(declare-fun res!570510 () Bool)

(assert (=> b!838882 (=> (not res!570510) (not e!468236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838882 (= res!570510 (validKeyInArray!0 k0!854))))

(declare-fun b!838883 () Bool)

(declare-fun res!570505 () Bool)

(assert (=> b!838883 (=> (not res!570505) (not e!468236))))

(assert (=> b!838883 (= res!570505 (and (= (select (arr!22594 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23035 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun bm!36955 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2551 (array!47134 array!47136 (_ BitVec 32) (_ BitVec 32) V!25635 V!25635 (_ BitVec 32) Int) ListLongMap!9081)

(assert (=> bm!36955 (= call!36958 (getCurrentListMapNoExtraKeys!2551 _keys!868 (array!47137 (store (arr!22595 _values!688) i!612 (ValueCellFull!7281 v!557)) (size!23036 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838884 () Bool)

(declare-fun res!570504 () Bool)

(assert (=> b!838884 (=> (not res!570504) (not e!468236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838884 (= res!570504 (validMask!0 mask!1196))))

(declare-fun b!838885 () Bool)

(assert (=> b!838885 (= e!468237 (= call!36958 call!36959))))

(declare-fun b!838886 () Bool)

(assert (=> b!838886 (= e!468238 (and e!468240 mapRes!24761))))

(declare-fun condMapEmpty!24761 () Bool)

(declare-fun mapDefault!24761 () ValueCell!7281)

(assert (=> b!838886 (= condMapEmpty!24761 (= (arr!22595 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7281)) mapDefault!24761)))))

(declare-fun bm!36956 () Bool)

(assert (=> bm!36956 (= call!36959 (getCurrentListMapNoExtraKeys!2551 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72418 res!570508) b!838884))

(assert (= (and b!838884 res!570504) b!838880))

(assert (= (and b!838880 res!570506) b!838876))

(assert (= (and b!838876 res!570509) b!838874))

(assert (= (and b!838874 res!570503) b!838879))

(assert (= (and b!838879 res!570507) b!838882))

(assert (= (and b!838882 res!570510) b!838883))

(assert (= (and b!838883 res!570505) b!838881))

(assert (= (and b!838881 c!91140) b!838877))

(assert (= (and b!838881 (not c!91140)) b!838885))

(assert (= (or b!838877 b!838885) bm!36955))

(assert (= (or b!838877 b!838885) bm!36956))

(assert (= (and b!838886 condMapEmpty!24761) mapIsEmpty!24761))

(assert (= (and b!838886 (not condMapEmpty!24761)) mapNonEmpty!24761))

(get-info :version)

(assert (= (and mapNonEmpty!24761 ((_ is ValueCellFull!7281) mapValue!24761)) b!838875))

(assert (= (and b!838886 ((_ is ValueCellFull!7281) mapDefault!24761)) b!838878))

(assert (= start!72418 b!838886))

(declare-fun m!783229 () Bool)

(assert (=> bm!36956 m!783229))

(declare-fun m!783231 () Bool)

(assert (=> b!838874 m!783231))

(declare-fun m!783233 () Bool)

(assert (=> b!838883 m!783233))

(declare-fun m!783235 () Bool)

(assert (=> b!838884 m!783235))

(declare-fun m!783237 () Bool)

(assert (=> b!838882 m!783237))

(declare-fun m!783239 () Bool)

(assert (=> b!838877 m!783239))

(declare-fun m!783241 () Bool)

(assert (=> b!838881 m!783241))

(declare-fun m!783243 () Bool)

(assert (=> bm!36955 m!783243))

(declare-fun m!783245 () Bool)

(assert (=> bm!36955 m!783245))

(declare-fun m!783247 () Bool)

(assert (=> start!72418 m!783247))

(declare-fun m!783249 () Bool)

(assert (=> start!72418 m!783249))

(declare-fun m!783251 () Bool)

(assert (=> mapNonEmpty!24761 m!783251))

(declare-fun m!783253 () Bool)

(assert (=> b!838876 m!783253))

(check-sat (not b!838876) (not bm!36956) (not bm!36955) (not start!72418) tp_is_empty!15441 b_and!22679 (not b_next!13575) (not b!838884) (not b!838877) (not mapNonEmpty!24761) (not b!838882) (not b!838874) (not b!838881))
(check-sat b_and!22679 (not b_next!13575))
