; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73102 () Bool)

(assert start!73102)

(declare-fun b_free!13989 () Bool)

(declare-fun b_next!13989 () Bool)

(assert (=> start!73102 (= b_free!13989 (not b_next!13989))))

(declare-fun tp!49472 () Bool)

(declare-fun b_and!23155 () Bool)

(assert (=> start!73102 (= tp!49472 b_and!23155)))

(declare-fun b!849746 () Bool)

(declare-fun res!577371 () Bool)

(declare-fun e!474078 () Bool)

(assert (=> b!849746 (=> (not res!577371) (not e!474078))))

(declare-datatypes ((array!48442 0))(
  ( (array!48443 (arr!23248 (Array (_ BitVec 32) (_ BitVec 64))) (size!23689 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48442)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48442 (_ BitVec 32)) Bool)

(assert (=> b!849746 (= res!577371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849747 () Bool)

(declare-datatypes ((V!26547 0))(
  ( (V!26548 (val!8110 Int)) )
))
(declare-fun v!557 () V!26547)

(declare-datatypes ((tuple2!10636 0))(
  ( (tuple2!10637 (_1!5328 (_ BitVec 64)) (_2!5328 V!26547)) )
))
(declare-datatypes ((List!16535 0))(
  ( (Nil!16532) (Cons!16531 (h!17662 tuple2!10636) (t!22978 List!16535)) )
))
(declare-datatypes ((ListLongMap!9419 0))(
  ( (ListLongMap!9420 (toList!4725 List!16535)) )
))
(declare-fun call!37823 () ListLongMap!9419)

(declare-fun call!37822 () ListLongMap!9419)

(declare-fun e!474080 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2070 (ListLongMap!9419 tuple2!10636) ListLongMap!9419)

(assert (=> b!849747 (= e!474080 (= call!37823 (+!2070 call!37822 (tuple2!10637 k0!854 v!557))))))

(declare-fun b!849748 () Bool)

(declare-fun res!577379 () Bool)

(assert (=> b!849748 (=> (not res!577379) (not e!474078))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7623 0))(
  ( (ValueCellFull!7623 (v!10531 V!26547)) (EmptyCell!7623) )
))
(declare-datatypes ((array!48444 0))(
  ( (array!48445 (arr!23249 (Array (_ BitVec 32) ValueCell!7623)) (size!23690 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48444)

(assert (=> b!849748 (= res!577379 (and (= (size!23690 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23689 _keys!868) (size!23690 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849749 () Bool)

(declare-fun res!577376 () Bool)

(assert (=> b!849749 (=> (not res!577376) (not e!474078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849749 (= res!577376 (validMask!0 mask!1196))))

(declare-fun b!849750 () Bool)

(declare-fun res!577372 () Bool)

(assert (=> b!849750 (=> (not res!577372) (not e!474078))))

(declare-datatypes ((List!16536 0))(
  ( (Nil!16533) (Cons!16532 (h!17663 (_ BitVec 64)) (t!22979 List!16536)) )
))
(declare-fun arrayNoDuplicates!0 (array!48442 (_ BitVec 32) List!16536) Bool)

(assert (=> b!849750 (= res!577372 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16533))))

(declare-fun b!849751 () Bool)

(declare-fun e!474083 () Bool)

(declare-fun tp_is_empty!16125 () Bool)

(assert (=> b!849751 (= e!474083 tp_is_empty!16125)))

(declare-fun b!849752 () Bool)

(declare-fun e!474082 () Bool)

(assert (=> b!849752 (= e!474082 tp_is_empty!16125)))

(declare-fun b!849753 () Bool)

(declare-fun res!577377 () Bool)

(assert (=> b!849753 (=> (not res!577377) (not e!474078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849753 (= res!577377 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!25787 () Bool)

(declare-fun mapRes!25787 () Bool)

(assert (=> mapIsEmpty!25787 mapRes!25787))

(declare-fun b!849754 () Bool)

(declare-fun e!474077 () Bool)

(assert (=> b!849754 (= e!474077 (and e!474082 mapRes!25787))))

(declare-fun condMapEmpty!25787 () Bool)

(declare-fun mapDefault!25787 () ValueCell!7623)

(assert (=> b!849754 (= condMapEmpty!25787 (= (arr!23249 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7623)) mapDefault!25787)))))

(declare-fun b!849755 () Bool)

(declare-fun e!474081 () Bool)

(declare-fun e!474079 () Bool)

(assert (=> b!849755 (= e!474081 (not e!474079))))

(declare-fun res!577374 () Bool)

(assert (=> b!849755 (=> res!577374 e!474079)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!849755 (= res!577374 (not (validKeyInArray!0 (select (arr!23248 _keys!868) from!1053))))))

(assert (=> b!849755 e!474080))

(declare-fun c!91572 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849755 (= c!91572 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26547)

(declare-fun zeroValue!654 () V!26547)

(declare-datatypes ((Unit!28990 0))(
  ( (Unit!28991) )
))
(declare-fun lt!382423 () Unit!28990)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!342 (array!48442 array!48444 (_ BitVec 32) (_ BitVec 32) V!26547 V!26547 (_ BitVec 32) (_ BitVec 64) V!26547 (_ BitVec 32) Int) Unit!28990)

(assert (=> b!849755 (= lt!382423 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!342 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25787 () Bool)

(declare-fun tp!49471 () Bool)

(assert (=> mapNonEmpty!25787 (= mapRes!25787 (and tp!49471 e!474083))))

(declare-fun mapValue!25787 () ValueCell!7623)

(declare-fun mapKey!25787 () (_ BitVec 32))

(declare-fun mapRest!25787 () (Array (_ BitVec 32) ValueCell!7623))

(assert (=> mapNonEmpty!25787 (= (arr!23249 _values!688) (store mapRest!25787 mapKey!25787 mapValue!25787))))

(declare-fun bm!37819 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2713 (array!48442 array!48444 (_ BitVec 32) (_ BitVec 32) V!26547 V!26547 (_ BitVec 32) Int) ListLongMap!9419)

(assert (=> bm!37819 (= call!37822 (getCurrentListMapNoExtraKeys!2713 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849757 () Bool)

(declare-fun res!577380 () Bool)

(assert (=> b!849757 (=> (not res!577380) (not e!474078))))

(assert (=> b!849757 (= res!577380 (and (= (select (arr!23248 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!849758 () Bool)

(declare-fun res!577373 () Bool)

(assert (=> b!849758 (=> (not res!577373) (not e!474078))))

(assert (=> b!849758 (= res!577373 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23689 _keys!868))))))

(declare-fun lt!382419 () array!48444)

(declare-fun bm!37820 () Bool)

(assert (=> bm!37820 (= call!37823 (getCurrentListMapNoExtraKeys!2713 _keys!868 lt!382419 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849759 () Bool)

(assert (=> b!849759 (= e!474078 e!474081)))

(declare-fun res!577378 () Bool)

(assert (=> b!849759 (=> (not res!577378) (not e!474081))))

(assert (=> b!849759 (= res!577378 (= from!1053 i!612))))

(declare-fun lt!382428 () ListLongMap!9419)

(assert (=> b!849759 (= lt!382428 (getCurrentListMapNoExtraKeys!2713 _keys!868 lt!382419 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849759 (= lt!382419 (array!48445 (store (arr!23249 _values!688) i!612 (ValueCellFull!7623 v!557)) (size!23690 _values!688)))))

(declare-fun lt!382424 () ListLongMap!9419)

(assert (=> b!849759 (= lt!382424 (getCurrentListMapNoExtraKeys!2713 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849760 () Bool)

(assert (=> b!849760 (= e!474080 (= call!37823 call!37822))))

(declare-fun b!849756 () Bool)

(assert (=> b!849756 (= e!474079 true)))

(declare-fun lt!382425 () tuple2!10636)

(declare-fun lt!382422 () ListLongMap!9419)

(declare-fun lt!382426 () V!26547)

(assert (=> b!849756 (= (+!2070 lt!382422 lt!382425) (+!2070 (+!2070 lt!382422 (tuple2!10637 k0!854 lt!382426)) lt!382425))))

(declare-fun lt!382427 () V!26547)

(assert (=> b!849756 (= lt!382425 (tuple2!10637 k0!854 lt!382427))))

(declare-fun lt!382421 () Unit!28990)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!258 (ListLongMap!9419 (_ BitVec 64) V!26547 V!26547) Unit!28990)

(assert (=> b!849756 (= lt!382421 (addSameAsAddTwiceSameKeyDiffValues!258 lt!382422 k0!854 lt!382426 lt!382427))))

(declare-fun lt!382420 () V!26547)

(declare-fun get!12252 (ValueCell!7623 V!26547) V!26547)

(assert (=> b!849756 (= lt!382426 (get!12252 (select (arr!23249 _values!688) from!1053) lt!382420))))

(assert (=> b!849756 (= lt!382428 (+!2070 lt!382422 (tuple2!10637 (select (arr!23248 _keys!868) from!1053) lt!382427)))))

(assert (=> b!849756 (= lt!382427 (get!12252 (select (store (arr!23249 _values!688) i!612 (ValueCellFull!7623 v!557)) from!1053) lt!382420))))

(declare-fun dynLambda!1006 (Int (_ BitVec 64)) V!26547)

(assert (=> b!849756 (= lt!382420 (dynLambda!1006 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!849756 (= lt!382422 (getCurrentListMapNoExtraKeys!2713 _keys!868 lt!382419 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!577375 () Bool)

(assert (=> start!73102 (=> (not res!577375) (not e!474078))))

(assert (=> start!73102 (= res!577375 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23689 _keys!868))))))

(assert (=> start!73102 e!474078))

(assert (=> start!73102 tp_is_empty!16125))

(assert (=> start!73102 true))

(assert (=> start!73102 tp!49472))

(declare-fun array_inv!18436 (array!48442) Bool)

(assert (=> start!73102 (array_inv!18436 _keys!868)))

(declare-fun array_inv!18437 (array!48444) Bool)

(assert (=> start!73102 (and (array_inv!18437 _values!688) e!474077)))

(assert (= (and start!73102 res!577375) b!849749))

(assert (= (and b!849749 res!577376) b!849748))

(assert (= (and b!849748 res!577379) b!849746))

(assert (= (and b!849746 res!577371) b!849750))

(assert (= (and b!849750 res!577372) b!849758))

(assert (= (and b!849758 res!577373) b!849753))

(assert (= (and b!849753 res!577377) b!849757))

(assert (= (and b!849757 res!577380) b!849759))

(assert (= (and b!849759 res!577378) b!849755))

(assert (= (and b!849755 c!91572) b!849747))

(assert (= (and b!849755 (not c!91572)) b!849760))

(assert (= (or b!849747 b!849760) bm!37820))

(assert (= (or b!849747 b!849760) bm!37819))

(assert (= (and b!849755 (not res!577374)) b!849756))

(assert (= (and b!849754 condMapEmpty!25787) mapIsEmpty!25787))

(assert (= (and b!849754 (not condMapEmpty!25787)) mapNonEmpty!25787))

(get-info :version)

(assert (= (and mapNonEmpty!25787 ((_ is ValueCellFull!7623) mapValue!25787)) b!849751))

(assert (= (and b!849754 ((_ is ValueCellFull!7623) mapDefault!25787)) b!849752))

(assert (= start!73102 b!849754))

(declare-fun b_lambda!11551 () Bool)

(assert (=> (not b_lambda!11551) (not b!849756)))

(declare-fun t!22977 () Bool)

(declare-fun tb!4299 () Bool)

(assert (=> (and start!73102 (= defaultEntry!696 defaultEntry!696) t!22977) tb!4299))

(declare-fun result!8201 () Bool)

(assert (=> tb!4299 (= result!8201 tp_is_empty!16125)))

(assert (=> b!849756 t!22977))

(declare-fun b_and!23157 () Bool)

(assert (= b_and!23155 (and (=> t!22977 result!8201) b_and!23157)))

(declare-fun m!790535 () Bool)

(assert (=> b!849747 m!790535))

(declare-fun m!790537 () Bool)

(assert (=> bm!37820 m!790537))

(declare-fun m!790539 () Bool)

(assert (=> b!849746 m!790539))

(declare-fun m!790541 () Bool)

(assert (=> b!849756 m!790541))

(declare-fun m!790543 () Bool)

(assert (=> b!849756 m!790543))

(declare-fun m!790545 () Bool)

(assert (=> b!849756 m!790545))

(declare-fun m!790547 () Bool)

(assert (=> b!849756 m!790547))

(declare-fun m!790549 () Bool)

(assert (=> b!849756 m!790549))

(declare-fun m!790551 () Bool)

(assert (=> b!849756 m!790551))

(declare-fun m!790553 () Bool)

(assert (=> b!849756 m!790553))

(assert (=> b!849756 m!790545))

(assert (=> b!849756 m!790543))

(declare-fun m!790555 () Bool)

(assert (=> b!849756 m!790555))

(assert (=> b!849756 m!790551))

(declare-fun m!790557 () Bool)

(assert (=> b!849756 m!790557))

(declare-fun m!790559 () Bool)

(assert (=> b!849756 m!790559))

(declare-fun m!790561 () Bool)

(assert (=> b!849756 m!790561))

(declare-fun m!790563 () Bool)

(assert (=> b!849756 m!790563))

(assert (=> b!849756 m!790537))

(declare-fun m!790565 () Bool)

(assert (=> bm!37819 m!790565))

(declare-fun m!790567 () Bool)

(assert (=> start!73102 m!790567))

(declare-fun m!790569 () Bool)

(assert (=> start!73102 m!790569))

(declare-fun m!790571 () Bool)

(assert (=> b!849759 m!790571))

(assert (=> b!849759 m!790563))

(declare-fun m!790573 () Bool)

(assert (=> b!849759 m!790573))

(declare-fun m!790575 () Bool)

(assert (=> b!849757 m!790575))

(declare-fun m!790577 () Bool)

(assert (=> mapNonEmpty!25787 m!790577))

(declare-fun m!790579 () Bool)

(assert (=> b!849750 m!790579))

(declare-fun m!790581 () Bool)

(assert (=> b!849753 m!790581))

(assert (=> b!849755 m!790559))

(assert (=> b!849755 m!790559))

(declare-fun m!790583 () Bool)

(assert (=> b!849755 m!790583))

(declare-fun m!790585 () Bool)

(assert (=> b!849755 m!790585))

(declare-fun m!790587 () Bool)

(assert (=> b!849749 m!790587))

(check-sat (not b_lambda!11551) b_and!23157 (not b!849753) (not bm!37820) (not mapNonEmpty!25787) (not b!849746) (not bm!37819) tp_is_empty!16125 (not b!849750) (not b_next!13989) (not b!849749) (not b!849756) (not b!849755) (not start!73102) (not b!849759) (not b!849747))
(check-sat b_and!23157 (not b_next!13989))
