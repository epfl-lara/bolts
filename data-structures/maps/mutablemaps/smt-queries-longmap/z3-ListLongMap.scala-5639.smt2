; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73648 () Bool)

(assert start!73648)

(declare-fun b_free!14535 () Bool)

(declare-fun b_next!14535 () Bool)

(assert (=> start!73648 (= b_free!14535 (not b_next!14535))))

(declare-fun tp!51109 () Bool)

(declare-fun b_and!24067 () Bool)

(assert (=> start!73648 (= tp!51109 b_and!24067)))

(declare-fun b!861506 () Bool)

(declare-fun res!585576 () Bool)

(declare-fun e!480031 () Bool)

(assert (=> b!861506 (=> (not res!585576) (not e!480031))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49488 0))(
  ( (array!49489 (arr!23771 (Array (_ BitVec 32) (_ BitVec 64))) (size!24212 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49488)

(declare-datatypes ((V!27275 0))(
  ( (V!27276 (val!8383 Int)) )
))
(declare-datatypes ((ValueCell!7896 0))(
  ( (ValueCellFull!7896 (v!10804 V!27275)) (EmptyCell!7896) )
))
(declare-datatypes ((array!49490 0))(
  ( (array!49491 (arr!23772 (Array (_ BitVec 32) ValueCell!7896)) (size!24213 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49490)

(assert (=> b!861506 (= res!585576 (and (= (size!24213 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24212 _keys!868) (size!24213 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861507 () Bool)

(declare-datatypes ((Unit!29356 0))(
  ( (Unit!29357) )
))
(declare-fun e!480027 () Unit!29356)

(declare-fun Unit!29358 () Unit!29356)

(assert (=> b!861507 (= e!480027 Unit!29358)))

(declare-fun b!861508 () Bool)

(declare-fun res!585573 () Bool)

(assert (=> b!861508 (=> (not res!585573) (not e!480031))))

(declare-datatypes ((List!16944 0))(
  ( (Nil!16941) (Cons!16940 (h!18071 (_ BitVec 64)) (t!23753 List!16944)) )
))
(declare-fun arrayNoDuplicates!0 (array!49488 (_ BitVec 32) List!16944) Bool)

(assert (=> b!861508 (= res!585573 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16941))))

(declare-fun b!861509 () Bool)

(declare-fun res!585570 () Bool)

(assert (=> b!861509 (=> (not res!585570) (not e!480031))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861509 (= res!585570 (and (= (select (arr!23771 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26606 () Bool)

(declare-fun mapRes!26606 () Bool)

(assert (=> mapIsEmpty!26606 mapRes!26606))

(declare-fun b!861511 () Bool)

(declare-fun e!480029 () Bool)

(declare-fun tp_is_empty!16671 () Bool)

(assert (=> b!861511 (= e!480029 tp_is_empty!16671)))

(declare-fun b!861512 () Bool)

(declare-fun Unit!29359 () Unit!29356)

(assert (=> b!861512 (= e!480027 Unit!29359)))

(declare-fun lt!388595 () Unit!29356)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49488 (_ BitVec 32) (_ BitVec 32)) Unit!29356)

(assert (=> b!861512 (= lt!388595 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861512 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16941)))

(declare-fun lt!388597 () Unit!29356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49488 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29356)

(assert (=> b!861512 (= lt!388597 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861512 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388593 () Unit!29356)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49488 (_ BitVec 64) (_ BitVec 32) List!16944) Unit!29356)

(assert (=> b!861512 (= lt!388593 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16941))))

(assert (=> b!861512 false))

(declare-fun b!861513 () Bool)

(declare-fun e!480026 () Bool)

(declare-fun e!480028 () Bool)

(assert (=> b!861513 (= e!480026 (not e!480028))))

(declare-fun res!585575 () Bool)

(assert (=> b!861513 (=> res!585575 e!480028)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861513 (= res!585575 (not (validKeyInArray!0 (select (arr!23771 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11074 0))(
  ( (tuple2!11075 (_1!5547 (_ BitVec 64)) (_2!5547 V!27275)) )
))
(declare-datatypes ((List!16945 0))(
  ( (Nil!16942) (Cons!16941 (h!18072 tuple2!11074) (t!23754 List!16945)) )
))
(declare-datatypes ((ListLongMap!9857 0))(
  ( (ListLongMap!9858 (toList!4944 List!16945)) )
))
(declare-fun lt!388599 () ListLongMap!9857)

(declare-fun lt!388592 () ListLongMap!9857)

(assert (=> b!861513 (= lt!388599 lt!388592)))

(declare-fun lt!388598 () ListLongMap!9857)

(declare-fun v!557 () V!27275)

(declare-fun +!2242 (ListLongMap!9857 tuple2!11074) ListLongMap!9857)

(assert (=> b!861513 (= lt!388592 (+!2242 lt!388598 (tuple2!11075 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388590 () array!49490)

(declare-fun minValue!654 () V!27275)

(declare-fun zeroValue!654 () V!27275)

(declare-fun getCurrentListMapNoExtraKeys!2923 (array!49488 array!49490 (_ BitVec 32) (_ BitVec 32) V!27275 V!27275 (_ BitVec 32) Int) ListLongMap!9857)

(assert (=> b!861513 (= lt!388599 (getCurrentListMapNoExtraKeys!2923 _keys!868 lt!388590 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861513 (= lt!388598 (getCurrentListMapNoExtraKeys!2923 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388596 () Unit!29356)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!494 (array!49488 array!49490 (_ BitVec 32) (_ BitVec 32) V!27275 V!27275 (_ BitVec 32) (_ BitVec 64) V!27275 (_ BitVec 32) Int) Unit!29356)

(assert (=> b!861513 (= lt!388596 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!494 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861514 () Bool)

(declare-fun e!480032 () Bool)

(assert (=> b!861514 (= e!480032 tp_is_empty!16671)))

(declare-fun b!861515 () Bool)

(declare-fun e!480033 () Bool)

(assert (=> b!861515 (= e!480033 (and e!480032 mapRes!26606))))

(declare-fun condMapEmpty!26606 () Bool)

(declare-fun mapDefault!26606 () ValueCell!7896)

(assert (=> b!861515 (= condMapEmpty!26606 (= (arr!23772 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7896)) mapDefault!26606)))))

(declare-fun mapNonEmpty!26606 () Bool)

(declare-fun tp!51110 () Bool)

(assert (=> mapNonEmpty!26606 (= mapRes!26606 (and tp!51110 e!480029))))

(declare-fun mapKey!26606 () (_ BitVec 32))

(declare-fun mapRest!26606 () (Array (_ BitVec 32) ValueCell!7896))

(declare-fun mapValue!26606 () ValueCell!7896)

(assert (=> mapNonEmpty!26606 (= (arr!23772 _values!688) (store mapRest!26606 mapKey!26606 mapValue!26606))))

(declare-fun b!861516 () Bool)

(declare-fun res!585574 () Bool)

(assert (=> b!861516 (=> (not res!585574) (not e!480031))))

(assert (=> b!861516 (= res!585574 (validKeyInArray!0 k0!854))))

(declare-fun b!861517 () Bool)

(assert (=> b!861517 (= e!480031 e!480026)))

(declare-fun res!585571 () Bool)

(assert (=> b!861517 (=> (not res!585571) (not e!480026))))

(assert (=> b!861517 (= res!585571 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!388591 () ListLongMap!9857)

(assert (=> b!861517 (= lt!388591 (getCurrentListMapNoExtraKeys!2923 _keys!868 lt!388590 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!861517 (= lt!388590 (array!49491 (store (arr!23772 _values!688) i!612 (ValueCellFull!7896 v!557)) (size!24213 _values!688)))))

(declare-fun lt!388594 () ListLongMap!9857)

(assert (=> b!861517 (= lt!388594 (getCurrentListMapNoExtraKeys!2923 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861518 () Bool)

(declare-fun res!585579 () Bool)

(assert (=> b!861518 (=> (not res!585579) (not e!480031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861518 (= res!585579 (validMask!0 mask!1196))))

(declare-fun res!585572 () Bool)

(assert (=> start!73648 (=> (not res!585572) (not e!480031))))

(assert (=> start!73648 (= res!585572 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24212 _keys!868))))))

(assert (=> start!73648 e!480031))

(assert (=> start!73648 tp_is_empty!16671))

(assert (=> start!73648 true))

(assert (=> start!73648 tp!51109))

(declare-fun array_inv!18786 (array!49488) Bool)

(assert (=> start!73648 (array_inv!18786 _keys!868)))

(declare-fun array_inv!18787 (array!49490) Bool)

(assert (=> start!73648 (and (array_inv!18787 _values!688) e!480033)))

(declare-fun b!861510 () Bool)

(declare-fun res!585578 () Bool)

(assert (=> b!861510 (=> (not res!585578) (not e!480031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49488 (_ BitVec 32)) Bool)

(assert (=> b!861510 (= res!585578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861519 () Bool)

(assert (=> b!861519 (= e!480028 true)))

(assert (=> b!861519 (not (= (select (arr!23771 _keys!868) from!1053) k0!854))))

(declare-fun lt!388589 () Unit!29356)

(assert (=> b!861519 (= lt!388589 e!480027)))

(declare-fun c!91941 () Bool)

(assert (=> b!861519 (= c!91941 (= (select (arr!23771 _keys!868) from!1053) k0!854))))

(declare-fun get!12552 (ValueCell!7896 V!27275) V!27275)

(declare-fun dynLambda!1124 (Int (_ BitVec 64)) V!27275)

(assert (=> b!861519 (= lt!388591 (+!2242 lt!388592 (tuple2!11075 (select (arr!23771 _keys!868) from!1053) (get!12552 (select (arr!23772 _values!688) from!1053) (dynLambda!1124 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861520 () Bool)

(declare-fun res!585577 () Bool)

(assert (=> b!861520 (=> (not res!585577) (not e!480031))))

(assert (=> b!861520 (= res!585577 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24212 _keys!868))))))

(assert (= (and start!73648 res!585572) b!861518))

(assert (= (and b!861518 res!585579) b!861506))

(assert (= (and b!861506 res!585576) b!861510))

(assert (= (and b!861510 res!585578) b!861508))

(assert (= (and b!861508 res!585573) b!861520))

(assert (= (and b!861520 res!585577) b!861516))

(assert (= (and b!861516 res!585574) b!861509))

(assert (= (and b!861509 res!585570) b!861517))

(assert (= (and b!861517 res!585571) b!861513))

(assert (= (and b!861513 (not res!585575)) b!861519))

(assert (= (and b!861519 c!91941) b!861512))

(assert (= (and b!861519 (not c!91941)) b!861507))

(assert (= (and b!861515 condMapEmpty!26606) mapIsEmpty!26606))

(assert (= (and b!861515 (not condMapEmpty!26606)) mapNonEmpty!26606))

(get-info :version)

(assert (= (and mapNonEmpty!26606 ((_ is ValueCellFull!7896) mapValue!26606)) b!861511))

(assert (= (and b!861515 ((_ is ValueCellFull!7896) mapDefault!26606)) b!861514))

(assert (= start!73648 b!861515))

(declare-fun b_lambda!11917 () Bool)

(assert (=> (not b_lambda!11917) (not b!861519)))

(declare-fun t!23752 () Bool)

(declare-fun tb!4665 () Bool)

(assert (=> (and start!73648 (= defaultEntry!696 defaultEntry!696) t!23752) tb!4665))

(declare-fun result!8933 () Bool)

(assert (=> tb!4665 (= result!8933 tp_is_empty!16671)))

(assert (=> b!861519 t!23752))

(declare-fun b_and!24069 () Bool)

(assert (= b_and!24067 (and (=> t!23752 result!8933) b_and!24069)))

(declare-fun m!802535 () Bool)

(assert (=> b!861512 m!802535))

(declare-fun m!802537 () Bool)

(assert (=> b!861512 m!802537))

(declare-fun m!802539 () Bool)

(assert (=> b!861512 m!802539))

(declare-fun m!802541 () Bool)

(assert (=> b!861512 m!802541))

(declare-fun m!802543 () Bool)

(assert (=> b!861512 m!802543))

(declare-fun m!802545 () Bool)

(assert (=> b!861509 m!802545))

(declare-fun m!802547 () Bool)

(assert (=> b!861508 m!802547))

(declare-fun m!802549 () Bool)

(assert (=> mapNonEmpty!26606 m!802549))

(declare-fun m!802551 () Bool)

(assert (=> b!861516 m!802551))

(declare-fun m!802553 () Bool)

(assert (=> b!861519 m!802553))

(declare-fun m!802555 () Bool)

(assert (=> b!861519 m!802555))

(declare-fun m!802557 () Bool)

(assert (=> b!861519 m!802557))

(declare-fun m!802559 () Bool)

(assert (=> b!861519 m!802559))

(assert (=> b!861519 m!802555))

(declare-fun m!802561 () Bool)

(assert (=> b!861519 m!802561))

(assert (=> b!861519 m!802557))

(declare-fun m!802563 () Bool)

(assert (=> b!861513 m!802563))

(declare-fun m!802565 () Bool)

(assert (=> b!861513 m!802565))

(assert (=> b!861513 m!802561))

(declare-fun m!802567 () Bool)

(assert (=> b!861513 m!802567))

(assert (=> b!861513 m!802561))

(declare-fun m!802569 () Bool)

(assert (=> b!861513 m!802569))

(declare-fun m!802571 () Bool)

(assert (=> b!861513 m!802571))

(declare-fun m!802573 () Bool)

(assert (=> start!73648 m!802573))

(declare-fun m!802575 () Bool)

(assert (=> start!73648 m!802575))

(declare-fun m!802577 () Bool)

(assert (=> b!861510 m!802577))

(declare-fun m!802579 () Bool)

(assert (=> b!861518 m!802579))

(declare-fun m!802581 () Bool)

(assert (=> b!861517 m!802581))

(declare-fun m!802583 () Bool)

(assert (=> b!861517 m!802583))

(declare-fun m!802585 () Bool)

(assert (=> b!861517 m!802585))

(check-sat (not b!861508) (not b_next!14535) (not start!73648) (not b_lambda!11917) b_and!24069 (not b!861510) (not mapNonEmpty!26606) (not b!861513) (not b!861519) (not b!861516) tp_is_empty!16671 (not b!861518) (not b!861517) (not b!861512))
(check-sat b_and!24069 (not b_next!14535))
