; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73138 () Bool)

(assert start!73138)

(declare-fun b_free!14025 () Bool)

(declare-fun b_next!14025 () Bool)

(assert (=> start!73138 (= b_free!14025 (not b_next!14025))))

(declare-fun tp!49579 () Bool)

(declare-fun b_and!23227 () Bool)

(assert (=> start!73138 (= tp!49579 b_and!23227)))

(declare-fun b!850592 () Bool)

(declare-fun res!577915 () Bool)

(declare-fun e!474516 () Bool)

(assert (=> b!850592 (=> (not res!577915) (not e!474516))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850592 (= res!577915 (validMask!0 mask!1196))))

(declare-fun b!850593 () Bool)

(declare-fun e!474510 () Bool)

(declare-fun e!474512 () Bool)

(declare-fun mapRes!25841 () Bool)

(assert (=> b!850593 (= e!474510 (and e!474512 mapRes!25841))))

(declare-fun condMapEmpty!25841 () Bool)

(declare-datatypes ((V!26595 0))(
  ( (V!26596 (val!8128 Int)) )
))
(declare-datatypes ((ValueCell!7641 0))(
  ( (ValueCellFull!7641 (v!10549 V!26595)) (EmptyCell!7641) )
))
(declare-datatypes ((array!48510 0))(
  ( (array!48511 (arr!23282 (Array (_ BitVec 32) ValueCell!7641)) (size!23723 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48510)

(declare-fun mapDefault!25841 () ValueCell!7641)

(assert (=> b!850593 (= condMapEmpty!25841 (= (arr!23282 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7641)) mapDefault!25841)))))

(declare-fun b!850594 () Bool)

(declare-fun e!474511 () Bool)

(assert (=> b!850594 (= e!474516 e!474511)))

(declare-fun res!577917 () Bool)

(assert (=> b!850594 (=> (not res!577917) (not e!474511))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850594 (= res!577917 (= from!1053 i!612))))

(declare-datatypes ((tuple2!10666 0))(
  ( (tuple2!10667 (_1!5343 (_ BitVec 64)) (_2!5343 V!26595)) )
))
(declare-datatypes ((List!16560 0))(
  ( (Nil!16557) (Cons!16556 (h!17687 tuple2!10666) (t!23039 List!16560)) )
))
(declare-datatypes ((ListLongMap!9449 0))(
  ( (ListLongMap!9450 (toList!4740 List!16560)) )
))
(declare-fun lt!382959 () ListLongMap!9449)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((array!48512 0))(
  ( (array!48513 (arr!23283 (Array (_ BitVec 32) (_ BitVec 64))) (size!23724 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48512)

(declare-fun lt!382961 () array!48510)

(declare-fun minValue!654 () V!26595)

(declare-fun zeroValue!654 () V!26595)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2726 (array!48512 array!48510 (_ BitVec 32) (_ BitVec 32) V!26595 V!26595 (_ BitVec 32) Int) ListLongMap!9449)

(assert (=> b!850594 (= lt!382959 (getCurrentListMapNoExtraKeys!2726 _keys!868 lt!382961 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26595)

(assert (=> b!850594 (= lt!382961 (array!48511 (store (arr!23282 _values!688) i!612 (ValueCellFull!7641 v!557)) (size!23723 _values!688)))))

(declare-fun lt!382966 () ListLongMap!9449)

(assert (=> b!850594 (= lt!382966 (getCurrentListMapNoExtraKeys!2726 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850595 () Bool)

(declare-fun res!577911 () Bool)

(assert (=> b!850595 (=> (not res!577911) (not e!474516))))

(declare-datatypes ((List!16561 0))(
  ( (Nil!16558) (Cons!16557 (h!17688 (_ BitVec 64)) (t!23040 List!16561)) )
))
(declare-fun arrayNoDuplicates!0 (array!48512 (_ BitVec 32) List!16561) Bool)

(assert (=> b!850595 (= res!577911 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16558))))

(declare-fun res!577918 () Bool)

(assert (=> start!73138 (=> (not res!577918) (not e!474516))))

(assert (=> start!73138 (= res!577918 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23724 _keys!868))))))

(assert (=> start!73138 e!474516))

(declare-fun tp_is_empty!16161 () Bool)

(assert (=> start!73138 tp_is_empty!16161))

(assert (=> start!73138 true))

(assert (=> start!73138 tp!49579))

(declare-fun array_inv!18462 (array!48512) Bool)

(assert (=> start!73138 (array_inv!18462 _keys!868)))

(declare-fun array_inv!18463 (array!48510) Bool)

(assert (=> start!73138 (and (array_inv!18463 _values!688) e!474510)))

(declare-fun b!850596 () Bool)

(declare-fun res!577920 () Bool)

(assert (=> b!850596 (=> (not res!577920) (not e!474516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48512 (_ BitVec 32)) Bool)

(assert (=> b!850596 (= res!577920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850597 () Bool)

(declare-fun res!577914 () Bool)

(assert (=> b!850597 (=> (not res!577914) (not e!474516))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!850597 (= res!577914 (and (= (select (arr!23283 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!850598 () Bool)

(declare-fun e!474509 () Bool)

(declare-fun call!37930 () ListLongMap!9449)

(declare-fun call!37931 () ListLongMap!9449)

(declare-fun +!2084 (ListLongMap!9449 tuple2!10666) ListLongMap!9449)

(assert (=> b!850598 (= e!474509 (= call!37930 (+!2084 call!37931 (tuple2!10667 k0!854 v!557))))))

(declare-fun b!850599 () Bool)

(declare-fun e!474514 () Bool)

(assert (=> b!850599 (= e!474514 true)))

(declare-fun lt!382962 () tuple2!10666)

(declare-fun lt!382967 () ListLongMap!9449)

(declare-fun lt!382968 () V!26595)

(assert (=> b!850599 (= (+!2084 lt!382967 lt!382962) (+!2084 (+!2084 lt!382967 (tuple2!10667 k0!854 lt!382968)) lt!382962))))

(declare-fun lt!382965 () V!26595)

(assert (=> b!850599 (= lt!382962 (tuple2!10667 k0!854 lt!382965))))

(declare-datatypes ((Unit!29014 0))(
  ( (Unit!29015) )
))
(declare-fun lt!382964 () Unit!29014)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!269 (ListLongMap!9449 (_ BitVec 64) V!26595 V!26595) Unit!29014)

(assert (=> b!850599 (= lt!382964 (addSameAsAddTwiceSameKeyDiffValues!269 lt!382967 k0!854 lt!382968 lt!382965))))

(declare-fun lt!382960 () V!26595)

(declare-fun get!12275 (ValueCell!7641 V!26595) V!26595)

(assert (=> b!850599 (= lt!382968 (get!12275 (select (arr!23282 _values!688) from!1053) lt!382960))))

(assert (=> b!850599 (= lt!382959 (+!2084 lt!382967 (tuple2!10667 (select (arr!23283 _keys!868) from!1053) lt!382965)))))

(assert (=> b!850599 (= lt!382965 (get!12275 (select (store (arr!23282 _values!688) i!612 (ValueCellFull!7641 v!557)) from!1053) lt!382960))))

(declare-fun dynLambda!1017 (Int (_ BitVec 64)) V!26595)

(assert (=> b!850599 (= lt!382960 (dynLambda!1017 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850599 (= lt!382967 (getCurrentListMapNoExtraKeys!2726 _keys!868 lt!382961 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25841 () Bool)

(assert (=> mapIsEmpty!25841 mapRes!25841))

(declare-fun b!850600 () Bool)

(assert (=> b!850600 (= e!474511 (not e!474514))))

(declare-fun res!577913 () Bool)

(assert (=> b!850600 (=> res!577913 e!474514)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850600 (= res!577913 (not (validKeyInArray!0 (select (arr!23283 _keys!868) from!1053))))))

(assert (=> b!850600 e!474509))

(declare-fun c!91626 () Bool)

(assert (=> b!850600 (= c!91626 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382963 () Unit!29014)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!354 (array!48512 array!48510 (_ BitVec 32) (_ BitVec 32) V!26595 V!26595 (_ BitVec 32) (_ BitVec 64) V!26595 (_ BitVec 32) Int) Unit!29014)

(assert (=> b!850600 (= lt!382963 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!354 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850601 () Bool)

(declare-fun e!474515 () Bool)

(assert (=> b!850601 (= e!474515 tp_is_empty!16161)))

(declare-fun mapNonEmpty!25841 () Bool)

(declare-fun tp!49580 () Bool)

(assert (=> mapNonEmpty!25841 (= mapRes!25841 (and tp!49580 e!474515))))

(declare-fun mapRest!25841 () (Array (_ BitVec 32) ValueCell!7641))

(declare-fun mapValue!25841 () ValueCell!7641)

(declare-fun mapKey!25841 () (_ BitVec 32))

(assert (=> mapNonEmpty!25841 (= (arr!23282 _values!688) (store mapRest!25841 mapKey!25841 mapValue!25841))))

(declare-fun b!850602 () Bool)

(assert (=> b!850602 (= e!474512 tp_is_empty!16161)))

(declare-fun b!850603 () Bool)

(declare-fun res!577916 () Bool)

(assert (=> b!850603 (=> (not res!577916) (not e!474516))))

(assert (=> b!850603 (= res!577916 (and (= (size!23723 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23724 _keys!868) (size!23723 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850604 () Bool)

(declare-fun res!577919 () Bool)

(assert (=> b!850604 (=> (not res!577919) (not e!474516))))

(assert (=> b!850604 (= res!577919 (validKeyInArray!0 k0!854))))

(declare-fun bm!37927 () Bool)

(assert (=> bm!37927 (= call!37930 (getCurrentListMapNoExtraKeys!2726 _keys!868 lt!382961 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850605 () Bool)

(assert (=> b!850605 (= e!474509 (= call!37930 call!37931))))

(declare-fun b!850606 () Bool)

(declare-fun res!577912 () Bool)

(assert (=> b!850606 (=> (not res!577912) (not e!474516))))

(assert (=> b!850606 (= res!577912 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23724 _keys!868))))))

(declare-fun bm!37928 () Bool)

(assert (=> bm!37928 (= call!37931 (getCurrentListMapNoExtraKeys!2726 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73138 res!577918) b!850592))

(assert (= (and b!850592 res!577915) b!850603))

(assert (= (and b!850603 res!577916) b!850596))

(assert (= (and b!850596 res!577920) b!850595))

(assert (= (and b!850595 res!577911) b!850606))

(assert (= (and b!850606 res!577912) b!850604))

(assert (= (and b!850604 res!577919) b!850597))

(assert (= (and b!850597 res!577914) b!850594))

(assert (= (and b!850594 res!577917) b!850600))

(assert (= (and b!850600 c!91626) b!850598))

(assert (= (and b!850600 (not c!91626)) b!850605))

(assert (= (or b!850598 b!850605) bm!37927))

(assert (= (or b!850598 b!850605) bm!37928))

(assert (= (and b!850600 (not res!577913)) b!850599))

(assert (= (and b!850593 condMapEmpty!25841) mapIsEmpty!25841))

(assert (= (and b!850593 (not condMapEmpty!25841)) mapNonEmpty!25841))

(get-info :version)

(assert (= (and mapNonEmpty!25841 ((_ is ValueCellFull!7641) mapValue!25841)) b!850601))

(assert (= (and b!850593 ((_ is ValueCellFull!7641) mapDefault!25841)) b!850602))

(assert (= start!73138 b!850593))

(declare-fun b_lambda!11587 () Bool)

(assert (=> (not b_lambda!11587) (not b!850599)))

(declare-fun t!23038 () Bool)

(declare-fun tb!4335 () Bool)

(assert (=> (and start!73138 (= defaultEntry!696 defaultEntry!696) t!23038) tb!4335))

(declare-fun result!8273 () Bool)

(assert (=> tb!4335 (= result!8273 tp_is_empty!16161)))

(assert (=> b!850599 t!23038))

(declare-fun b_and!23229 () Bool)

(assert (= b_and!23227 (and (=> t!23038 result!8273) b_and!23229)))

(declare-fun m!791507 () Bool)

(assert (=> mapNonEmpty!25841 m!791507))

(declare-fun m!791509 () Bool)

(assert (=> b!850604 m!791509))

(declare-fun m!791511 () Bool)

(assert (=> b!850599 m!791511))

(declare-fun m!791513 () Bool)

(assert (=> b!850599 m!791513))

(assert (=> b!850599 m!791513))

(declare-fun m!791515 () Bool)

(assert (=> b!850599 m!791515))

(declare-fun m!791517 () Bool)

(assert (=> b!850599 m!791517))

(declare-fun m!791519 () Bool)

(assert (=> b!850599 m!791519))

(declare-fun m!791521 () Bool)

(assert (=> b!850599 m!791521))

(declare-fun m!791523 () Bool)

(assert (=> b!850599 m!791523))

(assert (=> b!850599 m!791511))

(declare-fun m!791525 () Bool)

(assert (=> b!850599 m!791525))

(assert (=> b!850599 m!791521))

(declare-fun m!791527 () Bool)

(assert (=> b!850599 m!791527))

(declare-fun m!791529 () Bool)

(assert (=> b!850599 m!791529))

(declare-fun m!791531 () Bool)

(assert (=> b!850599 m!791531))

(declare-fun m!791533 () Bool)

(assert (=> b!850599 m!791533))

(declare-fun m!791535 () Bool)

(assert (=> b!850599 m!791535))

(declare-fun m!791537 () Bool)

(assert (=> b!850592 m!791537))

(assert (=> bm!37927 m!791519))

(declare-fun m!791539 () Bool)

(assert (=> b!850598 m!791539))

(declare-fun m!791541 () Bool)

(assert (=> b!850596 m!791541))

(declare-fun m!791543 () Bool)

(assert (=> b!850597 m!791543))

(declare-fun m!791545 () Bool)

(assert (=> bm!37928 m!791545))

(declare-fun m!791547 () Bool)

(assert (=> b!850595 m!791547))

(assert (=> b!850600 m!791533))

(assert (=> b!850600 m!791533))

(declare-fun m!791549 () Bool)

(assert (=> b!850600 m!791549))

(declare-fun m!791551 () Bool)

(assert (=> b!850600 m!791551))

(declare-fun m!791553 () Bool)

(assert (=> b!850594 m!791553))

(assert (=> b!850594 m!791523))

(declare-fun m!791555 () Bool)

(assert (=> b!850594 m!791555))

(declare-fun m!791557 () Bool)

(assert (=> start!73138 m!791557))

(declare-fun m!791559 () Bool)

(assert (=> start!73138 m!791559))

(check-sat (not b_lambda!11587) (not mapNonEmpty!25841) (not b!850594) (not start!73138) (not b!850604) tp_is_empty!16161 (not b!850600) (not b!850595) (not b!850592) (not b!850599) (not b!850596) (not bm!37928) (not b!850598) (not b_next!14025) b_and!23229 (not bm!37927))
(check-sat b_and!23229 (not b_next!14025))
