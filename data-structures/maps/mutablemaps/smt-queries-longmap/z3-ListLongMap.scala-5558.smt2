; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73162 () Bool)

(assert start!73162)

(declare-fun b_free!14049 () Bool)

(declare-fun b_next!14049 () Bool)

(assert (=> start!73162 (= b_free!14049 (not b_next!14049))))

(declare-fun tp!49652 () Bool)

(declare-fun b_and!23275 () Bool)

(assert (=> start!73162 (= tp!49652 b_and!23275)))

(declare-fun b!851156 () Bool)

(declare-fun res!578279 () Bool)

(declare-fun e!474802 () Bool)

(assert (=> b!851156 (=> (not res!578279) (not e!474802))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851156 (= res!578279 (validMask!0 mask!1196))))

(declare-fun b!851157 () Bool)

(declare-fun e!474799 () Bool)

(declare-datatypes ((V!26627 0))(
  ( (V!26628 (val!8140 Int)) )
))
(declare-datatypes ((tuple2!10690 0))(
  ( (tuple2!10691 (_1!5355 (_ BitVec 64)) (_2!5355 V!26627)) )
))
(declare-datatypes ((List!16579 0))(
  ( (Nil!16576) (Cons!16575 (h!17706 tuple2!10690) (t!23082 List!16579)) )
))
(declare-datatypes ((ListLongMap!9473 0))(
  ( (ListLongMap!9474 (toList!4752 List!16579)) )
))
(declare-fun call!38003 () ListLongMap!9473)

(declare-fun call!38002 () ListLongMap!9473)

(assert (=> b!851157 (= e!474799 (= call!38003 call!38002))))

(declare-fun b!851158 () Bool)

(declare-fun e!474801 () Bool)

(declare-fun e!474797 () Bool)

(assert (=> b!851158 (= e!474801 (not e!474797))))

(declare-fun res!578271 () Bool)

(assert (=> b!851158 (=> res!578271 e!474797)))

(declare-datatypes ((array!48558 0))(
  ( (array!48559 (arr!23306 (Array (_ BitVec 32) (_ BitVec 64))) (size!23747 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48558)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851158 (= res!578271 (not (validKeyInArray!0 (select (arr!23306 _keys!868) from!1053))))))

(assert (=> b!851158 e!474799))

(declare-fun c!91662 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851158 (= c!91662 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26627)

(declare-fun defaultEntry!696 () Int)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!7653 0))(
  ( (ValueCellFull!7653 (v!10561 V!26627)) (EmptyCell!7653) )
))
(declare-datatypes ((array!48560 0))(
  ( (array!48561 (arr!23307 (Array (_ BitVec 32) ValueCell!7653)) (size!23748 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48560)

(declare-fun minValue!654 () V!26627)

(declare-fun zeroValue!654 () V!26627)

(declare-datatypes ((Unit!29034 0))(
  ( (Unit!29035) )
))
(declare-fun lt!383322 () Unit!29034)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!362 (array!48558 array!48560 (_ BitVec 32) (_ BitVec 32) V!26627 V!26627 (_ BitVec 32) (_ BitVec 64) V!26627 (_ BitVec 32) Int) Unit!29034)

(assert (=> b!851158 (= lt!383322 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!362 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37999 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2737 (array!48558 array!48560 (_ BitVec 32) (_ BitVec 32) V!26627 V!26627 (_ BitVec 32) Int) ListLongMap!9473)

(assert (=> bm!37999 (= call!38002 (getCurrentListMapNoExtraKeys!2737 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851159 () Bool)

(declare-fun res!578275 () Bool)

(assert (=> b!851159 (=> (not res!578275) (not e!474802))))

(declare-datatypes ((List!16580 0))(
  ( (Nil!16577) (Cons!16576 (h!17707 (_ BitVec 64)) (t!23083 List!16580)) )
))
(declare-fun arrayNoDuplicates!0 (array!48558 (_ BitVec 32) List!16580) Bool)

(assert (=> b!851159 (= res!578275 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16577))))

(declare-fun b!851160 () Bool)

(declare-fun res!578274 () Bool)

(assert (=> b!851160 (=> (not res!578274) (not e!474802))))

(assert (=> b!851160 (= res!578274 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23747 _keys!868))))))

(declare-fun mapNonEmpty!25877 () Bool)

(declare-fun mapRes!25877 () Bool)

(declare-fun tp!49651 () Bool)

(declare-fun e!474798 () Bool)

(assert (=> mapNonEmpty!25877 (= mapRes!25877 (and tp!49651 e!474798))))

(declare-fun mapRest!25877 () (Array (_ BitVec 32) ValueCell!7653))

(declare-fun mapKey!25877 () (_ BitVec 32))

(declare-fun mapValue!25877 () ValueCell!7653)

(assert (=> mapNonEmpty!25877 (= (arr!23307 _values!688) (store mapRest!25877 mapKey!25877 mapValue!25877))))

(declare-fun b!851161 () Bool)

(assert (=> b!851161 (= e!474802 e!474801)))

(declare-fun res!578272 () Bool)

(assert (=> b!851161 (=> (not res!578272) (not e!474801))))

(assert (=> b!851161 (= res!578272 (= from!1053 i!612))))

(declare-fun lt!383319 () ListLongMap!9473)

(declare-fun lt!383321 () array!48560)

(assert (=> b!851161 (= lt!383319 (getCurrentListMapNoExtraKeys!2737 _keys!868 lt!383321 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851161 (= lt!383321 (array!48561 (store (arr!23307 _values!688) i!612 (ValueCellFull!7653 v!557)) (size!23748 _values!688)))))

(declare-fun lt!383327 () ListLongMap!9473)

(assert (=> b!851161 (= lt!383327 (getCurrentListMapNoExtraKeys!2737 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851163 () Bool)

(assert (=> b!851163 (= e!474797 true)))

(declare-fun lt!383328 () tuple2!10690)

(declare-fun lt!383323 () ListLongMap!9473)

(declare-fun lt!383326 () V!26627)

(declare-fun +!2095 (ListLongMap!9473 tuple2!10690) ListLongMap!9473)

(assert (=> b!851163 (= (+!2095 lt!383323 lt!383328) (+!2095 (+!2095 lt!383323 (tuple2!10691 k0!854 lt!383326)) lt!383328))))

(declare-fun lt!383320 () V!26627)

(assert (=> b!851163 (= lt!383328 (tuple2!10691 k0!854 lt!383320))))

(declare-fun lt!383324 () Unit!29034)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!279 (ListLongMap!9473 (_ BitVec 64) V!26627 V!26627) Unit!29034)

(assert (=> b!851163 (= lt!383324 (addSameAsAddTwiceSameKeyDiffValues!279 lt!383323 k0!854 lt!383326 lt!383320))))

(declare-fun lt!383325 () V!26627)

(declare-fun get!12293 (ValueCell!7653 V!26627) V!26627)

(assert (=> b!851163 (= lt!383326 (get!12293 (select (arr!23307 _values!688) from!1053) lt!383325))))

(assert (=> b!851163 (= lt!383319 (+!2095 lt!383323 (tuple2!10691 (select (arr!23306 _keys!868) from!1053) lt!383320)))))

(assert (=> b!851163 (= lt!383320 (get!12293 (select (store (arr!23307 _values!688) i!612 (ValueCellFull!7653 v!557)) from!1053) lt!383325))))

(declare-fun dynLambda!1027 (Int (_ BitVec 64)) V!26627)

(assert (=> b!851163 (= lt!383325 (dynLambda!1027 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851163 (= lt!383323 (getCurrentListMapNoExtraKeys!2737 _keys!868 lt!383321 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851164 () Bool)

(declare-fun res!578278 () Bool)

(assert (=> b!851164 (=> (not res!578278) (not e!474802))))

(assert (=> b!851164 (= res!578278 (and (= (size!23748 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23747 _keys!868) (size!23748 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25877 () Bool)

(assert (=> mapIsEmpty!25877 mapRes!25877))

(declare-fun b!851165 () Bool)

(declare-fun tp_is_empty!16185 () Bool)

(assert (=> b!851165 (= e!474798 tp_is_empty!16185)))

(declare-fun b!851166 () Bool)

(declare-fun res!578280 () Bool)

(assert (=> b!851166 (=> (not res!578280) (not e!474802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48558 (_ BitVec 32)) Bool)

(assert (=> b!851166 (= res!578280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38000 () Bool)

(assert (=> bm!38000 (= call!38003 (getCurrentListMapNoExtraKeys!2737 _keys!868 lt!383321 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851167 () Bool)

(assert (=> b!851167 (= e!474799 (= call!38003 (+!2095 call!38002 (tuple2!10691 k0!854 v!557))))))

(declare-fun b!851168 () Bool)

(declare-fun e!474804 () Bool)

(assert (=> b!851168 (= e!474804 tp_is_empty!16185)))

(declare-fun b!851169 () Bool)

(declare-fun e!474803 () Bool)

(assert (=> b!851169 (= e!474803 (and e!474804 mapRes!25877))))

(declare-fun condMapEmpty!25877 () Bool)

(declare-fun mapDefault!25877 () ValueCell!7653)

(assert (=> b!851169 (= condMapEmpty!25877 (= (arr!23307 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7653)) mapDefault!25877)))))

(declare-fun b!851170 () Bool)

(declare-fun res!578276 () Bool)

(assert (=> b!851170 (=> (not res!578276) (not e!474802))))

(assert (=> b!851170 (= res!578276 (and (= (select (arr!23306 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851162 () Bool)

(declare-fun res!578273 () Bool)

(assert (=> b!851162 (=> (not res!578273) (not e!474802))))

(assert (=> b!851162 (= res!578273 (validKeyInArray!0 k0!854))))

(declare-fun res!578277 () Bool)

(assert (=> start!73162 (=> (not res!578277) (not e!474802))))

(assert (=> start!73162 (= res!578277 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23747 _keys!868))))))

(assert (=> start!73162 e!474802))

(assert (=> start!73162 tp_is_empty!16185))

(assert (=> start!73162 true))

(assert (=> start!73162 tp!49652))

(declare-fun array_inv!18478 (array!48558) Bool)

(assert (=> start!73162 (array_inv!18478 _keys!868)))

(declare-fun array_inv!18479 (array!48560) Bool)

(assert (=> start!73162 (and (array_inv!18479 _values!688) e!474803)))

(assert (= (and start!73162 res!578277) b!851156))

(assert (= (and b!851156 res!578279) b!851164))

(assert (= (and b!851164 res!578278) b!851166))

(assert (= (and b!851166 res!578280) b!851159))

(assert (= (and b!851159 res!578275) b!851160))

(assert (= (and b!851160 res!578274) b!851162))

(assert (= (and b!851162 res!578273) b!851170))

(assert (= (and b!851170 res!578276) b!851161))

(assert (= (and b!851161 res!578272) b!851158))

(assert (= (and b!851158 c!91662) b!851167))

(assert (= (and b!851158 (not c!91662)) b!851157))

(assert (= (or b!851167 b!851157) bm!38000))

(assert (= (or b!851167 b!851157) bm!37999))

(assert (= (and b!851158 (not res!578271)) b!851163))

(assert (= (and b!851169 condMapEmpty!25877) mapIsEmpty!25877))

(assert (= (and b!851169 (not condMapEmpty!25877)) mapNonEmpty!25877))

(get-info :version)

(assert (= (and mapNonEmpty!25877 ((_ is ValueCellFull!7653) mapValue!25877)) b!851165))

(assert (= (and b!851169 ((_ is ValueCellFull!7653) mapDefault!25877)) b!851168))

(assert (= start!73162 b!851169))

(declare-fun b_lambda!11611 () Bool)

(assert (=> (not b_lambda!11611) (not b!851163)))

(declare-fun t!23081 () Bool)

(declare-fun tb!4359 () Bool)

(assert (=> (and start!73162 (= defaultEntry!696 defaultEntry!696) t!23081) tb!4359))

(declare-fun result!8321 () Bool)

(assert (=> tb!4359 (= result!8321 tp_is_empty!16185)))

(assert (=> b!851163 t!23081))

(declare-fun b_and!23277 () Bool)

(assert (= b_and!23275 (and (=> t!23081 result!8321) b_and!23277)))

(declare-fun m!792155 () Bool)

(assert (=> mapNonEmpty!25877 m!792155))

(declare-fun m!792157 () Bool)

(assert (=> b!851170 m!792157))

(declare-fun m!792159 () Bool)

(assert (=> bm!37999 m!792159))

(declare-fun m!792161 () Bool)

(assert (=> b!851158 m!792161))

(assert (=> b!851158 m!792161))

(declare-fun m!792163 () Bool)

(assert (=> b!851158 m!792163))

(declare-fun m!792165 () Bool)

(assert (=> b!851158 m!792165))

(declare-fun m!792167 () Bool)

(assert (=> b!851163 m!792167))

(declare-fun m!792169 () Bool)

(assert (=> b!851163 m!792169))

(declare-fun m!792171 () Bool)

(assert (=> b!851163 m!792171))

(declare-fun m!792173 () Bool)

(assert (=> b!851163 m!792173))

(declare-fun m!792175 () Bool)

(assert (=> b!851163 m!792175))

(declare-fun m!792177 () Bool)

(assert (=> b!851163 m!792177))

(assert (=> b!851163 m!792169))

(declare-fun m!792179 () Bool)

(assert (=> b!851163 m!792179))

(assert (=> b!851163 m!792173))

(declare-fun m!792181 () Bool)

(assert (=> b!851163 m!792181))

(declare-fun m!792183 () Bool)

(assert (=> b!851163 m!792183))

(assert (=> b!851163 m!792161))

(declare-fun m!792185 () Bool)

(assert (=> b!851163 m!792185))

(declare-fun m!792187 () Bool)

(assert (=> b!851163 m!792187))

(assert (=> b!851163 m!792181))

(declare-fun m!792189 () Bool)

(assert (=> b!851163 m!792189))

(assert (=> bm!38000 m!792179))

(declare-fun m!792191 () Bool)

(assert (=> b!851167 m!792191))

(declare-fun m!792193 () Bool)

(assert (=> b!851159 m!792193))

(declare-fun m!792195 () Bool)

(assert (=> b!851166 m!792195))

(declare-fun m!792197 () Bool)

(assert (=> b!851161 m!792197))

(assert (=> b!851161 m!792183))

(declare-fun m!792199 () Bool)

(assert (=> b!851161 m!792199))

(declare-fun m!792201 () Bool)

(assert (=> b!851156 m!792201))

(declare-fun m!792203 () Bool)

(assert (=> start!73162 m!792203))

(declare-fun m!792205 () Bool)

(assert (=> start!73162 m!792205))

(declare-fun m!792207 () Bool)

(assert (=> b!851162 m!792207))

(check-sat (not bm!37999) (not bm!38000) b_and!23277 (not b!851167) (not b!851159) (not b!851158) (not mapNonEmpty!25877) (not b!851162) (not b!851161) (not b_next!14049) (not b!851166) (not b!851163) (not b_lambda!11611) tp_is_empty!16185 (not start!73162) (not b!851156))
(check-sat b_and!23277 (not b_next!14049))
