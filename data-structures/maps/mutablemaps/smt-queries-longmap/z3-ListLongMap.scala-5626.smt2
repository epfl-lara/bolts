; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73570 () Bool)

(assert start!73570)

(declare-fun b_free!14457 () Bool)

(declare-fun b_next!14457 () Bool)

(assert (=> start!73570 (= b_free!14457 (not b_next!14457))))

(declare-fun tp!50875 () Bool)

(declare-fun b_and!23911 () Bool)

(assert (=> start!73570 (= tp!50875 b_and!23911)))

(declare-fun b!859557 () Bool)

(declare-fun res!584169 () Bool)

(declare-fun e!479038 () Bool)

(assert (=> b!859557 (=> (not res!584169) (not e!479038))))

(declare-datatypes ((array!49344 0))(
  ( (array!49345 (arr!23699 (Array (_ BitVec 32) (_ BitVec 64))) (size!24140 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49344)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49344 (_ BitVec 32)) Bool)

(assert (=> b!859557 (= res!584169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859558 () Bool)

(declare-fun e!479039 () Bool)

(declare-fun e!479035 () Bool)

(assert (=> b!859558 (= e!479039 e!479035)))

(declare-fun res!584181 () Bool)

(assert (=> b!859558 (=> res!584181 e!479035)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859558 (= res!584181 (not (= (select (arr!23699 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27171 0))(
  ( (V!27172 (val!8344 Int)) )
))
(declare-datatypes ((tuple2!11010 0))(
  ( (tuple2!11011 (_1!5515 (_ BitVec 64)) (_2!5515 V!27171)) )
))
(declare-datatypes ((List!16883 0))(
  ( (Nil!16880) (Cons!16879 (h!18010 tuple2!11010) (t!23614 List!16883)) )
))
(declare-datatypes ((ListLongMap!9793 0))(
  ( (ListLongMap!9794 (toList!4912 List!16883)) )
))
(declare-fun lt!387367 () ListLongMap!9793)

(declare-fun lt!387361 () ListLongMap!9793)

(declare-datatypes ((ValueCell!7857 0))(
  ( (ValueCellFull!7857 (v!10765 V!27171)) (EmptyCell!7857) )
))
(declare-datatypes ((array!49346 0))(
  ( (array!49347 (arr!23700 (Array (_ BitVec 32) ValueCell!7857)) (size!24141 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49346)

(declare-fun +!2215 (ListLongMap!9793 tuple2!11010) ListLongMap!9793)

(declare-fun get!12503 (ValueCell!7857 V!27171) V!27171)

(declare-fun dynLambda!1101 (Int (_ BitVec 64)) V!27171)

(assert (=> b!859558 (= lt!387361 (+!2215 lt!387367 (tuple2!11011 (select (arr!23699 _keys!868) from!1053) (get!12503 (select (arr!23700 _values!688) from!1053) (dynLambda!1101 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!584179 () Bool)

(assert (=> start!73570 (=> (not res!584179) (not e!479038))))

(assert (=> start!73570 (= res!584179 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24140 _keys!868))))))

(assert (=> start!73570 e!479038))

(declare-fun tp_is_empty!16593 () Bool)

(assert (=> start!73570 tp_is_empty!16593))

(assert (=> start!73570 true))

(assert (=> start!73570 tp!50875))

(declare-fun array_inv!18742 (array!49344) Bool)

(assert (=> start!73570 (array_inv!18742 _keys!868)))

(declare-fun e!479032 () Bool)

(declare-fun array_inv!18743 (array!49346) Bool)

(assert (=> start!73570 (and (array_inv!18743 _values!688) e!479032)))

(declare-fun mapNonEmpty!26489 () Bool)

(declare-fun mapRes!26489 () Bool)

(declare-fun tp!50876 () Bool)

(declare-fun e!479037 () Bool)

(assert (=> mapNonEmpty!26489 (= mapRes!26489 (and tp!50876 e!479037))))

(declare-fun mapRest!26489 () (Array (_ BitVec 32) ValueCell!7857))

(declare-fun mapValue!26489 () ValueCell!7857)

(declare-fun mapKey!26489 () (_ BitVec 32))

(assert (=> mapNonEmpty!26489 (= (arr!23700 _values!688) (store mapRest!26489 mapKey!26489 mapValue!26489))))

(declare-fun b!859559 () Bool)

(declare-fun res!584180 () Bool)

(declare-fun e!479033 () Bool)

(assert (=> b!859559 (=> res!584180 e!479033)))

(declare-datatypes ((List!16884 0))(
  ( (Nil!16881) (Cons!16880 (h!18011 (_ BitVec 64)) (t!23615 List!16884)) )
))
(declare-fun noDuplicate!1306 (List!16884) Bool)

(assert (=> b!859559 (= res!584180 (not (noDuplicate!1306 Nil!16881)))))

(declare-fun b!859560 () Bool)

(declare-fun res!584174 () Bool)

(assert (=> b!859560 (=> (not res!584174) (not e!479038))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859560 (= res!584174 (and (= (select (arr!23699 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!859561 () Bool)

(declare-fun e!479040 () Bool)

(assert (=> b!859561 (= e!479040 (not e!479039))))

(declare-fun res!584176 () Bool)

(assert (=> b!859561 (=> res!584176 e!479039)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859561 (= res!584176 (not (validKeyInArray!0 (select (arr!23699 _keys!868) from!1053))))))

(declare-fun lt!387368 () ListLongMap!9793)

(assert (=> b!859561 (= lt!387368 lt!387367)))

(declare-fun v!557 () V!27171)

(declare-fun lt!387360 () ListLongMap!9793)

(assert (=> b!859561 (= lt!387367 (+!2215 lt!387360 (tuple2!11011 k0!854 v!557)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27171)

(declare-fun zeroValue!654 () V!27171)

(declare-fun lt!387365 () array!49346)

(declare-fun getCurrentListMapNoExtraKeys!2892 (array!49344 array!49346 (_ BitVec 32) (_ BitVec 32) V!27171 V!27171 (_ BitVec 32) Int) ListLongMap!9793)

(assert (=> b!859561 (= lt!387368 (getCurrentListMapNoExtraKeys!2892 _keys!868 lt!387365 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859561 (= lt!387360 (getCurrentListMapNoExtraKeys!2892 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29274 0))(
  ( (Unit!29275) )
))
(declare-fun lt!387364 () Unit!29274)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!472 (array!49344 array!49346 (_ BitVec 32) (_ BitVec 32) V!27171 V!27171 (_ BitVec 32) (_ BitVec 64) V!27171 (_ BitVec 32) Int) Unit!29274)

(assert (=> b!859561 (= lt!387364 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!472 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26489 () Bool)

(assert (=> mapIsEmpty!26489 mapRes!26489))

(declare-fun b!859562 () Bool)

(declare-fun e!479034 () Bool)

(assert (=> b!859562 (= e!479034 tp_is_empty!16593)))

(declare-fun b!859563 () Bool)

(assert (=> b!859563 (= e!479032 (and e!479034 mapRes!26489))))

(declare-fun condMapEmpty!26489 () Bool)

(declare-fun mapDefault!26489 () ValueCell!7857)

(assert (=> b!859563 (= condMapEmpty!26489 (= (arr!23700 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7857)) mapDefault!26489)))))

(declare-fun b!859564 () Bool)

(declare-fun res!584168 () Bool)

(assert (=> b!859564 (=> (not res!584168) (not e!479038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859564 (= res!584168 (validMask!0 mask!1196))))

(declare-fun b!859565 () Bool)

(declare-fun res!584171 () Bool)

(assert (=> b!859565 (=> (not res!584171) (not e!479038))))

(assert (=> b!859565 (= res!584171 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24140 _keys!868))))))

(declare-fun b!859566 () Bool)

(assert (=> b!859566 (= e!479033 true)))

(declare-fun lt!387363 () Bool)

(declare-fun contains!4224 (List!16884 (_ BitVec 64)) Bool)

(assert (=> b!859566 (= lt!387363 (contains!4224 Nil!16881 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859567 () Bool)

(assert (=> b!859567 (= e!479037 tp_is_empty!16593)))

(declare-fun b!859568 () Bool)

(declare-fun res!584172 () Bool)

(assert (=> b!859568 (=> (not res!584172) (not e!479038))))

(assert (=> b!859568 (= res!584172 (validKeyInArray!0 k0!854))))

(declare-fun b!859569 () Bool)

(declare-fun res!584170 () Bool)

(assert (=> b!859569 (=> (not res!584170) (not e!479038))))

(assert (=> b!859569 (= res!584170 (and (= (size!24141 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24140 _keys!868) (size!24141 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859570 () Bool)

(declare-fun res!584173 () Bool)

(assert (=> b!859570 (=> res!584173 e!479033)))

(assert (=> b!859570 (= res!584173 (contains!4224 Nil!16881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859571 () Bool)

(assert (=> b!859571 (= e!479035 e!479033)))

(declare-fun res!584178 () Bool)

(assert (=> b!859571 (=> res!584178 e!479033)))

(assert (=> b!859571 (= res!584178 (or (bvsge (size!24140 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24140 _keys!868)) (bvsge from!1053 (size!24140 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859571 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387369 () Unit!29274)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49344 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29274)

(assert (=> b!859571 (= lt!387369 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!49344 (_ BitVec 32) List!16884) Bool)

(assert (=> b!859571 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16881)))

(declare-fun lt!387362 () Unit!29274)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49344 (_ BitVec 32) (_ BitVec 32)) Unit!29274)

(assert (=> b!859571 (= lt!387362 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859572 () Bool)

(assert (=> b!859572 (= e!479038 e!479040)))

(declare-fun res!584175 () Bool)

(assert (=> b!859572 (=> (not res!584175) (not e!479040))))

(assert (=> b!859572 (= res!584175 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!859572 (= lt!387361 (getCurrentListMapNoExtraKeys!2892 _keys!868 lt!387365 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!859572 (= lt!387365 (array!49347 (store (arr!23700 _values!688) i!612 (ValueCellFull!7857 v!557)) (size!24141 _values!688)))))

(declare-fun lt!387366 () ListLongMap!9793)

(assert (=> b!859572 (= lt!387366 (getCurrentListMapNoExtraKeys!2892 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859573 () Bool)

(declare-fun res!584177 () Bool)

(assert (=> b!859573 (=> (not res!584177) (not e!479038))))

(assert (=> b!859573 (= res!584177 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16881))))

(assert (= (and start!73570 res!584179) b!859564))

(assert (= (and b!859564 res!584168) b!859569))

(assert (= (and b!859569 res!584170) b!859557))

(assert (= (and b!859557 res!584169) b!859573))

(assert (= (and b!859573 res!584177) b!859565))

(assert (= (and b!859565 res!584171) b!859568))

(assert (= (and b!859568 res!584172) b!859560))

(assert (= (and b!859560 res!584174) b!859572))

(assert (= (and b!859572 res!584175) b!859561))

(assert (= (and b!859561 (not res!584176)) b!859558))

(assert (= (and b!859558 (not res!584181)) b!859571))

(assert (= (and b!859571 (not res!584178)) b!859559))

(assert (= (and b!859559 (not res!584180)) b!859570))

(assert (= (and b!859570 (not res!584173)) b!859566))

(assert (= (and b!859563 condMapEmpty!26489) mapIsEmpty!26489))

(assert (= (and b!859563 (not condMapEmpty!26489)) mapNonEmpty!26489))

(get-info :version)

(assert (= (and mapNonEmpty!26489 ((_ is ValueCellFull!7857) mapValue!26489)) b!859567))

(assert (= (and b!859563 ((_ is ValueCellFull!7857) mapDefault!26489)) b!859562))

(assert (= start!73570 b!859563))

(declare-fun b_lambda!11839 () Bool)

(assert (=> (not b_lambda!11839) (not b!859558)))

(declare-fun t!23613 () Bool)

(declare-fun tb!4587 () Bool)

(assert (=> (and start!73570 (= defaultEntry!696 defaultEntry!696) t!23613) tb!4587))

(declare-fun result!8777 () Bool)

(assert (=> tb!4587 (= result!8777 tp_is_empty!16593)))

(assert (=> b!859558 t!23613))

(declare-fun b_and!23913 () Bool)

(assert (= b_and!23911 (and (=> t!23613 result!8777) b_and!23913)))

(declare-fun m!800427 () Bool)

(assert (=> b!859559 m!800427))

(declare-fun m!800429 () Bool)

(assert (=> b!859572 m!800429))

(declare-fun m!800431 () Bool)

(assert (=> b!859572 m!800431))

(declare-fun m!800433 () Bool)

(assert (=> b!859572 m!800433))

(declare-fun m!800435 () Bool)

(assert (=> b!859560 m!800435))

(declare-fun m!800437 () Bool)

(assert (=> b!859557 m!800437))

(declare-fun m!800439 () Bool)

(assert (=> start!73570 m!800439))

(declare-fun m!800441 () Bool)

(assert (=> start!73570 m!800441))

(declare-fun m!800443 () Bool)

(assert (=> mapNonEmpty!26489 m!800443))

(declare-fun m!800445 () Bool)

(assert (=> b!859570 m!800445))

(declare-fun m!800447 () Bool)

(assert (=> b!859566 m!800447))

(declare-fun m!800449 () Bool)

(assert (=> b!859558 m!800449))

(declare-fun m!800451 () Bool)

(assert (=> b!859558 m!800451))

(declare-fun m!800453 () Bool)

(assert (=> b!859558 m!800453))

(declare-fun m!800455 () Bool)

(assert (=> b!859558 m!800455))

(assert (=> b!859558 m!800451))

(declare-fun m!800457 () Bool)

(assert (=> b!859558 m!800457))

(assert (=> b!859558 m!800453))

(declare-fun m!800459 () Bool)

(assert (=> b!859561 m!800459))

(declare-fun m!800461 () Bool)

(assert (=> b!859561 m!800461))

(assert (=> b!859561 m!800457))

(declare-fun m!800463 () Bool)

(assert (=> b!859561 m!800463))

(declare-fun m!800465 () Bool)

(assert (=> b!859561 m!800465))

(assert (=> b!859561 m!800457))

(declare-fun m!800467 () Bool)

(assert (=> b!859561 m!800467))

(declare-fun m!800469 () Bool)

(assert (=> b!859568 m!800469))

(declare-fun m!800471 () Bool)

(assert (=> b!859571 m!800471))

(declare-fun m!800473 () Bool)

(assert (=> b!859571 m!800473))

(declare-fun m!800475 () Bool)

(assert (=> b!859571 m!800475))

(declare-fun m!800477 () Bool)

(assert (=> b!859571 m!800477))

(declare-fun m!800479 () Bool)

(assert (=> b!859564 m!800479))

(declare-fun m!800481 () Bool)

(assert (=> b!859573 m!800481))

(check-sat (not b!859573) (not b_next!14457) (not b!859570) b_and!23913 (not b!859557) (not start!73570) (not b!859558) (not b!859566) (not b!859572) (not b!859564) (not b!859561) tp_is_empty!16593 (not b!859568) (not mapNonEmpty!26489) (not b_lambda!11839) (not b!859571) (not b!859559))
(check-sat b_and!23913 (not b_next!14457))
