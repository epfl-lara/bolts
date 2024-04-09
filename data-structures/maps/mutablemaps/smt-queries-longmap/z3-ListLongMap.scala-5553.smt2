; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73132 () Bool)

(assert start!73132)

(declare-fun b_free!14019 () Bool)

(declare-fun b_next!14019 () Bool)

(assert (=> start!73132 (= b_free!14019 (not b_next!14019))))

(declare-fun tp!49561 () Bool)

(declare-fun b_and!23215 () Bool)

(assert (=> start!73132 (= tp!49561 b_and!23215)))

(declare-fun b!850451 () Bool)

(declare-fun e!474444 () Bool)

(declare-datatypes ((V!26587 0))(
  ( (V!26588 (val!8125 Int)) )
))
(declare-datatypes ((tuple2!10660 0))(
  ( (tuple2!10661 (_1!5340 (_ BitVec 64)) (_2!5340 V!26587)) )
))
(declare-datatypes ((List!16556 0))(
  ( (Nil!16553) (Cons!16552 (h!17683 tuple2!10660) (t!23029 List!16556)) )
))
(declare-datatypes ((ListLongMap!9443 0))(
  ( (ListLongMap!9444 (toList!4737 List!16556)) )
))
(declare-fun call!37912 () ListLongMap!9443)

(declare-fun call!37913 () ListLongMap!9443)

(assert (=> b!850451 (= e!474444 (= call!37912 call!37913))))

(declare-fun b!850452 () Bool)

(declare-fun e!474438 () Bool)

(declare-fun tp_is_empty!16155 () Bool)

(assert (=> b!850452 (= e!474438 tp_is_empty!16155)))

(declare-datatypes ((ValueCell!7638 0))(
  ( (ValueCellFull!7638 (v!10546 V!26587)) (EmptyCell!7638) )
))
(declare-datatypes ((array!48498 0))(
  ( (array!48499 (arr!23276 (Array (_ BitVec 32) ValueCell!7638)) (size!23717 (_ BitVec 32))) )
))
(declare-fun lt!382874 () array!48498)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48500 0))(
  ( (array!48501 (arr!23277 (Array (_ BitVec 32) (_ BitVec 64))) (size!23718 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48500)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26587)

(declare-fun zeroValue!654 () V!26587)

(declare-fun bm!37909 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2723 (array!48500 array!48498 (_ BitVec 32) (_ BitVec 32) V!26587 V!26587 (_ BitVec 32) Int) ListLongMap!9443)

(assert (=> bm!37909 (= call!37912 (getCurrentListMapNoExtraKeys!2723 _keys!868 lt!382874 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850453 () Bool)

(declare-fun e!474443 () Bool)

(assert (=> b!850453 (= e!474443 tp_is_empty!16155)))

(declare-fun b!850454 () Bool)

(declare-fun res!577822 () Bool)

(declare-fun e!474440 () Bool)

(assert (=> b!850454 (=> (not res!577822) (not e!474440))))

(declare-fun _values!688 () array!48498)

(assert (=> b!850454 (= res!577822 (and (= (size!23717 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23718 _keys!868) (size!23717 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850455 () Bool)

(declare-fun res!577823 () Bool)

(assert (=> b!850455 (=> (not res!577823) (not e!474440))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850455 (= res!577823 (validKeyInArray!0 k0!854))))

(declare-fun b!850456 () Bool)

(declare-fun res!577830 () Bool)

(assert (=> b!850456 (=> (not res!577830) (not e!474440))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850456 (= res!577830 (and (= (select (arr!23277 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!850457 () Bool)

(declare-fun e!474441 () Bool)

(assert (=> b!850457 (= e!474440 e!474441)))

(declare-fun res!577821 () Bool)

(assert (=> b!850457 (=> (not res!577821) (not e!474441))))

(assert (=> b!850457 (= res!577821 (= from!1053 i!612))))

(declare-fun lt!382875 () ListLongMap!9443)

(assert (=> b!850457 (= lt!382875 (getCurrentListMapNoExtraKeys!2723 _keys!868 lt!382874 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26587)

(assert (=> b!850457 (= lt!382874 (array!48499 (store (arr!23276 _values!688) i!612 (ValueCellFull!7638 v!557)) (size!23717 _values!688)))))

(declare-fun lt!382877 () ListLongMap!9443)

(assert (=> b!850457 (= lt!382877 (getCurrentListMapNoExtraKeys!2723 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850458 () Bool)

(declare-fun res!577826 () Bool)

(assert (=> b!850458 (=> (not res!577826) (not e!474440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850458 (= res!577826 (validMask!0 mask!1196))))

(declare-fun b!850459 () Bool)

(declare-fun e!474442 () Bool)

(assert (=> b!850459 (= e!474442 true)))

(declare-fun lt!382871 () ListLongMap!9443)

(declare-fun lt!382878 () tuple2!10660)

(declare-fun lt!382870 () V!26587)

(declare-fun +!2081 (ListLongMap!9443 tuple2!10660) ListLongMap!9443)

(assert (=> b!850459 (= (+!2081 lt!382871 lt!382878) (+!2081 (+!2081 lt!382871 (tuple2!10661 k0!854 lt!382870)) lt!382878))))

(declare-fun lt!382872 () V!26587)

(assert (=> b!850459 (= lt!382878 (tuple2!10661 k0!854 lt!382872))))

(declare-datatypes ((Unit!29010 0))(
  ( (Unit!29011) )
))
(declare-fun lt!382873 () Unit!29010)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!268 (ListLongMap!9443 (_ BitVec 64) V!26587 V!26587) Unit!29010)

(assert (=> b!850459 (= lt!382873 (addSameAsAddTwiceSameKeyDiffValues!268 lt!382871 k0!854 lt!382870 lt!382872))))

(declare-fun lt!382869 () V!26587)

(declare-fun get!12272 (ValueCell!7638 V!26587) V!26587)

(assert (=> b!850459 (= lt!382870 (get!12272 (select (arr!23276 _values!688) from!1053) lt!382869))))

(assert (=> b!850459 (= lt!382875 (+!2081 lt!382871 (tuple2!10661 (select (arr!23277 _keys!868) from!1053) lt!382872)))))

(assert (=> b!850459 (= lt!382872 (get!12272 (select (store (arr!23276 _values!688) i!612 (ValueCellFull!7638 v!557)) from!1053) lt!382869))))

(declare-fun dynLambda!1016 (Int (_ BitVec 64)) V!26587)

(assert (=> b!850459 (= lt!382869 (dynLambda!1016 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850459 (= lt!382871 (getCurrentListMapNoExtraKeys!2723 _keys!868 lt!382874 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850460 () Bool)

(assert (=> b!850460 (= e!474444 (= call!37912 (+!2081 call!37913 (tuple2!10661 k0!854 v!557))))))

(declare-fun b!850461 () Bool)

(declare-fun res!577827 () Bool)

(assert (=> b!850461 (=> (not res!577827) (not e!474440))))

(declare-datatypes ((List!16557 0))(
  ( (Nil!16554) (Cons!16553 (h!17684 (_ BitVec 64)) (t!23030 List!16557)) )
))
(declare-fun arrayNoDuplicates!0 (array!48500 (_ BitVec 32) List!16557) Bool)

(assert (=> b!850461 (= res!577827 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16554))))

(declare-fun b!850462 () Bool)

(declare-fun e!474437 () Bool)

(declare-fun mapRes!25832 () Bool)

(assert (=> b!850462 (= e!474437 (and e!474438 mapRes!25832))))

(declare-fun condMapEmpty!25832 () Bool)

(declare-fun mapDefault!25832 () ValueCell!7638)

(assert (=> b!850462 (= condMapEmpty!25832 (= (arr!23276 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7638)) mapDefault!25832)))))

(declare-fun bm!37910 () Bool)

(assert (=> bm!37910 (= call!37913 (getCurrentListMapNoExtraKeys!2723 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850463 () Bool)

(declare-fun res!577828 () Bool)

(assert (=> b!850463 (=> (not res!577828) (not e!474440))))

(assert (=> b!850463 (= res!577828 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23718 _keys!868))))))

(declare-fun mapNonEmpty!25832 () Bool)

(declare-fun tp!49562 () Bool)

(assert (=> mapNonEmpty!25832 (= mapRes!25832 (and tp!49562 e!474443))))

(declare-fun mapKey!25832 () (_ BitVec 32))

(declare-fun mapRest!25832 () (Array (_ BitVec 32) ValueCell!7638))

(declare-fun mapValue!25832 () ValueCell!7638)

(assert (=> mapNonEmpty!25832 (= (arr!23276 _values!688) (store mapRest!25832 mapKey!25832 mapValue!25832))))

(declare-fun res!577825 () Bool)

(assert (=> start!73132 (=> (not res!577825) (not e!474440))))

(assert (=> start!73132 (= res!577825 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23718 _keys!868))))))

(assert (=> start!73132 e!474440))

(assert (=> start!73132 tp_is_empty!16155))

(assert (=> start!73132 true))

(assert (=> start!73132 tp!49561))

(declare-fun array_inv!18456 (array!48500) Bool)

(assert (=> start!73132 (array_inv!18456 _keys!868)))

(declare-fun array_inv!18457 (array!48498) Bool)

(assert (=> start!73132 (and (array_inv!18457 _values!688) e!474437)))

(declare-fun b!850464 () Bool)

(assert (=> b!850464 (= e!474441 (not e!474442))))

(declare-fun res!577829 () Bool)

(assert (=> b!850464 (=> res!577829 e!474442)))

(assert (=> b!850464 (= res!577829 (not (validKeyInArray!0 (select (arr!23277 _keys!868) from!1053))))))

(assert (=> b!850464 e!474444))

(declare-fun c!91617 () Bool)

(assert (=> b!850464 (= c!91617 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382876 () Unit!29010)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!352 (array!48500 array!48498 (_ BitVec 32) (_ BitVec 32) V!26587 V!26587 (_ BitVec 32) (_ BitVec 64) V!26587 (_ BitVec 32) Int) Unit!29010)

(assert (=> b!850464 (= lt!382876 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!352 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850465 () Bool)

(declare-fun res!577824 () Bool)

(assert (=> b!850465 (=> (not res!577824) (not e!474440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48500 (_ BitVec 32)) Bool)

(assert (=> b!850465 (= res!577824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25832 () Bool)

(assert (=> mapIsEmpty!25832 mapRes!25832))

(assert (= (and start!73132 res!577825) b!850458))

(assert (= (and b!850458 res!577826) b!850454))

(assert (= (and b!850454 res!577822) b!850465))

(assert (= (and b!850465 res!577824) b!850461))

(assert (= (and b!850461 res!577827) b!850463))

(assert (= (and b!850463 res!577828) b!850455))

(assert (= (and b!850455 res!577823) b!850456))

(assert (= (and b!850456 res!577830) b!850457))

(assert (= (and b!850457 res!577821) b!850464))

(assert (= (and b!850464 c!91617) b!850460))

(assert (= (and b!850464 (not c!91617)) b!850451))

(assert (= (or b!850460 b!850451) bm!37909))

(assert (= (or b!850460 b!850451) bm!37910))

(assert (= (and b!850464 (not res!577829)) b!850459))

(assert (= (and b!850462 condMapEmpty!25832) mapIsEmpty!25832))

(assert (= (and b!850462 (not condMapEmpty!25832)) mapNonEmpty!25832))

(get-info :version)

(assert (= (and mapNonEmpty!25832 ((_ is ValueCellFull!7638) mapValue!25832)) b!850453))

(assert (= (and b!850462 ((_ is ValueCellFull!7638) mapDefault!25832)) b!850452))

(assert (= start!73132 b!850462))

(declare-fun b_lambda!11581 () Bool)

(assert (=> (not b_lambda!11581) (not b!850459)))

(declare-fun t!23028 () Bool)

(declare-fun tb!4329 () Bool)

(assert (=> (and start!73132 (= defaultEntry!696 defaultEntry!696) t!23028) tb!4329))

(declare-fun result!8261 () Bool)

(assert (=> tb!4329 (= result!8261 tp_is_empty!16155)))

(assert (=> b!850459 t!23028))

(declare-fun b_and!23217 () Bool)

(assert (= b_and!23215 (and (=> t!23028 result!8261) b_and!23217)))

(declare-fun m!791345 () Bool)

(assert (=> b!850457 m!791345))

(declare-fun m!791347 () Bool)

(assert (=> b!850457 m!791347))

(declare-fun m!791349 () Bool)

(assert (=> b!850457 m!791349))

(declare-fun m!791351 () Bool)

(assert (=> b!850455 m!791351))

(declare-fun m!791353 () Bool)

(assert (=> b!850464 m!791353))

(assert (=> b!850464 m!791353))

(declare-fun m!791355 () Bool)

(assert (=> b!850464 m!791355))

(declare-fun m!791357 () Bool)

(assert (=> b!850464 m!791357))

(declare-fun m!791359 () Bool)

(assert (=> b!850458 m!791359))

(declare-fun m!791361 () Bool)

(assert (=> b!850461 m!791361))

(declare-fun m!791363 () Bool)

(assert (=> b!850465 m!791363))

(declare-fun m!791365 () Bool)

(assert (=> mapNonEmpty!25832 m!791365))

(declare-fun m!791367 () Bool)

(assert (=> b!850459 m!791367))

(declare-fun m!791369 () Bool)

(assert (=> b!850459 m!791369))

(declare-fun m!791371 () Bool)

(assert (=> b!850459 m!791371))

(declare-fun m!791373 () Bool)

(assert (=> b!850459 m!791373))

(declare-fun m!791375 () Bool)

(assert (=> b!850459 m!791375))

(declare-fun m!791377 () Bool)

(assert (=> b!850459 m!791377))

(declare-fun m!791379 () Bool)

(assert (=> b!850459 m!791379))

(declare-fun m!791381 () Bool)

(assert (=> b!850459 m!791381))

(declare-fun m!791383 () Bool)

(assert (=> b!850459 m!791383))

(assert (=> b!850459 m!791381))

(assert (=> b!850459 m!791347))

(declare-fun m!791385 () Bool)

(assert (=> b!850459 m!791385))

(assert (=> b!850459 m!791373))

(assert (=> b!850459 m!791369))

(assert (=> b!850459 m!791353))

(declare-fun m!791387 () Bool)

(assert (=> b!850459 m!791387))

(declare-fun m!791389 () Bool)

(assert (=> start!73132 m!791389))

(declare-fun m!791391 () Bool)

(assert (=> start!73132 m!791391))

(declare-fun m!791393 () Bool)

(assert (=> bm!37910 m!791393))

(declare-fun m!791395 () Bool)

(assert (=> b!850456 m!791395))

(declare-fun m!791397 () Bool)

(assert (=> b!850460 m!791397))

(assert (=> bm!37909 m!791385))

(check-sat (not start!73132) b_and!23217 (not b!850464) tp_is_empty!16155 (not bm!37910) (not b!850455) (not b!850459) (not bm!37909) (not b!850460) (not b_lambda!11581) (not b!850461) (not b!850457) (not b!850465) (not b_next!14019) (not b!850458) (not mapNonEmpty!25832))
(check-sat b_and!23217 (not b_next!14019))
