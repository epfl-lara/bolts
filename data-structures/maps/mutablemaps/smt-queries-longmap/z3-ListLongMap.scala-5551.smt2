; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73120 () Bool)

(assert start!73120)

(declare-fun b_free!14007 () Bool)

(declare-fun b_next!14007 () Bool)

(assert (=> start!73120 (= b_free!14007 (not b_next!14007))))

(declare-fun tp!49525 () Bool)

(declare-fun b_and!23191 () Bool)

(assert (=> start!73120 (= tp!49525 b_and!23191)))

(declare-fun b!850169 () Bool)

(declare-fun e!474294 () Bool)

(declare-fun e!474300 () Bool)

(assert (=> b!850169 (= e!474294 e!474300)))

(declare-fun res!577641 () Bool)

(assert (=> b!850169 (=> (not res!577641) (not e!474300))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850169 (= res!577641 (= from!1053 i!612))))

(declare-datatypes ((V!26571 0))(
  ( (V!26572 (val!8119 Int)) )
))
(declare-datatypes ((ValueCell!7632 0))(
  ( (ValueCellFull!7632 (v!10540 V!26571)) (EmptyCell!7632) )
))
(declare-datatypes ((array!48476 0))(
  ( (array!48477 (arr!23265 (Array (_ BitVec 32) ValueCell!7632)) (size!23706 (_ BitVec 32))) )
))
(declare-fun lt!382694 () array!48476)

(declare-datatypes ((tuple2!10654 0))(
  ( (tuple2!10655 (_1!5337 (_ BitVec 64)) (_2!5337 V!26571)) )
))
(declare-datatypes ((List!16550 0))(
  ( (Nil!16547) (Cons!16546 (h!17677 tuple2!10654) (t!23011 List!16550)) )
))
(declare-datatypes ((ListLongMap!9437 0))(
  ( (ListLongMap!9438 (toList!4734 List!16550)) )
))
(declare-fun lt!382692 () ListLongMap!9437)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48478 0))(
  ( (array!48479 (arr!23266 (Array (_ BitVec 32) (_ BitVec 64))) (size!23707 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48478)

(declare-fun minValue!654 () V!26571)

(declare-fun zeroValue!654 () V!26571)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2720 (array!48478 array!48476 (_ BitVec 32) (_ BitVec 32) V!26571 V!26571 (_ BitVec 32) Int) ListLongMap!9437)

(assert (=> b!850169 (= lt!382692 (getCurrentListMapNoExtraKeys!2720 _keys!868 lt!382694 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26571)

(declare-fun _values!688 () array!48476)

(assert (=> b!850169 (= lt!382694 (array!48477 (store (arr!23265 _values!688) i!612 (ValueCellFull!7632 v!557)) (size!23706 _values!688)))))

(declare-fun lt!382695 () ListLongMap!9437)

(assert (=> b!850169 (= lt!382695 (getCurrentListMapNoExtraKeys!2720 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!25814 () Bool)

(declare-fun mapRes!25814 () Bool)

(declare-fun tp!49526 () Bool)

(declare-fun e!474295 () Bool)

(assert (=> mapNonEmpty!25814 (= mapRes!25814 (and tp!49526 e!474295))))

(declare-fun mapKey!25814 () (_ BitVec 32))

(declare-fun mapRest!25814 () (Array (_ BitVec 32) ValueCell!7632))

(declare-fun mapValue!25814 () ValueCell!7632)

(assert (=> mapNonEmpty!25814 (= (arr!23265 _values!688) (store mapRest!25814 mapKey!25814 mapValue!25814))))

(declare-fun b!850170 () Bool)

(declare-fun res!577646 () Bool)

(assert (=> b!850170 (=> (not res!577646) (not e!474294))))

(assert (=> b!850170 (= res!577646 (and (= (size!23706 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23707 _keys!868) (size!23706 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!850171 () Bool)

(declare-fun e!474299 () Bool)

(assert (=> b!850171 (= e!474300 (not e!474299))))

(declare-fun res!577642 () Bool)

(assert (=> b!850171 (=> res!577642 e!474299)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850171 (= res!577642 (not (validKeyInArray!0 (select (arr!23266 _keys!868) from!1053))))))

(declare-fun e!474297 () Bool)

(assert (=> b!850171 e!474297))

(declare-fun c!91599 () Bool)

(assert (=> b!850171 (= c!91599 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29004 0))(
  ( (Unit!29005) )
))
(declare-fun lt!382696 () Unit!29004)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!349 (array!48478 array!48476 (_ BitVec 32) (_ BitVec 32) V!26571 V!26571 (_ BitVec 32) (_ BitVec 64) V!26571 (_ BitVec 32) Int) Unit!29004)

(assert (=> b!850171 (= lt!382696 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!349 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850172 () Bool)

(declare-fun res!577649 () Bool)

(assert (=> b!850172 (=> (not res!577649) (not e!474294))))

(declare-datatypes ((List!16551 0))(
  ( (Nil!16548) (Cons!16547 (h!17678 (_ BitVec 64)) (t!23012 List!16551)) )
))
(declare-fun arrayNoDuplicates!0 (array!48478 (_ BitVec 32) List!16551) Bool)

(assert (=> b!850172 (= res!577649 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16548))))

(declare-fun b!850173 () Bool)

(declare-fun res!577648 () Bool)

(assert (=> b!850173 (=> (not res!577648) (not e!474294))))

(assert (=> b!850173 (= res!577648 (and (= (select (arr!23266 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun call!37877 () ListLongMap!9437)

(declare-fun b!850174 () Bool)

(declare-fun call!37876 () ListLongMap!9437)

(declare-fun +!2078 (ListLongMap!9437 tuple2!10654) ListLongMap!9437)

(assert (=> b!850174 (= e!474297 (= call!37877 (+!2078 call!37876 (tuple2!10655 k0!854 v!557))))))

(declare-fun res!577647 () Bool)

(assert (=> start!73120 (=> (not res!577647) (not e!474294))))

(assert (=> start!73120 (= res!577647 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23707 _keys!868))))))

(assert (=> start!73120 e!474294))

(declare-fun tp_is_empty!16143 () Bool)

(assert (=> start!73120 tp_is_empty!16143))

(assert (=> start!73120 true))

(assert (=> start!73120 tp!49525))

(declare-fun array_inv!18450 (array!48478) Bool)

(assert (=> start!73120 (array_inv!18450 _keys!868)))

(declare-fun e!474298 () Bool)

(declare-fun array_inv!18451 (array!48476) Bool)

(assert (=> start!73120 (and (array_inv!18451 _values!688) e!474298)))

(declare-fun b!850175 () Bool)

(declare-fun res!577643 () Bool)

(assert (=> b!850175 (=> (not res!577643) (not e!474294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850175 (= res!577643 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25814 () Bool)

(assert (=> mapIsEmpty!25814 mapRes!25814))

(declare-fun b!850176 () Bool)

(declare-fun res!577645 () Bool)

(assert (=> b!850176 (=> (not res!577645) (not e!474294))))

(assert (=> b!850176 (= res!577645 (validKeyInArray!0 k0!854))))

(declare-fun bm!37873 () Bool)

(assert (=> bm!37873 (= call!37877 (getCurrentListMapNoExtraKeys!2720 _keys!868 lt!382694 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850177 () Bool)

(declare-fun res!577644 () Bool)

(assert (=> b!850177 (=> (not res!577644) (not e!474294))))

(assert (=> b!850177 (= res!577644 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23707 _keys!868))))))

(declare-fun b!850178 () Bool)

(assert (=> b!850178 (= e!474299 true)))

(declare-fun lt!382689 () tuple2!10654)

(declare-fun lt!382698 () V!26571)

(declare-fun lt!382690 () ListLongMap!9437)

(assert (=> b!850178 (= (+!2078 lt!382690 lt!382689) (+!2078 (+!2078 lt!382690 (tuple2!10655 k0!854 lt!382698)) lt!382689))))

(declare-fun lt!382693 () V!26571)

(assert (=> b!850178 (= lt!382689 (tuple2!10655 k0!854 lt!382693))))

(declare-fun lt!382697 () Unit!29004)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!265 (ListLongMap!9437 (_ BitVec 64) V!26571 V!26571) Unit!29004)

(assert (=> b!850178 (= lt!382697 (addSameAsAddTwiceSameKeyDiffValues!265 lt!382690 k0!854 lt!382698 lt!382693))))

(declare-fun lt!382691 () V!26571)

(declare-fun get!12265 (ValueCell!7632 V!26571) V!26571)

(assert (=> b!850178 (= lt!382698 (get!12265 (select (arr!23265 _values!688) from!1053) lt!382691))))

(assert (=> b!850178 (= lt!382692 (+!2078 lt!382690 (tuple2!10655 (select (arr!23266 _keys!868) from!1053) lt!382693)))))

(assert (=> b!850178 (= lt!382693 (get!12265 (select (store (arr!23265 _values!688) i!612 (ValueCellFull!7632 v!557)) from!1053) lt!382691))))

(declare-fun dynLambda!1013 (Int (_ BitVec 64)) V!26571)

(assert (=> b!850178 (= lt!382691 (dynLambda!1013 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850178 (= lt!382690 (getCurrentListMapNoExtraKeys!2720 _keys!868 lt!382694 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850179 () Bool)

(assert (=> b!850179 (= e!474297 (= call!37877 call!37876))))

(declare-fun b!850180 () Bool)

(declare-fun e!474293 () Bool)

(assert (=> b!850180 (= e!474298 (and e!474293 mapRes!25814))))

(declare-fun condMapEmpty!25814 () Bool)

(declare-fun mapDefault!25814 () ValueCell!7632)

(assert (=> b!850180 (= condMapEmpty!25814 (= (arr!23265 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7632)) mapDefault!25814)))))

(declare-fun b!850181 () Bool)

(assert (=> b!850181 (= e!474293 tp_is_empty!16143)))

(declare-fun b!850182 () Bool)

(declare-fun res!577650 () Bool)

(assert (=> b!850182 (=> (not res!577650) (not e!474294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48478 (_ BitVec 32)) Bool)

(assert (=> b!850182 (= res!577650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850183 () Bool)

(assert (=> b!850183 (= e!474295 tp_is_empty!16143)))

(declare-fun bm!37874 () Bool)

(assert (=> bm!37874 (= call!37876 (getCurrentListMapNoExtraKeys!2720 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73120 res!577647) b!850175))

(assert (= (and b!850175 res!577643) b!850170))

(assert (= (and b!850170 res!577646) b!850182))

(assert (= (and b!850182 res!577650) b!850172))

(assert (= (and b!850172 res!577649) b!850177))

(assert (= (and b!850177 res!577644) b!850176))

(assert (= (and b!850176 res!577645) b!850173))

(assert (= (and b!850173 res!577648) b!850169))

(assert (= (and b!850169 res!577641) b!850171))

(assert (= (and b!850171 c!91599) b!850174))

(assert (= (and b!850171 (not c!91599)) b!850179))

(assert (= (or b!850174 b!850179) bm!37873))

(assert (= (or b!850174 b!850179) bm!37874))

(assert (= (and b!850171 (not res!577642)) b!850178))

(assert (= (and b!850180 condMapEmpty!25814) mapIsEmpty!25814))

(assert (= (and b!850180 (not condMapEmpty!25814)) mapNonEmpty!25814))

(get-info :version)

(assert (= (and mapNonEmpty!25814 ((_ is ValueCellFull!7632) mapValue!25814)) b!850183))

(assert (= (and b!850180 ((_ is ValueCellFull!7632) mapDefault!25814)) b!850181))

(assert (= start!73120 b!850180))

(declare-fun b_lambda!11569 () Bool)

(assert (=> (not b_lambda!11569) (not b!850178)))

(declare-fun t!23010 () Bool)

(declare-fun tb!4317 () Bool)

(assert (=> (and start!73120 (= defaultEntry!696 defaultEntry!696) t!23010) tb!4317))

(declare-fun result!8237 () Bool)

(assert (=> tb!4317 (= result!8237 tp_is_empty!16143)))

(assert (=> b!850178 t!23010))

(declare-fun b_and!23193 () Bool)

(assert (= b_and!23191 (and (=> t!23010 result!8237) b_and!23193)))

(declare-fun m!791021 () Bool)

(assert (=> b!850182 m!791021))

(declare-fun m!791023 () Bool)

(assert (=> bm!37874 m!791023))

(declare-fun m!791025 () Bool)

(assert (=> b!850175 m!791025))

(declare-fun m!791027 () Bool)

(assert (=> b!850178 m!791027))

(declare-fun m!791029 () Bool)

(assert (=> b!850178 m!791029))

(declare-fun m!791031 () Bool)

(assert (=> b!850178 m!791031))

(declare-fun m!791033 () Bool)

(assert (=> b!850178 m!791033))

(declare-fun m!791035 () Bool)

(assert (=> b!850178 m!791035))

(declare-fun m!791037 () Bool)

(assert (=> b!850178 m!791037))

(assert (=> b!850178 m!791027))

(assert (=> b!850178 m!791035))

(declare-fun m!791039 () Bool)

(assert (=> b!850178 m!791039))

(declare-fun m!791041 () Bool)

(assert (=> b!850178 m!791041))

(declare-fun m!791043 () Bool)

(assert (=> b!850178 m!791043))

(declare-fun m!791045 () Bool)

(assert (=> b!850178 m!791045))

(declare-fun m!791047 () Bool)

(assert (=> b!850178 m!791047))

(assert (=> b!850178 m!791041))

(declare-fun m!791049 () Bool)

(assert (=> b!850178 m!791049))

(declare-fun m!791051 () Bool)

(assert (=> b!850178 m!791051))

(declare-fun m!791053 () Bool)

(assert (=> b!850176 m!791053))

(declare-fun m!791055 () Bool)

(assert (=> b!850169 m!791055))

(assert (=> b!850169 m!791051))

(declare-fun m!791057 () Bool)

(assert (=> b!850169 m!791057))

(declare-fun m!791059 () Bool)

(assert (=> start!73120 m!791059))

(declare-fun m!791061 () Bool)

(assert (=> start!73120 m!791061))

(declare-fun m!791063 () Bool)

(assert (=> b!850173 m!791063))

(declare-fun m!791065 () Bool)

(assert (=> b!850172 m!791065))

(assert (=> bm!37873 m!791033))

(declare-fun m!791067 () Bool)

(assert (=> b!850174 m!791067))

(assert (=> b!850171 m!791045))

(assert (=> b!850171 m!791045))

(declare-fun m!791069 () Bool)

(assert (=> b!850171 m!791069))

(declare-fun m!791071 () Bool)

(assert (=> b!850171 m!791071))

(declare-fun m!791073 () Bool)

(assert (=> mapNonEmpty!25814 m!791073))

(check-sat (not bm!37874) (not mapNonEmpty!25814) b_and!23193 (not b_lambda!11569) (not b!850174) (not b!850172) (not b!850182) (not start!73120) (not b!850175) (not bm!37873) tp_is_empty!16143 (not b!850176) (not b_next!14007) (not b!850171) (not b!850169) (not b!850178))
(check-sat b_and!23193 (not b_next!14007))
