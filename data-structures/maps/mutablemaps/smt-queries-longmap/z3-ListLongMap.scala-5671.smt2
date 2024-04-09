; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73840 () Bool)

(assert start!73840)

(declare-fun b_free!14727 () Bool)

(declare-fun b_next!14727 () Bool)

(assert (=> start!73840 (= b_free!14727 (not b_next!14727))))

(declare-fun tp!51686 () Bool)

(declare-fun b_and!24451 () Bool)

(assert (=> start!73840 (= tp!51686 b_and!24451)))

(declare-fun b!866276 () Bool)

(declare-fun res!588711 () Bool)

(declare-fun e!482590 () Bool)

(assert (=> b!866276 (=> (not res!588711) (not e!482590))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49868 0))(
  ( (array!49869 (arr!23961 (Array (_ BitVec 32) (_ BitVec 64))) (size!24402 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49868)

(declare-datatypes ((V!27531 0))(
  ( (V!27532 (val!8479 Int)) )
))
(declare-datatypes ((ValueCell!7992 0))(
  ( (ValueCellFull!7992 (v!10900 V!27531)) (EmptyCell!7992) )
))
(declare-datatypes ((array!49870 0))(
  ( (array!49871 (arr!23962 (Array (_ BitVec 32) ValueCell!7992)) (size!24403 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49870)

(assert (=> b!866276 (= res!588711 (and (= (size!24403 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24402 _keys!868) (size!24403 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866277 () Bool)

(declare-fun res!588709 () Bool)

(assert (=> b!866277 (=> (not res!588709) (not e!482590))))

(declare-datatypes ((List!17111 0))(
  ( (Nil!17108) (Cons!17107 (h!18238 (_ BitVec 64)) (t!24112 List!17111)) )
))
(declare-fun arrayNoDuplicates!0 (array!49868 (_ BitVec 32) List!17111) Bool)

(assert (=> b!866277 (= res!588709 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17108))))

(declare-fun b!866278 () Bool)

(declare-fun e!482595 () Bool)

(declare-fun e!482592 () Bool)

(declare-fun mapRes!26894 () Bool)

(assert (=> b!866278 (= e!482595 (and e!482592 mapRes!26894))))

(declare-fun condMapEmpty!26894 () Bool)

(declare-fun mapDefault!26894 () ValueCell!7992)

(assert (=> b!866278 (= condMapEmpty!26894 (= (arr!23962 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7992)) mapDefault!26894)))))

(declare-fun mapIsEmpty!26894 () Bool)

(assert (=> mapIsEmpty!26894 mapRes!26894))

(declare-fun mapNonEmpty!26894 () Bool)

(declare-fun tp!51685 () Bool)

(declare-fun e!482593 () Bool)

(assert (=> mapNonEmpty!26894 (= mapRes!26894 (and tp!51685 e!482593))))

(declare-fun mapKey!26894 () (_ BitVec 32))

(declare-fun mapValue!26894 () ValueCell!7992)

(declare-fun mapRest!26894 () (Array (_ BitVec 32) ValueCell!7992))

(assert (=> mapNonEmpty!26894 (= (arr!23962 _values!688) (store mapRest!26894 mapKey!26894 mapValue!26894))))

(declare-fun b!866279 () Bool)

(declare-fun res!588714 () Bool)

(assert (=> b!866279 (=> (not res!588714) (not e!482590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866279 (= res!588714 (validMask!0 mask!1196))))

(declare-fun b!866280 () Bool)

(declare-fun res!588717 () Bool)

(assert (=> b!866280 (=> (not res!588717) (not e!482590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49868 (_ BitVec 32)) Bool)

(assert (=> b!866280 (= res!588717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866281 () Bool)

(declare-fun e!482588 () Bool)

(assert (=> b!866281 (= e!482590 e!482588)))

(declare-fun res!588710 () Bool)

(assert (=> b!866281 (=> (not res!588710) (not e!482588))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866281 (= res!588710 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11248 0))(
  ( (tuple2!11249 (_1!5634 (_ BitVec 64)) (_2!5634 V!27531)) )
))
(declare-datatypes ((List!17112 0))(
  ( (Nil!17109) (Cons!17108 (h!18239 tuple2!11248) (t!24113 List!17112)) )
))
(declare-datatypes ((ListLongMap!10031 0))(
  ( (ListLongMap!10032 (toList!5031 List!17112)) )
))
(declare-fun lt!393042 () ListLongMap!10031)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27531)

(declare-fun zeroValue!654 () V!27531)

(declare-fun lt!393048 () array!49870)

(declare-fun getCurrentListMapNoExtraKeys!2998 (array!49868 array!49870 (_ BitVec 32) (_ BitVec 32) V!27531 V!27531 (_ BitVec 32) Int) ListLongMap!10031)

(assert (=> b!866281 (= lt!393042 (getCurrentListMapNoExtraKeys!2998 _keys!868 lt!393048 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27531)

(assert (=> b!866281 (= lt!393048 (array!49871 (store (arr!23962 _values!688) i!612 (ValueCellFull!7992 v!557)) (size!24403 _values!688)))))

(declare-fun lt!393054 () ListLongMap!10031)

(assert (=> b!866281 (= lt!393054 (getCurrentListMapNoExtraKeys!2998 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866282 () Bool)

(declare-fun res!588708 () Bool)

(assert (=> b!866282 (=> (not res!588708) (not e!482590))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!866282 (= res!588708 (and (= (select (arr!23961 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!866283 () Bool)

(declare-fun e!482589 () Bool)

(declare-fun e!482587 () Bool)

(assert (=> b!866283 (= e!482589 e!482587)))

(declare-fun res!588707 () Bool)

(assert (=> b!866283 (=> res!588707 e!482587)))

(assert (=> b!866283 (= res!588707 (= k0!854 (select (arr!23961 _keys!868) from!1053)))))

(assert (=> b!866283 (not (= (select (arr!23961 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29672 0))(
  ( (Unit!29673) )
))
(declare-fun lt!393044 () Unit!29672)

(declare-fun e!482594 () Unit!29672)

(assert (=> b!866283 (= lt!393044 e!482594)))

(declare-fun c!92229 () Bool)

(assert (=> b!866283 (= c!92229 (= (select (arr!23961 _keys!868) from!1053) k0!854))))

(declare-fun lt!393056 () ListLongMap!10031)

(assert (=> b!866283 (= lt!393042 lt!393056)))

(declare-fun lt!393051 () ListLongMap!10031)

(declare-fun lt!393055 () tuple2!11248)

(declare-fun +!2327 (ListLongMap!10031 tuple2!11248) ListLongMap!10031)

(assert (=> b!866283 (= lt!393056 (+!2327 lt!393051 lt!393055))))

(declare-fun lt!393049 () V!27531)

(assert (=> b!866283 (= lt!393055 (tuple2!11249 (select (arr!23961 _keys!868) from!1053) lt!393049))))

(declare-fun get!12685 (ValueCell!7992 V!27531) V!27531)

(declare-fun dynLambda!1193 (Int (_ BitVec 64)) V!27531)

(assert (=> b!866283 (= lt!393049 (get!12685 (select (arr!23962 _values!688) from!1053) (dynLambda!1193 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866284 () Bool)

(declare-fun Unit!29674 () Unit!29672)

(assert (=> b!866284 (= e!482594 Unit!29674)))

(declare-fun b!866275 () Bool)

(assert (=> b!866275 (= e!482588 (not e!482589))))

(declare-fun res!588716 () Bool)

(assert (=> b!866275 (=> res!588716 e!482589)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866275 (= res!588716 (not (validKeyInArray!0 (select (arr!23961 _keys!868) from!1053))))))

(declare-fun lt!393043 () ListLongMap!10031)

(assert (=> b!866275 (= lt!393043 lt!393051)))

(declare-fun lt!393047 () ListLongMap!10031)

(declare-fun lt!393053 () tuple2!11248)

(assert (=> b!866275 (= lt!393051 (+!2327 lt!393047 lt!393053))))

(assert (=> b!866275 (= lt!393043 (getCurrentListMapNoExtraKeys!2998 _keys!868 lt!393048 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866275 (= lt!393053 (tuple2!11249 k0!854 v!557))))

(assert (=> b!866275 (= lt!393047 (getCurrentListMapNoExtraKeys!2998 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393052 () Unit!29672)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!562 (array!49868 array!49870 (_ BitVec 32) (_ BitVec 32) V!27531 V!27531 (_ BitVec 32) (_ BitVec 64) V!27531 (_ BitVec 32) Int) Unit!29672)

(assert (=> b!866275 (= lt!393052 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!562 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!588715 () Bool)

(assert (=> start!73840 (=> (not res!588715) (not e!482590))))

(assert (=> start!73840 (= res!588715 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24402 _keys!868))))))

(assert (=> start!73840 e!482590))

(declare-fun tp_is_empty!16863 () Bool)

(assert (=> start!73840 tp_is_empty!16863))

(assert (=> start!73840 true))

(assert (=> start!73840 tp!51686))

(declare-fun array_inv!18922 (array!49868) Bool)

(assert (=> start!73840 (array_inv!18922 _keys!868)))

(declare-fun array_inv!18923 (array!49870) Bool)

(assert (=> start!73840 (and (array_inv!18923 _values!688) e!482595)))

(declare-fun b!866285 () Bool)

(declare-fun res!588713 () Bool)

(assert (=> b!866285 (=> (not res!588713) (not e!482590))))

(assert (=> b!866285 (= res!588713 (validKeyInArray!0 k0!854))))

(declare-fun b!866286 () Bool)

(assert (=> b!866286 (= e!482587 true)))

(assert (=> b!866286 (= lt!393056 (+!2327 (+!2327 lt!393047 lt!393055) lt!393053))))

(declare-fun lt!393057 () Unit!29672)

(declare-fun addCommutativeForDiffKeys!531 (ListLongMap!10031 (_ BitVec 64) V!27531 (_ BitVec 64) V!27531) Unit!29672)

(assert (=> b!866286 (= lt!393057 (addCommutativeForDiffKeys!531 lt!393047 k0!854 v!557 (select (arr!23961 _keys!868) from!1053) lt!393049))))

(declare-fun b!866287 () Bool)

(assert (=> b!866287 (= e!482593 tp_is_empty!16863)))

(declare-fun b!866288 () Bool)

(declare-fun Unit!29675 () Unit!29672)

(assert (=> b!866288 (= e!482594 Unit!29675)))

(declare-fun lt!393046 () Unit!29672)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49868 (_ BitVec 32) (_ BitVec 32)) Unit!29672)

(assert (=> b!866288 (= lt!393046 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866288 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17108)))

(declare-fun lt!393050 () Unit!29672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49868 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29672)

(assert (=> b!866288 (= lt!393050 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866288 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393045 () Unit!29672)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49868 (_ BitVec 64) (_ BitVec 32) List!17111) Unit!29672)

(assert (=> b!866288 (= lt!393045 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17108))))

(assert (=> b!866288 false))

(declare-fun b!866289 () Bool)

(assert (=> b!866289 (= e!482592 tp_is_empty!16863)))

(declare-fun b!866290 () Bool)

(declare-fun res!588712 () Bool)

(assert (=> b!866290 (=> (not res!588712) (not e!482590))))

(assert (=> b!866290 (= res!588712 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24402 _keys!868))))))

(assert (= (and start!73840 res!588715) b!866279))

(assert (= (and b!866279 res!588714) b!866276))

(assert (= (and b!866276 res!588711) b!866280))

(assert (= (and b!866280 res!588717) b!866277))

(assert (= (and b!866277 res!588709) b!866290))

(assert (= (and b!866290 res!588712) b!866285))

(assert (= (and b!866285 res!588713) b!866282))

(assert (= (and b!866282 res!588708) b!866281))

(assert (= (and b!866281 res!588710) b!866275))

(assert (= (and b!866275 (not res!588716)) b!866283))

(assert (= (and b!866283 c!92229) b!866288))

(assert (= (and b!866283 (not c!92229)) b!866284))

(assert (= (and b!866283 (not res!588707)) b!866286))

(assert (= (and b!866278 condMapEmpty!26894) mapIsEmpty!26894))

(assert (= (and b!866278 (not condMapEmpty!26894)) mapNonEmpty!26894))

(get-info :version)

(assert (= (and mapNonEmpty!26894 ((_ is ValueCellFull!7992) mapValue!26894)) b!866287))

(assert (= (and b!866278 ((_ is ValueCellFull!7992) mapDefault!26894)) b!866289))

(assert (= start!73840 b!866278))

(declare-fun b_lambda!12109 () Bool)

(assert (=> (not b_lambda!12109) (not b!866283)))

(declare-fun t!24111 () Bool)

(declare-fun tb!4857 () Bool)

(assert (=> (and start!73840 (= defaultEntry!696 defaultEntry!696) t!24111) tb!4857))

(declare-fun result!9317 () Bool)

(assert (=> tb!4857 (= result!9317 tp_is_empty!16863)))

(assert (=> b!866283 t!24111))

(declare-fun b_and!24453 () Bool)

(assert (= b_and!24451 (and (=> t!24111 result!9317) b_and!24453)))

(declare-fun m!808037 () Bool)

(assert (=> b!866288 m!808037))

(declare-fun m!808039 () Bool)

(assert (=> b!866288 m!808039))

(declare-fun m!808041 () Bool)

(assert (=> b!866288 m!808041))

(declare-fun m!808043 () Bool)

(assert (=> b!866288 m!808043))

(declare-fun m!808045 () Bool)

(assert (=> b!866288 m!808045))

(declare-fun m!808047 () Bool)

(assert (=> b!866283 m!808047))

(declare-fun m!808049 () Bool)

(assert (=> b!866283 m!808049))

(declare-fun m!808051 () Bool)

(assert (=> b!866283 m!808051))

(declare-fun m!808053 () Bool)

(assert (=> b!866283 m!808053))

(assert (=> b!866283 m!808049))

(declare-fun m!808055 () Bool)

(assert (=> b!866283 m!808055))

(assert (=> b!866283 m!808051))

(declare-fun m!808057 () Bool)

(assert (=> b!866277 m!808057))

(declare-fun m!808059 () Bool)

(assert (=> mapNonEmpty!26894 m!808059))

(declare-fun m!808061 () Bool)

(assert (=> b!866280 m!808061))

(declare-fun m!808063 () Bool)

(assert (=> b!866279 m!808063))

(declare-fun m!808065 () Bool)

(assert (=> b!866285 m!808065))

(declare-fun m!808067 () Bool)

(assert (=> start!73840 m!808067))

(declare-fun m!808069 () Bool)

(assert (=> start!73840 m!808069))

(assert (=> b!866275 m!808055))

(declare-fun m!808071 () Bool)

(assert (=> b!866275 m!808071))

(assert (=> b!866275 m!808055))

(declare-fun m!808073 () Bool)

(assert (=> b!866275 m!808073))

(declare-fun m!808075 () Bool)

(assert (=> b!866275 m!808075))

(declare-fun m!808077 () Bool)

(assert (=> b!866275 m!808077))

(declare-fun m!808079 () Bool)

(assert (=> b!866275 m!808079))

(declare-fun m!808081 () Bool)

(assert (=> b!866282 m!808081))

(declare-fun m!808083 () Bool)

(assert (=> b!866281 m!808083))

(declare-fun m!808085 () Bool)

(assert (=> b!866281 m!808085))

(declare-fun m!808087 () Bool)

(assert (=> b!866281 m!808087))

(declare-fun m!808089 () Bool)

(assert (=> b!866286 m!808089))

(assert (=> b!866286 m!808089))

(declare-fun m!808091 () Bool)

(assert (=> b!866286 m!808091))

(assert (=> b!866286 m!808055))

(assert (=> b!866286 m!808055))

(declare-fun m!808093 () Bool)

(assert (=> b!866286 m!808093))

(check-sat (not b!866286) (not b!866277) (not b!866285) (not b_lambda!12109) b_and!24453 (not mapNonEmpty!26894) (not b_next!14727) (not b!866281) (not b!866279) (not b!866283) (not start!73840) tp_is_empty!16863 (not b!866288) (not b!866280) (not b!866275))
(check-sat b_and!24453 (not b_next!14727))
